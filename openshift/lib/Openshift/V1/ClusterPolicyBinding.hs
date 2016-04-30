{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.ClusterPolicyBinding where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Kubernetes.V1.ObjectMeta
import Openshift.V1.NamedClusterRoleBinding
import Openshift.V1.ObjectReference

-- | 
data ClusterPolicyBinding = ClusterPolicyBinding
    { kind :: Maybe Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ObjectMeta -- ^  
    , lastModified :: Text -- ^ last time any part of the object was created, updated, or deleted 
    , policyRef :: ObjectReference -- ^ reference to the cluster policy that this cluster policy binding's role bindings may reference 
    , roleBindings :: [NamedClusterRoleBinding] -- ^ all the role bindings held by this policy, mapped by role name 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ClusterPolicyBinding
instance Data.Aeson.ToJSON ClusterPolicyBinding
