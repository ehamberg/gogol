{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.WebmasterTools.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.WebmasterTools.Types.Product where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types.Sum

-- | Information about the various content types in the sitemap.
--
-- /See:/ 'wmxSitemapContent' smart constructor.
data WmxSitemapContent = WmxSitemapContent
    { _wscIndexed   :: !(Maybe Int64)
    , _wscType      :: !(Maybe Text)
    , _wscSubmitted :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WmxSitemapContent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wscIndexed'
--
-- * 'wscType'
--
-- * 'wscSubmitted'
wmxSitemapContent
    :: WmxSitemapContent
wmxSitemapContent =
    WmxSitemapContent
    { _wscIndexed = Nothing
    , _wscType = Nothing
    , _wscSubmitted = Nothing
    }

-- | The number of URLs from the sitemap that were indexed (of the content
-- type).
wscIndexed :: Lens' WmxSitemapContent (Maybe Int64)
wscIndexed
  = lens _wscIndexed (\ s a -> s{_wscIndexed = a})

-- | The specific type of content in this sitemap. For example: web.
wscType :: Lens' WmxSitemapContent (Maybe Text)
wscType = lens _wscType (\ s a -> s{_wscType = a})

-- | The number of URLs in the sitemap (of the content type).
wscSubmitted :: Lens' WmxSitemapContent (Maybe Int64)
wscSubmitted
  = lens _wscSubmitted (\ s a -> s{_wscSubmitted = a})

instance FromJSON WmxSitemapContent where
        parseJSON
          = withObject "WmxSitemapContent"
              (\ o ->
                 WmxSitemapContent <$>
                   (o .:? "indexed") <*> (o .:? "type") <*>
                     (o .:? "submitted"))

instance ToJSON WmxSitemapContent where
        toJSON WmxSitemapContent{..}
          = object
              (catMaybes
                 [("indexed" .=) <$> _wscIndexed,
                  ("type" .=) <$> _wscType,
                  ("submitted" .=) <$> _wscSubmitted])

-- | Number of errors per day for a specific error type (defined by platform
-- and category).
--
-- /See:/ 'uRLCrawlErrorCountsPerType' smart constructor.
data URLCrawlErrorCountsPerType = URLCrawlErrorCountsPerType
    { _ucecptPlatform :: !(Maybe Text)
    , _ucecptEntries  :: !(Maybe [Maybe URLCrawlErrorCount])
    , _ucecptCategory :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLCrawlErrorCountsPerType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucecptPlatform'
--
-- * 'ucecptEntries'
--
-- * 'ucecptCategory'
uRLCrawlErrorCountsPerType
    :: URLCrawlErrorCountsPerType
uRLCrawlErrorCountsPerType =
    URLCrawlErrorCountsPerType
    { _ucecptPlatform = Nothing
    , _ucecptEntries = Nothing
    , _ucecptCategory = Nothing
    }

-- | The general type of Googlebot that made the request (see list of
-- Googlebot user-agents for the user-agents used).
ucecptPlatform :: Lens' URLCrawlErrorCountsPerType (Maybe Text)
ucecptPlatform
  = lens _ucecptPlatform
      (\ s a -> s{_ucecptPlatform = a})

-- | The error count entries time series.
ucecptEntries :: Lens' URLCrawlErrorCountsPerType [Maybe URLCrawlErrorCount]
ucecptEntries
  = lens _ucecptEntries
      (\ s a -> s{_ucecptEntries = a})
      . _Default
      . _Coerce

-- | The crawl error type.
ucecptCategory :: Lens' URLCrawlErrorCountsPerType (Maybe Text)
ucecptCategory
  = lens _ucecptCategory
      (\ s a -> s{_ucecptCategory = a})

instance FromJSON URLCrawlErrorCountsPerType where
        parseJSON
          = withObject "URLCrawlErrorCountsPerType"
              (\ o ->
                 URLCrawlErrorCountsPerType <$>
                   (o .:? "platform") <*> (o .:? "entries" .!= mempty)
                     <*> (o .:? "category"))

instance ToJSON URLCrawlErrorCountsPerType where
        toJSON URLCrawlErrorCountsPerType{..}
          = object
              (catMaybes
                 [("platform" .=) <$> _ucecptPlatform,
                  ("entries" .=) <$> _ucecptEntries,
                  ("category" .=) <$> _ucecptCategory])

--
-- /See:/ 'aPIdimensionFilterGroup' smart constructor.
data APIdimensionFilterGroup = APIdimensionFilterGroup
    { _afgFilters   :: !(Maybe [Maybe APIdimensionFilter])
    , _afgGroupType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'APIdimensionFilterGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'afgFilters'
--
-- * 'afgGroupType'
aPIdimensionFilterGroup
    :: APIdimensionFilterGroup
aPIdimensionFilterGroup =
    APIdimensionFilterGroup
    { _afgFilters = Nothing
    , _afgGroupType = Nothing
    }

afgFilters :: Lens' APIdimensionFilterGroup [Maybe APIdimensionFilter]
afgFilters
  = lens _afgFilters (\ s a -> s{_afgFilters = a}) .
      _Default
      . _Coerce

afgGroupType :: Lens' APIdimensionFilterGroup (Maybe Text)
afgGroupType
  = lens _afgGroupType (\ s a -> s{_afgGroupType = a})

instance FromJSON APIdimensionFilterGroup where
        parseJSON
          = withObject "APIdimensionFilterGroup"
              (\ o ->
                 APIdimensionFilterGroup <$>
                   (o .:? "filters" .!= mempty) <*> (o .:? "groupType"))

instance ToJSON APIdimensionFilterGroup where
        toJSON APIdimensionFilterGroup{..}
          = object
              (catMaybes
                 [("filters" .=) <$> _afgFilters,
                  ("groupType" .=) <$> _afgGroupType])

-- | Additional details about the URL, set only when calling get().
--
-- /See:/ 'uRLSampleDetails' smart constructor.
data URLSampleDetails = URLSampleDetails
    { _usdLinkedFromUrls     :: !(Maybe [Text])
    , _usdContainingSitemaps :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLSampleDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usdLinkedFromUrls'
--
-- * 'usdContainingSitemaps'
uRLSampleDetails
    :: URLSampleDetails
uRLSampleDetails =
    URLSampleDetails
    { _usdLinkedFromUrls = Nothing
    , _usdContainingSitemaps = Nothing
    }

-- | A sample set of URLs linking to this URL.
usdLinkedFromUrls :: Lens' URLSampleDetails [Text]
usdLinkedFromUrls
  = lens _usdLinkedFromUrls
      (\ s a -> s{_usdLinkedFromUrls = a})
      . _Default
      . _Coerce

-- | List of sitemaps pointing at this URL.
usdContainingSitemaps :: Lens' URLSampleDetails [Text]
usdContainingSitemaps
  = lens _usdContainingSitemaps
      (\ s a -> s{_usdContainingSitemaps = a})
      . _Default
      . _Coerce

instance FromJSON URLSampleDetails where
        parseJSON
          = withObject "URLSampleDetails"
              (\ o ->
                 URLSampleDetails <$>
                   (o .:? "linkedFromUrls" .!= mempty) <*>
                     (o .:? "containingSitemaps" .!= mempty))

instance ToJSON URLSampleDetails where
        toJSON URLSampleDetails{..}
          = object
              (catMaybes
                 [("linkedFromUrls" .=) <$> _usdLinkedFromUrls,
                  ("containingSitemaps" .=) <$>
                    _usdContainingSitemaps])

--
-- /See:/ 'aPIdataRow' smart constructor.
data APIdataRow = APIdataRow
    { _arImpressions :: !(Maybe Double)
    , _arKeys        :: !(Maybe [Text])
    , _arCtr         :: !(Maybe Double)
    , _arClicks      :: !(Maybe Double)
    , _arPosition    :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'APIdataRow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arImpressions'
--
-- * 'arKeys'
--
-- * 'arCtr'
--
-- * 'arClicks'
--
-- * 'arPosition'
aPIdataRow
    :: APIdataRow
aPIdataRow =
    APIdataRow
    { _arImpressions = Nothing
    , _arKeys = Nothing
    , _arCtr = Nothing
    , _arClicks = Nothing
    , _arPosition = Nothing
    }

arImpressions :: Lens' APIdataRow (Maybe Double)
arImpressions
  = lens _arImpressions
      (\ s a -> s{_arImpressions = a})

arKeys :: Lens' APIdataRow [Text]
arKeys
  = lens _arKeys (\ s a -> s{_arKeys = a}) . _Default .
      _Coerce

arCtr :: Lens' APIdataRow (Maybe Double)
arCtr = lens _arCtr (\ s a -> s{_arCtr = a})

arClicks :: Lens' APIdataRow (Maybe Double)
arClicks = lens _arClicks (\ s a -> s{_arClicks = a})

arPosition :: Lens' APIdataRow (Maybe Double)
arPosition
  = lens _arPosition (\ s a -> s{_arPosition = a})

instance FromJSON APIdataRow where
        parseJSON
          = withObject "APIdataRow"
              (\ o ->
                 APIdataRow <$>
                   (o .:? "impressions") <*> (o .:? "keys" .!= mempty)
                     <*> (o .:? "ctr")
                     <*> (o .:? "clicks")
                     <*> (o .:? "position"))

instance ToJSON APIdataRow where
        toJSON APIdataRow{..}
          = object
              (catMaybes
                 [("impressions" .=) <$> _arImpressions,
                  ("keys" .=) <$> _arKeys, ("ctr" .=) <$> _arCtr,
                  ("clicks" .=) <$> _arClicks,
                  ("position" .=) <$> _arPosition])

--
-- /See:/ 'aPIdimensionFilter' smart constructor.
data APIdimensionFilter = APIdimensionFilter
    { _afOperator   :: !(Maybe Text)
    , _afDimension  :: !(Maybe Text)
    , _afExpression :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'APIdimensionFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'afOperator'
--
-- * 'afDimension'
--
-- * 'afExpression'
aPIdimensionFilter
    :: APIdimensionFilter
aPIdimensionFilter =
    APIdimensionFilter
    { _afOperator = Nothing
    , _afDimension = Nothing
    , _afExpression = Nothing
    }

afOperator :: Lens' APIdimensionFilter (Maybe Text)
afOperator
  = lens _afOperator (\ s a -> s{_afOperator = a})

afDimension :: Lens' APIdimensionFilter (Maybe Text)
afDimension
  = lens _afDimension (\ s a -> s{_afDimension = a})

afExpression :: Lens' APIdimensionFilter (Maybe Text)
afExpression
  = lens _afExpression (\ s a -> s{_afExpression = a})

instance FromJSON APIdimensionFilter where
        parseJSON
          = withObject "APIdimensionFilter"
              (\ o ->
                 APIdimensionFilter <$>
                   (o .:? "operator") <*> (o .:? "dimension") <*>
                     (o .:? "expression"))

instance ToJSON APIdimensionFilter where
        toJSON APIdimensionFilter{..}
          = object
              (catMaybes
                 [("operator" .=) <$> _afOperator,
                  ("dimension" .=) <$> _afDimension,
                  ("expression" .=) <$> _afExpression])

-- | An entry in a URL crawl errors time series.
--
-- /See:/ 'uRLCrawlErrorCount' smart constructor.
data URLCrawlErrorCount = URLCrawlErrorCount
    { _ucecCount     :: !(Maybe Int64)
    , _ucecTimestamp :: !(Maybe UTCTime)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLCrawlErrorCount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucecCount'
--
-- * 'ucecTimestamp'
uRLCrawlErrorCount
    :: URLCrawlErrorCount
uRLCrawlErrorCount =
    URLCrawlErrorCount
    { _ucecCount = Nothing
    , _ucecTimestamp = Nothing
    }

-- | The error count at the given timestamp.
ucecCount :: Lens' URLCrawlErrorCount (Maybe Int64)
ucecCount
  = lens _ucecCount (\ s a -> s{_ucecCount = a})

-- | The date and time when the crawl attempt took place, in RFC 3339 format.
ucecTimestamp :: Lens' URLCrawlErrorCount (Maybe UTCTime)
ucecTimestamp
  = lens _ucecTimestamp
      (\ s a -> s{_ucecTimestamp = a})

instance FromJSON URLCrawlErrorCount where
        parseJSON
          = withObject "URLCrawlErrorCount"
              (\ o ->
                 URLCrawlErrorCount <$>
                   (o .:? "count") <*> (o .:? "timestamp"))

instance ToJSON URLCrawlErrorCount where
        toJSON URLCrawlErrorCount{..}
          = object
              (catMaybes
                 [("count" .=) <$> _ucecCount,
                  ("timestamp" .=) <$> _ucecTimestamp])

-- | A list of rows, one per result, grouped by key. Metrics in each row are
-- aggregated for all data grouped by that key either by page or property,
-- as specified by the aggregation type parameter.
--
-- /See:/ 'searchAnalyticsQueryResponse' smart constructor.
data SearchAnalyticsQueryResponse = SearchAnalyticsQueryResponse
    { _saqrRows                    :: !(Maybe [Maybe APIdataRow])
    , _saqrResponseAggregationType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchAnalyticsQueryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saqrRows'
--
-- * 'saqrResponseAggregationType'
searchAnalyticsQueryResponse
    :: SearchAnalyticsQueryResponse
searchAnalyticsQueryResponse =
    SearchAnalyticsQueryResponse
    { _saqrRows = Nothing
    , _saqrResponseAggregationType = Nothing
    }

-- | A list of rows grouped by the key values in the order given in the
-- query.
saqrRows :: Lens' SearchAnalyticsQueryResponse [Maybe APIdataRow]
saqrRows
  = lens _saqrRows (\ s a -> s{_saqrRows = a}) .
      _Default
      . _Coerce

-- | How the results were aggregated.
saqrResponseAggregationType :: Lens' SearchAnalyticsQueryResponse (Maybe Text)
saqrResponseAggregationType
  = lens _saqrResponseAggregationType
      (\ s a -> s{_saqrResponseAggregationType = a})

instance FromJSON SearchAnalyticsQueryResponse where
        parseJSON
          = withObject "SearchAnalyticsQueryResponse"
              (\ o ->
                 SearchAnalyticsQueryResponse <$>
                   (o .:? "rows" .!= mempty) <*>
                     (o .:? "responseAggregationType"))

instance ToJSON SearchAnalyticsQueryResponse where
        toJSON SearchAnalyticsQueryResponse{..}
          = object
              (catMaybes
                 [("rows" .=) <$> _saqrRows,
                  ("responseAggregationType" .=) <$>
                    _saqrResponseAggregationType])

-- | List of crawl error samples.
--
-- /See:/ 'uRLCrawlErrorsSamplesListResponse' smart constructor.
newtype URLCrawlErrorsSamplesListResponse = URLCrawlErrorsSamplesListResponse
    { _uceslrUrlCrawlErrorSample :: Maybe [Maybe URLCrawlErrorsSample]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLCrawlErrorsSamplesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uceslrUrlCrawlErrorSample'
uRLCrawlErrorsSamplesListResponse
    :: URLCrawlErrorsSamplesListResponse
uRLCrawlErrorsSamplesListResponse =
    URLCrawlErrorsSamplesListResponse
    { _uceslrUrlCrawlErrorSample = Nothing
    }

-- | Information about the sample URL and its crawl error.
uceslrUrlCrawlErrorSample :: Lens' URLCrawlErrorsSamplesListResponse [Maybe URLCrawlErrorsSample]
uceslrUrlCrawlErrorSample
  = lens _uceslrUrlCrawlErrorSample
      (\ s a -> s{_uceslrUrlCrawlErrorSample = a})
      . _Default
      . _Coerce

instance FromJSON URLCrawlErrorsSamplesListResponse
         where
        parseJSON
          = withObject "URLCrawlErrorsSamplesListResponse"
              (\ o ->
                 URLCrawlErrorsSamplesListResponse <$>
                   (o .:? "urlCrawlErrorSample" .!= mempty))

instance ToJSON URLCrawlErrorsSamplesListResponse
         where
        toJSON URLCrawlErrorsSamplesListResponse{..}
          = object
              (catMaybes
                 [("urlCrawlErrorSample" .=) <$>
                    _uceslrUrlCrawlErrorSample])

-- | A time series of the number of URL crawl errors per error category and
-- platform.
--
-- /See:/ 'uRLCrawlErrorsCountsQueryResponse' smart constructor.
newtype URLCrawlErrorsCountsQueryResponse = URLCrawlErrorsCountsQueryResponse
    { _ucecqrCountPerTypes :: Maybe [Maybe URLCrawlErrorCountsPerType]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLCrawlErrorsCountsQueryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucecqrCountPerTypes'
uRLCrawlErrorsCountsQueryResponse
    :: URLCrawlErrorsCountsQueryResponse
uRLCrawlErrorsCountsQueryResponse =
    URLCrawlErrorsCountsQueryResponse
    { _ucecqrCountPerTypes = Nothing
    }

-- | The time series of the number of URL crawl errors per error category and
-- platform.
ucecqrCountPerTypes :: Lens' URLCrawlErrorsCountsQueryResponse [Maybe URLCrawlErrorCountsPerType]
ucecqrCountPerTypes
  = lens _ucecqrCountPerTypes
      (\ s a -> s{_ucecqrCountPerTypes = a})
      . _Default
      . _Coerce

instance FromJSON URLCrawlErrorsCountsQueryResponse
         where
        parseJSON
          = withObject "URLCrawlErrorsCountsQueryResponse"
              (\ o ->
                 URLCrawlErrorsCountsQueryResponse <$>
                   (o .:? "countPerTypes" .!= mempty))

instance ToJSON URLCrawlErrorsCountsQueryResponse
         where
        toJSON URLCrawlErrorsCountsQueryResponse{..}
          = object
              (catMaybes
                 [("countPerTypes" .=) <$> _ucecqrCountPerTypes])

-- | Contains information about specific crawl errors.
--
-- /See:/ 'uRLCrawlErrorsSample' smart constructor.
data URLCrawlErrorsSample = URLCrawlErrorsSample
    { _ucesResponseCode  :: !(Maybe Int32)
    , _ucesUrlDetails    :: !(Maybe (Maybe URLSampleDetails))
    , _ucesLastCrawled   :: !(Maybe UTCTime)
    , _ucesPageUrl       :: !(Maybe Text)
    , _ucesFirstDetected :: !(Maybe UTCTime)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLCrawlErrorsSample' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucesResponseCode'
--
-- * 'ucesUrlDetails'
--
-- * 'ucesLastCrawled'
--
-- * 'ucesPageUrl'
--
-- * 'ucesFirstDetected'
uRLCrawlErrorsSample
    :: URLCrawlErrorsSample
uRLCrawlErrorsSample =
    URLCrawlErrorsSample
    { _ucesResponseCode = Nothing
    , _ucesUrlDetails = Nothing
    , _ucesLastCrawled = Nothing
    , _ucesPageUrl = Nothing
    , _ucesFirstDetected = Nothing
    }

-- | The HTTP response code, if any.
ucesResponseCode :: Lens' URLCrawlErrorsSample (Maybe Int32)
ucesResponseCode
  = lens _ucesResponseCode
      (\ s a -> s{_ucesResponseCode = a})

-- | Additional details about the URL, set only when calling get().
ucesUrlDetails :: Lens' URLCrawlErrorsSample (Maybe (Maybe URLSampleDetails))
ucesUrlDetails
  = lens _ucesUrlDetails
      (\ s a -> s{_ucesUrlDetails = a})

-- | The time when the URL was last crawled, in RFC 3339 format.
ucesLastCrawled :: Lens' URLCrawlErrorsSample (Maybe UTCTime)
ucesLastCrawled
  = lens _ucesLastCrawled
      (\ s a -> s{_ucesLastCrawled = a})

-- | The URL of an error, relative to the site.
ucesPageUrl :: Lens' URLCrawlErrorsSample (Maybe Text)
ucesPageUrl
  = lens _ucesPageUrl (\ s a -> s{_ucesPageUrl = a})

-- | The time the error was first detected, in RFC 3339 format.
ucesFirstDetected :: Lens' URLCrawlErrorsSample (Maybe UTCTime)
ucesFirstDetected
  = lens _ucesFirstDetected
      (\ s a -> s{_ucesFirstDetected = a})

instance FromJSON URLCrawlErrorsSample where
        parseJSON
          = withObject "URLCrawlErrorsSample"
              (\ o ->
                 URLCrawlErrorsSample <$>
                   (o .:? "responseCode") <*> (o .:? "urlDetails") <*>
                     (o .:? "last_crawled")
                     <*> (o .:? "pageUrl")
                     <*> (o .:? "first_detected"))

instance ToJSON URLCrawlErrorsSample where
        toJSON URLCrawlErrorsSample{..}
          = object
              (catMaybes
                 [("responseCode" .=) <$> _ucesResponseCode,
                  ("urlDetails" .=) <$> _ucesUrlDetails,
                  ("last_crawled" .=) <$> _ucesLastCrawled,
                  ("pageUrl" .=) <$> _ucesPageUrl,
                  ("first_detected" .=) <$> _ucesFirstDetected])

-- | List of sitemaps.
--
-- /See:/ 'sitemapsListResponse' smart constructor.
newtype SitemapsListResponse = SitemapsListResponse
    { _slrSitemap :: Maybe [Maybe WmxSitemap]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitemapsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slrSitemap'
sitemapsListResponse
    :: SitemapsListResponse
sitemapsListResponse =
    SitemapsListResponse
    { _slrSitemap = Nothing
    }

-- | Contains detailed information about a specific URL submitted as a
-- sitemap.
slrSitemap :: Lens' SitemapsListResponse [Maybe WmxSitemap]
slrSitemap
  = lens _slrSitemap (\ s a -> s{_slrSitemap = a}) .
      _Default
      . _Coerce

instance FromJSON SitemapsListResponse where
        parseJSON
          = withObject "SitemapsListResponse"
              (\ o ->
                 SitemapsListResponse <$>
                   (o .:? "sitemap" .!= mempty))

instance ToJSON SitemapsListResponse where
        toJSON SitemapsListResponse{..}
          = object (catMaybes [("sitemap" .=) <$> _slrSitemap])

-- | Contains detailed information about a specific URL submitted as a
-- sitemap.
--
-- /See:/ 'wmxSitemap' smart constructor.
data WmxSitemap = WmxSitemap
    { _wsContents        :: !(Maybe [Maybe WmxSitemapContent])
    , _wsPath            :: !(Maybe Text)
    , _wsIsSitemapsIndex :: !(Maybe Bool)
    , _wsLastSubmitted   :: !(Maybe UTCTime)
    , _wsWarnings        :: !(Maybe Int64)
    , _wsLastDownloaded  :: !(Maybe UTCTime)
    , _wsIsPending       :: !(Maybe Bool)
    , _wsType            :: !(Maybe Text)
    , _wsErrors          :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WmxSitemap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wsContents'
--
-- * 'wsPath'
--
-- * 'wsIsSitemapsIndex'
--
-- * 'wsLastSubmitted'
--
-- * 'wsWarnings'
--
-- * 'wsLastDownloaded'
--
-- * 'wsIsPending'
--
-- * 'wsType'
--
-- * 'wsErrors'
wmxSitemap
    :: WmxSitemap
wmxSitemap =
    WmxSitemap
    { _wsContents = Nothing
    , _wsPath = Nothing
    , _wsIsSitemapsIndex = Nothing
    , _wsLastSubmitted = Nothing
    , _wsWarnings = Nothing
    , _wsLastDownloaded = Nothing
    , _wsIsPending = Nothing
    , _wsType = Nothing
    , _wsErrors = Nothing
    }

-- | The various content types in the sitemap.
wsContents :: Lens' WmxSitemap [Maybe WmxSitemapContent]
wsContents
  = lens _wsContents (\ s a -> s{_wsContents = a}) .
      _Default
      . _Coerce

-- | The url of the sitemap.
wsPath :: Lens' WmxSitemap (Maybe Text)
wsPath = lens _wsPath (\ s a -> s{_wsPath = a})

-- | If true, the sitemap is a collection of sitemaps.
wsIsSitemapsIndex :: Lens' WmxSitemap (Maybe Bool)
wsIsSitemapsIndex
  = lens _wsIsSitemapsIndex
      (\ s a -> s{_wsIsSitemapsIndex = a})

-- | Date & time in which this sitemap was submitted. Date format is in RFC
-- 3339 format (yyyy-mm-dd).
wsLastSubmitted :: Lens' WmxSitemap (Maybe UTCTime)
wsLastSubmitted
  = lens _wsLastSubmitted
      (\ s a -> s{_wsLastSubmitted = a})

-- | Number of warnings for the sitemap. These are generally non-critical
-- issues with URLs in the sitemaps.
wsWarnings :: Lens' WmxSitemap (Maybe Int64)
wsWarnings
  = lens _wsWarnings (\ s a -> s{_wsWarnings = a})

-- | Date & time in which this sitemap was last downloaded. Date format is in
-- RFC 3339 format (yyyy-mm-dd).
wsLastDownloaded :: Lens' WmxSitemap (Maybe UTCTime)
wsLastDownloaded
  = lens _wsLastDownloaded
      (\ s a -> s{_wsLastDownloaded = a})

-- | If true, the sitemap has not been processed.
wsIsPending :: Lens' WmxSitemap (Maybe Bool)
wsIsPending
  = lens _wsIsPending (\ s a -> s{_wsIsPending = a})

-- | The type of the sitemap. For example: rssFeed.
wsType :: Lens' WmxSitemap (Maybe Text)
wsType = lens _wsType (\ s a -> s{_wsType = a})

-- | Number of errors in the sitemap. These are issues with the sitemap
-- itself that need to be fixed before it can be processed correctly.
wsErrors :: Lens' WmxSitemap (Maybe Int64)
wsErrors = lens _wsErrors (\ s a -> s{_wsErrors = a})

instance FromJSON WmxSitemap where
        parseJSON
          = withObject "WmxSitemap"
              (\ o ->
                 WmxSitemap <$>
                   (o .:? "contents" .!= mempty) <*> (o .:? "path") <*>
                     (o .:? "isSitemapsIndex")
                     <*> (o .:? "lastSubmitted")
                     <*> (o .:? "warnings")
                     <*> (o .:? "lastDownloaded")
                     <*> (o .:? "isPending")
                     <*> (o .:? "type")
                     <*> (o .:? "errors"))

instance ToJSON WmxSitemap where
        toJSON WmxSitemap{..}
          = object
              (catMaybes
                 [("contents" .=) <$> _wsContents,
                  ("path" .=) <$> _wsPath,
                  ("isSitemapsIndex" .=) <$> _wsIsSitemapsIndex,
                  ("lastSubmitted" .=) <$> _wsLastSubmitted,
                  ("warnings" .=) <$> _wsWarnings,
                  ("lastDownloaded" .=) <$> _wsLastDownloaded,
                  ("isPending" .=) <$> _wsIsPending,
                  ("type" .=) <$> _wsType,
                  ("errors" .=) <$> _wsErrors])

--
-- /See:/ 'searchAnalyticsQueryRequest' smart constructor.
data SearchAnalyticsQueryRequest = SearchAnalyticsQueryRequest
    { _saqrAggregationType       :: !(Maybe Text)
    , _saqrRowLimit              :: !(Maybe Int32)
    , _saqrEndDate               :: !(Maybe Text)
    , _saqrSearchType            :: !(Maybe Text)
    , _saqrDimensionFilterGroups :: !(Maybe [Maybe APIdimensionFilterGroup])
    , _saqrStartDate             :: !(Maybe Text)
    , _saqrDimensions            :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchAnalyticsQueryRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saqrAggregationType'
--
-- * 'saqrRowLimit'
--
-- * 'saqrEndDate'
--
-- * 'saqrSearchType'
--
-- * 'saqrDimensionFilterGroups'
--
-- * 'saqrStartDate'
--
-- * 'saqrDimensions'
searchAnalyticsQueryRequest
    :: SearchAnalyticsQueryRequest
searchAnalyticsQueryRequest =
    SearchAnalyticsQueryRequest
    { _saqrAggregationType = Nothing
    , _saqrRowLimit = Nothing
    , _saqrEndDate = Nothing
    , _saqrSearchType = Nothing
    , _saqrDimensionFilterGroups = Nothing
    , _saqrStartDate = Nothing
    , _saqrDimensions = Nothing
    }

-- | [Optional; Default is \"auto\"] How data is aggregated. If aggregated by
-- property, all data for the same property is aggregated; if aggregated by
-- page, all data is aggregated by canonical URI. If you filter or group by
-- page, choose AUTO; otherwise you can aggregate either by property or by
-- page, depending on how you want your data calculated; see the help
-- documentation to learn how data is calculated differently by site versus
-- by page. Note: If you group or filter by page, you cannot aggregate by
-- property. If you specify any value other than AUTO, the aggregation type
-- in the result will match the requested type, or if you request an
-- invalid type, you will get an error. The API will never change your
-- aggregation type if the requested type is invalid.
saqrAggregationType :: Lens' SearchAnalyticsQueryRequest (Maybe Text)
saqrAggregationType
  = lens _saqrAggregationType
      (\ s a -> s{_saqrAggregationType = a})

-- | [Optional; Default is 1000] The maximum number of rows to return. Must
-- be a number from 1 to 5,000 (inclusive).
saqrRowLimit :: Lens' SearchAnalyticsQueryRequest (Maybe Int32)
saqrRowLimit
  = lens _saqrRowLimit (\ s a -> s{_saqrRowLimit = a})

-- | [Required] End date of the requested date range, in YYYY-MM-DD format,
-- in PST (UTC - 8:00). Must be greater than or equal to the start date.
-- This value is included in the range.
saqrEndDate :: Lens' SearchAnalyticsQueryRequest (Maybe Text)
saqrEndDate
  = lens _saqrEndDate (\ s a -> s{_saqrEndDate = a})

-- | [Optional; Default is \"web\"] The search type to filter for.
saqrSearchType :: Lens' SearchAnalyticsQueryRequest (Maybe Text)
saqrSearchType
  = lens _saqrSearchType
      (\ s a -> s{_saqrSearchType = a})

-- | [Optional] Zero or more filters to apply to the dimension grouping
-- values; for example, \'query contains \"buy\"\' to see only data where
-- the query string contains the substring \"buy\" (not case-sensitive).
-- You can filter by a dimension without grouping by it.
saqrDimensionFilterGroups :: Lens' SearchAnalyticsQueryRequest [Maybe APIdimensionFilterGroup]
saqrDimensionFilterGroups
  = lens _saqrDimensionFilterGroups
      (\ s a -> s{_saqrDimensionFilterGroups = a})
      . _Default
      . _Coerce

-- | [Required] Start date of the requested date range, in YYYY-MM-DD format,
-- in PST time (UTC - 8:00). Must be less than or equal to the end date.
-- This value is included in the range.
saqrStartDate :: Lens' SearchAnalyticsQueryRequest (Maybe Text)
saqrStartDate
  = lens _saqrStartDate
      (\ s a -> s{_saqrStartDate = a})

-- | [Optional] Zero or more dimensions to group results by. Dimensions are
-- the group-by values in the Search Analytics page. Dimensions are
-- combined to create a unique row key for each row. Results are grouped in
-- the order that you supply these dimensions.
saqrDimensions :: Lens' SearchAnalyticsQueryRequest [Text]
saqrDimensions
  = lens _saqrDimensions
      (\ s a -> s{_saqrDimensions = a})
      . _Default
      . _Coerce

instance FromJSON SearchAnalyticsQueryRequest where
        parseJSON
          = withObject "SearchAnalyticsQueryRequest"
              (\ o ->
                 SearchAnalyticsQueryRequest <$>
                   (o .:? "aggregationType") <*> (o .:? "rowLimit") <*>
                     (o .:? "endDate")
                     <*> (o .:? "searchType")
                     <*> (o .:? "dimensionFilterGroups" .!= mempty)
                     <*> (o .:? "startDate")
                     <*> (o .:? "dimensions" .!= mempty))

instance ToJSON SearchAnalyticsQueryRequest where
        toJSON SearchAnalyticsQueryRequest{..}
          = object
              (catMaybes
                 [("aggregationType" .=) <$> _saqrAggregationType,
                  ("rowLimit" .=) <$> _saqrRowLimit,
                  ("endDate" .=) <$> _saqrEndDate,
                  ("searchType" .=) <$> _saqrSearchType,
                  ("dimensionFilterGroups" .=) <$>
                    _saqrDimensionFilterGroups,
                  ("startDate" .=) <$> _saqrStartDate,
                  ("dimensions" .=) <$> _saqrDimensions])

-- | List of sites with access level information.
--
-- /See:/ 'sitesListResponse' smart constructor.
newtype SitesListResponse = SitesListResponse
    { _slrSiteEntry :: Maybe [Maybe WmxSite]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slrSiteEntry'
sitesListResponse
    :: SitesListResponse
sitesListResponse =
    SitesListResponse
    { _slrSiteEntry = Nothing
    }

-- | Contains permission level information about a Webmaster Tools site. For
-- more information, see Permissions in Webmaster Tools.
slrSiteEntry :: Lens' SitesListResponse [Maybe WmxSite]
slrSiteEntry
  = lens _slrSiteEntry (\ s a -> s{_slrSiteEntry = a})
      . _Default
      . _Coerce

instance FromJSON SitesListResponse where
        parseJSON
          = withObject "SitesListResponse"
              (\ o ->
                 SitesListResponse <$> (o .:? "siteEntry" .!= mempty))

instance ToJSON SitesListResponse where
        toJSON SitesListResponse{..}
          = object
              (catMaybes [("siteEntry" .=) <$> _slrSiteEntry])

-- | Contains permission level information about a Webmaster Tools site. For
-- more information, see Permissions in Webmaster Tools.
--
-- /See:/ 'wmxSite' smart constructor.
data WmxSite = WmxSite
    { _wsPermissionLevel :: !(Maybe Text)
    , _wsSiteUrl         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WmxSite' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wsPermissionLevel'
--
-- * 'wsSiteUrl'
wmxSite
    :: WmxSite
wmxSite =
    WmxSite
    { _wsPermissionLevel = Nothing
    , _wsSiteUrl = Nothing
    }

-- | The user\'s permission level for the site.
wsPermissionLevel :: Lens' WmxSite (Maybe Text)
wsPermissionLevel
  = lens _wsPermissionLevel
      (\ s a -> s{_wsPermissionLevel = a})

-- | The URL of the site.
wsSiteUrl :: Lens' WmxSite (Maybe Text)
wsSiteUrl
  = lens _wsSiteUrl (\ s a -> s{_wsSiteUrl = a})

instance FromJSON WmxSite where
        parseJSON
          = withObject "WmxSite"
              (\ o ->
                 WmxSite <$>
                   (o .:? "permissionLevel") <*> (o .:? "siteUrl"))

instance ToJSON WmxSite where
        toJSON WmxSite{..}
          = object
              (catMaybes
                 [("permissionLevel" .=) <$> _wsPermissionLevel,
                  ("siteUrl" .=) <$> _wsSiteUrl])
