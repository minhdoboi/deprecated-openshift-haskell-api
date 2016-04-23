module Openshift.ClientUtils (
  OpenshiftClientContext(..),
  getEnvOpenshiftClientContext,
  withOpenshiftCtx,
  withOpenshiftCtxIO) where

import Network.HTTP.Client (Manager, newManager)
import Network.HTTP.Client.TLS
import Network.Connection
import System.Environment
import Text.Read
import Data.Text hiding (map)
import Data.Maybe
import Servant.API
import Servant.Client
import Servant.Common.BaseUrl
import Control.Monad.Trans.Except (ExceptT, runExceptT)

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
  manager     <- newManager $ tlsManagerSettings
  return $ OpenshiftClientContext (pack tokenBearer) manager (BaseUrl Https host port "")
  where
    toBearer token = "Bearer " ++ token
    toPort   port  = fromMaybe defaultPort $ read <$> port

withOpenshiftCtx :: OpenshiftClientContext -> (Maybe Text -> Manager -> BaseUrl -> a) -> a
withOpenshiftCtx ctx f = f (Just $ tokenBearer ctx) (manager ctx) (baseUrl ctx)

withOpenshiftCtxIO :: OpenshiftClientContext -> (Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO a) -> IO a
withOpenshiftCtxIO ctx f = do
  res <- runExceptT $ withOpenshiftCtx ctx f
  case res of
    Left err -> fail $ "Error: " ++ show err
    Right r -> return r
