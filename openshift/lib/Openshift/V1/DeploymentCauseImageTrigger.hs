{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.DeploymentCauseImageTrigger where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.ObjectReference


-- | 
data DeploymentCauseImageTrigger = DeploymentCauseImageTrigger
    { from :: ObjectReference -- ^ a reference the changed object which triggered a deployment 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON DeploymentCauseImageTrigger
instance Data.Aeson.ToJSON DeploymentCauseImageTrigger
