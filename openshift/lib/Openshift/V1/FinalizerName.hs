{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.FinalizerName where

import GHC.Generics
import qualified Data.Aeson

-- | 
data FinalizerName = FinalizerName
    { 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON FinalizerName
instance Data.Aeson.ToJSON FinalizerName
