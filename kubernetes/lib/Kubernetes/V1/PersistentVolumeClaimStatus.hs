{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.PersistentVolumeClaimStatus where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Kubernetes.Any
import Kubernetes.V1.PersistentVolumeAccessMode

-- | PersistentVolumeClaimStatus is the current status of a persistent volume claim.
data PersistentVolumeClaimStatus = PersistentVolumeClaimStatus
    { phase :: Maybe Text -- ^ Phase represents the current phase of PersistentVolumeClaim. 
    , accessModes :: Maybe [PersistentVolumeAccessMode] -- ^ AccessModes contains the actual access modes the volume backing the PVC has. More info: http://releases.k8s.io/HEAD/docs/user-guide/persistent-volumes.md#access-modes-1 
    , capacity :: Maybe Any -- ^ Represents the actual resources of the underlying volume. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON PersistentVolumeClaimStatus
instance Data.Aeson.ToJSON PersistentVolumeClaimStatus
