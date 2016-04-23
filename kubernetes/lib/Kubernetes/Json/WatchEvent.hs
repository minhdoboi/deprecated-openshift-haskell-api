{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.Json.WatchEvent where

import qualified Data.Aeson
import GHC.Generics
import Data.Text


-- | 
data WatchEvent = WatchEvent
    { type_ :: Maybe Text -- ^ the type of watch event; may be ADDED, MODIFIED, DELETED, or ERROR 
    , object :: Maybe Text -- ^ the object being watched; will match the type of the resource endpoint or be a Status object if the type is ERROR 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON WatchEvent
instance Data.Aeson.ToJSON WatchEvent