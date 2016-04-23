{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.Probe where

import qualified Data.Aeson
import GHC.Generics
import Kubernetes.V1.ExecAction
import Kubernetes.V1.HTTPGetAction
import Kubernetes.V1.TCPSocketAction


-- | Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
data Probe = Probe
    { exec :: Maybe ExecAction -- ^ One and only one of the following should be specified. Exec specifies the action to take. 
    , httpGet :: Maybe HTTPGetAction -- ^ HTTPGet specifies the http request to perform. 
    , tcpSocket :: Maybe TCPSocketAction -- ^ TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported 
    , initialDelaySeconds :: Maybe Integer -- ^ Number of seconds after the container has started before liveness probes are initiated. More info: http://releases.k8s.io/HEAD/docs/user-guide/pod-states.md#container-probes 
    , timeoutSeconds :: Maybe Integer -- ^ Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: http://releases.k8s.io/HEAD/docs/user-guide/pod-states.md#container-probes 
    , periodSeconds :: Maybe Integer -- ^ How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. 
    , successThreshold :: Maybe Integer -- ^ Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness. Minimum value is 1. 
    , failureThreshold :: Maybe Integer -- ^ Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON Probe
instance Data.Aeson.ToJSON Probe
