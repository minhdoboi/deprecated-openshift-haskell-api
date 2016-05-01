{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

module Openshift.V1.SELinuxOptions where

import GHC.Generics
import Data.Text
import Data.Aeson.TH (deriveJSON, defaultOptions, fieldLabelModifier)

-- | SELinuxOptions are the labels to be applied to the container
data SELinuxOptions = SELinuxOptions
    { user :: Maybe Text -- ^ User is a SELinux user label that applies to the container. 
    , role :: Maybe Text -- ^ Role is a SELinux role label that applies to the container. 
    , type_ :: Maybe Text -- ^ Type is a SELinux type label that applies to the container. 
    , level :: Maybe Text -- ^ Level is SELinux level label that applies to the container. 
    } deriving (Show, Eq, Generic)

$(deriveJSON defaultOptions{fieldLabelModifier = (\n -> if Prelude.last n == '_' then Prelude.take ((Prelude.length n) - 1 ) n else n)} ''SELinuxOptions)
