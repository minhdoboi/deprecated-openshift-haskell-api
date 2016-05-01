{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

module Openshift.V1.SourceRevision where

import GHC.Generics
import Data.Text
import Openshift.V1.GitSourceRevision
import Data.Aeson.TH (deriveJSON, defaultOptions, fieldLabelModifier)

-- | 
data SourceRevision = SourceRevision
    { type_ :: Text -- ^ type of the build source 
    , git :: Maybe GitSourceRevision -- ^ information about git-based build source 
    } deriving (Show, Eq, Generic)

$(deriveJSON defaultOptions{fieldLabelModifier = (\n -> if Prelude.last n == '_' then Prelude.take ((Prelude.length n) - 1 ) n else n)} ''SourceRevision)
