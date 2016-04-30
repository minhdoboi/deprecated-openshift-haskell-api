{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.PersistentVolumeSpec where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Kubernetes.Any
import Kubernetes.V1.AWSElasticBlockStoreVolumeSource
import Kubernetes.V1.CephFSVolumeSource
import Kubernetes.V1.CinderVolumeSource
import Kubernetes.V1.FCVolumeSource
import Kubernetes.V1.FlockerVolumeSource
import Kubernetes.V1.GCEPersistentDiskVolumeSource
import Kubernetes.V1.GlusterfsVolumeSource
import Kubernetes.V1.HostPathVolumeSource
import Kubernetes.V1.ISCSIVolumeSource
import Kubernetes.V1.NFSVolumeSource
import Kubernetes.V1.ObjectReference
import Kubernetes.V1.PersistentVolumeAccessMode
import Kubernetes.V1.RBDVolumeSource

-- | PersistentVolumeSpec is the specification of a persistent volume.
data PersistentVolumeSpec = PersistentVolumeSpec
    { capacity :: Maybe Any -- ^ A description of the persistent volume's resources and capacity. More info: http://releases.k8s.io/HEAD/docs/user-guide/persistent-volumes.md#capacity 
    , gcePersistentDisk :: Maybe GCEPersistentDiskVolumeSource -- ^ GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin. More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#gcepersistentdisk 
    , awsElasticBlockStore :: Maybe AWSElasticBlockStoreVolumeSource -- ^ AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#awselasticblockstore 
    , hostPath :: Maybe HostPathVolumeSource -- ^ HostPath represents a directory on the host. Provisioned by a developer or tester. This is useful for single-node development and testing only! On-host storage is not supported in any way and WILL NOT WORK in a multi-node cluster. More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#hostpath 
    , glusterfs :: Maybe GlusterfsVolumeSource -- ^ Glusterfs represents a Glusterfs volume that is attached to a host and exposed to the pod. Provisioned by an admin. More info: http://releases.k8s.io/HEAD/examples/glusterfs/README.md 
    , nfs :: Maybe NFSVolumeSource -- ^ NFS represents an NFS mount on the host. Provisioned by an admin. More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#nfs 
    , rbd :: Maybe RBDVolumeSource -- ^ RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: http://releases.k8s.io/HEAD/examples/rbd/README.md 
    , iscsi :: Maybe ISCSIVolumeSource -- ^ ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin. 
    , cinder :: Maybe CinderVolumeSource -- ^ Cinder represents a cinder volume attached and mounted on kubelets host machine More info: http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md 
    , cephfs :: Maybe CephFSVolumeSource -- ^ CephFS represents a Ceph FS mount on the host that shares a pod's lifetime 
    , fc :: Maybe FCVolumeSource -- ^ FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod. 
    , flocker :: Maybe FlockerVolumeSource -- ^ Flocker represents a Flocker volume attached to a kubelet's host machine and exposed to the pod for its usage. This depends on the Flocker control service being running 
    , accessModes :: Maybe [PersistentVolumeAccessMode] -- ^ AccessModes contains all ways the volume can be mounted. More info: http://releases.k8s.io/HEAD/docs/user-guide/persistent-volumes.md#access-modes 
    , claimRef :: Maybe ObjectReference -- ^ ClaimRef is part of a bi-directional binding between PersistentVolume and PersistentVolumeClaim. Expected to be non-nil when bound. claim.VolumeName is the authoritative bind between PV and PVC. More info: http://releases.k8s.io/HEAD/docs/user-guide/persistent-volumes.md#binding 
    , persistentVolumeReclaimPolicy :: Maybe Text -- ^ What happens to a persistent volume when released from its claim. Valid options are Retain (default) and Recycle. Recyling must be supported by the volume plugin underlying this persistent volume. More info: http://releases.k8s.io/HEAD/docs/user-guide/persistent-volumes.md#recycling-policy 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON PersistentVolumeSpec
instance Data.Aeson.ToJSON PersistentVolumeSpec
