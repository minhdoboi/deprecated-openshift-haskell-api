{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.PersistentVolumeAccessMode where

import GHC.Generics
import qualified Data.Aeson

-- | 
data PersistentVolumeAccessMode = PersistentVolumeAccessMode
    { 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON PersistentVolumeAccessMode
instance Data.Aeson.ToJSON PersistentVolumeAccessMode
