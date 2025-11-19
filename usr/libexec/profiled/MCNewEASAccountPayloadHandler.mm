@interface MCNewEASAccountPayloadHandler
- (BOOL)_isConfiguredWithSCEP;
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (BOOL)isInstalled;
- (BOOL)preflightUserInputResponses:(id)a3 outError:(id *)a4;
- (BOOL)stageForInstallationWithInstaller:(id)a3 interactionClient:(id)a4 outError:(id *)a5;
- (id)_accountFromPayloadWithUserInputResponses:(id)a3 identityPersistentID:(id)a4 SMIMESigningIdentityPersistentID:(id)a5 SMIMEEncryptionIdentityPersistentID:(id)a6;
- (id)_endPointFQDNForPayload:(id)a3;
- (id)_errorFromPolicyPreflightError:(id)a3;
- (id)_errorFromValidationError:(id)a3;
- (id)_getClientRestrictionsFromServerCertificatePersistentID:(id)a3 SMIMESigningIdentityPersistentID:(id)a4 SMIMEEncryptionIdentityPersistentID:(id)a5 outError:(id *)a6;
- (id)_installTimePersistentIDForIdentityCertificateOutError:(id *)a3;
- (id)_installedACAccountOtherThanSelf;
- (id)_preflightTimePersistentIDForIdentityCertificateUserInputResponses:(id)a3 outError:(id *)a4;
- (id)accountTypeIdentifiers;
- (id)unhashedAccountIdentifier;
- (id)userInputFields;
- (void)_preflightWithAccount:(id)a3 completionHandler:(id)a4;
- (void)_preflightWithPreflighter:(id)a3 completionHandler:(id)a4;
- (void)account:(id)a3 isValid:(BOOL)a4 validationError:(id)a5;
- (void)preflighter:(id)a3 error:(id)a4;
- (void)preflighter:(id)a3 needsComplianceWithMCFeatures:(id)a4 perAccountPolicies:(id)a5;
- (void)preflighter:(id)a3 successWithMCFeatures:(id)a4 perAccountPolicies:(id)a5 policyKey:(id)a6;
- (void)preflighterAccountOnlyRemoteWipeRequestResponseAcknowledged:(id)a3;
- (void)preflighterAccountOnlyRemoteWipeRequested:(id)a3;
- (void)preflighterRemoteWipeRequestResponseAcknowledged:(id)a3;
- (void)preflighterRemoteWipeRequested:(id)a3;
- (void)preflighterSuccessWithoutPolicyUpdate:(id)a3;
- (void)remove;
- (void)setAsideWithInstaller:(id)a3;
- (void)setUserInputResponses:(id)a3;
- (void)unsetAside;
- (void)unstageFromInstallationWithInstaller:(id)a3;
@end

@implementation MCNewEASAccountPayloadHandler

- (id)userInputFields
{
  v54.receiver = self;
  v54.super_class = MCNewEASAccountPayloadHandler;
  v3 = [(MCNewPayloadHandler *)&v54 userInputFields];
  v4 = [v3 mutableCopy];

  v5 = [(MCNewPayloadHandler *)self payload];
  v6 = [v5 accountDescription];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [v5 hostname];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = MCLocalizedString();
    }

    v8 = v11;
  }

  v12 = [v5 emailAddress];

  if (!v12)
  {
    v13 = MCLocalizedString();
    v14 = MCLocalizedFormat();
    v15 = MCLocalizedString();
    v16 = [MCNewPayloadHandler promptDictionaryForKey:@"kEASEmailAddressKey" title:v13 description:v14 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:v15 minimumLength:0 fieldType:2 flags:?];
    [v4 addObject:v16];
  }

  v17 = [v5 embeddedCertificate];
  if (v17)
  {
    v18 = [v5 certificateUUID];
    v19 = v18 == 0;
  }

  else
  {
    v19 = 0;
  }

  v20 = [v5 hasCertificate];
  v21 = [v5 useOAuth];
  if (v21)
  {
    v22 = 0;
  }

  else if ([v5 hasCertificate])
  {
    v23 = [v5 username];
    v22 = [v23 length] != 0;
  }

  else
  {
    v22 = 1;
  }

  if (!v19 || ([v5 embeddedCertificatePassword], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "length"), v24, v25))
  {
    if (v20)
    {
      goto LABEL_28;
    }

    goto LABEL_20;
  }

  v32 = [v5 embeddedCertificateName];
  v33 = [v32 length];

  if (v33)
  {
    v34 = [v5 embeddedCertificateName];
LABEL_26:
    v37 = MCLocalizedFormat();

    goto LABEL_27;
  }

  v35 = [v5 emailAddress];
  v36 = [v35 length];

  if (v36)
  {
    v34 = [v5 emailAddress];
    goto LABEL_26;
  }

  v37 = MCLocalizedFormat();
LABEL_27:
  v38 = MCLocalizedString();
  v39 = MCLocalizedString();
  v40 = [MCNewPayloadHandler promptDictionaryForKey:@"kEASCertPasswordKey" title:v38 description:v37 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:v39 minimumLength:0 fieldType:3 flags:?];
  [v4 addObject:v40];

  if (v20)
  {
    goto LABEL_28;
  }

LABEL_20:
  v26 = [v5 username];
  v27 = [v26 length];

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
    v41 = [v5 password];
    v42 = [v41 length];

    if (!v42)
    {
      v43 = [v5 emailAddress];
      v44 = [v43 length];

      if (v44)
      {
        v52 = [v5 emailAddress];
        v45 = MCLocalizedFormat();
      }

      else
      {
        v52 = v8;
        v45 = MCLocalizedFormat();
      }

      v46 = MCLocalizedString();
      if ([v5 hasCertificate])
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

- (void)setUserInputResponses:(id)a3
{
  v4 = a3;
  v20 = self;
  v5 = [(MCNewPayloadHandler *)self payload];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v4;
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
          [v5 setEmailAddress:v15];
        }

        else if ([v14 isEqualToString:@"kEASCertPasswordKey"])
        {
          [v5 setEmbeddedCertificatePassword:v15];
        }

        else if ([v14 isEqualToString:@"kEASUsernameKey"])
        {
          [v5 setUsername:v15];
        }

        else if ([v14 isEqualToString:@"kEASPasswordKey"])
        {
          [v5 setPassword:v15];
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

  v23.receiver = v20;
  v23.super_class = MCNewEASAccountPayloadHandler;
  [(MCNewPayloadHandler *)&v23 setUserInputResponses:obj];
}

- (id)unhashedAccountIdentifier
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = [v2 emailAddress];
  if (v3)
  {
    v4 = [NSString stringWithFormat:@"eas|%@", v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 hostname];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v4 stringByAppendingFormat:@"|%@", v5];

    v4 = v7;
  }

  v8 = [v2 username];
  v9 = v8;
  if (v4 && v8)
  {
    v10 = [v4 stringByAppendingFormat:@"|%@", v8];

    v4 = v10;
  }

  return v4;
}

- (id)_accountFromPayloadWithUserInputResponses:(id)a3 identityPersistentID:(id)a4 SMIMESigningIdentityPersistentID:(id)a5 SMIMEEncryptionIdentityPersistentID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v150 = a5;
  v12 = a6;
  v149 = v12;
  if (!self->_account)
  {
    v13 = [(MCNewPayloadHandler *)self payload];
    v14 = ACAccountTypeIdentifierExchange;
    v15 = [v13 hostname];
    v16 = [v15 isEqualToString:@"m.hotmail.com"];

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
    v21 = [v13 friendlyName];
    [v20 setManagingSourceName:v21];

    v22 = +[MDMCloudConfiguration sharedConfiguration];
    v23 = [v22 userMode];

    if (v23 == 1)
    {
      v24 = [(MCACAccountPayloadHandler *)self MCACAccountIdentifier];
      if (v24)
      {
        v25 = [v20 identifier];
        [v20 setAccountProperty:v25 forKey:@"MCAccountIdentifer"];

        v26 = [v20 identifier];
        [v20 setAccountProperty:v26 forKey:@"MCNativeAccountIdentifer"];

        [v20 setIdentifier:v24];
      }

      v27 = sharedDAAccountStore();
      v28 = [v20 identifier];
      v29 = [v27 accountWithIdentifier:v28];

      if (v29)
      {
        v30 = [v29 objectID];
        [v20 performSelector:"_setObjectID:" withObject:v30];
      }
    }

    v157 = v19;
    v31 = [v19 supportedDataclasses];
    v32 = [v31 mutableCopy];

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

    -[ASAccount setEnabled:forDADataclass:](v41, "setEnabled:forDADataclass:", [v13 enableMail], 1);
    -[ASAccount setEnabled:forDADataclass:](self->_account, "setEnabled:forDADataclass:", [v13 enableContacts], 2);
    -[ASAccount setEnabled:forDADataclass:](self->_account, "setEnabled:forDADataclass:", [v13 enableCalendars], 4);
    -[ASAccount setEnabled:forDADataclass:](self->_account, "setEnabled:forDADataclass:", [v13 enableContacts], 8);
    -[ASAccount setEnabled:forDADataclass:](self->_account, "setEnabled:forDADataclass:", [v13 enableReminders], 16);
    v42 = [v20 provisionedDataclasses];
    v43 = [v42 containsObject:v33];

    if (v43)
    {
      -[ASAccount setEnabled:forDADataclass:](self->_account, "setEnabled:forDADataclass:", [v13 enableNotes], 32);
    }

    v44 = [(ASAccount *)self->_account backingAccountInfo];
    v45 = [(MCNewPayloadHandler *)self payload];
    v46 = [v45 UUID];
    [v44 setMcPayloadUUID:v46];

    v47 = [(ASAccount *)self->_account backingAccountInfo];
    v48 = [(MCNewPayloadHandler *)self payload];
    v49 = [v48 profile];
    v50 = [v49 UUID];
    [v47 setMcProfileUUID:v50];

    v51 = [(ASAccount *)self->_account backingAccountInfo];
    v52 = [v13 communicationServiceRules];
    [v51 setCommunicationServiceRules:v52];

    v53 = [(ASAccount *)self->_account backingAccountInfo];
    v54 = [v13 identifier];
    [v53 setMcAccountIdentifier:v54];

    if (([v13 enableNotes] & 1) == 0)
    {
      v55 = [(ASAccount *)self->_account backingAccountInfo];
      [v55 setMcEASAccountEnableNotes:&__kCFBooleanFalse];
    }

    if (([v13 enableMailUserOverridable] & 1) == 0)
    {
      v56 = [(ASAccount *)self->_account backingAccountInfo];
      [v56 setMcEnableMailUserOverridable:&__kCFBooleanFalse];
    }

    if (([v13 enableContactsUserOverridable] & 1) == 0)
    {
      v57 = [(ASAccount *)self->_account backingAccountInfo];
      [v57 setMcEnableContactsUserOverridable:&__kCFBooleanFalse];
    }

    if (([v13 enableCalendarsUserOverridable] & 1) == 0)
    {
      v58 = [(ASAccount *)self->_account backingAccountInfo];
      [v58 setMcEnableCalendarsUserOverridable:&__kCFBooleanFalse];
    }

    if (([v13 enableRemindersUserOverridable] & 1) == 0)
    {
      v59 = [(ASAccount *)self->_account backingAccountInfo];
      [v59 setMcEnableRemindersUserOverridable:&__kCFBooleanFalse];
    }

    v147 = v11;
    if (([v13 enableNotesUserOverridable] & 1) == 0)
    {
      v60 = [(ASAccount *)self->_account backingAccountInfo];
      [v60 setMcEnableNotesUserOverridable:&__kCFBooleanFalse];
    }

    v61 = [(MCNewPayloadHandler *)self payload];
    v62 = [v61 profile];
    v63 = [v62 identifier];

    if (v63)
    {
      v64 = [(ASAccount *)self->_account backingAccountInfo];
      [v64 setMcConfigurationProfileIdentifier:v63];
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

    v155 = v63;
    v66 = self->_account;
    v67 = [v13 username];
    [(ASAccount *)v66 setUsername:v67];

    v68 = self->_account;
    v69 = [v13 hostname];
    [(ASAccount *)v68 setHost:v69];

    v70 = self->_account;
    v71 = [v13 useSSL];
    -[ASAccount setUseSSL:](v70, "setUseSSL:", [v71 BOOLValue]);

    v72 = [v13 mailNumberOfPastDaysToSync];

    if (v72)
    {
      v73 = self->_account;
      v74 = [v13 mailNumberOfPastDaysToSync];
      -[ASAccount setMailNumberOfPastDaysToSync:](v73, "setMailNumberOfPastDaysToSync:", [v74 intValue]);
    }

    v75 = self->_account;
    v76 = [v13 accountDescription];
    [(ASAccount *)v75 setAccountDescription:v76];

    v77 = self->_account;
    v78 = [v13 emailAddress];
    [(ASAccount *)v77 setEmailAddress:v78];

    v79 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 mustNotUseSynchronizableCredential]);
    v80 = [(ASAccount *)self->_account backingAccountInfo];
    v153 = v79;
    [v80 setAccountProperty:v79 forKey:ACAccountPropertyShouldNeverUseSyncableCredential];

    v81 = [v13 useOAuth];
    v82 = [v81 BOOLValue];

    v83 = self->_account;
    if (v82)
    {
      [(ASAccount *)self->_account setAccountBoolProperty:1 forKey:kDAExchangeOAuthSupportedKey];
      v84 = [[ACAccountCredential alloc] initWithOAuth2Token:&stru_10011E740 refreshToken:0 expiryDate:0];
      v85 = self;
      v86 = [(ASAccount *)self->_account backingAccountInfo];
      [v86 setCredential:v84];

      v87 = [v13 OAuthSignInURL];

      if (v87)
      {
        v88 = self->_account;
        v89 = [v13 OAuthSignInURL];
        [(ASAccount *)v88 setAccountProperty:v89 forKey:kDAExchangeOAuthURI];

        v90 = [(MCNewEASAccountPayloadHandler *)self _endPointFQDNForPayload:v13];
        if (v90)
        {
          [(ASAccount *)self->_account setAccountProperty:v90 forKey:kDAEASEndPointFQDN];
        }
      }

      v91 = [v13 OAuthTokenRequestURL];

      v92 = v155;
      if (!v91)
      {
LABEL_47:
        if ([v13 preventMove])
        {
          v95 = v85->_account;
          v96 = [v13 preventMove];
          [(ASAccount *)v95 setAccountBoolProperty:v96 forKey:MFMailAccountRestrictMessageTransfersToOtherAccounts];
        }

        if ([v13 preventAppSheet])
        {
          v97 = v85->_account;
          v98 = [v13 preventAppSheet];
          [(ASAccount *)v97 setAccountBoolProperty:v98 forKey:MFMailAccountRestrictSendingFromExternalProcesses];
        }

        if (![v13 SMIMEEnabled])
        {
          goto LABEL_67;
        }

        if (v150)
        {
          [(ASAccount *)v85->_account setSigningIdentityPersistentReference:?];
        }

        v99 = [v13 SMIMESigningEnabled];
        v100 = v99;
        if (v99)
        {
          v101 = v85->_account;
          v102 = [v99 BOOLValue];
          v103 = MFMailAccountSigningEnabled;
          v104 = v101;
        }

        else
        {
          if (!v150)
          {
            goto LABEL_59;
          }

          v104 = v85->_account;
          v103 = MFMailAccountSigningEnabled;
          v102 = 1;
        }

        [(ASAccount *)v104 setAccountBoolProperty:v102 forKey:v103];
LABEL_59:
        if (v149)
        {
          [(ASAccount *)v85->_account setEncryptionIdentityPersistentReference:?];
        }

        v105 = [v13 SMIMEEncryptionEnabled];
        v106 = v105;
        if (v105)
        {
          v107 = v85;
          v108 = v85->_account;
          v109 = [v105 BOOLValue];
          v110 = MFMailAccountEncryptionEnabled;
          v111 = v108;
        }

        else
        {
          v107 = v85;
          if (!v149)
          {
LABEL_66:
            v112 = v107->_account;
            v113 = [v13 SMIMEEncryptByDefaultUserOverrideable];
            [(ASAccount *)v112 setAccountBoolProperty:v113 forKey:MFMailAccountEncryptByDefaultUserOverrideable];
            v114 = v107->_account;
            v115 = [v13 SMIMEPerMessageSwitchEnabled];
            [(ASAccount *)v114 setAccountBoolProperty:v115 forKey:MFMailAccountPerMessageEncryptionEnabled];
            v116 = v107->_account;
            v117 = [v13 SMIMESigningUserOverrideable];
            [(ASAccount *)v116 setAccountBoolProperty:v117 forKey:MFMailAccountSigningUserOverrideable];
            v118 = v107->_account;
            v119 = [v13 SMIMESigningIdentityUserOverrideable];
            [(ASAccount *)v118 setAccountBoolProperty:v119 forKey:MFMailAccountSigningIdentityUserOverrideable];
            v85 = v107;
            v120 = v107->_account;
            v121 = [v13 SMIMEEncryptionIdentityUserOverrideable];
            [(ASAccount *)v120 setAccountBoolProperty:v121 forKey:MFMailAccountEncryptionIdentityUserOverrideable];

LABEL_67:
            if ([v13 syncDefaultFoldersOnly])
            {
              v122 = v85->_account;
              v123 = MCkASSyncDefaultFoldersOnly();
              [(ASAccount *)v122 setAccountBoolProperty:1 forKey:v123];
            }

            if ([v13 isRecentsSyncingDisabled])
            {
              [(ASAccount *)v85->_account setAccountBoolProperty:1 forKey:MFMailAccountRestrictRecentsSyncing];
            }

            if ([v13 isMailDropEnabled])
            {
              [(ASAccount *)v85->_account setAccountBoolProperty:1 forKey:MFMailAccountSupportsMailDrop];
            }

            v11 = v147;
            self = v85;
LABEL_74:

            v12 = v149;
            goto LABEL_75;
          }

          v111 = v85->_account;
          v110 = MFMailAccountEncryptionEnabled;
          v109 = 1;
        }

        [(ASAccount *)v111 setAccountBoolProperty:v109 forKey:v110];
        goto LABEL_66;
      }

      v93 = self->_account;
      v94 = [v13 OAuthTokenRequestURL];
      [(ASAccount *)v93 setAccountProperty:v94 forKey:kDAExchangeTokenRequestURI];
    }

    else
    {
      v85 = self;
      v94 = [v13 password];
      [(ASAccount *)v83 setPassword:v94];
      v92 = v155;
    }

    goto LABEL_47;
  }

LABEL_75:
  if (v11)
  {
    [(ASAccount *)self->_account setIdentityCertificatePersistentID:v11 managedByProfile:1];
  }

  if (v10)
  {
    v148 = v11;
    v151 = self;
    v124 = [(MCNewPayloadHandler *)self payload];
    v125 = [v124 emailAddress];
    v158 = [v124 embeddedCertificatePassword];
    v156 = [v124 username];
    v145 = v124;
    v154 = [v124 password];
    v161 = 0u;
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v146 = v10;
    obja = v10;
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

            v125 = v135;
          }

          else if ([v133 isEqualToString:@"kEASCertPasswordKey"])
          {
            v136 = v134;

            v158 = v136;
          }

          else if ([v133 isEqualToString:@"kEASUsernameKey"])
          {
            v137 = v134;

            v156 = v137;
          }

          else if ([v133 isEqualToString:@"kEASPasswordKey"])
          {
            v138 = v134;

            v154 = v138;
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

    self = v151;
    [(ASAccount *)v151->_account setEmailAddress:v125];
    [(ASAccount *)v151->_account setUsername:v156];
    [(ASAccount *)v151->_account setPassword:v154];

    v10 = v146;
    v11 = v148;
    v12 = v149;
  }

  v142 = self->_account;
  v143 = v142;

  return v142;
}

- (id)_endPointFQDNForPayload:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSURLComponents);
  v5 = [v3 useSSL];
  if ([v5 BOOLValue])
  {
    v6 = @"https";
  }

  else
  {
    v6 = @"http";
  }

  [v4 setScheme:v6];

  v7 = [v3 hostname];

  [v4 setHost:v7];
  v8 = [v4 string];

  return v8;
}

- (id)_errorFromValidationError:(id)a3
{
  v3 = a3;
  v4 = [v3 code];
  if (v4 == 102)
  {
    v11 = MCDAErrorDomain;
    v6 = MCErrorArray();
    v7 = MCLocalizedErrorString();
    v8 = MCUSEnglishErrorString();
    [NSError MCErrorWithDomain:v11 code:18002 descriptionArray:v6 suggestion:v7 USEnglishSuggestion:v8 underlyingError:v3 errorType:MCErrorTypeRetryable];
  }

  else if (v4 == 101)
  {
    v10 = MCDAErrorDomain;
    v6 = MCErrorArray();
    v7 = MCLocalizedErrorString();
    v8 = MCUSEnglishErrorString();
    [NSError MCErrorWithDomain:v10 code:18001 descriptionArray:v6 suggestion:v7 USEnglishSuggestion:v8 underlyingError:v3 errorType:MCErrorTypeSkippable];
  }

  else
  {
    if (v4 == 100)
    {
      v5 = MCDAErrorDomain;
      v6 = MCErrorArray();
      v7 = MCLocalizedErrorString();
      v8 = MCUSEnglishErrorString();
      v9 = &MCErrorTypeSkippable;
    }

    else
    {
      v12 = [v3 localizedDescription];
      v13 = [v12 length];

      v5 = MCDAErrorDomain;
      v6 = MCErrorArray();
      if (v13)
      {
        v14 = [NSError MCErrorWithDomain:v5 code:18000 descriptionArray:v6 underlyingError:v3 errorType:MCErrorTypeFatal, 0];
        goto LABEL_12;
      }

      v7 = MCLocalizedErrorString();
      v8 = MCUSEnglishErrorString();
      v9 = &MCErrorTypeFatal;
    }

    [NSError MCErrorWithDomain:v5 code:18000 descriptionArray:v6 suggestion:v7 USEnglishSuggestion:v8 underlyingError:v3 errorType:*v9];
  }
  v14 = ;

LABEL_12:

  return v14;
}

- (void)account:(id)a3 isValid:(BOOL)a4 validationError:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [v9 MCVerboseDescription];
    v15 = 138543874;
    v16 = v8;
    v17 = 1024;
    v18 = v6;
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "account %{public}@ is valid %d with error %{public}@", &v15, 0x1Cu);
  }

  if (!v9 && !v6)
  {
    v9 = [NSError errorWithDomain:DAAccountValidationDomain code:102 userInfo:0];
  }

  v13 = [(MCNewEASAccountPayloadHandler *)self accountValidationCompletionHandler];

  if (v13)
  {
    v14 = [(MCNewEASAccountPayloadHandler *)self accountValidationCompletionHandler];
    (v14)[2](v14, v9);

    [(MCNewEASAccountPayloadHandler *)self setAccountValidationCompletionHandler:0];
  }
}

- (void)_preflightWithAccount:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  [(MCNewEASAccountPayloadHandler *)self setAccountValidationCompletionHandler:a4];
  v8 = sharedDAAccountStore();
  v7 = dataaccess_get_global_queue();
  [v6 checkValidityOnAccountStore:v8 withConsumer:self inQueue:v7];
}

- (id)_preflightTimePersistentIDForIdentityCertificateUserInputResponses:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = [(MCNewPayloadHandler *)self payload];
  v8 = [v7 certificateUUID];

  if (v8)
  {
    v9 = [(MCNewPayloadHandler *)self profileHandler];
    v10 = [v7 certificateUUID];
    v11 = [v9 payloadHandlerWithUUID:v10];

    if (v11)
    {
      v43 = 0;
      v12 = [v11 copyIdentityImmediatelyWithInteractionClient:0 outError:&v43];
      v13 = v43;
      v14 = 0;
      if (!v13 && v12)
      {
        v39 = a4;
        v41 = v6;
        v15 = [v11 accessibility];
        v16 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v45 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Preflighting EAS identity, storing with accessibility %@", buf, 0xCu);
        }

        v17 = [v7 UUID];
        v18 = kMCAppleIdentitiesKeychainGroup;
        v19 = [(MCNewPayloadHandler *)self profileHandler];
        v20 = [v19 profile];
        v14 = +[MCKeychain saveItem:withLabel:group:useSystemKeychain:accessibility:](MCKeychain, "saveItem:withLabel:group:useSystemKeychain:accessibility:", v12, v17, v18, [v20 isInstalledForSystem], v15);

        v21 = [v7 UUID];
        [(MCNewPayloadHandler *)self _touchDependencyBetweenPersistentID:v14 andUUID:v21];

        CFRelease(v12);
        v13 = 0;
        a4 = v39;
        v6 = v41;
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
    v22 = [v7 embeddedCertificate];

    if (!v22)
    {

      v14 = 0;
LABEL_18:
      v14 = v14;
      v13 = 0;
      v37 = v14;
      goto LABEL_20;
    }

    v11 = [v7 embeddedCertificate];
    v23 = [v7 embeddedCertificatePassword];
    v24 = [MCNewPayloadHandler prioritizeUserInput:v6 key:@"kEASCertPasswordKey" overField:v23];

    v25 = MCKeychainCopyIdentityFromPKCS12();
    if (v25)
    {
      v26 = v25;
      v27 = [v7 UUID];
      v28 = kMCAppleIdentitiesKeychainGroup;
      [(MCNewPayloadHandler *)self profileHandler];
      v40 = v11;
      v29 = v42 = v6;
      [v29 profile];
      v30 = v24;
      v32 = v31 = a4;
      v14 = +[MCKeychain saveItem:withLabel:group:useSystemKeychain:](MCKeychain, "saveItem:withLabel:group:useSystemKeychain:", v26, v27, v28, [v32 isInstalledForSystem]);

      a4 = v31;
      v24 = v30;

      v11 = v40;
      v6 = v42;

      v33 = [v7 UUID];
      [(MCNewPayloadHandler *)self _touchDependencyBetweenPersistentID:v14 andUUID:v33];

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

  if (a4)
  {
    v36 = v13;
    v37 = 0;
    *a4 = v13;
  }

  else
  {
    v37 = 0;
  }

LABEL_20:

  return v37;
}

- (id)_installTimePersistentIDForIdentityCertificateOutError:(id *)a3
{
  v5 = [(MCNewPayloadHandler *)self payload];
  v6 = [v5 certificateUUID];

  if (v6)
  {
    v7 = [(MCNewPayloadHandler *)self profileHandler];
    v8 = [v5 certificateUUID];
    v9 = [v7 persistentIDForCertificateUUID:v8];

LABEL_3:
    v10 = 0;
    goto LABEL_4;
  }

  v12 = [v5 embeddedCertificate];

  if (!v12)
  {
    v9 = 0;
    goto LABEL_3;
  }

  v13 = [v5 embeddedCertificate];
  v14 = [v5 embeddedCertificatePassword];
  v15 = MCKeychainCopyIdentityFromPKCS12();
  if (v15)
  {
    v16 = v15;
    v26 = v14;
    v27 = v13;
    v17 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v29 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Storing embedded identity for EAS, storing with accessibility %@", buf, 0xCu);
    }

    v18 = [v5 UUID];
    v19 = kMCAppleIdentitiesKeychainGroup;
    v20 = [(MCNewPayloadHandler *)self profileHandler];
    v21 = [v20 profile];
    v9 = +[MCKeychain saveItem:withLabel:group:useSystemKeychain:accessibility:](MCKeychain, "saveItem:withLabel:group:useSystemKeychain:accessibility:", v16, v18, v19, [v21 isInstalledForSystem], kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly);

    v22 = [v5 UUID];
    [(MCNewPayloadHandler *)self _touchDependencyBetweenPersistentID:v9 andUUID:v22];

    CFRelease(v16);
    v10 = 0;
    v14 = v26;
    v13 = v27;
  }

  else
  {
    v23 = MCEASErrorDomain;
    v24 = MCErrorArray();
    v10 = [NSError MCErrorWithDomain:v23 code:21006 descriptionArray:v24 errorType:MCErrorTypeFatal, 0];

    v9 = 0;
  }

  if (a3 && v10)
  {
    v25 = v10;
    *a3 = v10;
  }

LABEL_4:

  return v9;
}

- (BOOL)_isConfiguredWithSCEP
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = [v2 certificateUUID];

  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = [v2 profile];
  v5 = [v2 certificateUUID];
  v6 = [v4 payloadWithUUID:v5];

  objc_opt_class();
  LOBYTE(v4) = objc_opt_isKindOfClass();

  if (v4)
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

- (BOOL)preflightUserInputResponses:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = [(MCNewPayloadHandler *)self payload];
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
  v8 = [(MCNewEASAccountPayloadHandler *)self _preflightTimePersistentIDForIdentityCertificateUserInputResponses:v6 outError:&obj];
  objc_storeStrong(v11, obj);
  if (v32[5])
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_15;
  }

  if (v8)
  {
    v12 = [v7 UUID];
    [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:v8 andUUID:v12];
  }

  if (![v7 SMIMEEnabled])
  {
    v10 = 0;
    v9 = 0;
LABEL_11:
    v15 = [(MCNewEASAccountPayloadHandler *)self _accountFromPayloadWithUserInputResponses:v6 identityPersistentID:v8 SMIMESigningIdentityPersistentID:v9 SMIMEEncryptionIdentityPersistentID:v10];
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

  v13 = [v7 SMIMESigningIdentityUUID];
  v14 = (v32 + 5);
  v29 = v32[5];
  v9 = [(MCNewPayloadHandler *)self _temporaryPersistentIDForIdentityUUID:v13 outError:&v29];
  objc_storeStrong(v14, v29);

  if (v32[5])
  {
    v10 = 0;
    goto LABEL_15;
  }

  v23 = [v7 SMIMEEncryptionIdentityUUID];
  v24 = (v32 + 5);
  v28 = v32[5];
  v10 = [(MCNewPayloadHandler *)self _temporaryPersistentIDForIdentityUUID:v23 outError:&v28];
  objc_storeStrong(v24, v28);

  if (!v32[5])
  {
    goto LABEL_11;
  }

LABEL_15:
  if (v8)
  {
    v20 = [v7 UUID];
    [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v8 andUUID:v20];
  }

LABEL_17:
  if (a4 && v32[5])
  {
    v21 = MCErrorArray();
    *a4 = [NSError MCErrorWithDomain:MCEASErrorDomain code:21007 descriptionArray:v21 underlyingError:v32[5] errorType:MCErrorTypeSkippable, 0];
  }

  _Block_object_dispose(&v31, 8);
  return 1;
}

- (id)_errorFromPolicyPreflightError:(id)a3
{
  v3 = a3;
  v4 = MCEASOverSimplifiedStatusForError();
  v5 = _MCLogObjects[0];
  v6 = os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR);
  if (v4 == 1)
  {
    if (v6)
    {
      v13 = 138543362;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Got a network error during policy preflight: %{public}@", &v13, 0xCu);
    }

    v7 = &MCErrorTypeSkippable;
  }

  else
  {
    if (v6)
    {
      v13 = 138543362;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Got an unknown error back from my policy preflight: %{public}@", &v13, 0xCu);
    }

    v7 = &MCErrorTypeFatal;
  }

  v8 = MCEASErrorDomain;
  v9 = MCLocalizedErrorString();
  v10 = [NSArray arrayWithObject:v9];
  v11 = [NSError MCErrorWithDomain:v8 code:21000 descriptionArray:v10 underlyingError:v3 errorType:*v7];

  return v11;
}

- (void)_preflightWithPreflighter:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  account = self->_account;
  v9 = +[DASharedAccountProperties DAAccountDoNotSaveReason];
  [(ASAccount *)account setAccountProperty:@"Preflighting for payload handler" forKey:v9];

  [v6 setDelegate:self];
  [v6 startPreflight];
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100073178;
  v11[3] = &unk_10011CA98;
  objc_copyWeak(&v13, &location);
  v10 = v7;
  v12 = v10;
  [(MCNewEASAccountPayloadHandler *)self setPreflightCompletionHandler:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (id)_getClientRestrictionsFromServerCertificatePersistentID:(id)a3 SMIMESigningIdentityPersistentID:(id)a4 SMIMEEncryptionIdentityPersistentID:(id)a5 outError:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_alloc(MCASPolicyPreflighterClass());
  v14 = [(MCNewEASAccountPayloadHandler *)self _accountFromPayloadWithUserInputResponses:0 identityPersistentID:v10 SMIMESigningIdentityPersistentID:v11 SMIMEEncryptionIdentityPersistentID:v12];
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
  if (a6)
  {
    *a6 = v34[5];
  }

  v20 = v28[5];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v20;
}

- (BOOL)stageForInstallationWithInstaller:(id)a3 interactionClient:(id)a4 outError:(id *)a5
{
  v6 = [(MCNewPayloadHandler *)self payload:a3];
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
    v12 = [(MCNewPayloadHandler *)self payload];
    v13 = [v12 UUID];
    [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:v9 andUUID:v13];
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
        v16 = [v6 profile];
        v40 = [v16 installType] != 2;

        v38 = [(MCNewPayloadHandler *)self profileHandler];
        v36 = [v38 profile];
        v17 = [v36 identifier];
        v18 = [(MCNewPayloadHandler *)self profileHandler];
        v19 = [v18 profile];
        v20 = [v19 UUID];
        v41 = [NSString stringWithFormat:@"%@-%@", v17, v20];

        v32 = +[MCRestrictionManagerWriter sharedManager];
        v35 = kEASAccountClientType;
        v34 = [v42 persistentUUID];
        v39 = [(MCNewPayloadHandler *)self payload];
        v37 = [v39 friendlyName];
        v31 = MCLocalizedFormat();
        v33 = [(MCNewPayloadHandler *)self payload];
        v21 = [v33 friendlyName];
        v22 = MCLocalizedFormat();
        v43 = 0;
        LOBYTE(v30) = 0;
        [v32 setClientRestrictions:v15 overrideRestrictions:0 appsAndOptions:0 system:v40 clientType:v35 clientUUID:v34 sender:v41 localizedClientDescription:v31 localizedWarning:v22 shouldRecomputeNag:v30 outRestrictionsChanged:0 outEffectiveSettingsChanged:0 outRecomputedNag:0 outError:&v43];
        v11 = v43;
      }

      else
      {
        v11 = 0;
      }
    }

    goto LABEL_18;
  }

  v14 = [v6 SMIMESigningIdentityUUID];
  v46 = 0;
  v8 = [(MCNewPayloadHandler *)self _temporaryPersistentIDForIdentityUUID:v14 outError:&v46];
  v11 = v46;

  if (v11)
  {
    v7 = 0;
    goto LABEL_18;
  }

  v23 = [v6 SMIMEEncryptionIdentityUUID];
  v45 = 0;
  v7 = [(MCNewPayloadHandler *)self _temporaryPersistentIDForIdentityUUID:v23 outError:&v45];
  v11 = v45;

  if (!v11)
  {
    goto LABEL_11;
  }

LABEL_18:
  if (v9)
  {
    v24 = [v6 UUID];
    [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v9 andUUID:v24];
  }

  if (!v11)
  {
    goto LABEL_24;
  }

  v25 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v26 = v25;
    v27 = [v11 MCVerboseDescription];
    *buf = 138543362;
    v49 = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Error retrieving server policy for account. Error: %{public}@", buf, 0xCu);
  }

  v28 = 0;
LABEL_25:

  return v28;
}

- (void)unstageFromInstallationWithInstaller:(id)a3
{
  if (![(MCNewEASAccountPayloadHandler *)self _isConfiguredWithSCEP])
  {
    v4 = [(MCNewPayloadHandler *)self payload];
    v5 = [(MCNewEASAccountPayloadHandler *)self _preflightTimePersistentIDForIdentityCertificateUserInputResponses:0 outError:0];
    v6 = 0;
    v7 = 0;
    if ([v4 SMIMEEnabled])
    {
      v8 = [v4 SMIMESigningIdentityUUID];
      v7 = [(MCNewPayloadHandler *)self _temporaryPersistentIDForIdentityUUID:v8 outError:0];

      v9 = [v4 SMIMEEncryptionIdentityUUID];
      v6 = [(MCNewPayloadHandler *)self _temporaryPersistentIDForIdentityUUID:v9 outError:0];
    }

    if (v5)
    {
      v10 = [v4 UUID];
      [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:v5 andUUID:v10];
    }

    v11 = [(MCNewEASAccountPayloadHandler *)self _accountFromPayloadWithUserInputResponses:0 identityPersistentID:v5 SMIMESigningIdentityPersistentID:v7 SMIMEEncryptionIdentityPersistentID:v6];
    v12 = [(MCNewPayloadHandler *)self payload];
    v13 = [v12 profile];
    v14 = [v13 installType];

    if (v11)
    {
      v30 = v14 != 2;
      v15 = [(MCNewPayloadHandler *)self profileHandler];
      [v15 profile];
      v31 = v11;
      v17 = v16 = v7;
      v18 = [v17 identifier];
      [(MCNewPayloadHandler *)self profileHandler];
      v19 = v33 = v4;
      [v19 profile];
      v20 = v32 = v6;
      v21 = [v20 UUID];
      v22 = [NSString stringWithFormat:@"%@-%@", v18, v21];

      v7 = v16;
      v11 = v31;

      v23 = +[MCRestrictionManagerWriter sharedManager];
      v24 = kEASAccountClientType;
      v25 = [v31 persistentUUID];
      LOBYTE(v29) = 1;
      v26 = v24;
      v4 = v33;
      [v23 setClientRestrictions:0 overrideRestrictions:0 appsAndOptions:0 system:v30 clientType:v26 clientUUID:v25 sender:v22 localizedClientDescription:0 localizedWarning:0 shouldRecomputeNag:v29 outRestrictionsChanged:0 outEffectiveSettingsChanged:0 outRecomputedNag:0 outError:0];

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
      v28 = [v4 UUID];
      [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v5 andUUID:v28];
    }
  }
}

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v75 = a3;
  v9 = a4;
  v73 = a5;
  v10 = [(MCNewPayloadHandler *)self payload];
  v93 = 0;
  v94 = &v93;
  v95 = 0x3032000000;
  v96 = sub_100072E1C;
  v97 = sub_100072E2C;
  v98 = 0;
  v11 = [v9 objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
  v12 = [v11 BOOLValue];

  if (!v12)
  {
    v76 = 0;
    goto LABEL_5;
  }

  v13 = kMDMPersonaKey;
  v14 = [v9 objectForKeyedSubscript:kMDMPersonaKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v76 = [v9 objectForKeyedSubscript:v13];
  }

  else
  {
    v76 = 0;
  }

  v15 = kMCInstallProfileOptionManagingProfileIdentifier;
  v16 = [v9 objectForKeyedSubscript:kMCInstallProfileOptionManagingProfileIdentifier];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v74 = 0;
    goto LABEL_11;
  }

  v17 = [v9 objectForKeyedSubscript:v15];

  if (!v17)
  {
LABEL_5:
    v74 = 0;
    goto LABEL_12;
  }

  v18 = +[ACAccountStore defaultStore];
  v19 = [v18 dmc_remoteManagementAccountForManagementProfileIdentifier:v17];

  v74 = [v19 identifier];

  v16 = v17;
LABEL_11:

LABEL_12:
  v20 = [v10 hostname];
  if (v20)
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
        v66 = [v10 UUID];
        [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v24 andUUID:v66];
      }

      if (v25)
      {
        v67 = [v10 UUID];
        [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v25 andUUID:v67];
      }

      if (v26)
      {
        v68 = [v10 UUID];
        [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v26 andUUID:v68];
      }

      goto LABEL_56;
    }

    if ([v10 SMIMEEnabled])
    {
      v27 = [(MCNewPayloadHandler *)self profileHandler];
      v28 = [v10 SMIMESigningIdentityUUID];
      v25 = [v27 persistentIDForCertificateUUID:v28];

      v29 = [(MCNewPayloadHandler *)self profileHandler];
      v30 = [v10 SMIMEEncryptionIdentityUUID];
      v26 = [v29 persistentIDForCertificateUUID:v30];
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
      if (v12)
      {
        [v34 setAccountBoolProperty:1 forKey:@"MCAccountIsManaged"];
        if (v74)
        {
          [v35 setAccountProperty:v74 forKey:ACAccountPropertyRemoteManagingAccountIdentifier];
        }
      }

      if ([v10 overridePreviousPassword])
      {
        v36 = [v35 backingAccountInfo];
        [v36 setAccountProperty:&__kCFBooleanFalse forKey:@"EASPayloadShouldPreserveOldPassword"];

        v37 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "EAS Payload asked to override old password", buf, 2u);
        }
      }

      else
      {
        v41 = [v35 backingAccountInfo];
        [v41 setAccountProperty:&__kCFBooleanTrue forKey:@"EASPayloadShouldPreserveOldPassword"];
      }

      v71 = +[MDMConfiguration sharedConfiguration];
      if (([v71 isUserEnrollment] & 1) != 0 || (objc_msgSend(v10, "profile"), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "isUserEnrollmentProfile"), v42, v43))
      {
        v44 = [v71 easEnrollmentID];
        v45 = MCkESExchangeDeviceID();
        [v35 setObject:v44 forKeyedSubscript:v45];

        v46 = MCkESExchangeAccountWipeOnly();
        [v35 setObject:&__kCFBooleanTrue forKeyedSubscript:v46];

        [v35 setAccountProperty:v76 forKey:ACAccountPropertyPersonaIdentifier];
        v47 = MCkESExchangeUserEnrollmentMode();
        [v35 setObject:&__kCFBooleanTrue forKeyedSubscript:v47];
      }

      v48 = [v35 backingAccountInfo];
      [(MCACAccountPayloadHandler *)self markIfUpdatingOverInstalledAccount:v48];

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
      v49 = [v75 setAsideAccountIdentifiersForPayloadClass:objc_opt_class()];
      if ([v49 count])
      {
        v50 = [v35 backingAccountInfo];
        v51 = +[DASharedAccountProperties DAAccountIdentifiersToIgnoreForUniquenessCheck];
        [v50 setAccountProperty:v49 forKey:v51];
      }

      v52 = sharedDAAccountStore();
      v53 = [v35 backingAccountInfo];
      v81[0] = _NSConcreteStackBlock;
      v81[1] = 3221225472;
      v81[2] = sub_100074868;
      v81[3] = &unk_10011C8E0;
      v81[4] = &v82;
      v81[5] = buf;
      [v52 canSaveAccount:v53 withCompletionHandler:v81];

      dispatch_semaphore_wait(*(v87 + 5), 0xFFFFFFFFFFFFFFFFLL);
      if (*(v83 + 24) == 1)
      {
        v54 = [v35 backingAccountInfo];
        [v54 setAuthenticated:1];

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
        v59 = [v58 MCCopyAsPrimaryError];
        v60 = v94[5];
        v94[5] = v59;
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

    v61 = [v35 backingAccountInfo];
    v62 = [v61 identifier];
    [v10 setAcAccountIdentifier:v62];

    if (v24)
    {
      v63 = [v10 UUID];
      [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:v24 andUUID:v63];
    }

    if (v25)
    {
      v64 = [v10 UUID];
      [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:v25 andUUID:v64];
    }

    if (v26)
    {
      v65 = [v10 UUID];
      [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:v26 andUUID:v65];
    }

    if (v94[5])
    {
      goto LABEL_50;
    }

LABEL_59:
    [v10 setCertificatePersistentID:v24];
    [v10 setSMIMESigningIdentityPersistentID:v25];
    [v10 setSMIMEEncryptionIdentityPersistentID:v26];
    v69 = 1;
    goto LABEL_60;
  }

  v21 = [v10 useOAuth];
  v22 = [v21 BOOLValue];

  if (v22)
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
  if (a6)
  {
    *a6 = v94[5];
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
  v2 = [(MCACAccountPayloadHandler *)self _installedDAAccount];
  v3 = v2 != 0;

  return v3;
}

- (void)setAsideWithInstaller:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MCNewEASAccountPayloadHandler;
  [(MCNewPayloadHandler *)&v12 setAsideWithInstaller:v4];
  v5 = [(MCACAccountPayloadHandler *)self _installedDAAccount];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 backingAccountInfo];
    [(MCACAccountPayloadHandler *)self setSetAsideAccount:v7];

    v8 = [v6 backingAccountInfo];
    v9 = [v8 credential];
    [(MCNewEASAccountPayloadHandler *)self setSetAsideAccountCredential:v9];

    [(MCNewEASAccountPayloadHandler *)self setSetAsideDAAccount:v6];
    v10 = [v6 backingAccountInfo];
    v11 = [v10 identifier];
    [v4 addSetAsideAccountIdentifier:v11 forPayloadClass:objc_opt_class()];
  }
}

- (void)unsetAside
{
  v14 = +[MDMCloudConfiguration sharedConfiguration];
  if ([v14 userMode] == 1)
  {
    v3 = [(MCACAccountPayloadHandler *)self setAsideAccount];

    if (v3)
    {
      v4 = [(MCACAccountPayloadHandler *)self _installedDAAccount];
      v5 = [(MCACAccountPayloadHandler *)self setAsideAccount];
      v6 = [v5 accountPropertyForKey:@"MCAccountIdentifer"];

      v7 = [v4 backingAccountInfo];
      v8 = [v7 accountPropertyForKey:@"MCAccountIdentifer"];

      if (v6 && (!v8 || ([v6 isEqualToString:v8] & 1) == 0))
      {
        v9 = [(MCACAccountPayloadHandler *)self setAsideAccount];
        [v9 markAllPropertiesDirty];
        v10 = dispatch_semaphore_create(0);
        v11 = sharedDAAccountStore();
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100074E18;
        v15[3] = &unk_10011C908;
        v16 = v9;
        v17 = v10;
        v12 = v10;
        v13 = v9;
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
  v3 = [(MCNewPayloadHandler *)self profileHandler];
  v4 = [v3 isSetAside];

  if (v4)
  {
    v54 = [(MCNewEASAccountPayloadHandler *)self setAsideDAAccount];
    v53 = [(MCNewEASAccountPayloadHandler *)self setAsideAccountCredential];
    v5 = +[MDMCloudConfiguration sharedConfiguration];
    v6 = [v5 userMode];

    if (v6 == 1)
    {
      v7 = [(MCACAccountPayloadHandler *)self _installedSetAsideACAccount];
      v8 = [(MCACAccountPayloadHandler *)self setAsideAccount];
      v9 = [v8 accountPropertyForKey:@"MCNativeAccountIdentifer"];
      v10 = [v7 accountPropertyForKey:@"MCNativeAccountIdentifer"];
      v11 = [v9 isEqualToString:v10];

      if (v11)
      {
        v52 = v7;
      }

      else
      {
        v14 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v63 = "[MCNewEASAccountPayloadHandler remove]";
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s On Shared iPad, and current payload doesn't own any ACAccount.", buf, 0xCu);
        }

        v52 = 0;
      }

      v13 = v11 ^ 1;
    }

    else
    {
      v52 = [v54 backingAccountInfo];
      v13 = 0;
    }
  }

  else
  {
    v12 = [(MCACAccountPayloadHandler *)self updatedOverInstalledAccount];
    v54 = [(MCACAccountPayloadHandler *)self _installedDAAccount];
    if (v12)
    {
      v13 = 0;
      v52 = 0;
      v53 = 0;
    }

    else
    {
      v52 = [v54 backingAccountInfo];
      v13 = 0;
      v53 = 0;
    }
  }

  if (v54)
  {
    if (v53)
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
      v17 = [v15 credential];
      v18 = [v16 backingAccountInfo];
      v19 = [v18 accountPropertyForKey:@"EASPayloadShouldPreserveOldPassword"];
      v20 = [v19 BOOLValue];

      v21 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
      {
        v22 = v21;
        v23 = [(MCNewEASAccountPayloadHandler *)self setAsideDAAccount];
        v24 = [v23 backingAccountInfo];
        *buf = 134219522;
        v63 = self;
        v64 = 2080;
        v65 = "[MCNewEASAccountPayloadHandler remove]";
        v66 = 2112;
        v67 = v53;
        v68 = 2112;
        v69 = v15;
        v70 = 1024;
        v71 = v20;
        v72 = 2112;
        v73 = v24;
        v74 = 1024;
        v75 = v13;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%p %s - accountCredential %@, installedAccount %@ shouldPreservePassword %d setAsideDAAccount %@ lostAccountOwnership %d", buf, 0x40u);
      }

      if ((v13 & v20 & 1) != 0 || (!v16 ? (v25 = 1) : (v25 = v13), (v25 & 1) == 0 && (-[MCNewEASAccountPayloadHandler setAsideDAAccount](self, "setAsideDAAccount"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v26 isConsideredTheSame:v16], v26, v27)))
      {
        v56[0] = _NSConcreteStackBlock;
        v56[1] = 3221225472;
        v56[2] = sub_100075768;
        v56[3] = &unk_10011CB10;
        v57 = v15;
        v61 = v20;
        v58 = v16;
        v59 = v53;
        v60 = v17;
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

    v28 = [(MCNewPayloadHandler *)self payload];
    v29 = [v28 certificatePersistentID];
    if (v29)
    {
      v30 = [v28 UUID];
      [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v29 andUUID:v30];
    }

    else
    {
      [v54 removeClientCertificateData];
    }

    v31 = [v28 SMIMESigningIdentityPersistentID];
    if (v31)
    {
      v32 = [v28 UUID];
      [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v31 andUUID:v32];
    }

    v33 = [v28 SMIMEEncryptionIdentityPersistentID];
    if (v33)
    {
      v34 = [v28 UUID];
      [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v33 andUUID:v34];
    }

    if (v52)
    {
      [MCFeatureOverrides accountRemovalTimeoutWithDefaultValue:600.0];
      [(MCACAccountPayloadHandler *)self _synchronouslyDeleteAccountAndAssociatedData:v52 timeout:v51 completion:?];
    }

    else if (v51)
    {
      (v51[2])(v51, 1, 0);
    }

    v35 = +[MCRestrictionManagerWriter sharedManager];
    v36 = [(MCNewPayloadHandler *)self payload];
    v37 = [v36 profile];
    v38 = [v37 installType];

    v39 = [(MCNewPayloadHandler *)self profileHandler];
    v40 = [v39 profile];
    v41 = [v40 identifier];
    v42 = [(MCNewPayloadHandler *)self profileHandler];
    v43 = [v42 profile];
    v44 = [v43 UUID];
    v45 = [NSString stringWithFormat:@"%@-%@", v41, v44];

    v46 = [v54 persistentUUID];
    v55 = 0;
    LOBYTE(v50) = 1;
    LOBYTE(v44) = [v35 setClientRestrictions:0 overrideRestrictions:0 appsAndOptions:0 system:v38 != 2 clientType:kEASAccountClientType clientUUID:v46 sender:v45 localizedClientDescription:0 localizedWarning:0 shouldRecomputeNag:v50 outRestrictionsChanged:0 outEffectiveSettingsChanged:0 outRecomputedNag:0 outError:&v55];
    v47 = v55;

    if ((v44 & 1) == 0)
    {
      v48 = _MCLogObjects[0];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = [v47 MCVerboseDescription];
        *buf = 138543618;
        v63 = self;
        v64 = 2114;
        v65 = v49;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Error removing client restrictions: %{public}@, %{public}@", buf, 0x16u);
      }
    }
  }
}

- (id)_installedACAccountOtherThanSelf
{
  v3 = [(MCNewPayloadHandler *)self profileHandler];
  v4 = [v3 isSetAside];

  if (v4)
  {
    v5 = [(MCACAccountPayloadHandler *)self installedACAccounts];
    v6 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Installed accounts %@", buf, 0xCu);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v5;
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
          v13 = [v12 identifier];
          v14 = [(MCACAccountPayloadHandler *)self setAsideAccount];
          v15 = [v14 identifier];
          v16 = [v13 isEqualToString:v15];

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

- (void)preflighterSuccessWithoutPolicyUpdate:(id)a3
{
  v4 = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];

  if (v4)
  {
    v5 = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];
    v5[2](v5, 0, 0);

    [(MCNewEASAccountPayloadHandler *)self setPreflightCompletionHandler:0];
  }
}

- (void)preflighter:(id)a3 needsComplianceWithMCFeatures:(id)a4 perAccountPolicies:(id)a5
{
  v8 = a4;
  v6 = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];

  if (v6)
  {
    v7 = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];
    (v7)[2](v7, v8, 0);

    [(MCNewEASAccountPayloadHandler *)self setPreflightCompletionHandler:0];
  }
}

- (void)preflighter:(id)a3 successWithMCFeatures:(id)a4 perAccountPolicies:(id)a5 policyKey:(id)a6
{
  v9 = a4;
  v7 = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];

  if (v7)
  {
    v8 = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];
    (v8)[2](v8, v9, 0);

    [(MCNewEASAccountPayloadHandler *)self setPreflightCompletionHandler:0];
  }
}

- (void)preflighterRemoteWipeRequested:(id)a3
{
  v4 = MCEASErrorDomain;
  v5 = MCErrorArray();
  v8 = [NSError MCErrorWithDomain:v4 code:21001 descriptionArray:v5 errorType:MCErrorTypeFatal, 0];

  v6 = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];

  if (v6)
  {
    v7 = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];
    (v7)[2](v7, 0, v8);

    [(MCNewEASAccountPayloadHandler *)self setPreflightCompletionHandler:0];
  }
}

- (void)preflighterRemoteWipeRequestResponseAcknowledged:(id)a3
{
  v4 = a3;
  v5 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "My policy preflighter is wigging out. %{public}@", &v8, 0xCu);
  }

  v6 = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];

  if (v6)
  {
    v7 = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];
    v7[2](v7, 0, 0);

    [(MCNewEASAccountPayloadHandler *)self setPreflightCompletionHandler:0];
  }
}

- (void)preflighterAccountOnlyRemoteWipeRequested:(id)a3
{
  v4 = a3;
  v5 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Account-only wipe requested by server.", buf, 2u);
  }

  v6 = MCEASErrorDomain;
  v7 = MCErrorArray();
  v8 = [NSError MCErrorWithDomain:v6 code:21008 descriptionArray:v7 errorType:MCErrorTypeFatal, 0];

  v9 = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];

  if (v9)
  {
    v10 = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];
    (v10)[2](v10, 0, v8);

    [(MCNewEASAccountPayloadHandler *)self setPreflightCompletionHandler:0];
  }
}

- (void)preflighterAccountOnlyRemoteWipeRequestResponseAcknowledged:(id)a3
{
  v4 = a3;
  v5 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v12 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Account is being wiped per server account-only wipe request. My policy preflighter is wigging out. %{public}@", buf, 0xCu);
  }

  v6 = MCEASErrorDomain;
  v7 = MCErrorArray();
  v8 = [NSError MCErrorWithDomain:v6 code:21008 descriptionArray:v7 errorType:MCErrorTypeFatal, 0];

  v9 = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];

  if (v9)
  {
    v10 = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];
    (v10)[2](v10, 0, v8);

    [(MCNewEASAccountPayloadHandler *)self setPreflightCompletionHandler:0];
  }
}

- (void)preflighter:(id)a3 error:(id)a4
{
  v8 = a4;
  v5 = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];

  if (v5)
  {
    v6 = [(MCNewEASAccountPayloadHandler *)self preflightCompletionHandler];
    v7 = [(MCNewEASAccountPayloadHandler *)self _errorFromPolicyPreflightError:v8];
    (v6)[2](v6, 0, v7);

    [(MCNewEASAccountPayloadHandler *)self setPreflightCompletionHandler:0];
  }
}

@end