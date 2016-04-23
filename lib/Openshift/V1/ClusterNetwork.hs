{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.ClusterNetwork where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Openshift.V1.ObjectMeta


-- | 
data ClusterNetwork = ClusterNetwork
    { kind :: Maybe Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ObjectMeta -- ^  
    , network :: Text -- ^ CIDR string to specify the global overlay network's L3 space 
    , hostsubnetlength :: Integer -- ^ number of bits to allocate to each host's subnet e.g. 8 would mean a /24 network on the host 
    , serviceNetwork :: Text -- ^ CIDR string to specify the service network 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ClusterNetwork
instance Data.Aeson.ToJSON ClusterNetwork
