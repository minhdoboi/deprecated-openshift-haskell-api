{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.ImageImportStatus where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Openshift.Unversioned.Status
import Openshift.V1.Image


-- | 
data ImageImportStatus = ImageImportStatus
    { status :: Status -- ^ the status of the image import, including errors encountered while retrieving the image 
    , image :: Maybe Image -- ^ if the image was located, the metadata of that image 
    , tag :: Maybe Text -- ^ the tag this image was located under, if any 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ImageImportStatus
instance Data.Aeson.ToJSON ImageImportStatus
