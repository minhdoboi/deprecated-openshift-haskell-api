{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.PersistentVolumeClaimSpec where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Kubernetes.V1.PersistentVolumeAccessMode
import Kubernetes.V1.ResourceRequirements

-- | PersistentVolumeClaimSpec describes the common attributes of storage devices and allows a Source for provider-specific attributes
data PersistentVolumeClaimSpec = PersistentVolumeClaimSpec
    { accessModes :: Maybe [PersistentVolumeAccessMode] -- ^ AccessModes contains the desired access modes the volume should have. More info: http://releases.k8s.io/HEAD/docs/user-guide/persistent-volumes.md#access-modes-1 
    , resources :: Maybe ResourceRequirements -- ^ Resources represents the minimum resources the volume should have. More info: http://releases.k8s.io/HEAD/docs/user-guide/persistent-volumes.md#resources 
    , volumeName :: Maybe Text -- ^ VolumeName is the binding reference to the PersistentVolume backing this claim. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON PersistentVolumeClaimSpec
instance Data.Aeson.ToJSON PersistentVolumeClaimSpec
