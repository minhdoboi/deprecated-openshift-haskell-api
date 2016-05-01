{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.ImageStreamStatus where

import GHC.Generics
import Data.Text
import Openshift.V1.NamedTagEventList
import qualified Data.Aeson

-- | 
data ImageStreamStatus = ImageStreamStatus
    { dockerImageRepository :: Text -- ^ represents the effective location this stream may be accessed at, may be empty until the server determines where the repository is located 
    , tags :: Maybe [NamedTagEventList] -- ^ historical record of images associated with each tag, the first entry is the currently tagged image 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ImageStreamStatus
instance Data.Aeson.ToJSON ImageStreamStatus
