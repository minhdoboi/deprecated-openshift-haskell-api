{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.PodStatus where

import GHC.Generics
import Data.Text
import Kubernetes.V1.ContainerStatus
import Kubernetes.V1.PodCondition
import qualified Data.Aeson

-- | PodStatus represents information about the status of a pod. Status may trail the actual state of a system.
data PodStatus = PodStatus
    { phase :: Maybe Text -- ^ Current condition of the pod. More info: http://releases.k8s.io/HEAD/docs/user-guide/pod-states.md#pod-phase 
    , conditions :: Maybe [PodCondition] -- ^ Current service state of pod. More info: http://releases.k8s.io/HEAD/docs/user-guide/pod-states.md#pod-conditions 
    , message :: Maybe Text -- ^ A human readable message indicating details about why the pod is in this condition. 
    , reason :: Maybe Text -- ^ A brief CamelCase message indicating details about why the pod is in this state. e.g. 'OutOfDisk' 
    , hostIP :: Maybe Text -- ^ IP address of the host to which the pod is assigned. Empty if not yet scheduled. 
    , podIP :: Maybe Text -- ^ IP address allocated to the pod. Routable at least within the cluster. Empty if not yet allocated. 
    , startTime :: Maybe Text -- ^ RFC 3339 date and time at which the object was acknowledged by the Kubelet. This is before the Kubelet pulled the container image(s) for the pod. 
    , containerStatuses :: Maybe [ContainerStatus] -- ^ The list has one entry per container in the manifest. Each entry is currently the output of `docker inspect`. More info: http://releases.k8s.io/HEAD/docs/user-guide/pod-states.md#container-statuses 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON PodStatus
instance Data.Aeson.ToJSON PodStatus
