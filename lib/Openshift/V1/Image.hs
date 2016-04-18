{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.Image where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.ImageLayer
import Openshift.V1.ObjectMeta


-- | 
data Image = Image
    { kind :: Maybe String -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe String -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ObjectMeta -- ^  
    , dockerImageReference :: Maybe String -- ^ string that can be used to pull this image 
    , dockerImageMetadata :: Maybe String -- ^ metadata about this image 
    , dockerImageMetadataVersion :: Maybe String -- ^ conveys version of the object, if empty defaults to '1.0' 
    , dockerImageManifest :: Maybe String -- ^ raw JSON of the manifest 
    , dockerImageLayers :: [ImageLayer] -- ^ a list of the image layers from lowest to highest 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON Image
instance Data.Aeson.ToJSON Image
