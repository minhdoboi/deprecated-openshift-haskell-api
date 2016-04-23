{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.LifecycleHook where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Openshift.V1.ExecNewPodHook


-- | 
data LifecycleHook = LifecycleHook
    { failurePolicy :: Text -- ^ what action to take if the hook fails 
    , execNewPod :: Maybe ExecNewPodHook -- ^ options for an ExecNewPodHook 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON LifecycleHook
instance Data.Aeson.ToJSON LifecycleHook
