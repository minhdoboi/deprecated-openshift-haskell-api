{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.SecurityContextConstraints where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Kubernetes.V1.Capability
import Kubernetes.V1.FSGroupStrategyOptions
import Kubernetes.V1.ObjectMeta
import Kubernetes.V1.RunAsUserStrategyOptions
import Kubernetes.V1.SELinuxContextStrategyOptions
import Kubernetes.V1.SupplementalGroupsStrategyOptions


-- | 
data SecurityContextConstraints = SecurityContextConstraints
    { kind :: Maybe Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ObjectMeta -- ^  
    , priority :: Integer -- ^ determines which SCC is used when multiple SCCs allow a particular pod; higher priority SCCs are preferred 
    , allowPrivilegedContainer :: Bool -- ^ allow containers to run as privileged 
    , defaultAddCapabilities :: [Capability] -- ^ capabilities that are added by default but may be dropped 
    , requiredDropCapabilities :: [Capability] -- ^ capabilities that will be dropped by default and may not be added 
    , allowedCapabilities :: [Capability] -- ^ capabilities that are allowed to be added 
    , allowHostDirVolumePlugin :: Bool -- ^ allow the use of the host dir volume plugin 
    , allowHostNetwork :: Bool -- ^ allow the use of the hostNetwork in the pod spec 
    , allowHostPorts :: Bool -- ^ allow the use of the host ports in the containers 
    , allowHostPID :: Bool -- ^ allow the use of the host pid in the containers 
    , allowHostIPC :: Bool -- ^ allow the use of the host ipc in the containers 
    , seLinuxContext :: Maybe SELinuxContextStrategyOptions -- ^ strategy used to generate SELinuxOptions 
    , runAsUser :: Maybe RunAsUserStrategyOptions -- ^ strategy used to generate RunAsUser 
    , supplementalGroups :: Maybe SupplementalGroupsStrategyOptions -- ^ strategy used to generate supplemental groups 
    , fsGroup :: Maybe FSGroupStrategyOptions -- ^ strategy used to generate fsGroup 
    , users :: Maybe [Text] -- ^ users allowed to use this SecurityContextConstraints 
    , groups :: Maybe [Text] -- ^ groups allowed to use this SecurityContextConstraints 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON SecurityContextConstraints
instance Data.Aeson.ToJSON SecurityContextConstraints
