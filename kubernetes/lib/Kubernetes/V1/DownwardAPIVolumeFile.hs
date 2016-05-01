{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.DownwardAPIVolumeFile where

import GHC.Generics
import Data.Text
import Kubernetes.V1.ObjectFieldSelector
import qualified Data.Aeson

-- | DownwardAPIVolumeFile represents information to create the file containing the pod field
data DownwardAPIVolumeFile = DownwardAPIVolumeFile
    { path :: Text -- ^ Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..' 
    , fieldRef :: ObjectFieldSelector -- ^ Required: Selects a field of the pod: only annotations, labels, name and namespace are supported. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON DownwardAPIVolumeFile
instance Data.Aeson.ToJSON DownwardAPIVolumeFile
