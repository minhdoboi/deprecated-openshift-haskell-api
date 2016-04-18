{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.ImageSourcePath where

import qualified Data.Aeson
import GHC.Generics


-- | 
data ImageSourcePath = ImageSourcePath
    { sourcePath :: String -- ^ source path (directory or file) inside image 
    , destinationDir :: String -- ^ relative destination directory in build home 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ImageSourcePath
instance Data.Aeson.ToJSON ImageSourcePath
