{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.NamedTagEventList where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Openshift.V1.TagEvent
import Openshift.V1.TagEventCondition

-- | 
data NamedTagEventList = NamedTagEventList
    { tag :: Text -- ^ the tag 
    , items :: [TagEvent] -- ^ list of tag events related to the tag 
    , conditions :: Maybe [TagEventCondition] -- ^ the set of conditions that apply to this tag 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON NamedTagEventList
instance Data.Aeson.ToJSON NamedTagEventList
