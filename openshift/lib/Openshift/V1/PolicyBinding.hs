{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.PolicyBinding where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Kubernetes.V1.ObjectMeta
import Openshift.V1.NamedRoleBinding
import Openshift.V1.ObjectReference


-- | 
data PolicyBinding = PolicyBinding
    { kind :: Maybe Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ObjectMeta -- ^  
    , lastModified :: Text -- ^ last time that any part of the object was created, updated, or deleted 
    , policyRef :: ObjectReference -- ^ reference to the policy that contains all the Roles that this object's roleBindings may reference 
    , roleBindings :: [NamedRoleBinding] -- ^ all roleBindings held by this policyBinding 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON PolicyBinding
instance Data.Aeson.ToJSON PolicyBinding
