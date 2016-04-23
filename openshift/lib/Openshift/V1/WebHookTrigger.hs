{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.WebHookTrigger where

import qualified Data.Aeson
import GHC.Generics
import Data.Text


-- | 
data WebHookTrigger = WebHookTrigger
    { secret :: Maybe Text -- ^ secret used to validate requests 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON WebHookTrigger
instance Data.Aeson.ToJSON WebHookTrigger
