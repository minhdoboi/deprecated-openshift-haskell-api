{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.ImageStreamStatus where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.NamedTagEventList


-- | 
data ImageStreamStatus = ImageStreamStatus
    { dockerImageRepository :: String -- ^ represents the effective location this stream may be accessed at, may be empty until the server determines where the repository is located 
    , tags :: Maybe [NamedTagEventList] -- ^ historical record of images associated with each tag, the first entry is the currently tagged image 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ImageStreamStatus
instance Data.Aeson.ToJSON ImageStreamStatus
