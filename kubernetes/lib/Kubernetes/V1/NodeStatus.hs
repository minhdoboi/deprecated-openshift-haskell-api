{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.NodeStatus where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Kubernetes.Any
import Kubernetes.V1.NodeAddress
import Kubernetes.V1.NodeCondition
import Kubernetes.V1.NodeDaemonEndpoints
import Kubernetes.V1.NodeSystemInfo

-- | NodeStatus is information about the current status of a node.
data NodeStatus = NodeStatus
    { capacity :: Maybe Any -- ^ Capacity represents the available resources of a node. More info: http://releases.k8s.io/HEAD/docs/user-guide/persistent-volumes.md#capacity for more details. 
    , phase :: Maybe Text -- ^ NodePhase is the recently observed lifecycle phase of the node. More info: http://releases.k8s.io/HEAD/docs/admin/node.md#node-phase 
    , conditions :: Maybe [NodeCondition] -- ^ Conditions is an array of current observed node conditions. More info: http://releases.k8s.io/HEAD/docs/admin/node.md#node-condition 
    , addresses :: Maybe [NodeAddress] -- ^ List of addresses reachable to the node. Queried from cloud provider, if available. More info: http://releases.k8s.io/HEAD/docs/admin/node.md#node-addresses 
    , daemonEndpoints :: Maybe NodeDaemonEndpoints -- ^ Endpoints of daemons running on the Node. 
    , nodeInfo :: Maybe NodeSystemInfo -- ^ Set of ids/uuids to uniquely identify the node. More info: http://releases.k8s.io/HEAD/docs/admin/node.md#node-info 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON NodeStatus
instance Data.Aeson.ToJSON NodeStatus
