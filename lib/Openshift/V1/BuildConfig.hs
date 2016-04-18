{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.BuildConfig where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.BuildConfigSpec
import Openshift.V1.BuildConfigStatus
import Openshift.V1.ObjectMeta


-- | 
data BuildConfig = BuildConfig
    { kind :: Maybe String -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe String -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ObjectMeta -- ^  
    , spec :: BuildConfigSpec -- ^ holds all the input necessary to produce a new build, and the conditions when to trigger them 
    , status :: BuildConfigStatus -- ^ holds any relevant information about a build config derived by the system 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON BuildConfig
instance Data.Aeson.ToJSON BuildConfig
