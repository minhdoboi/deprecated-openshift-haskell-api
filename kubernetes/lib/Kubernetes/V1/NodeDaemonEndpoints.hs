{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.NodeDaemonEndpoints where

import qualified Data.Aeson
import GHC.Generics
import Kubernetes.V1.DaemonEndpoint

-- | NodeDaemonEndpoints lists ports opened by daemons running on the Node.
data NodeDaemonEndpoints = NodeDaemonEndpoints
    { kubeletEndpoint :: Maybe DaemonEndpoint -- ^ Endpoint on which Kubelet is listening. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON NodeDaemonEndpoints
instance Data.Aeson.ToJSON NodeDaemonEndpoints
