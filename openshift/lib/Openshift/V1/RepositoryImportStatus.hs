{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.RepositoryImportStatus where

import GHC.Generics
import Data.Text
import Openshift.Unversioned.Status
import Openshift.V1.ImageImportStatus
import qualified Data.Aeson

-- | 
data RepositoryImportStatus = RepositoryImportStatus
    { status :: Maybe Status -- ^ the result of the import attempt, will include a reason and message if the repository could not be imported 
    , images :: Maybe [ImageImportStatus] -- ^ a list of the images retrieved by the import of the repository 
    , additionalTags :: Maybe [Text] -- ^ a list of additional tags on the repository that were not retrieved 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON RepositoryImportStatus
instance Data.Aeson.ToJSON RepositoryImportStatus
