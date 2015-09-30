{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Discovery.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Discovery.Types.Product where

import           Network.Google.Discovery.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'restMethod' smart constructor.
data RestMethod = RestMethod
    { _rmSupportsMediaDownload   :: !(Maybe Bool)
    , _rmParameterOrder          :: !(Maybe [Text])
    , _rmMediaUpload             :: !(Maybe RestMethodMediaUpload)
    , _rmHttpMethod              :: !(Maybe Text)
    , _rmPath                    :: !(Maybe Text)
    , _rmResponse                :: !(Maybe RestMethodResponse)
    , _rmSupportsMediaUpload     :: !(Maybe Bool)
    , _rmScopes                  :: !(Maybe [Text])
    , _rmSupportsSubscription    :: !(Maybe Bool)
    , _rmParameters              :: !(Maybe RestMethodParameters)
    , _rmId                      :: !(Maybe Text)
    , _rmEtagRequired            :: !(Maybe Bool)
    , _rmUseMediaDownloadService :: !(Maybe Bool)
    , _rmDescription             :: !(Maybe Text)
    , _rmRequest                 :: !(Maybe RestMethodRequest)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestMethod' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmSupportsMediaDownload'
--
-- * 'rmParameterOrder'
--
-- * 'rmMediaUpload'
--
-- * 'rmHttpMethod'
--
-- * 'rmPath'
--
-- * 'rmResponse'
--
-- * 'rmSupportsMediaUpload'
--
-- * 'rmScopes'
--
-- * 'rmSupportsSubscription'
--
-- * 'rmParameters'
--
-- * 'rmId'
--
-- * 'rmEtagRequired'
--
-- * 'rmUseMediaDownloadService'
--
-- * 'rmDescription'
--
-- * 'rmRequest'
restMethod
    :: RestMethod
restMethod =
    RestMethod
    { _rmSupportsMediaDownload = Nothing
    , _rmParameterOrder = Nothing
    , _rmMediaUpload = Nothing
    , _rmHttpMethod = Nothing
    , _rmPath = Nothing
    , _rmResponse = Nothing
    , _rmSupportsMediaUpload = Nothing
    , _rmScopes = Nothing
    , _rmSupportsSubscription = Nothing
    , _rmParameters = Nothing
    , _rmId = Nothing
    , _rmEtagRequired = Nothing
    , _rmUseMediaDownloadService = Nothing
    , _rmDescription = Nothing
    , _rmRequest = Nothing
    }

-- | Whether this method supports media downloads.
rmSupportsMediaDownload :: Lens' RestMethod (Maybe Bool)
rmSupportsMediaDownload
  = lens _rmSupportsMediaDownload
      (\ s a -> s{_rmSupportsMediaDownload = a})

-- | Ordered list of required parameters, serves as a hint to clients on how
-- to structure their method signatures. The array is ordered such that the
-- \"most-significant\" parameter appears first.
rmParameterOrder :: Lens' RestMethod [Text]
rmParameterOrder
  = lens _rmParameterOrder
      (\ s a -> s{_rmParameterOrder = a})
      . _Default
      . _Coerce

-- | Media upload parameters.
rmMediaUpload :: Lens' RestMethod (Maybe RestMethodMediaUpload)
rmMediaUpload
  = lens _rmMediaUpload
      (\ s a -> s{_rmMediaUpload = a})

-- | HTTP method used by this method.
rmHttpMethod :: Lens' RestMethod (Maybe Text)
rmHttpMethod
  = lens _rmHttpMethod (\ s a -> s{_rmHttpMethod = a})

-- | The URI path of this REST method. Should be used in conjunction with the
-- basePath property at the api-level.
rmPath :: Lens' RestMethod (Maybe Text)
rmPath = lens _rmPath (\ s a -> s{_rmPath = a})

-- | The schema for the response.
rmResponse :: Lens' RestMethod (Maybe RestMethodResponse)
rmResponse
  = lens _rmResponse (\ s a -> s{_rmResponse = a})

-- | Whether this method supports media uploads.
rmSupportsMediaUpload :: Lens' RestMethod (Maybe Bool)
rmSupportsMediaUpload
  = lens _rmSupportsMediaUpload
      (\ s a -> s{_rmSupportsMediaUpload = a})

-- | OAuth 2.0 scopes applicable to this method.
rmScopes :: Lens' RestMethod [Text]
rmScopes
  = lens _rmScopes (\ s a -> s{_rmScopes = a}) .
      _Default
      . _Coerce

-- | Whether this method supports subscriptions.
rmSupportsSubscription :: Lens' RestMethod (Maybe Bool)
rmSupportsSubscription
  = lens _rmSupportsSubscription
      (\ s a -> s{_rmSupportsSubscription = a})

-- | Details for all parameters in this method.
rmParameters :: Lens' RestMethod (Maybe RestMethodParameters)
rmParameters
  = lens _rmParameters (\ s a -> s{_rmParameters = a})

-- | A unique ID for this method. This property can be used to match methods
-- between different versions of Discovery.
rmId :: Lens' RestMethod (Maybe Text)
rmId = lens _rmId (\ s a -> s{_rmId = a})

-- | Whether this method requires an ETag to be specified. The ETag is sent
-- as an HTTP If-Match or If-None-Match header.
rmEtagRequired :: Lens' RestMethod (Maybe Bool)
rmEtagRequired
  = lens _rmEtagRequired
      (\ s a -> s{_rmEtagRequired = a})

-- | Indicates that downloads from this method should use the download
-- service URL (i.e. \"\/download\"). Only applies if the method supports
-- media download.
rmUseMediaDownloadService :: Lens' RestMethod (Maybe Bool)
rmUseMediaDownloadService
  = lens _rmUseMediaDownloadService
      (\ s a -> s{_rmUseMediaDownloadService = a})

-- | Description of this method.
rmDescription :: Lens' RestMethod (Maybe Text)
rmDescription
  = lens _rmDescription
      (\ s a -> s{_rmDescription = a})

-- | The schema for the request.
rmRequest :: Lens' RestMethod (Maybe RestMethodRequest)
rmRequest
  = lens _rmRequest (\ s a -> s{_rmRequest = a})

instance FromJSON RestMethod where
        parseJSON
          = withObject "RestMethod"
              (\ o ->
                 RestMethod <$>
                   (o .:? "supportsMediaDownload") <*>
                     (o .:? "parameterOrder" .!= mempty)
                     <*> (o .:? "mediaUpload")
                     <*> (o .:? "httpMethod")
                     <*> (o .:? "path")
                     <*> (o .:? "response")
                     <*> (o .:? "supportsMediaUpload")
                     <*> (o .:? "scopes" .!= mempty)
                     <*> (o .:? "supportsSubscription")
                     <*> (o .:? "parameters")
                     <*> (o .:? "id")
                     <*> (o .:? "etagRequired")
                     <*> (o .:? "useMediaDownloadService")
                     <*> (o .:? "description")
                     <*> (o .:? "request"))

instance ToJSON RestMethod where
        toJSON RestMethod{..}
          = object
              (catMaybes
                 [("supportsMediaDownload" .=) <$>
                    _rmSupportsMediaDownload,
                  ("parameterOrder" .=) <$> _rmParameterOrder,
                  ("mediaUpload" .=) <$> _rmMediaUpload,
                  ("httpMethod" .=) <$> _rmHttpMethod,
                  ("path" .=) <$> _rmPath,
                  ("response" .=) <$> _rmResponse,
                  ("supportsMediaUpload" .=) <$>
                    _rmSupportsMediaUpload,
                  ("scopes" .=) <$> _rmScopes,
                  ("supportsSubscription" .=) <$>
                    _rmSupportsSubscription,
                  ("parameters" .=) <$> _rmParameters,
                  ("id" .=) <$> _rmId,
                  ("etagRequired" .=) <$> _rmEtagRequired,
                  ("useMediaDownloadService" .=) <$>
                    _rmUseMediaDownloadService,
                  ("description" .=) <$> _rmDescription,
                  ("request" .=) <$> _rmRequest])

--
-- /See:/ 'restResource' smart constructor.
data RestResource = RestResource
    { _rrResources :: !(Maybe RestResourceResources)
    , _rrMethods   :: !(Maybe RestResourceMethods)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrResources'
--
-- * 'rrMethods'
restResource
    :: RestResource
restResource =
    RestResource
    { _rrResources = Nothing
    , _rrMethods = Nothing
    }

-- | Sub-resources on this resource.
rrResources :: Lens' RestResource (Maybe RestResourceResources)
rrResources
  = lens _rrResources (\ s a -> s{_rrResources = a})

-- | Methods on this resource.
rrMethods :: Lens' RestResource (Maybe RestResourceMethods)
rrMethods
  = lens _rrMethods (\ s a -> s{_rrMethods = a})

instance FromJSON RestResource where
        parseJSON
          = withObject "RestResource"
              (\ o ->
                 RestResource <$>
                   (o .:? "resources") <*> (o .:? "methods"))

instance ToJSON RestResource where
        toJSON RestResource{..}
          = object
              (catMaybes
                 [("resources" .=) <$> _rrResources,
                  ("methods" .=) <$> _rrMethods])

--
-- /See:/ 'restDescription' smart constructor.
data RestDescription = RestDescription
    { _rdEtag                      :: !(Maybe Text)
    , _rdSchemas                   :: !(Maybe RestDescriptionSchemas)
    , _rdServicePath               :: !(Maybe Text)
    , _rdBasePath                  :: !(Maybe Text)
    , _rdKind                      :: !Text
    , _rdExponentialBackoffDefault :: !(Maybe Bool)
    , _rdAuth                      :: !(Maybe RestDescriptionAuth)
    , _rdIcons                     :: !(Maybe RestDescriptionIcons)
    , _rdBaseUrl                   :: !(Maybe Text)
    , _rdProtocol                  :: !Text
    , _rdOwnerName                 :: !(Maybe Text)
    , _rdResources                 :: !(Maybe RestDescriptionResources)
    , _rdOwnerDomain               :: !(Maybe Text)
    , _rdBatchPath                 :: !Text
    , _rdMethods                   :: !(Maybe RestDescriptionMethods)
    , _rdName                      :: !(Maybe Text)
    , _rdPackagePath               :: !(Maybe Text)
    , _rdFeatures                  :: !(Maybe [Text])
    , _rdVersion                   :: !(Maybe Text)
    , _rdParameters                :: !(Maybe RestDescriptionParameters)
    , _rdDocumentationLink         :: !(Maybe Text)
    , _rdRootUrl                   :: !(Maybe Text)
    , _rdId                        :: !(Maybe Text)
    , _rdCanonicalName             :: !(Maybe Text)
    , _rdLabels                    :: !(Maybe [Text])
    , _rdDiscoveryVersion          :: !Text
    , _rdTitle                     :: !(Maybe Text)
    , _rdRevision                  :: !(Maybe Text)
    , _rdDescription               :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdEtag'
--
-- * 'rdSchemas'
--
-- * 'rdServicePath'
--
-- * 'rdBasePath'
--
-- * 'rdKind'
--
-- * 'rdExponentialBackoffDefault'
--
-- * 'rdAuth'
--
-- * 'rdIcons'
--
-- * 'rdBaseUrl'
--
-- * 'rdProtocol'
--
-- * 'rdOwnerName'
--
-- * 'rdResources'
--
-- * 'rdOwnerDomain'
--
-- * 'rdBatchPath'
--
-- * 'rdMethods'
--
-- * 'rdName'
--
-- * 'rdPackagePath'
--
-- * 'rdFeatures'
--
-- * 'rdVersion'
--
-- * 'rdParameters'
--
-- * 'rdDocumentationLink'
--
-- * 'rdRootUrl'
--
-- * 'rdId'
--
-- * 'rdCanonicalName'
--
-- * 'rdLabels'
--
-- * 'rdDiscoveryVersion'
--
-- * 'rdTitle'
--
-- * 'rdRevision'
--
-- * 'rdDescription'
restDescription
    :: RestDescription
restDescription =
    RestDescription
    { _rdEtag = Nothing
    , _rdSchemas = Nothing
    , _rdServicePath = Nothing
    , _rdBasePath = Nothing
    , _rdKind = "discovery#restDescription"
    , _rdExponentialBackoffDefault = Nothing
    , _rdAuth = Nothing
    , _rdIcons = Nothing
    , _rdBaseUrl = Nothing
    , _rdProtocol = "rest"
    , _rdOwnerName = Nothing
    , _rdResources = Nothing
    , _rdOwnerDomain = Nothing
    , _rdBatchPath = "batch"
    , _rdMethods = Nothing
    , _rdName = Nothing
    , _rdPackagePath = Nothing
    , _rdFeatures = Nothing
    , _rdVersion = Nothing
    , _rdParameters = Nothing
    , _rdDocumentationLink = Nothing
    , _rdRootUrl = Nothing
    , _rdId = Nothing
    , _rdCanonicalName = Nothing
    , _rdLabels = Nothing
    , _rdDiscoveryVersion = "v1"
    , _rdTitle = Nothing
    , _rdRevision = Nothing
    , _rdDescription = Nothing
    }

-- | The ETag for this response.
rdEtag :: Lens' RestDescription (Maybe Text)
rdEtag = lens _rdEtag (\ s a -> s{_rdEtag = a})

-- | The schemas for this API.
rdSchemas :: Lens' RestDescription (Maybe RestDescriptionSchemas)
rdSchemas
  = lens _rdSchemas (\ s a -> s{_rdSchemas = a})

-- | The base path for all REST requests.
rdServicePath :: Lens' RestDescription (Maybe Text)
rdServicePath
  = lens _rdServicePath
      (\ s a -> s{_rdServicePath = a})

-- | [DEPRECATED] The base path for REST requests.
rdBasePath :: Lens' RestDescription (Maybe Text)
rdBasePath
  = lens _rdBasePath (\ s a -> s{_rdBasePath = a})

-- | The kind for this response.
rdKind :: Lens' RestDescription Text
rdKind = lens _rdKind (\ s a -> s{_rdKind = a})

-- | Enable exponential backoff for suitable methods in the generated
-- clients.
rdExponentialBackoffDefault :: Lens' RestDescription (Maybe Bool)
rdExponentialBackoffDefault
  = lens _rdExponentialBackoffDefault
      (\ s a -> s{_rdExponentialBackoffDefault = a})

-- | Authentication information.
rdAuth :: Lens' RestDescription (Maybe RestDescriptionAuth)
rdAuth = lens _rdAuth (\ s a -> s{_rdAuth = a})

-- | Links to 16x16 and 32x32 icons representing the API.
rdIcons :: Lens' RestDescription (Maybe RestDescriptionIcons)
rdIcons = lens _rdIcons (\ s a -> s{_rdIcons = a})

-- | [DEPRECATED] The base URL for REST requests.
rdBaseUrl :: Lens' RestDescription (Maybe Text)
rdBaseUrl
  = lens _rdBaseUrl (\ s a -> s{_rdBaseUrl = a})

-- | The protocol described by this document.
rdProtocol :: Lens' RestDescription Text
rdProtocol
  = lens _rdProtocol (\ s a -> s{_rdProtocol = a})

-- | The name of the owner of this API. See ownerDomain.
rdOwnerName :: Lens' RestDescription (Maybe Text)
rdOwnerName
  = lens _rdOwnerName (\ s a -> s{_rdOwnerName = a})

-- | The resources in this API.
rdResources :: Lens' RestDescription (Maybe RestDescriptionResources)
rdResources
  = lens _rdResources (\ s a -> s{_rdResources = a})

-- | The domain of the owner of this API. Together with the ownerName and a
-- packagePath values, this can be used to generate a library for this API
-- which would have a unique fully qualified name.
rdOwnerDomain :: Lens' RestDescription (Maybe Text)
rdOwnerDomain
  = lens _rdOwnerDomain
      (\ s a -> s{_rdOwnerDomain = a})

-- | The path for REST batch requests.
rdBatchPath :: Lens' RestDescription Text
rdBatchPath
  = lens _rdBatchPath (\ s a -> s{_rdBatchPath = a})

-- | API-level methods for this API.
rdMethods :: Lens' RestDescription (Maybe RestDescriptionMethods)
rdMethods
  = lens _rdMethods (\ s a -> s{_rdMethods = a})

-- | The name of this API.
rdName :: Lens' RestDescription (Maybe Text)
rdName = lens _rdName (\ s a -> s{_rdName = a})

-- | The package of the owner of this API. See ownerDomain.
rdPackagePath :: Lens' RestDescription (Maybe Text)
rdPackagePath
  = lens _rdPackagePath
      (\ s a -> s{_rdPackagePath = a})

-- | A list of supported features for this API.
rdFeatures :: Lens' RestDescription [Text]
rdFeatures
  = lens _rdFeatures (\ s a -> s{_rdFeatures = a}) .
      _Default
      . _Coerce

-- | The version of this API.
rdVersion :: Lens' RestDescription (Maybe Text)
rdVersion
  = lens _rdVersion (\ s a -> s{_rdVersion = a})

-- | Common parameters that apply across all apis.
rdParameters :: Lens' RestDescription (Maybe RestDescriptionParameters)
rdParameters
  = lens _rdParameters (\ s a -> s{_rdParameters = a})

-- | A link to human readable documentation for the API.
rdDocumentationLink :: Lens' RestDescription (Maybe Text)
rdDocumentationLink
  = lens _rdDocumentationLink
      (\ s a -> s{_rdDocumentationLink = a})

-- | The root URL under which all API services live.
rdRootUrl :: Lens' RestDescription (Maybe Text)
rdRootUrl
  = lens _rdRootUrl (\ s a -> s{_rdRootUrl = a})

-- | The ID of this API.
rdId :: Lens' RestDescription (Maybe Text)
rdId = lens _rdId (\ s a -> s{_rdId = a})

-- | Indicates how the API name should be capitalized and split into various
-- parts. Useful for generating pretty class names.
rdCanonicalName :: Lens' RestDescription (Maybe Text)
rdCanonicalName
  = lens _rdCanonicalName
      (\ s a -> s{_rdCanonicalName = a})

-- | Labels for the status of this API, such as labs or deprecated.
rdLabels :: Lens' RestDescription [Text]
rdLabels
  = lens _rdLabels (\ s a -> s{_rdLabels = a}) .
      _Default
      . _Coerce

-- | Indicate the version of the Discovery API used to generate this doc.
rdDiscoveryVersion :: Lens' RestDescription Text
rdDiscoveryVersion
  = lens _rdDiscoveryVersion
      (\ s a -> s{_rdDiscoveryVersion = a})

-- | The title of this API.
rdTitle :: Lens' RestDescription (Maybe Text)
rdTitle = lens _rdTitle (\ s a -> s{_rdTitle = a})

-- | The version of this API.
rdRevision :: Lens' RestDescription (Maybe Text)
rdRevision
  = lens _rdRevision (\ s a -> s{_rdRevision = a})

-- | The description of this API.
rdDescription :: Lens' RestDescription (Maybe Text)
rdDescription
  = lens _rdDescription
      (\ s a -> s{_rdDescription = a})

instance FromJSON RestDescription where
        parseJSON
          = withObject "RestDescription"
              (\ o ->
                 RestDescription <$>
                   (o .:? "etag") <*> (o .:? "schemas") <*>
                     (o .:? "servicePath")
                     <*> (o .:? "basePath")
                     <*> (o .:? "kind" .!= "discovery#restDescription")
                     <*> (o .:? "exponentialBackoffDefault")
                     <*> (o .:? "auth")
                     <*> (o .:? "icons")
                     <*> (o .:? "baseUrl")
                     <*> (o .:? "protocol" .!= "rest")
                     <*> (o .:? "ownerName")
                     <*> (o .:? "resources")
                     <*> (o .:? "ownerDomain")
                     <*> (o .:? "batchPath" .!= "batch")
                     <*> (o .:? "methods")
                     <*> (o .:? "name")
                     <*> (o .:? "packagePath")
                     <*> (o .:? "features" .!= mempty)
                     <*> (o .:? "version")
                     <*> (o .:? "parameters")
                     <*> (o .:? "documentationLink")
                     <*> (o .:? "rootUrl")
                     <*> (o .:? "id")
                     <*> (o .:? "canonicalName")
                     <*> (o .:? "labels" .!= mempty)
                     <*> (o .:? "discoveryVersion" .!= "v1")
                     <*> (o .:? "title")
                     <*> (o .:? "revision")
                     <*> (o .:? "description"))

instance ToJSON RestDescription where
        toJSON RestDescription{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _rdEtag,
                  ("schemas" .=) <$> _rdSchemas,
                  ("servicePath" .=) <$> _rdServicePath,
                  ("basePath" .=) <$> _rdBasePath,
                  Just ("kind" .= _rdKind),
                  ("exponentialBackoffDefault" .=) <$>
                    _rdExponentialBackoffDefault,
                  ("auth" .=) <$> _rdAuth, ("icons" .=) <$> _rdIcons,
                  ("baseUrl" .=) <$> _rdBaseUrl,
                  Just ("protocol" .= _rdProtocol),
                  ("ownerName" .=) <$> _rdOwnerName,
                  ("resources" .=) <$> _rdResources,
                  ("ownerDomain" .=) <$> _rdOwnerDomain,
                  Just ("batchPath" .= _rdBatchPath),
                  ("methods" .=) <$> _rdMethods,
                  ("name" .=) <$> _rdName,
                  ("packagePath" .=) <$> _rdPackagePath,
                  ("features" .=) <$> _rdFeatures,
                  ("version" .=) <$> _rdVersion,
                  ("parameters" .=) <$> _rdParameters,
                  ("documentationLink" .=) <$> _rdDocumentationLink,
                  ("rootUrl" .=) <$> _rdRootUrl, ("id" .=) <$> _rdId,
                  ("canonicalName" .=) <$> _rdCanonicalName,
                  ("labels" .=) <$> _rdLabels,
                  Just ("discoveryVersion" .= _rdDiscoveryVersion),
                  ("title" .=) <$> _rdTitle,
                  ("revision" .=) <$> _rdRevision,
                  ("description" .=) <$> _rdDescription])

--
-- /See:/ 'jSONSchema' smart constructor.
data JSONSchema = JSONSchema
    { _jsAnnotations          :: !(Maybe JSONSchemaAnnotations)
    , _jsVariant              :: !(Maybe JSONSchemaVariant)
    , _jsLocation             :: !(Maybe Text)
    , _jsRef                  :: !(Maybe Text)
    , _jsPattern              :: !(Maybe Text)
    , _jsMaximum              :: !(Maybe Text)
    , _jsDefault              :: !(Maybe Text)
    , _jsFormat               :: !(Maybe Text)
    , _jsItems                :: !(Maybe (Maybe JSONSchema))
    , _jsMinimum              :: !(Maybe Text)
    , _jsRequired             :: !(Maybe Bool)
    , _jsId                   :: !(Maybe Text)
    , _jsAdditionalProperties :: !(Maybe (Maybe JSONSchema))
    , _jsType                 :: !(Maybe Text)
    , _jsEnum                 :: !(Maybe [Text])
    , _jsRepeated             :: !(Maybe Bool)
    , _jsReadOnly             :: !(Maybe Bool)
    , _jsEnumDescriptions     :: !(Maybe [Text])
    , _jsDescription          :: !(Maybe Text)
    , _jsProperties           :: !(Maybe JSONSchemaProperties)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JSONSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsAnnotations'
--
-- * 'jsVariant'
--
-- * 'jsLocation'
--
-- * 'jsRef'
--
-- * 'jsPattern'
--
-- * 'jsMaximum'
--
-- * 'jsDefault'
--
-- * 'jsFormat'
--
-- * 'jsItems'
--
-- * 'jsMinimum'
--
-- * 'jsRequired'
--
-- * 'jsId'
--
-- * 'jsAdditionalProperties'
--
-- * 'jsType'
--
-- * 'jsEnum'
--
-- * 'jsRepeated'
--
-- * 'jsReadOnly'
--
-- * 'jsEnumDescriptions'
--
-- * 'jsDescription'
--
-- * 'jsProperties'
jSONSchema
    :: JSONSchema
jSONSchema =
    JSONSchema
    { _jsAnnotations = Nothing
    , _jsVariant = Nothing
    , _jsLocation = Nothing
    , _jsRef = Nothing
    , _jsPattern = Nothing
    , _jsMaximum = Nothing
    , _jsDefault = Nothing
    , _jsFormat = Nothing
    , _jsItems = Nothing
    , _jsMinimum = Nothing
    , _jsRequired = Nothing
    , _jsId = Nothing
    , _jsAdditionalProperties = Nothing
    , _jsType = Nothing
    , _jsEnum = Nothing
    , _jsRepeated = Nothing
    , _jsReadOnly = Nothing
    , _jsEnumDescriptions = Nothing
    , _jsDescription = Nothing
    , _jsProperties = Nothing
    }

-- | Additional information about this property.
jsAnnotations :: Lens' JSONSchema (Maybe JSONSchemaAnnotations)
jsAnnotations
  = lens _jsAnnotations
      (\ s a -> s{_jsAnnotations = a})

-- | In a variant data type, the value of one property is used to determine
-- how to interpret the entire entity. Its value must exist in a map of
-- descriminant values to schema names.
jsVariant :: Lens' JSONSchema (Maybe JSONSchemaVariant)
jsVariant
  = lens _jsVariant (\ s a -> s{_jsVariant = a})

-- | Whether this parameter goes in the query or the path for REST requests.
jsLocation :: Lens' JSONSchema (Maybe Text)
jsLocation
  = lens _jsLocation (\ s a -> s{_jsLocation = a})

-- | A reference to another schema. The value of this property is the \"id\"
-- of another schema.
jsRef :: Lens' JSONSchema (Maybe Text)
jsRef = lens _jsRef (\ s a -> s{_jsRef = a})

-- | The regular expression this parameter must conform to. Uses Java 6 regex
-- format:
-- http:\/\/docs.oracle.com\/javase\/6\/docs\/api\/java\/util\/regex\/Pattern.html
jsPattern :: Lens' JSONSchema (Maybe Text)
jsPattern
  = lens _jsPattern (\ s a -> s{_jsPattern = a})

-- | The maximum value of this parameter.
jsMaximum :: Lens' JSONSchema (Maybe Text)
jsMaximum
  = lens _jsMaximum (\ s a -> s{_jsMaximum = a})

-- | The default value of this property (if one exists).
jsDefault :: Lens' JSONSchema (Maybe Text)
jsDefault
  = lens _jsDefault (\ s a -> s{_jsDefault = a})

-- | An additional regular expression or key that helps constrain the value.
-- For more details see:
-- http:\/\/tools.ietf.org\/html\/draft-zyp-json-schema-03#section-5.23
jsFormat :: Lens' JSONSchema (Maybe Text)
jsFormat = lens _jsFormat (\ s a -> s{_jsFormat = a})

-- | If this is a schema for an array, this property is the schema for each
-- element in the array.
jsItems :: Lens' JSONSchema (Maybe (Maybe JSONSchema))
jsItems = lens _jsItems (\ s a -> s{_jsItems = a})

-- | The minimum value of this parameter.
jsMinimum :: Lens' JSONSchema (Maybe Text)
jsMinimum
  = lens _jsMinimum (\ s a -> s{_jsMinimum = a})

-- | Whether the parameter is required.
jsRequired :: Lens' JSONSchema (Maybe Bool)
jsRequired
  = lens _jsRequired (\ s a -> s{_jsRequired = a})

-- | Unique identifier for this schema.
jsId :: Lens' JSONSchema (Maybe Text)
jsId = lens _jsId (\ s a -> s{_jsId = a})

-- | If this is a schema for an object, this property is the schema for any
-- additional properties with dynamic keys on this object.
jsAdditionalProperties :: Lens' JSONSchema (Maybe (Maybe JSONSchema))
jsAdditionalProperties
  = lens _jsAdditionalProperties
      (\ s a -> s{_jsAdditionalProperties = a})

-- | The value type for this schema. A list of values can be found here:
-- http:\/\/tools.ietf.org\/html\/draft-zyp-json-schema-03#section-5.1
jsType :: Lens' JSONSchema (Maybe Text)
jsType = lens _jsType (\ s a -> s{_jsType = a})

-- | Values this parameter may take (if it is an enum).
jsEnum :: Lens' JSONSchema [Text]
jsEnum
  = lens _jsEnum (\ s a -> s{_jsEnum = a}) . _Default .
      _Coerce

-- | Whether this parameter may appear multiple times.
jsRepeated :: Lens' JSONSchema (Maybe Bool)
jsRepeated
  = lens _jsRepeated (\ s a -> s{_jsRepeated = a})

-- | The value is read-only, generated by the service. The value cannot be
-- modified by the client. If the value is included in a POST, PUT, or
-- PATCH request, it is ignored by the service.
jsReadOnly :: Lens' JSONSchema (Maybe Bool)
jsReadOnly
  = lens _jsReadOnly (\ s a -> s{_jsReadOnly = a})

-- | The descriptions for the enums. Each position maps to the corresponding
-- value in the \"enum\" array.
jsEnumDescriptions :: Lens' JSONSchema [Text]
jsEnumDescriptions
  = lens _jsEnumDescriptions
      (\ s a -> s{_jsEnumDescriptions = a})
      . _Default
      . _Coerce

-- | A description of this object.
jsDescription :: Lens' JSONSchema (Maybe Text)
jsDescription
  = lens _jsDescription
      (\ s a -> s{_jsDescription = a})

-- | If this is a schema for an object, list the schema for each property of
-- this object.
jsProperties :: Lens' JSONSchema (Maybe JSONSchemaProperties)
jsProperties
  = lens _jsProperties (\ s a -> s{_jsProperties = a})

instance FromJSON JSONSchema where
        parseJSON
          = withObject "JSONSchema"
              (\ o ->
                 JSONSchema <$>
                   (o .:? "annotations") <*> (o .:? "variant") <*>
                     (o .:? "location")
                     <*> (o .:? "$ref")
                     <*> (o .:? "pattern")
                     <*> (o .:? "maximum")
                     <*> (o .:? "default")
                     <*> (o .:? "format")
                     <*> (o .:? "items")
                     <*> (o .:? "minimum")
                     <*> (o .:? "required")
                     <*> (o .:? "id")
                     <*> (o .:? "additionalProperties")
                     <*> (o .:? "type")
                     <*> (o .:? "enum" .!= mempty)
                     <*> (o .:? "repeated")
                     <*> (o .:? "readOnly")
                     <*> (o .:? "enumDescriptions" .!= mempty)
                     <*> (o .:? "description")
                     <*> (o .:? "properties"))

instance ToJSON JSONSchema where
        toJSON JSONSchema{..}
          = object
              (catMaybes
                 [("annotations" .=) <$> _jsAnnotations,
                  ("variant" .=) <$> _jsVariant,
                  ("location" .=) <$> _jsLocation,
                  ("$ref" .=) <$> _jsRef,
                  ("pattern" .=) <$> _jsPattern,
                  ("maximum" .=) <$> _jsMaximum,
                  ("default" .=) <$> _jsDefault,
                  ("format" .=) <$> _jsFormat,
                  ("items" .=) <$> _jsItems,
                  ("minimum" .=) <$> _jsMinimum,
                  ("required" .=) <$> _jsRequired, ("id" .=) <$> _jsId,
                  ("additionalProperties" .=) <$>
                    _jsAdditionalProperties,
                  ("type" .=) <$> _jsType, ("enum" .=) <$> _jsEnum,
                  ("repeated" .=) <$> _jsRepeated,
                  ("readOnly" .=) <$> _jsReadOnly,
                  ("enumDescriptions" .=) <$> _jsEnumDescriptions,
                  ("description" .=) <$> _jsDescription,
                  ("properties" .=) <$> _jsProperties])

--
-- /See:/ 'directoryList' smart constructor.
data DirectoryList = DirectoryList
    { _dlKind             :: !Text
    , _dlItems            :: !(Maybe [DirectoryListItemsItem])
    , _dlDiscoveryVersion :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectoryList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlKind'
--
-- * 'dlItems'
--
-- * 'dlDiscoveryVersion'
directoryList
    :: DirectoryList
directoryList =
    DirectoryList
    { _dlKind = "discovery#directoryList"
    , _dlItems = Nothing
    , _dlDiscoveryVersion = "v1"
    }

-- | The kind for this response.
dlKind :: Lens' DirectoryList Text
dlKind = lens _dlKind (\ s a -> s{_dlKind = a})

-- | The individual directory entries. One entry per api\/version pair.
dlItems :: Lens' DirectoryList [DirectoryListItemsItem]
dlItems
  = lens _dlItems (\ s a -> s{_dlItems = a}) . _Default
      . _Coerce

-- | Indicate the version of the Discovery API used to generate this doc.
dlDiscoveryVersion :: Lens' DirectoryList Text
dlDiscoveryVersion
  = lens _dlDiscoveryVersion
      (\ s a -> s{_dlDiscoveryVersion = a})

instance FromJSON DirectoryList where
        parseJSON
          = withObject "DirectoryList"
              (\ o ->
                 DirectoryList <$>
                   (o .:? "kind" .!= "discovery#directoryList") <*>
                     (o .:? "items" .!= mempty)
                     <*> (o .:? "discoveryVersion" .!= "v1"))

instance ToJSON DirectoryList where
        toJSON DirectoryList{..}
          = object
              (catMaybes
                 [Just ("kind" .= _dlKind), ("items" .=) <$> _dlItems,
                  Just ("discoveryVersion" .= _dlDiscoveryVersion)])
