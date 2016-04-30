{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.BuildConfigStatus where

import qualified Data.Aeson
import GHC.Generics

-- | 
data BuildConfigStatus = BuildConfigStatus
    { lastVersion :: Integer -- ^ used to inform about number of last triggered build 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON BuildConfigStatus
instance Data.Aeson.ToJSON BuildConfigStatus
