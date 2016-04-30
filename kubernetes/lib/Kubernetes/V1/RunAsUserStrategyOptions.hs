{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

module Kubernetes.V1.RunAsUserStrategyOptions where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Data.Aeson.TH (deriveJSON, defaultOptions, fieldLabelModifier)

-- | 
data RunAsUserStrategyOptions = RunAsUserStrategyOptions
    { type_ :: Maybe Text -- ^ strategy used to generate RunAsUser 
    , uid :: Maybe Integer -- ^ the uid to always run as; required for MustRunAs 
    , uidRangeMin :: Maybe Integer -- ^ min value for range based allocators 
    , uidRangeMax :: Maybe Integer -- ^ max value for range based allocators 
    } deriving (Show, Eq, Generic)

$(deriveJSON defaultOptions{fieldLabelModifier = (\n -> if Prelude.last n == '_' then Prelude.take ((Prelude.length n) - 1 ) n else n)} ''RunAsUserStrategyOptions)
