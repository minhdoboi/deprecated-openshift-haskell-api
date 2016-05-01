{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.PodSpec where

import GHC.Generics
import Data.Text
import Kubernetes.Any
import Kubernetes.V1.Container
import Kubernetes.V1.LocalObjectReference
import Kubernetes.V1.PodSecurityContext
import Kubernetes.V1.Volume
import qualified Data.Aeson

-- | PodSpec is a description of a pod.
data PodSpec = PodSpec
    { volumes :: Maybe [Volume] -- ^ List of volumes that can be mounted by containers belonging to the pod. More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md 
    , containers :: [Container] -- ^ List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated. More info: http://releases.k8s.io/HEAD/docs/user-guide/containers.md 
    , restartPolicy :: Maybe Text -- ^ Restart policy for all containers within the pod. One of Always, OnFailure, Never. Default to Always. More info: http://releases.k8s.io/HEAD/docs/user-guide/pod-states.md#restartpolicy 
    , terminationGracePeriodSeconds :: Maybe Integer -- ^ Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds. 
    , activeDeadlineSeconds :: Maybe Integer -- ^ Optional duration in seconds the pod may be active on the node relative to StartTime before the system will actively try to mark it failed and kill associated containers. Value must be a positive integer. 
    , dnsPolicy :: Maybe Text -- ^ Set DNS policy for containers within the pod. One of 'ClusterFirst' or 'Default'. Defaults to \"ClusterFirst\". 
    , nodeSelector :: Maybe Any -- ^ NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: http://releases.k8s.io/HEAD/docs/user-guide/node-selection/README.md 
    , host :: Maybe Text -- ^ deprecated, use nodeName instead 
    , serviceAccountName :: Maybe Text -- ^ ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info: http://releases.k8s.io/HEAD/docs/design/service_accounts.md 
    , serviceAccount :: Maybe Text -- ^ DeprecatedServiceAccount is a depreciated alias for ServiceAccountName. Deprecated: Use serviceAccountName instead. 
    , nodeName :: Maybe Text -- ^ NodeName is a request to schedule this pod onto a specific node. If it is non-empty, the scheduler simply schedules this pod onto that node, assuming that it fits resource requirements. 
    , hostNetwork :: Maybe Bool -- ^ Host networking requested for this pod. Use the host's network namespace. If this option is set, the ports that will be used must be specified. Default to false. 
    , hostPID :: Maybe Bool -- ^ Use the host's pid namespace. Optional: Default to false. 
    , hostIPC :: Maybe Bool -- ^ Use the host's ipc namespace. Optional: Default to false. 
    , securityContext :: Maybe PodSecurityContext -- ^ SecurityContext holds pod-level security attributes and common container settings. Optional: Defaults to empty.  See type description for default values of each field. 
    , imagePullSecrets :: Maybe [LocalObjectReference] -- ^ ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. For example, in the case of docker, only DockerConfig type secrets are honored. More info: http://releases.k8s.io/HEAD/docs/user-guide/images.md#specifying-imagepullsecrets-on-a-pod 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON PodSpec
instance Data.Aeson.ToJSON PodSpec
