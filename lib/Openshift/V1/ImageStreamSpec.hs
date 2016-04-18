{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.ImageStreamSpec where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.TagReference


-- | 
data ImageStreamSpec = ImageStreamSpec
    { dockerImageRepository :: Maybe String -- ^ optional field if specified this stream is backed by a Docker repository on this server 
    , tags :: Maybe [TagReference] -- ^ map arbitrary string values to specific image locators 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ImageStreamSpec
instance Data.Aeson.ToJSON ImageStreamSpec
