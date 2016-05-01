{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.HTTPGetAction where

import GHC.Generics
import Data.Text
import Openshift.Utils
import qualified Data.Aeson

-- | HTTPGetAction describes an action based on HTTP Get requests.
data HTTPGetAction = HTTPGetAction
    { path :: Maybe Text -- ^ Path to access on the HTTP server. 
    , port :: IntOrText -- ^ Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. 
    , host :: Maybe Text -- ^ Host name to connect to, defaults to the pod IP. 
    , scheme :: Maybe Text -- ^ Scheme to use for connecting to the host. Defaults to HTTP. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON HTTPGetAction
instance Data.Aeson.ToJSON HTTPGetAction
