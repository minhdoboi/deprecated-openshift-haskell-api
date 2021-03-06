{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.LimitRangeList where

import GHC.Generics
import Data.Text
import Kubernetes.Unversioned.ListMeta
import Kubernetes.V1.LimitRange
import qualified Data.Aeson

-- | LimitRangeList is a list of LimitRange items.
data LimitRangeList = LimitRangeList
    { kind :: Maybe Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ListMeta -- ^ Standard list metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , items :: [LimitRange] -- ^ Items is a list of LimitRange objects. More info: http://releases.k8s.io/HEAD/docs/design/admission_control_limit_range.md 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON LimitRangeList
instance Data.Aeson.ToJSON LimitRangeList
