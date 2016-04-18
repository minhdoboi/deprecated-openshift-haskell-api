{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.TagImportPolicy where

import qualified Data.Aeson
import GHC.Generics


-- | 
data TagImportPolicy = TagImportPolicy
    { insecure :: Maybe Bool -- ^ if true, the server may bypass certificate verification or connect directly over HTTP during image import 
    , scheduled :: Maybe Bool -- ^ if true, the server will periodically check to ensure this tag is up to date 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON TagImportPolicy
instance Data.Aeson.ToJSON TagImportPolicy
