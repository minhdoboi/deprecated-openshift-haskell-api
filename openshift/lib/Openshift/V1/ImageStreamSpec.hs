{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.ImageStreamSpec where

import GHC.Generics
import Data.Text
import Openshift.V1.TagReference
import qualified Data.Aeson

-- | 
data ImageStreamSpec = ImageStreamSpec
    { dockerImageRepository :: Maybe Text -- ^ optional field if specified this stream is backed by a Docker repository on this server 
    , tags :: Maybe [TagReference] -- ^ map arbitrary string values to specific image locators 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ImageStreamSpec
instance Data.Aeson.ToJSON ImageStreamSpec
