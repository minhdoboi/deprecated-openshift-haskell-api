{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.ServiceAccountList where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Kubernetes.Unversioned.ListMeta
import Kubernetes.V1.ServiceAccount


-- | ServiceAccountList is a list of ServiceAccount objects
data ServiceAccountList = ServiceAccountList
    { kind :: Maybe Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ListMeta -- ^ Standard list metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , items :: [ServiceAccount] -- ^ List of ServiceAccounts. More info: http://releases.k8s.io/HEAD/docs/design/service_accounts.md#service-accounts 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ServiceAccountList
instance Data.Aeson.ToJSON ServiceAccountList
