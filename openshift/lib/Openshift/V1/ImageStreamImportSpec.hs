{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.ImageStreamImportSpec where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.ImageImportSpec
import Openshift.V1.RepositoryImportSpec


-- | 
data ImageStreamImportSpec = ImageStreamImportSpec
    { import_ :: Bool -- ^ if true, the images will be imported to the server and the resulting image stream will be returned in status.import 
    , repository :: Maybe RepositoryImportSpec -- ^ if specified, import a single Docker repository's tags to this image stream 
    , images :: Maybe [ImageImportSpec] -- ^ a list of images to import into this image stream 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ImageStreamImportSpec
instance Data.Aeson.ToJSON ImageStreamImportSpec
