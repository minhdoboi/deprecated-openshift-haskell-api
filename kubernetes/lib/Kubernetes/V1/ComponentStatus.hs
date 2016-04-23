{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.ComponentStatus where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Kubernetes.V1.ComponentCondition
import Kubernetes.V1.ObjectMeta


-- | ComponentStatus (and ComponentStatusList) holds the cluster validation info.
data ComponentStatus = ComponentStatus
    { kind :: Maybe Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ObjectMeta -- ^ Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata 
    , conditions :: Maybe [ComponentCondition] -- ^ List of component conditions observed 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ComponentStatus
instance Data.Aeson.ToJSON ComponentStatus
