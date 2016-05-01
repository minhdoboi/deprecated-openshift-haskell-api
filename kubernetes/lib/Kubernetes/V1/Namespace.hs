{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.Namespace where

import GHC.Generics
import Data.Text
import Kubernetes.V1.NamespaceSpec
import Kubernetes.V1.NamespaceStatus
import Kubernetes.V1.ObjectMeta
import qualified Data.Aeson

-- | Namespace provides a scope for Names. Use of multiple namespaces is optional.
data Namespace = Namespace
    { kind :: Maybe Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ObjectMeta -- ^ Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata 
    , spec :: Maybe NamespaceSpec -- ^ Spec defines the behavior of the Namespace. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status 
    , status :: Maybe NamespaceStatus -- ^ Status describes the current status of a Namespace. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON Namespace
instance Data.Aeson.ToJSON Namespace
