{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

module Kubernetes.V1.SupplementalGroupsStrategyOptions where

import GHC.Generics
import Data.Text
import Kubernetes.V1.IDRange
import Data.Aeson.TH (deriveJSON, defaultOptions, fieldLabelModifier)

-- | 
data SupplementalGroupsStrategyOptions = SupplementalGroupsStrategyOptions
    { type_ :: Maybe Text -- ^ strategy used to generate supplemental groups 
    , ranges :: Maybe [IDRange] -- ^ ranges of allowable IDs for supplemental groups 
    } deriving (Show, Eq, Generic)

$(deriveJSON defaultOptions{fieldLabelModifier = (\n -> if Prelude.last n == '_' then Prelude.take ((Prelude.length n) - 1 ) n else n)} ''SupplementalGroupsStrategyOptions)
