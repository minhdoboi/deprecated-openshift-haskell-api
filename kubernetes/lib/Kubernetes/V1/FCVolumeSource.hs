{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.FCVolumeSource where

import GHC.Generics
import Data.Text
import qualified Data.Aeson

-- | A Fibre Channel Disk can only be mounted as read/write once.
data FCVolumeSource = FCVolumeSource
    { targetWWNs :: [Text] -- ^ Required: FC target world wide names (WWNs) 
    , lun :: Integer -- ^ Required: FC target lun number 
    , fsType :: Text -- ^ Required: Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\" 
    , readOnly :: Maybe Bool -- ^ Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON FCVolumeSource
instance Data.Aeson.ToJSON FCVolumeSource
