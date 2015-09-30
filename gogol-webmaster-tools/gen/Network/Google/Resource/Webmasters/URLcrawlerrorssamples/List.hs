{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Webmasters.URLcrawlerrorssamples.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists a site\'s sample URLs for the specified crawl error category and
-- platform.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersURLcrawlerrorssamplesList@.
module Webmasters.URLcrawlerrorssamples.List
    (
    -- * REST Resource
      UrlcrawlerrorssamplesListAPI

    -- * Creating a Request
    , uRLcrawlerrorssamplesList
    , URLcrawlerrorssamplesList

    -- * Request Lenses
    , ulQuotaUser
    , ulPrettyPrint
    , ulPlatform
    , ulUserIp
    , ulCategory
    , ulSiteUrl
    , ulKey
    , ulOauthToken
    , ulFields
    , ulAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersURLcrawlerrorssamplesList@ which the
-- 'URLcrawlerrorssamplesList' request conforms to.
type UrlcrawlerrorssamplesListAPI =
     "sites" :>
       Capture "siteUrl" Text :>
         "urlCrawlErrorsSamples" :>
           QueryParam "platform" Text :>
             QueryParam "category" Text :>
               Get '[JSON] URLCrawlErrorsSamplesListResponse

-- | Lists a site\'s sample URLs for the specified crawl error category and
-- platform.
--
-- /See:/ 'uRLcrawlerrorssamplesList' smart constructor.
data URLcrawlerrorssamplesList = URLcrawlerrorssamplesList
    { _ulQuotaUser   :: !(Maybe Text)
    , _ulPrettyPrint :: !Bool
    , _ulPlatform    :: !Text
    , _ulUserIp      :: !(Maybe Text)
    , _ulCategory    :: !Text
    , _ulSiteUrl     :: !Text
    , _ulKey         :: !(Maybe Text)
    , _ulOauthToken  :: !(Maybe Text)
    , _ulFields      :: !(Maybe Text)
    , _ulAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLcrawlerrorssamplesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulQuotaUser'
--
-- * 'ulPrettyPrint'
--
-- * 'ulPlatform'
--
-- * 'ulUserIp'
--
-- * 'ulCategory'
--
-- * 'ulSiteUrl'
--
-- * 'ulKey'
--
-- * 'ulOauthToken'
--
-- * 'ulFields'
--
-- * 'ulAlt'
uRLcrawlerrorssamplesList
    :: Text -- ^ 'platform'
    -> Text -- ^ 'category'
    -> Text -- ^ 'siteUrl'
    -> URLcrawlerrorssamplesList
uRLcrawlerrorssamplesList pUlPlatform_ pUlCategory_ pUlSiteUrl_ =
    URLcrawlerrorssamplesList
    { _ulQuotaUser = Nothing
    , _ulPrettyPrint = True
    , _ulPlatform = pUlPlatform_
    , _ulUserIp = Nothing
    , _ulCategory = pUlCategory_
    , _ulSiteUrl = pUlSiteUrl_
    , _ulKey = Nothing
    , _ulOauthToken = Nothing
    , _ulFields = Nothing
    , _ulAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ulQuotaUser :: Lens' URLcrawlerrorssamplesList' (Maybe Text)
ulQuotaUser
  = lens _ulQuotaUser (\ s a -> s{_ulQuotaUser = a})

-- | Returns response with indentations and line breaks.
ulPrettyPrint :: Lens' URLcrawlerrorssamplesList' Bool
ulPrettyPrint
  = lens _ulPrettyPrint
      (\ s a -> s{_ulPrettyPrint = a})

-- | The user agent type (platform) that made the request. For example: web
ulPlatform :: Lens' URLcrawlerrorssamplesList' Text
ulPlatform
  = lens _ulPlatform (\ s a -> s{_ulPlatform = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ulUserIp :: Lens' URLcrawlerrorssamplesList' (Maybe Text)
ulUserIp = lens _ulUserIp (\ s a -> s{_ulUserIp = a})

-- | The crawl error category. For example: authPermissions
ulCategory :: Lens' URLcrawlerrorssamplesList' Text
ulCategory
  = lens _ulCategory (\ s a -> s{_ulCategory = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
ulSiteUrl :: Lens' URLcrawlerrorssamplesList' Text
ulSiteUrl
  = lens _ulSiteUrl (\ s a -> s{_ulSiteUrl = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ulKey :: Lens' URLcrawlerrorssamplesList' (Maybe Text)
ulKey = lens _ulKey (\ s a -> s{_ulKey = a})

-- | OAuth 2.0 token for the current user.
ulOauthToken :: Lens' URLcrawlerrorssamplesList' (Maybe Text)
ulOauthToken
  = lens _ulOauthToken (\ s a -> s{_ulOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ulFields :: Lens' URLcrawlerrorssamplesList' (Maybe Text)
ulFields = lens _ulFields (\ s a -> s{_ulFields = a})

-- | Data format for the response.
ulAlt :: Lens' URLcrawlerrorssamplesList' Text
ulAlt = lens _ulAlt (\ s a -> s{_ulAlt = a})

instance GoogleRequest URLcrawlerrorssamplesList'
         where
        type Rs URLcrawlerrorssamplesList' =
             URLCrawlErrorsSamplesListResponse
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u URLcrawlerrorssamplesList{..}
          = go _ulQuotaUser _ulPrettyPrint (Just _ulPlatform)
              _ulUserIp
              (Just _ulCategory)
              _ulSiteUrl
              _ulKey
              _ulOauthToken
              _ulFields
              _ulAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UrlcrawlerrorssamplesListAPI)
                      r
                      u
