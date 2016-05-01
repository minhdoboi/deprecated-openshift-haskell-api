{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.LoadBalancerIngress where

import GHC.Generics
import Data.Text
import qualified Data.Aeson

-- | LoadBalancerIngress represents the status of a load-balancer ingress point: traffic intended for the service should be sent to an ingress point.
data LoadBalancerIngress = LoadBalancerIngress
    { ip :: Maybe Text -- ^ IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack load-balancers) 
    , hostname :: Maybe Text -- ^ Hostname is set for load-balancer ingress points that are DNS based (typically AWS load-balancers) 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON LoadBalancerIngress
instance Data.Aeson.ToJSON LoadBalancerIngress
