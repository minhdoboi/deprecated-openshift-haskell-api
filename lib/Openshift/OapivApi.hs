{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports -fcontext-stack=590 #-}

module Openshift.OapivApi (
      connectPostNamespacedBinaryBuildRequestOptionsInstantiatebinary
    , connectPostNamespacedStatusWebhooks
    , connectPostNamespacedStatusWebhooks_0
    , createBuild
    , createBuildConfig
    , createDeploymentConfig
    , createDeploymentConfigRollback
    , createImageStream
    , createImageStreamImport
    , createImageStreamMapping
    , createLocalResourceAccessReview
    , createLocalSubjectAccessReview
    , createNamespacedBuild
    , createNamespacedBuildConfig
    , createNamespacedBuildRequestClone
    , createNamespacedBuildRequestInstantiate
    , createNamespacedClusterNetwork
    , createNamespacedClusterPolicy
    , createNamespacedClusterPolicyBinding
    , createNamespacedClusterRole
    , createNamespacedClusterRoleBinding
    , createNamespacedDeploymentConfig
    , createNamespacedDeploymentConfigRollback
    , createNamespacedGroup
    , createNamespacedHostSubnet
    , createNamespacedIdentity
    , createNamespacedImage
    , createNamespacedImageStream
    , createNamespacedImageStreamImport
    , createNamespacedImageStreamMapping
    , createNamespacedLocalResourceAccessReview
    , createNamespacedLocalSubjectAccessReview
    , createNamespacedNetNamespace
    , createNamespacedOAuthAccessToken
    , createNamespacedOAuthAuthorizeToken
    , createNamespacedOAuthClient
    , createNamespacedOAuthClientAuthorization
    , createNamespacedPolicy
    , createNamespacedPolicyBinding
    , createNamespacedProject
    , createNamespacedProjectRequest
    , createNamespacedResourceAccessReview
    , createNamespacedRole
    , createNamespacedRoleBinding
    , createNamespacedRoute
    , createNamespacedSubjectAccessReview
    , createNamespacedTemplate
    , createNamespacedTemplate_0
    , createNamespacedUser
    , createNamespacedUserIdentityMapping
    , createPolicy
    , createPolicyBinding
    , createResourceAccessReview
    , createRole
    , createRoleBinding
    , createRoute
    , createSubjectAccessReview
    , createTemplate
    , createTemplate_0
    , deleteNamespacedBuild
    , deleteNamespacedBuildConfig
    , deleteNamespacedClusterNetwork
    , deleteNamespacedClusterPolicy
    , deleteNamespacedClusterPolicyBinding
    , deleteNamespacedClusterRole
    , deleteNamespacedClusterRoleBinding
    , deleteNamespacedDeploymentConfig
    , deleteNamespacedGroup
    , deleteNamespacedHostSubnet
    , deleteNamespacedIdentity
    , deleteNamespacedImage
    , deleteNamespacedImageStream
    , deleteNamespacedImageStreamTag
    , deleteNamespacedNetNamespace
    , deleteNamespacedOAuthAccessToken
    , deleteNamespacedOAuthAuthorizeToken
    , deleteNamespacedOAuthClient
    , deleteNamespacedOAuthClientAuthorization
    , deleteNamespacedPolicy
    , deleteNamespacedPolicyBinding
    , deleteNamespacedProject
    , deleteNamespacedRole
    , deleteNamespacedRoleBinding
    , deleteNamespacedRoute
    , deleteNamespacedTemplate
    , deleteNamespacedUser
    , deleteNamespacedUserIdentityMapping
    , deletecollectionNamespacedBuild
    , deletecollectionNamespacedBuildConfig
    , deletecollectionNamespacedClusterNetwork
    , deletecollectionNamespacedClusterPolicy
    , deletecollectionNamespacedClusterPolicyBinding
    , deletecollectionNamespacedDeploymentConfig
    , deletecollectionNamespacedGroup
    , deletecollectionNamespacedHostSubnet
    , deletecollectionNamespacedIdentity
    , deletecollectionNamespacedImage
    , deletecollectionNamespacedImageStream
    , deletecollectionNamespacedNetNamespace
    , deletecollectionNamespacedOAuthClient
    , deletecollectionNamespacedOAuthClientAuthorization
    , deletecollectionNamespacedPolicy
    , deletecollectionNamespacedPolicyBinding
    , deletecollectionNamespacedRoute
    , deletecollectionNamespacedTemplate
    , deletecollectionNamespacedUser
    , getAPIResources
    , listBuild
    , listBuildConfig
    , listDeploymentConfig
    , listImageStream
    , listImageStreamTag
    , listNamespacedBuild
    , listNamespacedBuildConfig
    , listNamespacedClusterNetwork
    , listNamespacedClusterPolicy
    , listNamespacedClusterPolicyBinding
    , listNamespacedClusterRole
    , listNamespacedClusterRoleBinding
    , listNamespacedDeploymentConfig
    , listNamespacedGroup
    , listNamespacedHostSubnet
    , listNamespacedIdentity
    , listNamespacedImage
    , listNamespacedImageStream
    , listNamespacedImageStreamTag
    , listNamespacedNetNamespace
    , listNamespacedOAuthAccessToken
    , listNamespacedOAuthAuthorizeToken
    , listNamespacedOAuthClient
    , listNamespacedOAuthClientAuthorization
    , listNamespacedPolicy
    , listNamespacedPolicyBinding
    , listNamespacedProject
    , listNamespacedProjectRequest
    , listNamespacedRole
    , listNamespacedRoleBinding
    , listNamespacedRoute
    , listNamespacedTemplate
    , listNamespacedUser
    , listPolicy
    , listPolicyBinding
    , listRole
    , listRoleBinding
    , listRoute
    , listTemplate
    , patchNamespacedBuild
    , patchNamespacedBuildConfig
    , patchNamespacedClusterNetwork
    , patchNamespacedClusterPolicy
    , patchNamespacedClusterPolicyBinding
    , patchNamespacedClusterRole
    , patchNamespacedClusterRoleBinding
    , patchNamespacedDeploymentConfig
    , patchNamespacedGroup
    , patchNamespacedHostSubnet
    , patchNamespacedIdentity
    , patchNamespacedImage
    , patchNamespacedImageStream
    , patchNamespacedImageStreamTag
    , patchNamespacedNetNamespace
    , patchNamespacedOAuthClient
    , patchNamespacedOAuthClientAuthorization
    , patchNamespacedPolicy
    , patchNamespacedPolicyBinding
    , patchNamespacedProject
    , patchNamespacedRole
    , patchNamespacedRoleBinding
    , patchNamespacedRoute
    , patchNamespacedScaleScale
    , patchNamespacedTemplate
    , patchNamespacedUser
    , patchNamespacedUserIdentityMapping
    , readNamespacedBuild
    , readNamespacedBuildConfig
    , readNamespacedBuildLogLog
    , readNamespacedClusterNetwork
    , readNamespacedClusterPolicy
    , readNamespacedClusterPolicyBinding
    , readNamespacedClusterRole
    , readNamespacedClusterRoleBinding
    , readNamespacedDeploymentConfig
    , readNamespacedDeploymentConfig_0
    , readNamespacedDeploymentLogLog
    , readNamespacedGroup
    , readNamespacedHostSubnet
    , readNamespacedIdentity
    , readNamespacedImage
    , readNamespacedImageStream
    , readNamespacedImageStreamImage
    , readNamespacedImageStreamTag
    , readNamespacedNetNamespace
    , readNamespacedOAuthAccessToken
    , readNamespacedOAuthAuthorizeToken
    , readNamespacedOAuthClient
    , readNamespacedOAuthClientAuthorization
    , readNamespacedPolicy
    , readNamespacedPolicyBinding
    , readNamespacedProject
    , readNamespacedRole
    , readNamespacedRoleBinding
    , readNamespacedRoute
    , readNamespacedScaleScale
    , readNamespacedSecretListSecrets
    , readNamespacedTemplate
    , readNamespacedUser
    , readNamespacedUserIdentityMapping
    , replaceNamespacedBuild
    , replaceNamespacedBuildConfig
    , replaceNamespacedBuildDetails
    , replaceNamespacedClusterNetwork
    , replaceNamespacedClusterPolicy
    , replaceNamespacedClusterPolicyBinding
    , replaceNamespacedClusterRole
    , replaceNamespacedClusterRoleBinding
    , replaceNamespacedDeploymentConfig
    , replaceNamespacedGroup
    , replaceNamespacedHostSubnet
    , replaceNamespacedIdentity
    , replaceNamespacedImage
    , replaceNamespacedImageStream
    , replaceNamespacedImageStreamStatus
    , replaceNamespacedImageStreamTag
    , replaceNamespacedNetNamespace
    , replaceNamespacedOAuthClient
    , replaceNamespacedOAuthClientAuthorization
    , replaceNamespacedPolicy
    , replaceNamespacedPolicyBinding
    , replaceNamespacedProject
    , replaceNamespacedRole
    , replaceNamespacedRoleBinding
    , replaceNamespacedRoute
    , replaceNamespacedRouteStatus
    , replaceNamespacedScaleScale
    , replaceNamespacedTemplate
    , replaceNamespacedUser
    , replaceNamespacedUserIdentityMapping
    , watchBuildConfigList
    , watchBuildList
    , watchDeploymentConfigList
    , watchImageStreamList
    , watchNamespacedBuild
    , watchNamespacedBuildConfig
    , watchNamespacedBuildConfigList
    , watchNamespacedBuildList
    , watchNamespacedClusterNetwork
    , watchNamespacedClusterNetworkList
    , watchNamespacedClusterPolicy
    , watchNamespacedClusterPolicyBinding
    , watchNamespacedClusterPolicyBindingList
    , watchNamespacedClusterPolicyList
    , watchNamespacedDeploymentConfig
    , watchNamespacedDeploymentConfigList
    , watchNamespacedGroup
    , watchNamespacedGroupList
    , watchNamespacedHostSubnet
    , watchNamespacedHostSubnetList
    , watchNamespacedIdentity
    , watchNamespacedIdentityList
    , watchNamespacedImage
    , watchNamespacedImageList
    , watchNamespacedImageStream
    , watchNamespacedImageStreamList
    , watchNamespacedNetNamespace
    , watchNamespacedNetNamespaceList
    , watchNamespacedOAuthClient
    , watchNamespacedOAuthClientAuthorization
    , watchNamespacedOAuthClientAuthorizationList
    , watchNamespacedOAuthClientList
    , watchNamespacedPolicy
    , watchNamespacedPolicyBinding
    , watchNamespacedPolicyBindingList
    , watchNamespacedPolicyList
    , watchNamespacedRoute
    , watchNamespacedRouteList
    , watchNamespacedTemplate
    , watchNamespacedTemplateList
    , watchNamespacedUser
    , watchNamespacedUserList
    , watchPolicyBindingList
    , watchPolicyList
    , watchRouteList
    , watchTemplateList
    , proxyOapivApi
    , OapivApi
    ) where

import GHC.Generics
import Data.Proxy
import qualified Servant.API as Servant
import Network.HTTP.Client (Manager)
import Servant.API ((:<|>)(..),(:>))
import Servant.Common.BaseUrl (BaseUrl(..))
import Servant.Client
import Control.Monad.Except (ExceptT)
import Openshift.Utils
import Openshift.V1.Build
import Openshift.V1.BuildConfig
import Openshift.V1.DeploymentConfig
import Openshift.V1.DeploymentConfigRollback
import Openshift.V1.ImageStream
import Openshift.V1.ImageStreamImport
import Openshift.V1.ImageStreamMapping
import Openshift.V1.LocalResourceAccessReview
import Openshift.V1.LocalSubjectAccessReview
import Openshift.V1.BuildRequest
import Openshift.V1.ClusterNetwork
import Openshift.V1.ClusterPolicy
import Openshift.V1.ClusterPolicyBinding
import Openshift.V1.ClusterRole
import Openshift.V1.ClusterRoleBinding
import Openshift.V1.Group
import Openshift.V1.HostSubnet
import Openshift.V1.Identity
import Openshift.V1.Image
import Openshift.V1.NetNamespace
import Openshift.V1.OAuthAccessToken
import Openshift.V1.OAuthAuthorizeToken
import Openshift.V1.OAuthClient
import Openshift.V1.OAuthClientAuthorization
import Openshift.V1.Policy
import Openshift.V1.PolicyBinding
import Openshift.V1.Project
import Openshift.V1.ProjectRequest
import Openshift.V1.ResourceAccessReview
import Openshift.V1.Role
import Openshift.V1.RoleBinding
import Openshift.V1.Route
import Openshift.V1.SubjectAccessReview
import Openshift.V1.Template
import Openshift.V1.User
import Openshift.V1.UserIdentityMapping
import Openshift.Unversioned.Status
import Openshift.V1.DeleteOptions
import Openshift.V1.BuildList
import Openshift.V1.BuildConfigList
import Openshift.V1.DeploymentConfigList
import Openshift.V1.ImageStreamList
import Openshift.V1.ImageStreamTagList
import Openshift.V1.ClusterNetworkList
import Openshift.V1.ClusterPolicyList
import Openshift.V1.ClusterPolicyBindingList
import Openshift.V1.ClusterRoleList
import Openshift.V1.ClusterRoleBindingList
import Openshift.V1.GroupList
import Openshift.V1.HostSubnetList
import Openshift.V1.IdentityList
import Openshift.V1.ImageList
import Openshift.V1.NetNamespaceList
import Openshift.V1.OAuthAccessTokenList
import Openshift.V1.OAuthAuthorizeTokenList
import Openshift.V1.OAuthClientList
import Openshift.V1.OAuthClientAuthorizationList
import Openshift.V1.PolicyList
import Openshift.V1.PolicyBindingList
import Openshift.V1.ProjectList
import Openshift.V1.RoleList
import Openshift.V1.RoleBindingList
import Openshift.V1.RouteList
import Openshift.V1.TemplateList
import Openshift.V1.UserList
import Openshift.Unversioned.Patch
import Openshift.V1.ImageStreamTag
import Openshift.V1beta1.Scale
import Openshift.V1.BuildLog
import Openshift.V1.DeploymentLog
import Openshift.V1.ImageStreamImage
import Openshift.V1.SecretList
import Openshift.Json.WatchEvent





























































































































































































































































































type OapivApi = "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "buildconfigs" :> Servant.Capture "name" String :> "instantiatebinary" :> Servant.QueryParam "asFile" String :> Servant.QueryParam "revision.commit" String :> Servant.QueryParam "revision.message" String :> Servant.QueryParam "revision.authorName" String :> Servant.QueryParam "revision.authorEmail" String :> Servant.QueryParam "revision.committerName" String :> Servant.QueryParam "revision.committerEmail" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] String -- connectPostNamespacedBinaryBuildRequestOptionsInstantiatebinary
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "buildconfigs" :> Servant.Capture "name" String :> "webhooks" :> Servant.QueryParam "path" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] String -- connectPostNamespacedStatusWebhooks
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "buildconfigs" :> Servant.Capture "name" String :> "webhooks" :> Servant.Capture "path" String :> Servant.QueryParam "path" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] String -- connectPostNamespacedStatusWebhooks_0
    :<|> "oapi" :> "v1" :> "builds" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Build :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Build -- createBuild
    :<|> "oapi" :> "v1" :> "buildconfigs" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] BuildConfig :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] BuildConfig -- createBuildConfig
    :<|> "oapi" :> "v1" :> "deploymentconfigs" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeploymentConfig :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] DeploymentConfig -- createDeploymentConfig
    :<|> "oapi" :> "v1" :> "deploymentconfigrollbacks" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeploymentConfigRollback :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] DeploymentConfigRollback -- createDeploymentConfigRollback
    :<|> "oapi" :> "v1" :> "imagestreams" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] ImageStream :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ImageStream -- createImageStream
    :<|> "oapi" :> "v1" :> "imagestreamimports" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] ImageStreamImport :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ImageStreamImport -- createImageStreamImport
    :<|> "oapi" :> "v1" :> "imagestreammappings" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] ImageStreamMapping :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ImageStreamMapping -- createImageStreamMapping
    :<|> "oapi" :> "v1" :> "localresourceaccessreviews" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] LocalResourceAccessReview :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] LocalResourceAccessReview -- createLocalResourceAccessReview
    :<|> "oapi" :> "v1" :> "localsubjectaccessreviews" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] LocalSubjectAccessReview :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] LocalSubjectAccessReview -- createLocalSubjectAccessReview
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "builds" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Build :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Build -- createNamespacedBuild
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "buildconfigs" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] BuildConfig :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] BuildConfig -- createNamespacedBuildConfig
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "builds" :> Servant.Capture "name" String :> "clone" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] BuildRequest :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] BuildRequest -- createNamespacedBuildRequestClone
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "buildconfigs" :> Servant.Capture "name" String :> "instantiate" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] BuildRequest :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] BuildRequest -- createNamespacedBuildRequestInstantiate
    :<|> "oapi" :> "v1" :> "clusternetworks" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] ClusterNetwork :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ClusterNetwork -- createNamespacedClusterNetwork
    :<|> "oapi" :> "v1" :> "clusterpolicies" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] ClusterPolicy :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ClusterPolicy -- createNamespacedClusterPolicy
    :<|> "oapi" :> "v1" :> "clusterpolicybindings" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] ClusterPolicyBinding :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ClusterPolicyBinding -- createNamespacedClusterPolicyBinding
    :<|> "oapi" :> "v1" :> "clusterroles" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] ClusterRole :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ClusterRole -- createNamespacedClusterRole
    :<|> "oapi" :> "v1" :> "clusterrolebindings" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] ClusterRoleBinding :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ClusterRoleBinding -- createNamespacedClusterRoleBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "deploymentconfigs" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeploymentConfig :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] DeploymentConfig -- createNamespacedDeploymentConfig
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "deploymentconfigrollbacks" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeploymentConfigRollback :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] DeploymentConfigRollback -- createNamespacedDeploymentConfigRollback
    :<|> "oapi" :> "v1" :> "groups" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Group :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Group -- createNamespacedGroup
    :<|> "oapi" :> "v1" :> "hostsubnets" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] HostSubnet :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] HostSubnet -- createNamespacedHostSubnet
    :<|> "oapi" :> "v1" :> "identities" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Identity :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Identity -- createNamespacedIdentity
    :<|> "oapi" :> "v1" :> "images" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Image :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Image -- createNamespacedImage
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "imagestreams" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] ImageStream :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ImageStream -- createNamespacedImageStream
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "imagestreamimports" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] ImageStreamImport :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ImageStreamImport -- createNamespacedImageStreamImport
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "imagestreammappings" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] ImageStreamMapping :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ImageStreamMapping -- createNamespacedImageStreamMapping
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "localresourceaccessreviews" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] LocalResourceAccessReview :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] LocalResourceAccessReview -- createNamespacedLocalResourceAccessReview
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "localsubjectaccessreviews" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] LocalSubjectAccessReview :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] LocalSubjectAccessReview -- createNamespacedLocalSubjectAccessReview
    :<|> "oapi" :> "v1" :> "netnamespaces" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] NetNamespace :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] NetNamespace -- createNamespacedNetNamespace
    :<|> "oapi" :> "v1" :> "oauthaccesstokens" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] OAuthAccessToken :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] OAuthAccessToken -- createNamespacedOAuthAccessToken
    :<|> "oapi" :> "v1" :> "oauthauthorizetokens" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] OAuthAuthorizeToken :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] OAuthAuthorizeToken -- createNamespacedOAuthAuthorizeToken
    :<|> "oapi" :> "v1" :> "oauthclients" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] OAuthClient :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] OAuthClient -- createNamespacedOAuthClient
    :<|> "oapi" :> "v1" :> "oauthclientauthorizations" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] OAuthClientAuthorization :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] OAuthClientAuthorization -- createNamespacedOAuthClientAuthorization
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "policies" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Policy :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Policy -- createNamespacedPolicy
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "policybindings" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] PolicyBinding :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] PolicyBinding -- createNamespacedPolicyBinding
    :<|> "oapi" :> "v1" :> "projects" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Project :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Project -- createNamespacedProject
    :<|> "oapi" :> "v1" :> "projectrequests" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] ProjectRequest :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ProjectRequest -- createNamespacedProjectRequest
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "resourceaccessreviews" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] ResourceAccessReview :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ResourceAccessReview -- createNamespacedResourceAccessReview
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "roles" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Role :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Role -- createNamespacedRole
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "rolebindings" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] RoleBinding :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] RoleBinding -- createNamespacedRoleBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "routes" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Route :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Route -- createNamespacedRoute
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "subjectaccessreviews" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] SubjectAccessReview :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] SubjectAccessReview -- createNamespacedSubjectAccessReview
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "processedtemplates" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Template :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Template -- createNamespacedTemplate
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "templates" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Template :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Template -- createNamespacedTemplate_0
    :<|> "oapi" :> "v1" :> "users" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] User :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] User -- createNamespacedUser
    :<|> "oapi" :> "v1" :> "useridentitymappings" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] UserIdentityMapping :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] UserIdentityMapping -- createNamespacedUserIdentityMapping
    :<|> "oapi" :> "v1" :> "policies" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Policy :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Policy -- createPolicy
    :<|> "oapi" :> "v1" :> "policybindings" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] PolicyBinding :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] PolicyBinding -- createPolicyBinding
    :<|> "oapi" :> "v1" :> "resourceaccessreviews" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] ResourceAccessReview :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ResourceAccessReview -- createResourceAccessReview
    :<|> "oapi" :> "v1" :> "roles" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Role :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Role -- createRole
    :<|> "oapi" :> "v1" :> "rolebindings" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] RoleBinding :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] RoleBinding -- createRoleBinding
    :<|> "oapi" :> "v1" :> "routes" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Route :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Route -- createRoute
    :<|> "oapi" :> "v1" :> "subjectaccessreviews" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] SubjectAccessReview :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] SubjectAccessReview -- createSubjectAccessReview
    :<|> "oapi" :> "v1" :> "processedtemplates" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Template :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Template -- createTemplate
    :<|> "oapi" :> "v1" :> "templates" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Template :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Template -- createTemplate_0
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "builds" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedBuild
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "buildconfigs" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedBuildConfig
    :<|> "oapi" :> "v1" :> "clusternetworks" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedClusterNetwork
    :<|> "oapi" :> "v1" :> "clusterpolicies" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedClusterPolicy
    :<|> "oapi" :> "v1" :> "clusterpolicybindings" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedClusterPolicyBinding
    :<|> "oapi" :> "v1" :> "clusterroles" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedClusterRole
    :<|> "oapi" :> "v1" :> "clusterrolebindings" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedClusterRoleBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "deploymentconfigs" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedDeploymentConfig
    :<|> "oapi" :> "v1" :> "groups" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedGroup
    :<|> "oapi" :> "v1" :> "hostsubnets" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedHostSubnet
    :<|> "oapi" :> "v1" :> "identities" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedIdentity
    :<|> "oapi" :> "v1" :> "images" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedImage
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "imagestreams" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedImageStream
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "imagestreamtags" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedImageStreamTag
    :<|> "oapi" :> "v1" :> "netnamespaces" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedNetNamespace
    :<|> "oapi" :> "v1" :> "oauthaccesstokens" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedOAuthAccessToken
    :<|> "oapi" :> "v1" :> "oauthauthorizetokens" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedOAuthAuthorizeToken
    :<|> "oapi" :> "v1" :> "oauthclients" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedOAuthClient
    :<|> "oapi" :> "v1" :> "oauthclientauthorizations" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedOAuthClientAuthorization
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "policies" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedPolicy
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "policybindings" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedPolicyBinding
    :<|> "oapi" :> "v1" :> "projects" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedProject
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "roles" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedRole
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "rolebindings" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedRoleBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "routes" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedRoute
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "templates" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedTemplate
    :<|> "oapi" :> "v1" :> "users" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedUser
    :<|> "oapi" :> "v1" :> "useridentitymappings" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedUserIdentityMapping
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "builds" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedBuild
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "buildconfigs" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedBuildConfig
    :<|> "oapi" :> "v1" :> "clusternetworks" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedClusterNetwork
    :<|> "oapi" :> "v1" :> "clusterpolicies" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedClusterPolicy
    :<|> "oapi" :> "v1" :> "clusterpolicybindings" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedClusterPolicyBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "deploymentconfigs" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedDeploymentConfig
    :<|> "oapi" :> "v1" :> "groups" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedGroup
    :<|> "oapi" :> "v1" :> "hostsubnets" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedHostSubnet
    :<|> "oapi" :> "v1" :> "identities" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedIdentity
    :<|> "oapi" :> "v1" :> "images" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedImage
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "imagestreams" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedImageStream
    :<|> "oapi" :> "v1" :> "netnamespaces" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedNetNamespace
    :<|> "oapi" :> "v1" :> "oauthclients" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedOAuthClient
    :<|> "oapi" :> "v1" :> "oauthclientauthorizations" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedOAuthClientAuthorization
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "policies" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedPolicy
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "policybindings" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedPolicyBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "routes" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedRoute
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "templates" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedTemplate
    :<|> "oapi" :> "v1" :> "users" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedUser
    :<|> "oapi" :> "v1" :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] () -- getAPIResources
    :<|> "oapi" :> "v1" :> "builds" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] BuildList -- listBuild
    :<|> "oapi" :> "v1" :> "buildconfigs" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] BuildConfigList -- listBuildConfig
    :<|> "oapi" :> "v1" :> "deploymentconfigs" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] DeploymentConfigList -- listDeploymentConfig
    :<|> "oapi" :> "v1" :> "imagestreams" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ImageStreamList -- listImageStream
    :<|> "oapi" :> "v1" :> "imagestreamtags" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ImageStreamTagList -- listImageStreamTag
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "builds" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] BuildList -- listNamespacedBuild
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "buildconfigs" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] BuildConfigList -- listNamespacedBuildConfig
    :<|> "oapi" :> "v1" :> "clusternetworks" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ClusterNetworkList -- listNamespacedClusterNetwork
    :<|> "oapi" :> "v1" :> "clusterpolicies" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ClusterPolicyList -- listNamespacedClusterPolicy
    :<|> "oapi" :> "v1" :> "clusterpolicybindings" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ClusterPolicyBindingList -- listNamespacedClusterPolicyBinding
    :<|> "oapi" :> "v1" :> "clusterroles" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ClusterRoleList -- listNamespacedClusterRole
    :<|> "oapi" :> "v1" :> "clusterrolebindings" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ClusterRoleBindingList -- listNamespacedClusterRoleBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "deploymentconfigs" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] DeploymentConfigList -- listNamespacedDeploymentConfig
    :<|> "oapi" :> "v1" :> "groups" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] GroupList -- listNamespacedGroup
    :<|> "oapi" :> "v1" :> "hostsubnets" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] HostSubnetList -- listNamespacedHostSubnet
    :<|> "oapi" :> "v1" :> "identities" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] IdentityList -- listNamespacedIdentity
    :<|> "oapi" :> "v1" :> "images" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ImageList -- listNamespacedImage
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "imagestreams" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ImageStreamList -- listNamespacedImageStream
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "imagestreamtags" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ImageStreamTagList -- listNamespacedImageStreamTag
    :<|> "oapi" :> "v1" :> "netnamespaces" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] NetNamespaceList -- listNamespacedNetNamespace
    :<|> "oapi" :> "v1" :> "oauthaccesstokens" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] OAuthAccessTokenList -- listNamespacedOAuthAccessToken
    :<|> "oapi" :> "v1" :> "oauthauthorizetokens" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] OAuthAuthorizeTokenList -- listNamespacedOAuthAuthorizeToken
    :<|> "oapi" :> "v1" :> "oauthclients" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] OAuthClientList -- listNamespacedOAuthClient
    :<|> "oapi" :> "v1" :> "oauthclientauthorizations" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] OAuthClientAuthorizationList -- listNamespacedOAuthClientAuthorization
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "policies" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] PolicyList -- listNamespacedPolicy
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "policybindings" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] PolicyBindingList -- listNamespacedPolicyBinding
    :<|> "oapi" :> "v1" :> "projects" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ProjectList -- listNamespacedProject
    :<|> "oapi" :> "v1" :> "projectrequests" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Status -- listNamespacedProjectRequest
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "roles" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] RoleList -- listNamespacedRole
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "rolebindings" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] RoleBindingList -- listNamespacedRoleBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "routes" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] RouteList -- listNamespacedRoute
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "templates" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] TemplateList -- listNamespacedTemplate
    :<|> "oapi" :> "v1" :> "users" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] UserList -- listNamespacedUser
    :<|> "oapi" :> "v1" :> "policies" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] PolicyList -- listPolicy
    :<|> "oapi" :> "v1" :> "policybindings" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] PolicyBindingList -- listPolicyBinding
    :<|> "oapi" :> "v1" :> "roles" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] RoleList -- listRole
    :<|> "oapi" :> "v1" :> "rolebindings" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] RoleBindingList -- listRoleBinding
    :<|> "oapi" :> "v1" :> "routes" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] RouteList -- listRoute
    :<|> "oapi" :> "v1" :> "templates" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] TemplateList -- listTemplate
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "builds" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Build -- patchNamespacedBuild
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "buildconfigs" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] BuildConfig -- patchNamespacedBuildConfig
    :<|> "oapi" :> "v1" :> "clusternetworks" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] ClusterNetwork -- patchNamespacedClusterNetwork
    :<|> "oapi" :> "v1" :> "clusterpolicies" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] ClusterPolicy -- patchNamespacedClusterPolicy
    :<|> "oapi" :> "v1" :> "clusterpolicybindings" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] ClusterPolicyBinding -- patchNamespacedClusterPolicyBinding
    :<|> "oapi" :> "v1" :> "clusterroles" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] ClusterRole -- patchNamespacedClusterRole
    :<|> "oapi" :> "v1" :> "clusterrolebindings" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] ClusterRoleBinding -- patchNamespacedClusterRoleBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "deploymentconfigs" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] DeploymentConfig -- patchNamespacedDeploymentConfig
    :<|> "oapi" :> "v1" :> "groups" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Group -- patchNamespacedGroup
    :<|> "oapi" :> "v1" :> "hostsubnets" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] HostSubnet -- patchNamespacedHostSubnet
    :<|> "oapi" :> "v1" :> "identities" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Identity -- patchNamespacedIdentity
    :<|> "oapi" :> "v1" :> "images" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Image -- patchNamespacedImage
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "imagestreams" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] ImageStream -- patchNamespacedImageStream
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "imagestreamtags" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] ImageStreamTag -- patchNamespacedImageStreamTag
    :<|> "oapi" :> "v1" :> "netnamespaces" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] NetNamespace -- patchNamespacedNetNamespace
    :<|> "oapi" :> "v1" :> "oauthclients" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] OAuthClient -- patchNamespacedOAuthClient
    :<|> "oapi" :> "v1" :> "oauthclientauthorizations" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] OAuthClientAuthorization -- patchNamespacedOAuthClientAuthorization
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "policies" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Policy -- patchNamespacedPolicy
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "policybindings" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] PolicyBinding -- patchNamespacedPolicyBinding
    :<|> "oapi" :> "v1" :> "projects" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Project -- patchNamespacedProject
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "roles" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Role -- patchNamespacedRole
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "rolebindings" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] RoleBinding -- patchNamespacedRoleBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "routes" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Route -- patchNamespacedRoute
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "deploymentconfigs" :> Servant.Capture "name" String :> "scale" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Scale -- patchNamespacedScaleScale
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "templates" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Template -- patchNamespacedTemplate
    :<|> "oapi" :> "v1" :> "users" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] User -- patchNamespacedUser
    :<|> "oapi" :> "v1" :> "useridentitymappings" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] UserIdentityMapping -- patchNamespacedUserIdentityMapping
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "builds" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Build -- readNamespacedBuild
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "buildconfigs" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] BuildConfig -- readNamespacedBuildConfig
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "builds" :> Servant.Capture "name" String :> "log" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "container" String :> Servant.QueryParam "follow" Bool :> Servant.QueryParam "previous" Bool :> Servant.QueryParam "sinceSeconds" Integer :> Servant.QueryParam "sinceTime" String :> Servant.QueryParam "timestamps" Bool :> Servant.QueryParam "tailLines" Integer :> Servant.QueryParam "limitBytes" Integer :> Servant.QueryParam "nowait" Bool :> Servant.QueryParam "version" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] BuildLog -- readNamespacedBuildLogLog
    :<|> "oapi" :> "v1" :> "clusternetworks" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ClusterNetwork -- readNamespacedClusterNetwork
    :<|> "oapi" :> "v1" :> "clusterpolicies" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ClusterPolicy -- readNamespacedClusterPolicy
    :<|> "oapi" :> "v1" :> "clusterpolicybindings" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ClusterPolicyBinding -- readNamespacedClusterPolicyBinding
    :<|> "oapi" :> "v1" :> "clusterroles" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ClusterRole -- readNamespacedClusterRole
    :<|> "oapi" :> "v1" :> "clusterrolebindings" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ClusterRoleBinding -- readNamespacedClusterRoleBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "deploymentconfigs" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] DeploymentConfig -- readNamespacedDeploymentConfig
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "generatedeploymentconfigs" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] DeploymentConfig -- readNamespacedDeploymentConfig_0
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "deploymentconfigs" :> Servant.Capture "name" String :> "log" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "container" String :> Servant.QueryParam "follow" Bool :> Servant.QueryParam "previous" Bool :> Servant.QueryParam "sinceSeconds" Integer :> Servant.QueryParam "sinceTime" String :> Servant.QueryParam "timestamps" Bool :> Servant.QueryParam "tailLines" Integer :> Servant.QueryParam "limitBytes" Integer :> Servant.QueryParam "nowait" Bool :> Servant.QueryParam "version" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] DeploymentLog -- readNamespacedDeploymentLogLog
    :<|> "oapi" :> "v1" :> "groups" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Group -- readNamespacedGroup
    :<|> "oapi" :> "v1" :> "hostsubnets" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] HostSubnet -- readNamespacedHostSubnet
    :<|> "oapi" :> "v1" :> "identities" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Identity -- readNamespacedIdentity
    :<|> "oapi" :> "v1" :> "images" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Image -- readNamespacedImage
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "imagestreams" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ImageStream -- readNamespacedImageStream
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "imagestreamimages" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ImageStreamImage -- readNamespacedImageStreamImage
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "imagestreamtags" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ImageStreamTag -- readNamespacedImageStreamTag
    :<|> "oapi" :> "v1" :> "netnamespaces" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] NetNamespace -- readNamespacedNetNamespace
    :<|> "oapi" :> "v1" :> "oauthaccesstokens" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] OAuthAccessToken -- readNamespacedOAuthAccessToken
    :<|> "oapi" :> "v1" :> "oauthauthorizetokens" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] OAuthAuthorizeToken -- readNamespacedOAuthAuthorizeToken
    :<|> "oapi" :> "v1" :> "oauthclients" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] OAuthClient -- readNamespacedOAuthClient
    :<|> "oapi" :> "v1" :> "oauthclientauthorizations" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] OAuthClientAuthorization -- readNamespacedOAuthClientAuthorization
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "policies" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Policy -- readNamespacedPolicy
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "policybindings" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] PolicyBinding -- readNamespacedPolicyBinding
    :<|> "oapi" :> "v1" :> "projects" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Project -- readNamespacedProject
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "roles" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Role -- readNamespacedRole
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "rolebindings" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] RoleBinding -- readNamespacedRoleBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "routes" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Route -- readNamespacedRoute
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "deploymentconfigs" :> Servant.Capture "name" String :> "scale" :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Scale -- readNamespacedScaleScale
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "imagestreams" :> Servant.Capture "name" String :> "secrets" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] SecretList -- readNamespacedSecretListSecrets
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "templates" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Template -- readNamespacedTemplate
    :<|> "oapi" :> "v1" :> "users" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] User -- readNamespacedUser
    :<|> "oapi" :> "v1" :> "useridentitymappings" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] UserIdentityMapping -- readNamespacedUserIdentityMapping
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "builds" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Build :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Build -- replaceNamespacedBuild
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "buildconfigs" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] BuildConfig :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] BuildConfig -- replaceNamespacedBuildConfig
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "builds" :> Servant.Capture "name" String :> "details" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Build :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Build -- replaceNamespacedBuildDetails
    :<|> "oapi" :> "v1" :> "clusternetworks" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] ClusterNetwork :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] ClusterNetwork -- replaceNamespacedClusterNetwork
    :<|> "oapi" :> "v1" :> "clusterpolicies" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] ClusterPolicy :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] ClusterPolicy -- replaceNamespacedClusterPolicy
    :<|> "oapi" :> "v1" :> "clusterpolicybindings" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] ClusterPolicyBinding :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] ClusterPolicyBinding -- replaceNamespacedClusterPolicyBinding
    :<|> "oapi" :> "v1" :> "clusterroles" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] ClusterRole :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] ClusterRole -- replaceNamespacedClusterRole
    :<|> "oapi" :> "v1" :> "clusterrolebindings" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] ClusterRoleBinding :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] ClusterRoleBinding -- replaceNamespacedClusterRoleBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "deploymentconfigs" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] DeploymentConfig :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] DeploymentConfig -- replaceNamespacedDeploymentConfig
    :<|> "oapi" :> "v1" :> "groups" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Group :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Group -- replaceNamespacedGroup
    :<|> "oapi" :> "v1" :> "hostsubnets" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] HostSubnet :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] HostSubnet -- replaceNamespacedHostSubnet
    :<|> "oapi" :> "v1" :> "identities" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Identity :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Identity -- replaceNamespacedIdentity
    :<|> "oapi" :> "v1" :> "images" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Image :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Image -- replaceNamespacedImage
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "imagestreams" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] ImageStream :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] ImageStream -- replaceNamespacedImageStream
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "imagestreams" :> Servant.Capture "name" String :> "status" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] ImageStream :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] ImageStream -- replaceNamespacedImageStreamStatus
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "imagestreamtags" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] ImageStreamTag :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] ImageStreamTag -- replaceNamespacedImageStreamTag
    :<|> "oapi" :> "v1" :> "netnamespaces" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] NetNamespace :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] NetNamespace -- replaceNamespacedNetNamespace
    :<|> "oapi" :> "v1" :> "oauthclients" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] OAuthClient :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] OAuthClient -- replaceNamespacedOAuthClient
    :<|> "oapi" :> "v1" :> "oauthclientauthorizations" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] OAuthClientAuthorization :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] OAuthClientAuthorization -- replaceNamespacedOAuthClientAuthorization
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "policies" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Policy :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Policy -- replaceNamespacedPolicy
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "policybindings" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] PolicyBinding :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] PolicyBinding -- replaceNamespacedPolicyBinding
    :<|> "oapi" :> "v1" :> "projects" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Project :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Project -- replaceNamespacedProject
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "roles" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Role :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Role -- replaceNamespacedRole
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "rolebindings" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] RoleBinding :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] RoleBinding -- replaceNamespacedRoleBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "routes" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Route :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Route -- replaceNamespacedRoute
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "routes" :> Servant.Capture "name" String :> "status" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Route :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Route -- replaceNamespacedRouteStatus
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "deploymentconfigs" :> Servant.Capture "name" String :> "scale" :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Scale :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Scale -- replaceNamespacedScaleScale
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" String :> "templates" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] Template :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Template -- replaceNamespacedTemplate
    :<|> "oapi" :> "v1" :> "users" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] User :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] User -- replaceNamespacedUser
    :<|> "oapi" :> "v1" :> "useridentitymappings" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.ReqBody '[Servant.JSON] UserIdentityMapping :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] UserIdentityMapping -- replaceNamespacedUserIdentityMapping
    :<|> "oapi" :> "v1" :> "watch" :> "buildconfigs" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchBuildConfigList
    :<|> "oapi" :> "v1" :> "watch" :> "builds" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchBuildList
    :<|> "oapi" :> "v1" :> "watch" :> "deploymentconfigs" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchDeploymentConfigList
    :<|> "oapi" :> "v1" :> "watch" :> "imagestreams" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchImageStreamList
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" String :> "builds" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedBuild
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" String :> "buildconfigs" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedBuildConfig
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" String :> "buildconfigs" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedBuildConfigList
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" String :> "builds" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedBuildList
    :<|> "oapi" :> "v1" :> "watch" :> "clusternetworks" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedClusterNetwork
    :<|> "oapi" :> "v1" :> "watch" :> "clusternetworks" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedClusterNetworkList
    :<|> "oapi" :> "v1" :> "watch" :> "clusterpolicies" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedClusterPolicy
    :<|> "oapi" :> "v1" :> "watch" :> "clusterpolicybindings" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedClusterPolicyBinding
    :<|> "oapi" :> "v1" :> "watch" :> "clusterpolicybindings" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedClusterPolicyBindingList
    :<|> "oapi" :> "v1" :> "watch" :> "clusterpolicies" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedClusterPolicyList
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" String :> "deploymentconfigs" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedDeploymentConfig
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" String :> "deploymentconfigs" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedDeploymentConfigList
    :<|> "oapi" :> "v1" :> "watch" :> "groups" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedGroup
    :<|> "oapi" :> "v1" :> "watch" :> "groups" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedGroupList
    :<|> "oapi" :> "v1" :> "watch" :> "hostsubnets" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedHostSubnet
    :<|> "oapi" :> "v1" :> "watch" :> "hostsubnets" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedHostSubnetList
    :<|> "oapi" :> "v1" :> "watch" :> "identities" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedIdentity
    :<|> "oapi" :> "v1" :> "watch" :> "identities" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedIdentityList
    :<|> "oapi" :> "v1" :> "watch" :> "images" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedImage
    :<|> "oapi" :> "v1" :> "watch" :> "images" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedImageList
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" String :> "imagestreams" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedImageStream
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" String :> "imagestreams" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedImageStreamList
    :<|> "oapi" :> "v1" :> "watch" :> "netnamespaces" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedNetNamespace
    :<|> "oapi" :> "v1" :> "watch" :> "netnamespaces" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedNetNamespaceList
    :<|> "oapi" :> "v1" :> "watch" :> "oauthclients" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedOAuthClient
    :<|> "oapi" :> "v1" :> "watch" :> "oauthclientauthorizations" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedOAuthClientAuthorization
    :<|> "oapi" :> "v1" :> "watch" :> "oauthclientauthorizations" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedOAuthClientAuthorizationList
    :<|> "oapi" :> "v1" :> "watch" :> "oauthclients" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedOAuthClientList
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" String :> "policies" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedPolicy
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" String :> "policybindings" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedPolicyBinding
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" String :> "policybindings" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedPolicyBindingList
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" String :> "policies" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedPolicyList
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" String :> "routes" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedRoute
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" String :> "routes" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedRouteList
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" String :> "templates" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedTemplate
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" String :> "templates" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedTemplateList
    :<|> "oapi" :> "v1" :> "watch" :> "users" :> Servant.Capture "name" String :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedUser
    :<|> "oapi" :> "v1" :> "watch" :> "users" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedUserList
    :<|> "oapi" :> "v1" :> "watch" :> "policybindings" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchPolicyBindingList
    :<|> "oapi" :> "v1" :> "watch" :> "policies" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchPolicyList
    :<|> "oapi" :> "v1" :> "watch" :> "routes" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchRouteList
    :<|> "oapi" :> "v1" :> "watch" :> "templates" :> Servant.QueryParam "pretty" String :> Servant.QueryParam "labelSelector" String :> Servant.QueryParam "fieldSelector" String :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" String :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" String :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchTemplateList


-- | connect POST requests to instantiatebinary of BinaryBuildRequestOptions
connectPostNamespacedBinaryBuildRequestOptionsInstantiatebinary :: String -> String -> Maybe String -> Maybe String -> Maybe String -> Maybe String -> Maybe String -> Maybe String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO String

-- | connect POST requests to webhooks of Status
connectPostNamespacedStatusWebhooks :: String -> String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO String

-- | connect POST requests to webhooks of Status
connectPostNamespacedStatusWebhooks_0 :: String -> String -> String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO String

-- | create a Build
createBuild :: Maybe String -> Build -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Build

-- | create a BuildConfig
createBuildConfig :: Maybe String -> BuildConfig -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO BuildConfig

-- | create a DeploymentConfig
createDeploymentConfig :: Maybe String -> DeploymentConfig -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO DeploymentConfig

-- | create a DeploymentConfigRollback
createDeploymentConfigRollback :: Maybe String -> DeploymentConfigRollback -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO DeploymentConfigRollback

-- | create a ImageStream
createImageStream :: Maybe String -> ImageStream -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStream

-- | create a ImageStreamImport
createImageStreamImport :: Maybe String -> ImageStreamImport -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStreamImport

-- | create a ImageStreamMapping
createImageStreamMapping :: Maybe String -> ImageStreamMapping -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStreamMapping

-- | create a LocalResourceAccessReview
createLocalResourceAccessReview :: Maybe String -> LocalResourceAccessReview -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO LocalResourceAccessReview

-- | create a LocalSubjectAccessReview
createLocalSubjectAccessReview :: Maybe String -> LocalSubjectAccessReview -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO LocalSubjectAccessReview

-- | create a Build
createNamespacedBuild :: String -> Maybe String -> Build -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Build

-- | create a BuildConfig
createNamespacedBuildConfig :: String -> Maybe String -> BuildConfig -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO BuildConfig

-- | create clone of a BuildRequest
createNamespacedBuildRequestClone :: String -> String -> Maybe String -> BuildRequest -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO BuildRequest

-- | create instantiate of a BuildRequest
createNamespacedBuildRequestInstantiate :: String -> String -> Maybe String -> BuildRequest -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO BuildRequest

-- | create a ClusterNetwork
createNamespacedClusterNetwork :: Maybe String -> ClusterNetwork -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterNetwork

-- | create a ClusterPolicy
createNamespacedClusterPolicy :: Maybe String -> ClusterPolicy -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterPolicy

-- | create a ClusterPolicyBinding
createNamespacedClusterPolicyBinding :: Maybe String -> ClusterPolicyBinding -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterPolicyBinding

-- | create a ClusterRole
createNamespacedClusterRole :: Maybe String -> ClusterRole -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterRole

-- | create a ClusterRoleBinding
createNamespacedClusterRoleBinding :: Maybe String -> ClusterRoleBinding -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterRoleBinding

-- | create a DeploymentConfig
createNamespacedDeploymentConfig :: String -> Maybe String -> DeploymentConfig -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO DeploymentConfig

-- | create a DeploymentConfigRollback
createNamespacedDeploymentConfigRollback :: String -> Maybe String -> DeploymentConfigRollback -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO DeploymentConfigRollback

-- | create a Group
createNamespacedGroup :: Maybe String -> Group -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Group

-- | create a HostSubnet
createNamespacedHostSubnet :: Maybe String -> HostSubnet -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO HostSubnet

-- | create a Identity
createNamespacedIdentity :: Maybe String -> Identity -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Identity

-- | create a Image
createNamespacedImage :: Maybe String -> Image -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Image

-- | create a ImageStream
createNamespacedImageStream :: String -> Maybe String -> ImageStream -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStream

-- | create a ImageStreamImport
createNamespacedImageStreamImport :: String -> Maybe String -> ImageStreamImport -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStreamImport

-- | create a ImageStreamMapping
createNamespacedImageStreamMapping :: String -> Maybe String -> ImageStreamMapping -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStreamMapping

-- | create a LocalResourceAccessReview
createNamespacedLocalResourceAccessReview :: String -> Maybe String -> LocalResourceAccessReview -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO LocalResourceAccessReview

-- | create a LocalSubjectAccessReview
createNamespacedLocalSubjectAccessReview :: String -> Maybe String -> LocalSubjectAccessReview -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO LocalSubjectAccessReview

-- | create a NetNamespace
createNamespacedNetNamespace :: Maybe String -> NetNamespace -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO NetNamespace

-- | create a OAuthAccessToken
createNamespacedOAuthAccessToken :: Maybe String -> OAuthAccessToken -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthAccessToken

-- | create a OAuthAuthorizeToken
createNamespacedOAuthAuthorizeToken :: Maybe String -> OAuthAuthorizeToken -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthAuthorizeToken

-- | create a OAuthClient
createNamespacedOAuthClient :: Maybe String -> OAuthClient -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthClient

-- | create a OAuthClientAuthorization
createNamespacedOAuthClientAuthorization :: Maybe String -> OAuthClientAuthorization -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthClientAuthorization

-- | create a Policy
createNamespacedPolicy :: String -> Maybe String -> Policy -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Policy

-- | create a PolicyBinding
createNamespacedPolicyBinding :: String -> Maybe String -> PolicyBinding -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO PolicyBinding

-- | create a Project
createNamespacedProject :: Maybe String -> Project -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Project

-- | create a ProjectRequest
createNamespacedProjectRequest :: Maybe String -> ProjectRequest -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ProjectRequest

-- | create a ResourceAccessReview
createNamespacedResourceAccessReview :: String -> Maybe String -> ResourceAccessReview -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ResourceAccessReview

-- | create a Role
createNamespacedRole :: String -> Maybe String -> Role -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Role

-- | create a RoleBinding
createNamespacedRoleBinding :: String -> Maybe String -> RoleBinding -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO RoleBinding

-- | create a Route
createNamespacedRoute :: String -> Maybe String -> Route -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Route

-- | create a SubjectAccessReview
createNamespacedSubjectAccessReview :: String -> Maybe String -> SubjectAccessReview -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO SubjectAccessReview

-- | create a Template
createNamespacedTemplate :: String -> Maybe String -> Template -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Template

-- | create a Template
createNamespacedTemplate_0 :: String -> Maybe String -> Template -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Template

-- | create a User
createNamespacedUser :: Maybe String -> User -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO User

-- | create a UserIdentityMapping
createNamespacedUserIdentityMapping :: Maybe String -> UserIdentityMapping -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO UserIdentityMapping

-- | create a Policy
createPolicy :: Maybe String -> Policy -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Policy

-- | create a PolicyBinding
createPolicyBinding :: Maybe String -> PolicyBinding -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO PolicyBinding

-- | create a ResourceAccessReview
createResourceAccessReview :: Maybe String -> ResourceAccessReview -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ResourceAccessReview

-- | create a Role
createRole :: Maybe String -> Role -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Role

-- | create a RoleBinding
createRoleBinding :: Maybe String -> RoleBinding -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO RoleBinding

-- | create a Route
createRoute :: Maybe String -> Route -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Route

-- | create a SubjectAccessReview
createSubjectAccessReview :: Maybe String -> SubjectAccessReview -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO SubjectAccessReview

-- | create a Template
createTemplate :: Maybe String -> Template -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Template

-- | create a Template
createTemplate_0 :: Maybe String -> Template -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Template

-- | delete a Build
deleteNamespacedBuild :: String -> String -> Maybe String -> DeleteOptions -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a BuildConfig
deleteNamespacedBuildConfig :: String -> String -> Maybe String -> DeleteOptions -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a ClusterNetwork
deleteNamespacedClusterNetwork :: String -> Maybe String -> DeleteOptions -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a ClusterPolicy
deleteNamespacedClusterPolicy :: String -> Maybe String -> DeleteOptions -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a ClusterPolicyBinding
deleteNamespacedClusterPolicyBinding :: String -> Maybe String -> DeleteOptions -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a ClusterRole
deleteNamespacedClusterRole :: String -> Maybe String -> DeleteOptions -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a ClusterRoleBinding
deleteNamespacedClusterRoleBinding :: String -> Maybe String -> DeleteOptions -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a DeploymentConfig
deleteNamespacedDeploymentConfig :: String -> String -> Maybe String -> DeleteOptions -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a Group
deleteNamespacedGroup :: String -> Maybe String -> DeleteOptions -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a HostSubnet
deleteNamespacedHostSubnet :: String -> Maybe String -> DeleteOptions -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a Identity
deleteNamespacedIdentity :: String -> Maybe String -> DeleteOptions -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a Image
deleteNamespacedImage :: String -> Maybe String -> DeleteOptions -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a ImageStream
deleteNamespacedImageStream :: String -> String -> Maybe String -> DeleteOptions -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a ImageStreamTag
deleteNamespacedImageStreamTag :: String -> String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a NetNamespace
deleteNamespacedNetNamespace :: String -> Maybe String -> DeleteOptions -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a OAuthAccessToken
deleteNamespacedOAuthAccessToken :: String -> Maybe String -> DeleteOptions -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a OAuthAuthorizeToken
deleteNamespacedOAuthAuthorizeToken :: String -> Maybe String -> DeleteOptions -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a OAuthClient
deleteNamespacedOAuthClient :: String -> Maybe String -> DeleteOptions -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a OAuthClientAuthorization
deleteNamespacedOAuthClientAuthorization :: String -> Maybe String -> DeleteOptions -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a Policy
deleteNamespacedPolicy :: String -> String -> Maybe String -> DeleteOptions -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a PolicyBinding
deleteNamespacedPolicyBinding :: String -> String -> Maybe String -> DeleteOptions -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a Project
deleteNamespacedProject :: String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a Role
deleteNamespacedRole :: String -> String -> Maybe String -> DeleteOptions -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a RoleBinding
deleteNamespacedRoleBinding :: String -> String -> Maybe String -> DeleteOptions -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a Route
deleteNamespacedRoute :: String -> String -> Maybe String -> DeleteOptions -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a Template
deleteNamespacedTemplate :: String -> String -> Maybe String -> DeleteOptions -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a User
deleteNamespacedUser :: String -> Maybe String -> DeleteOptions -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a UserIdentityMapping
deleteNamespacedUserIdentityMapping :: String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of Build
deletecollectionNamespacedBuild :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of BuildConfig
deletecollectionNamespacedBuildConfig :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of ClusterNetwork
deletecollectionNamespacedClusterNetwork :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of ClusterPolicy
deletecollectionNamespacedClusterPolicy :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of ClusterPolicyBinding
deletecollectionNamespacedClusterPolicyBinding :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of DeploymentConfig
deletecollectionNamespacedDeploymentConfig :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of Group
deletecollectionNamespacedGroup :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of HostSubnet
deletecollectionNamespacedHostSubnet :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of Identity
deletecollectionNamespacedIdentity :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of Image
deletecollectionNamespacedImage :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of ImageStream
deletecollectionNamespacedImageStream :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of NetNamespace
deletecollectionNamespacedNetNamespace :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of OAuthClient
deletecollectionNamespacedOAuthClient :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of OAuthClientAuthorization
deletecollectionNamespacedOAuthClientAuthorization :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of Policy
deletecollectionNamespacedPolicy :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of PolicyBinding
deletecollectionNamespacedPolicyBinding :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of Route
deletecollectionNamespacedRoute :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of Template
deletecollectionNamespacedTemplate :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of User
deletecollectionNamespacedUser :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | get available resources
getAPIResources :: Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ()

-- | list or watch objects of kind Build
listBuild :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO BuildList

-- | list or watch objects of kind BuildConfig
listBuildConfig :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO BuildConfigList

-- | list or watch objects of kind DeploymentConfig
listDeploymentConfig :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO DeploymentConfigList

-- | list or watch objects of kind ImageStream
listImageStream :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStreamList

-- | list objects of kind ImageStreamTag
listImageStreamTag :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStreamTagList

-- | list or watch objects of kind Build
listNamespacedBuild :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO BuildList

-- | list or watch objects of kind BuildConfig
listNamespacedBuildConfig :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO BuildConfigList

-- | list or watch objects of kind ClusterNetwork
listNamespacedClusterNetwork :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterNetworkList

-- | list or watch objects of kind ClusterPolicy
listNamespacedClusterPolicy :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterPolicyList

-- | list or watch objects of kind ClusterPolicyBinding
listNamespacedClusterPolicyBinding :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterPolicyBindingList

-- | list objects of kind ClusterRole
listNamespacedClusterRole :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterRoleList

-- | list objects of kind ClusterRoleBinding
listNamespacedClusterRoleBinding :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterRoleBindingList

-- | list or watch objects of kind DeploymentConfig
listNamespacedDeploymentConfig :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO DeploymentConfigList

-- | list or watch objects of kind Group
listNamespacedGroup :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO GroupList

-- | list or watch objects of kind HostSubnet
listNamespacedHostSubnet :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO HostSubnetList

-- | list or watch objects of kind Identity
listNamespacedIdentity :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO IdentityList

-- | list or watch objects of kind Image
listNamespacedImage :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ImageList

-- | list or watch objects of kind ImageStream
listNamespacedImageStream :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStreamList

-- | list objects of kind ImageStreamTag
listNamespacedImageStreamTag :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStreamTagList

-- | list or watch objects of kind NetNamespace
listNamespacedNetNamespace :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO NetNamespaceList

-- | list objects of kind OAuthAccessToken
listNamespacedOAuthAccessToken :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthAccessTokenList

-- | list objects of kind OAuthAuthorizeToken
listNamespacedOAuthAuthorizeToken :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthAuthorizeTokenList

-- | list or watch objects of kind OAuthClient
listNamespacedOAuthClient :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthClientList

-- | list or watch objects of kind OAuthClientAuthorization
listNamespacedOAuthClientAuthorization :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthClientAuthorizationList

-- | list or watch objects of kind Policy
listNamespacedPolicy :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO PolicyList

-- | list or watch objects of kind PolicyBinding
listNamespacedPolicyBinding :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO PolicyBindingList

-- | list objects of kind Project
listNamespacedProject :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ProjectList

-- | list objects of kind ProjectRequest
listNamespacedProjectRequest :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | list objects of kind Role
listNamespacedRole :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO RoleList

-- | list objects of kind RoleBinding
listNamespacedRoleBinding :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO RoleBindingList

-- | list or watch objects of kind Route
listNamespacedRoute :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO RouteList

-- | list or watch objects of kind Template
listNamespacedTemplate :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO TemplateList

-- | list or watch objects of kind User
listNamespacedUser :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO UserList

-- | list or watch objects of kind Policy
listPolicy :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO PolicyList

-- | list or watch objects of kind PolicyBinding
listPolicyBinding :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO PolicyBindingList

-- | list objects of kind Role
listRole :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO RoleList

-- | list objects of kind RoleBinding
listRoleBinding :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO RoleBindingList

-- | list or watch objects of kind Route
listRoute :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO RouteList

-- | list or watch objects of kind Template
listTemplate :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO TemplateList

-- | partially update the specified Build
patchNamespacedBuild :: String -> String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Build

-- | partially update the specified BuildConfig
patchNamespacedBuildConfig :: String -> String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO BuildConfig

-- | partially update the specified ClusterNetwork
patchNamespacedClusterNetwork :: String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterNetwork

-- | partially update the specified ClusterPolicy
patchNamespacedClusterPolicy :: String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterPolicy

-- | partially update the specified ClusterPolicyBinding
patchNamespacedClusterPolicyBinding :: String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterPolicyBinding

-- | partially update the specified ClusterRole
patchNamespacedClusterRole :: String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterRole

-- | partially update the specified ClusterRoleBinding
patchNamespacedClusterRoleBinding :: String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterRoleBinding

-- | partially update the specified DeploymentConfig
patchNamespacedDeploymentConfig :: String -> String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO DeploymentConfig

-- | partially update the specified Group
patchNamespacedGroup :: String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Group

-- | partially update the specified HostSubnet
patchNamespacedHostSubnet :: String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO HostSubnet

-- | partially update the specified Identity
patchNamespacedIdentity :: String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Identity

-- | partially update the specified Image
patchNamespacedImage :: String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Image

-- | partially update the specified ImageStream
patchNamespacedImageStream :: String -> String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStream

-- | partially update the specified ImageStreamTag
patchNamespacedImageStreamTag :: String -> String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStreamTag

-- | partially update the specified NetNamespace
patchNamespacedNetNamespace :: String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO NetNamespace

-- | partially update the specified OAuthClient
patchNamespacedOAuthClient :: String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthClient

-- | partially update the specified OAuthClientAuthorization
patchNamespacedOAuthClientAuthorization :: String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthClientAuthorization

-- | partially update the specified Policy
patchNamespacedPolicy :: String -> String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Policy

-- | partially update the specified PolicyBinding
patchNamespacedPolicyBinding :: String -> String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO PolicyBinding

-- | partially update the specified Project
patchNamespacedProject :: String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Project

-- | partially update the specified Role
patchNamespacedRole :: String -> String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Role

-- | partially update the specified RoleBinding
patchNamespacedRoleBinding :: String -> String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO RoleBinding

-- | partially update the specified Route
patchNamespacedRoute :: String -> String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Route

-- | partially update scale of the specified Scale
patchNamespacedScaleScale :: String -> String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Scale

-- | partially update the specified Template
patchNamespacedTemplate :: String -> String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Template

-- | partially update the specified User
patchNamespacedUser :: String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO User

-- | partially update the specified UserIdentityMapping
patchNamespacedUserIdentityMapping :: String -> Maybe String -> Patch -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO UserIdentityMapping

-- | read the specified Build
readNamespacedBuild :: String -> String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Build

-- | read the specified BuildConfig
readNamespacedBuildConfig :: String -> String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO BuildConfig

-- | read log of the specified BuildLog
readNamespacedBuildLogLog :: String -> String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe Bool -> Maybe Integer -> Maybe String -> Maybe Bool -> Maybe Integer -> Maybe Integer -> Maybe Bool -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO BuildLog

-- | read the specified ClusterNetwork
readNamespacedClusterNetwork :: String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterNetwork

-- | read the specified ClusterPolicy
readNamespacedClusterPolicy :: String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterPolicy

-- | read the specified ClusterPolicyBinding
readNamespacedClusterPolicyBinding :: String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterPolicyBinding

-- | read the specified ClusterRole
readNamespacedClusterRole :: String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterRole

-- | read the specified ClusterRoleBinding
readNamespacedClusterRoleBinding :: String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterRoleBinding

-- | read the specified DeploymentConfig
readNamespacedDeploymentConfig :: String -> String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO DeploymentConfig

-- | read the specified DeploymentConfig
readNamespacedDeploymentConfig_0 :: String -> String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO DeploymentConfig

-- | read log of the specified DeploymentLog
readNamespacedDeploymentLogLog :: String -> String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe Bool -> Maybe Integer -> Maybe String -> Maybe Bool -> Maybe Integer -> Maybe Integer -> Maybe Bool -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO DeploymentLog

-- | read the specified Group
readNamespacedGroup :: String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Group

-- | read the specified HostSubnet
readNamespacedHostSubnet :: String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO HostSubnet

-- | read the specified Identity
readNamespacedIdentity :: String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Identity

-- | read the specified Image
readNamespacedImage :: String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Image

-- | read the specified ImageStream
readNamespacedImageStream :: String -> String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStream

-- | read the specified ImageStreamImage
readNamespacedImageStreamImage :: String -> String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStreamImage

-- | read the specified ImageStreamTag
readNamespacedImageStreamTag :: String -> String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStreamTag

-- | read the specified NetNamespace
readNamespacedNetNamespace :: String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO NetNamespace

-- | read the specified OAuthAccessToken
readNamespacedOAuthAccessToken :: String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthAccessToken

-- | read the specified OAuthAuthorizeToken
readNamespacedOAuthAuthorizeToken :: String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthAuthorizeToken

-- | read the specified OAuthClient
readNamespacedOAuthClient :: String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthClient

-- | read the specified OAuthClientAuthorization
readNamespacedOAuthClientAuthorization :: String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthClientAuthorization

-- | read the specified Policy
readNamespacedPolicy :: String -> String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Policy

-- | read the specified PolicyBinding
readNamespacedPolicyBinding :: String -> String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO PolicyBinding

-- | read the specified Project
readNamespacedProject :: String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Project

-- | read the specified Role
readNamespacedRole :: String -> String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Role

-- | read the specified RoleBinding
readNamespacedRoleBinding :: String -> String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO RoleBinding

-- | read the specified Route
readNamespacedRoute :: String -> String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Route

-- | read scale of the specified Scale
readNamespacedScaleScale :: String -> String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Scale

-- | read secrets of the specified SecretList
readNamespacedSecretListSecrets :: String -> String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO SecretList

-- | read the specified Template
readNamespacedTemplate :: String -> String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Template

-- | read the specified User
readNamespacedUser :: String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO User

-- | read the specified UserIdentityMapping
readNamespacedUserIdentityMapping :: String -> Maybe String -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO UserIdentityMapping

-- | replace the specified Build
replaceNamespacedBuild :: String -> String -> Maybe String -> Build -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Build

-- | replace the specified BuildConfig
replaceNamespacedBuildConfig :: String -> String -> Maybe String -> BuildConfig -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO BuildConfig

-- | replace details of the specified Build
replaceNamespacedBuildDetails :: String -> String -> Maybe String -> Build -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Build

-- | replace the specified ClusterNetwork
replaceNamespacedClusterNetwork :: String -> Maybe String -> ClusterNetwork -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterNetwork

-- | replace the specified ClusterPolicy
replaceNamespacedClusterPolicy :: String -> Maybe String -> ClusterPolicy -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterPolicy

-- | replace the specified ClusterPolicyBinding
replaceNamespacedClusterPolicyBinding :: String -> Maybe String -> ClusterPolicyBinding -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterPolicyBinding

-- | replace the specified ClusterRole
replaceNamespacedClusterRole :: String -> Maybe String -> ClusterRole -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterRole

-- | replace the specified ClusterRoleBinding
replaceNamespacedClusterRoleBinding :: String -> Maybe String -> ClusterRoleBinding -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterRoleBinding

-- | replace the specified DeploymentConfig
replaceNamespacedDeploymentConfig :: String -> String -> Maybe String -> DeploymentConfig -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO DeploymentConfig

-- | replace the specified Group
replaceNamespacedGroup :: String -> Maybe String -> Group -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Group

-- | replace the specified HostSubnet
replaceNamespacedHostSubnet :: String -> Maybe String -> HostSubnet -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO HostSubnet

-- | replace the specified Identity
replaceNamespacedIdentity :: String -> Maybe String -> Identity -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Identity

-- | replace the specified Image
replaceNamespacedImage :: String -> Maybe String -> Image -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Image

-- | replace the specified ImageStream
replaceNamespacedImageStream :: String -> String -> Maybe String -> ImageStream -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStream

-- | replace status of the specified ImageStream
replaceNamespacedImageStreamStatus :: String -> String -> Maybe String -> ImageStream -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStream

-- | replace the specified ImageStreamTag
replaceNamespacedImageStreamTag :: String -> String -> Maybe String -> ImageStreamTag -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStreamTag

-- | replace the specified NetNamespace
replaceNamespacedNetNamespace :: String -> Maybe String -> NetNamespace -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO NetNamespace

-- | replace the specified OAuthClient
replaceNamespacedOAuthClient :: String -> Maybe String -> OAuthClient -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthClient

-- | replace the specified OAuthClientAuthorization
replaceNamespacedOAuthClientAuthorization :: String -> Maybe String -> OAuthClientAuthorization -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthClientAuthorization

-- | replace the specified Policy
replaceNamespacedPolicy :: String -> String -> Maybe String -> Policy -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Policy

-- | replace the specified PolicyBinding
replaceNamespacedPolicyBinding :: String -> String -> Maybe String -> PolicyBinding -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO PolicyBinding

-- | replace the specified Project
replaceNamespacedProject :: String -> Maybe String -> Project -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Project

-- | replace the specified Role
replaceNamespacedRole :: String -> String -> Maybe String -> Role -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Role

-- | replace the specified RoleBinding
replaceNamespacedRoleBinding :: String -> String -> Maybe String -> RoleBinding -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO RoleBinding

-- | replace the specified Route
replaceNamespacedRoute :: String -> String -> Maybe String -> Route -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Route

-- | replace status of the specified Route
replaceNamespacedRouteStatus :: String -> String -> Maybe String -> Route -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Route

-- | replace scale of the specified Scale
replaceNamespacedScaleScale :: String -> String -> Maybe String -> Scale -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Scale

-- | replace the specified Template
replaceNamespacedTemplate :: String -> String -> Maybe String -> Template -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO Template

-- | replace the specified User
replaceNamespacedUser :: String -> Maybe String -> User -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO User

-- | replace the specified UserIdentityMapping
replaceNamespacedUserIdentityMapping :: String -> Maybe String -> UserIdentityMapping -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO UserIdentityMapping

-- | watch individual changes to a list of BuildConfig
watchBuildConfigList :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Build
watchBuildList :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of DeploymentConfig
watchDeploymentConfigList :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of ImageStream
watchImageStreamList :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind Build
watchNamespacedBuild :: String -> String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind BuildConfig
watchNamespacedBuildConfig :: String -> String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of BuildConfig
watchNamespacedBuildConfigList :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Build
watchNamespacedBuildList :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind ClusterNetwork
watchNamespacedClusterNetwork :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of ClusterNetwork
watchNamespacedClusterNetworkList :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind ClusterPolicy
watchNamespacedClusterPolicy :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind ClusterPolicyBinding
watchNamespacedClusterPolicyBinding :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of ClusterPolicyBinding
watchNamespacedClusterPolicyBindingList :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of ClusterPolicy
watchNamespacedClusterPolicyList :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind DeploymentConfig
watchNamespacedDeploymentConfig :: String -> String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of DeploymentConfig
watchNamespacedDeploymentConfigList :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind Group
watchNamespacedGroup :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Group
watchNamespacedGroupList :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind HostSubnet
watchNamespacedHostSubnet :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of HostSubnet
watchNamespacedHostSubnetList :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind Identity
watchNamespacedIdentity :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Identity
watchNamespacedIdentityList :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind Image
watchNamespacedImage :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Image
watchNamespacedImageList :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind ImageStream
watchNamespacedImageStream :: String -> String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of ImageStream
watchNamespacedImageStreamList :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind NetNamespace
watchNamespacedNetNamespace :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of NetNamespace
watchNamespacedNetNamespaceList :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind OAuthClient
watchNamespacedOAuthClient :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind OAuthClientAuthorization
watchNamespacedOAuthClientAuthorization :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of OAuthClientAuthorization
watchNamespacedOAuthClientAuthorizationList :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of OAuthClient
watchNamespacedOAuthClientList :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind Policy
watchNamespacedPolicy :: String -> String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind PolicyBinding
watchNamespacedPolicyBinding :: String -> String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of PolicyBinding
watchNamespacedPolicyBindingList :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Policy
watchNamespacedPolicyList :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind Route
watchNamespacedRoute :: String -> String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Route
watchNamespacedRouteList :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind Template
watchNamespacedTemplate :: String -> String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Template
watchNamespacedTemplateList :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind User
watchNamespacedUser :: String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of User
watchNamespacedUserList :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of PolicyBinding
watchPolicyBindingList :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Policy
watchPolicyList :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Route
watchRouteList :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Template
watchTemplateList :: Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe String -> Maybe Integer -> Maybe String -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent


proxyOapivApi :: Proxy OapivApi
proxyOapivApi = Proxy


connectPostNamespacedBinaryBuildRequestOptionsInstantiatebinary
    :<|> connectPostNamespacedStatusWebhooks
    :<|> connectPostNamespacedStatusWebhooks_0
    :<|> createBuild
    :<|> createBuildConfig
    :<|> createDeploymentConfig
    :<|> createDeploymentConfigRollback
    :<|> createImageStream
    :<|> createImageStreamImport
    :<|> createImageStreamMapping
    :<|> createLocalResourceAccessReview
    :<|> createLocalSubjectAccessReview
    :<|> createNamespacedBuild
    :<|> createNamespacedBuildConfig
    :<|> createNamespacedBuildRequestClone
    :<|> createNamespacedBuildRequestInstantiate
    :<|> createNamespacedClusterNetwork
    :<|> createNamespacedClusterPolicy
    :<|> createNamespacedClusterPolicyBinding
    :<|> createNamespacedClusterRole
    :<|> createNamespacedClusterRoleBinding
    :<|> createNamespacedDeploymentConfig
    :<|> createNamespacedDeploymentConfigRollback
    :<|> createNamespacedGroup
    :<|> createNamespacedHostSubnet
    :<|> createNamespacedIdentity
    :<|> createNamespacedImage
    :<|> createNamespacedImageStream
    :<|> createNamespacedImageStreamImport
    :<|> createNamespacedImageStreamMapping
    :<|> createNamespacedLocalResourceAccessReview
    :<|> createNamespacedLocalSubjectAccessReview
    :<|> createNamespacedNetNamespace
    :<|> createNamespacedOAuthAccessToken
    :<|> createNamespacedOAuthAuthorizeToken
    :<|> createNamespacedOAuthClient
    :<|> createNamespacedOAuthClientAuthorization
    :<|> createNamespacedPolicy
    :<|> createNamespacedPolicyBinding
    :<|> createNamespacedProject
    :<|> createNamespacedProjectRequest
    :<|> createNamespacedResourceAccessReview
    :<|> createNamespacedRole
    :<|> createNamespacedRoleBinding
    :<|> createNamespacedRoute
    :<|> createNamespacedSubjectAccessReview
    :<|> createNamespacedTemplate
    :<|> createNamespacedTemplate_0
    :<|> createNamespacedUser
    :<|> createNamespacedUserIdentityMapping
    :<|> createPolicy
    :<|> createPolicyBinding
    :<|> createResourceAccessReview
    :<|> createRole
    :<|> createRoleBinding
    :<|> createRoute
    :<|> createSubjectAccessReview
    :<|> createTemplate
    :<|> createTemplate_0
    :<|> deleteNamespacedBuild
    :<|> deleteNamespacedBuildConfig
    :<|> deleteNamespacedClusterNetwork
    :<|> deleteNamespacedClusterPolicy
    :<|> deleteNamespacedClusterPolicyBinding
    :<|> deleteNamespacedClusterRole
    :<|> deleteNamespacedClusterRoleBinding
    :<|> deleteNamespacedDeploymentConfig
    :<|> deleteNamespacedGroup
    :<|> deleteNamespacedHostSubnet
    :<|> deleteNamespacedIdentity
    :<|> deleteNamespacedImage
    :<|> deleteNamespacedImageStream
    :<|> deleteNamespacedImageStreamTag
    :<|> deleteNamespacedNetNamespace
    :<|> deleteNamespacedOAuthAccessToken
    :<|> deleteNamespacedOAuthAuthorizeToken
    :<|> deleteNamespacedOAuthClient
    :<|> deleteNamespacedOAuthClientAuthorization
    :<|> deleteNamespacedPolicy
    :<|> deleteNamespacedPolicyBinding
    :<|> deleteNamespacedProject
    :<|> deleteNamespacedRole
    :<|> deleteNamespacedRoleBinding
    :<|> deleteNamespacedRoute
    :<|> deleteNamespacedTemplate
    :<|> deleteNamespacedUser
    :<|> deleteNamespacedUserIdentityMapping
    :<|> deletecollectionNamespacedBuild
    :<|> deletecollectionNamespacedBuildConfig
    :<|> deletecollectionNamespacedClusterNetwork
    :<|> deletecollectionNamespacedClusterPolicy
    :<|> deletecollectionNamespacedClusterPolicyBinding
    :<|> deletecollectionNamespacedDeploymentConfig
    :<|> deletecollectionNamespacedGroup
    :<|> deletecollectionNamespacedHostSubnet
    :<|> deletecollectionNamespacedIdentity
    :<|> deletecollectionNamespacedImage
    :<|> deletecollectionNamespacedImageStream
    :<|> deletecollectionNamespacedNetNamespace
    :<|> deletecollectionNamespacedOAuthClient
    :<|> deletecollectionNamespacedOAuthClientAuthorization
    :<|> deletecollectionNamespacedPolicy
    :<|> deletecollectionNamespacedPolicyBinding
    :<|> deletecollectionNamespacedRoute
    :<|> deletecollectionNamespacedTemplate
    :<|> deletecollectionNamespacedUser
    :<|> getAPIResources
    :<|> listBuild
    :<|> listBuildConfig
    :<|> listDeploymentConfig
    :<|> listImageStream
    :<|> listImageStreamTag
    :<|> listNamespacedBuild
    :<|> listNamespacedBuildConfig
    :<|> listNamespacedClusterNetwork
    :<|> listNamespacedClusterPolicy
    :<|> listNamespacedClusterPolicyBinding
    :<|> listNamespacedClusterRole
    :<|> listNamespacedClusterRoleBinding
    :<|> listNamespacedDeploymentConfig
    :<|> listNamespacedGroup
    :<|> listNamespacedHostSubnet
    :<|> listNamespacedIdentity
    :<|> listNamespacedImage
    :<|> listNamespacedImageStream
    :<|> listNamespacedImageStreamTag
    :<|> listNamespacedNetNamespace
    :<|> listNamespacedOAuthAccessToken
    :<|> listNamespacedOAuthAuthorizeToken
    :<|> listNamespacedOAuthClient
    :<|> listNamespacedOAuthClientAuthorization
    :<|> listNamespacedPolicy
    :<|> listNamespacedPolicyBinding
    :<|> listNamespacedProject
    :<|> listNamespacedProjectRequest
    :<|> listNamespacedRole
    :<|> listNamespacedRoleBinding
    :<|> listNamespacedRoute
    :<|> listNamespacedTemplate
    :<|> listNamespacedUser
    :<|> listPolicy
    :<|> listPolicyBinding
    :<|> listRole
    :<|> listRoleBinding
    :<|> listRoute
    :<|> listTemplate
    :<|> patchNamespacedBuild
    :<|> patchNamespacedBuildConfig
    :<|> patchNamespacedClusterNetwork
    :<|> patchNamespacedClusterPolicy
    :<|> patchNamespacedClusterPolicyBinding
    :<|> patchNamespacedClusterRole
    :<|> patchNamespacedClusterRoleBinding
    :<|> patchNamespacedDeploymentConfig
    :<|> patchNamespacedGroup
    :<|> patchNamespacedHostSubnet
    :<|> patchNamespacedIdentity
    :<|> patchNamespacedImage
    :<|> patchNamespacedImageStream
    :<|> patchNamespacedImageStreamTag
    :<|> patchNamespacedNetNamespace
    :<|> patchNamespacedOAuthClient
    :<|> patchNamespacedOAuthClientAuthorization
    :<|> patchNamespacedPolicy
    :<|> patchNamespacedPolicyBinding
    :<|> patchNamespacedProject
    :<|> patchNamespacedRole
    :<|> patchNamespacedRoleBinding
    :<|> patchNamespacedRoute
    :<|> patchNamespacedScaleScale
    :<|> patchNamespacedTemplate
    :<|> patchNamespacedUser
    :<|> patchNamespacedUserIdentityMapping
    :<|> readNamespacedBuild
    :<|> readNamespacedBuildConfig
    :<|> readNamespacedBuildLogLog
    :<|> readNamespacedClusterNetwork
    :<|> readNamespacedClusterPolicy
    :<|> readNamespacedClusterPolicyBinding
    :<|> readNamespacedClusterRole
    :<|> readNamespacedClusterRoleBinding
    :<|> readNamespacedDeploymentConfig
    :<|> readNamespacedDeploymentConfig_0
    :<|> readNamespacedDeploymentLogLog
    :<|> readNamespacedGroup
    :<|> readNamespacedHostSubnet
    :<|> readNamespacedIdentity
    :<|> readNamespacedImage
    :<|> readNamespacedImageStream
    :<|> readNamespacedImageStreamImage
    :<|> readNamespacedImageStreamTag
    :<|> readNamespacedNetNamespace
    :<|> readNamespacedOAuthAccessToken
    :<|> readNamespacedOAuthAuthorizeToken
    :<|> readNamespacedOAuthClient
    :<|> readNamespacedOAuthClientAuthorization
    :<|> readNamespacedPolicy
    :<|> readNamespacedPolicyBinding
    :<|> readNamespacedProject
    :<|> readNamespacedRole
    :<|> readNamespacedRoleBinding
    :<|> readNamespacedRoute
    :<|> readNamespacedScaleScale
    :<|> readNamespacedSecretListSecrets
    :<|> readNamespacedTemplate
    :<|> readNamespacedUser
    :<|> readNamespacedUserIdentityMapping
    :<|> replaceNamespacedBuild
    :<|> replaceNamespacedBuildConfig
    :<|> replaceNamespacedBuildDetails
    :<|> replaceNamespacedClusterNetwork
    :<|> replaceNamespacedClusterPolicy
    :<|> replaceNamespacedClusterPolicyBinding
    :<|> replaceNamespacedClusterRole
    :<|> replaceNamespacedClusterRoleBinding
    :<|> replaceNamespacedDeploymentConfig
    :<|> replaceNamespacedGroup
    :<|> replaceNamespacedHostSubnet
    :<|> replaceNamespacedIdentity
    :<|> replaceNamespacedImage
    :<|> replaceNamespacedImageStream
    :<|> replaceNamespacedImageStreamStatus
    :<|> replaceNamespacedImageStreamTag
    :<|> replaceNamespacedNetNamespace
    :<|> replaceNamespacedOAuthClient
    :<|> replaceNamespacedOAuthClientAuthorization
    :<|> replaceNamespacedPolicy
    :<|> replaceNamespacedPolicyBinding
    :<|> replaceNamespacedProject
    :<|> replaceNamespacedRole
    :<|> replaceNamespacedRoleBinding
    :<|> replaceNamespacedRoute
    :<|> replaceNamespacedRouteStatus
    :<|> replaceNamespacedScaleScale
    :<|> replaceNamespacedTemplate
    :<|> replaceNamespacedUser
    :<|> replaceNamespacedUserIdentityMapping
    :<|> watchBuildConfigList
    :<|> watchBuildList
    :<|> watchDeploymentConfigList
    :<|> watchImageStreamList
    :<|> watchNamespacedBuild
    :<|> watchNamespacedBuildConfig
    :<|> watchNamespacedBuildConfigList
    :<|> watchNamespacedBuildList
    :<|> watchNamespacedClusterNetwork
    :<|> watchNamespacedClusterNetworkList
    :<|> watchNamespacedClusterPolicy
    :<|> watchNamespacedClusterPolicyBinding
    :<|> watchNamespacedClusterPolicyBindingList
    :<|> watchNamespacedClusterPolicyList
    :<|> watchNamespacedDeploymentConfig
    :<|> watchNamespacedDeploymentConfigList
    :<|> watchNamespacedGroup
    :<|> watchNamespacedGroupList
    :<|> watchNamespacedHostSubnet
    :<|> watchNamespacedHostSubnetList
    :<|> watchNamespacedIdentity
    :<|> watchNamespacedIdentityList
    :<|> watchNamespacedImage
    :<|> watchNamespacedImageList
    :<|> watchNamespacedImageStream
    :<|> watchNamespacedImageStreamList
    :<|> watchNamespacedNetNamespace
    :<|> watchNamespacedNetNamespaceList
    :<|> watchNamespacedOAuthClient
    :<|> watchNamespacedOAuthClientAuthorization
    :<|> watchNamespacedOAuthClientAuthorizationList
    :<|> watchNamespacedOAuthClientList
    :<|> watchNamespacedPolicy
    :<|> watchNamespacedPolicyBinding
    :<|> watchNamespacedPolicyBindingList
    :<|> watchNamespacedPolicyList
    :<|> watchNamespacedRoute
    :<|> watchNamespacedRouteList
    :<|> watchNamespacedTemplate
    :<|> watchNamespacedTemplateList
    :<|> watchNamespacedUser
    :<|> watchNamespacedUserList
    :<|> watchPolicyBindingList
    :<|> watchPolicyList
    :<|> watchRouteList
    :<|> watchTemplateList
    = client proxyOapivApi
