{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.NamedClusterRole where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Openshift.V1.ClusterRole

-- | 
data NamedClusterRole = NamedClusterRole
    { name :: Text -- ^ name of the cluster role 
    , role :: ClusterRole -- ^ the cluster role 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON NamedClusterRole
instance Data.Aeson.ToJSON NamedClusterRole
