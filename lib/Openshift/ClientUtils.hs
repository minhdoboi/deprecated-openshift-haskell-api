module Openshift.ClientUtils (
  OpenshiftClientContext(..),
  getEnvOpenshiftClientContext,
  withOpenshiftCtx) where

import Network.HTTP.Client (Manager, newManager, defaultManagerSettings)
import Network.HTTP.Client.TLS
import Network.Connection
import System.Environment
import Text.Read
import Data.Text hiding (map)
import Data.Maybe
import Servant.API
import Servant.Common.BaseUrl

data OpenshiftClientContext = OpenshiftClientContext {
  tokenBearer :: Text,
  manager :: Manager,
  baseUrl :: BaseUrl
}

defaultPort :: Int
defaultPort = 8443

getEnvOpenshiftClientContext :: IO OpenshiftClientContext
getEnvOpenshiftClientContext = do
  tokenBearer <- toBearer <$> getEnv "OPENSHIFT_TOKEN"
  host        <- getEnv "OPENSHIFT_HOST"
  port        <- toPort <$> lookupEnv "OPENSHIFT_PORT"
  manager     <- newManager $ defaultManagerSettings
  return $ OpenshiftClientContext (pack tokenBearer) manager (BaseUrl Https host port "")
  where
    toBearer token = "Bearer " ++ token
    toPort   port  = fromMaybe defaultPort $ read <$> port

withOpenshiftCtx :: OpenshiftClientContext -> (Maybe Text -> Manager -> BaseUrl -> a) -> a
withOpenshiftCtx ctx f = f (Just $ tokenBearer ctx) (manager ctx) (baseUrl ctx)
