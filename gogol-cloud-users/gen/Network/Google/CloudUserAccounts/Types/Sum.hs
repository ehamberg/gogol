{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.CloudUserAccounts.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudUserAccounts.Types.Sum where

import           Network.Google.Prelude

-- | [Output Only] The warning type identifier for this warning.
data OperationCodeItemWarnings
    = OCIWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | OCIWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | OCIWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | OCIWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | OCIWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | OCIWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | OCIWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | OCIWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | OCIWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | OCIWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | OCIWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | OCIWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | OCIWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | OCIWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OperationCodeItemWarnings

-- | [Output Only] Status of the operation. Can be one of the following:
-- PENDING, RUNNING, or DONE.
data OperationStatus
    = OSDone
      -- ^ @DONE@
    | OSPending
      -- ^ @PENDING@
    | OSRunning
      -- ^ @RUNNING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OperationStatus
