{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.PodTemplateSpec where

import qualified Data.Aeson
import GHC.Generics
import Kubernetes.V1.ObjectMeta
import Openshift.V1.PodSpec

-- | PodTemplateSpec describes the data a pod should have when created from a template
data PodTemplateSpec = PodTemplateSpec
    { metadata :: Maybe ObjectMeta -- ^ Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata 
    , spec :: Maybe PodSpec -- ^ Specification of the desired behavior of the pod. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON PodTemplateSpec
instance Data.Aeson.ToJSON PodTemplateSpec
