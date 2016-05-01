{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.RecreateDeploymentStrategyParams where

import GHC.Generics
import Openshift.V1.LifecycleHook
import qualified Data.Aeson

-- | 
data RecreateDeploymentStrategyParams = RecreateDeploymentStrategyParams
    { timeoutSeconds :: Maybe Integer -- ^ the time to wait for updates before giving up 
    , pre :: Maybe LifecycleHook -- ^ a hook executed before the strategy starts the deployment 
    , mid :: Maybe LifecycleHook -- ^ a hook executed after the strategy scales down the deployment and before it scales up 
    , post :: Maybe LifecycleHook -- ^ a hook executed after the strategy finishes the deployment 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON RecreateDeploymentStrategyParams
instance Data.Aeson.ToJSON RecreateDeploymentStrategyParams
