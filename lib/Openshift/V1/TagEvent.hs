{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.TagEvent where

import qualified Data.Aeson
import GHC.Generics


-- | 
data TagEvent = TagEvent
    { created :: String -- ^ when the event was created 
    , dockerImageReference :: String -- ^ the string that can be used to pull this image 
    , image :: String -- ^ the image 
    , generation :: Integer -- ^ the generation of the image stream spec tag this tag event represents 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON TagEvent
instance Data.Aeson.ToJSON TagEvent
