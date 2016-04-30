{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.PersistentVolumeAccessMode where

import qualified Data.Aeson
import GHC.Generics

-- | 
data PersistentVolumeAccessMode = PersistentVolumeAccessMode
    { 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON PersistentVolumeAccessMode
instance Data.Aeson.ToJSON PersistentVolumeAccessMode
