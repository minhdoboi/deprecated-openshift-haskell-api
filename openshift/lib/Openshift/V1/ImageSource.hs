{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.ImageSource where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.ImageSourcePath
import Openshift.V1.LocalObjectReference
import Openshift.V1.ObjectReference


-- | 
data ImageSource = ImageSource
    { from :: ObjectReference -- ^ reference to ImageStreamTag, ImageStreamImage, or DockerImage 
    , paths :: [ImageSourcePath] -- ^ paths to copy from image 
    , pullSecret :: Maybe LocalObjectReference -- ^ overrides the default pull secret for the source image 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ImageSource
instance Data.Aeson.ToJSON ImageSource
