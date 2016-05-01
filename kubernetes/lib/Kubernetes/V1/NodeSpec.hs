{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.NodeSpec where

import GHC.Generics
import Data.Text
import qualified Data.Aeson

-- | NodeSpec describes the attributes that a node is created with.
data NodeSpec = NodeSpec
    { podCIDR :: Maybe Text -- ^ PodCIDR represents the pod IP range assigned to the node. 
    , externalID :: Maybe Text -- ^ External ID of the node assigned by some machine database (e.g. a cloud provider). Deprecated. 
    , providerID :: Maybe Text -- ^ ID of the node assigned by the cloud provider in the format: <ProviderName>://<ProviderSpecificNodeID> 
    , unschedulable :: Maybe Bool -- ^ Unschedulable controls node schedulability of new pods. By default, node is schedulable. More info: http://releases.k8s.io/HEAD/docs/admin/node.md#manual-node-administration\"` 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON NodeSpec
instance Data.Aeson.ToJSON NodeSpec
