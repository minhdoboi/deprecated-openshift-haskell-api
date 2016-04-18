{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.NamedClusterRoleBinding where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.ClusterRoleBinding


-- | 
data NamedClusterRoleBinding = NamedClusterRoleBinding
    { name :: String -- ^ name of the cluster role binding 
    , roleBinding :: ClusterRoleBinding -- ^ the cluster role binding 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON NamedClusterRoleBinding
instance Data.Aeson.ToJSON NamedClusterRoleBinding
