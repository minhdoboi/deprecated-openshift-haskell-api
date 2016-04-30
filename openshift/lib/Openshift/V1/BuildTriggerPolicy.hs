{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

module Openshift.V1.BuildTriggerPolicy where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Openshift.V1.ImageChangeTrigger
import Openshift.V1.WebHookTrigger
import Data.Aeson.TH (deriveJSON, defaultOptions, fieldLabelModifier)

-- | 
data BuildTriggerPolicy = BuildTriggerPolicy
    { type_ :: Text -- ^ type of build trigger 
    , github :: Maybe WebHookTrigger -- ^ parameters for a GitHub webhook type of trigger 
    , generic :: Maybe WebHookTrigger -- ^ parameters for a Generic webhook type of trigger 
    , imageChange :: Maybe ImageChangeTrigger -- ^ parameters for an ImageChange type of trigger 
    } deriving (Show, Eq, Generic)

$(deriveJSON defaultOptions{fieldLabelModifier = (\n -> if Prelude.last n == '_' then Prelude.take ((Prelude.length n) - 1 ) n else n)} ''BuildTriggerPolicy)
