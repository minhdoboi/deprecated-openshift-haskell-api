{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.DownwardAPIVolumeFile where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.ObjectFieldSelector


-- | DownwardAPIVolumeFile represents information to create the file containing the pod field
data DownwardAPIVolumeFile = DownwardAPIVolumeFile
    { path :: String -- ^ Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..' 
    , fieldRef :: ObjectFieldSelector -- ^ Required: Selects a field of the pod: only annotations, labels, name and namespace are supported. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON DownwardAPIVolumeFile
instance Data.Aeson.ToJSON DownwardAPIVolumeFile
