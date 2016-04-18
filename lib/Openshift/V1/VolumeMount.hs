{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.VolumeMount where

import qualified Data.Aeson
import GHC.Generics


-- | VolumeMount describes a mounting of a Volume within a container.
data VolumeMount = VolumeMount
    { name :: String -- ^ This must match the Name of a Volume. 
    , readOnly :: Maybe Bool -- ^ Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false. 
    , mountPath :: String -- ^ Path within the container at which the volume should be mounted. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON VolumeMount
instance Data.Aeson.ToJSON VolumeMount
