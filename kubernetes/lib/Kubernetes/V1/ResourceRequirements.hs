{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.ResourceRequirements where

import qualified Data.Aeson
import GHC.Generics
import Kubernetes.Any

-- | ResourceRequirements describes the compute resource requirements.
data ResourceRequirements = ResourceRequirements
    { limits :: Maybe Any -- ^ Limits describes the maximum amount of compute resources allowed. More info: http://releases.k8s.io/HEAD/docs/design/resources.md#resource-specifications 
    , requests :: Maybe Any -- ^ Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: http://releases.k8s.io/HEAD/docs/design/resources.md#resource-specifications 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ResourceRequirements
instance Data.Aeson.ToJSON ResourceRequirements
