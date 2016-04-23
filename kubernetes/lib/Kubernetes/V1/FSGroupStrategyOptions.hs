{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.FSGroupStrategyOptions where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Kubernetes.V1.IDRange


-- | 
data FSGroupStrategyOptions = FSGroupStrategyOptions
    { type_ :: Maybe Text -- ^ strategy used to generate fsGroup 
    , ranges :: Maybe [IDRange] -- ^ ranges of allowable IDs for fsGroup 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON FSGroupStrategyOptions
instance Data.Aeson.ToJSON FSGroupStrategyOptions
