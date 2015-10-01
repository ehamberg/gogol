{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Variantsets.Export
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Exports variant set data to an external destination.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsVariantsetsExport@.
module Network.Google.Resource.Genomics.Variantsets.Export
    (
    -- * REST Resource
      VariantsetsExportResource

    -- * Creating a Request
    , variantsetsExport'
    , VariantsetsExport'

    -- * Request Lenses
    , veQuotaUser
    , vePrettyPrint
    , veVariantSetId
    , veUserIp
    , veKey
    , veOauthToken
    , veFields
    , veAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsetsExport@ which the
-- 'VariantsetsExport'' request conforms to.
type VariantsetsExportResource =
     "variantsets" :>
       Capture "variantSetId" Text :>
         "export" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Post '[JSON] ExportVariantSetResponse

-- | Exports variant set data to an external destination.
--
-- /See:/ 'variantsetsExport'' smart constructor.
data VariantsetsExport' = VariantsetsExport'
    { _veQuotaUser    :: !(Maybe Text)
    , _vePrettyPrint  :: !Bool
    , _veVariantSetId :: !Text
    , _veUserIp       :: !(Maybe Text)
    , _veKey          :: !(Maybe Text)
    , _veOauthToken   :: !(Maybe Text)
    , _veFields       :: !(Maybe Text)
    , _veAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsExport'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'veQuotaUser'
--
-- * 'vePrettyPrint'
--
-- * 'veVariantSetId'
--
-- * 'veUserIp'
--
-- * 'veKey'
--
-- * 'veOauthToken'
--
-- * 'veFields'
--
-- * 'veAlt'
variantsetsExport'
    :: Text -- ^ 'variantSetId'
    -> VariantsetsExport'
variantsetsExport' pVeVariantSetId_ =
    VariantsetsExport'
    { _veQuotaUser = Nothing
    , _vePrettyPrint = True
    , _veVariantSetId = pVeVariantSetId_
    , _veUserIp = Nothing
    , _veKey = Nothing
    , _veOauthToken = Nothing
    , _veFields = Nothing
    , _veAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
veQuotaUser :: Lens' VariantsetsExport' (Maybe Text)
veQuotaUser
  = lens _veQuotaUser (\ s a -> s{_veQuotaUser = a})

-- | Returns response with indentations and line breaks.
vePrettyPrint :: Lens' VariantsetsExport' Bool
vePrettyPrint
  = lens _vePrettyPrint
      (\ s a -> s{_vePrettyPrint = a})

-- | Required. The ID of the variant set that contains variant data which
-- should be exported. The caller must have READ access to this variant
-- set.
veVariantSetId :: Lens' VariantsetsExport' Text
veVariantSetId
  = lens _veVariantSetId
      (\ s a -> s{_veVariantSetId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
veUserIp :: Lens' VariantsetsExport' (Maybe Text)
veUserIp = lens _veUserIp (\ s a -> s{_veUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
veKey :: Lens' VariantsetsExport' (Maybe Text)
veKey = lens _veKey (\ s a -> s{_veKey = a})

-- | OAuth 2.0 token for the current user.
veOauthToken :: Lens' VariantsetsExport' (Maybe Text)
veOauthToken
  = lens _veOauthToken (\ s a -> s{_veOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
veFields :: Lens' VariantsetsExport' (Maybe Text)
veFields = lens _veFields (\ s a -> s{_veFields = a})

-- | Data format for the response.
veAlt :: Lens' VariantsetsExport' Alt
veAlt = lens _veAlt (\ s a -> s{_veAlt = a})

instance GoogleRequest VariantsetsExport' where
        type Rs VariantsetsExport' = ExportVariantSetResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsetsExport'{..}
          = go _veQuotaUser (Just _vePrettyPrint)
              _veVariantSetId
              _veUserIp
              _veKey
              _veOauthToken
              _veFields
              (Just _veAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsetsExportResource)
                      r
                      u