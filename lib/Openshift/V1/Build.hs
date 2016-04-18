{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.Build where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.BuildSpec
import Openshift.V1.BuildStatus
import Openshift.V1.ObjectMeta


-- | 
data Build = Build
    { kind :: Maybe String -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe String -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ObjectMeta -- ^  
    , spec :: Maybe BuildSpec -- ^ specification of the desired behavior for a build 
    , status :: Maybe BuildStatus -- ^ most recently observed status of a build as populated by the system 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON Build
instance Data.Aeson.ToJSON Build
