{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.PlusDomains.Circles.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new circle for the authenticated user.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsCirclesInsert@.
module PlusDomains.Circles.Insert
    (
    -- * REST Resource
      CirclesInsertAPI

    -- * Creating a Request
    , circlesInsert
    , CirclesInsert

    -- * Request Lenses
    , cQuotaUser
    , cPrettyPrint
    , cUserIp
    , cUserId
    , cKey
    , cOauthToken
    , cFields
    , cAlt
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsCirclesInsert@ which the
-- 'CirclesInsert' request conforms to.
type CirclesInsertAPI =
     "people" :>
       Capture "userId" Text :>
         "circles" :> Post '[JSON] Circle

-- | Create a new circle for the authenticated user.
--
-- /See:/ 'circlesInsert' smart constructor.
data CirclesInsert = CirclesInsert
    { _cQuotaUser   :: !(Maybe Text)
    , _cPrettyPrint :: !Bool
    , _cUserIp      :: !(Maybe Text)
    , _cUserId      :: !Text
    , _cKey         :: !(Maybe Text)
    , _cOauthToken  :: !(Maybe Text)
    , _cFields      :: !(Maybe Text)
    , _cAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CirclesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cQuotaUser'
--
-- * 'cPrettyPrint'
--
-- * 'cUserIp'
--
-- * 'cUserId'
--
-- * 'cKey'
--
-- * 'cOauthToken'
--
-- * 'cFields'
--
-- * 'cAlt'
circlesInsert
    :: Text -- ^ 'userId'
    -> CirclesInsert
circlesInsert pCUserId_ =
    CirclesInsert
    { _cQuotaUser = Nothing
    , _cPrettyPrint = True
    , _cUserIp = Nothing
    , _cUserId = pCUserId_
    , _cKey = Nothing
    , _cOauthToken = Nothing
    , _cFields = Nothing
    , _cAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cQuotaUser :: Lens' CirclesInsert' (Maybe Text)
cQuotaUser
  = lens _cQuotaUser (\ s a -> s{_cQuotaUser = a})

-- | Returns response with indentations and line breaks.
cPrettyPrint :: Lens' CirclesInsert' Bool
cPrettyPrint
  = lens _cPrettyPrint (\ s a -> s{_cPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cUserIp :: Lens' CirclesInsert' (Maybe Text)
cUserIp = lens _cUserIp (\ s a -> s{_cUserIp = a})

-- | The ID of the user to create the circle on behalf of. The value \"me\"
-- can be used to indicate the authenticated user.
cUserId :: Lens' CirclesInsert' Text
cUserId = lens _cUserId (\ s a -> s{_cUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cKey :: Lens' CirclesInsert' (Maybe Text)
cKey = lens _cKey (\ s a -> s{_cKey = a})

-- | OAuth 2.0 token for the current user.
cOauthToken :: Lens' CirclesInsert' (Maybe Text)
cOauthToken
  = lens _cOauthToken (\ s a -> s{_cOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cFields :: Lens' CirclesInsert' (Maybe Text)
cFields = lens _cFields (\ s a -> s{_cFields = a})

-- | Data format for the response.
cAlt :: Lens' CirclesInsert' Text
cAlt = lens _cAlt (\ s a -> s{_cAlt = a})

instance GoogleRequest CirclesInsert' where
        type Rs CirclesInsert' = Circle
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u CirclesInsert{..}
          = go _cQuotaUser _cPrettyPrint _cUserIp _cUserId
              _cKey
              _cOauthToken
              _cFields
              _cAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CirclesInsertAPI) r
                      u
