{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ComputeUserAccounts
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | API for the Google Cloud User Accounts service.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference>
module Network.Google.ComputeUserAccounts
    (
    -- * API
      ComputeUserAccountsAPI
    , computeUserAccountsAPI
    , computeUserAccountsURL

    -- * Service Methods

    -- * REST Resources

    -- ** ClouduseraccountsGlobalAccountsOperationsDelete
    , module Clouduseraccounts.GlobalAccountsOperations.Delete

    -- ** ClouduseraccountsGlobalAccountsOperationsGet
    , module Clouduseraccounts.GlobalAccountsOperations.Get

    -- ** ClouduseraccountsGlobalAccountsOperationsList
    , module Clouduseraccounts.GlobalAccountsOperations.List

    -- ** ClouduseraccountsGroupsAddMember
    , module Clouduseraccounts.Groups.AddMember

    -- ** ClouduseraccountsGroupsDelete
    , module Clouduseraccounts.Groups.Delete

    -- ** ClouduseraccountsGroupsGet
    , module Clouduseraccounts.Groups.Get

    -- ** ClouduseraccountsGroupsInsert
    , module Clouduseraccounts.Groups.Insert

    -- ** ClouduseraccountsGroupsList
    , module Clouduseraccounts.Groups.List

    -- ** ClouduseraccountsGroupsRemoveMember
    , module Clouduseraccounts.Groups.RemoveMember

    -- ** ClouduseraccountsLinuxGetAuthorizedKeysView
    , module Clouduseraccounts.Linux.GetAuthorizedKeysView

    -- ** ClouduseraccountsLinuxGetLinuxAccountViews
    , module Clouduseraccounts.Linux.GetLinuxAccountViews

    -- ** ClouduseraccountsUsersAddPublicKey
    , module Clouduseraccounts.Users.AddPublicKey

    -- ** ClouduseraccountsUsersDelete
    , module Clouduseraccounts.Users.Delete

    -- ** ClouduseraccountsUsersGet
    , module Clouduseraccounts.Users.Get

    -- ** ClouduseraccountsUsersInsert
    , module Clouduseraccounts.Users.Insert

    -- ** ClouduseraccountsUsersList
    , module Clouduseraccounts.Users.List

    -- ** ClouduseraccountsUsersRemovePublicKey
    , module Clouduseraccounts.Users.RemovePublicKey

    -- * Types

    -- ** OperationList
    , OperationList
    , operationList
    , olNextPageToken
    , olKind
    , olItems
    , olSelfLink
    , olId

    -- ** Group
    , Group
    , group'
    , gKind
    , gMembers
    , gSelfLink
    , gName
    , gCreationTimestamp
    , gId
    , gDescription

    -- ** GroupList
    , GroupList
    , groupList
    , glNextPageToken
    , glKind
    , glItems
    , glSelfLink
    , glId

    -- ** Operation
    , Operation
    , operation
    , oTargetId
    , oStatus
    , oInsertTime
    , oProgress
    , oStartTime
    , oKind
    , oError
    , oHttpErrorMessage
    , oZone
    , oWarnings
    , oHttpErrorStatusCode
    , oUser
    , oSelfLink
    , oName
    , oStatusMessage
    , oCreationTimestamp
    , oEndTime
    , oId
    , oOperationType
    , oRegion
    , oTargetLink
    , oClientOperationId

    -- ** UserList
    , UserList
    , userList
    , ulNextPageToken
    , ulKind
    , ulItems
    , ulSelfLink
    , ulId

    -- ** PublicKey
    , PublicKey
    , publicKey
    , pkFingerprint
    , pkKey
    , pkCreationTimestamp
    , pkExpirationTimestamp
    , pkDescription

    -- ** User
    , User
    , user
    , uGroups
    , uPublicKeys
    , uKind
    , uOwner
    , uSelfLink
    , uName
    , uCreationTimestamp
    , uId
    , uDescription

    -- ** LinuxAccountViews
    , LinuxAccountViews
    , linuxAccountViews
    , lavUserViews
    , lavKind
    , lavGroupViews

    -- ** LinuxGroupView
    , LinuxGroupView
    , linuxGroupView
    , lgvMembers
    , lgvGid
    , lgvGroupName

    -- ** GroupsAddMemberRequest
    , GroupsAddMemberRequest
    , groupsAddMemberRequest
    , gamrUsers

    -- ** LinuxGetLinuxAccountViewsResponse
    , LinuxGetLinuxAccountViewsResponse
    , linuxGetLinuxAccountViewsResponse
    , lglavrResource

    -- ** LinuxUserView
    , LinuxUserView
    , linuxUserView
    , luvGecos
    , luvUid
    , luvUsername
    , luvShell
    , luvGid
    , luvHomeDirectory

    -- ** LinuxGetAuthorizedKeysViewResponse
    , LinuxGetAuthorizedKeysViewResponse
    , linuxGetAuthorizedKeysViewResponse
    , lgakvrResource

    -- ** GroupsRemoveMemberRequest
    , GroupsRemoveMemberRequest
    , groupsRemoveMemberRequest
    , grmrUsers

    -- ** AuthorizedKeysView
    , AuthorizedKeysView
    , authorizedKeysView
    , akvSudoer
    , akvKeys
    ) where

import           Network.Google.ComputeUserAccounts.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Clouduseraccounts.GlobalAccountsOperations.Delete
import           Network.Google.Resource.Clouduseraccounts.GlobalAccountsOperations.Get
import           Network.Google.Resource.Clouduseraccounts.GlobalAccountsOperations.List
import           Network.Google.Resource.Clouduseraccounts.Groups.AddMember
import           Network.Google.Resource.Clouduseraccounts.Groups.Delete
import           Network.Google.Resource.Clouduseraccounts.Groups.Get
import           Network.Google.Resource.Clouduseraccounts.Groups.Insert
import           Network.Google.Resource.Clouduseraccounts.Groups.List
import           Network.Google.Resource.Clouduseraccounts.Groups.RemoveMember
import           Network.Google.Resource.Clouduseraccounts.Linux.GetAuthorizedKeysView
import           Network.Google.Resource.Clouduseraccounts.Linux.GetLinuxAccountViews
import           Network.Google.Resource.Clouduseraccounts.Users.AddPublicKey
import           Network.Google.Resource.Clouduseraccounts.Users.Delete
import           Network.Google.Resource.Clouduseraccounts.Users.Get
import           Network.Google.Resource.Clouduseraccounts.Users.Insert
import           Network.Google.Resource.Clouduseraccounts.Users.List
import           Network.Google.Resource.Clouduseraccounts.Users.RemovePublicKey

{- $resources
TODO
-}

type ComputeUserAccountsAPI =
     Groups :<|> Users :<|> GlobalAccountsOperations :<|>
       Linux

computeUserAccountsAPI :: Proxy ComputeUserAccountsAPI
computeUserAccountsAPI = Proxy
