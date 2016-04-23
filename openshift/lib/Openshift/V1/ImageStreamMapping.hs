{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.ImageStreamMapping where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Openshift.V1.Image
import Openshift.V1.ObjectMeta


-- | 
data ImageStreamMapping = ImageStreamMapping
    { kind :: Maybe Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ObjectMeta -- ^  
    , image :: Image -- ^ a Docker image 
    , tag :: Text -- ^ string value this image can be located with inside the stream 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ImageStreamMapping
instance Data.Aeson.ToJSON ImageStreamMapping