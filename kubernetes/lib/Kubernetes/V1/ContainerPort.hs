{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.ContainerPort where

import qualified Data.Aeson
import GHC.Generics
import Data.Text


-- | ContainerPort represents a network port in a single container.
data ContainerPort = ContainerPort
    { name :: Maybe Text -- ^ If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services. 
    , hostPort :: Maybe Integer -- ^ Number of port to expose on the host. If specified, this must be a valid port number, 0 < x < 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do not need this. 
    , containerPort :: Integer -- ^ Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x < 65536. 
    , protocol :: Maybe Text -- ^ Protocol for port. Must be UDP or TCP. Defaults to \"TCP\". 
    , hostIP :: Maybe Text -- ^ What host IP to bind the external port to. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ContainerPort
instance Data.Aeson.ToJSON ContainerPort
