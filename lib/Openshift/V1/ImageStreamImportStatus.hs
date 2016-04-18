{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.ImageStreamImportStatus where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.ImageImportStatus
import Openshift.V1.ImageStream
import Openshift.V1.RepositoryImportStatus


-- | 
data ImageStreamImportStatus = ImageStreamImportStatus
    { import_ :: Maybe ImageStream -- ^ if the user requested any images be imported, this field will be set with the successful image stream create or update 
    , repository :: Maybe RepositoryImportStatus -- ^ status of the attempt to import a repository 
    , images :: Maybe [ImageImportStatus] -- ^ status of the attempt to import images 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ImageStreamImportStatus
instance Data.Aeson.ToJSON ImageStreamImportStatus
