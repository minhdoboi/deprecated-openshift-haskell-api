{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.ObjectReference where

import qualified Data.Aeson
import GHC.Generics


-- | ObjectReference contains enough information to let you inspect or modify the referred object.
data ObjectReference = ObjectReference
    { kind :: Maybe String -- ^ Kind of the referent. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , namespace :: Maybe String -- ^ Namespace of the referent. More info: http://releases.k8s.io/HEAD/docs/user-guide/namespaces.md 
    , name :: Maybe String -- ^ Name of the referent. More info: http://releases.k8s.io/HEAD/docs/user-guide/identifiers.md#names 
    , uid :: Maybe String -- ^ UID of the referent. More info: http://releases.k8s.io/HEAD/docs/user-guide/identifiers.md#uids 
    , apiVersion :: Maybe String -- ^ API version of the referent. 
    , resourceVersion :: Maybe String -- ^ Specific resourceVersion to which this reference is made, if any. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#concurrency-control-and-consistency 
    , fieldPath :: Maybe String -- ^ If referring to a piece of an object instead of an entire object, this string should contain a valid JSON/Go field access statement, such as desiredState.manifest.containers[2]. For example, if the object reference is to a container within a pod, this would take on a value like: \"spec.containers{name}\" (where \"name\" refers to the name of the container that triggered the event) or if no container name is specified \"spec.containers[2]\" (container with index 2 in this pod). This syntax is chosen only to have some well-defined way of referencing a part of an object. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ObjectReference
instance Data.Aeson.ToJSON ObjectReference
