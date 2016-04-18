{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.CustomBuildStrategy where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.EnvVar
import Openshift.V1.LocalObjectReference
import Openshift.V1.ObjectReference
import Openshift.V1.SecretSpec


-- | 
data CustomBuildStrategy = CustomBuildStrategy
    { from :: ObjectReference -- ^ reference to an image stream, image stream tag, or image stream image from which the Docker image should be pulled 
    , pullSecret :: Maybe LocalObjectReference -- ^ supported type: dockercfg 
    , env :: Maybe [EnvVar] -- ^ additional environment variables you want to pass into a builder container 
    , exposeDockerSocket :: Maybe Bool -- ^ allow running Docker commands (and build Docker images) from inside the container 
    , forcePull :: Maybe Bool -- ^ forces pulling of builder image from remote registry if true 
    , secrets :: Maybe [SecretSpec] -- ^ a list of secrets to include in the build pod in addition to pull, push and source secrets 
    , buildAPIVersion :: Maybe String -- ^ requested API version for the Build object serialized and passed to the custom builder 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON CustomBuildStrategy
instance Data.Aeson.ToJSON CustomBuildStrategy
