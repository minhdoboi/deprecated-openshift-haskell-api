{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.PersistentVolumeStatus where

import qualified Data.Aeson
import GHC.Generics
import Data.Text


-- | PersistentVolumeStatus is the current status of a persistent volume.
data PersistentVolumeStatus = PersistentVolumeStatus
    { phase :: Maybe Text -- ^ Phase indicates if a volume is available, bound to a claim, or released by a claim. More info: http://releases.k8s.io/HEAD/docs/user-guide/persistent-volumes.md#phase 
    , message :: Maybe Text -- ^ A human-readable message indicating details about why the volume is in this state. 
    , reason :: Maybe Text -- ^ Reason is a brief CamelCase string that describes any failure and is meant for machine parsing and tidy display in the CLI. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON PersistentVolumeStatus
instance Data.Aeson.ToJSON PersistentVolumeStatus
