{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Rules.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a GTM Rule.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersRulesUpdate@.
module TagManager.Accounts.Containers.Rules.Update
    (
    -- * REST Resource
      AccountsContainersRulesUpdateAPI

    -- * Creating a Request
    , accountsContainersRulesUpdate
    , AccountsContainersRulesUpdate

    -- * Request Lenses
    , acruQuotaUser
    , acruPrettyPrint
    , acruContainerId
    , acruUserIp
    , acruFingerprint
    , acruRuleId
    , acruAccountId
    , acruKey
    , acruOauthToken
    , acruFields
    , acruAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersRulesUpdate@ which the
-- 'AccountsContainersRulesUpdate' request conforms to.
type AccountsContainersRulesUpdateAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "rules" :>
               Capture "ruleId" Text :>
                 QueryParam "fingerprint" Text :> Put '[JSON] Rule

-- | Updates a GTM Rule.
--
-- /See:/ 'accountsContainersRulesUpdate' smart constructor.
data AccountsContainersRulesUpdate = AccountsContainersRulesUpdate
    { _acruQuotaUser   :: !(Maybe Text)
    , _acruPrettyPrint :: !Bool
    , _acruContainerId :: !Text
    , _acruUserIp      :: !(Maybe Text)
    , _acruFingerprint :: !(Maybe Text)
    , _acruRuleId      :: !Text
    , _acruAccountId   :: !Text
    , _acruKey         :: !(Maybe Text)
    , _acruOauthToken  :: !(Maybe Text)
    , _acruFields      :: !(Maybe Text)
    , _acruAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersRulesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acruQuotaUser'
--
-- * 'acruPrettyPrint'
--
-- * 'acruContainerId'
--
-- * 'acruUserIp'
--
-- * 'acruFingerprint'
--
-- * 'acruRuleId'
--
-- * 'acruAccountId'
--
-- * 'acruKey'
--
-- * 'acruOauthToken'
--
-- * 'acruFields'
--
-- * 'acruAlt'
accountsContainersRulesUpdate
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'ruleId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersRulesUpdate
accountsContainersRulesUpdate pAcruContainerId_ pAcruRuleId_ pAcruAccountId_ =
    AccountsContainersRulesUpdate
    { _acruQuotaUser = Nothing
    , _acruPrettyPrint = True
    , _acruContainerId = pAcruContainerId_
    , _acruUserIp = Nothing
    , _acruFingerprint = Nothing
    , _acruRuleId = pAcruRuleId_
    , _acruAccountId = pAcruAccountId_
    , _acruKey = Nothing
    , _acruOauthToken = Nothing
    , _acruFields = Nothing
    , _acruAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acruQuotaUser :: Lens' AccountsContainersRulesUpdate' (Maybe Text)
acruQuotaUser
  = lens _acruQuotaUser
      (\ s a -> s{_acruQuotaUser = a})

-- | Returns response with indentations and line breaks.
acruPrettyPrint :: Lens' AccountsContainersRulesUpdate' Bool
acruPrettyPrint
  = lens _acruPrettyPrint
      (\ s a -> s{_acruPrettyPrint = a})

-- | The GTM Container ID.
acruContainerId :: Lens' AccountsContainersRulesUpdate' Text
acruContainerId
  = lens _acruContainerId
      (\ s a -> s{_acruContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acruUserIp :: Lens' AccountsContainersRulesUpdate' (Maybe Text)
acruUserIp
  = lens _acruUserIp (\ s a -> s{_acruUserIp = a})

-- | When provided, this fingerprint must match the fingerprint of the rule
-- in storage.
acruFingerprint :: Lens' AccountsContainersRulesUpdate' (Maybe Text)
acruFingerprint
  = lens _acruFingerprint
      (\ s a -> s{_acruFingerprint = a})

-- | The GTM Rule ID.
acruRuleId :: Lens' AccountsContainersRulesUpdate' Text
acruRuleId
  = lens _acruRuleId (\ s a -> s{_acruRuleId = a})

-- | The GTM Account ID.
acruAccountId :: Lens' AccountsContainersRulesUpdate' Text
acruAccountId
  = lens _acruAccountId
      (\ s a -> s{_acruAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acruKey :: Lens' AccountsContainersRulesUpdate' (Maybe Text)
acruKey = lens _acruKey (\ s a -> s{_acruKey = a})

-- | OAuth 2.0 token for the current user.
acruOauthToken :: Lens' AccountsContainersRulesUpdate' (Maybe Text)
acruOauthToken
  = lens _acruOauthToken
      (\ s a -> s{_acruOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acruFields :: Lens' AccountsContainersRulesUpdate' (Maybe Text)
acruFields
  = lens _acruFields (\ s a -> s{_acruFields = a})

-- | Data format for the response.
acruAlt :: Lens' AccountsContainersRulesUpdate' Text
acruAlt = lens _acruAlt (\ s a -> s{_acruAlt = a})

instance GoogleRequest AccountsContainersRulesUpdate'
         where
        type Rs AccountsContainersRulesUpdate' = Rule
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersRulesUpdate{..}
          = go _acruQuotaUser _acruPrettyPrint _acruContainerId
              _acruUserIp
              _acruFingerprint
              _acruRuleId
              _acruAccountId
              _acruKey
              _acruOauthToken
              _acruFields
              _acruAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersRulesUpdateAPI)
                      r
                      u
