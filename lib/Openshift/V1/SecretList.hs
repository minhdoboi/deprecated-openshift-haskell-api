{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.SecretList where

import qualified Data.Aeson
import GHC.Generics
import Openshift.Unversioned.ListMeta
import Openshift.V1.Secret


-- | SecretList is a list of Secret.
data SecretList = SecretList
    { kind :: Maybe String -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe String -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ListMeta -- ^ Standard list metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , items :: [Secret] -- ^ Items is a list of secret objects. More info: http://releases.k8s.io/HEAD/docs/user-guide/secrets.md 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON SecretList
instance Data.Aeson.ToJSON SecretList
