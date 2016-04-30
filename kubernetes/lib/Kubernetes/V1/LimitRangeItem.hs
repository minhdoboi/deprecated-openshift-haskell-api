{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

module Kubernetes.V1.LimitRangeItem where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Kubernetes.Any
import Data.Aeson.TH (deriveJSON, defaultOptions, fieldLabelModifier)

-- | LimitRangeItem defines a min/max usage limit for any resource that matches on kind.
data LimitRangeItem = LimitRangeItem
    { type_ :: Maybe Text -- ^ Type of resource that this limit applies to. 
    , max :: Maybe Any -- ^ Max usage constraints on this kind by resource name. 
    , min :: Maybe Any -- ^ Min usage constraints on this kind by resource name. 
    , default_ :: Maybe Any -- ^ Default resource requirement limit value by resource name if resource limit is omitted. 
    , defaultRequest :: Maybe Any -- ^ DefaultRequest is the default resource requirement request value by resource name if resource request is omitted. 
    , maxLimitRequestRatio :: Maybe Any -- ^ MaxLimitRequestRatio if specified, the named resource must have a request and limit that are both non-zero where limit divided by request is less than or equal to the enumerated value; this represents the max burst for the named resource. 
    } deriving (Show, Eq, Generic)

$(deriveJSON defaultOptions{fieldLabelModifier = (\n -> if Prelude.last n == '_' then Prelude.take ((Prelude.length n) - 1 ) n else n)} ''LimitRangeItem)
