{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.MetadataVolumeSource where

import GHC.Generics
import Kubernetes.V1.MetadataFile
import qualified Data.Aeson

-- | 
data MetadataVolumeSource = MetadataVolumeSource
    { items :: Maybe [MetadataFile] -- ^ list of metadata files 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON MetadataVolumeSource
instance Data.Aeson.ToJSON MetadataVolumeSource
