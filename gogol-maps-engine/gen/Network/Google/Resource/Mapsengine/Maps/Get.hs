{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Maps.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return metadata for a particular map.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineMapsGet@.
module Mapsengine.Maps.Get
    (
    -- * REST Resource
      MapsGetAPI

    -- * Creating a Request
    , mapsGet
    , MapsGet

    -- * Request Lenses
    , mgQuotaUser
    , mgPrettyPrint
    , mgUserIp
    , mgKey
    , mgVersion
    , mgId
    , mgOauthToken
    , mgFields
    , mgAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineMapsGet@ which the
-- 'MapsGet' request conforms to.
type MapsGetAPI =
     "maps" :>
       Capture "id" Text :>
         QueryParam "version" Text :> Get '[JSON] Map

-- | Return metadata for a particular map.
--
-- /See:/ 'mapsGet' smart constructor.
data MapsGet = MapsGet
    { _mgQuotaUser   :: !(Maybe Text)
    , _mgPrettyPrint :: !Bool
    , _mgUserIp      :: !(Maybe Text)
    , _mgKey         :: !(Maybe Text)
    , _mgVersion     :: !(Maybe Text)
    , _mgId          :: !Text
    , _mgOauthToken  :: !(Maybe Text)
    , _mgFields      :: !(Maybe Text)
    , _mgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgQuotaUser'
--
-- * 'mgPrettyPrint'
--
-- * 'mgUserIp'
--
-- * 'mgKey'
--
-- * 'mgVersion'
--
-- * 'mgId'
--
-- * 'mgOauthToken'
--
-- * 'mgFields'
--
-- * 'mgAlt'
mapsGet
    :: Text -- ^ 'id'
    -> MapsGet
mapsGet pMgId_ =
    MapsGet
    { _mgQuotaUser = Nothing
    , _mgPrettyPrint = True
    , _mgUserIp = Nothing
    , _mgKey = Nothing
    , _mgVersion = Nothing
    , _mgId = pMgId_
    , _mgOauthToken = Nothing
    , _mgFields = Nothing
    , _mgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mgQuotaUser :: Lens' MapsGet' (Maybe Text)
mgQuotaUser
  = lens _mgQuotaUser (\ s a -> s{_mgQuotaUser = a})

-- | Returns response with indentations and line breaks.
mgPrettyPrint :: Lens' MapsGet' Bool
mgPrettyPrint
  = lens _mgPrettyPrint
      (\ s a -> s{_mgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mgUserIp :: Lens' MapsGet' (Maybe Text)
mgUserIp = lens _mgUserIp (\ s a -> s{_mgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mgKey :: Lens' MapsGet' (Maybe Text)
mgKey = lens _mgKey (\ s a -> s{_mgKey = a})

-- | Deprecated: The version parameter indicates which version of the map
-- should be returned. When version is set to published, the published
-- version of the map will be returned. Please use the maps.getPublished
-- endpoint instead.
mgVersion :: Lens' MapsGet' (Maybe Text)
mgVersion
  = lens _mgVersion (\ s a -> s{_mgVersion = a})

-- | The ID of the map.
mgId :: Lens' MapsGet' Text
mgId = lens _mgId (\ s a -> s{_mgId = a})

-- | OAuth 2.0 token for the current user.
mgOauthToken :: Lens' MapsGet' (Maybe Text)
mgOauthToken
  = lens _mgOauthToken (\ s a -> s{_mgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mgFields :: Lens' MapsGet' (Maybe Text)
mgFields = lens _mgFields (\ s a -> s{_mgFields = a})

-- | Data format for the response.
mgAlt :: Lens' MapsGet' Text
mgAlt = lens _mgAlt (\ s a -> s{_mgAlt = a})

instance GoogleRequest MapsGet' where
        type Rs MapsGet' = Map
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u MapsGet{..}
          = go _mgQuotaUser _mgPrettyPrint _mgUserIp _mgKey
              _mgVersion
              _mgId
              _mgOauthToken
              _mgFields
              _mgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy MapsGetAPI) r u
