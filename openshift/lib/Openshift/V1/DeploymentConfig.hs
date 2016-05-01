{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.DeploymentConfig where

import GHC.Generics
import Data.Text
import Kubernetes.V1.ObjectMeta
import Openshift.V1.DeploymentConfigSpec
import Openshift.V1.DeploymentConfigStatus
import qualified Data.Aeson

-- | 
data DeploymentConfig = DeploymentConfig
    { kind :: Maybe Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ObjectMeta -- ^  
    , spec :: DeploymentConfigSpec -- ^ a desired deployment state and how to deploy it 
    , status :: DeploymentConfigStatus -- ^ the current state of the latest deployment 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON DeploymentConfig
instance Data.Aeson.ToJSON DeploymentConfig
