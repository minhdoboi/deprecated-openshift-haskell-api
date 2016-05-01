{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.Unversioned.Status where

import GHC.Generics
import Data.Text
import Openshift.Unversioned.ListMeta
import Openshift.Unversioned.StatusDetails
import qualified Data.Aeson

-- | Status is a return value for calls that don't return other objects.
data Status = Status
    { kind :: Maybe Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ListMeta -- ^ Standard list metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , status :: Maybe Text -- ^ Status of the operation. One of: \"Success\" or \"Failure\". More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status 
    , message :: Maybe Text -- ^ A human-readable description of the status of this operation. 
    , reason :: Maybe Text -- ^ A machine-readable description of why this operation is in the \"Failure\" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it. 
    , details :: Maybe StatusDetails -- ^ Extended data associated with the reason.  Each reason may define its own extended details. This field is optional and the data returned is not guaranteed to conform to any schema except that defined by the reason type. 
    , code :: Maybe Integer -- ^ Suggested HTTP return code for this status, 0 if not set. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON Status
instance Data.Aeson.ToJSON Status
