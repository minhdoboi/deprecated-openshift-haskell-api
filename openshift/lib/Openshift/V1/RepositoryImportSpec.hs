{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.RepositoryImportSpec where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.ObjectReference
import Openshift.V1.TagImportPolicy

-- | 
data RepositoryImportSpec = RepositoryImportSpec
    { from :: ObjectReference -- ^ the source for the image repository to import; only kind DockerImage and a name of a Docker image repository is allowed 
    , importPolicy :: Maybe TagImportPolicy -- ^ policy controlling how the image is imported 
    , includeManifest :: Maybe Bool -- ^ if true, return the manifest for each image in the response 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON RepositoryImportSpec
instance Data.Aeson.ToJSON RepositoryImportSpec
