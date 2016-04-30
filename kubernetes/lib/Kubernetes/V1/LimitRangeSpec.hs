{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.LimitRangeSpec where

import qualified Data.Aeson
import GHC.Generics
import Kubernetes.V1.LimitRangeItem

-- | LimitRangeSpec defines a min/max usage limit for resources that match on kind.
data LimitRangeSpec = LimitRangeSpec
    { limits :: [LimitRangeItem] -- ^ Limits is the list of LimitRangeItem objects that are enforced. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON LimitRangeSpec
instance Data.Aeson.ToJSON LimitRangeSpec
