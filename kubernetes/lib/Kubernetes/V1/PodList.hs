{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.PodList where

import GHC.Generics
import Data.Text
import Kubernetes.Unversioned.ListMeta
import Kubernetes.V1.Pod
import qualified Data.Aeson

-- | PodList is a list of Pods.
data PodList = PodList
    { kind :: Maybe Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ListMeta -- ^ Standard list metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , items :: [Pod] -- ^ List of pods. More info: http://releases.k8s.io/HEAD/docs/user-guide/pods.md 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON PodList
instance Data.Aeson.ToJSON PodList
