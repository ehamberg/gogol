{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Collectionviewers.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes the user from the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseCollectionviewersDelete@.
module Androidenterprise.Collectionviewers.Delete
    (
    -- * REST Resource
      CollectionviewersDeleteAPI

    -- * Creating a Request
    , collectionviewersDelete
    , CollectionviewersDelete

    -- * Request Lenses
    , cdQuotaUser
    , cdPrettyPrint
    , cdEnterpriseId
    , cdUserIp
    , cdCollectionId
    , cdUserId
    , cdKey
    , cdOauthToken
    , cdFields
    , cdAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseCollectionviewersDelete@ which the
-- 'CollectionviewersDelete' request conforms to.
type CollectionviewersDeleteAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           Capture "collectionId" Text :>
             "users" :> Capture "userId" Text :> Delete '[JSON] ()

-- | Removes the user from the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection.
--
-- /See:/ 'collectionviewersDelete' smart constructor.
data CollectionviewersDelete = CollectionviewersDelete
    { _cdQuotaUser    :: !(Maybe Text)
    , _cdPrettyPrint  :: !Bool
    , _cdEnterpriseId :: !Text
    , _cdUserIp       :: !(Maybe Text)
    , _cdCollectionId :: !Text
    , _cdUserId       :: !Text
    , _cdKey          :: !(Maybe Text)
    , _cdOauthToken   :: !(Maybe Text)
    , _cdFields       :: !(Maybe Text)
    , _cdAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionviewersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdQuotaUser'
--
-- * 'cdPrettyPrint'
--
-- * 'cdEnterpriseId'
--
-- * 'cdUserIp'
--
-- * 'cdCollectionId'
--
-- * 'cdUserId'
--
-- * 'cdKey'
--
-- * 'cdOauthToken'
--
-- * 'cdFields'
--
-- * 'cdAlt'
collectionviewersDelete
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> Text -- ^ 'userId'
    -> CollectionviewersDelete
collectionviewersDelete pCdEnterpriseId_ pCdCollectionId_ pCdUserId_ =
    CollectionviewersDelete
    { _cdQuotaUser = Nothing
    , _cdPrettyPrint = True
    , _cdEnterpriseId = pCdEnterpriseId_
    , _cdUserIp = Nothing
    , _cdCollectionId = pCdCollectionId_
    , _cdUserId = pCdUserId_
    , _cdKey = Nothing
    , _cdOauthToken = Nothing
    , _cdFields = Nothing
    , _cdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cdQuotaUser :: Lens' CollectionviewersDelete' (Maybe Text)
cdQuotaUser
  = lens _cdQuotaUser (\ s a -> s{_cdQuotaUser = a})

-- | Returns response with indentations and line breaks.
cdPrettyPrint :: Lens' CollectionviewersDelete' Bool
cdPrettyPrint
  = lens _cdPrettyPrint
      (\ s a -> s{_cdPrettyPrint = a})

-- | The ID of the enterprise.
cdEnterpriseId :: Lens' CollectionviewersDelete' Text
cdEnterpriseId
  = lens _cdEnterpriseId
      (\ s a -> s{_cdEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cdUserIp :: Lens' CollectionviewersDelete' (Maybe Text)
cdUserIp = lens _cdUserIp (\ s a -> s{_cdUserIp = a})

-- | The ID of the collection.
cdCollectionId :: Lens' CollectionviewersDelete' Text
cdCollectionId
  = lens _cdCollectionId
      (\ s a -> s{_cdCollectionId = a})

-- | The ID of the user.
cdUserId :: Lens' CollectionviewersDelete' Text
cdUserId = lens _cdUserId (\ s a -> s{_cdUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdKey :: Lens' CollectionviewersDelete' (Maybe Text)
cdKey = lens _cdKey (\ s a -> s{_cdKey = a})

-- | OAuth 2.0 token for the current user.
cdOauthToken :: Lens' CollectionviewersDelete' (Maybe Text)
cdOauthToken
  = lens _cdOauthToken (\ s a -> s{_cdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cdFields :: Lens' CollectionviewersDelete' (Maybe Text)
cdFields = lens _cdFields (\ s a -> s{_cdFields = a})

-- | Data format for the response.
cdAlt :: Lens' CollectionviewersDelete' Text
cdAlt = lens _cdAlt (\ s a -> s{_cdAlt = a})

instance GoogleRequest CollectionviewersDelete' where
        type Rs CollectionviewersDelete' = ()
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u CollectionviewersDelete{..}
          = go _cdQuotaUser _cdPrettyPrint _cdEnterpriseId
              _cdUserIp
              _cdCollectionId
              _cdUserId
              _cdKey
              _cdOauthToken
              _cdFields
              _cdAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CollectionviewersDeleteAPI)
                      r
                      u
