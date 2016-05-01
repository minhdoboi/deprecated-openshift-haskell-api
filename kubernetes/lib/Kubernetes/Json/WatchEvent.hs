{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

module Kubernetes.Json.WatchEvent where

import GHC.Generics
import Data.Text
import Data.Aeson.TH (deriveJSON, defaultOptions, fieldLabelModifier)

-- | 
data WatchEvent = WatchEvent
    { type_ :: Maybe Text -- ^ the type of watch event; may be ADDED, MODIFIED, DELETED, or ERROR 
    , object :: Maybe Text -- ^ the object being watched; will match the type of the resource endpoint or be a Status object if the type is ERROR 
    } deriving (Show, Eq, Generic)

$(deriveJSON defaultOptions{fieldLabelModifier = (\n -> if Prelude.last n == '_' then Prelude.take ((Prelude.length n) - 1 ) n else n)} ''WatchEvent)
