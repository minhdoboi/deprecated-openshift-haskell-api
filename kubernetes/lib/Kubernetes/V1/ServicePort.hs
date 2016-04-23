{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.ServicePort where

import qualified Data.Aeson
import GHC.Generics
import Data.Text


-- | ServicePort conatins information on service's port.
data ServicePort = ServicePort
    { name :: Maybe Text -- ^ The name of this port within the service. This must be a DNS_LABEL. All ports within a ServiceSpec must have unique names. This maps to the 'Name' field in EndpointPort objects. Optional if only one ServicePort is defined on this service. 
    , protocol :: Maybe Text -- ^ The IP protocol for this port. Supports \"TCP\" and \"UDP\". Default is TCP. 
    , port :: Integer -- ^ The port that will be exposed by this service. 
    , targetPort :: Maybe Text -- ^ Number or name of the port to access on the pods targeted by the service. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. If this is a string, it will be looked up as a named port in the target Pod's container ports. If this is not specified, the value of Port is used (an identity map). Defaults to the service port. More info: http://releases.k8s.io/HEAD/docs/user-guide/services.md#defining-a-service 
    , nodePort :: Maybe Integer -- ^ The port on each node on which this service is exposed when type=NodePort or LoadBalancer. Usually assigned by the system. If specified, it will be allocated to the service if unused or else creation of the service will fail. Default is to auto-allocate a port if the ServiceType of this Service requires one. More info: http://releases.k8s.io/HEAD/docs/user-guide/services.md#type--nodeport 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ServicePort
instance Data.Aeson.ToJSON ServicePort
