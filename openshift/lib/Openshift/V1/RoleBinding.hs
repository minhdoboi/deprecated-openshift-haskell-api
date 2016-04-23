{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.RoleBinding where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Kubernetes.V1.ObjectMeta
import Openshift.V1.ObjectReference


-- | 
data RoleBinding = RoleBinding
    { kind :: Maybe Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ObjectMeta -- ^  
    , userNames :: [Text] -- ^ all the usernames directly bound to the role 
    , groupNames :: [Text] -- ^ all the groups directly bound to the role 
    , subjects :: [ObjectReference] -- ^ references to subjects bound to the role.  Only User, Group, SystemUser, SystemGroup, and ServiceAccount are allowed. 
    , roleRef :: ObjectReference -- ^ a reference to a role 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON RoleBinding
instance Data.Aeson.ToJSON RoleBinding
