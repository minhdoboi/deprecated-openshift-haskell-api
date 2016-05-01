{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.ServiceStatus where

import GHC.Generics
import Kubernetes.V1.LoadBalancerStatus
import qualified Data.Aeson

-- | ServiceStatus represents the current status of a service.
data ServiceStatus = ServiceStatus
    { loadBalancer :: Maybe LoadBalancerStatus -- ^ LoadBalancer contains the current status of the load-balancer, if one is present. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ServiceStatus
instance Data.Aeson.ToJSON ServiceStatus
