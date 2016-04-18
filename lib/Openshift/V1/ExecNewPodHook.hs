{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.ExecNewPodHook where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.EnvVar


-- | 
data ExecNewPodHook = ExecNewPodHook
    { command :: [String] -- ^ the hook command and its arguments 
    , env :: Maybe [EnvVar] -- ^ environment variables provided to the hook container 
    , containerName :: String -- ^ the name of a container from the pod template whose image will be used for the hook container 
    , volumes :: Maybe [String] -- ^ the names of volumes from the pod template which should be included in the hook pod; an empty list means no volumes will be copied, and names not found in the pod spec will be ignored 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ExecNewPodHook
instance Data.Aeson.ToJSON ExecNewPodHook
