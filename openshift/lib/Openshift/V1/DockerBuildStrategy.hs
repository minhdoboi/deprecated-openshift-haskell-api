{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.DockerBuildStrategy where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Openshift.V1.EnvVar
import Openshift.V1.LocalObjectReference
import Openshift.V1.ObjectReference

-- | 
data DockerBuildStrategy = DockerBuildStrategy
    { from :: Maybe ObjectReference -- ^ reference to image stream, image stream tag, or image stream image from which docker image should be pulled, resulting image will be used in the FROM line for the Dockerfile for this build 
    , pullSecret :: Maybe LocalObjectReference -- ^ supported type: dockercfg 
    , noCache :: Maybe Bool -- ^ if true, indicates that the Docker build must be executed with the --no-cache=true flag 
    , env :: Maybe [EnvVar] -- ^ additional environment variables you want to pass into a builder container 
    , forcePull :: Maybe Bool -- ^ forces the source build to pull the image if true 
    , dockerfilePath :: Maybe Text -- ^ path of the Dockerfile to use for building the Docker image, relative to the contextDir, if set 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON DockerBuildStrategy
instance Data.Aeson.ToJSON DockerBuildStrategy
