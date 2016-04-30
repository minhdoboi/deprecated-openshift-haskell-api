{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

module Openshift.V1.DeploymentStrategy where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Openshift.Any
import Openshift.V1.CustomDeploymentStrategyParams
import Openshift.V1.RecreateDeploymentStrategyParams
import Openshift.V1.ResourceRequirements
import Openshift.V1.RollingDeploymentStrategyParams
import Data.Aeson.TH (deriveJSON, defaultOptions, fieldLabelModifier)

-- | 
data DeploymentStrategy = DeploymentStrategy
    { type_ :: Maybe Text -- ^ the name of a deployment strategy 
    , customParams :: Maybe CustomDeploymentStrategyParams -- ^ input to the Custom deployment strategy 
    , recreateParams :: Maybe RecreateDeploymentStrategyParams -- ^ input to the Recreate deployment strategy 
    , rollingParams :: Maybe RollingDeploymentStrategyParams -- ^ input to the Rolling deployment strategy 
    , resources :: Maybe ResourceRequirements -- ^ resource requirements to execute the deployment 
    , labels :: Maybe Any -- ^ labels for deployer and hook pods 
    , annotations :: Maybe Any -- ^ annotations for deployer and hook pods 
    } deriving (Show, Eq, Generic)

$(deriveJSON defaultOptions{fieldLabelModifier = (\n -> if Prelude.last n == '_' then Prelude.take ((Prelude.length n) - 1 ) n else n)} ''DeploymentStrategy)
