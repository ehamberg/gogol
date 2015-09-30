{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Clouduseraccounts.Users.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a User resource in the specified project using the data included
-- in the request.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @ClouduseraccountsUsersInsert@.
module Clouduseraccounts.Users.Insert
    (
    -- * REST Resource
      UsersInsertAPI

    -- * Creating a Request
    , usersInsert
    , UsersInsert

    -- * Request Lenses
    , uiQuotaUser
    , uiPrettyPrint
    , uiProject
    , uiUserIp
    , uiKey
    , uiOauthToken
    , uiFields
    , uiAlt
    ) where

import           Network.Google.ComputeUserAccounts.Types
import           Network.Google.Prelude

-- | A resource alias for @ClouduseraccountsUsersInsert@ which the
-- 'UsersInsert' request conforms to.
type UsersInsertAPI =
     Capture "project" Text :>
       "global" :> "users" :> Post '[JSON] Operation

-- | Creates a User resource in the specified project using the data included
-- in the request.
--
-- /See:/ 'usersInsert' smart constructor.
data UsersInsert = UsersInsert
    { _uiQuotaUser   :: !(Maybe Text)
    , _uiPrettyPrint :: !Bool
    , _uiProject     :: !Text
    , _uiUserIp      :: !(Maybe Text)
    , _uiKey         :: !(Maybe Text)
    , _uiOauthToken  :: !(Maybe Text)
    , _uiFields      :: !(Maybe Text)
    , _uiAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiQuotaUser'
--
-- * 'uiPrettyPrint'
--
-- * 'uiProject'
--
-- * 'uiUserIp'
--
-- * 'uiKey'
--
-- * 'uiOauthToken'
--
-- * 'uiFields'
--
-- * 'uiAlt'
usersInsert
    :: Text -- ^ 'project'
    -> UsersInsert
usersInsert pUiProject_ =
    UsersInsert
    { _uiQuotaUser = Nothing
    , _uiPrettyPrint = True
    , _uiProject = pUiProject_
    , _uiUserIp = Nothing
    , _uiKey = Nothing
    , _uiOauthToken = Nothing
    , _uiFields = Nothing
    , _uiAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uiQuotaUser :: Lens' UsersInsert' (Maybe Text)
uiQuotaUser
  = lens _uiQuotaUser (\ s a -> s{_uiQuotaUser = a})

-- | Returns response with indentations and line breaks.
uiPrettyPrint :: Lens' UsersInsert' Bool
uiPrettyPrint
  = lens _uiPrettyPrint
      (\ s a -> s{_uiPrettyPrint = a})

-- | Project ID for this request.
uiProject :: Lens' UsersInsert' Text
uiProject
  = lens _uiProject (\ s a -> s{_uiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uiUserIp :: Lens' UsersInsert' (Maybe Text)
uiUserIp = lens _uiUserIp (\ s a -> s{_uiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uiKey :: Lens' UsersInsert' (Maybe Text)
uiKey = lens _uiKey (\ s a -> s{_uiKey = a})

-- | OAuth 2.0 token for the current user.
uiOauthToken :: Lens' UsersInsert' (Maybe Text)
uiOauthToken
  = lens _uiOauthToken (\ s a -> s{_uiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
uiFields :: Lens' UsersInsert' (Maybe Text)
uiFields = lens _uiFields (\ s a -> s{_uiFields = a})

-- | Data format for the response.
uiAlt :: Lens' UsersInsert' Text
uiAlt = lens _uiAlt (\ s a -> s{_uiAlt = a})

instance GoogleRequest UsersInsert' where
        type Rs UsersInsert' = Operation
        request
          = requestWithRoute defReq computeUserAccountsURL
        requestWithRoute r u UsersInsert{..}
          = go _uiQuotaUser _uiPrettyPrint _uiProject _uiUserIp
              _uiKey
              _uiOauthToken
              _uiFields
              _uiAlt
          where go
                  = clientWithRoute (Proxy :: Proxy UsersInsertAPI) r u
