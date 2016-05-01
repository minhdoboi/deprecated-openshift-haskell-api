{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.WebHookTrigger where

import GHC.Generics
import Data.Text
import qualified Data.Aeson

-- | 
data WebHookTrigger = WebHookTrigger
    { secret :: Maybe Text -- ^ secret used to validate requests 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON WebHookTrigger
instance Data.Aeson.ToJSON WebHookTrigger
