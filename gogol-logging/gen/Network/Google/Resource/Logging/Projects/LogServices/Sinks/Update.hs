{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Logging.Projects.LogServices.Sinks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a log service sink. If the sink does not exist, it is created.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsLogServicesSinksUpdate@.
module Logging.Projects.LogServices.Sinks.Update
    (
    -- * REST Resource
      ProjectsLogServicesSinksUpdateAPI

    -- * Creating a Request
    , projectsLogServicesSinksUpdate
    , ProjectsLogServicesSinksUpdate

    -- * Request Lenses
    , plssuXgafv
    , plssuQuotaUser
    , plssuPrettyPrint
    , plssuUploadProtocol
    , plssuPp
    , plssuAccessToken
    , plssuUploadType
    , plssuBearerToken
    , plssuKey
    , plssuLogServicesId
    , plssuOauthToken
    , plssuProjectsId
    , plssuSinksId
    , plssuFields
    , plssuCallback
    , plssuAlt
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsLogServicesSinksUpdate@ which the
-- 'ProjectsLogServicesSinksUpdate' request conforms to.
type ProjectsLogServicesSinksUpdateAPI =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
           "logServices" :>
             Capture "logServicesId" Text :>
               "sinks" :>
                 Capture "sinksId" Text :> Put '[JSON] LogSink

-- | Updates a log service sink. If the sink does not exist, it is created.
--
-- /See:/ 'projectsLogServicesSinksUpdate' smart constructor.
data ProjectsLogServicesSinksUpdate = ProjectsLogServicesSinksUpdate
    { _plssuXgafv          :: !(Maybe Text)
    , _plssuQuotaUser      :: !(Maybe Text)
    , _plssuPrettyPrint    :: !Bool
    , _plssuUploadProtocol :: !(Maybe Text)
    , _plssuPp             :: !Bool
    , _plssuAccessToken    :: !(Maybe Text)
    , _plssuUploadType     :: !(Maybe Text)
    , _plssuBearerToken    :: !(Maybe Text)
    , _plssuKey            :: !(Maybe Text)
    , _plssuLogServicesId  :: !Text
    , _plssuOauthToken     :: !(Maybe Text)
    , _plssuProjectsId     :: !Text
    , _plssuSinksId        :: !Text
    , _plssuFields         :: !(Maybe Text)
    , _plssuCallback       :: !(Maybe Text)
    , _plssuAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLogServicesSinksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plssuXgafv'
--
-- * 'plssuQuotaUser'
--
-- * 'plssuPrettyPrint'
--
-- * 'plssuUploadProtocol'
--
-- * 'plssuPp'
--
-- * 'plssuAccessToken'
--
-- * 'plssuUploadType'
--
-- * 'plssuBearerToken'
--
-- * 'plssuKey'
--
-- * 'plssuLogServicesId'
--
-- * 'plssuOauthToken'
--
-- * 'plssuProjectsId'
--
-- * 'plssuSinksId'
--
-- * 'plssuFields'
--
-- * 'plssuCallback'
--
-- * 'plssuAlt'
projectsLogServicesSinksUpdate
    :: Text -- ^ 'logServicesId'
    -> Text -- ^ 'projectsId'
    -> Text -- ^ 'sinksId'
    -> ProjectsLogServicesSinksUpdate
projectsLogServicesSinksUpdate pPlssuLogServicesId_ pPlssuProjectsId_ pPlssuSinksId_ =
    ProjectsLogServicesSinksUpdate
    { _plssuXgafv = Nothing
    , _plssuQuotaUser = Nothing
    , _plssuPrettyPrint = True
    , _plssuUploadProtocol = Nothing
    , _plssuPp = True
    , _plssuAccessToken = Nothing
    , _plssuUploadType = Nothing
    , _plssuBearerToken = Nothing
    , _plssuKey = Nothing
    , _plssuLogServicesId = pPlssuLogServicesId_
    , _plssuOauthToken = Nothing
    , _plssuProjectsId = pPlssuProjectsId_
    , _plssuSinksId = pPlssuSinksId_
    , _plssuFields = Nothing
    , _plssuCallback = Nothing
    , _plssuAlt = "json"
    }

-- | V1 error format.
plssuXgafv :: Lens' ProjectsLogServicesSinksUpdate' (Maybe Text)
plssuXgafv
  = lens _plssuXgafv (\ s a -> s{_plssuXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
plssuQuotaUser :: Lens' ProjectsLogServicesSinksUpdate' (Maybe Text)
plssuQuotaUser
  = lens _plssuQuotaUser
      (\ s a -> s{_plssuQuotaUser = a})

-- | Returns response with indentations and line breaks.
plssuPrettyPrint :: Lens' ProjectsLogServicesSinksUpdate' Bool
plssuPrettyPrint
  = lens _plssuPrettyPrint
      (\ s a -> s{_plssuPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plssuUploadProtocol :: Lens' ProjectsLogServicesSinksUpdate' (Maybe Text)
plssuUploadProtocol
  = lens _plssuUploadProtocol
      (\ s a -> s{_plssuUploadProtocol = a})

-- | Pretty-print response.
plssuPp :: Lens' ProjectsLogServicesSinksUpdate' Bool
plssuPp = lens _plssuPp (\ s a -> s{_plssuPp = a})

-- | OAuth access token.
plssuAccessToken :: Lens' ProjectsLogServicesSinksUpdate' (Maybe Text)
plssuAccessToken
  = lens _plssuAccessToken
      (\ s a -> s{_plssuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plssuUploadType :: Lens' ProjectsLogServicesSinksUpdate' (Maybe Text)
plssuUploadType
  = lens _plssuUploadType
      (\ s a -> s{_plssuUploadType = a})

-- | OAuth bearer token.
plssuBearerToken :: Lens' ProjectsLogServicesSinksUpdate' (Maybe Text)
plssuBearerToken
  = lens _plssuBearerToken
      (\ s a -> s{_plssuBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plssuKey :: Lens' ProjectsLogServicesSinksUpdate' (Maybe Text)
plssuKey = lens _plssuKey (\ s a -> s{_plssuKey = a})

-- | Part of \`sinkName\`. See documentation of \`projectsId\`.
plssuLogServicesId :: Lens' ProjectsLogServicesSinksUpdate' Text
plssuLogServicesId
  = lens _plssuLogServicesId
      (\ s a -> s{_plssuLogServicesId = a})

-- | OAuth 2.0 token for the current user.
plssuOauthToken :: Lens' ProjectsLogServicesSinksUpdate' (Maybe Text)
plssuOauthToken
  = lens _plssuOauthToken
      (\ s a -> s{_plssuOauthToken = a})

-- | Part of \`sinkName\`. The resource name of the log service sink to
-- update.
plssuProjectsId :: Lens' ProjectsLogServicesSinksUpdate' Text
plssuProjectsId
  = lens _plssuProjectsId
      (\ s a -> s{_plssuProjectsId = a})

-- | Part of \`sinkName\`. See documentation of \`projectsId\`.
plssuSinksId :: Lens' ProjectsLogServicesSinksUpdate' Text
plssuSinksId
  = lens _plssuSinksId (\ s a -> s{_plssuSinksId = a})

-- | Selector specifying which fields to include in a partial response.
plssuFields :: Lens' ProjectsLogServicesSinksUpdate' (Maybe Text)
plssuFields
  = lens _plssuFields (\ s a -> s{_plssuFields = a})

-- | JSONP
plssuCallback :: Lens' ProjectsLogServicesSinksUpdate' (Maybe Text)
plssuCallback
  = lens _plssuCallback
      (\ s a -> s{_plssuCallback = a})

-- | Data format for response.
plssuAlt :: Lens' ProjectsLogServicesSinksUpdate' Text
plssuAlt = lens _plssuAlt (\ s a -> s{_plssuAlt = a})

instance GoogleRequest
         ProjectsLogServicesSinksUpdate' where
        type Rs ProjectsLogServicesSinksUpdate' = LogSink
        request = requestWithRoute defReq loggingURL
        requestWithRoute r u
          ProjectsLogServicesSinksUpdate{..}
          = go _plssuXgafv _plssuQuotaUser _plssuPrettyPrint
              _plssuUploadProtocol
              _plssuPp
              _plssuAccessToken
              _plssuUploadType
              _plssuBearerToken
              _plssuKey
              _plssuLogServicesId
              _plssuOauthToken
              _plssuProjectsId
              _plssuSinksId
              _plssuFields
              _plssuCallback
              _plssuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsLogServicesSinksUpdateAPI)
                      r
                      u
