-- |
-- Module      : Network.Google.DoubleClickSearch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Report and modify your advertising data in DoubleClick Search (for example, campaigns, ad groups, keywords, and conversions).
--
-- /See:/ <https://developers.google.com/doubleclick-search/ DoubleClick Search API Reference>
module Network.Google.DoubleClickSearch
    (
    -- * API Definition
      DoubleClickSearch



    -- * Types

    -- ** Availability
    , Availability
    , availability
    , aAgencyId
    , aAdvertiserId
    , aSegmentationId
    , aSegmentationName
    , aAvailabilityTimestamp
    , aSegmentationType

    -- ** Conversion
    , Conversion
    , conversion
    , cAdGroupId
    , cConversionModifiedTimestamp
    , cState
    , cEngineAccountId
    , cAgencyId
    , cCurrencyCode
    , cStoreId
    , cDsConversionId
    , cConversionId
    , cAdvertiserId
    , cSegmentationId
    , cChannel
    , cProductCountry
    , cCampaignId
    , cCriterionId
    , cConversionTimestamp
    , cAttributionModel
    , cSegmentationName
    , cProductLanguage
    , cCustomMetric
    , cCountMillis
    , cQuantityMillis
    , cAdId
    , cDeviceType
    , cType
    , cCustomDimension
    , cFloodlightOrderId
    , cRevenueMicros
    , cClickId
    , cInventoryAccountId
    , cSegmentationType
    , cProductId
    , cProductGroupId

    -- ** ConversionList
    , ConversionList
    , conversionList
    , clKind
    , clConversion

    -- ** CustomDimension
    , CustomDimension
    , customDimension
    , cdValue
    , cdName

    -- ** CustomMetric
    , CustomMetric
    , customMetric
    , cmValue
    , cmName

    -- ** Report
    , Report
    , report
    , rKind
    , rRows
    , rStatisticsCurrencyCode
    , rIsReportReady
    , rFiles
    , rId
    , rStatisticsTimeZone
    , rRowCount
    , rRequest

    -- ** ReportApiColumnSpec
    , ReportApiColumnSpec
    , reportApiColumnSpec
    , racsCustomDimensionName
    , racsSavedColumnName
    , racsGroupByColumn
    , racsCustomMetricName
    , racsEndDate
    , racsStartDate
    , racsHeaderText
    , racsPlatformSource
    , racsColumnName

    -- ** ReportItemFiles
    , ReportItemFiles
    , reportItemFiles
    , rifUrl
    , rifByteCount

    -- ** ReportRequest
    , ReportRequest
    , reportRequest
    , rrMaxRowsPerFile
    , rrReportScope
    , rrStatisticsCurrency
    , rrTimeRange
    , rrOrderBy
    , rrFilters
    , rrIncludeRemovedEntities
    , rrIncludeDeletedEntities
    , rrDownloadFormat
    , rrStartRow
    , rrColumns
    , rrReportType
    , rrVerifySingleTimeZone
    , rrRowCount

    -- ** ReportRequestItemFilters
    , ReportRequestItemFilters
    , reportRequestItemFilters
    , rrifOperator
    , rrifValues
    , rrifColumn

    -- ** ReportRequestItemOrderBy
    , ReportRequestItemOrderBy
    , reportRequestItemOrderBy
    , rriobSortOrder
    , rriobColumn

    -- ** ReportRequestReportScope
    , ReportRequestReportScope
    , reportRequestReportScope
    , rrrsKeywordId
    , rrrsAdGroupId
    , rrrsEngineAccountId
    , rrrsAgencyId
    , rrrsAdvertiserId
    , rrrsCampaignId
    , rrrsAdId

    -- ** ReportRequestTimeRange
    , ReportRequestTimeRange
    , reportRequestTimeRange
    , rrtrEndDate
    , rrtrChangedAttributesSinceTimestamp
    , rrtrStartDate
    , rrtrChangedMetricsSinceTimestamp

    -- ** ReportRow
    , ReportRow
    , reportRow

    -- ** SavedColumn
    , SavedColumn
    , savedColumn
    , scSavedColumnName
    , scKind
    , scType

    -- ** SavedColumnList
    , SavedColumnList
    , savedColumnList
    , sclKind
    , sclItems

    -- ** UpdateAvailabilityRequest
    , UpdateAvailabilityRequest
    , updateAvailabilityRequest
    , uAvailabilities

    -- ** UpdateAvailabilityResponse
    , UpdateAvailabilityResponse
    , updateAvailabilityResponse
    , uarAvailabilities
    ) where

import           Network.Google.DoubleClickSearch.Types

{- $resources
TODO
-}

type DoubleClickSearch = ()

doubleClickSearch :: Proxy DoubleClickSearch
doubleClickSearch = Proxy




