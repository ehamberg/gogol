{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Annotations.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an annotation. The update must respect all mutability
-- restrictions and other invariants described on the annotation resource.
-- Caller must have WRITE permission for the associated dataset. This
-- method supports patch semantics.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsAnnotationsPatch@.
module Genomics.Annotations.Patch
    (
    -- * REST Resource
      AnnotationsPatchAPI

    -- * Creating a Request
    , annotationsPatch
    , AnnotationsPatch

    -- * Request Lenses
    , apQuotaUser
    , apPrettyPrint
    , apUserIp
    , apKey
    , apAnnotationId
    , apOauthToken
    , apFields
    , apAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsAnnotationsPatch@ which the
-- 'AnnotationsPatch' request conforms to.
type AnnotationsPatchAPI =
     "annotations" :>
       Capture "annotationId" Text :>
         Patch '[JSON] Annotation

-- | Updates an annotation. The update must respect all mutability
-- restrictions and other invariants described on the annotation resource.
-- Caller must have WRITE permission for the associated dataset. This
-- method supports patch semantics.
--
-- /See:/ 'annotationsPatch' smart constructor.
data AnnotationsPatch = AnnotationsPatch
    { _apQuotaUser    :: !(Maybe Text)
    , _apPrettyPrint  :: !Bool
    , _apUserIp       :: !(Maybe Text)
    , _apKey          :: !(Maybe Text)
    , _apAnnotationId :: !Text
    , _apOauthToken   :: !(Maybe Text)
    , _apFields       :: !(Maybe Text)
    , _apAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apQuotaUser'
--
-- * 'apPrettyPrint'
--
-- * 'apUserIp'
--
-- * 'apKey'
--
-- * 'apAnnotationId'
--
-- * 'apOauthToken'
--
-- * 'apFields'
--
-- * 'apAlt'
annotationsPatch
    :: Text -- ^ 'annotationId'
    -> AnnotationsPatch
annotationsPatch pApAnnotationId_ =
    AnnotationsPatch
    { _apQuotaUser = Nothing
    , _apPrettyPrint = True
    , _apUserIp = Nothing
    , _apKey = Nothing
    , _apAnnotationId = pApAnnotationId_
    , _apOauthToken = Nothing
    , _apFields = Nothing
    , _apAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
apQuotaUser :: Lens' AnnotationsPatch' (Maybe Text)
apQuotaUser
  = lens _apQuotaUser (\ s a -> s{_apQuotaUser = a})

-- | Returns response with indentations and line breaks.
apPrettyPrint :: Lens' AnnotationsPatch' Bool
apPrettyPrint
  = lens _apPrettyPrint
      (\ s a -> s{_apPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
apUserIp :: Lens' AnnotationsPatch' (Maybe Text)
apUserIp = lens _apUserIp (\ s a -> s{_apUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apKey :: Lens' AnnotationsPatch' (Maybe Text)
apKey = lens _apKey (\ s a -> s{_apKey = a})

-- | The ID of the annotation set to be updated.
apAnnotationId :: Lens' AnnotationsPatch' Text
apAnnotationId
  = lens _apAnnotationId
      (\ s a -> s{_apAnnotationId = a})

-- | OAuth 2.0 token for the current user.
apOauthToken :: Lens' AnnotationsPatch' (Maybe Text)
apOauthToken
  = lens _apOauthToken (\ s a -> s{_apOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
apFields :: Lens' AnnotationsPatch' (Maybe Text)
apFields = lens _apFields (\ s a -> s{_apFields = a})

-- | Data format for the response.
apAlt :: Lens' AnnotationsPatch' Text
apAlt = lens _apAlt (\ s a -> s{_apAlt = a})

instance GoogleRequest AnnotationsPatch' where
        type Rs AnnotationsPatch' = Annotation
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u AnnotationsPatch{..}
          = go _apQuotaUser _apPrettyPrint _apUserIp _apKey
              _apAnnotationId
              _apOauthToken
              _apFields
              _apAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AnnotationsPatchAPI)
                      r
                      u
