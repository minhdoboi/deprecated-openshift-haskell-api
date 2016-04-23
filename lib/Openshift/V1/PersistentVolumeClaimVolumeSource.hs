{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.PersistentVolumeClaimVolumeSource where

import qualified Data.Aeson
import GHC.Generics
import Data.Text


-- | PersistentVolumeClaimVolumeSource references the user's PVC in the same namespace. This volume finds the bound PV and mounts that volume for the pod. A PersistentVolumeClaimVolumeSource is, essentially, a wrapper around another type of volume that is owned by someone else (the system).
data PersistentVolumeClaimVolumeSource = PersistentVolumeClaimVolumeSource
    { claimName :: Text -- ^ ClaimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: http://releases.k8s.io/HEAD/docs/user-guide/persistent-volumes.md#persistentvolumeclaims 
    , readOnly :: Maybe Bool -- ^ Will force the ReadOnly setting in VolumeMounts. Default false. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON PersistentVolumeClaimVolumeSource
instance Data.Aeson.ToJSON PersistentVolumeClaimVolumeSource
