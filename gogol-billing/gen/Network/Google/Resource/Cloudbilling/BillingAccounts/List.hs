{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Cloudbilling.BillingAccounts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the billing accounts that the current authenticated user
-- [owns](https:\/\/support.google.com\/cloud\/answer\/4430947).
--
-- /See:/ <https://cloud.google.com/billing/ Google Cloud Billing API Reference> for @CloudbillingBillingAccountsList@.
module Cloudbilling.BillingAccounts.List
    (
    -- * REST Resource
      BillingAccountsListAPI

    -- * Creating a Request
    , billingAccountsList
    , BillingAccountsList

    -- * Request Lenses
    , balXgafv
    , balQuotaUser
    , balPrettyPrint
    , balUploadProtocol
    , balPp
    , balAccessToken
    , balUploadType
    , balBearerToken
    , balKey
    , balPageToken
    , balOauthToken
    , balPageSize
    , balFields
    , balCallback
    , balAlt
    ) where

import           Network.Google.Billing.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudbillingBillingAccountsList@ which the
-- 'BillingAccountsList' request conforms to.
type BillingAccountsListAPI =
     "v1" :>
       "billingAccounts" :>
         QueryParam "pageToken" Text :>
           QueryParam "pageSize" Int32 :>
             Get '[JSON] ListBillingAccountsResponse

-- | Lists the billing accounts that the current authenticated user
-- [owns](https:\/\/support.google.com\/cloud\/answer\/4430947).
--
-- /See:/ 'billingAccountsList' smart constructor.
data BillingAccountsList = BillingAccountsList
    { _balXgafv          :: !(Maybe Text)
    , _balQuotaUser      :: !(Maybe Text)
    , _balPrettyPrint    :: !Bool
    , _balUploadProtocol :: !(Maybe Text)
    , _balPp             :: !Bool
    , _balAccessToken    :: !(Maybe Text)
    , _balUploadType     :: !(Maybe Text)
    , _balBearerToken    :: !(Maybe Text)
    , _balKey            :: !(Maybe Text)
    , _balPageToken      :: !(Maybe Text)
    , _balOauthToken     :: !(Maybe Text)
    , _balPageSize       :: !(Maybe Int32)
    , _balFields         :: !(Maybe Text)
    , _balCallback       :: !(Maybe Text)
    , _balAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BillingAccountsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'balXgafv'
--
-- * 'balQuotaUser'
--
-- * 'balPrettyPrint'
--
-- * 'balUploadProtocol'
--
-- * 'balPp'
--
-- * 'balAccessToken'
--
-- * 'balUploadType'
--
-- * 'balBearerToken'
--
-- * 'balKey'
--
-- * 'balPageToken'
--
-- * 'balOauthToken'
--
-- * 'balPageSize'
--
-- * 'balFields'
--
-- * 'balCallback'
--
-- * 'balAlt'
billingAccountsList
    :: BillingAccountsList
billingAccountsList =
    BillingAccountsList
    { _balXgafv = Nothing
    , _balQuotaUser = Nothing
    , _balPrettyPrint = True
    , _balUploadProtocol = Nothing
    , _balPp = True
    , _balAccessToken = Nothing
    , _balUploadType = Nothing
    , _balBearerToken = Nothing
    , _balKey = Nothing
    , _balPageToken = Nothing
    , _balOauthToken = Nothing
    , _balPageSize = Nothing
    , _balFields = Nothing
    , _balCallback = Nothing
    , _balAlt = "json"
    }

-- | V1 error format.
balXgafv :: Lens' BillingAccountsList' (Maybe Text)
balXgafv = lens _balXgafv (\ s a -> s{_balXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
balQuotaUser :: Lens' BillingAccountsList' (Maybe Text)
balQuotaUser
  = lens _balQuotaUser (\ s a -> s{_balQuotaUser = a})

-- | Returns response with indentations and line breaks.
balPrettyPrint :: Lens' BillingAccountsList' Bool
balPrettyPrint
  = lens _balPrettyPrint
      (\ s a -> s{_balPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
balUploadProtocol :: Lens' BillingAccountsList' (Maybe Text)
balUploadProtocol
  = lens _balUploadProtocol
      (\ s a -> s{_balUploadProtocol = a})

-- | Pretty-print response.
balPp :: Lens' BillingAccountsList' Bool
balPp = lens _balPp (\ s a -> s{_balPp = a})

-- | OAuth access token.
balAccessToken :: Lens' BillingAccountsList' (Maybe Text)
balAccessToken
  = lens _balAccessToken
      (\ s a -> s{_balAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
balUploadType :: Lens' BillingAccountsList' (Maybe Text)
balUploadType
  = lens _balUploadType
      (\ s a -> s{_balUploadType = a})

-- | OAuth bearer token.
balBearerToken :: Lens' BillingAccountsList' (Maybe Text)
balBearerToken
  = lens _balBearerToken
      (\ s a -> s{_balBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
balKey :: Lens' BillingAccountsList' (Maybe Text)
balKey = lens _balKey (\ s a -> s{_balKey = a})

-- | A token identifying a page of results to return. This should be a
-- \`next_page_token\` value returned from a previous
-- \`ListBillingAccounts\` call. If unspecified, the first page of results
-- is returned.
balPageToken :: Lens' BillingAccountsList' (Maybe Text)
balPageToken
  = lens _balPageToken (\ s a -> s{_balPageToken = a})

-- | OAuth 2.0 token for the current user.
balOauthToken :: Lens' BillingAccountsList' (Maybe Text)
balOauthToken
  = lens _balOauthToken
      (\ s a -> s{_balOauthToken = a})

-- | Requested page size. The maximum page size is 100; this is also the
-- default.
balPageSize :: Lens' BillingAccountsList' (Maybe Int32)
balPageSize
  = lens _balPageSize (\ s a -> s{_balPageSize = a})

-- | Selector specifying which fields to include in a partial response.
balFields :: Lens' BillingAccountsList' (Maybe Text)
balFields
  = lens _balFields (\ s a -> s{_balFields = a})

-- | JSONP
balCallback :: Lens' BillingAccountsList' (Maybe Text)
balCallback
  = lens _balCallback (\ s a -> s{_balCallback = a})

-- | Data format for response.
balAlt :: Lens' BillingAccountsList' Text
balAlt = lens _balAlt (\ s a -> s{_balAlt = a})

instance GoogleRequest BillingAccountsList' where
        type Rs BillingAccountsList' =
             ListBillingAccountsResponse
        request = requestWithRoute defReq billingURL
        requestWithRoute r u BillingAccountsList{..}
          = go _balXgafv _balQuotaUser _balPrettyPrint
              _balUploadProtocol
              _balPp
              _balAccessToken
              _balUploadType
              _balBearerToken
              _balKey
              _balPageToken
              _balOauthToken
              _balPageSize
              _balFields
              _balCallback
              _balAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BillingAccountsListAPI)
                      r
                      u
