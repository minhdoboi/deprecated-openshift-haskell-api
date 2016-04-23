{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.MetadataVolumeSource where

import qualified Data.Aeson
import GHC.Generics
import Kubernetes.V1.MetadataFile


-- | 
data MetadataVolumeSource = MetadataVolumeSource
    { items :: Maybe [MetadataFile] -- ^ list of metadata files 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON MetadataVolumeSource
instance Data.Aeson.ToJSON MetadataVolumeSource
