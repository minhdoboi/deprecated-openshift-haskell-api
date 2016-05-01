{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.EndpointPort where

import GHC.Generics
import Data.Text
import qualified Data.Aeson

-- | EndpointPort is a tuple that describes a single port.
data EndpointPort = EndpointPort
    { name :: Maybe Text -- ^ The name of this port (corresponds to ServicePort.Name). Must be a DNS_LABEL. Optional only if one port is defined. 
    , port :: Integer -- ^ The port number of the endpoint. 
    , protocol :: Maybe Text -- ^ The IP protocol for this port. Must be UDP or TCP. Default is TCP. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON EndpointPort
instance Data.Aeson.ToJSON EndpointPort
