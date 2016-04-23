{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.ImageChangeTrigger where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Openshift.V1.ObjectReference


-- | 
data ImageChangeTrigger = ImageChangeTrigger
    { lastTriggeredImageID :: Maybe Text -- ^ used internally to save last used image ID for build 
    , from :: Maybe ObjectReference -- ^ reference to an ImageStreamTag that will trigger the build 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ImageChangeTrigger
instance Data.Aeson.ToJSON ImageChangeTrigger
