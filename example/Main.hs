{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}

module Main where

import ClassyPrelude
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
import Data.Default
import System.Environment
import Text.Read

defaultPort :: Int
defaultPort = 8443

data OpenshiftClientContext = OpenshiftClientContext {
  tokenBearer :: Text,
  manager :: Manager,
  baseUrl :: BaseUrl
}

main :: IO ()
main = do
  ctx <- getOpenshiftContext
  res <- runExceptT $ listProjects ctx
  case res of
    Left err         -> putStrLn $ pack $ "Error: " ++ show err
    Right (projects) -> print projects

getOpenshiftContext = do
  tokenBearer <- toBearer <$> getEnv "OPENSHIFT_TOKEN"
  host        <- getEnv "OPENSHIFT_HOST"
  port        <- toPort <$> lookupEnv "OPENSHIFT_PORT"
  manager     <- newManager $ mkManagerSettings def{settingDisableCertificateValidation = True} Nothing
  return $ OpenshiftClientContext tokenBearer manager (BaseUrl Https host port "")
  where
    toBearer token = "Bearer " ++ pack token
    toPort   port  = fromMaybe defaultPort $ map (read . asString) port

withOpenshiftCtx :: OpenshiftClientContext -> (Maybe Text -> Manager -> BaseUrl -> a) -> a
withOpenshiftCtx ctx f = f (Just $ tokenBearer ctx) (manager ctx) (baseUrl ctx)

listProjects :: OpenshiftClientContext -> ExceptT ServantError IO [Text]
listProjects ctx = do
  projectList <- withOpenshiftCtx ctx $ listNamespacedProject Nothing Nothing Nothing Nothing Nothing Nothing
  return $ catMaybes $ map (Project.metadata >=> name) (ProjectList.items projectList)

