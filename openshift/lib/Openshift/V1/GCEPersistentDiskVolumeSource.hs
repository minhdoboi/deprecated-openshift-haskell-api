{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.GCEPersistentDiskVolumeSource where

import qualified Data.Aeson
import GHC.Generics
import Data.Text

-- | GCEPersistentDiskVolumeSource represents a Persistent Disk resource in Google Compute Engine.\n\nA GCE PD must exist and be formatted before mounting to a container. The disk must also be in the same GCE project and zone as the kubelet. A GCE PD can only be mounted as read/write once.
data GCEPersistentDiskVolumeSource = GCEPersistentDiskVolumeSource
    { pdName :: Text -- ^ Unique name of the PD resource in GCE. Used to identify the disk in GCE. More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#gcepersistentdisk 
    , fsType :: Text -- ^ Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#gcepersistentdisk 
    , partition :: Maybe Integer -- ^ The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as \"1\". Similarly, the volume partition for /dev/sda is \"0\" (or you can leave the property empty). More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#gcepersistentdisk 
    , readOnly :: Maybe Bool -- ^ ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#gcepersistentdisk 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON GCEPersistentDiskVolumeSource
instance Data.Aeson.ToJSON GCEPersistentDiskVolumeSource
