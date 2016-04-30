{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

module Openshift.V1.ImageStreamImportStatus where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.ImageImportStatus
import Openshift.V1.ImageStream
import Openshift.V1.RepositoryImportStatus
import Data.Aeson.TH (deriveJSON, defaultOptions, fieldLabelModifier)

-- | 
data ImageStreamImportStatus = ImageStreamImportStatus
    { import_ :: Maybe ImageStream -- ^ if the user requested any images be imported, this field will be set with the successful image stream create or update 
    , repository :: Maybe RepositoryImportStatus -- ^ status of the attempt to import a repository 
    , images :: Maybe [ImageImportStatus] -- ^ status of the attempt to import images 
    } deriving (Show, Eq, Generic)

$(deriveJSON defaultOptions{fieldLabelModifier = (\n -> if Prelude.last n == '_' then Prelude.take ((Prelude.length n) - 1 ) n else n)} ''ImageStreamImportStatus)
