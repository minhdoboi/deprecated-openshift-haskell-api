{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

module Openshift.V1.DeploymentTriggerPolicy where

import GHC.Generics
import Data.Text
import Openshift.V1.DeploymentTriggerImageChangeParams
import Data.Aeson.TH (deriveJSON, defaultOptions, fieldLabelModifier)

-- | 
data DeploymentTriggerPolicy = DeploymentTriggerPolicy
    { type_ :: Maybe Text -- ^ the type of the trigger 
    , imageChangeParams :: Maybe DeploymentTriggerImageChangeParams -- ^ input to the ImageChange trigger 
    } deriving (Show, Eq, Generic)

$(deriveJSON defaultOptions{fieldLabelModifier = (\n -> if Prelude.last n == '_' then Prelude.take ((Prelude.length n) - 1 ) n else n)} ''DeploymentTriggerPolicy)
