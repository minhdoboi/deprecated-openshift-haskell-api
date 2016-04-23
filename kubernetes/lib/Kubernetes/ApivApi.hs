{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports -fcontext-stack=516 #-}

module Kubernetes.ApivApi (
      connectDeleteNamespacedPodProxy
    , connectDeleteNamespacedPodProxy_0
    , connectGetNamespacedPodAttach
    , connectGetNamespacedPodExec
    , connectGetNamespacedPodPortforward
    , connectGetNamespacedPodProxy
    , connectGetNamespacedPodProxy_0
    , connectHeadNamespacedPodProxy
    , connectHeadNamespacedPodProxy_0
    , connectOptionsNamespacedPodProxy
    , connectOptionsNamespacedPodProxy_0
    , connectPostNamespacedPodAttach
    , connectPostNamespacedPodExec
    , connectPostNamespacedPodPortforward
    , connectPostNamespacedPodProxy
    , connectPostNamespacedPodProxy_0
    , connectPutNamespacedPodProxy
    , connectPutNamespacedPodProxy_0
    , createBinding
    , createEndpoints
    , createEvent
    , createLimitRange
    , createNamespacedBinding
    , createNamespacedBindingBinding
    , createNamespacedEndpoints
    , createNamespacedEvent
    , createNamespacedLimitRange
    , createNamespacedNamespace
    , createNamespacedNode
    , createNamespacedPersistentVolume
    , createNamespacedPersistentVolumeClaim
    , createNamespacedPod
    , createNamespacedPodTemplate
    , createNamespacedReplicationController
    , createNamespacedResourceQuota
    , createNamespacedSecret
    , createNamespacedSecurityContextConstraints
    , createNamespacedService
    , createNamespacedServiceAccount
    , createPersistentVolumeClaim
    , createPod
    , createPodTemplate
    , createReplicationController
    , createResourceQuota
    , createSecret
    , createService
    , createServiceAccount
    , deleteNamespacedEndpoints
    , deleteNamespacedEvent
    , deleteNamespacedLimitRange
    , deleteNamespacedNamespace
    , deleteNamespacedNode
    , deleteNamespacedPersistentVolume
    , deleteNamespacedPersistentVolumeClaim
    , deleteNamespacedPod
    , deleteNamespacedPodTemplate
    , deleteNamespacedReplicationController
    , deleteNamespacedResourceQuota
    , deleteNamespacedSecret
    , deleteNamespacedSecurityContextConstraints
    , deleteNamespacedService
    , deleteNamespacedServiceAccount
    , deletecollectionNamespacedEndpoints
    , deletecollectionNamespacedEvent
    , deletecollectionNamespacedLimitRange
    , deletecollectionNamespacedNamespace
    , deletecollectionNamespacedNode
    , deletecollectionNamespacedPersistentVolume
    , deletecollectionNamespacedPersistentVolumeClaim
    , deletecollectionNamespacedPod
    , deletecollectionNamespacedPodTemplate
    , deletecollectionNamespacedReplicationController
    , deletecollectionNamespacedResourceQuota
    , deletecollectionNamespacedSecret
    , deletecollectionNamespacedSecurityContextConstraints
    , deletecollectionNamespacedServiceAccount
    , getAPIResources
    , listEndpoints
    , listEvent
    , listLimitRange
    , listNamespacedComponentStatus
    , listNamespacedEndpoints
    , listNamespacedEvent
    , listNamespacedLimitRange
    , listNamespacedNamespace
    , listNamespacedNode
    , listNamespacedPersistentVolume
    , listNamespacedPersistentVolumeClaim
    , listNamespacedPod
    , listNamespacedPodTemplate
    , listNamespacedReplicationController
    , listNamespacedResourceQuota
    , listNamespacedSecret
    , listNamespacedSecurityContextConstraints
    , listNamespacedService
    , listNamespacedServiceAccount
    , listPersistentVolumeClaim
    , listPod
    , listPodTemplate
    , listReplicationController
    , listResourceQuota
    , listSecret
    , listService
    , listServiceAccount
    , patchNamespacedEndpoints
    , patchNamespacedEvent
    , patchNamespacedLimitRange
    , patchNamespacedNamespace
    , patchNamespacedNode
    , patchNamespacedPersistentVolume
    , patchNamespacedPersistentVolumeClaim
    , patchNamespacedPod
    , patchNamespacedPodTemplate
    , patchNamespacedReplicationController
    , patchNamespacedResourceQuota
    , patchNamespacedSecret
    , patchNamespacedSecurityContextConstraints
    , patchNamespacedService
    , patchNamespacedServiceAccount
    , proxyDELETENamespacedNode
    , proxyDELETENamespacedNode_0
    , proxyDELETENamespacedPod
    , proxyDELETENamespacedPod_0
    , proxyDELETENamespacedService
    , proxyDELETENamespacedService_0
    , proxyGETNamespacedNode
    , proxyGETNamespacedNode_0
    , proxyGETNamespacedPod
    , proxyGETNamespacedPod_0
    , proxyGETNamespacedService
    , proxyGETNamespacedService_0
    , proxyHEADNamespacedNode
    , proxyHEADNamespacedNode_0
    , proxyHEADNamespacedPod
    , proxyHEADNamespacedPod_0
    , proxyHEADNamespacedService
    , proxyHEADNamespacedService_0
    , proxyOPTIONSNamespacedNode
    , proxyOPTIONSNamespacedNode_0
    , proxyOPTIONSNamespacedPod
    , proxyOPTIONSNamespacedPod_0
    , proxyOPTIONSNamespacedService
    , proxyOPTIONSNamespacedService_0
    , proxyPOSTNamespacedNode
    , proxyPOSTNamespacedNode_0
    , proxyPOSTNamespacedPod
    , proxyPOSTNamespacedPod_0
    , proxyPOSTNamespacedService
    , proxyPOSTNamespacedService_0
    , proxyPUTNamespacedNode
    , proxyPUTNamespacedNode_0
    , proxyPUTNamespacedPod
    , proxyPUTNamespacedPod_0
    , proxyPUTNamespacedService
    , proxyPUTNamespacedService_0
    , readNamespacedComponentStatus
    , readNamespacedEndpoints
    , readNamespacedEvent
    , readNamespacedLimitRange
    , readNamespacedNamespace
    , readNamespacedNode
    , readNamespacedPersistentVolume
    , readNamespacedPersistentVolumeClaim
    , readNamespacedPod
    , readNamespacedPodLog
    , readNamespacedPodTemplate
    , readNamespacedReplicationController
    , readNamespacedResourceQuota
    , readNamespacedSecret
    , readNamespacedSecurityContextConstraints
    , readNamespacedService
    , readNamespacedServiceAccount
    , replaceNamespacedEndpoints
    , replaceNamespacedEvent
    , replaceNamespacedLimitRange
    , replaceNamespacedNamespace
    , replaceNamespacedNamespaceFinalize
    , replaceNamespacedNamespaceStatus
    , replaceNamespacedNode
    , replaceNamespacedNodeStatus
    , replaceNamespacedPersistentVolume
    , replaceNamespacedPersistentVolumeClaim
    , replaceNamespacedPersistentVolumeClaimStatus
    , replaceNamespacedPersistentVolumeStatus
    , replaceNamespacedPod
    , replaceNamespacedPodStatus
    , replaceNamespacedPodTemplate
    , replaceNamespacedReplicationController
    , replaceNamespacedReplicationControllerStatus
    , replaceNamespacedResourceQuota
    , replaceNamespacedResourceQuotaStatus
    , replaceNamespacedSecret
    , replaceNamespacedSecurityContextConstraints
    , replaceNamespacedService
    , replaceNamespacedServiceAccount
    , watchEndpointsList
    , watchEventList
    , watchLimitRangeList
    , watchNamespacedEndpoints
    , watchNamespacedEndpointsList
    , watchNamespacedEvent
    , watchNamespacedEventList
    , watchNamespacedLimitRange
    , watchNamespacedLimitRangeList
    , watchNamespacedNamespace
    , watchNamespacedNamespaceList
    , watchNamespacedNode
    , watchNamespacedNodeList
    , watchNamespacedPersistentVolume
    , watchNamespacedPersistentVolumeClaim
    , watchNamespacedPersistentVolumeClaimList
    , watchNamespacedPersistentVolumeList
    , watchNamespacedPod
    , watchNamespacedPodList
    , watchNamespacedPodTemplate
    , watchNamespacedPodTemplateList
    , watchNamespacedReplicationController
    , watchNamespacedReplicationControllerList
    , watchNamespacedResourceQuota
    , watchNamespacedResourceQuotaList
    , watchNamespacedSecret
    , watchNamespacedSecretList
    , watchNamespacedSecurityContextConstraints
    , watchNamespacedSecurityContextConstraintsList
    , watchNamespacedService
    , watchNamespacedServiceAccount
    , watchNamespacedServiceAccountList
    , watchNamespacedServiceList
    , watchPersistentVolumeClaimList
    , watchPodList
    , watchPodTemplateList
    , watchReplicationControllerList
    , watchResourceQuotaList
    , watchSecretList
    , watchServiceAccountList
    , watchServiceList
    , proxyApivApi
    , ApivApi
    ) where

import GHC.Generics
import Data.Proxy
import qualified Servant.API as Servant
import Network.HTTP.Client (Manager)
import Servant.API ((:<|>)(..),(:>))
import Servant.Common.BaseUrl (BaseUrl(..))
import Servant.Client
import Control.Monad.Except (ExceptT)
import Kubernetes.Utils
import Data.Text
import Kubernetes.V1.Binding
import Kubernetes.V1.Endpoints
import Kubernetes.V1.Event
import Kubernetes.V1.LimitRange
import Kubernetes.V1.Namespace
import Kubernetes.V1.Node
import Kubernetes.V1.PersistentVolume
import Kubernetes.V1.PersistentVolumeClaim
import Kubernetes.V1.Pod
import Kubernetes.V1.PodTemplate
import Kubernetes.V1.ReplicationController
import Kubernetes.V1.ResourceQuota
import Kubernetes.V1.Secret
import Kubernetes.V1.SecurityContextConstraints
import Kubernetes.V1.Service
import Kubernetes.V1.ServiceAccount
import Kubernetes.Unversioned.Status
import Kubernetes.V1.DeleteOptions
import Kubernetes.V1.EndpointsList
import Kubernetes.V1.EventList
import Kubernetes.V1.LimitRangeList
import Kubernetes.V1.ComponentStatusList
import Kubernetes.V1.NamespaceList
import Kubernetes.V1.NodeList
import Kubernetes.V1.PersistentVolumeList
import Kubernetes.V1.PersistentVolumeClaimList
import Kubernetes.V1.PodList
import Kubernetes.V1.PodTemplateList
import Kubernetes.V1.ReplicationControllerList
import Kubernetes.V1.ResourceQuotaList
import Kubernetes.V1.SecretList
import Kubernetes.V1.SecurityContextConstraintsList
import Kubernetes.V1.ServiceList
import Kubernetes.V1.ServiceAccountList
import Kubernetes.Unversioned.Patch
import Kubernetes.V1.ComponentStatus
import Kubernetes.Json.WatchEvent


type ApivApi = "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> "proxy" :> Servant.QueryParam "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Text -- connectDeleteNamespacedPodProxy
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> "proxy" :> Servant.Capture "path" Text :> Servant.QueryParam "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Text -- connectDeleteNamespacedPodProxy_0
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> "attach" :> Servant.QueryParam "stdin" Bool :> Servant.QueryParam "stdout" Bool :> Servant.QueryParam "stderr" Bool :> Servant.QueryParam "tty" Bool :> Servant.QueryParam "container" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Text -- connectGetNamespacedPodAttach
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> "exec" :> Servant.QueryParam "stdin" Bool :> Servant.QueryParam "stdout" Bool :> Servant.QueryParam "stderr" Bool :> Servant.QueryParam "tty" Bool :> Servant.QueryParam "container" Text :> Servant.QueryParam "command" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Text -- connectGetNamespacedPodExec
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> "portforward" :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Text -- connectGetNamespacedPodPortforward
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> "proxy" :> Servant.QueryParam "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Text -- connectGetNamespacedPodProxy
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> "proxy" :> Servant.Capture "path" Text :> Servant.QueryParam "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Text -- connectGetNamespacedPodProxy_0
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> "proxy" :> Servant.QueryParam "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.HEAD 200 '[Servant.JSON] Text -- connectHeadNamespacedPodProxy
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> "proxy" :> Servant.Capture "path" Text :> Servant.QueryParam "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.HEAD 200 '[Servant.JSON] Text -- connectHeadNamespacedPodProxy_0
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> "proxy" :> Servant.QueryParam "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.OPTIONS 200 '[Servant.JSON] Text -- connectOptionsNamespacedPodProxy
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> "proxy" :> Servant.Capture "path" Text :> Servant.QueryParam "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.OPTIONS 200 '[Servant.JSON] Text -- connectOptionsNamespacedPodProxy_0
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> "attach" :> Servant.QueryParam "stdin" Bool :> Servant.QueryParam "stdout" Bool :> Servant.QueryParam "stderr" Bool :> Servant.QueryParam "tty" Bool :> Servant.QueryParam "container" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Text -- connectPostNamespacedPodAttach
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> "exec" :> Servant.QueryParam "stdin" Bool :> Servant.QueryParam "stdout" Bool :> Servant.QueryParam "stderr" Bool :> Servant.QueryParam "tty" Bool :> Servant.QueryParam "container" Text :> Servant.QueryParam "command" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Text -- connectPostNamespacedPodExec
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> "portforward" :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Text -- connectPostNamespacedPodPortforward
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> "proxy" :> Servant.QueryParam "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Text -- connectPostNamespacedPodProxy
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> "proxy" :> Servant.Capture "path" Text :> Servant.QueryParam "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Text -- connectPostNamespacedPodProxy_0
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> "proxy" :> Servant.QueryParam "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Text -- connectPutNamespacedPodProxy
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> "proxy" :> Servant.Capture "path" Text :> Servant.QueryParam "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Text -- connectPutNamespacedPodProxy_0
    :<|> "api" :> "v1" :> "bindings" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Binding :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Binding -- createBinding
    :<|> "api" :> "v1" :> "endpoints" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Endpoints :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Endpoints -- createEndpoints
    :<|> "api" :> "v1" :> "events" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Event :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Event -- createEvent
    :<|> "api" :> "v1" :> "limitranges" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] LimitRange :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] LimitRange -- createLimitRange
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "bindings" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Binding :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Binding -- createNamespacedBinding
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> "binding" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Binding :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Binding -- createNamespacedBindingBinding
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "endpoints" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Endpoints :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Endpoints -- createNamespacedEndpoints
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "events" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Event :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Event -- createNamespacedEvent
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "limitranges" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] LimitRange :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] LimitRange -- createNamespacedLimitRange
    :<|> "api" :> "v1" :> "namespaces" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Namespace :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Namespace -- createNamespacedNamespace
    :<|> "api" :> "v1" :> "nodes" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Node :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Node -- createNamespacedNode
    :<|> "api" :> "v1" :> "persistentvolumes" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] PersistentVolume :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] PersistentVolume -- createNamespacedPersistentVolume
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "persistentvolumeclaims" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] PersistentVolumeClaim :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] PersistentVolumeClaim -- createNamespacedPersistentVolumeClaim
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Pod :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Pod -- createNamespacedPod
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "podtemplates" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] PodTemplate :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] PodTemplate -- createNamespacedPodTemplate
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "replicationcontrollers" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ReplicationController :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ReplicationController -- createNamespacedReplicationController
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "resourcequotas" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ResourceQuota :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ResourceQuota -- createNamespacedResourceQuota
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "secrets" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Secret :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Secret -- createNamespacedSecret
    :<|> "api" :> "v1" :> "securitycontextconstraints" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] SecurityContextConstraints :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] SecurityContextConstraints -- createNamespacedSecurityContextConstraints
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "services" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Service :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Service -- createNamespacedService
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "serviceaccounts" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ServiceAccount :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ServiceAccount -- createNamespacedServiceAccount
    :<|> "api" :> "v1" :> "persistentvolumeclaims" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] PersistentVolumeClaim :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] PersistentVolumeClaim -- createPersistentVolumeClaim
    :<|> "api" :> "v1" :> "pods" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Pod :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Pod -- createPod
    :<|> "api" :> "v1" :> "podtemplates" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] PodTemplate :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] PodTemplate -- createPodTemplate
    :<|> "api" :> "v1" :> "replicationcontrollers" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ReplicationController :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ReplicationController -- createReplicationController
    :<|> "api" :> "v1" :> "resourcequotas" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ResourceQuota :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ResourceQuota -- createResourceQuota
    :<|> "api" :> "v1" :> "secrets" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Secret :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Secret -- createSecret
    :<|> "api" :> "v1" :> "services" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Service :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Service -- createService
    :<|> "api" :> "v1" :> "serviceaccounts" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ServiceAccount :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ServiceAccount -- createServiceAccount
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "endpoints" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedEndpoints
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "events" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedEvent
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "limitranges" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedLimitRange
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedNamespace
    :<|> "api" :> "v1" :> "nodes" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedNode
    :<|> "api" :> "v1" :> "persistentvolumes" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedPersistentVolume
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "persistentvolumeclaims" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedPersistentVolumeClaim
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedPod
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "podtemplates" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedPodTemplate
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "replicationcontrollers" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedReplicationController
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "resourcequotas" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedResourceQuota
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "secrets" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedSecret
    :<|> "api" :> "v1" :> "securitycontextconstraints" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedSecurityContextConstraints
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "services" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedService
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "serviceaccounts" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedServiceAccount
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "endpoints" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedEndpoints
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "events" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedEvent
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "limitranges" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedLimitRange
    :<|> "api" :> "v1" :> "namespaces" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedNamespace
    :<|> "api" :> "v1" :> "nodes" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedNode
    :<|> "api" :> "v1" :> "persistentvolumes" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedPersistentVolume
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "persistentvolumeclaims" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedPersistentVolumeClaim
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedPod
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "podtemplates" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedPodTemplate
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "replicationcontrollers" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedReplicationController
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "resourcequotas" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedResourceQuota
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "secrets" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedSecret
    :<|> "api" :> "v1" :> "securitycontextconstraints" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedSecurityContextConstraints
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "serviceaccounts" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedServiceAccount
    :<|> "api" :> "v1" :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] () -- getAPIResources
    :<|> "api" :> "v1" :> "endpoints" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] EndpointsList -- listEndpoints
    :<|> "api" :> "v1" :> "events" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] EventList -- listEvent
    :<|> "api" :> "v1" :> "limitranges" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] LimitRangeList -- listLimitRange
    :<|> "api" :> "v1" :> "componentstatuses" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ComponentStatusList -- listNamespacedComponentStatus
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "endpoints" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] EndpointsList -- listNamespacedEndpoints
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "events" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] EventList -- listNamespacedEvent
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "limitranges" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] LimitRangeList -- listNamespacedLimitRange
    :<|> "api" :> "v1" :> "namespaces" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] NamespaceList -- listNamespacedNamespace
    :<|> "api" :> "v1" :> "nodes" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] NodeList -- listNamespacedNode
    :<|> "api" :> "v1" :> "persistentvolumes" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] PersistentVolumeList -- listNamespacedPersistentVolume
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "persistentvolumeclaims" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] PersistentVolumeClaimList -- listNamespacedPersistentVolumeClaim
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] PodList -- listNamespacedPod
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "podtemplates" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] PodTemplateList -- listNamespacedPodTemplate
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "replicationcontrollers" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ReplicationControllerList -- listNamespacedReplicationController
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "resourcequotas" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ResourceQuotaList -- listNamespacedResourceQuota
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "secrets" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] SecretList -- listNamespacedSecret
    :<|> "api" :> "v1" :> "securitycontextconstraints" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] SecurityContextConstraintsList -- listNamespacedSecurityContextConstraints
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "services" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ServiceList -- listNamespacedService
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "serviceaccounts" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ServiceAccountList -- listNamespacedServiceAccount
    :<|> "api" :> "v1" :> "persistentvolumeclaims" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] PersistentVolumeClaimList -- listPersistentVolumeClaim
    :<|> "api" :> "v1" :> "pods" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] PodList -- listPod
    :<|> "api" :> "v1" :> "podtemplates" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] PodTemplateList -- listPodTemplate
    :<|> "api" :> "v1" :> "replicationcontrollers" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ReplicationControllerList -- listReplicationController
    :<|> "api" :> "v1" :> "resourcequotas" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ResourceQuotaList -- listResourceQuota
    :<|> "api" :> "v1" :> "secrets" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] SecretList -- listSecret
    :<|> "api" :> "v1" :> "services" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ServiceList -- listService
    :<|> "api" :> "v1" :> "serviceaccounts" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ServiceAccountList -- listServiceAccount
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "endpoints" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Endpoints -- patchNamespacedEndpoints
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "events" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Event -- patchNamespacedEvent
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "limitranges" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] LimitRange -- patchNamespacedLimitRange
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Namespace -- patchNamespacedNamespace
    :<|> "api" :> "v1" :> "nodes" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Node -- patchNamespacedNode
    :<|> "api" :> "v1" :> "persistentvolumes" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] PersistentVolume -- patchNamespacedPersistentVolume
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "persistentvolumeclaims" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] PersistentVolumeClaim -- patchNamespacedPersistentVolumeClaim
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Pod -- patchNamespacedPod
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "podtemplates" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] PodTemplate -- patchNamespacedPodTemplate
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "replicationcontrollers" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] ReplicationController -- patchNamespacedReplicationController
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "resourcequotas" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] ResourceQuota -- patchNamespacedResourceQuota
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "secrets" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Secret -- patchNamespacedSecret
    :<|> "api" :> "v1" :> "securitycontextconstraints" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] SecurityContextConstraints -- patchNamespacedSecurityContextConstraints
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "services" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Service -- patchNamespacedService
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "serviceaccounts" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] ServiceAccount -- patchNamespacedServiceAccount
    :<|> "api" :> "v1" :> "proxy" :> "nodes" :> Servant.Capture "name" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Text -- proxyDELETENamespacedNode
    :<|> "api" :> "v1" :> "proxy" :> "nodes" :> Servant.Capture "name" Text :> Servant.Capture "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Text -- proxyDELETENamespacedNode_0
    :<|> "api" :> "v1" :> "proxy" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Text -- proxyDELETENamespacedPod
    :<|> "api" :> "v1" :> "proxy" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> Servant.Capture "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Text -- proxyDELETENamespacedPod_0
    :<|> "api" :> "v1" :> "proxy" :> "namespaces" :> Servant.Capture "namespace" Text :> "services" :> Servant.Capture "name" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Text -- proxyDELETENamespacedService
    :<|> "api" :> "v1" :> "proxy" :> "namespaces" :> Servant.Capture "namespace" Text :> "services" :> Servant.Capture "name" Text :> Servant.Capture "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Text -- proxyDELETENamespacedService_0
    :<|> "api" :> "v1" :> "proxy" :> "nodes" :> Servant.Capture "name" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Text -- proxyGETNamespacedNode
    :<|> "api" :> "v1" :> "proxy" :> "nodes" :> Servant.Capture "name" Text :> Servant.Capture "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Text -- proxyGETNamespacedNode_0
    :<|> "api" :> "v1" :> "proxy" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Text -- proxyGETNamespacedPod
    :<|> "api" :> "v1" :> "proxy" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> Servant.Capture "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Text -- proxyGETNamespacedPod_0
    :<|> "api" :> "v1" :> "proxy" :> "namespaces" :> Servant.Capture "namespace" Text :> "services" :> Servant.Capture "name" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Text -- proxyGETNamespacedService
    :<|> "api" :> "v1" :> "proxy" :> "namespaces" :> Servant.Capture "namespace" Text :> "services" :> Servant.Capture "name" Text :> Servant.Capture "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Text -- proxyGETNamespacedService_0
    :<|> "api" :> "v1" :> "proxy" :> "nodes" :> Servant.Capture "name" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.HEAD 200 '[Servant.JSON] Text -- proxyHEADNamespacedNode
    :<|> "api" :> "v1" :> "proxy" :> "nodes" :> Servant.Capture "name" Text :> Servant.Capture "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.HEAD 200 '[Servant.JSON] Text -- proxyHEADNamespacedNode_0
    :<|> "api" :> "v1" :> "proxy" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.HEAD 200 '[Servant.JSON] Text -- proxyHEADNamespacedPod
    :<|> "api" :> "v1" :> "proxy" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> Servant.Capture "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.HEAD 200 '[Servant.JSON] Text -- proxyHEADNamespacedPod_0
    :<|> "api" :> "v1" :> "proxy" :> "namespaces" :> Servant.Capture "namespace" Text :> "services" :> Servant.Capture "name" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.HEAD 200 '[Servant.JSON] Text -- proxyHEADNamespacedService
    :<|> "api" :> "v1" :> "proxy" :> "namespaces" :> Servant.Capture "namespace" Text :> "services" :> Servant.Capture "name" Text :> Servant.Capture "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.HEAD 200 '[Servant.JSON] Text -- proxyHEADNamespacedService_0
    :<|> "api" :> "v1" :> "proxy" :> "nodes" :> Servant.Capture "name" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.OPTIONS 200 '[Servant.JSON] Text -- proxyOPTIONSNamespacedNode
    :<|> "api" :> "v1" :> "proxy" :> "nodes" :> Servant.Capture "name" Text :> Servant.Capture "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.OPTIONS 200 '[Servant.JSON] Text -- proxyOPTIONSNamespacedNode_0
    :<|> "api" :> "v1" :> "proxy" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.OPTIONS 200 '[Servant.JSON] Text -- proxyOPTIONSNamespacedPod
    :<|> "api" :> "v1" :> "proxy" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> Servant.Capture "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.OPTIONS 200 '[Servant.JSON] Text -- proxyOPTIONSNamespacedPod_0
    :<|> "api" :> "v1" :> "proxy" :> "namespaces" :> Servant.Capture "namespace" Text :> "services" :> Servant.Capture "name" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.OPTIONS 200 '[Servant.JSON] Text -- proxyOPTIONSNamespacedService
    :<|> "api" :> "v1" :> "proxy" :> "namespaces" :> Servant.Capture "namespace" Text :> "services" :> Servant.Capture "name" Text :> Servant.Capture "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.OPTIONS 200 '[Servant.JSON] Text -- proxyOPTIONSNamespacedService_0
    :<|> "api" :> "v1" :> "proxy" :> "nodes" :> Servant.Capture "name" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Text -- proxyPOSTNamespacedNode
    :<|> "api" :> "v1" :> "proxy" :> "nodes" :> Servant.Capture "name" Text :> Servant.Capture "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Text -- proxyPOSTNamespacedNode_0
    :<|> "api" :> "v1" :> "proxy" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Text -- proxyPOSTNamespacedPod
    :<|> "api" :> "v1" :> "proxy" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> Servant.Capture "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Text -- proxyPOSTNamespacedPod_0
    :<|> "api" :> "v1" :> "proxy" :> "namespaces" :> Servant.Capture "namespace" Text :> "services" :> Servant.Capture "name" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Text -- proxyPOSTNamespacedService
    :<|> "api" :> "v1" :> "proxy" :> "namespaces" :> Servant.Capture "namespace" Text :> "services" :> Servant.Capture "name" Text :> Servant.Capture "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Text -- proxyPOSTNamespacedService_0
    :<|> "api" :> "v1" :> "proxy" :> "nodes" :> Servant.Capture "name" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Text -- proxyPUTNamespacedNode
    :<|> "api" :> "v1" :> "proxy" :> "nodes" :> Servant.Capture "name" Text :> Servant.Capture "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Text -- proxyPUTNamespacedNode_0
    :<|> "api" :> "v1" :> "proxy" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Text -- proxyPUTNamespacedPod
    :<|> "api" :> "v1" :> "proxy" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> Servant.Capture "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Text -- proxyPUTNamespacedPod_0
    :<|> "api" :> "v1" :> "proxy" :> "namespaces" :> Servant.Capture "namespace" Text :> "services" :> Servant.Capture "name" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Text -- proxyPUTNamespacedService
    :<|> "api" :> "v1" :> "proxy" :> "namespaces" :> Servant.Capture "namespace" Text :> "services" :> Servant.Capture "name" Text :> Servant.Capture "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Text -- proxyPUTNamespacedService_0
    :<|> "api" :> "v1" :> "componentstatuses" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ComponentStatus -- readNamespacedComponentStatus
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "endpoints" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Endpoints -- readNamespacedEndpoints
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "events" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Event -- readNamespacedEvent
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "limitranges" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] LimitRange -- readNamespacedLimitRange
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Namespace -- readNamespacedNamespace
    :<|> "api" :> "v1" :> "nodes" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Node -- readNamespacedNode
    :<|> "api" :> "v1" :> "persistentvolumes" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] PersistentVolume -- readNamespacedPersistentVolume
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "persistentvolumeclaims" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] PersistentVolumeClaim -- readNamespacedPersistentVolumeClaim
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Pod -- readNamespacedPod
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> "log" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "container" Text :> Servant.QueryParam "follow" Bool :> Servant.QueryParam "previous" Bool :> Servant.QueryParam "sinceSeconds" Integer :> Servant.QueryParam "sinceTime" Text :> Servant.QueryParam "timestamps" Bool :> Servant.QueryParam "tailLines" Integer :> Servant.QueryParam "limitBytes" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Pod -- readNamespacedPodLog
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "podtemplates" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] PodTemplate -- readNamespacedPodTemplate
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "replicationcontrollers" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ReplicationController -- readNamespacedReplicationController
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "resourcequotas" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ResourceQuota -- readNamespacedResourceQuota
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "secrets" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Secret -- readNamespacedSecret
    :<|> "api" :> "v1" :> "securitycontextconstraints" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] SecurityContextConstraints -- readNamespacedSecurityContextConstraints
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "services" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Service -- readNamespacedService
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "serviceaccounts" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ServiceAccount -- readNamespacedServiceAccount
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "endpoints" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Endpoints :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Endpoints -- replaceNamespacedEndpoints
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "events" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Event :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Event -- replaceNamespacedEvent
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "limitranges" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] LimitRange :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] LimitRange -- replaceNamespacedLimitRange
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Namespace :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Namespace -- replaceNamespacedNamespace
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "name" Text :> "finalize" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Namespace :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Namespace -- replaceNamespacedNamespaceFinalize
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "name" Text :> "status" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Namespace :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Namespace -- replaceNamespacedNamespaceStatus
    :<|> "api" :> "v1" :> "nodes" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Node :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Node -- replaceNamespacedNode
    :<|> "api" :> "v1" :> "nodes" :> Servant.Capture "name" Text :> "status" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Node :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Node -- replaceNamespacedNodeStatus
    :<|> "api" :> "v1" :> "persistentvolumes" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] PersistentVolume :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] PersistentVolume -- replaceNamespacedPersistentVolume
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "persistentvolumeclaims" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] PersistentVolumeClaim :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] PersistentVolumeClaim -- replaceNamespacedPersistentVolumeClaim
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "persistentvolumeclaims" :> Servant.Capture "name" Text :> "status" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] PersistentVolumeClaim :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] PersistentVolumeClaim -- replaceNamespacedPersistentVolumeClaimStatus
    :<|> "api" :> "v1" :> "persistentvolumes" :> Servant.Capture "name" Text :> "status" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] PersistentVolume :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] PersistentVolume -- replaceNamespacedPersistentVolumeStatus
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Pod :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Pod -- replaceNamespacedPod
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> "status" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Pod :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Pod -- replaceNamespacedPodStatus
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "podtemplates" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] PodTemplate :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] PodTemplate -- replaceNamespacedPodTemplate
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "replicationcontrollers" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ReplicationController :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] ReplicationController -- replaceNamespacedReplicationController
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "replicationcontrollers" :> Servant.Capture "name" Text :> "status" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ReplicationController :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] ReplicationController -- replaceNamespacedReplicationControllerStatus
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "resourcequotas" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ResourceQuota :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] ResourceQuota -- replaceNamespacedResourceQuota
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "resourcequotas" :> Servant.Capture "name" Text :> "status" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ResourceQuota :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] ResourceQuota -- replaceNamespacedResourceQuotaStatus
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "secrets" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Secret :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Secret -- replaceNamespacedSecret
    :<|> "api" :> "v1" :> "securitycontextconstraints" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] SecurityContextConstraints :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] SecurityContextConstraints -- replaceNamespacedSecurityContextConstraints
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "services" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Service :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Service -- replaceNamespacedService
    :<|> "api" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "serviceaccounts" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ServiceAccount :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] ServiceAccount -- replaceNamespacedServiceAccount
    :<|> "api" :> "v1" :> "watch" :> "endpoints" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchEndpointsList
    :<|> "api" :> "v1" :> "watch" :> "events" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchEventList
    :<|> "api" :> "v1" :> "watch" :> "limitranges" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchLimitRangeList
    :<|> "api" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "endpoints" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedEndpoints
    :<|> "api" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "endpoints" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedEndpointsList
    :<|> "api" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "events" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedEvent
    :<|> "api" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "events" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedEventList
    :<|> "api" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "limitranges" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedLimitRange
    :<|> "api" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "limitranges" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedLimitRangeList
    :<|> "api" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedNamespace
    :<|> "api" :> "v1" :> "watch" :> "namespaces" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedNamespaceList
    :<|> "api" :> "v1" :> "watch" :> "nodes" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedNode
    :<|> "api" :> "v1" :> "watch" :> "nodes" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedNodeList
    :<|> "api" :> "v1" :> "watch" :> "persistentvolumes" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedPersistentVolume
    :<|> "api" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "persistentvolumeclaims" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedPersistentVolumeClaim
    :<|> "api" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "persistentvolumeclaims" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedPersistentVolumeClaimList
    :<|> "api" :> "v1" :> "watch" :> "persistentvolumes" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedPersistentVolumeList
    :<|> "api" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedPod
    :<|> "api" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "pods" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedPodList
    :<|> "api" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "podtemplates" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedPodTemplate
    :<|> "api" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "podtemplates" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedPodTemplateList
    :<|> "api" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "replicationcontrollers" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedReplicationController
    :<|> "api" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "replicationcontrollers" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedReplicationControllerList
    :<|> "api" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "resourcequotas" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedResourceQuota
    :<|> "api" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "resourcequotas" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedResourceQuotaList
    :<|> "api" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "secrets" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedSecret
    :<|> "api" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "secrets" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedSecretList
    :<|> "api" :> "v1" :> "watch" :> "securitycontextconstraints" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedSecurityContextConstraints
    :<|> "api" :> "v1" :> "watch" :> "securitycontextconstraints" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedSecurityContextConstraintsList
    :<|> "api" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "services" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedService
    :<|> "api" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "serviceaccounts" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedServiceAccount
    :<|> "api" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "serviceaccounts" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedServiceAccountList
    :<|> "api" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "services" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedServiceList
    :<|> "api" :> "v1" :> "watch" :> "persistentvolumeclaims" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchPersistentVolumeClaimList
    :<|> "api" :> "v1" :> "watch" :> "pods" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchPodList
    :<|> "api" :> "v1" :> "watch" :> "podtemplates" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchPodTemplateList
    :<|> "api" :> "v1" :> "watch" :> "replicationcontrollers" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchReplicationControllerList
    :<|> "api" :> "v1" :> "watch" :> "resourcequotas" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchResourceQuotaList
    :<|> "api" :> "v1" :> "watch" :> "secrets" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchSecretList
    :<|> "api" :> "v1" :> "watch" :> "serviceaccounts" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchServiceAccountList
    :<|> "api" :> "v1" :> "watch" :> "services" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchServiceList


-- | connect DELETE requests to proxy of Pod
connectDeleteNamespacedPodProxy :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | connect DELETE requests to proxy of Pod
connectDeleteNamespacedPodProxy_0 :: Text -> Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | connect GET requests to attach of Pod
connectGetNamespacedPodAttach :: Text -> Text -> Maybe Bool -> Maybe Bool -> Maybe Bool -> Maybe Bool -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | connect GET requests to exec of Pod
connectGetNamespacedPodExec :: Text -> Text -> Maybe Bool -> Maybe Bool -> Maybe Bool -> Maybe Bool -> Maybe Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | connect GET requests to portforward of Pod
connectGetNamespacedPodPortforward :: Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | connect GET requests to proxy of Pod
connectGetNamespacedPodProxy :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | connect GET requests to proxy of Pod
connectGetNamespacedPodProxy_0 :: Text -> Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | connect HEAD requests to proxy of Pod
connectHeadNamespacedPodProxy :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | connect HEAD requests to proxy of Pod
connectHeadNamespacedPodProxy_0 :: Text -> Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | connect OPTIONS requests to proxy of Pod
connectOptionsNamespacedPodProxy :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | connect OPTIONS requests to proxy of Pod
connectOptionsNamespacedPodProxy_0 :: Text -> Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | connect POST requests to attach of Pod
connectPostNamespacedPodAttach :: Text -> Text -> Maybe Bool -> Maybe Bool -> Maybe Bool -> Maybe Bool -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | connect POST requests to exec of Pod
connectPostNamespacedPodExec :: Text -> Text -> Maybe Bool -> Maybe Bool -> Maybe Bool -> Maybe Bool -> Maybe Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | connect POST requests to portforward of Pod
connectPostNamespacedPodPortforward :: Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | connect POST requests to proxy of Pod
connectPostNamespacedPodProxy :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | connect POST requests to proxy of Pod
connectPostNamespacedPodProxy_0 :: Text -> Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | connect PUT requests to proxy of Pod
connectPutNamespacedPodProxy :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | connect PUT requests to proxy of Pod
connectPutNamespacedPodProxy_0 :: Text -> Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | create a Binding
createBinding :: Maybe Text -> Binding -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Binding

-- | create a Endpoints
createEndpoints :: Maybe Text -> Endpoints -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Endpoints

-- | create a Event
createEvent :: Maybe Text -> Event -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Event

-- | create a LimitRange
createLimitRange :: Maybe Text -> LimitRange -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO LimitRange

-- | create a Binding
createNamespacedBinding :: Text -> Maybe Text -> Binding -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Binding

-- | create binding of a Binding
createNamespacedBindingBinding :: Text -> Text -> Maybe Text -> Binding -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Binding

-- | create a Endpoints
createNamespacedEndpoints :: Text -> Maybe Text -> Endpoints -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Endpoints

-- | create a Event
createNamespacedEvent :: Text -> Maybe Text -> Event -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Event

-- | create a LimitRange
createNamespacedLimitRange :: Text -> Maybe Text -> LimitRange -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO LimitRange

-- | create a Namespace
createNamespacedNamespace :: Maybe Text -> Namespace -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Namespace

-- | create a Node
createNamespacedNode :: Maybe Text -> Node -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Node

-- | create a PersistentVolume
createNamespacedPersistentVolume :: Maybe Text -> PersistentVolume -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PersistentVolume

-- | create a PersistentVolumeClaim
createNamespacedPersistentVolumeClaim :: Text -> Maybe Text -> PersistentVolumeClaim -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PersistentVolumeClaim

-- | create a Pod
createNamespacedPod :: Text -> Maybe Text -> Pod -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Pod

-- | create a PodTemplate
createNamespacedPodTemplate :: Text -> Maybe Text -> PodTemplate -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PodTemplate

-- | create a ReplicationController
createNamespacedReplicationController :: Text -> Maybe Text -> ReplicationController -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ReplicationController

-- | create a ResourceQuota
createNamespacedResourceQuota :: Text -> Maybe Text -> ResourceQuota -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ResourceQuota

-- | create a Secret
createNamespacedSecret :: Text -> Maybe Text -> Secret -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Secret

-- | create a SecurityContextConstraints
createNamespacedSecurityContextConstraints :: Maybe Text -> SecurityContextConstraints -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO SecurityContextConstraints

-- | create a Service
createNamespacedService :: Text -> Maybe Text -> Service -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Service

-- | create a ServiceAccount
createNamespacedServiceAccount :: Text -> Maybe Text -> ServiceAccount -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ServiceAccount

-- | create a PersistentVolumeClaim
createPersistentVolumeClaim :: Maybe Text -> PersistentVolumeClaim -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PersistentVolumeClaim

-- | create a Pod
createPod :: Maybe Text -> Pod -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Pod

-- | create a PodTemplate
createPodTemplate :: Maybe Text -> PodTemplate -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PodTemplate

-- | create a ReplicationController
createReplicationController :: Maybe Text -> ReplicationController -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ReplicationController

-- | create a ResourceQuota
createResourceQuota :: Maybe Text -> ResourceQuota -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ResourceQuota

-- | create a Secret
createSecret :: Maybe Text -> Secret -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Secret

-- | create a Service
createService :: Maybe Text -> Service -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Service

-- | create a ServiceAccount
createServiceAccount :: Maybe Text -> ServiceAccount -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ServiceAccount

-- | delete a Endpoints
deleteNamespacedEndpoints :: Text -> Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a Event
deleteNamespacedEvent :: Text -> Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a LimitRange
deleteNamespacedLimitRange :: Text -> Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a Namespace
deleteNamespacedNamespace :: Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a Node
deleteNamespacedNode :: Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a PersistentVolume
deleteNamespacedPersistentVolume :: Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a PersistentVolumeClaim
deleteNamespacedPersistentVolumeClaim :: Text -> Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a Pod
deleteNamespacedPod :: Text -> Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a PodTemplate
deleteNamespacedPodTemplate :: Text -> Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a ReplicationController
deleteNamespacedReplicationController :: Text -> Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a ResourceQuota
deleteNamespacedResourceQuota :: Text -> Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a Secret
deleteNamespacedSecret :: Text -> Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a SecurityContextConstraints
deleteNamespacedSecurityContextConstraints :: Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a Service
deleteNamespacedService :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a ServiceAccount
deleteNamespacedServiceAccount :: Text -> Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of Endpoints
deletecollectionNamespacedEndpoints :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of Event
deletecollectionNamespacedEvent :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of LimitRange
deletecollectionNamespacedLimitRange :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of Namespace
deletecollectionNamespacedNamespace :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of Node
deletecollectionNamespacedNode :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of PersistentVolume
deletecollectionNamespacedPersistentVolume :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of PersistentVolumeClaim
deletecollectionNamespacedPersistentVolumeClaim :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of Pod
deletecollectionNamespacedPod :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of PodTemplate
deletecollectionNamespacedPodTemplate :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of ReplicationController
deletecollectionNamespacedReplicationController :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of ResourceQuota
deletecollectionNamespacedResourceQuota :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of Secret
deletecollectionNamespacedSecret :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of SecurityContextConstraints
deletecollectionNamespacedSecurityContextConstraints :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of ServiceAccount
deletecollectionNamespacedServiceAccount :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | get available resources
getAPIResources :: Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ()

-- | list or watch objects of kind Endpoints
listEndpoints :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO EndpointsList

-- | list or watch objects of kind Event
listEvent :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO EventList

-- | list or watch objects of kind LimitRange
listLimitRange :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO LimitRangeList

-- | list objects of kind ComponentStatus
listNamespacedComponentStatus :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ComponentStatusList

-- | list or watch objects of kind Endpoints
listNamespacedEndpoints :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO EndpointsList

-- | list or watch objects of kind Event
listNamespacedEvent :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO EventList

-- | list or watch objects of kind LimitRange
listNamespacedLimitRange :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO LimitRangeList

-- | list or watch objects of kind Namespace
listNamespacedNamespace :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO NamespaceList

-- | list or watch objects of kind Node
listNamespacedNode :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO NodeList

-- | list or watch objects of kind PersistentVolume
listNamespacedPersistentVolume :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PersistentVolumeList

-- | list or watch objects of kind PersistentVolumeClaim
listNamespacedPersistentVolumeClaim :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PersistentVolumeClaimList

-- | list or watch objects of kind Pod
listNamespacedPod :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PodList

-- | list or watch objects of kind PodTemplate
listNamespacedPodTemplate :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PodTemplateList

-- | list or watch objects of kind ReplicationController
listNamespacedReplicationController :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ReplicationControllerList

-- | list or watch objects of kind ResourceQuota
listNamespacedResourceQuota :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ResourceQuotaList

-- | list or watch objects of kind Secret
listNamespacedSecret :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO SecretList

-- | list or watch objects of kind SecurityContextConstraints
listNamespacedSecurityContextConstraints :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO SecurityContextConstraintsList

-- | list or watch objects of kind Service
listNamespacedService :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ServiceList

-- | list or watch objects of kind ServiceAccount
listNamespacedServiceAccount :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ServiceAccountList

-- | list or watch objects of kind PersistentVolumeClaim
listPersistentVolumeClaim :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PersistentVolumeClaimList

-- | list or watch objects of kind Pod
listPod :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PodList

-- | list or watch objects of kind PodTemplate
listPodTemplate :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PodTemplateList

-- | list or watch objects of kind ReplicationController
listReplicationController :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ReplicationControllerList

-- | list or watch objects of kind ResourceQuota
listResourceQuota :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ResourceQuotaList

-- | list or watch objects of kind Secret
listSecret :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO SecretList

-- | list or watch objects of kind Service
listService :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ServiceList

-- | list or watch objects of kind ServiceAccount
listServiceAccount :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ServiceAccountList

-- | partially update the specified Endpoints
patchNamespacedEndpoints :: Text -> Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Endpoints

-- | partially update the specified Event
patchNamespacedEvent :: Text -> Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Event

-- | partially update the specified LimitRange
patchNamespacedLimitRange :: Text -> Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO LimitRange

-- | partially update the specified Namespace
patchNamespacedNamespace :: Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Namespace

-- | partially update the specified Node
patchNamespacedNode :: Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Node

-- | partially update the specified PersistentVolume
patchNamespacedPersistentVolume :: Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PersistentVolume

-- | partially update the specified PersistentVolumeClaim
patchNamespacedPersistentVolumeClaim :: Text -> Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PersistentVolumeClaim

-- | partially update the specified Pod
patchNamespacedPod :: Text -> Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Pod

-- | partially update the specified PodTemplate
patchNamespacedPodTemplate :: Text -> Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PodTemplate

-- | partially update the specified ReplicationController
patchNamespacedReplicationController :: Text -> Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ReplicationController

-- | partially update the specified ResourceQuota
patchNamespacedResourceQuota :: Text -> Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ResourceQuota

-- | partially update the specified Secret
patchNamespacedSecret :: Text -> Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Secret

-- | partially update the specified SecurityContextConstraints
patchNamespacedSecurityContextConstraints :: Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO SecurityContextConstraints

-- | partially update the specified Service
patchNamespacedService :: Text -> Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Service

-- | partially update the specified ServiceAccount
patchNamespacedServiceAccount :: Text -> Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ServiceAccount

-- | proxy DELETE requests to Node
proxyDELETENamespacedNode :: Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy DELETE requests to Node
proxyDELETENamespacedNode_0 :: Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy DELETE requests to Pod
proxyDELETENamespacedPod :: Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy DELETE requests to Pod
proxyDELETENamespacedPod_0 :: Text -> Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy DELETE requests to Service
proxyDELETENamespacedService :: Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy DELETE requests to Service
proxyDELETENamespacedService_0 :: Text -> Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy GET requests to Node
proxyGETNamespacedNode :: Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy GET requests to Node
proxyGETNamespacedNode_0 :: Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy GET requests to Pod
proxyGETNamespacedPod :: Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy GET requests to Pod
proxyGETNamespacedPod_0 :: Text -> Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy GET requests to Service
proxyGETNamespacedService :: Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy GET requests to Service
proxyGETNamespacedService_0 :: Text -> Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy HEAD requests to Node
proxyHEADNamespacedNode :: Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy HEAD requests to Node
proxyHEADNamespacedNode_0 :: Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy HEAD requests to Pod
proxyHEADNamespacedPod :: Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy HEAD requests to Pod
proxyHEADNamespacedPod_0 :: Text -> Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy HEAD requests to Service
proxyHEADNamespacedService :: Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy HEAD requests to Service
proxyHEADNamespacedService_0 :: Text -> Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy OPTIONS requests to Node
proxyOPTIONSNamespacedNode :: Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy OPTIONS requests to Node
proxyOPTIONSNamespacedNode_0 :: Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy OPTIONS requests to Pod
proxyOPTIONSNamespacedPod :: Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy OPTIONS requests to Pod
proxyOPTIONSNamespacedPod_0 :: Text -> Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy OPTIONS requests to Service
proxyOPTIONSNamespacedService :: Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy OPTIONS requests to Service
proxyOPTIONSNamespacedService_0 :: Text -> Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy POST requests to Node
proxyPOSTNamespacedNode :: Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy POST requests to Node
proxyPOSTNamespacedNode_0 :: Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy POST requests to Pod
proxyPOSTNamespacedPod :: Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy POST requests to Pod
proxyPOSTNamespacedPod_0 :: Text -> Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy POST requests to Service
proxyPOSTNamespacedService :: Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy POST requests to Service
proxyPOSTNamespacedService_0 :: Text -> Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy PUT requests to Node
proxyPUTNamespacedNode :: Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy PUT requests to Node
proxyPUTNamespacedNode_0 :: Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy PUT requests to Pod
proxyPUTNamespacedPod :: Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy PUT requests to Pod
proxyPUTNamespacedPod_0 :: Text -> Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy PUT requests to Service
proxyPUTNamespacedService :: Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | proxy PUT requests to Service
proxyPUTNamespacedService_0 :: Text -> Text -> Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | read the specified ComponentStatus
readNamespacedComponentStatus :: Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ComponentStatus

-- | read the specified Endpoints
readNamespacedEndpoints :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Endpoints

-- | read the specified Event
readNamespacedEvent :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Event

-- | read the specified LimitRange
readNamespacedLimitRange :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO LimitRange

-- | read the specified Namespace
readNamespacedNamespace :: Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Namespace

-- | read the specified Node
readNamespacedNode :: Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Node

-- | read the specified PersistentVolume
readNamespacedPersistentVolume :: Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PersistentVolume

-- | read the specified PersistentVolumeClaim
readNamespacedPersistentVolumeClaim :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PersistentVolumeClaim

-- | read the specified Pod
readNamespacedPod :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Pod

-- | read log of the specified Pod
readNamespacedPodLog :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Bool -> Maybe Integer -> Maybe Text -> Maybe Bool -> Maybe Integer -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Pod

-- | read the specified PodTemplate
readNamespacedPodTemplate :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PodTemplate

-- | read the specified ReplicationController
readNamespacedReplicationController :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ReplicationController

-- | read the specified ResourceQuota
readNamespacedResourceQuota :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ResourceQuota

-- | read the specified Secret
readNamespacedSecret :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Secret

-- | read the specified SecurityContextConstraints
readNamespacedSecurityContextConstraints :: Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO SecurityContextConstraints

-- | read the specified Service
readNamespacedService :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Service

-- | read the specified ServiceAccount
readNamespacedServiceAccount :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ServiceAccount

-- | replace the specified Endpoints
replaceNamespacedEndpoints :: Text -> Text -> Maybe Text -> Endpoints -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Endpoints

-- | replace the specified Event
replaceNamespacedEvent :: Text -> Text -> Maybe Text -> Event -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Event

-- | replace the specified LimitRange
replaceNamespacedLimitRange :: Text -> Text -> Maybe Text -> LimitRange -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO LimitRange

-- | replace the specified Namespace
replaceNamespacedNamespace :: Text -> Maybe Text -> Namespace -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Namespace

-- | replace finalize of the specified Namespace
replaceNamespacedNamespaceFinalize :: Text -> Maybe Text -> Namespace -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Namespace

-- | replace status of the specified Namespace
replaceNamespacedNamespaceStatus :: Text -> Maybe Text -> Namespace -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Namespace

-- | replace the specified Node
replaceNamespacedNode :: Text -> Maybe Text -> Node -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Node

-- | replace status of the specified Node
replaceNamespacedNodeStatus :: Text -> Maybe Text -> Node -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Node

-- | replace the specified PersistentVolume
replaceNamespacedPersistentVolume :: Text -> Maybe Text -> PersistentVolume -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PersistentVolume

-- | replace the specified PersistentVolumeClaim
replaceNamespacedPersistentVolumeClaim :: Text -> Text -> Maybe Text -> PersistentVolumeClaim -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PersistentVolumeClaim

-- | replace status of the specified PersistentVolumeClaim
replaceNamespacedPersistentVolumeClaimStatus :: Text -> Text -> Maybe Text -> PersistentVolumeClaim -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PersistentVolumeClaim

-- | replace status of the specified PersistentVolume
replaceNamespacedPersistentVolumeStatus :: Text -> Maybe Text -> PersistentVolume -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PersistentVolume

-- | replace the specified Pod
replaceNamespacedPod :: Text -> Text -> Maybe Text -> Pod -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Pod

-- | replace status of the specified Pod
replaceNamespacedPodStatus :: Text -> Text -> Maybe Text -> Pod -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Pod

-- | replace the specified PodTemplate
replaceNamespacedPodTemplate :: Text -> Text -> Maybe Text -> PodTemplate -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PodTemplate

-- | replace the specified ReplicationController
replaceNamespacedReplicationController :: Text -> Text -> Maybe Text -> ReplicationController -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ReplicationController

-- | replace status of the specified ReplicationController
replaceNamespacedReplicationControllerStatus :: Text -> Text -> Maybe Text -> ReplicationController -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ReplicationController

-- | replace the specified ResourceQuota
replaceNamespacedResourceQuota :: Text -> Text -> Maybe Text -> ResourceQuota -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ResourceQuota

-- | replace status of the specified ResourceQuota
replaceNamespacedResourceQuotaStatus :: Text -> Text -> Maybe Text -> ResourceQuota -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ResourceQuota

-- | replace the specified Secret
replaceNamespacedSecret :: Text -> Text -> Maybe Text -> Secret -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Secret

-- | replace the specified SecurityContextConstraints
replaceNamespacedSecurityContextConstraints :: Text -> Maybe Text -> SecurityContextConstraints -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO SecurityContextConstraints

-- | replace the specified Service
replaceNamespacedService :: Text -> Text -> Maybe Text -> Service -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Service

-- | replace the specified ServiceAccount
replaceNamespacedServiceAccount :: Text -> Text -> Maybe Text -> ServiceAccount -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ServiceAccount

-- | watch individual changes to a list of Endpoints
watchEndpointsList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Event
watchEventList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of LimitRange
watchLimitRangeList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind Endpoints
watchNamespacedEndpoints :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Endpoints
watchNamespacedEndpointsList :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind Event
watchNamespacedEvent :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Event
watchNamespacedEventList :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind LimitRange
watchNamespacedLimitRange :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of LimitRange
watchNamespacedLimitRangeList :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind Namespace
watchNamespacedNamespace :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Namespace
watchNamespacedNamespaceList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind Node
watchNamespacedNode :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Node
watchNamespacedNodeList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind PersistentVolume
watchNamespacedPersistentVolume :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind PersistentVolumeClaim
watchNamespacedPersistentVolumeClaim :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of PersistentVolumeClaim
watchNamespacedPersistentVolumeClaimList :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of PersistentVolume
watchNamespacedPersistentVolumeList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind Pod
watchNamespacedPod :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Pod
watchNamespacedPodList :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind PodTemplate
watchNamespacedPodTemplate :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of PodTemplate
watchNamespacedPodTemplateList :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind ReplicationController
watchNamespacedReplicationController :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of ReplicationController
watchNamespacedReplicationControllerList :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind ResourceQuota
watchNamespacedResourceQuota :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of ResourceQuota
watchNamespacedResourceQuotaList :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind Secret
watchNamespacedSecret :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Secret
watchNamespacedSecretList :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind SecurityContextConstraints
watchNamespacedSecurityContextConstraints :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of SecurityContextConstraints
watchNamespacedSecurityContextConstraintsList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind Service
watchNamespacedService :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind ServiceAccount
watchNamespacedServiceAccount :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of ServiceAccount
watchNamespacedServiceAccountList :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Service
watchNamespacedServiceList :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of PersistentVolumeClaim
watchPersistentVolumeClaimList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Pod
watchPodList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of PodTemplate
watchPodTemplateList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of ReplicationController
watchReplicationControllerList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of ResourceQuota
watchResourceQuotaList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Secret
watchSecretList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of ServiceAccount
watchServiceAccountList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Service
watchServiceList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent


proxyApivApi :: Proxy ApivApi
proxyApivApi = Proxy


connectDeleteNamespacedPodProxy
    :<|> connectDeleteNamespacedPodProxy_0
    :<|> connectGetNamespacedPodAttach
    :<|> connectGetNamespacedPodExec
    :<|> connectGetNamespacedPodPortforward
    :<|> connectGetNamespacedPodProxy
    :<|> connectGetNamespacedPodProxy_0
    :<|> connectHeadNamespacedPodProxy
    :<|> connectHeadNamespacedPodProxy_0
    :<|> connectOptionsNamespacedPodProxy
    :<|> connectOptionsNamespacedPodProxy_0
    :<|> connectPostNamespacedPodAttach
    :<|> connectPostNamespacedPodExec
    :<|> connectPostNamespacedPodPortforward
    :<|> connectPostNamespacedPodProxy
    :<|> connectPostNamespacedPodProxy_0
    :<|> connectPutNamespacedPodProxy
    :<|> connectPutNamespacedPodProxy_0
    :<|> createBinding
    :<|> createEndpoints
    :<|> createEvent
    :<|> createLimitRange
    :<|> createNamespacedBinding
    :<|> createNamespacedBindingBinding
    :<|> createNamespacedEndpoints
    :<|> createNamespacedEvent
    :<|> createNamespacedLimitRange
    :<|> createNamespacedNamespace
    :<|> createNamespacedNode
    :<|> createNamespacedPersistentVolume
    :<|> createNamespacedPersistentVolumeClaim
    :<|> createNamespacedPod
    :<|> createNamespacedPodTemplate
    :<|> createNamespacedReplicationController
    :<|> createNamespacedResourceQuota
    :<|> createNamespacedSecret
    :<|> createNamespacedSecurityContextConstraints
    :<|> createNamespacedService
    :<|> createNamespacedServiceAccount
    :<|> createPersistentVolumeClaim
    :<|> createPod
    :<|> createPodTemplate
    :<|> createReplicationController
    :<|> createResourceQuota
    :<|> createSecret
    :<|> createService
    :<|> createServiceAccount
    :<|> deleteNamespacedEndpoints
    :<|> deleteNamespacedEvent
    :<|> deleteNamespacedLimitRange
    :<|> deleteNamespacedNamespace
    :<|> deleteNamespacedNode
    :<|> deleteNamespacedPersistentVolume
    :<|> deleteNamespacedPersistentVolumeClaim
    :<|> deleteNamespacedPod
    :<|> deleteNamespacedPodTemplate
    :<|> deleteNamespacedReplicationController
    :<|> deleteNamespacedResourceQuota
    :<|> deleteNamespacedSecret
    :<|> deleteNamespacedSecurityContextConstraints
    :<|> deleteNamespacedService
    :<|> deleteNamespacedServiceAccount
    :<|> deletecollectionNamespacedEndpoints
    :<|> deletecollectionNamespacedEvent
    :<|> deletecollectionNamespacedLimitRange
    :<|> deletecollectionNamespacedNamespace
    :<|> deletecollectionNamespacedNode
    :<|> deletecollectionNamespacedPersistentVolume
    :<|> deletecollectionNamespacedPersistentVolumeClaim
    :<|> deletecollectionNamespacedPod
    :<|> deletecollectionNamespacedPodTemplate
    :<|> deletecollectionNamespacedReplicationController
    :<|> deletecollectionNamespacedResourceQuota
    :<|> deletecollectionNamespacedSecret
    :<|> deletecollectionNamespacedSecurityContextConstraints
    :<|> deletecollectionNamespacedServiceAccount
    :<|> getAPIResources
    :<|> listEndpoints
    :<|> listEvent
    :<|> listLimitRange
    :<|> listNamespacedComponentStatus
    :<|> listNamespacedEndpoints
    :<|> listNamespacedEvent
    :<|> listNamespacedLimitRange
    :<|> listNamespacedNamespace
    :<|> listNamespacedNode
    :<|> listNamespacedPersistentVolume
    :<|> listNamespacedPersistentVolumeClaim
    :<|> listNamespacedPod
    :<|> listNamespacedPodTemplate
    :<|> listNamespacedReplicationController
    :<|> listNamespacedResourceQuota
    :<|> listNamespacedSecret
    :<|> listNamespacedSecurityContextConstraints
    :<|> listNamespacedService
    :<|> listNamespacedServiceAccount
    :<|> listPersistentVolumeClaim
    :<|> listPod
    :<|> listPodTemplate
    :<|> listReplicationController
    :<|> listResourceQuota
    :<|> listSecret
    :<|> listService
    :<|> listServiceAccount
    :<|> patchNamespacedEndpoints
    :<|> patchNamespacedEvent
    :<|> patchNamespacedLimitRange
    :<|> patchNamespacedNamespace
    :<|> patchNamespacedNode
    :<|> patchNamespacedPersistentVolume
    :<|> patchNamespacedPersistentVolumeClaim
    :<|> patchNamespacedPod
    :<|> patchNamespacedPodTemplate
    :<|> patchNamespacedReplicationController
    :<|> patchNamespacedResourceQuota
    :<|> patchNamespacedSecret
    :<|> patchNamespacedSecurityContextConstraints
    :<|> patchNamespacedService
    :<|> patchNamespacedServiceAccount
    :<|> proxyDELETENamespacedNode
    :<|> proxyDELETENamespacedNode_0
    :<|> proxyDELETENamespacedPod
    :<|> proxyDELETENamespacedPod_0
    :<|> proxyDELETENamespacedService
    :<|> proxyDELETENamespacedService_0
    :<|> proxyGETNamespacedNode
    :<|> proxyGETNamespacedNode_0
    :<|> proxyGETNamespacedPod
    :<|> proxyGETNamespacedPod_0
    :<|> proxyGETNamespacedService
    :<|> proxyGETNamespacedService_0
    :<|> proxyHEADNamespacedNode
    :<|> proxyHEADNamespacedNode_0
    :<|> proxyHEADNamespacedPod
    :<|> proxyHEADNamespacedPod_0
    :<|> proxyHEADNamespacedService
    :<|> proxyHEADNamespacedService_0
    :<|> proxyOPTIONSNamespacedNode
    :<|> proxyOPTIONSNamespacedNode_0
    :<|> proxyOPTIONSNamespacedPod
    :<|> proxyOPTIONSNamespacedPod_0
    :<|> proxyOPTIONSNamespacedService
    :<|> proxyOPTIONSNamespacedService_0
    :<|> proxyPOSTNamespacedNode
    :<|> proxyPOSTNamespacedNode_0
    :<|> proxyPOSTNamespacedPod
    :<|> proxyPOSTNamespacedPod_0
    :<|> proxyPOSTNamespacedService
    :<|> proxyPOSTNamespacedService_0
    :<|> proxyPUTNamespacedNode
    :<|> proxyPUTNamespacedNode_0
    :<|> proxyPUTNamespacedPod
    :<|> proxyPUTNamespacedPod_0
    :<|> proxyPUTNamespacedService
    :<|> proxyPUTNamespacedService_0
    :<|> readNamespacedComponentStatus
    :<|> readNamespacedEndpoints
    :<|> readNamespacedEvent
    :<|> readNamespacedLimitRange
    :<|> readNamespacedNamespace
    :<|> readNamespacedNode
    :<|> readNamespacedPersistentVolume
    :<|> readNamespacedPersistentVolumeClaim
    :<|> readNamespacedPod
    :<|> readNamespacedPodLog
    :<|> readNamespacedPodTemplate
    :<|> readNamespacedReplicationController
    :<|> readNamespacedResourceQuota
    :<|> readNamespacedSecret
    :<|> readNamespacedSecurityContextConstraints
    :<|> readNamespacedService
    :<|> readNamespacedServiceAccount
    :<|> replaceNamespacedEndpoints
    :<|> replaceNamespacedEvent
    :<|> replaceNamespacedLimitRange
    :<|> replaceNamespacedNamespace
    :<|> replaceNamespacedNamespaceFinalize
    :<|> replaceNamespacedNamespaceStatus
    :<|> replaceNamespacedNode
    :<|> replaceNamespacedNodeStatus
    :<|> replaceNamespacedPersistentVolume
    :<|> replaceNamespacedPersistentVolumeClaim
    :<|> replaceNamespacedPersistentVolumeClaimStatus
    :<|> replaceNamespacedPersistentVolumeStatus
    :<|> replaceNamespacedPod
    :<|> replaceNamespacedPodStatus
    :<|> replaceNamespacedPodTemplate
    :<|> replaceNamespacedReplicationController
    :<|> replaceNamespacedReplicationControllerStatus
    :<|> replaceNamespacedResourceQuota
    :<|> replaceNamespacedResourceQuotaStatus
    :<|> replaceNamespacedSecret
    :<|> replaceNamespacedSecurityContextConstraints
    :<|> replaceNamespacedService
    :<|> replaceNamespacedServiceAccount
    :<|> watchEndpointsList
    :<|> watchEventList
    :<|> watchLimitRangeList
    :<|> watchNamespacedEndpoints
    :<|> watchNamespacedEndpointsList
    :<|> watchNamespacedEvent
    :<|> watchNamespacedEventList
    :<|> watchNamespacedLimitRange
    :<|> watchNamespacedLimitRangeList
    :<|> watchNamespacedNamespace
    :<|> watchNamespacedNamespaceList
    :<|> watchNamespacedNode
    :<|> watchNamespacedNodeList
    :<|> watchNamespacedPersistentVolume
    :<|> watchNamespacedPersistentVolumeClaim
    :<|> watchNamespacedPersistentVolumeClaimList
    :<|> watchNamespacedPersistentVolumeList
    :<|> watchNamespacedPod
    :<|> watchNamespacedPodList
    :<|> watchNamespacedPodTemplate
    :<|> watchNamespacedPodTemplateList
    :<|> watchNamespacedReplicationController
    :<|> watchNamespacedReplicationControllerList
    :<|> watchNamespacedResourceQuota
    :<|> watchNamespacedResourceQuotaList
    :<|> watchNamespacedSecret
    :<|> watchNamespacedSecretList
    :<|> watchNamespacedSecurityContextConstraints
    :<|> watchNamespacedSecurityContextConstraintsList
    :<|> watchNamespacedService
    :<|> watchNamespacedServiceAccount
    :<|> watchNamespacedServiceAccountList
    :<|> watchNamespacedServiceList
    :<|> watchPersistentVolumeClaimList
    :<|> watchPodList
    :<|> watchPodTemplateList
    :<|> watchReplicationControllerList
    :<|> watchResourceQuotaList
    :<|> watchSecretList
    :<|> watchServiceAccountList
    :<|> watchServiceList
    = client proxyApivApi
