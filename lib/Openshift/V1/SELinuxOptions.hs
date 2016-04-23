{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.SELinuxOptions where

import qualified Data.Aeson
import GHC.Generics
import Data.Text


-- | SELinuxOptions are the labels to be applied to the container
data SELinuxOptions = SELinuxOptions
    { user :: Maybe Text -- ^ User is a SELinux user label that applies to the container. 
    , role :: Maybe Text -- ^ Role is a SELinux role label that applies to the container. 
    , type_ :: Maybe Text -- ^ Type is a SELinux type label that applies to the container. 
    , level :: Maybe Text -- ^ Level is SELinux level label that applies to the container. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON SELinuxOptions
instance Data.Aeson.ToJSON SELinuxOptions
