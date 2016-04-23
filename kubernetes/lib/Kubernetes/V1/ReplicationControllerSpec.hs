{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.ReplicationControllerSpec where

import qualified Data.Aeson
import GHC.Generics
import Kubernetes.Any
import Kubernetes.V1.PodTemplateSpec


-- | ReplicationControllerSpec is the specification of a replication controller.
data ReplicationControllerSpec = ReplicationControllerSpec
    { replicas :: Maybe Integer -- ^ Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: http://releases.k8s.io/HEAD/docs/user-guide/replication-controller.md#what-is-a-replication-controller 
    , selector :: Maybe Any -- ^ Selector is a label query over pods that should match the Replicas count. If Selector is empty, it is defaulted to the labels present on the Pod template. Label keys and values that must match in order to be controlled by this replication controller, if empty defaulted to labels on Pod template. More info: http://releases.k8s.io/HEAD/docs/user-guide/labels.md#label-selectors 
    , template :: Maybe PodTemplateSpec -- ^ Template is the object that describes the pod that will be created if insufficient replicas are detected. This takes precedence over a TemplateRef. More info: http://releases.k8s.io/HEAD/docs/user-guide/replication-controller.md#pod-template 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ReplicationControllerSpec
instance Data.Aeson.ToJSON ReplicationControllerSpec
