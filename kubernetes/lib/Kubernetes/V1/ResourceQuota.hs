{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.ResourceQuota where

import GHC.Generics
import Data.Text
import Kubernetes.V1.ObjectMeta
import Kubernetes.V1.ResourceQuotaSpec
import Kubernetes.V1.ResourceQuotaStatus
import qualified Data.Aeson

-- | ResourceQuota sets aggregate quota restrictions enforced per namespace
data ResourceQuota = ResourceQuota
    { kind :: Maybe Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ObjectMeta -- ^ Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata 
    , spec :: Maybe ResourceQuotaSpec -- ^ Spec defines the desired quota. http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status 
    , status :: Maybe ResourceQuotaStatus -- ^ Status defines the actual enforced quota and its current usage. http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ResourceQuota
instance Data.Aeson.ToJSON ResourceQuota
