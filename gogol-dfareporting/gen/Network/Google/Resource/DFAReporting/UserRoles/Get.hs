{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.UserRoles.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one user role by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingUserRolesGet@.
module DFAReporting.UserRoles.Get
    (
    -- * REST Resource
      UserRolesGetAPI

    -- * Creating a Request
    , userRolesGet
    , UserRolesGet

    -- * Request Lenses
    , urgQuotaUser
    , urgPrettyPrint
    , urgUserIp
    , urgProfileId
    , urgKey
    , urgId
    , urgOauthToken
    , urgFields
    , urgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingUserRolesGet@ which the
-- 'UserRolesGet' request conforms to.
type UserRolesGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "userRoles" :>
           Capture "id" Int64 :> Get '[JSON] UserRole

-- | Gets one user role by ID.
--
-- /See:/ 'userRolesGet' smart constructor.
data UserRolesGet = UserRolesGet
    { _urgQuotaUser   :: !(Maybe Text)
    , _urgPrettyPrint :: !Bool
    , _urgUserIp      :: !(Maybe Text)
    , _urgProfileId   :: !Int64
    , _urgKey         :: !(Maybe Text)
    , _urgId          :: !Int64
    , _urgOauthToken  :: !(Maybe Text)
    , _urgFields      :: !(Maybe Text)
    , _urgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urgQuotaUser'
--
-- * 'urgPrettyPrint'
--
-- * 'urgUserIp'
--
-- * 'urgProfileId'
--
-- * 'urgKey'
--
-- * 'urgId'
--
-- * 'urgOauthToken'
--
-- * 'urgFields'
--
-- * 'urgAlt'
userRolesGet
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> UserRolesGet
userRolesGet pUrgProfileId_ pUrgId_ =
    UserRolesGet
    { _urgQuotaUser = Nothing
    , _urgPrettyPrint = True
    , _urgUserIp = Nothing
    , _urgProfileId = pUrgProfileId_
    , _urgKey = Nothing
    , _urgId = pUrgId_
    , _urgOauthToken = Nothing
    , _urgFields = Nothing
    , _urgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
urgQuotaUser :: Lens' UserRolesGet' (Maybe Text)
urgQuotaUser
  = lens _urgQuotaUser (\ s a -> s{_urgQuotaUser = a})

-- | Returns response with indentations and line breaks.
urgPrettyPrint :: Lens' UserRolesGet' Bool
urgPrettyPrint
  = lens _urgPrettyPrint
      (\ s a -> s{_urgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
urgUserIp :: Lens' UserRolesGet' (Maybe Text)
urgUserIp
  = lens _urgUserIp (\ s a -> s{_urgUserIp = a})

-- | User profile ID associated with this request.
urgProfileId :: Lens' UserRolesGet' Int64
urgProfileId
  = lens _urgProfileId (\ s a -> s{_urgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
urgKey :: Lens' UserRolesGet' (Maybe Text)
urgKey = lens _urgKey (\ s a -> s{_urgKey = a})

-- | User role ID.
urgId :: Lens' UserRolesGet' Int64
urgId = lens _urgId (\ s a -> s{_urgId = a})

-- | OAuth 2.0 token for the current user.
urgOauthToken :: Lens' UserRolesGet' (Maybe Text)
urgOauthToken
  = lens _urgOauthToken
      (\ s a -> s{_urgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
urgFields :: Lens' UserRolesGet' (Maybe Text)
urgFields
  = lens _urgFields (\ s a -> s{_urgFields = a})

-- | Data format for the response.
urgAlt :: Lens' UserRolesGet' Text
urgAlt = lens _urgAlt (\ s a -> s{_urgAlt = a})

instance GoogleRequest UserRolesGet' where
        type Rs UserRolesGet' = UserRole
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u UserRolesGet{..}
          = go _urgQuotaUser _urgPrettyPrint _urgUserIp
              _urgProfileId
              _urgKey
              _urgId
              _urgOauthToken
              _urgFields
              _urgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy UserRolesGetAPI) r
                      u
