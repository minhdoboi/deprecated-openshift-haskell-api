{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.ReplicationControllerStatus where

import qualified Data.Aeson
import GHC.Generics


-- | ReplicationControllerStatus represents the current status of a replication controller.
data ReplicationControllerStatus = ReplicationControllerStatus
    { replicas :: Integer -- ^ Replicas is the most recently oberved number of replicas. More info: http://releases.k8s.io/HEAD/docs/user-guide/replication-controller.md#what-is-a-replication-controller 
    , observedGeneration :: Maybe Integer -- ^ ObservedGeneration reflects the generation of the most recently observed replication controller. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ReplicationControllerStatus
instance Data.Aeson.ToJSON ReplicationControllerStatus
