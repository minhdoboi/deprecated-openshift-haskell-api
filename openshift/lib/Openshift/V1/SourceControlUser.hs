{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.SourceControlUser where

import qualified Data.Aeson
import GHC.Generics
import Data.Text

-- | 
data SourceControlUser = SourceControlUser
    { name :: Maybe Text -- ^ name of the source control user 
    , email :: Maybe Text -- ^ e-mail of the source control user 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON SourceControlUser
instance Data.Aeson.ToJSON SourceControlUser
