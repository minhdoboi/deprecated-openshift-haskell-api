{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.RollingDeploymentStrategyParams where

import GHC.Generics
import Data.Text
import Openshift.V1.LifecycleHook
import qualified Data.Aeson

-- | 
data RollingDeploymentStrategyParams = RollingDeploymentStrategyParams
    { updatePeriodSeconds :: Maybe Integer -- ^ the time to wait between individual pod updates 
    , intervalSeconds :: Maybe Integer -- ^ the time to wait between polling deployment status after update 
    , timeoutSeconds :: Maybe Integer -- ^ the time to wait for updates before giving up 
    , maxUnavailable :: Maybe Text -- ^ max number of pods that can be unavailable during the update; value can be an absolute number or a percentage of total pods at start of update 
    , maxSurge :: Maybe Text -- ^ max number of pods that can be scheduled above the original number of pods; value can be an absolute number or a percentage of total pods at start of update 
    , updatePercent :: Maybe Integer -- ^ the percentage of replicas to scale up or down each interval (negative value switches scale order to down/up instead of up/down) 
    , pre :: Maybe LifecycleHook -- ^ a hook executed before the strategy starts the deployment 
    , post :: Maybe LifecycleHook -- ^ a hook executed after the strategy finishes the deployment 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON RollingDeploymentStrategyParams
instance Data.Aeson.ToJSON RollingDeploymentStrategyParams
