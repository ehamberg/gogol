{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Plus.People.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get a person\'s profile. If your app uses scope
-- https:\/\/www.googleapis.com\/auth\/plus.login, this method is
-- guaranteed to return ageRange and language.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference> for @PlusPeopleGet@.
module Plus.People.Get
    (
    -- * REST Resource
      PeopleGetAPI

    -- * Creating a Request
    , peopleGet
    , PeopleGet

    -- * Request Lenses
    , pgQuotaUser
    , pgPrettyPrint
    , pgUserIp
    , pgUserId
    , pgKey
    , pgOauthToken
    , pgFields
    , pgAlt
    ) where

import           Network.Google.Plus.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusPeopleGet@ which the
-- 'PeopleGet' request conforms to.
type PeopleGetAPI =
     "people" :>
       Capture "userId" Text :> Get '[JSON] Person

-- | Get a person\'s profile. If your app uses scope
-- https:\/\/www.googleapis.com\/auth\/plus.login, this method is
-- guaranteed to return ageRange and language.
--
-- /See:/ 'peopleGet' smart constructor.
data PeopleGet = PeopleGet
    { _pgQuotaUser   :: !(Maybe Text)
    , _pgPrettyPrint :: !Bool
    , _pgUserIp      :: !(Maybe Text)
    , _pgUserId      :: !Text
    , _pgKey         :: !(Maybe Text)
    , _pgOauthToken  :: !(Maybe Text)
    , _pgFields      :: !(Maybe Text)
    , _pgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PeopleGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgQuotaUser'
--
-- * 'pgPrettyPrint'
--
-- * 'pgUserIp'
--
-- * 'pgUserId'
--
-- * 'pgKey'
--
-- * 'pgOauthToken'
--
-- * 'pgFields'
--
-- * 'pgAlt'
peopleGet
    :: Text -- ^ 'userId'
    -> PeopleGet
peopleGet pPgUserId_ =
    PeopleGet
    { _pgQuotaUser = Nothing
    , _pgPrettyPrint = True
    , _pgUserIp = Nothing
    , _pgUserId = pPgUserId_
    , _pgKey = Nothing
    , _pgOauthToken = Nothing
    , _pgFields = Nothing
    , _pgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgQuotaUser :: Lens' PeopleGet' (Maybe Text)
pgQuotaUser
  = lens _pgQuotaUser (\ s a -> s{_pgQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgPrettyPrint :: Lens' PeopleGet' Bool
pgPrettyPrint
  = lens _pgPrettyPrint
      (\ s a -> s{_pgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgUserIp :: Lens' PeopleGet' (Maybe Text)
pgUserIp = lens _pgUserIp (\ s a -> s{_pgUserIp = a})

-- | The ID of the person to get the profile for. The special value \"me\"
-- can be used to indicate the authenticated user.
pgUserId :: Lens' PeopleGet' Text
pgUserId = lens _pgUserId (\ s a -> s{_pgUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgKey :: Lens' PeopleGet' (Maybe Text)
pgKey = lens _pgKey (\ s a -> s{_pgKey = a})

-- | OAuth 2.0 token for the current user.
pgOauthToken :: Lens' PeopleGet' (Maybe Text)
pgOauthToken
  = lens _pgOauthToken (\ s a -> s{_pgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pgFields :: Lens' PeopleGet' (Maybe Text)
pgFields = lens _pgFields (\ s a -> s{_pgFields = a})

-- | Data format for the response.
pgAlt :: Lens' PeopleGet' Text
pgAlt = lens _pgAlt (\ s a -> s{_pgAlt = a})

instance GoogleRequest PeopleGet' where
        type Rs PeopleGet' = Person
        request = requestWithRoute defReq plusURL
        requestWithRoute r u PeopleGet{..}
          = go _pgQuotaUser _pgPrettyPrint _pgUserIp _pgUserId
              _pgKey
              _pgOauthToken
              _pgFields
              _pgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PeopleGetAPI) r u
