{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.ImageSourcePath where

import GHC.Generics
import Data.Text
import qualified Data.Aeson

-- | 
data ImageSourcePath = ImageSourcePath
    { sourcePath :: Text -- ^ source path (directory or file) inside image 
    , destinationDir :: Text -- ^ relative destination directory in build home 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ImageSourcePath
instance Data.Aeson.ToJSON ImageSourcePath
