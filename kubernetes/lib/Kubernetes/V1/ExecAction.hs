{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.ExecAction where

import qualified Data.Aeson
import GHC.Generics
import Data.Text


-- | ExecAction describes a \"run in container\" action.
data ExecAction = ExecAction
    { command :: Maybe [Text] -- ^ Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ExecAction
instance Data.Aeson.ToJSON ExecAction
