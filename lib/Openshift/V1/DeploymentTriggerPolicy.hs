{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.DeploymentTriggerPolicy where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.DeploymentTriggerImageChangeParams


-- | 
data DeploymentTriggerPolicy = DeploymentTriggerPolicy
    { type_ :: Maybe String -- ^ the type of the trigger 
    , imageChangeParams :: Maybe DeploymentTriggerImageChangeParams -- ^ input to the ImageChange trigger 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON DeploymentTriggerPolicy
instance Data.Aeson.ToJSON DeploymentTriggerPolicy
