{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.MetadataFile where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Kubernetes.V1.ObjectFieldSelector

-- | 
data MetadataFile = MetadataFile
    { name :: Text -- ^ the name of the file to be created 
    , fieldRef :: ObjectFieldSelector -- ^ selects a field of the pod. Supported fields: metadata.annotations, metadata.labels, metadata.name, metadata.namespace 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON MetadataFile
instance Data.Aeson.ToJSON MetadataFile
