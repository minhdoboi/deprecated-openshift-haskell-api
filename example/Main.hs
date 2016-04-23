{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}

module Main where

import ClassyPrelude
import Openshift.OapivApi
import qualified Openshift.V1.ProjectList as ProjectList
import qualified Openshift.V1.Project as Project
import Openshift.V1.ObjectMeta (name)
import Openshift.ClientUtils
import Control.Monad
import Control.Monad.Trans.Except (ExceptT, runExceptT)
import Data.Aeson
import Data.Proxy
import GHC.Generics
import Servant.API
import Servant.Client

main :: IO ()
main = do
  ctx <- getEnvOpenshiftClientContext
  res <- runExceptT $ listProjects ctx
  case res of
    Left err         -> putStrLn $ pack $ "Error: " ++ show err
    Right (projects) -> print projects

listProjects :: OpenshiftClientContext -> ExceptT ServantError IO [Text]
listProjects ctx = do
  projectList <- withOpenshiftCtx ctx $ listNamespacedProject Nothing Nothing Nothing Nothing Nothing Nothing
  return $ catMaybes $ (Project.metadata >=> name) <$> ProjectList.items projectList

