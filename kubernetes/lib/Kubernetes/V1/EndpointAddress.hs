{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.EndpointAddress where

import GHC.Generics
import Data.Text
import Kubernetes.V1.ObjectReference
import qualified Data.Aeson

-- | EndpointAddress is a tuple that describes single IP address.
data EndpointAddress = EndpointAddress
    { ip :: Text -- ^ The IP of this endpoint. May not be loopback (127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). 
    , targetRef :: Maybe ObjectReference -- ^ Reference to object providing the endpoint. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON EndpointAddress
instance Data.Aeson.ToJSON EndpointAddress
