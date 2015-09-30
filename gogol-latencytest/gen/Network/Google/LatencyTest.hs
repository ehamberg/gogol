{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.LatencyTest
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | A Test API to report latency data.
--
-- /See:/ < Google Cloud Network Performance Monitoring API Reference>
module Network.Google.LatencyTest
    (
    -- * API
      LatencyTestAPI
    , latencyTestAPI
    , latencyTestURL

    -- * Service Methods

    -- * REST Resources

    -- ** CloudlatencytestStatscollectionUpdateaggregatedstats
    , module Cloudlatencytest.Statscollection.Updateaggregatedstats

    -- ** CloudlatencytestStatscollectionUpdatestats
    , module Cloudlatencytest.Statscollection.Updatestats

    -- * Types

    -- ** IntValue
    , IntValue
    , intValue
    , ivValue
    , ivLabel

    -- ** AggregatedStatsReply
    , AggregatedStatsReply
    , aggregatedStatsReply
    , asrTestValue

    -- ** DoubleValue
    , DoubleValue
    , doubleValue
    , dvValue
    , dvLabel

    -- ** StringValue
    , StringValue
    , stringValue
    , svValue
    , svLabel

    -- ** Stats
    , Stats
    , stats
    , sTime
    , sDoubleValues
    , sStringValues
    , sIntValues

    -- ** AggregatedStats
    , AggregatedStats
    , aggregatedStats
    , asStats

    -- ** StatsReply
    , StatsReply
    , statsReply
    , srTestValue
    ) where

import           Network.Google.LatencyTest.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Cloudlatencytest.Statscollection.Updateaggregatedstats
import           Network.Google.Resource.Cloudlatencytest.Statscollection.Updatestats

{- $resources
TODO
-}

type LatencyTestAPI = Statscollection

latencyTestAPI :: Proxy LatencyTestAPI
latencyTestAPI = Proxy
