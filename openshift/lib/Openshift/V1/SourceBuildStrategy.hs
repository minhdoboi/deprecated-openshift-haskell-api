{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.SourceBuildStrategy where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Openshift.V1.EnvVar
import Openshift.V1.LocalObjectReference
import Openshift.V1.ObjectReference

-- | 
data SourceBuildStrategy = SourceBuildStrategy
    { from :: ObjectReference -- ^ reference to an image stream, image stream tag, or image stream image from which the Docker image should be pulled 
    , pullSecret :: Maybe LocalObjectReference -- ^ supported type: dockercfg 
    , env :: Maybe [EnvVar] -- ^ additional environment variables you want to pass into a builder container 
    , scripts :: Maybe Text -- ^ location of the source scripts 
    , incremental :: Maybe Bool -- ^ forces the source build to do incremental builds if true 
    , forcePull :: Maybe Bool -- ^ forces the source build to pull the image if true 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON SourceBuildStrategy
instance Data.Aeson.ToJSON SourceBuildStrategy
