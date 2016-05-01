{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.ServiceAccount where

import GHC.Generics
import Data.Text
import Kubernetes.V1.LocalObjectReference
import Kubernetes.V1.ObjectMeta
import Kubernetes.V1.ObjectReference
import qualified Data.Aeson

-- | ServiceAccount binds together: * a name, understood by users, and perhaps by peripheral systems, for an identity * a principal that can be authenticated and authorized * a set of secrets
data ServiceAccount = ServiceAccount
    { kind :: Maybe Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ObjectMeta -- ^ Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata 
    , secrets :: Maybe [ObjectReference] -- ^ Secrets is the list of secrets allowed to be used by pods running using this ServiceAccount. More info: http://releases.k8s.io/HEAD/docs/user-guide/secrets.md 
    , imagePullSecrets :: Maybe [LocalObjectReference] -- ^ ImagePullSecrets is a list of references to secrets in the same namespace to use for pulling any images in pods that reference this ServiceAccount. ImagePullSecrets are distinct from Secrets because Secrets can be mounted in the pod, but ImagePullSecrets are only accessed by the kubelet. More info: http://releases.k8s.io/HEAD/docs/user-guide/secrets.md#manually-specifying-an-imagepullsecret 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ServiceAccount
instance Data.Aeson.ToJSON ServiceAccount
