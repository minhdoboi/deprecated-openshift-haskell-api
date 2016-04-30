{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

module Kubernetes.V1.FSGroupStrategyOptions where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Kubernetes.V1.IDRange
import Data.Aeson.TH (deriveJSON, defaultOptions, fieldLabelModifier)

-- | 
data FSGroupStrategyOptions = FSGroupStrategyOptions
    { type_ :: Maybe Text -- ^ strategy used to generate fsGroup 
    , ranges :: Maybe [IDRange] -- ^ ranges of allowable IDs for fsGroup 
    } deriving (Show, Eq, Generic)

$(deriveJSON defaultOptions{fieldLabelModifier = (\n -> if Prelude.last n == '_' then Prelude.take ((Prelude.length n) - 1 ) n else n)} ''FSGroupStrategyOptions)
