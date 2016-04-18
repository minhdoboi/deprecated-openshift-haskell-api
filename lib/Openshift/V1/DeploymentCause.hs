{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.DeploymentCause where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.DeploymentCauseImageTrigger


-- | 
data DeploymentCause = DeploymentCause
    { type_ :: String -- ^ the type of trigger that resulted in a new deployment 
    , imageTrigger :: Maybe DeploymentCauseImageTrigger -- ^ image trigger details (if applicable) 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON DeploymentCause
instance Data.Aeson.ToJSON DeploymentCause
