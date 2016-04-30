{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.RouteStatus where

import qualified Data.Aeson
import GHC.Generics

-- | 
data RouteStatus = RouteStatus
    { 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON RouteStatus
instance Data.Aeson.ToJSON RouteStatus
