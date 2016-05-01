{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

module Kubernetes.V1.Event where

import GHC.Generics
import Data.Text
import Kubernetes.V1.EventSource
import Kubernetes.V1.ObjectMeta
import Kubernetes.V1.ObjectReference
import Data.Aeson.TH (deriveJSON, defaultOptions, fieldLabelModifier)

-- | Event is a report of an event somewhere in the cluster.
data Event = Event
    { kind :: Maybe Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: ObjectMeta -- ^ Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata 
    , involvedObject :: ObjectReference -- ^ The object that this event is about. 
    , reason :: Maybe Text -- ^ This should be a short, machine understandable string that gives the reason for the transition into the object's current status. 
    , message :: Maybe Text -- ^ A human-readable description of the status of this operation. 
    , source :: Maybe EventSource -- ^ The component reporting this event. Should be a short machine understandable string. 
    , firstTimestamp :: Maybe Text -- ^ The time at which the event was first recorded. (Time of server receipt is in TypeMeta.) 
    , lastTimestamp :: Maybe Text -- ^ The time at which the most recent occurrence of this event was recorded. 
    , count :: Maybe Integer -- ^ The number of times this event has occurred. 
    , type_ :: Maybe Text -- ^ Type of this event (Normal, Warning), new types could be added in the future 
    } deriving (Show, Eq, Generic)

$(deriveJSON defaultOptions{fieldLabelModifier = (\n -> if Prelude.last n == '_' then Prelude.take ((Prelude.length n) - 1 ) n else n)} ''Event)
