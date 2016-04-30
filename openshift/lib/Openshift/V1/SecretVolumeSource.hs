{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.SecretVolumeSource where

import qualified Data.Aeson
import GHC.Generics
import Data.Text

-- | SecretVolumeSource adapts a Secret into a VolumeSource. More info: http://releases.k8s.io/HEAD/docs/design/secrets.md
data SecretVolumeSource = SecretVolumeSource
    { secretName :: Text -- ^ SecretName is the name of a secret in the pod's namespace. More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#secrets 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON SecretVolumeSource
instance Data.Aeson.ToJSON SecretVolumeSource
