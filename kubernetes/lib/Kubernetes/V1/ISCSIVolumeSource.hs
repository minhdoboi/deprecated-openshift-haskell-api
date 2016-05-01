{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.ISCSIVolumeSource where

import GHC.Generics
import Data.Text
import qualified Data.Aeson

-- | ISCSIVolumeSource describes an ISCSI Disk can only be mounted as read/write once.
data ISCSIVolumeSource = ISCSIVolumeSource
    { targetPortal :: Text -- ^ iSCSI target portal. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260). 
    , iqn :: Text -- ^ Target iSCSI Qualified Name. 
    , lun :: Integer -- ^ iSCSI target lun number. 
    , iscsiInterface :: Maybe Text -- ^ Optional: Defaults to 'default' (tcp). iSCSI interface name that uses an iSCSI transport. 
    , fsType :: Text -- ^ Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#iscsi 
    , readOnly :: Maybe Bool -- ^ ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ISCSIVolumeSource
instance Data.Aeson.ToJSON ISCSIVolumeSource
