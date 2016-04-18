{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.HostSubnet where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.ObjectMeta


-- | 
data HostSubnet = HostSubnet
    { kind :: Maybe String -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe String -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ObjectMeta -- ^  
    , host :: String -- ^ Name of the host that is registered at the master. A lease will be sought after this name. 
    , hostIP :: String -- ^ IP address to be used as vtep by other hosts in the overlay network 
    , subnet :: String -- ^ Actual subnet CIDR lease assigned to the host 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON HostSubnet
instance Data.Aeson.ToJSON HostSubnet
