{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.TagReference where

import qualified Data.Aeson
import GHC.Generics
import Openshift.Any
import Openshift.V1.ObjectReference
import Openshift.V1.TagImportPolicy


-- | 
data TagReference = TagReference
    { name :: String -- ^ name of tag 
    , annotations :: Maybe Any -- ^ annotations associated with images using this tag 
    , from :: Maybe ObjectReference -- ^ a reference to an image stream tag or image stream this tag should track 
    , reference :: Maybe Bool -- ^ if true consider this tag a reference only and do not attempt to import metadata about the image 
    , generation :: Integer -- ^ the generation of the image stream this was updated to 
    , importPolicy :: Maybe TagImportPolicy -- ^ attributes controlling how this reference is imported 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON TagReference
instance Data.Aeson.ToJSON TagReference
