{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.Unversioned.StatusDetails where

import GHC.Generics
import Data.Text
import Openshift.Unversioned.StatusCause
import qualified Data.Aeson

-- | StatusDetails is a set of additional properties that MAY be set by the server to provide additional information about a response. The Reason field of a Status object defines what attributes will be set. Clients must ignore fields that do not match the defined type of each attribute, and should assume that any attribute may be empty, invalid, or under defined.
data StatusDetails = StatusDetails
    { name :: Maybe Text -- ^ The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described). 
    , kind :: Maybe Text -- ^ The kind attribute of the resource associated with the status StatusReason. On some operations may differ from the requested resource Kind. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , causes :: Maybe [StatusCause] -- ^ The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes. 
    , retryAfterSeconds :: Maybe Integer -- ^ If specified, the time in seconds before the operation should be retried. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON StatusDetails
instance Data.Aeson.ToJSON StatusDetails
