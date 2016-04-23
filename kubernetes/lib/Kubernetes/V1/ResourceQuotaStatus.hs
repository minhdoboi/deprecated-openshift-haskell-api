{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.ResourceQuotaStatus where

import qualified Data.Aeson
import GHC.Generics
import Kubernetes.Any


-- | ResourceQuotaStatus defines the enforced hard limits and observed use.
data ResourceQuotaStatus = ResourceQuotaStatus
    { hard :: Maybe Any -- ^ Hard is the set of enforced hard limits for each named resource. More info: http://releases.k8s.io/HEAD/docs/design/admission_control_resource_quota.md#admissioncontrol-plugin-resourcequota 
    , used :: Maybe Any -- ^ Used is the current observed total usage of the resource in the namespace. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ResourceQuotaStatus
instance Data.Aeson.ToJSON ResourceQuotaStatus
