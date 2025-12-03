@interface MCNewEASAccountPayloadHandler
- (BOOL)_isConfiguredWithSCEP;
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (BOOL)isInstalled;
- (BOOL)preflightUserInputResponses:(id)responses outError:(id *)error;
- (BOOL)stageForInstallationWithInstaller:(id)installer interactionClient:(id)client outError:(id *)error;
- (id)_accountFromPayloadWithUserInputResponses:(id)responses identityPersistentID:(id)d SMIMESigningIdentityPersistentID:(id)iD SMIMEEncryptionIdentityPersistentID:(id)persistentID;
- (id)_endPointFQDNForPayload:(id)payload;
- (id)_errorFromPolicyPreflightError:(id)error;
- (id)_errorFromValidationError:(id)error;
- (id)_getClientRestrictionsFromServerCertificatePersistentID:(id)d SMIMESigningIdentityPersistentID:(id)iD SMIMEEncryptionIdentityPersistentID:(id)persistentID outError:(id *)error;
- (id)_installTimePersistentIDForIdentityCertificateOutError:(id *)error;
- (id)_installedACAccountOtherThanSelf;
- (id)_preflightTimePersistentIDForIdentityCertificateUserInputResponses:(id)responses outError:(id *)error;
- (id)accountTypeIdentifiers;
- (id)unhashedAccountIdentifier;
- (id)userInputFields;
- (void)_preflightWithAccount:(id)account completionHandler:(id)handler;
- (void)_preflightWithPreflighter:(id)preflighter completionHandler:(id)handler;
- (void)account:(id)account isValid:(BOOL)valid validationError:(id)error;
- (void)preflighter:(id)preflighter error:(id)error;
- (void)preflighter:(id)preflighter needsComplianceWithMCFeatures:(id)features perAccountPolicies:(id)policies;
- (void)preflighter:(id)preflighter successWithMCFeatures:(id)features perAccountPolicies:(id)policies policyKey:(id)key;
- (void)preflighterAccountOnlyRemoteWipeRequestResponseAcknowledged:(id)acknowledged;
- (void)preflighterAccountOnlyRemoteWipeRequested:(id)requested;
- (void)preflighterRemoteWipeRequestResponseAcknowledged:(id)acknowledged;
- (void)preflighterRemoteWipeRequested:(id)requested;
- (void)preflighterSuccessWithoutPolicyUpdate:(id)update;
- (void)remove;
- (void)setAsideWithInstaller:(id)installer;
- (void)setUserInputResponses:(id)responses;
- (void)unsetAside;
- (void)unstageFromInstallationWithInstaller:(id)installer;
@end

@implementation MCNewEASAccountPayloadHandler

- (id)userInputFields
{
  v54.receiver = self;
  v54.super_class = MCNewEASAccountPayloadHandler;
  userInputFields = [(MCNewPayloadHandler *)&v54 userInputFields];
  v4 = [userInputFields mutableCopy];

  payload = [(MCNewPayloadHandler *)self payload];
  accountDescription = [payload accountDescription];
  v7 = accountDescription;
  if (accountDescription)
  {
    v8 = accountDescription;
  }

  else
  {
    hostname = [payload hostname];
    v10 = hostname;
    if (hostname)
    {
      v11 = hostname;
    }

    else
    {
      v11 = MCLocalizedString();
    }

    v8 = v11;
  }

  emailAddress = [payload emailAddress];

  if (!emailAddress)
  {
    v13 = MCLocalizedString();
    v14 = MCLocalizedFormat();
    v15 = MCLocalizedString();
    v16 = [MCNewPayloadHandler promptDictionaryForKey:@"kEASEmailAddressKey" title:v13 description:v14 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:v15 minimumLength:0 fieldType:2 flags:?];
    [v4 addObject:v16];
  }

  embeddedCertificate = [payload embeddedCertificate];
  if (embeddedCertificate)
  {
    certificateUUID = [payload certificateUUID];
    v19 = certificateUUID == 0;
  }

  else
  {
    v19 = 0;
  }

  hasCertificate = [payload hasCertificate];
  useOAuth = [payload useOAuth];
  if (useOAuth)
  {
    v22 = 0;
  }

  else if ([payload hasCertificate])
  {
    username = [payload username];
    v22 = [username length] != 0;
  }

  else
  {
    v22 = 1;
  }

  if (!v19 || ([payload embeddedCertificatePassword], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "length"), v24, v25))
  {
    if (hasCertificate)
    {
      goto LABEL_28;
    }

    goto LABEL_20;
  }

  embeddedCertificateName = [payload embeddedCertificateName];
  v33 = [embeddedCertificateName length];

  if (v33)
  {
    embeddedCertificateName2 = [payload embeddedCertificateName];
LABEL_26:
    v37 = MCLocalizedFormat();

    goto LABEL_27;
  }

  emailAddress2 = [payload emailAddress];
  v36 = [emailAddress2 length];

  if (v36)
  {
    embeddedCertificateName2 = [payload emailAddress];
    goto LABEL_26;
  }

  v37 = MCLocalizedFormat();
LABEL_27:
  v38 = MCLocalizedString();
  v39 = MCLocalizedString();
  v40 = [MCNewPayloadHandler promptDictionaryForKey:@"kEASCertPasswordKey" title:v38 description:v37 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:v39 minimumLength:0 fieldType:3 flags:?];
  [v4 addObject:v40];

  if (hasCertificate)
  {
    goto LABEL_28;
  }

LABEL_20:
  username2 = [payload username];
  v27 = [username2 length];

  if (!v27)
  {
    v28 = MCLocalizedString();
    v29 = MCLocalizedFormat();
    v30 = MCLocalizedString();
    v31 = [MCNewPayloadHandler promptDictionaryForKey:@"kEASUsernameKey" title:v28 description:v29 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:v30 minimumLength:0 fieldType:0 flags:?];
    [v4 addObject:v31];
  }

LABEL_28:
  if (v22)
  {
    password = [payload password];
    v42 = [password length];

    if (!v42)
    {
      emailAddress3 = [payload emailAddress];
      v44 = [emailAddress3 length];

      if (v44)
      {
        emailAddress4 = [payload emailAddress];
        v45 = MCLocalizedFormat();
      }

      else
      {
        emailAddress4 = v8;
        v45 = MCLocalizedFormat();
      }

      v46 = MCLocalizedString();
      if ([payload hasCertificate])
      {
        v47 = MCLocalizedString();

        v48 = 4;
        v46 = v47;
      }

      else
      {
        v48 = 0;
      }

      v49 = MCLocalizedString();
      LODWORD(v53) = 3;
      HIDWORD(v53) = v48;
      v50 = [MCNewPayloadHandler promptDictionaryForKey:@"kEASPasswordKey" title:v49 description:v45 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:v46 minimumLength:0 fieldType:v53 flags:?];
      [v4 addObject:v50];
    }
  }

  return v4;
}

- (void)setUserInputResponses:(id)responses
{
  responsesCopy = responses;
  selfCopy = self;
  payload = [(MCNewPayloadHandler *)self payload];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = responsesCopy;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v25;
    v10 = kMCIDUUIDKey;
    v11 = kMCIDResponseKey;
    *&v7 = 138543618;
    v19 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v13 objectForKey:{v10, v19}];
        v15 = [v13 objectForKey:v11];
        if ([v14 isEqualToString:@"kEASEmailAddressKey"])
        {
          [payload setEmailAddress:v15];
        }

        else if ([v14 isEqualToString:@"kEASCertPasswordKey"])
        {
          [payload setEmbeddedCertificatePassword:v15];
        }

        else if ([v14 isEqualToString:@"kEASUsernameKey"])
        {
          [payload setUsername:v15];
        }

        else if ([v14 isEqualToString:@"kEASPasswordKey"])
        {
          [payload setPassword:v15];
        }

        else
        {
          v16 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
          {
            v17 = v16;
            v18 = objc_opt_class();
            *buf = v19;
            v29 = v18;
            v30 = 2114;
            v31 = v14;
            v21 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ didn't ask for user input for key %{public}@", buf, 0x16u);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v8);
  }

  v23.receiver = selfCopy;
  v23.super_class = MCNewEASAccountPayloadHandler;
  [(MCNewPayloadHandler *)&v23 setUserInputResponses:obj];
}

- (id)unhashedAccountIdentifier
{
  payload = [(MCNewPayloadHandler *)self payload];
  emailAddress = [payload emailAddress];
  if (emailAddress)
  {
    v4 = [NSString stringWithFormat:@"eas|%@", emailAddress];
  }

  else
  {
    v4 = 0;
  }

  hostname = [payload hostname];
  v6 = hostname;
  if (v4 && hostname)
  {
    v7 = [v4 stringByAppendingFormat:@"|%@", hostname];

    v4 = v7;
  }

  username = [payload username];
  v9 = username;
  if (v4 && username)
  {
    v10 = [v4 stringByAppendingFormat:@"|%@", username];

    v4 = v10;
  }

  return v4;
}

- (id)_accountFromPayloadWithUserInputResponses:(id)responses identityPersistentID:(id)d SMIMESigningIdentityPersistentID:(id)iD SMIMEEncryptionIdentityPersistentID:(id)persistentID
{
  responsesCopy = responses;
  dCopy = d;
  iDCopy = iD;
  persistentIDCopy = persistentID;
  v149 = persistentIDCopy;
  if (!self->_account)
  {
    payload = [(MCNewPayloadHandler *)self payload];
    v14 = ACAccountTypeIdentifierExchange;
    hostname = [payload hostname];
    v16 = [hostname isEqualToString:@"m.hotmail.com"];

    if (v16)
    {
      v17 = ACAccountTypeIdentifierHotmail;

      v14 = v17;
    }

    v18 = sharedDAAccountStore();
    obj = v14;
    v19 = [v18 accountTypeWithAccountTypeIdentifier:v14];

    v20 = [[ACAccount alloc] initWithAccountType:v19];
    [v20 setManagingOwnerIdentifier:kMCAccountManagingOwnerIdentifier];
    friendlyName = [payload friendlyName];
    [v20 setManagingSourceName:friendlyName];

    v22 = +[MDMCloudConfiguration sharedConfiguration];
    userMode = [v22 userMode];

    if (userMode == 1)
    {
      mCACAccountIdentifier = [(MCACAccountPayloadHandler *)self MCACAccountIdentifier];
      if (mCACAccountIdentifier)
      {
        identifier = [v20 identifier];
        [v20 setAccountProperty:identifier forKey:@"MCAccountIdentifer"];

        identifier2 = [v20 identifier];
        [v20 setAccountProperty:identifier2 forKey:@"MCNativeAccountIdentifer"];

        [v20 setIdentifier:mCACAccountIdentifier];
      }

      v27 = sharedDAAccountStore();
      identifier3 = [v20 identifier];
      v29 = [v27 accountWithIdentifier:identifier3];

      if (v29)
      {
        objectID = [v29 objectID];
        [v20 performSelector:"_setObjectID:" withObject:objectID];
      }
    }

    v157 = v19;
    supportedDataclasses = [v19 supportedDataclasses];
    v32 = [supportedDataclasses mutableCopy];

    v33 = kAccountDataclassNotes;
    [v32 removeObject:kAccountDataclassNotes];
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v34 = v32;
    v35 = [v34 countByEnumeratingWithState:&v165 objects:v174 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v166;
      do
      {
        for (i = 0; i != v36; i = i + 1)
        {
          if (*v166 != v37)
          {
            objc_enumerationMutation(v34);
          }

          [v20 setProvisioned:1 forDataclass:*(*(&v165 + 1) + 8 * i)];
        }

        v36 = [v34 countByEnumeratingWithState:&v165 objects:v174 count:16];
      }

      while (v36);
    }

    v39 = [DAAccount daAccountSubclassWithBackingAccountInfo:v20];
    account = self->_account;
    self->_account = v39;

    v41 = self->_account;
    if (!v41)
    {
      goto LABEL_74;
    }

    -[ASAccount setEnabled:forDADataclass:](v41, "setEnabled:forDADataclass:", [payload enableMail], 1);
    -[ASAccount setEnabled:forDADataclass:](self->_account, "setEnabled:forDADataclass:", [payload enableContacts], 2);
    -[ASAccount setEnabled:forDADataclass:](self->_account, "setEnabled:forDADataclass:", [payload enableCalendars], 4);
    -[ASAccount setEnabled:forDADataclass:](self->_account, "setEnabled:forDADataclass:", [payload enableContacts], 8);
    -[ASAccount setEnabled:forDADataclass:](self->_account, "setEnabled:forDADataclass:", [payload enableReminders], 16);
    provisionedDataclasses = [v20 provisionedDataclasses];
    v43 = [provisionedDataclasses containsObject:v33];

    if (v43)
    {
      -[ASAccount setEnabled:forDADataclass:](self->_account, "setEnabled:forDADataclass:", [payload enableNotes], 32);
    }

    backingAccountInfo = [(ASAccount *)self->_account backingAccountInfo];
    payload2 = [(MCNewPayloadHandler *)self payload];
    uUID = [payload2 UUID];
    [backingAccountInfo setMcPayloadUUID:uUID];

    backingAccountInfo2 = [(ASAccount *)self->_account backingAccountInfo];
    payload3 = [(MCNewPayloadHandler *)self payload];
    profile = [payload3 profile];
    uUID2 = [profile UUID];
    [backingAccountInfo2 setMcProfileUUID:uUID2];

    backingAccountInfo3 = [(ASAccount *)self->_account backingAccountInfo];
    communicationServiceRules = [payload communicationServiceRules];
    [backingAccountInfo3 setCommunicationServiceRules:communicationServiceRules];

    backingAccountInfo4 = [(ASAccount *)self->_account backingAccountInfo];
    identifier4 = [payload identifier];
    [backingAccountInfo4 setMcAccountIdentifier:identifier4];

    if (([payload enableNotes] & 1) == 0)
    {
      backingAccountInfo5 = [(ASAccount *)self->_account backingAccountInfo];
      [backingAccountInfo5 setMcEASAccountEnableNotes:&__kCFBooleanFalse];
    }

    if (([payload enableMailUserOverridable] & 1) == 0)
    {
      backingAccountInfo6 = [(ASAccount *)self->_account backingAccountInfo];
      [backingAccountInfo6 setMcEnableMailUserOverridable:&__kCFBooleanFalse];
    }

    if (([payload enableContactsUserOverridable] & 1) == 0)
    {
      backingAccountInfo7 = [(ASAccount *)self->_account backingAccountInfo];
      [backingAccountInfo7 setMcEnableContactsUserOverridable:&__kCFBooleanFalse];
    }

    if (([payload enableCalendarsUserOverridable] & 1) == 0)
    {
      backingAccountInfo8 = [(ASAccount *)self->_account backingAccountInfo];
      [backingAccountInfo8 setMcEnableCalendarsUserOverridable:&__kCFBooleanFalse];
    }

    if (([payload enableRemindersUserOverridable] & 1) == 0)
    {
      backingAccountInfo9 = [(ASAccount *)self->_account backingAccountInfo];
      [backingAccountInfo9 setMcEnableRemindersUserOverridable:&__kCFBooleanFalse];
    }

    v147 = dCopy;
    if (([payload enableNotesUserOverridable] & 1) == 0)
    {
      backingAccountInfo10 = [(ASAccount *)self->_account backingAccountInfo];
      [backingAccountInfo10 setMcEnableNotesUserOverridable:&__kCFBooleanFalse];
    }

    payload4 = [(MCNewPayloadHandler *)self payload];
    profile2 = [payload4 profile];
    identifier5 = [profile2 identifier];

    if (identifier5)
    {
      backingAccountInfo11 = [(ASAccount *)self->_account backingAccountInfo];
      [backingAccountInfo11 setMcConfigurationProfileIdentifier:identifier5];
    }

    else
    {
      v65 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Failed to retrieve profile identifier. Not setting profile identifier account property on Exchange account.", buf, 2u);
      }
    }

    v155 = identifier5;
    v66 = self->_account;
    username = [payload username];
    [(ASAccount *)v66 setUsername:username];

    v68 = self->_account;
    hostname2 = [payload hostname];
    [(ASAccount *)v68 setHost:hostname2];

    v70 = self->_account;
    useSSL = [payload useSSL];
    -[ASAccount setUseSSL:](v70, "setUseSSL:", [useSSL BOOLValue]);

    mailNumberOfPastDaysToSync = [payload mailNumberOfPastDaysToSync];

    if (mailNumberOfPastDaysToSync)
    {
      v73 = self->_account;
      mailNumberOfPastDaysToSync2 = [payload mailNumberOfPastDaysToSync];
      -[ASAccount setMailNumberOfPastDaysToSync:](v73, "setMailNumberOfPastDaysToSync:", [mailNumberOfPastDaysToSync2 intValue]);
    }

    v75 = self->_account;
    accountDescription = [payload accountDescription];
    [(ASAccount *)v75 setAccountDescription:accountDescription];

    v77 = self->_account;
    emailAddress = [payload emailAddress];
    [(ASAccount *)v77 setEmailAddress:emailAddress];

    v79 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [payload mustNotUseSynchronizableCredential]);
    backingAccountInfo12 = [(ASAccount *)self->_account backingAccountInfo];
    v153 = v79;
    [backingAccountInfo12 setAccountProperty:v79 forKey:ACAccountPropertyShouldNeverUseSyncableCredential];

    useOAuth = [payload useOAuth];
    bOOLValue = [useOAuth BOOLValue];

    v83 = self->_account;
    if (bOOLValue)
    {
      [(ASAccount *)self->_account setAccountBoolProperty:1 forKey:kDAExchangeOAuthSupportedKey];
      v84 = [[ACAccountCredential alloc] initWithOAuth2Token:&stru_10011E740 refreshToken:0 expiryDate:0];
      selfCopy2 = self;
      backingAccountInfo13 = [(ASAccount *)self->_account backingAccountInfo];
      [backingAccountInfo13 setCredential:v84];

      oAuthSignInURL = [payload OAuthSignInURL];

      if (oAuthSignInURL)
      {
        v88 = self->_account;
        oAuthSignInURL2 = [payload OAuthSignInURL];
        [(ASAccount *)v88 setAccountProperty:oAuthSignInURL2 forKey:kDAExchangeOAuthURI];

        v90 = [(MCNewEASAccountPayloadHandler *)self _endPointFQDNForPayload:payload];
        if (v90)
        {
          [(ASAccount *)self->_account setAccountProperty:v90 forKey:kDAEASEndPointFQDN];
        }
      }

      oAuthTokenRequestURL = [payload OAuthTokenRequestURL];

      v92 = v155;
      if (!oAuthTokenRequestURL)
      {
LABEL_47:
        if ([payload preventMove])
        {
          v95 = selfCopy2->_account;
          preventMove = [payload preventMove];
          [(ASAccount *)v95 setAccountBoolProperty:preventMove forKey:MFMailAccountRestrictMessageTransfersToOtherAccounts];
        }

        if ([payload preventAppSheet])
        {
          v97 = selfCopy2->_account;
          preventAppSheet = [payload preventAppSheet];
          [(ASAccount *)v97 setAccountBoolProperty:preventAppSheet forKey:MFMailAccountRestrictSendingFromExternalProcesses];
        }

        if (![payload SMIMEEnabled])
        {
          goto LABEL_67;
        }

        if (iDCopy)
        {
          [(ASAccount *)selfCopy2->_account setSigningIdentityPersistentReference:?];
        }

        sMIMESigningEnabled = [payload SMIMESigningEnabled];
        v100 = sMIMESigningEnabled;
        if (sMIMESigningEnabled)
        {
          v101 = selfCopy2->_account;
          bOOLValue2 = [sMIMESigningEnabled BOOLValue];
          v103 = MFMailAccountSigningEnabled;
          v104 = v101;
        }

        else
        {
          if (!iDCopy)
          {
            goto LABEL_59;
          }

          v104 = selfCopy2->_account;
          v103 = MFMailAccountSigningEnabled;
          bOOLValue2 = 1;
        }

        [(ASAccount *)v104 setAccountBoolProperty:bOOLValue2 forKey:v103];
LABEL_59:
        if (v149)
        {
          [(ASAccount *)selfCopy2->_account setEncryptionIdentityPersistentReference:?];
        }

        sMIMEEncryptionEnabled = [payload SMIMEEncryptionEnabled];
        v106 = sMIMEEncryptionEnabled;
        if (sMIMEEncryptionEnabled)
        {
          v107 = selfCopy2;
          v108 = selfCopy2->_account;
          bOOLValue3 = [sMIMEEncryptionEnabled BOOLValue];
          v110 = MFMailAccountEncryptionEnabled;
          v111 = v108;
        }

        else
        {
          v107 = selfCopy2;
          if (!v149)
          {
LABEL_66:
            v112 = v107->_account;
            sMIMEEncryptByDefaultUserOverrideable = [payload SMIMEEncryptByDefaultUserOverrideable];
            [(ASAccount *)v112 setAccountBoolProperty:sMIMEEncryptByDefaultUserOverrideable forKey:MFMailAccountEncryptByDefaultUserOverrideable];
            v114 = v107->_account;
            sMIMEPerMessageSwitchEnabled = [payload SMIMEPerMessageSwitchEnabled];
            [(ASAccount *)v114 setAccountBoolProperty:sMIMEPerMessageSwitchEnabled forKey:MFMailAccountPerMessageEncryptionEnabled];
            v116 = v107->_account;
            sMIMESigningUserOverrideable = [payload SMIMESigningUserOverrideable];
            [(ASAccount *)v116 setAccountBoolProperty:sMIMESigningUserOverrideable forKey:MFMailAccountSigningUserOverrideable];
            v118 = v107->_account;
            sMIMESigningIdentityUserOverrideable = [payload SMIMESigningIdentityUserOverrideable];
            [(ASAccount *)v118 setAccountBoolProperty:sMIMESigningIdentityUserOverrideable forKey:MFMailAccountSigningIdentityUserOverrideable];
            selfCopy2 = v107;
            v120 = v107->_account;
            sMIMEEncryptionIdentityUserOverrideable = [payload SMIMEEncryptionIdentityUserOverrideable];
            [(ASAccount *)v120 setAccountBoolProperty:sMIMEEncryptionIdentityUserOverrideable forKey:MFMailAccountEncryptionIdentityUserOverrideable];

LABEL_67:
            if ([payload syncDefaultFoldersOnly])
            {
              v122 = selfCopy2->_account;
              v123 = MCkASSyncDefaultFoldersOnly();
              [(ASAccount *)v122 setAccountBoolProperty:1 forKey:v123];
            }

            if ([payload isRecentsSyncingDisabled])
            {
              [(ASAccount *)selfCopy2->_account setAccountBoolProperty:1 forKey:MFMailAccountRestrictRecentsSyncing];
            }

            if ([payload isMailDropEnabled])
            {
              [(ASAccount *)selfCopy2->_account setAccountBoolProperty:1 forKey:MFMailAccountSupportsMailDrop];
            }

            dCopy = v147;
            self = selfCopy2;
LABEL_74:

            persistentIDCopy = v149;
            goto LABEL_75;
          }

          v111 = selfCopy2->_account;
          v110 = MFMailAccountEncryptionEnabled;
          bOOLValue3 = 1;
        }

        [(ASAccount *)v111 setAccountBoolProperty:bOOLValue3 forKey:v110];
        goto LABEL_66;
      }

      v93 = self->_account;
      oAuthTokenRequestURL2 = [payload OAuthTokenRequestURL];
      [(ASAccount *)v93 setAccountProperty:oAuthTokenRequestURL2 forKey:kDAExchangeTokenRequestURI];
    }

    else
    {
      selfCopy2 = self;
      oAuthTokenRequestURL2 = [payload password];
      [(ASAccount *)v83 setPassword:oAuthTokenRequestURL2];
      v92 = v155;
    }

    goto LABEL_47;
  }

LABEL_75:
  if (dCopy)
  {
    [(ASAccount *)self->_account setIdentityCertificatePersistentID:dCopy managedByProfile:1];
  }

  if (responsesCopy)
  {
    v148 = dCopy;
    selfCopy3 = self;
    payload5 = [(MCNewPayloadHandler *)self payload];
    emailAddress2 = [payload5 emailAddress];
    embeddedCertificatePassword = [payload5 embeddedCertificatePassword];
    username2 = [payload5 username];
    v145 = payload5;
    password = [payload5 password];
    v161 = 0u;
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v146 = responsesCopy;
    obja = responsesCopy;
    v126 = [obja countByEnumeratingWithState:&v161 objects:v173 count:16];
    if (v126)
    {
      v127 = v126;
      v128 = *v162;
      v129 = kMCIDUUIDKey;
      v130 = kMCIDResponseKey;
      do
      {
        for (j = 0; j != v127; j = j + 1)
        {
          if (*v162 != v128)
          {
            objc_enumerationMutation(obja);
          }

          v132 = *(*(&v161 + 1) + 8 * j);
          v133 = [v132 objectForKey:v129];
          v134 = [v132 objectForKey:v130];
          if ([v133 isEqualToString:@"kEASEmailAddressKey"])
          {
            v135 = v134;

            emailAddress2 = v135;
          }

          else if ([v133 isEqualToString:@"kEASCertPasswordKey"])
          {
            v136 = v134;

            embeddedCertificatePassword = v136;
          }

          else if ([v133 isEqualToString:@"kEASUsernameKey"])
          {
            v137 = v134;

            username2 = v137;
          }

          else if ([v133 isEqualToString:@"kEASPasswordKey"])
          {
            v138 = v134;

            password = v138;
          }

          else
          {
            v139 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
            {
              v140 = v139;
              v141 = objc_opt_class();
              *buf = 138543618;
              v170 = v141;
              v171 = 2114;
              v172 = v133;
              v152 = v141;
              _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "%{public}@ didn't ask for user input for key %{public}@", buf, 0x16u);
            }
          }
        }

        v127 = [obja countByEnumeratingWithState:&v161 objects:v173 count:16];
      }

      while (v127);
    }

    self = selfCopy3;
    [(ASAccount *)selfCopy3->_account setEmailAddress:emailAddress2];
    [(ASAccount *)selfCopy3->_account setUsername:username2];
    [(ASAccount *)selfCopy3->_account setPassword:password];

    responsesCopy = v146;
    dCopy = v148;
    persistentIDCopy = v149;
  }

  v142 = self->_account;
  v143 = v142;

  return v142;
}

- (id)_endPointFQDNForPayload:(id)payload
{
  payloadCopy = payload;
  v4 = objc_alloc_init(NSURLComponents);
  useSSL = [payloadCopy useSSL];
  if ([useSSL BOOLValue])
  {
    v6 = @"https";
  }

  else
  {
    v6 = @"http";
  }

  [v4 setScheme:v6];

  hostname = [payloadCopy hostname];

  [v4 setHost:hostname];
  string = [v4 string];

  return string;
}

- (id)_errorFromValidationError:(id)error
{
  errorCopy = error;
  code = [errorCopy code];
  if (code == 102)
  {
    v11 = MCDAErrorDomain;
    v6 = MCErrorArray();
    v7 = MCLocalizedErrorString();
    v8 = MCUSEnglishErrorString();
    [NSError MCErrorWithDomain:v11 code:18002 descriptionArray:v6 suggestion:v7 USEnglishSuggestion:v8 underlyingError:errorCopy errorType:MCErrorTypeRetryable];
  }

  else if (code == 101)
  {
    v10 = MCDAErrorDomain;
    v6 = MCErrorArray();
    v7 = MCLocalizedErrorString();
    v8 = MCUSEnglishErrorString();
    [NSError MCErrorWithDomain:v10 code:18001 descriptionArray:v6 suggestion:v7 USEnglishSuggestion:v8 underlyingError:errorCopy errorType:MCErrorTypeSkippable];
  }

  else
  {
    if (code == 100)
    {
      v5 = MCDAErrorDomain;
      v6 = MCErrorArray();
      v7 = MCLocalizedErrorString();
      v8 = MCUSEnglishErrorString();
      v9 = &MCErrorTypeSkippable;
    }

    else
    {
      localizedDescription = [errorCopy localizedDescription];
      v13 = [localizedDescription length];

      v5 = MCDAErrorDomain;
      v6 = MCErrorArray();
      if (v13)
      {
        v14 = [NSError MCErrorWithDomain:v5 code:18000 descriptionArray:v6 underlyingError:errorCopy errorType:MCErrorTypeFatal, 0];
        goto LABEL_12;
      }

      v7 = MCLocalizedErrorString();
      v8 = MCUSEnglishErrorString();
      v9 = &MCErrorTypeFatal;
    }

    [NSError MCErrorWithDomain:v5 code:18000 descriptionArray:v6 suggestion:v7 USEnglishSuggestion:v8 underlyingError:errorCopy errorType:*v9];
  }
  v14 = ;

LABEL_12:

  return v14;
}

- (void)account:(id)account isValid:(BOOL)valid validationError:(id)error
{
  validCopy = valid;
  accountCopy = account;
  errorCopy = error;
  v10 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    mCVerboseDescription = [errorCopy MCVerboseDescription];
    v15 = 138543874;
    v16 = accountCopy;
    v17 = 1024;
    v18 = validCopy;
    v19 = 2114;
    v20 = mCVerboseDescription;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "account %{public}@ is valid %d with error %{public}@", &v15, 0x1Cu);
  }

  if (!errorCopy && !validCopy)
  {
    errorCopy = [NSError errorWithDomain:DAAccountValidationDomain code:102 userInfo:0];
  }

  accountValidationCompletionHandler = [(MCNewEASAccountPayloadHandler *)self accountValidationCompletionHandler];

  if (accountValidationCompletionHandler)
  {
    accountValidationCompletionHandler2 = [(MCNewEASAccountPayloadHandler *)self accountValidationCompletionHandler];
    (accountValidationCompletionHandler2)[2](accountValidationCompletionHandler2, errorCopy);

    [(MCNewEASAccountPayloadHandler *)self setAccountValidationCompletionHandler:0];
  }
}

- (void)_preflightWithAccount:(id)account completionHandler:(id)handler
{
  accountCopy = account;
  [(MCNewEASAccountPayloadHandler *)self setAccountValidationCompletionHandler:handler];
  v8 = sharedDAAccountStore();
  v7 = dataaccess_get_global_queue();
  [accountCopy checkValidityOnAccountStore:v8 withConsumer:self inQueue:v7];
}

- (id)_preflightTimePersistentIDForIdentityCertificateUserInputResponses:(id)responses outError:(id *)error
{
  responsesCopy = responses;
  payload = [(MCNewPayloadHandler *)self payload];
  certificateUUID = [payload certificateUUID];

  if (certificateUUID)
  {
    profileHandler = [(MCNewPayloadHandler *)self profileHandler];
    certificateUUID2 = [payload certificateUUID];
    embeddedCertificate2 = [profileHandler payloadHandlerWithUUID:certificateUUID2];

    if (embeddedCertificate2)
    {
      v43 = 0;
      v12 = [embeddedCertificate2 copyIdentityImmediatelyWithInteractionClient:0 outError:&v43];
      v13 = v43;
      v14 = 0;
      if (!v13 && v12)
      {
        errorCopy = error;
        v41 = responsesCopy;
        accessibility = [embeddedCertificate2 accessibility];
        v16 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v45 = accessibility;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Preflighting EAS identity, storing with accessibility %@", buf, 0xCu);
        }

        uUID = [payload UUID];
        v18 = kMCAppleIdentitiesKeychainGroup;
        profileHandler2 = [(MCNewPayloadHandler *)self profileHandler];
        profile = [profileHandler2 profile];
        v14 = +[MCKeychain saveItem:withLabel:group:useSystemKeychain:accessibility:](MCKeychain, "saveItem:withLabel:group:useSystemKeychain:accessibility:", v12, uUID, v18, [profile isInstalledForSystem], accessibility);

        uUID2 = [payload UUID];
        [(MCNewPayloadHandler *)self _touchDependencyBetweenPersistentID:v14 andUUID:uUID2];

        CFRelease(v12);
        v13 = 0;
        error = errorCopy;
        responsesCopy = v41;
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }
  }

  else
  {
    embeddedCertificate = [payload embeddedCertificate];

    if (!embeddedCertificate)
    {

      v14 = 0;
LABEL_18:
      v14 = v14;
      v13 = 0;
      v37 = v14;
      goto LABEL_20;
    }

    embeddedCertificate2 = [payload embeddedCertificate];
    embeddedCertificatePassword = [payload embeddedCertificatePassword];
    v24 = [MCNewPayloadHandler prioritizeUserInput:responsesCopy key:@"kEASCertPasswordKey" overField:embeddedCertificatePassword];

    v25 = MCKeychainCopyIdentityFromPKCS12();
    if (v25)
    {
      v26 = v25;
      uUID3 = [payload UUID];
      v28 = kMCAppleIdentitiesKeychainGroup;
      [(MCNewPayloadHandler *)self profileHandler];
      v40 = embeddedCertificate2;
      v29 = v42 = responsesCopy;
      [v29 profile];
      v30 = v24;
      v32 = v31 = error;
      v14 = +[MCKeychain saveItem:withLabel:group:useSystemKeychain:](MCKeychain, "saveItem:withLabel:group:useSystemKeychain:", v26, uUID3, v28, [v32 isInstalledForSystem]);

      error = v31;
      v24 = v30;

      embeddedCertificate2 = v40;
      responsesCopy = v42;

      uUID4 = [payload UUID];
      [(MCNewPayloadHandler *)self _touchDependencyBetweenPersistentID:v14 andUUID:uUID4];

      CFRelease(v26);
      v13 = 0;
    }

    else
    {
      v34 = MCEASErrorDomain;
      v35 = MCErrorArray();
      v13 = [NSError MCErrorWithDomain:v34 code:21006 descriptionArray:v35 errorType:MCErrorTypeFatal, 0];

      v14 = 0;
    }
  }

  if (!v13)
  {
    goto LABEL_18;
  }

  if (error)
  {
    v36 = v13;
    v37 = 0;
    *error = v13;
  }

  else
  {
    v37 = 0;
  }

LABEL_20:

  return v37;
}

- (id)_installTimePersistentIDForIdentityCertificateOutError:(id *)error
{
  payload = [(MCNewPayloadHandler *)self payload];
  certificateUUID = [payload certificateUUID];

  if (certificateUUID)
  {
    profileHandler = [(MCNewPayloadHandler *)self profileHandler];
    certificateUUID2 = [payload certificateUUID];
    v9 = [profileHandler persistentIDForCertificateUUID:certificateUUID2];

LABEL_3:
    v10 = 0;
    goto LABEL_4;
  }

  embeddedCertificate = [payload embeddedCertificate];

  if (!embeddedCertificate)
  {
    v9 = 0;
    goto LABEL_3;
  }

  embeddedCertificate2 = [payload embeddedCertificate];
  embeddedCertificatePassword = [payload embeddedCertificatePassword];
  v15 = MCKeychainCopyIdentityFromPKCS12();
  if (v15)
  {
    v16 = v15;
    v26 = embeddedCertificatePassword;
    v27 = embeddedCertificate2;
    v17 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v29 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Storing embedded identity for EAS, storing with accessibility %@", buf, 0xCu);
    }

    uUID = [payload UUID];
    v19 = kMCAppleIdentitiesKeychainGroup;
    profileHandler2 = [(MCNewPayloadHandler *)self profileHandler];
    profile = [profileHandler2 profile];
    v9 = +[MCKeychain saveItem:withLabel:group:useSystemKeychain:accessibility:](MCKeychain, "saveItem:withLabel:group:useSystemKeychain:accessibility:", v16, uUID, v19, [profile isInstalledForSystem], kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly);

    uUID2 = [payload UUID];
    [(MCNewPayloadHandler *)self _touchDependencyBetweenPersistentID:v9 andUUID:uUID2];

    CFRelease(v16);
    v10 = 0;
    embeddedCertificatePassword = v26;
    embeddedCertificate2 = v27;
  }

  else
  {
    v23 = MCEASErrorDomain;
    v24 = MCErrorArray();
    v10 = [NSError MCErrorWithDomain:v23 code:21006 descriptionArray:v24 errorType:MCErrorTypeFatal, 0];

    v9 = 0;
  }

  if (error && v10)
  {
    v25 = v10;
    *error = v10;
  }

LABEL_4:

  return v9;
}

- (BOOL)_isConfiguredWithSCEP
{
  payload = [(MCNewPayloadHandler *)self payload];
  certificateUUID = [payload certificateUUID];

  if (!certificateUUID)
  {
    goto LABEL_4;
  }

  profile = [payload profile];
  certificateUUID2 = [payload certificateUUID];
  v6 = [profile payloadWithUUID:certificateUUID2];

  objc_opt_class();
  LOBYTE(profile) = objc_opt_isKindOfClass();

  if (profile)
  {
    v7 = 1;
  }

  else
  {
LABEL_4:
    v7 = 0;
  }

  return v7;
}

- (BOOL)preflightUserInputResponses:(id)responses outError:(id *)error
{
  responsesCopy = responses;
  payload = [(MCNewPayloadHandler *)self payload];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100072E1C;
  v35 = sub_100072E2C;
  v36 = 0;
  if ([(MCNewEASAccountPayloadHandler *)self _isConfiguredWithSCEP])
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_17;
  }

  v11 = (v32 + 5);
  obj = v32[5];
  v8 = [(MCNewEASAccountPayloadHandler *)self _preflightTimePersistentIDForIdentityCertificateUserInputResponses:responsesCopy outError:&obj];
  objc_storeStrong(v11, obj);
  if (v32[5])
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_15;
  }

  if (v8)
  {
    uUID = [payload UUID];
    [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:v8 andUUID:uUID];
  }

  if (![payload SMIMEEnabled])
  {
    v10 = 0;
    v9 = 0;
LABEL_11:
    v15 = [(MCNewEASAccountPayloadHandler *)self _accountFromPayloadWithUserInputResponses:responsesCopy identityPersistentID:v8 SMIMESigningIdentityPersistentID:v9 SMIMEEncryptionIdentityPersistentID:v10];
    if (v15)
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100072E34;
      v25[3] = &unk_10011BFA0;
      v27 = &v31;
      v16 = dispatch_semaphore_create(0);
      v26 = v16;
      [(MCNewEASAccountPayloadHandler *)self _preflightWithAccount:v15 completionHandler:v25];
      v17 = dispatch_time(0, 30000000000);
      dispatch_semaphore_wait(v16, v17);
      v18 = v26;
    }

    else
    {
      v16 = MCErrorArray();
      v19 = [NSError MCErrorWithDomain:MCEASErrorDomain code:21004 descriptionArray:v16 errorType:MCErrorTypeFatal, 0];
      v18 = v32[5];
      v32[5] = v19;
    }

    goto LABEL_15;
  }

  sMIMESigningIdentityUUID = [payload SMIMESigningIdentityUUID];
  v14 = (v32 + 5);
  v29 = v32[5];
  v9 = [(MCNewPayloadHandler *)self _temporaryPersistentIDForIdentityUUID:sMIMESigningIdentityUUID outError:&v29];
  objc_storeStrong(v14, v29);

  if (v32[5])
  {
    v10 = 0;
    goto LABEL_15;
  }

  sMIMEEncryptionIdentityUUID = [payload SMIMEEncryptionIdentityUUID];
  v24 = (v32 + 5);
  v28 = v32[5];
  v10 = [(MCNewPayloadHandler *)self _temporaryPersistentIDForIdentityUUID:sMIMEEncryptionIdentityUUID outError:&v28];
  objc_storeStrong(v24, v28);

  if (!v32[5])
  {
    goto LABEL_11;
  }

LABEL_15:
  if (v8)
  {
    uUID2 = [payload UUID];
    [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v8 andUUID:uUID2];
  }

LABEL_17:
  if (error && v32[5])
  {
    v21 = MCErrorArray();
    *error = [NSError MCErrorWithDomain:MCEASErrorDomain code:21007 descriptionArray:v21 underlyingError:v32[5] errorType:MCErrorTypeSkippable, 0];
  }

  _Block_object_dispose(&v31, 8);
  return 1;
}

- (id)_errorFromPolicyPreflightError:(id)error
{
  errorCopy = error;
  v4 = MCEASOverSimplifiedStatusForError();
  v5 = _MCLogObjects[0];
  v6 = os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR);
  if (v4 == 1)
  {
    if (v6)
    {
      v13 = 138543362;
      v14 = errorCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Got a network error during policy preflight: %{public}@", &v13, 0xCu);
    }

    v7 = &MCErrorTypeSkippable;
  }

  else
  {
    if (v6)
    {
      v13 = 138543362;
      v14 = errorCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Got an unknown error back from my policy preflight: %{public}@", &v13, 0xCu);
    }

    v7 = &MCErrorTypeFatal;
  }

  v8 = MCEASErrorDomain;
  v9 = MCLocalizedErrorString();
  v10 = [NSArray arrayWithObject:v9];
  v11 = [NSError MCErrorWithDomain:v8 code:21000 descriptionArray:v10 underlyingError:errorCopy errorType:*v7];

  return v11;
}

- (void)_preflightWithPreflighter:(id)preflighter completionHandler:(id)handler
{
  preflighterCopy = preflighter;
  handlerCopy = handler;
  account = self->_account;
  v9 = +[DASharedAccountProperties DAAccountDoNotSaveReason];
  [(ASAccount *)account setAccountProperty:@"Preflighting for payload handler" forKey:v9];

  [preflighterCopy setDelegate:self];
  [preflighterCopy startPreflight];
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100073178;
  v11[3] = &unk_10011CA98;
  objc_copyWeak(&v13, &location);
  v10 = handlerCopy;
  v12 = v10;
  [(MCNewEASAccountPayloadHandler *)self setPreflightCompletionHandler:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (id)_getClientRestrictionsFromServerCertificatePersistentID:(id)d SMIMESigningIdentityPersistentID:(id)iD SMIMEEncryptionIdentityPersistentID:(id)persistentID outError:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  persistentIDCopy = persistentID;
  v13 = objc_alloc(MCASPolicyPreflighterClass());
  v14 = [(MCNewEASAccountPayloadHandler *)self _accountFromPayloadWithUserInputResponses:0 identityPersistentID:dCopy SMIMESigningIdentityPersistentID:iDCopy SMIMEEncryptionIdentityPersistentID:persistentIDCopy];
  v15 = [v13 initWithAccount:v14 policyKey:0];

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_100072E1C;
  v37 = sub_100072E2C;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100072E1C;
  v31 = sub_100072E2C;
  v32 = 0;
  v16 = dispatch_semaphore_create(0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000734AC;
  block[3] = &unk_10011CAC0;
  block[4] = self;
  v17 = v15;
  v23 = v17;
  v25 = &v27;
  v26 = &v33;
  v18 = v16;
  v24 = v18;
  dispatch_async(&_dispatch_main_q, block);
  v19 = dispatch_time(0, 60000000000);
  dispatch_semaphore_wait(v18, v19);
  [v17 invalidate];
  if (error)
  {
    *error = v34[5];
  }

  v20 = v28[5];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v20;
}

- (BOOL)stageForInstallationWithInstaller:(id)installer interactionClient:(id)client outError:(id *)error
{
  v6 = [(MCNewPayloadHandler *)self payload:installer];
  if ([(MCNewEASAccountPayloadHandler *)self _isConfiguredWithSCEP])
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
LABEL_24:
    v28 = 1;
    goto LABEL_25;
  }

  v47 = 0;
  v9 = [(MCNewEASAccountPayloadHandler *)self _preflightTimePersistentIDForIdentityCertificateUserInputResponses:0 outError:&v47];
  v10 = v47;
  if (v10)
  {
    v11 = v10;
    v7 = 0;
    v8 = 0;
    goto LABEL_18;
  }

  if (v9)
  {
    payload = [(MCNewPayloadHandler *)self payload];
    uUID = [payload UUID];
    [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:v9 andUUID:uUID];
  }

  if (![v6 SMIMEEnabled])
  {
    v7 = 0;
    v8 = 0;
LABEL_11:
    v44 = 0;
    v15 = [(MCNewEASAccountPayloadHandler *)self _getClientRestrictionsFromServerCertificatePersistentID:v9 SMIMESigningIdentityPersistentID:v8 SMIMEEncryptionIdentityPersistentID:v7 outError:&v44];
    v11 = v44;
    if (!v11)
    {
      if (v15)
      {
        v42 = [(MCNewEASAccountPayloadHandler *)self _accountFromPayloadWithUserInputResponses:0 identityPersistentID:v9 SMIMESigningIdentityPersistentID:v8 SMIMEEncryptionIdentityPersistentID:v7];
        profile = [v6 profile];
        v40 = [profile installType] != 2;

        profileHandler = [(MCNewPayloadHandler *)self profileHandler];
        profile2 = [profileHandler profile];
        identifier = [profile2 identifier];
        profileHandler2 = [(MCNewPayloadHandler *)self profileHandler];
        profile3 = [profileHandler2 profile];
        uUID2 = [profile3 UUID];
        v41 = [NSString stringWithFormat:@"%@-%@", identifier, uUID2];

        v32 = +[MCRestrictionManagerWriter sharedManager];
        v35 = kEASAccountClientType;
        persistentUUID = [v42 persistentUUID];
        payload2 = [(MCNewPayloadHandler *)self payload];
        friendlyName = [payload2 friendlyName];
        v31 = MCLocalizedFormat();
        payload3 = [(MCNewPayloadHandler *)self payload];
        friendlyName2 = [payload3 friendlyName];
        v22 = MCLocalizedFormat();
        v43 = 0;
        LOBYTE(v30) = 0;
        [v32 setClientRestrictions:v15 overrideRestrictions:0 appsAndOptions:0 system:v40 clientType:v35 clientUUID:persistentUUID sender:v41 localizedClientDescription:v31 localizedWarning:v22 shouldRecomputeNag:v30 outRestrictionsChanged:0 outEffectiveSettingsChanged:0 outRecomputedNag:0 outError:&v43];
        v11 = v43;
      }

      else
      {
        v11 = 0;
      }
    }

    goto LABEL_18;
  }

  sMIMESigningIdentityUUID = [v6 SMIMESigningIdentityUUID];
  v46 = 0;
  v8 = [(MCNewPayloadHandler *)self _temporaryPersistentIDForIdentityUUID:sMIMESigningIdentityUUID outError:&v46];
  v11 = v46;

  if (v11)
  {
    v7 = 0;
    goto LABEL_18;
  }

  sMIMEEncryptionIdentityUUID = [v6 SMIMEEncryptionIdentityUUID];
  v45 = 0;
  v7 = [(MCNewPayloadHandler *)self _temporaryPersistentIDForIdentityUUID:sMIMEEncryptionIdentityUUID outError:&v45];
  v11 = v45;

  if (!v11)
  {
    goto LABEL_11;
  }

LABEL_18:
  if (v9)
  {
    uUID3 = [v6 UUID];
    [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v9 andUUID:uUID3];
  }

  if (!v11)
  {
    goto LABEL_24;
  }

  v25 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v26 = v25;
    mCVerboseDescription = [v11 MCVerboseDescription];
    *buf = 138543362;
    v49 = mCVerboseDescription;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Error retrieving server policy for account. Error: %{public}@", buf, 0xCu);
  }

  v28 = 0;
LABEL_25:

  return v28;
}

- (void)unstageFromInstallationWithInstaller:(id)installer
{
  if (![(MCNewEASAccountPayloadHandler *)self _isConfiguredWithSCEP])
  {
    payload = [(MCNewPayloadHandler *)self payload];
    v5 = [(MCNewEASAccountPayloadHandler *)self _preflightTimePersistentIDForIdentityCertificateUserInputResponses:0 outError:0];
    v6 = 0;
    v7 = 0;
    if ([payload SMIMEEnabled])
    {
      sMIMESigningIdentityUUID = [payload SMIMESigningIdentityUUID];
      v7 = [(MCNewPayloadHandler *)self _temporaryPersistentIDForIdentityUUID:sMIMESigningIdentityUUID outError:0];

      sMIMEEncryptionIdentityUUID = [payload SMIMEEncryptionIdentityUUID];
      v6 = [(MCNewPayloadHandler *)self _temporaryPersistentIDForIdentityUUID:sMIMEEncryptionIdentityUUID outError:0];
    }

    if (v5)
    {
      uUID = [payload UUID];
      [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:v5 andUUID:uUID];
    }

    v11 = [(MCNewEASAccountPayloadHandler *)self _accountFromPayloadWithUserInputResponses:0 identityPersistentID:v5 SMIMESigningIdentityPersistentID:v7 SMIMEEncryptionIdentityPersistentID:v6];
    payload2 = [(MCNewPayloadHandler *)self payload];
    profile = [payload2 profile];
    installType = [profile installType];

    if (v11)
    {
      v30 = installType != 2;
      profileHandler = [(MCNewPayloadHandler *)self profileHandler];
      [profileHandler profile];
      v31 = v11;
      v17 = v16 = v7;
      identifier = [v17 identifier];
      [(MCNewPayloadHandler *)self profileHandler];
      v19 = v33 = payload;
      [v19 profile];
      v20 = v32 = v6;
      uUID2 = [v20 UUID];
      v22 = [NSString stringWithFormat:@"%@-%@", identifier, uUID2];

      v7 = v16;
      v11 = v31;

      v23 = +[MCRestrictionManagerWriter sharedManager];
      v24 = kEASAccountClientType;
      persistentUUID = [v31 persistentUUID];
      LOBYTE(v29) = 1;
      v26 = v24;
      payload = v33;
      [v23 setClientRestrictions:0 overrideRestrictions:0 appsAndOptions:0 system:v30 clientType:v26 clientUUID:persistentUUID sender:v22 localizedClientDescription:0 localizedWarning:0 shouldRecomputeNag:v29 outRestrictionsChanged:0 outEffectiveSettingsChanged:0 outRecomputedNag:0 outError:0];

      v6 = v32;
    }

    else
    {
      v27 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Could not find an account, so could not set client restrictions.", buf, 2u);
      }
    }

    if (v5)
    {
      uUID3 = [payload UUID];
      [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v5 andUUID:uUID3];
    }
  }
}

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  installerCopy = installer;
  optionsCopy = options;
  clientCopy = client;
  payload = [(MCNewPayloadHandler *)self payload];
  v93 = 0;
  v94 = &v93;
  v95 = 0x3032000000;
  v96 = sub_100072E1C;
  v97 = sub_100072E2C;
  v98 = 0;
  v11 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
  bOOLValue = [v11 BOOLValue];

  if (!bOOLValue)
  {
    v76 = 0;
    goto LABEL_5;
  }

  v13 = kMDMPersonaKey;
  v14 = [optionsCopy objectForKeyedSubscript:kMDMPersonaKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v76 = [optionsCopy objectForKeyedSubscript:v13];
  }

  else
  {
    v76 = 0;
  }

  v15 = kMCInstallProfileOptionManagingProfileIdentifier;
  v16 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionManagingProfileIdentifier];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    identifier = 0;
    goto LABEL_11;
  }

  v17 = [optionsCopy objectForKeyedSubscript:v15];

  if (!v17)
  {
LABEL_5:
    identifier = 0;
    goto LABEL_12;
  }

  v18 = +[ACAccountStore defaultStore];
  v19 = [v18 dmc_remoteManagementAccountForManagementProfileIdentifier:v17];

  identifier = [v19 identifier];

  v16 = v17;
LABEL_11:

LABEL_12:
  hostname = [payload hostname];
  if (hostname)
  {

LABEL_15:
    v23 = v94;
    v92 = v94[5];
    v24 = [(MCNewEASAccountPayloadHandler *)self _installTimePersistentIDForIdentityCertificateOutError:&v92];
    objc_storeStrong(v23 + 5, v92);
    if (v94[5])
    {
      v25 = 0;
      v26 = 0;
LABEL_50:
      if (v24)
      {
        uUID = [payload UUID];
        [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v24 andUUID:uUID];
      }

      if (v25)
      {
        uUID2 = [payload UUID];
        [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v25 andUUID:uUID2];
      }

      if (v26)
      {
        uUID3 = [payload UUID];
        [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v26 andUUID:uUID3];
      }

      goto LABEL_56;
    }

    if ([payload SMIMEEnabled])
    {
      profileHandler = [(MCNewPayloadHandler *)self profileHandler];
      sMIMESigningIdentityUUID = [payload SMIMESigningIdentityUUID];
      v25 = [profileHandler persistentIDForCertificateUUID:sMIMESigningIdentityUUID];

      profileHandler2 = [(MCNewPayloadHandler *)self profileHandler];
      sMIMEEncryptionIdentityUUID = [payload SMIMEEncryptionIdentityUUID];
      v26 = [profileHandler2 persistentIDForCertificateUUID:sMIMEEncryptionIdentityUUID];
    }

    else
    {
      v26 = 0;
      v25 = 0;
    }

    v34 = [(MCNewEASAccountPayloadHandler *)self _accountFromPayloadWithUserInputResponses:0 identityPersistentID:v24 SMIMESigningIdentityPersistentID:v25 SMIMEEncryptionIdentityPersistentID:v26];
    v35 = v34;
    if (v34)
    {
      if (bOOLValue)
      {
        [v34 setAccountBoolProperty:1 forKey:@"MCAccountIsManaged"];
        if (identifier)
        {
          [v35 setAccountProperty:identifier forKey:ACAccountPropertyRemoteManagingAccountIdentifier];
        }
      }

      if ([payload overridePreviousPassword])
      {
        backingAccountInfo = [v35 backingAccountInfo];
        [backingAccountInfo setAccountProperty:&__kCFBooleanFalse forKey:@"EASPayloadShouldPreserveOldPassword"];

        v37 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "EAS Payload asked to override old password", buf, 2u);
        }
      }

      else
      {
        backingAccountInfo2 = [v35 backingAccountInfo];
        [backingAccountInfo2 setAccountProperty:&__kCFBooleanTrue forKey:@"EASPayloadShouldPreserveOldPassword"];
      }

      v71 = +[MDMConfiguration sharedConfiguration];
      if (([v71 isUserEnrollment] & 1) != 0 || (objc_msgSend(payload, "profile"), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "isUserEnrollmentProfile"), v42, v43))
      {
        easEnrollmentID = [v71 easEnrollmentID];
        v45 = MCkESExchangeDeviceID();
        [v35 setObject:easEnrollmentID forKeyedSubscript:v45];

        v46 = MCkESExchangeAccountWipeOnly();
        [v35 setObject:&__kCFBooleanTrue forKeyedSubscript:v46];

        [v35 setAccountProperty:v76 forKey:ACAccountPropertyPersonaIdentifier];
        v47 = MCkESExchangeUserEnrollmentMode();
        [v35 setObject:&__kCFBooleanTrue forKeyedSubscript:v47];
      }

      backingAccountInfo3 = [v35 backingAccountInfo];
      [(MCACAccountPayloadHandler *)self markIfUpdatingOverInstalledAccount:backingAccountInfo3];

      *buf = 0;
      v87 = buf;
      v88 = 0x3032000000;
      v89 = sub_100072E1C;
      v90 = sub_100072E2C;
      v91 = dispatch_semaphore_create(0);
      v82 = 0;
      v83 = &v82;
      v84 = 0x2020000000;
      v85 = 1;
      v49 = [installerCopy setAsideAccountIdentifiersForPayloadClass:objc_opt_class()];
      if ([v49 count])
      {
        backingAccountInfo4 = [v35 backingAccountInfo];
        v51 = +[DASharedAccountProperties DAAccountIdentifiersToIgnoreForUniquenessCheck];
        [backingAccountInfo4 setAccountProperty:v49 forKey:v51];
      }

      v52 = sharedDAAccountStore();
      backingAccountInfo5 = [v35 backingAccountInfo];
      v81[0] = _NSConcreteStackBlock;
      v81[1] = 3221225472;
      v81[2] = sub_100074868;
      v81[3] = &unk_10011C8E0;
      v81[4] = &v82;
      v81[5] = buf;
      [v52 canSaveAccount:backingAccountInfo5 withCompletionHandler:v81];

      dispatch_semaphore_wait(*(v87 + 5), 0xFFFFFFFFFFFFFFFFLL);
      if (*(v83 + 24) == 1)
      {
        backingAccountInfo6 = [v35 backingAccountInfo];
        [backingAccountInfo6 setAuthenticated:1];

        v77[0] = _NSConcreteStackBlock;
        v77[1] = 3221225472;
        v77[2] = sub_100074884;
        v77[3] = &unk_10011B990;
        v79 = buf;
        v78 = v35;
        v80 = &v93;
        v55 = objc_retainBlock(v77);
        if ([v76 length])
        {
          v56 = [DMCPersonaHelper performBlockUnderPersona:v76 block:v55];
        }

        else
        {
          (v55[2])(v55);
        }

        v57 = v78;
      }

      else
      {
        v57 = MCErrorArray();
        v58 = [NSError MCErrorWithDomain:MCEASErrorDomain code:21005 descriptionArray:v57 errorType:MCErrorTypeFatal, 0];
        mCCopyAsPrimaryError = [v58 MCCopyAsPrimaryError];
        v60 = v94[5];
        v94[5] = mCCopyAsPrimaryError;
      }

      _Block_object_dispose(&v82, 8);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v38 = MCErrorArray();
      v39 = [NSError MCErrorWithDomain:MCEASErrorDomain code:21004 descriptionArray:v38 errorType:MCErrorTypeFatal, 0];
      v71 = v38;
      v40 = v94[5];
      v94[5] = v39;
    }

    backingAccountInfo7 = [v35 backingAccountInfo];
    identifier2 = [backingAccountInfo7 identifier];
    [payload setAcAccountIdentifier:identifier2];

    if (v24)
    {
      uUID4 = [payload UUID];
      [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:v24 andUUID:uUID4];
    }

    if (v25)
    {
      uUID5 = [payload UUID];
      [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:v25 andUUID:uUID5];
    }

    if (v26)
    {
      uUID6 = [payload UUID];
      [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:v26 andUUID:uUID6];
    }

    if (v94[5])
    {
      goto LABEL_50;
    }

LABEL_59:
    [payload setCertificatePersistentID:v24];
    [payload setSMIMESigningIdentityPersistentID:v25];
    [payload setSMIMEEncryptionIdentityPersistentID:v26];
    v69 = 1;
    goto LABEL_60;
  }

  useOAuth = [payload useOAuth];
  bOOLValue2 = [useOAuth BOOLValue];

  if (bOOLValue2)
  {
    goto LABEL_15;
  }

  v31 = MCErrorArray();
  v32 = [NSError MCErrorWithDomain:MCEASErrorDomain code:21003 descriptionArray:v31 errorType:MCErrorTypeFatal, 0];
  v33 = v94[5];
  v94[5] = v32;

  v26 = 0;
  v25 = 0;
  v24 = 0;
  if (!v94[5])
  {
    goto LABEL_59;
  }

LABEL_56:
  v69 = 0;
  if (error)
  {
    *error = v94[5];
  }

LABEL_60:

  _Block_object_dispose(&v93, 8);
  return v69;
}

- (id)accountTypeIdentifiers
{
  v4[0] = ACAccountTypeIdentifierExchange;
  v4[1] = ACAccountTypeIdentifierHotmail;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (BOOL)isInstalled
{
  _installedDAAccount = [(MCACAccountPayloadHandler *)self _installedDAAccount];
  v3 = _installedDAAccount != 0;

  return v3;
}

- (void)setAsideWithInstaller:(id)installer
{
  installerCopy = installer;
  v12.receiver = self;
  v12.super_class = MCNewEASAccountPayloadHandler;
  [(MCNewPayloadHandler *)&v12 setAsideWithInstaller:installerCopy];
  _installedDAAccount = [(MCACAccountPayloadHandler *)self _installedDAAccount];
  v6 = _installedDAAccount;
  if (_installedDAAccount)
  {
    backingAccountInfo = [_installedDAAccount backingAccountInfo];
    [(MCACAccountPayloadHandler *)self setSetAsideAccount:backingAccountInfo];

    backingAccountInfo2 = [v6 backingAccountInfo];
    credential = [backingAccountInfo2 credential];
    [(MCNewEASAccountPayloadHandler *)self setSetAsideAccountCredential:credential];

    [(MCNewEASAccountPayloadHandler *)self setSetAsideDAAccount:v6];
    backingAccountInfo3 = [v6 backingAccountInfo];
    identifier = [backingAccountInfo3 identifier];
    [installerCopy addSetAsideAccountIdentifier:identifier forPayloadClass:objc_opt_class()];
  }
}

- (void)unsetAside
{
  v14 = +[MDMCloudConfiguration sharedConfiguration];
  if ([v14 userMode] == 1)
  {
    setAsideAccount = [(MCACAccountPayloadHandler *)self setAsideAccount];

    if (setAsideAccount)
    {
      _installedDAAccount = [(MCACAccountPayloadHandler *)self _installedDAAccount];
      setAsideAccount2 = [(MCACAccountPayloadHandler *)self setAsideAccount];
      v6 = [setAsideAccount2 accountPropertyForKey:@"MCAccountIdentifer"];

      backingAccountInfo = [_installedDAAccount backingAccountInfo];
      v8 = [backingAccountInfo accountPropertyForKey:@"MCAccountIdentifer"];

      if (v6 && (!v8 || ([v6 isEqualToString:v8] & 1) == 0))
      {
        setAsideAccount3 = [(MCACAccountPayloadHandler *)self setAsideAccount];
        [setAsideAccount3 markAllPropertiesDirty];
        v10 = dispatch_semaphore_create(0);
        v11 = sharedDAAccountStore();
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100074E18;
        v15[3] = &unk_10011C908;
        v16 = setAsideAccount3;
        v17 = v10;
        v12 = v10;
        v13 = setAsideAccount3;
        [v11 saveVerifiedAccount:v13 withCompletionHandler:v15];

        dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
      }

      [(MCACAccountPayloadHandler *)self setSetAsideAccount:0];
      [(MCNewEASAccountPayloadHandler *)self setSetAsideAccountCredential:0];
    }
  }

  else
  {
  }
}

- (void)remove
{
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  isSetAside = [profileHandler isSetAside];

  if (isSetAside)
  {
    setAsideDAAccount = [(MCNewEASAccountPayloadHandler *)self setAsideDAAccount];
    setAsideAccountCredential = [(MCNewEASAccountPayloadHandler *)self setAsideAccountCredential];
    v5 = +[MDMCloudConfiguration sharedConfiguration];
    userMode = [v5 userMode];

    if (userMode == 1)
    {
      _installedSetAsideACAccount = [(MCACAccountPayloadHandler *)self _installedSetAsideACAccount];
      setAsideAccount = [(MCACAccountPayloadHandler *)self setAsideAccount];
      v9 = [setAsideAccount accountPropertyForKey:@"MCNativeAccountIdentifer"];
      v10 = [_installedSetAsideACAccount accountPropertyForKey:@"MCNativeAccountIdentifer"];
      v11 = [v9 isEqualToString:v10];

      if (v11)
      {
        backingAccountInfo = _installedSetAsideACAccount;
      }

      else
      {
        v14 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          selfCopy2 = "[MCNewEASAccountPayloadHandler remove]";
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s On Shared iPad, and current payload doesn't own any ACAccount.", buf, 0xCu);
        }

        backingAccountInfo = 0;
      }

      v13 = v11 ^ 1;
    }

    else
    {
      backingAccountInfo = [setAsideDAAccount backingAccountInfo];
      v13 = 0;
    }
  }

  else
  {
    updatedOverInstalledAccount = [(MCACAccountPayloadHandler *)self updatedOverInstalledAccount];
    setAsideDAAccount = [(MCACAccountPayloadHandler *)self _installedDAAccount];
    if (updatedOverInstalledAccount)
    {
      v13 = 0;
      backingAccountInfo = 0;
      setAsideAccountCredential = 0;
    }

    else
    {
      backingAccountInfo = [setAsideDAAccount backingAccountInfo];
      v13 = 0;
      setAsideAccountCredential = 0;
    }
  }

  if (setAsideDAAccount)
  {
    if (setAsideAccountCredential)
    {
      if (v13)
      {
        [(MCACAccountPayloadHandler *)self _installedSetAsideACAccount];
      }

      else
      {
        [(MCNewEASAccountPayloadHandler *)self _installedACAccountOtherThanSelf];
      }
      v15 = ;
      v16 = [DAAccount daAccountSubclassWithBackingAccountInfo:v15];
      credential = [v15 credential];
      backingAccountInfo2 = [v16 backingAccountInfo];
      v19 = [backingAccountInfo2 accountPropertyForKey:@"EASPayloadShouldPreserveOldPassword"];
      bOOLValue = [v19 BOOLValue];

      v21 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
      {
        v22 = v21;
        setAsideDAAccount2 = [(MCNewEASAccountPayloadHandler *)self setAsideDAAccount];
        backingAccountInfo3 = [setAsideDAAccount2 backingAccountInfo];
        *buf = 134219522;
        selfCopy2 = self;
        v64 = 2080;
        v65 = "[MCNewEASAccountPayloadHandler remove]";
        v66 = 2112;
        v67 = setAsideAccountCredential;
        v68 = 2112;
        v69 = v15;
        v70 = 1024;
        v71 = bOOLValue;
        v72 = 2112;
        v73 = backingAccountInfo3;
        v74 = 1024;
        v75 = v13;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%p %s - accountCredential %@, installedAccount %@ shouldPreservePassword %d setAsideDAAccount %@ lostAccountOwnership %d", buf, 0x40u);
      }

      if ((v13 & bOOLValue & 1) != 0 || (!v16 ? (v25 = 1) : (v25 = v13), (v25 & 1) == 0 && (-[MCNewEASAccountPayloadHandler setAsideDAAccount](self, "setAsideDAAccount"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v26 isConsideredTheSame:v16], v26, v27)))
      {
        v56[0] = _NSConcreteStackBlock;
        v56[1] = 3221225472;
        v56[2] = sub_100075768;
        v56[3] = &unk_10011CB10;
        v57 = v15;
        v61 = bOOLValue;
        v58 = v16;
        v59 = setAsideAccountCredential;
        v60 = credential;
        v51 = objc_retainBlock(v56);
      }

      else
      {
        v51 = 0;
      }
    }

    else
    {
      v51 = 0;
    }

    payload = [(MCNewPayloadHandler *)self payload];
    certificatePersistentID = [payload certificatePersistentID];
    if (certificatePersistentID)
    {
      uUID = [payload UUID];
      [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:certificatePersistentID andUUID:uUID];
    }

    else
    {
      [setAsideDAAccount removeClientCertificateData];
    }

    sMIMESigningIdentityPersistentID = [payload SMIMESigningIdentityPersistentID];
    if (sMIMESigningIdentityPersistentID)
    {
      uUID2 = [payload UUID];
      [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:sMIMESigningIdentityPersistentID andUUID:uUID2];
    }

    sMIMEEncryptionIdentityPersistentID = [payload SMIMEEncryptionIdentityPersistentID];
    if (sMIMEEncryptionIdentityPersistentID)
    {
      uUID3 = [payload UUID];
      [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:sMIMEEncryptionIdentityPersistentID andUUID:uUID3];
    }

    if (backingAccountInfo)
    {
      [MCFeatureOverrides accountRemovalTimeoutWithDefaultValue:600.0];
      [(MCACAccountPayloadHandler *)self _synchronouslyDeleteAccountAndAssociatedData:backingAccountInfo timeout:v51 completion:?];
    }

    else if (v51)
    {
      (v51[2])(v51, 1, 0);
    }

    v35 = +[MCRestrictionManagerWriter sharedManager];
    payload2 = [(MCNewPayloadHandler *)self payload];
    profile = [payload2 profile];
    installType = [profile installType];

    profileHandler2 = [(MCNewPayloadHandler *)self profileHandler];
    profile2 = [profileHandler2 profile];
    identifier = [profile2 identifier];
    profileHandler3 = [(MCNewPayloadHandler *)self profileHandler];
    profile3 = [profileHandler3 profile];
    uUID4 = [profile3 UUID];
    v45 = [NSString stringWithFormat:@"%@-%@", identifier, uUID4];

    persistentUUID = [setAsideDAAccount persistentUUID];
    v55 = 0;
    LOBYTE(v50) = 1;
    LOBYTE(uUID4) = [v35 setClientRestrictions:0 overrideRestrictions:0 appsAndOptions:0 system:installType != 2 clientType:kEASAccountClientType clientUUID:persistentUUID sender:v45 localizedClientDescription:0 localizedWarning:0 shouldRecomputeNag:v50 outRestrictionsChanged:0 outEffectiveSettingsChanged:0 outRecomputedNag:0 outError:&v55];
    v47 = v55;

    if ((uUID4 & 1) == 0)
    {
      v48 = _MCLogObjects[0];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        mCVerboseDescription = [v47 MCVerboseDescription];
        *buf = 138543618;
        selfCopy2 = self;
        v64 = 2114;
        v65 = mCVerboseDescription;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Error removing client restrictions: %{public}@, %{public}@", buf, 0x16u);
      }
    }
  }
}

- (id)_installedACAccountOtherThanSelf
{
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  isSetAside = [profileHandler isSetAside];

  if (isSetAside)
  {
    installedACAccounts = [(MCACAccountPayloadHandler *)self installedACAccounts];
    v6 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v26 = installedACAccounts;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Installed accounts %@", buf, 0xCu);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = installedACAccounts;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          identifier = [v12 identifier];
          setAsideAccount = [(MCACAccountPayloadHandler *)self setAsideAccount];
          identifier2 = [setAsideAccount identifier];
          v16 = [identifier isEqualToString:identifier2];

          if ((v16 & 1) == 0)
          {
            v18 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v26 = v12;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Installed account other than self %@", buf, 0xCu);
            }

            v17 = v12;
            goto LABEL_17;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_17:
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)preflighterSuccessWithoutPolicyUpdate:(id)update
{
  preflightCompletionHandler = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];

  if (preflightCompletionHandler)
  {
    preflightCompletionHandler2 = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];
    preflightCompletionHandler2[2](preflightCompletionHandler2, 0, 0);

    [(MCNewEASAccountPayloadHandler *)self setPreflightCompletionHandler:0];
  }
}

- (void)preflighter:(id)preflighter needsComplianceWithMCFeatures:(id)features perAccountPolicies:(id)policies
{
  featuresCopy = features;
  preflightCompletionHandler = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];

  if (preflightCompletionHandler)
  {
    preflightCompletionHandler2 = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];
    (preflightCompletionHandler2)[2](preflightCompletionHandler2, featuresCopy, 0);

    [(MCNewEASAccountPayloadHandler *)self setPreflightCompletionHandler:0];
  }
}

- (void)preflighter:(id)preflighter successWithMCFeatures:(id)features perAccountPolicies:(id)policies policyKey:(id)key
{
  featuresCopy = features;
  preflightCompletionHandler = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];

  if (preflightCompletionHandler)
  {
    preflightCompletionHandler2 = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];
    (preflightCompletionHandler2)[2](preflightCompletionHandler2, featuresCopy, 0);

    [(MCNewEASAccountPayloadHandler *)self setPreflightCompletionHandler:0];
  }
}

- (void)preflighterRemoteWipeRequested:(id)requested
{
  v4 = MCEASErrorDomain;
  v5 = MCErrorArray();
  v8 = [NSError MCErrorWithDomain:v4 code:21001 descriptionArray:v5 errorType:MCErrorTypeFatal, 0];

  preflightCompletionHandler = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];

  if (preflightCompletionHandler)
  {
    preflightCompletionHandler2 = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];
    (preflightCompletionHandler2)[2](preflightCompletionHandler2, 0, v8);

    [(MCNewEASAccountPayloadHandler *)self setPreflightCompletionHandler:0];
  }
}

- (void)preflighterRemoteWipeRequestResponseAcknowledged:(id)acknowledged
{
  acknowledgedCopy = acknowledged;
  v5 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "My policy preflighter is wigging out. %{public}@", &v8, 0xCu);
  }

  preflightCompletionHandler = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];

  if (preflightCompletionHandler)
  {
    preflightCompletionHandler2 = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];
    preflightCompletionHandler2[2](preflightCompletionHandler2, 0, 0);

    [(MCNewEASAccountPayloadHandler *)self setPreflightCompletionHandler:0];
  }
}

- (void)preflighterAccountOnlyRemoteWipeRequested:(id)requested
{
  requestedCopy = requested;
  v5 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Account-only wipe requested by server.", buf, 2u);
  }

  v6 = MCEASErrorDomain;
  v7 = MCErrorArray();
  v8 = [NSError MCErrorWithDomain:v6 code:21008 descriptionArray:v7 errorType:MCErrorTypeFatal, 0];

  preflightCompletionHandler = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];

  if (preflightCompletionHandler)
  {
    preflightCompletionHandler2 = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];
    (preflightCompletionHandler2)[2](preflightCompletionHandler2, 0, v8);

    [(MCNewEASAccountPayloadHandler *)self setPreflightCompletionHandler:0];
  }
}

- (void)preflighterAccountOnlyRemoteWipeRequestResponseAcknowledged:(id)acknowledged
{
  acknowledgedCopy = acknowledged;
  v5 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Account is being wiped per server account-only wipe request. My policy preflighter is wigging out. %{public}@", buf, 0xCu);
  }

  v6 = MCEASErrorDomain;
  v7 = MCErrorArray();
  v8 = [NSError MCErrorWithDomain:v6 code:21008 descriptionArray:v7 errorType:MCErrorTypeFatal, 0];

  preflightCompletionHandler = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];

  if (preflightCompletionHandler)
  {
    preflightCompletionHandler2 = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];
    (preflightCompletionHandler2)[2](preflightCompletionHandler2, 0, v8);

    [(MCNewEASAccountPayloadHandler *)self setPreflightCompletionHandler:0];
  }
}

- (void)preflighter:(id)preflighter error:(id)error
{
  errorCopy = error;
  preflightCompletionHandler = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];

  if (preflightCompletionHandler)
  {
    preflightCompletionHandler2 = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];
    v7 = [(MCNewEASAccountPayloadHandler *)self _errorFromPolicyPreflightError:errorCopy];
    (preflightCompletionHandler2)[2](preflightCompletionHandler2, 0, v7);

    [(MCNewEASAccountPayloadHandler *)self setPreflightCompletionHandler:0];
  }
}

@end