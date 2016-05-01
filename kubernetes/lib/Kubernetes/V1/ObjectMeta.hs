{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.ObjectMeta where

import GHC.Generics
import Data.Text
import Kubernetes.Any
import qualified Data.Aeson

-- | ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
data ObjectMeta = ObjectMeta
    { name :: Maybe Text -- ^ Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: http://releases.k8s.io/HEAD/docs/user-guide/identifiers.md#names 
    , generateName :: Maybe Text -- ^ GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.\n\nIf this field is specified and the generated name exists, the server will NOT return a 409 - instead, it will either return 201 Created or 500 with Reason ServerTimeout indicating a unique name could not be found in the time allotted, and the client should retry (optionally after the time indicated in the Retry-After header).\n\nApplied only if Name is not specified. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#idempotency 
    , namespace :: Maybe Text -- ^ Namespace defines the space within each name must be unique. An empty namespace is equivalent to the \"default\" namespace, but \"default\" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.\n\nMust be a DNS_LABEL. Cannot be updated. More info: http://releases.k8s.io/HEAD/docs/user-guide/namespaces.md 
    , selfLink :: Maybe Text -- ^ SelfLink is a URL representing this object. Populated by the system. Read-only. 
    , uid :: Maybe Text -- ^ UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.\n\nPopulated by the system. Read-only. More info: http://releases.k8s.io/HEAD/docs/user-guide/identifiers.md#uids 
    , resourceVersion :: Maybe Text -- ^ An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.\n\nPopulated by the system. Read-only. Value must be treated as opaque by clients and . More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#concurrency-control-and-consistency 
    , generation :: Maybe Integer -- ^ A sequence number representing a specific generation of the desired state. Currently only implemented by replication controllers. Populated by the system. Read-only. 
    , creationTimestamp :: Maybe Text -- ^ CreationTimestamp is a timestamp representing the server time when this object was created. It is not guaranteed to be set in happens-before order across separate operations. Clients may not set this value. It is represented in RFC3339 form and is in UTC.\n\nPopulated by the system. Read-only. Null for lists. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata 
    , deletionTimestamp :: Maybe Text -- ^ DeletionTimestamp is RFC 3339 date and time at which this resource will be deleted. This field is set by the server when a graceful deletion is requested by the user, and is not directly settable by a client. The resource will be deleted (no longer visible from resource lists, and not reachable by name) after the time in this field. Once set, this value may not be unset or be set further into the future, although it may be shortened or the resource may be deleted prior to this time. For example, a user may request that a pod is deleted in 30 seconds. The Kubelet will react by sending a graceful termination signal to the containers in the pod. Once the resource is deleted in the API, the Kubelet will send a hard termination signal to the container. If not set, graceful deletion of the object has not been requested.\n\nPopulated by the system when a graceful deletion is requested. Read-only. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata 
    , deletionGracePeriodSeconds :: Maybe Integer -- ^ Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only. 
    , labels :: Maybe Any -- ^ Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://releases.k8s.io/HEAD/docs/user-guide/labels.md 
    , annotations :: Maybe Any -- ^ Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://releases.k8s.io/HEAD/docs/user-guide/annotations.md 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ObjectMeta
instance Data.Aeson.ToJSON ObjectMeta
