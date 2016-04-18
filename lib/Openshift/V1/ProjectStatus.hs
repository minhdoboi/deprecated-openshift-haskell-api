{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.ProjectStatus where

import qualified Data.Aeson
import GHC.Generics


-- | 
data ProjectStatus = ProjectStatus
    { phase :: Maybe String -- ^ phase is the current lifecycle phase of the project 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ProjectStatus
instance Data.Aeson.ToJSON ProjectStatus
