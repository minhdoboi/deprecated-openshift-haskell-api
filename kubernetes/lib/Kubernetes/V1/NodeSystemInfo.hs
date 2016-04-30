{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.NodeSystemInfo where

import qualified Data.Aeson
import GHC.Generics
import Data.Text

-- | NodeSystemInfo is a set of ids/uuids to uniquely identify the node.
data NodeSystemInfo = NodeSystemInfo
    { machineID :: Text -- ^ Machine ID reported by the node. 
    , systemUUID :: Text -- ^ System UUID reported by the node. 
    , bootID :: Text -- ^ Boot ID reported by the node. 
    , kernelVersion :: Text -- ^ Kernel Version reported by the node from 'uname -r' (e.g. 3.16.0-0.bpo.4-amd64). 
    , osImage :: Text -- ^ OS Image reported by the node from /etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)). 
    , containerRuntimeVersion :: Text -- ^ ContainerRuntime Version reported by the node through runtime remote API (e.g. docker://1.5.0). 
    , kubeletVersion :: Text -- ^ Kubelet Version reported by the node. 
    , kubeProxyVersion :: Text -- ^ KubeProxy Version reported by the node. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON NodeSystemInfo
instance Data.Aeson.ToJSON NodeSystemInfo
