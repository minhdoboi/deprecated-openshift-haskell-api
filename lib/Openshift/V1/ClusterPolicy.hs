{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.ClusterPolicy where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.NamedClusterRole
import Openshift.V1.ObjectMeta


-- | 
data ClusterPolicy = ClusterPolicy
    { kind :: Maybe String -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe String -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ObjectMeta -- ^  
    , lastModified :: String -- ^ last time any part of the object was created, updated, or deleted 
    , roles :: [NamedClusterRole] -- ^ all the roles held by this policy, mapped by role name 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ClusterPolicy
instance Data.Aeson.ToJSON ClusterPolicy
