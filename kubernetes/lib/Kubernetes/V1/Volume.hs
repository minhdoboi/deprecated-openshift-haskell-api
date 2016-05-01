{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.Volume where

import GHC.Generics
import Data.Text
import Kubernetes.V1.AWSElasticBlockStoreVolumeSource
import Kubernetes.V1.CephFSVolumeSource
import Kubernetes.V1.CinderVolumeSource
import Kubernetes.V1.DownwardAPIVolumeSource
import Kubernetes.V1.EmptyDirVolumeSource
import Kubernetes.V1.FCVolumeSource
import Kubernetes.V1.FlockerVolumeSource
import Kubernetes.V1.GCEPersistentDiskVolumeSource
import Kubernetes.V1.GitRepoVolumeSource
import Kubernetes.V1.GlusterfsVolumeSource
import Kubernetes.V1.HostPathVolumeSource
import Kubernetes.V1.ISCSIVolumeSource
import Kubernetes.V1.MetadataVolumeSource
import Kubernetes.V1.NFSVolumeSource
import Kubernetes.V1.PersistentVolumeClaimVolumeSource
import Kubernetes.V1.RBDVolumeSource
import Kubernetes.V1.SecretVolumeSource
import qualified Data.Aeson

-- | Volume represents a named volume in a pod that may be accessed by any container in the pod.
data Volume = Volume
    { name :: Text -- ^ Volume's name. Must be a DNS_LABEL and unique within the pod. More info: http://releases.k8s.io/HEAD/docs/user-guide/identifiers.md#names 
    , hostPath :: Maybe HostPathVolumeSource -- ^ HostPath represents a pre-existing file or directory on the host machine that is directly exposed to the container. This is generally used for system agents or other privileged things that are allowed to see the host machine. Most containers will NOT need this. More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#hostpath 
    , emptyDir :: Maybe EmptyDirVolumeSource -- ^ EmptyDir represents a temporary directory that shares a pod's lifetime. More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#emptydir 
    , gcePersistentDisk :: Maybe GCEPersistentDiskVolumeSource -- ^ GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#gcepersistentdisk 
    , awsElasticBlockStore :: Maybe AWSElasticBlockStoreVolumeSource -- ^ AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#awselasticblockstore 
    , gitRepo :: Maybe GitRepoVolumeSource -- ^ GitRepo represents a git repository at a particular revision. 
    , secret :: Maybe SecretVolumeSource -- ^ Secret represents a secret that should populate this volume. More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#secrets 
    , nfs :: Maybe NFSVolumeSource -- ^ NFS represents an NFS mount on the host that shares a pod's lifetime More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#nfs 
    , iscsi :: Maybe ISCSIVolumeSource -- ^ ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: http://releases.k8s.io/HEAD/examples/iscsi/README.md 
    , glusterfs :: Maybe GlusterfsVolumeSource -- ^ Glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. More info: http://releases.k8s.io/HEAD/examples/glusterfs/README.md 
    , persistentVolumeClaim :: Maybe PersistentVolumeClaimVolumeSource -- ^ PersistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. More info: http://releases.k8s.io/HEAD/docs/user-guide/persistent-volumes.md#persistentvolumeclaims 
    , rbd :: Maybe RBDVolumeSource -- ^ RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: http://releases.k8s.io/HEAD/examples/rbd/README.md 
    , cinder :: Maybe CinderVolumeSource -- ^ Cinder represents a cinder volume attached and mounted on kubelets host machine More info: http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md 
    , cephfs :: Maybe CephFSVolumeSource -- ^ CephFS represents a Ceph FS mount on the host that shares a pod's lifetime 
    , flocker :: Maybe FlockerVolumeSource -- ^ Flocker represents a Flocker volume attached to a kubelet's host machine. This depends on the Flocker control service being running 
    , downwardAPI :: Maybe DownwardAPIVolumeSource -- ^ DownwardAPI represents downward API about the pod that should populate this volume 
    , fc :: Maybe FCVolumeSource -- ^ FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod. 
    , metadata :: Maybe MetadataVolumeSource -- ^  
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON Volume
instance Data.Aeson.ToJSON Volume
