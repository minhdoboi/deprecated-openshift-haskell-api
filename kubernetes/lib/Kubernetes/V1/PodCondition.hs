{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.PodCondition where

import qualified Data.Aeson
import GHC.Generics
import Data.Text


-- | PodCondition contains details for the current condition of this pod.
data PodCondition = PodCondition
    { type_ :: Text -- ^ Type is the type of the condition. Currently only Ready. More info: http://releases.k8s.io/HEAD/docs/user-guide/pod-states.md#pod-conditions 
    , status :: Text -- ^ Status is the status of the condition. Can be True, False, Unknown. More info: http://releases.k8s.io/HEAD/docs/user-guide/pod-states.md#pod-conditions 
    , lastProbeTime :: Maybe Text -- ^ Last time we probed the condition. 
    , lastTransitionTime :: Maybe Text -- ^ Last time the condition transitioned from one status to another. 
    , reason :: Maybe Text -- ^ Unique, one-word, CamelCase reason for the condition's last transition. 
    , message :: Maybe Text -- ^ Human-readable message indicating details about last transition. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON PodCondition
instance Data.Aeson.ToJSON PodCondition
