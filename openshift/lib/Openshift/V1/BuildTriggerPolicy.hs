{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.BuildTriggerPolicy where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Openshift.V1.ImageChangeTrigger
import Openshift.V1.WebHookTrigger


-- | 
data BuildTriggerPolicy = BuildTriggerPolicy
    { type_ :: Text -- ^ type of build trigger 
    , github :: Maybe WebHookTrigger -- ^ parameters for a GitHub webhook type of trigger 
    , generic :: Maybe WebHookTrigger -- ^ parameters for a Generic webhook type of trigger 
    , imageChange :: Maybe ImageChangeTrigger -- ^ parameters for an ImageChange type of trigger 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON BuildTriggerPolicy
instance Data.Aeson.ToJSON BuildTriggerPolicy
