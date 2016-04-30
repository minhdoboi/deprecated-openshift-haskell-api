{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

module Kubernetes.V1.SELinuxContextStrategyOptions where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Kubernetes.V1.SELinuxOptions
import Data.Aeson.TH (deriveJSON, defaultOptions, fieldLabelModifier)

-- | 
data SELinuxContextStrategyOptions = SELinuxContextStrategyOptions
    { type_ :: Maybe Text -- ^ strategy used to generate the SELinux context 
    , seLinuxOptions :: Maybe SELinuxOptions -- ^ seLinuxOptions required to run as; required for MustRunAs 
    } deriving (Show, Eq, Generic)

$(deriveJSON defaultOptions{fieldLabelModifier = (\n -> if Prelude.last n == '_' then Prelude.take ((Prelude.length n) - 1 ) n else n)} ''SELinuxContextStrategyOptions)
