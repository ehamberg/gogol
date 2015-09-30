{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.AnnotationSets.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Searches for annotation sets that match the given criteria. Results are
-- returned in a deterministic order. Caller must have READ permission for
-- the queried datasets.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsAnnotationSetsSearch@.
module Genomics.AnnotationSets.Search
    (
    -- * REST Resource
      AnnotationSetsSearchAPI

    -- * Creating a Request
    , annotationSetsSearch
    , AnnotationSetsSearch

    -- * Request Lenses
    , assQuotaUser
    , assPrettyPrint
    , assUserIp
    , assKey
    , assOauthToken
    , assFields
    , assAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsAnnotationSetsSearch@ which the
-- 'AnnotationSetsSearch' request conforms to.
type AnnotationSetsSearchAPI =
     "annotationSets" :>
       "search" :> Post '[JSON] SearchAnnotationSetsResponse

-- | Searches for annotation sets that match the given criteria. Results are
-- returned in a deterministic order. Caller must have READ permission for
-- the queried datasets.
--
-- /See:/ 'annotationSetsSearch' smart constructor.
data AnnotationSetsSearch = AnnotationSetsSearch
    { _assQuotaUser   :: !(Maybe Text)
    , _assPrettyPrint :: !Bool
    , _assUserIp      :: !(Maybe Text)
    , _assKey         :: !(Maybe Text)
    , _assOauthToken  :: !(Maybe Text)
    , _assFields      :: !(Maybe Text)
    , _assAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationSetsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assQuotaUser'
--
-- * 'assPrettyPrint'
--
-- * 'assUserIp'
--
-- * 'assKey'
--
-- * 'assOauthToken'
--
-- * 'assFields'
--
-- * 'assAlt'
annotationSetsSearch
    :: AnnotationSetsSearch
annotationSetsSearch =
    AnnotationSetsSearch
    { _assQuotaUser = Nothing
    , _assPrettyPrint = True
    , _assUserIp = Nothing
    , _assKey = Nothing
    , _assOauthToken = Nothing
    , _assFields = Nothing
    , _assAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
assQuotaUser :: Lens' AnnotationSetsSearch' (Maybe Text)
assQuotaUser
  = lens _assQuotaUser (\ s a -> s{_assQuotaUser = a})

-- | Returns response with indentations and line breaks.
assPrettyPrint :: Lens' AnnotationSetsSearch' Bool
assPrettyPrint
  = lens _assPrettyPrint
      (\ s a -> s{_assPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
assUserIp :: Lens' AnnotationSetsSearch' (Maybe Text)
assUserIp
  = lens _assUserIp (\ s a -> s{_assUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
assKey :: Lens' AnnotationSetsSearch' (Maybe Text)
assKey = lens _assKey (\ s a -> s{_assKey = a})

-- | OAuth 2.0 token for the current user.
assOauthToken :: Lens' AnnotationSetsSearch' (Maybe Text)
assOauthToken
  = lens _assOauthToken
      (\ s a -> s{_assOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
assFields :: Lens' AnnotationSetsSearch' (Maybe Text)
assFields
  = lens _assFields (\ s a -> s{_assFields = a})

-- | Data format for the response.
assAlt :: Lens' AnnotationSetsSearch' Text
assAlt = lens _assAlt (\ s a -> s{_assAlt = a})

instance GoogleRequest AnnotationSetsSearch' where
        type Rs AnnotationSetsSearch' =
             SearchAnnotationSetsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u AnnotationSetsSearch{..}
          = go _assQuotaUser _assPrettyPrint _assUserIp _assKey
              _assOauthToken
              _assFields
              _assAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AnnotationSetsSearchAPI)
                      r
                      u
