{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.PersistentVolumeClaim where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Kubernetes.V1.ObjectMeta
import Kubernetes.V1.PersistentVolumeClaimSpec
import Kubernetes.V1.PersistentVolumeClaimStatus

-- | PersistentVolumeClaim is a user's request for and claim to a persistent volume
data PersistentVolumeClaim = PersistentVolumeClaim
    { kind :: Maybe Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ObjectMeta -- ^ Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata 
    , spec :: Maybe PersistentVolumeClaimSpec -- ^ Spec defines the desired characteristics of a volume requested by a pod author. More info: http://releases.k8s.io/HEAD/docs/user-guide/persistent-volumes.md#persistentvolumeclaims 
    , status :: Maybe PersistentVolumeClaimStatus -- ^ Status represents the current information/status of a persistent volume claim. Read-only. More info: http://releases.k8s.io/HEAD/docs/user-guide/persistent-volumes.md#persistentvolumeclaims 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON PersistentVolumeClaim
instance Data.Aeson.ToJSON PersistentVolumeClaim
