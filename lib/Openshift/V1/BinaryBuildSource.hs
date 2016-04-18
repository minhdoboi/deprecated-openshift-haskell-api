{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.BinaryBuildSource where

import qualified Data.Aeson
import GHC.Generics


-- | 
data BinaryBuildSource = BinaryBuildSource
    { asFile :: Maybe String -- ^ indicate the provided binary should be considered a single file placed within the root of the input; must be a valid filename with no path segments 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON BinaryBuildSource
instance Data.Aeson.ToJSON BinaryBuildSource
