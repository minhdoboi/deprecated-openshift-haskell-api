{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.LocalResourceAccessReview where

import qualified Data.Aeson
import GHC.Generics
import Data.Text

-- | TypeMeta describes an individual object in an API response or request with strings representing the type of the object and its API schema version. Structures that are versioned or persisted should inline TypeMeta.
data LocalResourceAccessReview = LocalResourceAccessReview
    { kind :: Maybe Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , namespace :: Text -- ^ namespace of the action being requested 
    , verb :: Text -- ^ one of get, list, watch, create, update, delete 
    , resource :: Text -- ^ one of the existing resource types 
    , resourceName :: Text -- ^ name of the resource being requested for a get or delete 
    , content :: Maybe Text -- ^ actual content of the request for create and update 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON LocalResourceAccessReview
instance Data.Aeson.ToJSON LocalResourceAccessReview
