{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.TagEvent where

import qualified Data.Aeson
import GHC.Generics
import Data.Text

-- | 
data TagEvent = TagEvent
    { created :: Text -- ^ when the event was created 
    , dockerImageReference :: Text -- ^ the string that can be used to pull this image 
    , image :: Text -- ^ the image 
    , generation :: Integer -- ^ the generation of the image stream spec tag this tag event represents 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON TagEvent
instance Data.Aeson.ToJSON TagEvent
