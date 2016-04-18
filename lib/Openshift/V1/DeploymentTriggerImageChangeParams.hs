{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.DeploymentTriggerImageChangeParams where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.ObjectReference


-- | 
data DeploymentTriggerImageChangeParams = DeploymentTriggerImageChangeParams
    { automatic :: Maybe Bool -- ^ whether detection of a new tag value should trigger a deployment 
    , containerNames :: Maybe [String] -- ^ restricts tag updates to a set of container names in the pod 
    , from :: ObjectReference -- ^ a reference to an ImageStreamTag to watch for changes 
    , lastTriggeredImage :: Maybe String -- ^ the last image to be triggered 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON DeploymentTriggerImageChangeParams
instance Data.Aeson.ToJSON DeploymentTriggerImageChangeParams
