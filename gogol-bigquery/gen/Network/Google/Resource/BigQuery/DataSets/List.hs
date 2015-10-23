{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.BigQuery.DataSets.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all datasets in the specified project to which you have been
-- granted the READER dataset role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.datasets.list@.
module Network.Google.Resource.BigQuery.DataSets.List
    (
    -- * REST Resource
      DataSetsListResource

    -- * Creating a Request
    , dataSetsList
    , DataSetsList

    -- * Request Lenses
    , dslAll
    , dslPageToken
    , dslProjectId
    , dslMaxResults
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquery.datasets.list@ method which the
-- 'DataSetsList' request conforms to.
type DataSetsListResource =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           QueryParam "all" Bool :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "alt" AltJSON :> Get '[JSON] DataSetList

-- | Lists all datasets in the specified project to which you have been
-- granted the READER dataset role.
--
-- /See:/ 'dataSetsList' smart constructor.
data DataSetsList = DataSetsList
    { _dslAll        :: !(Maybe Bool)
    , _dslPageToken  :: !(Maybe Text)
    , _dslProjectId  :: !Text
    , _dslMaxResults :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataSetsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dslAll'
--
-- * 'dslPageToken'
--
-- * 'dslProjectId'
--
-- * 'dslMaxResults'
dataSetsList
    :: Text -- ^ 'dslProjectId'
    -> DataSetsList
dataSetsList pDslProjectId_ =
    DataSetsList
    { _dslAll = Nothing
    , _dslPageToken = Nothing
    , _dslProjectId = pDslProjectId_
    , _dslMaxResults = Nothing
    }

-- | Whether to list all datasets, including hidden ones
dslAll :: Lens' DataSetsList (Maybe Bool)
dslAll = lens _dslAll (\ s a -> s{_dslAll = a})

-- | Page token, returned by a previous call, to request the next page of
-- results
dslPageToken :: Lens' DataSetsList (Maybe Text)
dslPageToken
  = lens _dslPageToken (\ s a -> s{_dslPageToken = a})

-- | Project ID of the datasets to be listed
dslProjectId :: Lens' DataSetsList Text
dslProjectId
  = lens _dslProjectId (\ s a -> s{_dslProjectId = a})

-- | The maximum number of results to return
dslMaxResults :: Lens' DataSetsList (Maybe Word32)
dslMaxResults
  = lens _dslMaxResults
      (\ s a -> s{_dslMaxResults = a})

instance GoogleRequest DataSetsList where
        type Rs DataSetsList = DataSetList
        requestClient DataSetsList{..}
          = go _dslProjectId _dslAll _dslPageToken
              _dslMaxResults
              (Just AltJSON)
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy DataSetsListResource)
                      mempty