{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Directory.Members.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update membership of a user in the specified group. This method supports
-- patch semantics.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryMembersPatch@.
module Directory.Members.Patch
    (
    -- * REST Resource
      MembersPatchAPI

    -- * Creating a Request
    , membersPatch
    , MembersPatch

    -- * Request Lenses
    , mpQuotaUser
    , mpMemberKey
    , mpPrettyPrint
    , mpUserIp
    , mpGroupKey
    , mpKey
    , mpOauthToken
    , mpFields
    , mpAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryMembersPatch@ which the
-- 'MembersPatch' request conforms to.
type MembersPatchAPI =
     "groups" :>
       Capture "groupKey" Text :>
         "members" :>
           Capture "memberKey" Text :> Patch '[JSON] Member

-- | Update membership of a user in the specified group. This method supports
-- patch semantics.
--
-- /See:/ 'membersPatch' smart constructor.
data MembersPatch = MembersPatch
    { _mpQuotaUser   :: !(Maybe Text)
    , _mpMemberKey   :: !Text
    , _mpPrettyPrint :: !Bool
    , _mpUserIp      :: !(Maybe Text)
    , _mpGroupKey    :: !Text
    , _mpKey         :: !(Maybe Text)
    , _mpOauthToken  :: !(Maybe Text)
    , _mpFields      :: !(Maybe Text)
    , _mpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MembersPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpQuotaUser'
--
-- * 'mpMemberKey'
--
-- * 'mpPrettyPrint'
--
-- * 'mpUserIp'
--
-- * 'mpGroupKey'
--
-- * 'mpKey'
--
-- * 'mpOauthToken'
--
-- * 'mpFields'
--
-- * 'mpAlt'
membersPatch
    :: Text -- ^ 'memberKey'
    -> Text -- ^ 'groupKey'
    -> MembersPatch
membersPatch pMpMemberKey_ pMpGroupKey_ =
    MembersPatch
    { _mpQuotaUser = Nothing
    , _mpMemberKey = pMpMemberKey_
    , _mpPrettyPrint = True
    , _mpUserIp = Nothing
    , _mpGroupKey = pMpGroupKey_
    , _mpKey = Nothing
    , _mpOauthToken = Nothing
    , _mpFields = Nothing
    , _mpAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpQuotaUser :: Lens' MembersPatch' (Maybe Text)
mpQuotaUser
  = lens _mpQuotaUser (\ s a -> s{_mpQuotaUser = a})

-- | Email or immutable Id of the user. If Id, it should match with id of
-- member object
mpMemberKey :: Lens' MembersPatch' Text
mpMemberKey
  = lens _mpMemberKey (\ s a -> s{_mpMemberKey = a})

-- | Returns response with indentations and line breaks.
mpPrettyPrint :: Lens' MembersPatch' Bool
mpPrettyPrint
  = lens _mpPrettyPrint
      (\ s a -> s{_mpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpUserIp :: Lens' MembersPatch' (Maybe Text)
mpUserIp = lens _mpUserIp (\ s a -> s{_mpUserIp = a})

-- | Email or immutable Id of the group. If Id, it should match with id of
-- group object
mpGroupKey :: Lens' MembersPatch' Text
mpGroupKey
  = lens _mpGroupKey (\ s a -> s{_mpGroupKey = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpKey :: Lens' MembersPatch' (Maybe Text)
mpKey = lens _mpKey (\ s a -> s{_mpKey = a})

-- | OAuth 2.0 token for the current user.
mpOauthToken :: Lens' MembersPatch' (Maybe Text)
mpOauthToken
  = lens _mpOauthToken (\ s a -> s{_mpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpFields :: Lens' MembersPatch' (Maybe Text)
mpFields = lens _mpFields (\ s a -> s{_mpFields = a})

-- | Data format for the response.
mpAlt :: Lens' MembersPatch' Text
mpAlt = lens _mpAlt (\ s a -> s{_mpAlt = a})

instance GoogleRequest MembersPatch' where
        type Rs MembersPatch' = Member
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u MembersPatch{..}
          = go _mpQuotaUser _mpMemberKey _mpPrettyPrint
              _mpUserIp
              _mpGroupKey
              _mpKey
              _mpOauthToken
              _mpFields
              _mpAlt
          where go
                  = clientWithRoute (Proxy :: Proxy MembersPatchAPI) r
                      u
