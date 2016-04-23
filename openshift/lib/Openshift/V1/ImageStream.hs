{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.ImageStream where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Openshift.V1.ImageStreamSpec
import Openshift.V1.ImageStreamStatus
import Openshift.V1.ObjectMeta


-- | 
data ImageStream = ImageStream
    { kind :: Maybe Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ObjectMeta -- ^  
    , spec :: ImageStreamSpec -- ^ desired state of the stream 
    , status :: Maybe ImageStreamStatus -- ^ current state of the stream as observed by the system 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ImageStream
instance Data.Aeson.ToJSON ImageStream
