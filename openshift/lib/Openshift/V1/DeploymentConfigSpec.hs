{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.DeploymentConfigSpec where

import qualified Data.Aeson
import GHC.Generics
import Openshift.Any
import Openshift.V1.DeploymentStrategy
import Openshift.V1.DeploymentTriggerPolicy
import Openshift.V1.PodTemplateSpec


-- | 
data DeploymentConfigSpec = DeploymentConfigSpec
    { strategy :: DeploymentStrategy -- ^ how a deployment is executed 
    , triggers :: [DeploymentTriggerPolicy] -- ^ how new deployments are triggered 
    , replicas :: Integer -- ^ the desired number of replicas 
    , test :: Bool -- ^ if true, this deployment config will always be scaled to 0 except while a deployment is running 
    , selector :: Maybe Any -- ^ a label query over pods that should match the replicas count; if omitted, it will default to the podTemplate labels 
    , template :: Maybe PodTemplateSpec -- ^ describes the pod that will be created if insufficient replicas are detected 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON DeploymentConfigSpec
instance Data.Aeson.ToJSON DeploymentConfigSpec
