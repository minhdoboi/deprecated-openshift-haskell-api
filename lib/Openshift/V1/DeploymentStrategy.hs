{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.DeploymentStrategy where

import qualified Data.Aeson
import GHC.Generics
import Openshift.Any
import Openshift.V1.CustomDeploymentStrategyParams
import Openshift.V1.RecreateDeploymentStrategyParams
import Openshift.V1.ResourceRequirements
import Openshift.V1.RollingDeploymentStrategyParams


-- | 
data DeploymentStrategy = DeploymentStrategy
    { type_ :: Maybe String -- ^ the name of a deployment strategy 
    , customParams :: Maybe CustomDeploymentStrategyParams -- ^ input to the Custom deployment strategy 
    , recreateParams :: Maybe RecreateDeploymentStrategyParams -- ^ input to the Recreate deployment strategy 
    , rollingParams :: Maybe RollingDeploymentStrategyParams -- ^ input to the Rolling deployment strategy 
    , resources :: Maybe ResourceRequirements -- ^ resource requirements to execute the deployment 
    , labels :: Maybe Any -- ^ labels for deployer and hook pods 
    , annotations :: Maybe Any -- ^ annotations for deployer and hook pods 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON DeploymentStrategy
instance Data.Aeson.ToJSON DeploymentStrategy
