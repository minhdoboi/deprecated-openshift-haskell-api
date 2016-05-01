{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.LoadBalancerStatus where

import GHC.Generics
import Kubernetes.V1.LoadBalancerIngress
import qualified Data.Aeson

-- | LoadBalancerStatus represents the status of a load-balancer.
data LoadBalancerStatus = LoadBalancerStatus
    { ingress :: Maybe [LoadBalancerIngress] -- ^ Ingress is a list containing ingress points for the load-balancer. Traffic intended for the service should be sent to these ingress points. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON LoadBalancerStatus
instance Data.Aeson.ToJSON LoadBalancerStatus
