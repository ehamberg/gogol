{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.MachineTypes.AggregatedList
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of machine type resources grouped by scope.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeMachineTypesAggregatedList@.
module Compute.MachineTypes.AggregatedList
    (
    -- * REST Resource
      MachineTypesAggregatedListAPI

    -- * Creating a Request
    , machineTypesAggregatedList
    , MachineTypesAggregatedList

    -- * Request Lenses
    , mtalQuotaUser
    , mtalPrettyPrint
    , mtalProject
    , mtalUserIp
    , mtalKey
    , mtalFilter
    , mtalPageToken
    , mtalOauthToken
    , mtalMaxResults
    , mtalFields
    , mtalAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeMachineTypesAggregatedList@ which the
-- 'MachineTypesAggregatedList' request conforms to.
type MachineTypesAggregatedListAPI =
     Capture "project" Text :>
       "aggregated" :>
         "machineTypes" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 Get '[JSON] MachineTypeAggregatedList

-- | Retrieves the list of machine type resources grouped by scope.
--
-- /See:/ 'machineTypesAggregatedList' smart constructor.
data MachineTypesAggregatedList = MachineTypesAggregatedList
    { _mtalQuotaUser   :: !(Maybe Text)
    , _mtalPrettyPrint :: !Bool
    , _mtalProject     :: !Text
    , _mtalUserIp      :: !(Maybe Text)
    , _mtalKey         :: !(Maybe Text)
    , _mtalFilter      :: !(Maybe Text)
    , _mtalPageToken   :: !(Maybe Text)
    , _mtalOauthToken  :: !(Maybe Text)
    , _mtalMaxResults  :: !Word32
    , _mtalFields      :: !(Maybe Text)
    , _mtalAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MachineTypesAggregatedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtalQuotaUser'
--
-- * 'mtalPrettyPrint'
--
-- * 'mtalProject'
--
-- * 'mtalUserIp'
--
-- * 'mtalKey'
--
-- * 'mtalFilter'
--
-- * 'mtalPageToken'
--
-- * 'mtalOauthToken'
--
-- * 'mtalMaxResults'
--
-- * 'mtalFields'
--
-- * 'mtalAlt'
machineTypesAggregatedList
    :: Text -- ^ 'project'
    -> MachineTypesAggregatedList
machineTypesAggregatedList pMtalProject_ =
    MachineTypesAggregatedList
    { _mtalQuotaUser = Nothing
    , _mtalPrettyPrint = True
    , _mtalProject = pMtalProject_
    , _mtalUserIp = Nothing
    , _mtalKey = Nothing
    , _mtalFilter = Nothing
    , _mtalPageToken = Nothing
    , _mtalOauthToken = Nothing
    , _mtalMaxResults = 500
    , _mtalFields = Nothing
    , _mtalAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mtalQuotaUser :: Lens' MachineTypesAggregatedList' (Maybe Text)
mtalQuotaUser
  = lens _mtalQuotaUser
      (\ s a -> s{_mtalQuotaUser = a})

-- | Returns response with indentations and line breaks.
mtalPrettyPrint :: Lens' MachineTypesAggregatedList' Bool
mtalPrettyPrint
  = lens _mtalPrettyPrint
      (\ s a -> s{_mtalPrettyPrint = a})

-- | Project ID for this request.
mtalProject :: Lens' MachineTypesAggregatedList' Text
mtalProject
  = lens _mtalProject (\ s a -> s{_mtalProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mtalUserIp :: Lens' MachineTypesAggregatedList' (Maybe Text)
mtalUserIp
  = lens _mtalUserIp (\ s a -> s{_mtalUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mtalKey :: Lens' MachineTypesAggregatedList' (Maybe Text)
mtalKey = lens _mtalKey (\ s a -> s{_mtalKey = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
mtalFilter :: Lens' MachineTypesAggregatedList' (Maybe Text)
mtalFilter
  = lens _mtalFilter (\ s a -> s{_mtalFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
mtalPageToken :: Lens' MachineTypesAggregatedList' (Maybe Text)
mtalPageToken
  = lens _mtalPageToken
      (\ s a -> s{_mtalPageToken = a})

-- | OAuth 2.0 token for the current user.
mtalOauthToken :: Lens' MachineTypesAggregatedList' (Maybe Text)
mtalOauthToken
  = lens _mtalOauthToken
      (\ s a -> s{_mtalOauthToken = a})

-- | Maximum count of results to be returned.
mtalMaxResults :: Lens' MachineTypesAggregatedList' Word32
mtalMaxResults
  = lens _mtalMaxResults
      (\ s a -> s{_mtalMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mtalFields :: Lens' MachineTypesAggregatedList' (Maybe Text)
mtalFields
  = lens _mtalFields (\ s a -> s{_mtalFields = a})

-- | Data format for the response.
mtalAlt :: Lens' MachineTypesAggregatedList' Text
mtalAlt = lens _mtalAlt (\ s a -> s{_mtalAlt = a})

instance GoogleRequest MachineTypesAggregatedList'
         where
        type Rs MachineTypesAggregatedList' =
             MachineTypeAggregatedList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u MachineTypesAggregatedList{..}
          = go _mtalQuotaUser _mtalPrettyPrint _mtalProject
              _mtalUserIp
              _mtalKey
              _mtalFilter
              _mtalPageToken
              _mtalOauthToken
              (Just _mtalMaxResults)
              _mtalFields
              _mtalAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MachineTypesAggregatedListAPI)
                      r
                      u
