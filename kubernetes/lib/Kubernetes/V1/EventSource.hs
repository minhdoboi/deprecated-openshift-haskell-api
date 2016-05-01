{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.EventSource where

import GHC.Generics
import Data.Text
import qualified Data.Aeson

-- | EventSource contains information for an event.
data EventSource = EventSource
    { component :: Maybe Text -- ^ Component from which the event is generated. 
    , host :: Maybe Text -- ^ Host name on which the event is generated. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON EventSource
instance Data.Aeson.ToJSON EventSource
