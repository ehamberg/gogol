{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Reports.CompatibleFields.Query
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the fields that are compatible to be selected in the respective
-- sections of a report criteria, given the fields already selected in the
-- input report and user permissions.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingReportsCompatibleFieldsQuery@.
module DFAReporting.Reports.CompatibleFields.Query
    (
    -- * REST Resource
      ReportsCompatibleFieldsQueryAPI

    -- * Creating a Request
    , reportsCompatibleFieldsQuery
    , ReportsCompatibleFieldsQuery

    -- * Request Lenses
    , rcfqQuotaUser
    , rcfqPrettyPrint
    , rcfqUserIp
    , rcfqProfileId
    , rcfqKey
    , rcfqOauthToken
    , rcfqFields
    , rcfqAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingReportsCompatibleFieldsQuery@ which the
-- 'ReportsCompatibleFieldsQuery' request conforms to.
type ReportsCompatibleFieldsQueryAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "reports" :>
           "compatiblefields" :>
             "query" :> Post '[JSON] CompatibleFields

-- | Returns the fields that are compatible to be selected in the respective
-- sections of a report criteria, given the fields already selected in the
-- input report and user permissions.
--
-- /See:/ 'reportsCompatibleFieldsQuery' smart constructor.
data ReportsCompatibleFieldsQuery = ReportsCompatibleFieldsQuery
    { _rcfqQuotaUser   :: !(Maybe Text)
    , _rcfqPrettyPrint :: !Bool
    , _rcfqUserIp      :: !(Maybe Text)
    , _rcfqProfileId   :: !Int64
    , _rcfqKey         :: !(Maybe Text)
    , _rcfqOauthToken  :: !(Maybe Text)
    , _rcfqFields      :: !(Maybe Text)
    , _rcfqAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsCompatibleFieldsQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcfqQuotaUser'
--
-- * 'rcfqPrettyPrint'
--
-- * 'rcfqUserIp'
--
-- * 'rcfqProfileId'
--
-- * 'rcfqKey'
--
-- * 'rcfqOauthToken'
--
-- * 'rcfqFields'
--
-- * 'rcfqAlt'
reportsCompatibleFieldsQuery
    :: Int64 -- ^ 'profileId'
    -> ReportsCompatibleFieldsQuery
reportsCompatibleFieldsQuery pRcfqProfileId_ =
    ReportsCompatibleFieldsQuery
    { _rcfqQuotaUser = Nothing
    , _rcfqPrettyPrint = True
    , _rcfqUserIp = Nothing
    , _rcfqProfileId = pRcfqProfileId_
    , _rcfqKey = Nothing
    , _rcfqOauthToken = Nothing
    , _rcfqFields = Nothing
    , _rcfqAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rcfqQuotaUser :: Lens' ReportsCompatibleFieldsQuery' (Maybe Text)
rcfqQuotaUser
  = lens _rcfqQuotaUser
      (\ s a -> s{_rcfqQuotaUser = a})

-- | Returns response with indentations and line breaks.
rcfqPrettyPrint :: Lens' ReportsCompatibleFieldsQuery' Bool
rcfqPrettyPrint
  = lens _rcfqPrettyPrint
      (\ s a -> s{_rcfqPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rcfqUserIp :: Lens' ReportsCompatibleFieldsQuery' (Maybe Text)
rcfqUserIp
  = lens _rcfqUserIp (\ s a -> s{_rcfqUserIp = a})

-- | The DFA user profile ID.
rcfqProfileId :: Lens' ReportsCompatibleFieldsQuery' Int64
rcfqProfileId
  = lens _rcfqProfileId
      (\ s a -> s{_rcfqProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcfqKey :: Lens' ReportsCompatibleFieldsQuery' (Maybe Text)
rcfqKey = lens _rcfqKey (\ s a -> s{_rcfqKey = a})

-- | OAuth 2.0 token for the current user.
rcfqOauthToken :: Lens' ReportsCompatibleFieldsQuery' (Maybe Text)
rcfqOauthToken
  = lens _rcfqOauthToken
      (\ s a -> s{_rcfqOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcfqFields :: Lens' ReportsCompatibleFieldsQuery' (Maybe Text)
rcfqFields
  = lens _rcfqFields (\ s a -> s{_rcfqFields = a})

-- | Data format for the response.
rcfqAlt :: Lens' ReportsCompatibleFieldsQuery' Text
rcfqAlt = lens _rcfqAlt (\ s a -> s{_rcfqAlt = a})

instance GoogleRequest ReportsCompatibleFieldsQuery'
         where
        type Rs ReportsCompatibleFieldsQuery' =
             CompatibleFields
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ReportsCompatibleFieldsQuery{..}
          = go _rcfqQuotaUser _rcfqPrettyPrint _rcfqUserIp
              _rcfqProfileId
              _rcfqKey
              _rcfqOauthToken
              _rcfqFields
              _rcfqAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReportsCompatibleFieldsQueryAPI)
                      r
                      u
