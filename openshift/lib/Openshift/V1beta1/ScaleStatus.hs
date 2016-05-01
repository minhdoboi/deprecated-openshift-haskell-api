{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1beta1.ScaleStatus where

import GHC.Generics
import Openshift.Any
import qualified Data.Aeson

-- | represents the current status of a scale subresource.
data ScaleStatus = ScaleStatus
    { replicas :: Integer -- ^ actual number of observed instances of the scaled object. 
    , selector :: Maybe Any -- ^ label query over pods that should match the replicas count. More info: http://releases.k8s.io/HEAD/docs/user-guide/labels.md#label-selectors 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ScaleStatus
instance Data.Aeson.ToJSON ScaleStatus
