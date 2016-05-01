{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.Template where

import GHC.Generics
import Data.Text
import Kubernetes.V1.ObjectMeta
import Openshift.Any
import Openshift.Runtime.RawExtension
import Openshift.V1.Parameter
import qualified Data.Aeson

-- | 
data Template = Template
    { kind :: Maybe Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ObjectMeta -- ^  
    , objects :: [RawExtension] -- ^ list of objects to include in the template 
    , parameters :: Maybe [Parameter] -- ^ optional: list of parameters used during template to config transformation 
    , labels :: Maybe Any -- ^ optional: list of lables that are applied to every object during the template to config transformation 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON Template
instance Data.Aeson.ToJSON Template
