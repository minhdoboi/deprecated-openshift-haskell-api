{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.ImageImportSpec where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.LocalObjectReference
import Openshift.V1.ObjectReference
import Openshift.V1.TagImportPolicy


-- | 
data ImageImportSpec = ImageImportSpec
    { from :: ObjectReference -- ^ the source of an image to import; only kind DockerImage is allowed 
    , to :: Maybe LocalObjectReference -- ^ a tag in the current image stream to assign the imported image to, if name is not specified the default tag from from.name will be used 
    , importPolicy :: Maybe TagImportPolicy -- ^ policy controlling how the image is imported 
    , includeManifest :: Maybe Bool -- ^ if true, return the manifest for this image in the response 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ImageImportSpec
instance Data.Aeson.ToJSON ImageImportSpec
