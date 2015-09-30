{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.TargetPools.GetHealth
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the most recent health check results for each IP for the given
-- instance that is referenced by given TargetPool.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetPoolsGetHealth@.
module Compute.TargetPools.GetHealth
    (
    -- * REST Resource
      TargetPoolsGetHealthAPI

    -- * Creating a Request
    , targetPoolsGetHealth
    , TargetPoolsGetHealth

    -- * Request Lenses
    , tpghQuotaUser
    , tpghPrettyPrint
    , tpghProject
    , tpghTargetPool
    , tpghUserIp
    , tpghKey
    , tpghRegion
    , tpghOauthToken
    , tpghFields
    , tpghAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetPoolsGetHealth@ which the
-- 'TargetPoolsGetHealth' request conforms to.
type TargetPoolsGetHealthAPI =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "targetPools" :>
             Capture "targetPool" Text :>
               "getHealth" :> Post '[JSON] TargetPoolInstanceHealth

-- | Gets the most recent health check results for each IP for the given
-- instance that is referenced by given TargetPool.
--
-- /See:/ 'targetPoolsGetHealth' smart constructor.
data TargetPoolsGetHealth = TargetPoolsGetHealth
    { _tpghQuotaUser   :: !(Maybe Text)
    , _tpghPrettyPrint :: !Bool
    , _tpghProject     :: !Text
    , _tpghTargetPool  :: !Text
    , _tpghUserIp      :: !(Maybe Text)
    , _tpghKey         :: !(Maybe Text)
    , _tpghRegion      :: !Text
    , _tpghOauthToken  :: !(Maybe Text)
    , _tpghFields      :: !(Maybe Text)
    , _tpghAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsGetHealth'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpghQuotaUser'
--
-- * 'tpghPrettyPrint'
--
-- * 'tpghProject'
--
-- * 'tpghTargetPool'
--
-- * 'tpghUserIp'
--
-- * 'tpghKey'
--
-- * 'tpghRegion'
--
-- * 'tpghOauthToken'
--
-- * 'tpghFields'
--
-- * 'tpghAlt'
targetPoolsGetHealth
    :: Text -- ^ 'project'
    -> Text -- ^ 'targetPool'
    -> Text -- ^ 'region'
    -> TargetPoolsGetHealth
targetPoolsGetHealth pTpghProject_ pTpghTargetPool_ pTpghRegion_ =
    TargetPoolsGetHealth
    { _tpghQuotaUser = Nothing
    , _tpghPrettyPrint = True
    , _tpghProject = pTpghProject_
    , _tpghTargetPool = pTpghTargetPool_
    , _tpghUserIp = Nothing
    , _tpghKey = Nothing
    , _tpghRegion = pTpghRegion_
    , _tpghOauthToken = Nothing
    , _tpghFields = Nothing
    , _tpghAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tpghQuotaUser :: Lens' TargetPoolsGetHealth' (Maybe Text)
tpghQuotaUser
  = lens _tpghQuotaUser
      (\ s a -> s{_tpghQuotaUser = a})

-- | Returns response with indentations and line breaks.
tpghPrettyPrint :: Lens' TargetPoolsGetHealth' Bool
tpghPrettyPrint
  = lens _tpghPrettyPrint
      (\ s a -> s{_tpghPrettyPrint = a})

tpghProject :: Lens' TargetPoolsGetHealth' Text
tpghProject
  = lens _tpghProject (\ s a -> s{_tpghProject = a})

-- | Name of the TargetPool resource to which the queried instance belongs.
tpghTargetPool :: Lens' TargetPoolsGetHealth' Text
tpghTargetPool
  = lens _tpghTargetPool
      (\ s a -> s{_tpghTargetPool = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tpghUserIp :: Lens' TargetPoolsGetHealth' (Maybe Text)
tpghUserIp
  = lens _tpghUserIp (\ s a -> s{_tpghUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpghKey :: Lens' TargetPoolsGetHealth' (Maybe Text)
tpghKey = lens _tpghKey (\ s a -> s{_tpghKey = a})

-- | Name of the region scoping this request.
tpghRegion :: Lens' TargetPoolsGetHealth' Text
tpghRegion
  = lens _tpghRegion (\ s a -> s{_tpghRegion = a})

-- | OAuth 2.0 token for the current user.
tpghOauthToken :: Lens' TargetPoolsGetHealth' (Maybe Text)
tpghOauthToken
  = lens _tpghOauthToken
      (\ s a -> s{_tpghOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tpghFields :: Lens' TargetPoolsGetHealth' (Maybe Text)
tpghFields
  = lens _tpghFields (\ s a -> s{_tpghFields = a})

-- | Data format for the response.
tpghAlt :: Lens' TargetPoolsGetHealth' Text
tpghAlt = lens _tpghAlt (\ s a -> s{_tpghAlt = a})

instance GoogleRequest TargetPoolsGetHealth' where
        type Rs TargetPoolsGetHealth' =
             TargetPoolInstanceHealth
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetPoolsGetHealth{..}
          = go _tpghQuotaUser _tpghPrettyPrint _tpghProject
              _tpghTargetPool
              _tpghUserIp
              _tpghKey
              _tpghRegion
              _tpghOauthToken
              _tpghFields
              _tpghAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetPoolsGetHealthAPI)
                      r
                      u
