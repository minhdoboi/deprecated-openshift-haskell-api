{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.DeploymentConfigRollbackSpec where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.ObjectReference


-- | 
data DeploymentConfigRollbackSpec = DeploymentConfigRollbackSpec
    { from :: ObjectReference -- ^ a reference to a deployment, which is a ReplicationController 
    , includeTriggers :: Bool -- ^ whether to include old config triggers in the rollback 
    , includeTemplate :: Bool -- ^ whether to include the old pod template spec in the rollback 
    , includeReplicationMeta :: Bool -- ^ whether to include the replica count and replica selector in the rollback 
    , includeStrategy :: Bool -- ^ whether to include the deployment strategy in the rollback 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON DeploymentConfigRollbackSpec
instance Data.Aeson.ToJSON DeploymentConfigRollbackSpec
