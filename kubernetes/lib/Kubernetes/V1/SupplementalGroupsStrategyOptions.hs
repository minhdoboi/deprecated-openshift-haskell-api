{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.SupplementalGroupsStrategyOptions where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Kubernetes.V1.IDRange


-- | 
data SupplementalGroupsStrategyOptions = SupplementalGroupsStrategyOptions
    { type_ :: Maybe Text -- ^ strategy used to generate supplemental groups 
    , ranges :: Maybe [IDRange] -- ^ ranges of allowable IDs for supplemental groups 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON SupplementalGroupsStrategyOptions
instance Data.Aeson.ToJSON SupplementalGroupsStrategyOptions
