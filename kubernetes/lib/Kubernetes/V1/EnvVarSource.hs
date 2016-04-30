{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.EnvVarSource where

import qualified Data.Aeson
import GHC.Generics
import Kubernetes.V1.ObjectFieldSelector

-- | EnvVarSource represents a source for the value of an EnvVar.
data EnvVarSource = EnvVarSource
    { fieldRef :: ObjectFieldSelector -- ^ Selects a field of the pod. Only name and namespace are supported. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON EnvVarSource
instance Data.Aeson.ToJSON EnvVarSource
