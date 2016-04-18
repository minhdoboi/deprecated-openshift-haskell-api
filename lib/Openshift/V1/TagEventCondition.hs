{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.TagEventCondition where

import qualified Data.Aeson
import GHC.Generics


-- | 
data TagEventCondition = TagEventCondition
    { type_ :: String -- ^ type of tag event condition, currently only ImportSuccess 
    , status :: String -- ^ status of the condition, one of True, False, Unknown 
    , lastTransitionTime :: Maybe String -- ^ last time the condition transitioned from one status to another 
    , reason :: Maybe String -- ^ machine-readable reason for the last condition transition 
    , message :: Maybe String -- ^ human-readable message indicating details of the last transition 
    , generation :: Integer -- ^ the generation of the image stream spec tag this condition represents 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON TagEventCondition
instance Data.Aeson.ToJSON TagEventCondition
