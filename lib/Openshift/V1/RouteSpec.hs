{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.RouteSpec where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Openshift.V1.ObjectReference
import Openshift.V1.RoutePort
import Openshift.V1.TLSConfig


-- | 
data RouteSpec = RouteSpec
    { host :: Text -- ^ optional: alias/dns that points to the service, must follow DNS 952 subdomain conventions 
    , path :: Maybe Text -- ^ optional: path that the router watches to route traffic to the service 
    , to :: ObjectReference -- ^ an object the route points to.  only the service kind is allowed, and it will be defaulted to a service. 
    , port :: Maybe RoutePort -- ^ port that should be used by the router; this is a hint to control which pod endpoint port is used; if empty routers may use all endpoints and ports 
    , tls :: Maybe TLSConfig -- ^ provides the ability to configure certificates and termination for the route 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON RouteSpec
instance Data.Aeson.ToJSON RouteSpec
