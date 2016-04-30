{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.NamespaceStatus where

import qualified Data.Aeson
import GHC.Generics
import Data.Text

-- | NamespaceStatus is information about the current status of a Namespace.
data NamespaceStatus = NamespaceStatus
    { phase :: Maybe Text -- ^ Phase is the current lifecycle phase of the namespace. More info: http://releases.k8s.io/HEAD/docs/design/namespaces.md#phases 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON NamespaceStatus
instance Data.Aeson.ToJSON NamespaceStatus
