{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeSeller.Accounts.Reports.Saved.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all saved reports in this Ad Exchange account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @AdexchangesellerAccountsReportsSavedList@.
module AdExchangeSeller.Accounts.Reports.Saved.List
    (
    -- * REST Resource
      AccountsReportsSavedListAPI

    -- * Creating a Request
    , accountsReportsSavedList
    , AccountsReportsSavedList

    -- * Request Lenses
    , arslQuotaUser
    , arslPrettyPrint
    , arslUserIp
    , arslAccountId
    , arslKey
    , arslPageToken
    , arslOauthToken
    , arslMaxResults
    , arslFields
    , arslAlt
    ) where

import           Network.Google.AdExchangeSeller.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangesellerAccountsReportsSavedList@ which the
-- 'AccountsReportsSavedList' request conforms to.
type AccountsReportsSavedListAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "reports" :>
           "saved" :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Int32 :>
                 Get '[JSON] SavedReports

-- | List all saved reports in this Ad Exchange account.
--
-- /See:/ 'accountsReportsSavedList' smart constructor.
data AccountsReportsSavedList = AccountsReportsSavedList
    { _arslQuotaUser   :: !(Maybe Text)
    , _arslPrettyPrint :: !Bool
    , _arslUserIp      :: !(Maybe Text)
    , _arslAccountId   :: !Text
    , _arslKey         :: !(Maybe Text)
    , _arslPageToken   :: !(Maybe Text)
    , _arslOauthToken  :: !(Maybe Text)
    , _arslMaxResults  :: !(Maybe Int32)
    , _arslFields      :: !(Maybe Text)
    , _arslAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsReportsSavedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arslQuotaUser'
--
-- * 'arslPrettyPrint'
--
-- * 'arslUserIp'
--
-- * 'arslAccountId'
--
-- * 'arslKey'
--
-- * 'arslPageToken'
--
-- * 'arslOauthToken'
--
-- * 'arslMaxResults'
--
-- * 'arslFields'
--
-- * 'arslAlt'
accountsReportsSavedList
    :: Text -- ^ 'accountId'
    -> AccountsReportsSavedList
accountsReportsSavedList pArslAccountId_ =
    AccountsReportsSavedList
    { _arslQuotaUser = Nothing
    , _arslPrettyPrint = True
    , _arslUserIp = Nothing
    , _arslAccountId = pArslAccountId_
    , _arslKey = Nothing
    , _arslPageToken = Nothing
    , _arslOauthToken = Nothing
    , _arslMaxResults = Nothing
    , _arslFields = Nothing
    , _arslAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
arslQuotaUser :: Lens' AccountsReportsSavedList' (Maybe Text)
arslQuotaUser
  = lens _arslQuotaUser
      (\ s a -> s{_arslQuotaUser = a})

-- | Returns response with indentations and line breaks.
arslPrettyPrint :: Lens' AccountsReportsSavedList' Bool
arslPrettyPrint
  = lens _arslPrettyPrint
      (\ s a -> s{_arslPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
arslUserIp :: Lens' AccountsReportsSavedList' (Maybe Text)
arslUserIp
  = lens _arslUserIp (\ s a -> s{_arslUserIp = a})

-- | Account owning the saved reports.
arslAccountId :: Lens' AccountsReportsSavedList' Text
arslAccountId
  = lens _arslAccountId
      (\ s a -> s{_arslAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
arslKey :: Lens' AccountsReportsSavedList' (Maybe Text)
arslKey = lens _arslKey (\ s a -> s{_arslKey = a})

-- | A continuation token, used to page through saved reports. To retrieve
-- the next page, set this parameter to the value of \"nextPageToken\" from
-- the previous response.
arslPageToken :: Lens' AccountsReportsSavedList' (Maybe Text)
arslPageToken
  = lens _arslPageToken
      (\ s a -> s{_arslPageToken = a})

-- | OAuth 2.0 token for the current user.
arslOauthToken :: Lens' AccountsReportsSavedList' (Maybe Text)
arslOauthToken
  = lens _arslOauthToken
      (\ s a -> s{_arslOauthToken = a})

-- | The maximum number of saved reports to include in the response, used for
-- paging.
arslMaxResults :: Lens' AccountsReportsSavedList' (Maybe Int32)
arslMaxResults
  = lens _arslMaxResults
      (\ s a -> s{_arslMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
arslFields :: Lens' AccountsReportsSavedList' (Maybe Text)
arslFields
  = lens _arslFields (\ s a -> s{_arslFields = a})

-- | Data format for the response.
arslAlt :: Lens' AccountsReportsSavedList' Text
arslAlt = lens _arslAlt (\ s a -> s{_arslAlt = a})

instance GoogleRequest AccountsReportsSavedList'
         where
        type Rs AccountsReportsSavedList' = SavedReports
        request = requestWithRoute defReq adExchangeSellerURL
        requestWithRoute r u AccountsReportsSavedList{..}
          = go _arslQuotaUser _arslPrettyPrint _arslUserIp
              _arslAccountId
              _arslKey
              _arslPageToken
              _arslOauthToken
              _arslMaxResults
              _arslFields
              _arslAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsReportsSavedListAPI)
                      r
                      u
