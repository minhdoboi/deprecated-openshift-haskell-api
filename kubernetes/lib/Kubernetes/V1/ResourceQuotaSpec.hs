{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.ResourceQuotaSpec where

import qualified Data.Aeson
import GHC.Generics
import Kubernetes.Any


-- | ResourceQuotaSpec defines the desired hard limits to enforce for Quota.
data ResourceQuotaSpec = ResourceQuotaSpec
    { hard :: Maybe Any -- ^ Hard is the set of desired hard limits for each named resource. More info: http://releases.k8s.io/HEAD/docs/design/admission_control_resource_quota.md#admissioncontrol-plugin-resourcequota 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ResourceQuotaSpec
instance Data.Aeson.ToJSON ResourceQuotaSpec
