{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Tables.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all tables readable by the current user.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineTablesList@.
module Mapsengine.Tables.List
    (
    -- * REST Resource
      TablesListAPI

    -- * Creating a Request
    , tablesList
    , TablesList

    -- * Request Lenses
    , tlCreatedAfter
    , tlQuotaUser
    , tlPrettyPrint
    , tlUserIp
    , tlCreatorEmail
    , tlRole
    , tlKey
    , tlBbox
    , tlProcessingStatus
    , tlModifiedAfter
    , tlModifiedBefore
    , tlPageToken
    , tlProjectId
    , tlOauthToken
    , tlSearch
    , tlMaxResults
    , tlTags
    , tlFields
    , tlCreatedBefore
    , tlAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineTablesList@ which the
-- 'TablesList' request conforms to.
type TablesListAPI =
     "tables" :>
       QueryParam "createdAfter" UTCTime :>
         QueryParam "creatorEmail" Text :>
           QueryParam "role" Text :>
             QueryParam "bbox" Text :>
               QueryParam "processingStatus" Text :>
                 QueryParam "modifiedAfter" UTCTime :>
                   QueryParam "modifiedBefore" UTCTime :>
                     QueryParam "pageToken" Text :>
                       QueryParam "projectId" Text :>
                         QueryParam "search" Text :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "tags" Text :>
                               QueryParam "createdBefore" UTCTime :>
                                 Get '[JSON] TablesListResponse

-- | Return all tables readable by the current user.
--
-- /See:/ 'tablesList' smart constructor.
data TablesList = TablesList
    { _tlCreatedAfter     :: !(Maybe UTCTime)
    , _tlQuotaUser        :: !(Maybe Text)
    , _tlPrettyPrint      :: !Bool
    , _tlUserIp           :: !(Maybe Text)
    , _tlCreatorEmail     :: !(Maybe Text)
    , _tlRole             :: !(Maybe Text)
    , _tlKey              :: !(Maybe Text)
    , _tlBbox             :: !(Maybe Text)
    , _tlProcessingStatus :: !(Maybe Text)
    , _tlModifiedAfter    :: !(Maybe UTCTime)
    , _tlModifiedBefore   :: !(Maybe UTCTime)
    , _tlPageToken        :: !(Maybe Text)
    , _tlProjectId        :: !(Maybe Text)
    , _tlOauthToken       :: !(Maybe Text)
    , _tlSearch           :: !(Maybe Text)
    , _tlMaxResults       :: !(Maybe Word32)
    , _tlTags             :: !(Maybe Text)
    , _tlFields           :: !(Maybe Text)
    , _tlCreatedBefore    :: !(Maybe UTCTime)
    , _tlAlt              :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlCreatedAfter'
--
-- * 'tlQuotaUser'
--
-- * 'tlPrettyPrint'
--
-- * 'tlUserIp'
--
-- * 'tlCreatorEmail'
--
-- * 'tlRole'
--
-- * 'tlKey'
--
-- * 'tlBbox'
--
-- * 'tlProcessingStatus'
--
-- * 'tlModifiedAfter'
--
-- * 'tlModifiedBefore'
--
-- * 'tlPageToken'
--
-- * 'tlProjectId'
--
-- * 'tlOauthToken'
--
-- * 'tlSearch'
--
-- * 'tlMaxResults'
--
-- * 'tlTags'
--
-- * 'tlFields'
--
-- * 'tlCreatedBefore'
--
-- * 'tlAlt'
tablesList
    :: TablesList
tablesList =
    TablesList
    { _tlCreatedAfter = Nothing
    , _tlQuotaUser = Nothing
    , _tlPrettyPrint = True
    , _tlUserIp = Nothing
    , _tlCreatorEmail = Nothing
    , _tlRole = Nothing
    , _tlKey = Nothing
    , _tlBbox = Nothing
    , _tlProcessingStatus = Nothing
    , _tlModifiedAfter = Nothing
    , _tlModifiedBefore = Nothing
    , _tlPageToken = Nothing
    , _tlProjectId = Nothing
    , _tlOauthToken = Nothing
    , _tlSearch = Nothing
    , _tlMaxResults = Nothing
    , _tlTags = Nothing
    , _tlFields = Nothing
    , _tlCreatedBefore = Nothing
    , _tlAlt = "json"
    }

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or after this time.
tlCreatedAfter :: Lens' TablesList' (Maybe UTCTime)
tlCreatedAfter
  = lens _tlCreatedAfter
      (\ s a -> s{_tlCreatedAfter = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tlQuotaUser :: Lens' TablesList' (Maybe Text)
tlQuotaUser
  = lens _tlQuotaUser (\ s a -> s{_tlQuotaUser = a})

-- | Returns response with indentations and line breaks.
tlPrettyPrint :: Lens' TablesList' Bool
tlPrettyPrint
  = lens _tlPrettyPrint
      (\ s a -> s{_tlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tlUserIp :: Lens' TablesList' (Maybe Text)
tlUserIp = lens _tlUserIp (\ s a -> s{_tlUserIp = a})

-- | An email address representing a user. Returned assets that have been
-- created by the user associated with the provided email address.
tlCreatorEmail :: Lens' TablesList' (Maybe Text)
tlCreatorEmail
  = lens _tlCreatorEmail
      (\ s a -> s{_tlCreatorEmail = a})

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
tlRole :: Lens' TablesList' (Maybe Text)
tlRole = lens _tlRole (\ s a -> s{_tlRole = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tlKey :: Lens' TablesList' (Maybe Text)
tlKey = lens _tlKey (\ s a -> s{_tlKey = a})

-- | A bounding box, expressed as \"west,south,east,north\". If set, only
-- assets which intersect this bounding box will be returned.
tlBbox :: Lens' TablesList' (Maybe Text)
tlBbox = lens _tlBbox (\ s a -> s{_tlBbox = a})

tlProcessingStatus :: Lens' TablesList' (Maybe Text)
tlProcessingStatus
  = lens _tlProcessingStatus
      (\ s a -> s{_tlProcessingStatus = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or after this time.
tlModifiedAfter :: Lens' TablesList' (Maybe UTCTime)
tlModifiedAfter
  = lens _tlModifiedAfter
      (\ s a -> s{_tlModifiedAfter = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or before this time.
tlModifiedBefore :: Lens' TablesList' (Maybe UTCTime)
tlModifiedBefore
  = lens _tlModifiedBefore
      (\ s a -> s{_tlModifiedBefore = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
tlPageToken :: Lens' TablesList' (Maybe Text)
tlPageToken
  = lens _tlPageToken (\ s a -> s{_tlPageToken = a})

-- | The ID of a Maps Engine project, used to filter the response. To list
-- all available projects with their IDs, send a Projects: list request.
-- You can also find your project ID as the value of the DashboardPlace:cid
-- URL parameter when signed in to mapsengine.google.com.
tlProjectId :: Lens' TablesList' (Maybe Text)
tlProjectId
  = lens _tlProjectId (\ s a -> s{_tlProjectId = a})

-- | OAuth 2.0 token for the current user.
tlOauthToken :: Lens' TablesList' (Maybe Text)
tlOauthToken
  = lens _tlOauthToken (\ s a -> s{_tlOauthToken = a})

-- | An unstructured search string used to filter the set of results based on
-- asset metadata.
tlSearch :: Lens' TablesList' (Maybe Text)
tlSearch = lens _tlSearch (\ s a -> s{_tlSearch = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 100.
tlMaxResults :: Lens' TablesList' (Maybe Word32)
tlMaxResults
  = lens _tlMaxResults (\ s a -> s{_tlMaxResults = a})

-- | A comma separated list of tags. Returned assets will contain all the
-- tags from the list.
tlTags :: Lens' TablesList' (Maybe Text)
tlTags = lens _tlTags (\ s a -> s{_tlTags = a})

-- | Selector specifying which fields to include in a partial response.
tlFields :: Lens' TablesList' (Maybe Text)
tlFields = lens _tlFields (\ s a -> s{_tlFields = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or before this time.
tlCreatedBefore :: Lens' TablesList' (Maybe UTCTime)
tlCreatedBefore
  = lens _tlCreatedBefore
      (\ s a -> s{_tlCreatedBefore = a})

-- | Data format for the response.
tlAlt :: Lens' TablesList' Text
tlAlt = lens _tlAlt (\ s a -> s{_tlAlt = a})

instance GoogleRequest TablesList' where
        type Rs TablesList' = TablesListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u TablesList{..}
          = go _tlCreatedAfter _tlQuotaUser _tlPrettyPrint
              _tlUserIp
              _tlCreatorEmail
              _tlRole
              _tlKey
              _tlBbox
              _tlProcessingStatus
              _tlModifiedAfter
              _tlModifiedBefore
              _tlPageToken
              _tlProjectId
              _tlOauthToken
              _tlSearch
              _tlMaxResults
              _tlTags
              _tlFields
              _tlCreatedBefore
              _tlAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TablesListAPI) r u
