{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.AWSElasticBlockStoreVolumeSource where

import GHC.Generics
import Data.Text
import qualified Data.Aeson

-- | Represents a persistent disk resource in AWS.\n\nAn Amazon Elastic Block Store (EBS) must already be created, formatted, and reside in the same AWS zone as the kubelet before it can be mounted. Note: Amazon EBS volumes can be mounted to only one instance at a time.
data AWSElasticBlockStoreVolumeSource = AWSElasticBlockStoreVolumeSource
    { volumeID :: Text -- ^ Unique ID of the persistent disk resource in AWS (Amazon EBS volume). More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#awselasticblockstore 
    , fsType :: Text -- ^ Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#awselasticblockstore 
    , partition :: Maybe Integer -- ^ The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as \"1\". Similarly, the volume partition for /dev/sda is \"0\" (or you can leave the property empty). 
    , readOnly :: Maybe Bool -- ^ Specify \"true\" to force and set the ReadOnly property in VolumeMounts to \"true\". If omitted, the default is \"false\". More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#awselasticblockstore 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON AWSElasticBlockStoreVolumeSource
instance Data.Aeson.ToJSON AWSElasticBlockStoreVolumeSource
