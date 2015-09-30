{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.IdentityToolkit.Relyingparty.VerifyAssertion
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Verifies the assertion returned by the IdP.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingpartyVerifyAssertion@.
module IdentityToolkit.Relyingparty.VerifyAssertion
    (
    -- * REST Resource
      RelyingpartyVerifyAssertionAPI

    -- * Creating a Request
    , relyingpartyVerifyAssertion
    , RelyingpartyVerifyAssertion

    -- * Request Lenses
    , rvaQuotaUser
    , rvaPrettyPrint
    , rvaUserIp
    , rvaKey
    , rvaOauthToken
    , rvaFields
    , rvaAlt
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingpartyVerifyAssertion@ which the
-- 'RelyingpartyVerifyAssertion' request conforms to.
type RelyingpartyVerifyAssertionAPI =
     "verifyAssertion" :>
       Post '[JSON] VerifyAssertionResponse

-- | Verifies the assertion returned by the IdP.
--
-- /See:/ 'relyingpartyVerifyAssertion' smart constructor.
data RelyingpartyVerifyAssertion = RelyingpartyVerifyAssertion
    { _rvaQuotaUser   :: !(Maybe Text)
    , _rvaPrettyPrint :: !Bool
    , _rvaUserIp      :: !(Maybe Text)
    , _rvaKey         :: !(Maybe Text)
    , _rvaOauthToken  :: !(Maybe Text)
    , _rvaFields      :: !(Maybe Text)
    , _rvaAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingpartyVerifyAssertion'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rvaQuotaUser'
--
-- * 'rvaPrettyPrint'
--
-- * 'rvaUserIp'
--
-- * 'rvaKey'
--
-- * 'rvaOauthToken'
--
-- * 'rvaFields'
--
-- * 'rvaAlt'
relyingpartyVerifyAssertion
    :: RelyingpartyVerifyAssertion
relyingpartyVerifyAssertion =
    RelyingpartyVerifyAssertion
    { _rvaQuotaUser = Nothing
    , _rvaPrettyPrint = True
    , _rvaUserIp = Nothing
    , _rvaKey = Nothing
    , _rvaOauthToken = Nothing
    , _rvaFields = Nothing
    , _rvaAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rvaQuotaUser :: Lens' RelyingpartyVerifyAssertion' (Maybe Text)
rvaQuotaUser
  = lens _rvaQuotaUser (\ s a -> s{_rvaQuotaUser = a})

-- | Returns response with indentations and line breaks.
rvaPrettyPrint :: Lens' RelyingpartyVerifyAssertion' Bool
rvaPrettyPrint
  = lens _rvaPrettyPrint
      (\ s a -> s{_rvaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rvaUserIp :: Lens' RelyingpartyVerifyAssertion' (Maybe Text)
rvaUserIp
  = lens _rvaUserIp (\ s a -> s{_rvaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rvaKey :: Lens' RelyingpartyVerifyAssertion' (Maybe Text)
rvaKey = lens _rvaKey (\ s a -> s{_rvaKey = a})

-- | OAuth 2.0 token for the current user.
rvaOauthToken :: Lens' RelyingpartyVerifyAssertion' (Maybe Text)
rvaOauthToken
  = lens _rvaOauthToken
      (\ s a -> s{_rvaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rvaFields :: Lens' RelyingpartyVerifyAssertion' (Maybe Text)
rvaFields
  = lens _rvaFields (\ s a -> s{_rvaFields = a})

-- | Data format for the response.
rvaAlt :: Lens' RelyingpartyVerifyAssertion' Text
rvaAlt = lens _rvaAlt (\ s a -> s{_rvaAlt = a})

instance GoogleRequest RelyingpartyVerifyAssertion'
         where
        type Rs RelyingpartyVerifyAssertion' =
             VerifyAssertionResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u RelyingpartyVerifyAssertion{..}
          = go _rvaQuotaUser _rvaPrettyPrint _rvaUserIp _rvaKey
              _rvaOauthToken
              _rvaFields
              _rvaAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingpartyVerifyAssertionAPI)
                      r
                      u
