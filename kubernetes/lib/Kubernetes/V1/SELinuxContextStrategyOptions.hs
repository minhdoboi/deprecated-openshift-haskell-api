{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.SELinuxContextStrategyOptions where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Kubernetes.V1.SELinuxOptions


-- | 
data SELinuxContextStrategyOptions = SELinuxContextStrategyOptions
    { type_ :: Maybe Text -- ^ strategy used to generate the SELinux context 
    , seLinuxOptions :: Maybe SELinuxOptions -- ^ seLinuxOptions required to run as; required for MustRunAs 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON SELinuxContextStrategyOptions
instance Data.Aeson.ToJSON SELinuxContextStrategyOptions
