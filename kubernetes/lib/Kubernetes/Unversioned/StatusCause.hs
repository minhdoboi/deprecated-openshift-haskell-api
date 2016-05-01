{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.Unversioned.StatusCause where

import GHC.Generics
import Data.Text
import qualified Data.Aeson

-- | StatusCause provides more information about an api.Status failure, including cases when multiple errors are encountered.
data StatusCause = StatusCause
    { reason :: Maybe Text -- ^ A machine-readable description of the cause of the error. If this value is empty there is no information available. 
    , message :: Maybe Text -- ^ A human-readable description of the cause of the error.  This field may be presented as-is to a reader. 
    , field :: Maybe Text -- ^ The field of the resource that has caused this error, as named by its JSON serialization. May include dot and postfix notation for nested attributes. Arrays are zero-indexed.  Fields may appear more than once in an array of causes due to fields having multiple errors. Optional.\n\nExamples:\n  \"name\" - the field \"name\" on the current resource\n  \"items[0].name\" - the field \"name\" on the first array entry in \"items\" 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON StatusCause
instance Data.Aeson.ToJSON StatusCause
