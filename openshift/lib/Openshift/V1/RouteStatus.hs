{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.RouteStatus where

import GHC.Generics
import qualified Data.Aeson

-- | 
data RouteStatus = RouteStatus
    { 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON RouteStatus
instance Data.Aeson.ToJSON RouteStatus
