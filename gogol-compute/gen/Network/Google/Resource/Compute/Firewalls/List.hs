{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Firewalls.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of firewall resources available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeFirewallsList@.
module Compute.Firewalls.List
    (
    -- * REST Resource
      FirewallsListAPI

    -- * Creating a Request
    , firewallsList
    , FirewallsList

    -- * Request Lenses
    , flQuotaUser
    , flPrettyPrint
    , flProject
    , flUserIp
    , flKey
    , flFilter
    , flPageToken
    , flOauthToken
    , flMaxResults
    , flFields
    , flAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeFirewallsList@ which the
-- 'FirewallsList' request conforms to.
type FirewallsListAPI =
     Capture "project" Text :>
       "global" :>
         "firewalls" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 Get '[JSON] FirewallList

-- | Retrieves the list of firewall resources available to the specified
-- project.
--
-- /See:/ 'firewallsList' smart constructor.
data FirewallsList = FirewallsList
    { _flQuotaUser   :: !(Maybe Text)
    , _flPrettyPrint :: !Bool
    , _flProject     :: !Text
    , _flUserIp      :: !(Maybe Text)
    , _flKey         :: !(Maybe Text)
    , _flFilter      :: !(Maybe Text)
    , _flPageToken   :: !(Maybe Text)
    , _flOauthToken  :: !(Maybe Text)
    , _flMaxResults  :: !Word32
    , _flFields      :: !(Maybe Text)
    , _flAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FirewallsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flQuotaUser'
--
-- * 'flPrettyPrint'
--
-- * 'flProject'
--
-- * 'flUserIp'
--
-- * 'flKey'
--
-- * 'flFilter'
--
-- * 'flPageToken'
--
-- * 'flOauthToken'
--
-- * 'flMaxResults'
--
-- * 'flFields'
--
-- * 'flAlt'
firewallsList
    :: Text -- ^ 'project'
    -> FirewallsList
firewallsList pFlProject_ =
    FirewallsList
    { _flQuotaUser = Nothing
    , _flPrettyPrint = True
    , _flProject = pFlProject_
    , _flUserIp = Nothing
    , _flKey = Nothing
    , _flFilter = Nothing
    , _flPageToken = Nothing
    , _flOauthToken = Nothing
    , _flMaxResults = 500
    , _flFields = Nothing
    , _flAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
flQuotaUser :: Lens' FirewallsList' (Maybe Text)
flQuotaUser
  = lens _flQuotaUser (\ s a -> s{_flQuotaUser = a})

-- | Returns response with indentations and line breaks.
flPrettyPrint :: Lens' FirewallsList' Bool
flPrettyPrint
  = lens _flPrettyPrint
      (\ s a -> s{_flPrettyPrint = a})

-- | Project ID for this request.
flProject :: Lens' FirewallsList' Text
flProject
  = lens _flProject (\ s a -> s{_flProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
flUserIp :: Lens' FirewallsList' (Maybe Text)
flUserIp = lens _flUserIp (\ s a -> s{_flUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
flKey :: Lens' FirewallsList' (Maybe Text)
flKey = lens _flKey (\ s a -> s{_flKey = a})

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
flFilter :: Lens' FirewallsList' (Maybe Text)
flFilter = lens _flFilter (\ s a -> s{_flFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
flPageToken :: Lens' FirewallsList' (Maybe Text)
flPageToken
  = lens _flPageToken (\ s a -> s{_flPageToken = a})

-- | OAuth 2.0 token for the current user.
flOauthToken :: Lens' FirewallsList' (Maybe Text)
flOauthToken
  = lens _flOauthToken (\ s a -> s{_flOauthToken = a})

-- | Maximum count of results to be returned.
flMaxResults :: Lens' FirewallsList' Word32
flMaxResults
  = lens _flMaxResults (\ s a -> s{_flMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
flFields :: Lens' FirewallsList' (Maybe Text)
flFields = lens _flFields (\ s a -> s{_flFields = a})

-- | Data format for the response.
flAlt :: Lens' FirewallsList' Text
flAlt = lens _flAlt (\ s a -> s{_flAlt = a})

instance GoogleRequest FirewallsList' where
        type Rs FirewallsList' = FirewallList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u FirewallsList{..}
          = go _flQuotaUser _flPrettyPrint _flProject _flUserIp
              _flKey
              _flFilter
              _flPageToken
              _flOauthToken
              (Just _flMaxResults)
              _flFields
              _flAlt
          where go
                  = clientWithRoute (Proxy :: Proxy FirewallsListAPI) r
                      u
