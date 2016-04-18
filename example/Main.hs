{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}

module Main where

import Openshift.OapivApi
import qualified Openshift.V1.ProjectList as ProjectList
import qualified Openshift.V1.Project as Project
import Openshift.V1.ObjectMeta (name)
import Control.Monad
import Control.Monad.Trans.Except (ExceptT, runExceptT)
import Data.Aeson
import Data.Proxy
import GHC.Generics
import Network.HTTP.Client (Manager, newManager)
import Network.HTTP.Client.TLS
import Network.Connection
import Servant.API
import Servant.Client
import Data.Maybe
import Data.Default

main :: IO ()
main = do
  manager <- newManager $ mkManagerSettings def{settingDisableCertificateValidation = True} Nothing
  res     <- runExceptT $ listProjects "Bearer zPYa4yyuKU2_iJ-ExWZpSZzDY1zYCLRceJIQDqSwDv8" manager (BaseUrl Https "10.2.2.2" 8443 "")
  case res of
    Left err -> putStrLn $ "Error: " ++ show err
    Right (projects) -> do
      print projects

listProjects :: String -> Manager -> BaseUrl -> ExceptT ServantError IO [String]
listProjects token manager baseurl = do
  projectList <- listNamespacedProject Nothing Nothing Nothing Nothing Nothing Nothing (Just token) manager baseurl
  return $ catMaybes $ map (Project.metadata >=> name) (ProjectList.items projectList)
