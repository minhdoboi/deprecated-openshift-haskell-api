{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.DeploymentConfigStatus where

import GHC.Generics
import Openshift.V1.DeploymentDetails
import qualified Data.Aeson

-- | 
data DeploymentConfigStatus = DeploymentConfigStatus
    { latestVersion :: Maybe Integer -- ^ used to determine whether the current deployment is out of sync 
    , details :: Maybe DeploymentDetails -- ^ reasons for the last update to the config 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON DeploymentConfigStatus
instance Data.Aeson.ToJSON DeploymentConfigStatus
