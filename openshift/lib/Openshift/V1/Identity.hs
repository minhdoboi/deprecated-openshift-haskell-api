{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.Identity where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Kubernetes.V1.ObjectMeta
import Openshift.Any
import Openshift.V1.ObjectReference


-- | 
data Identity = Identity
    { kind :: Maybe Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ObjectMeta -- ^  
    , providerName :: Text -- ^ source of identity information 
    , providerUserName :: Text -- ^ uniquely represents this identity in the scope of the provider 
    , user :: ObjectReference -- ^ reference to the user this identity is associated with.  both name and uid must be set 
    , extra :: Maybe Any -- ^ extra information for this identity 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON Identity
instance Data.Aeson.ToJSON Identity
