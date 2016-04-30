{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

module Openshift.V1.BuildSource where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Openshift.V1.BinaryBuildSource
import Openshift.V1.GitBuildSource
import Openshift.V1.ImageSource
import Openshift.V1.LocalObjectReference
import Openshift.V1.SecretBuildSource
import Data.Aeson.TH (deriveJSON, defaultOptions, fieldLabelModifier)

-- | 
data BuildSource = BuildSource
    { type_ :: Text -- ^ type of build input to accept 
    , binary :: Maybe BinaryBuildSource -- ^ the binary will be provided by the builder as an archive or file to be placed within the input directory; allows Dockerfile to be optionally set; may not be set with git source type also set 
    , dockerfile :: Maybe Text -- ^ the contents of a Dockerfile to build; FROM may be overridden by your strategy source, and additional ENV from your strategy will be placed before the rest of the Dockerfile stanzas 
    , git :: Maybe GitBuildSource -- ^ optional information about git build source 
    , images :: Maybe [ImageSource] -- ^ optional images for build source. 
    , contextDir :: Maybe Text -- ^ specifies sub-directory where the source code for the application exists, allows for sources to be built from a directory other than the root of a repository 
    , sourceSecret :: Maybe LocalObjectReference -- ^ supported auth methods are: ssh-privatekey 
    , secrets :: [SecretBuildSource] -- ^ list of build secrets and destination directories 
    } deriving (Show, Eq, Generic)

$(deriveJSON defaultOptions{fieldLabelModifier = (\n -> if Prelude.last n == '_' then Prelude.take ((Prelude.length n) - 1 ) n else n)} ''BuildSource)
