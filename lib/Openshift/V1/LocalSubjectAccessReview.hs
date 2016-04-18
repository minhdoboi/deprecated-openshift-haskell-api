{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.LocalSubjectAccessReview where

import qualified Data.Aeson
import GHC.Generics


-- | TypeMeta describes an individual object in an API response or request with strings representing the type of the object and its API schema version. Structures that are versioned or persisted should inline TypeMeta.
data LocalSubjectAccessReview = LocalSubjectAccessReview
    { kind :: Maybe String -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe String -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , namespace :: String -- ^ namespace of the action being requested 
    , verb :: String -- ^ one of get, list, watch, create, update, delete 
    , resource :: String -- ^ one of the existing resource types 
    , resourceName :: String -- ^ name of the resource being requested for a get or delete 
    , content :: Maybe String -- ^ actual content of the request for create and update 
    , user :: String -- ^ optional, if both user and groups are empty, the current authenticated user is used 
    , groups :: [String] -- ^ optional, list of groups to which the user belongs 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON LocalSubjectAccessReview
instance Data.Aeson.ToJSON LocalSubjectAccessReview
