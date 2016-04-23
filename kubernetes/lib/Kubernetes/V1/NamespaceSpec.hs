{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.NamespaceSpec where

import qualified Data.Aeson
import GHC.Generics


-- | NamespaceSpec describes the attributes on a Namespace.
data NamespaceSpec = NamespaceSpec
    { finalizers :: Maybe [String] -- ^ Finalizers is an opaque list of values that must be empty to permanently remove object from storage. More info: http://releases.k8s.io/HEAD/docs/design/namespaces.md#finalizers 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON NamespaceSpec
instance Data.Aeson.ToJSON NamespaceSpec
