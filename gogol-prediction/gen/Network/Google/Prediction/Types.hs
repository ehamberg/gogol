{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.Prediction.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Prediction.Types
    (
    -- * API Definition
      prediction


    -- * Analyze
    , Analyze
    , analyze
    , aKind
    , aModelDescription
    , aSelfLink
    , aId
    , aErrors
    , aDataDescription

    -- * AnalyzeCategoricalItemFeaturesDataDescription
    , AnalyzeCategoricalItemFeaturesDataDescription
    , analyzeCategoricalItemFeaturesDataDescription
    , acifddValues
    , acifddCount

    -- * AnalyzeConfusionMatrixModelDescription
    , AnalyzeConfusionMatrixModelDescription
    , analyzeConfusionMatrixModelDescription

    -- * AnalyzeConfusionMatrixRowTotalsModelDescription
    , AnalyzeConfusionMatrixRowTotalsModelDescription
    , analyzeConfusionMatrixRowTotalsModelDescription

    -- * AnalyzeDataDescription
    , AnalyzeDataDescription
    , analyzeDataDescription
    , addOutputFeature
    , addFeatures

    -- * AnalyzeItemErrors
    , AnalyzeItemErrors
    , analyzeItemErrors

    -- * AnalyzeItemFeaturesDataDescription
    , AnalyzeItemFeaturesDataDescription
    , analyzeItemFeaturesDataDescription
    , aifddText
    , aifddNumeric
    , aifddIndex
    , aifddCategorical

    -- * AnalyzeItemTextOutputFeatureDataDescription
    , AnalyzeItemTextOutputFeatureDataDescription
    , analyzeItemTextOutputFeatureDataDescription
    , aitofddValue
    , aitofddCount

    -- * AnalyzeItemValuesCategoricalItemFeaturesDataDescription
    , AnalyzeItemValuesCategoricalItemFeaturesDataDescription
    , analyzeItemValuesCategoricalItemFeaturesDataDescription
    , aivcifddValue
    , aivcifddCount

    -- * AnalyzeModelDescription
    , AnalyzeModelDescription
    , analyzeModelDescription
    , amdConfusionMatrixRowTotals
    , amdConfusionMatrix
    , amdModelinfo

    -- * AnalyzeNumericItemFeaturesDataDescription
    , AnalyzeNumericItemFeaturesDataDescription
    , analyzeNumericItemFeaturesDataDescription
    , anifddMean
    , anifddCount
    , anifddVariance

    -- * AnalyzeNumericOutputFeatureDataDescription
    , AnalyzeNumericOutputFeatureDataDescription
    , analyzeNumericOutputFeatureDataDescription
    , anofddMean
    , anofddCount
    , anofddVariance

    -- * AnalyzeOutputFeatureDataDescription
    , AnalyzeOutputFeatureDataDescription
    , analyzeOutputFeatureDataDescription
    , aofddText
    , aofddNumeric

    -- * AnalyzeTextItemFeaturesDataDescription
    , AnalyzeTextItemFeaturesDataDescription
    , analyzeTextItemFeaturesDataDescription
    , atifddCount

    -- * Input
    , Input
    , input
    , iInput

    -- * InputInput
    , InputInput
    , inputInput
    , iiCsvInstance

    -- * Insert
    , Insert
    , insert
    , iStorageDataLocation
    , iModelType
    , iTrainingInstances
    , iUtility
    , iStoragePMMLModelLocation
    , iSourceModel
    , iId
    , iStoragePMMLLocation

    -- * Insert2
    , Insert2
    , insert2
    , insStorageDataLocation
    , insModelType
    , insKind
    , insCreated
    , insTrainingComplete
    , insSelfLink
    , insTrainingStatus
    , insStoragePMMLModelLocation
    , insId
    , insStoragePMMLLocation
    , insModelInfo

    -- * Insert2ModelInfo
    , Insert2ModelInfo
    , insert2ModelInfo
    , imiModelType
    , imiClassWeightedAccuracy
    , imiClassificationAccuracy
    , imiMeanSquaredError
    , imiNumberLabels
    , imiNumberInstances

    -- * InsertItemTrainingInstances
    , InsertItemTrainingInstances
    , insertItemTrainingInstances
    , iitiCsvInstance
    , iitiOutput

    -- * InsertItemUtility
    , InsertItemUtility
    , insertItemUtility

    -- * List
    , List
    , list
    , lNextPageToken
    , lKind
    , lItems
    , lSelfLink

    -- * Output
    , Output
    , output
    , oOutputValue
    , oKind
    , oOutputLabel
    , oSelfLink
    , oId
    , oOutputMulti

    -- * OutputItemOutputMulti
    , OutputItemOutputMulti
    , outputItemOutputMulti
    , oiomScore
    , oiomLabel

    -- * Update
    , Update
    , update
    , uCsvInstance
    , uOutput
    ) where

import           Network.Google.Prediction.Types.Product
import           Network.Google.Prediction.Types.Sum
import           Network.Google.Prelude

prediction :: a
prediction = error "prediction"
