{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.Unversioned.ListMeta where

import qualified Data.Aeson
import GHC.Generics
import Data.Text


-- | ListMeta describes metadata that synthetic resources must have, including lists and various status objects. A resource may have only one of {ObjectMeta, ListMeta}.
data ListMeta = ListMeta
    { selfLink :: Maybe Text -- ^ SelfLink is a URL representing this object. Populated by the system. Read-only. 
    , resourceVersion :: Maybe Text -- ^ String that identifies the server's internal version of this object that can be used by clients to determine when objects have changed. Value must be treated as opaque by clients and passed unmodified back to the server. Populated by the system. Read-only. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#concurrency-control-and-consistency 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ListMeta
instance Data.Aeson.ToJSON ListMeta
