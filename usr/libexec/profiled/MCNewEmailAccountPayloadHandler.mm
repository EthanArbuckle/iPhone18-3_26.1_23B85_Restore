@interface MCNewEmailAccountPayloadHandler
+ (id)MCACAccountIdentifierWithIncomingAccountInfo:(id)a3;
+ (id)MCACAccountIdentifierWithOutgoingAccountInfo:(id)a3;
+ (id)unhashedAccountIdentifierWithType:(id)a3 hostname:(id)a4 username:(id)a5;
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (BOOL)isInstalled;
- (BOOL)preflightUserInputResponses:(id)a3 outError:(id *)a4;
- (MCNewEmailAccountPayloadHandler)initWithPayload:(id)a3 profileHandler:(id)a4;
- (id)_authSchemeForAuthenticationMethod:(id)a3;
- (id)_errorFromValidationError:(id)a3;
- (id)_incomingAccountInfoDictionaryWithUserInput:(id)a3 isPreflight:(BOOL)a4 outError:(id *)a5;
- (id)_incomingAccountWithAccountInfo:(id)a3;
- (id)_installWithIncomingAccountInfo:(id)a3 outgoingAccountInfo:(id)a4 isInstalledByMDM:(BOOL)a5 personaID:(id)a6 rmAccountIdentifier:(id)a7;
- (id)_outgoingAccountInfoDictionaryWithUserInput:(id)a3;
- (id)_outgoingAccountWithAccountInfo:(id)a3;
- (id)_persistentIDForCertificateUUID:(id)a3 notFoundLocErrorString:(id)a4 badLocErrorString:(id)a5 outError:(id *)a6;
- (id)_removeAccountWithPersistentResourceID:(id)a3 fromArray:(id)a4 outArray:(id *)a5;
- (id)userInputFields;
- (void)_remove;
- (void)_removePersonaIDForMailAccountWithPersistentResourceID:(id)a3;
- (void)_validateIncomingAccountOnThread;
- (void)accountValidator:(id)a3 finishedValidationOfAccount:(id)a4 usedSSL:(BOOL)a5;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCNewEmailAccountPayloadHandler

- (MCNewEmailAccountPayloadHandler)initWithPayload:(id)a3 profileHandler:(id)a4
{
  v8.receiver = self;
  v8.super_class = MCNewEmailAccountPayloadHandler;
  v4 = [(MCNewPayloadHandler *)&v8 initWithPayload:a3 profileHandler:a4];
  if (v4)
  {
    v5 = [[NSConditionLock alloc] initWithCondition:0];
    validationLock = v4->_validationLock;
    v4->_validationLock = v5;
  }

  return v4;
}

- (id)userInputFields
{
  v3 = +[NSMutableArray array];
  v4 = [(MCNewPayloadHandler *)self payload];
  v5 = [v4 emailAccountName];

  if (!v5)
  {
    v6 = kMCEAPEmailAccountNameKey;
    v7 = MCLocalizedString();
    v8 = [v4 emailAccountDescription];
    v9 = MCLocalizedFormat();
    v10 = [MCNewPayloadHandler promptDictionaryForKey:v6 title:v7 description:v9 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:0 minimumLength:0 fieldType:6 flags:?];
    [v3 addObject:v10];
  }

  v11 = [v4 emailAddress];

  if (!v11)
  {
    v12 = kMCEAPEmailAddressKey;
    v13 = MCLocalizedString();
    v14 = [v4 displayName];
    v15 = MCLocalizedFormat();
    v16 = [MCNewPayloadHandler promptDictionaryForKey:v12 title:v13 description:v15 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:0 minimumLength:0 fieldType:2 flags:?];
    [v3 addObject:v16];
  }

  v17 = [v4 incomingMailServerUsername];

  if (!v17)
  {
    v18 = [v4 emailAccountDescription];
    if (v18)
    {
      [v4 emailAccountDescription];
    }

    else
    {
      [v4 incomingMailServerHostname];
    }
    v19 = ;
    v20 = MCLocalizedFormat();

    v21 = kMCEAPIncomingMailServerUsernameKey;
    v22 = MCLocalizedString();
    v23 = [MCNewPayloadHandler promptDictionaryForKey:v21 title:v22 description:v20 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:0 minimumLength:0 fieldType:0 flags:?];
    [v3 addObject:v23];
  }

  v24 = [v4 incomingMailServerAuthentication];
  v25 = kMCEmailAccountPayloadAuthenticationTypeNone;
  if (([v24 isEqualToString:kMCEmailAccountPayloadAuthenticationTypeNone] & 1) == 0)
  {
    v26 = [v4 incomingPassword];

    if (v26)
    {
      goto LABEL_17;
    }

    v27 = [v4 emailAccountDescription];
    if (v27)
    {
      [v4 emailAccountDescription];
    }

    else
    {
      [v4 incomingMailServerHostname];
    }
    v28 = ;
    v24 = MCLocalizedFormat();

    v29 = kMCEAPIncomingPasswordKey;
    v30 = MCLocalizedString();
    v31 = MCLocalizedString();
    v32 = [MCNewPayloadHandler promptDictionaryForKey:v29 title:v30 description:v24 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:v31 minimumLength:0 fieldType:3 flags:?];
    [v3 addObject:v32];
  }

LABEL_17:
  v33 = [v4 outgoingMailServerAuthentication];
  v34 = [v33 isEqualToString:v25];

  if (v34)
  {
    goto LABEL_32;
  }

  v35 = [v4 emailAccountDescription];
  if (v35)
  {
    [v4 emailAccountDescription];
  }

  else
  {
    [v4 outgoingMailServerHostname];
  }
  v49 = ;
  v36 = MCLocalizedFormat();

  v37 = [v4 outgoingMailServerUsername];

  if (!v37)
  {
    v38 = kMCEAPOutgoingMailServerUsernameKey;
    v39 = MCLocalizedString();
    v40 = [MCNewPayloadHandler promptDictionaryForKey:v38 title:v39 description:v36 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:0 minimumLength:0 fieldType:0 flags:?];
    [v3 addObject:v40];
  }

  v41 = [v4 outgoingPassword];
  if (v41)
  {
    v42 = v41;
LABEL_30:

    goto LABEL_31;
  }

  if (([v4 outgoingPasswordSameAsIncomingPassword] & 1) == 0)
  {
    v43 = [v4 emailAccountDescription];
    if (v43)
    {
      [v4 emailAccountDescription];
    }

    else
    {
      [v4 outgoingMailServerHostname];
    }
    v44 = ;
    v45 = MCLocalizedFormat();

    v46 = kMCEAPOutgoingPasswordKey;
    v42 = MCLocalizedString();
    v47 = [MCNewPayloadHandler promptDictionaryForKey:v46 title:v42 description:v45 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:0 minimumLength:0 fieldType:3 flags:?];
    [v3 addObject:v47];

    v36 = v45;
    goto LABEL_30;
  }

LABEL_31:

LABEL_32:

  return v3;
}

- (id)_authSchemeForAuthenticationMethod:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:kMCEmailAccountPayloadAuthenticationTypeCRAMMD5])
  {
    v4 = &MFAuthSchemeCramMd5;
LABEL_7:
    v5 = *v4;
    goto LABEL_8;
  }

  if ([v3 isEqualToString:kMCEmailAccountPayloadAuthenticationTypeNTLM])
  {
    v4 = &MFAuthSchemeNTLM;
    goto LABEL_7;
  }

  if ([v3 isEqualToString:kMCEmailAccountPayloadAuthenticationTypeHTTPMD5])
  {
    v4 = &MFAuthSchemeDigestMD5;
    goto LABEL_7;
  }

  v5 = &stru_10011E740;
LABEL_8:

  return v5;
}

- (id)_persistentIDForCertificateUUID:(id)a3 notFoundLocErrorString:(id)a4 badLocErrorString:(id)a5 outError:(id *)a6
{
  v10 = a4;
  v11 = a5;
  if (!a3)
  {
    v18 = 0;
    goto LABEL_13;
  }

  v12 = a3;
  v13 = [(MCNewPayloadHandler *)self profileHandler];
  v14 = [v13 persistentIDForCertificateUUID:v12];

  if (v14)
  {
    v15 = [(MCNewPayloadHandler *)self profileHandler];
    v16 = [v15 profile];
    v17 = +[MCKeychain copyIdentityWithPersistentID:useSystemKeychain:](MCKeychain, "copyIdentityWithPersistentID:useSystemKeychain:", v14, [v16 isInstalledForSystem]);

    if (v17)
    {
      CFRelease(v17);
      goto LABEL_11;
    }

    v27 = a6;
    v19 = 7004;
  }

  else
  {
    v27 = a6;
    v19 = 7003;
  }

  v20 = MCEmailErrorDomain;
  v21 = [(MCNewPayloadHandler *)self payload];
  v22 = [v21 friendlyName];
  v23 = MCErrorArray();
  v24 = [NSError MCErrorWithDomain:v20 code:v19 descriptionArray:v23 errorType:MCErrorTypeFatal, v22, 0];

  if (v24)
  {
    if (v27)
    {
      v25 = v24;
      v18 = 0;
      *v27 = v24;
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_12;
  }

LABEL_11:
  v18 = v14;
  v24 = 0;
LABEL_12:

LABEL_13:

  return v18;
}

+ (id)MCACAccountIdentifierWithIncomingAccountInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"MCNewEmailAccountPayloadHandlerAccountType"];
  v5 = [v3 objectForKey:MailAccountHostname];
  v6 = [v3 objectForKey:MFMailAccountUsername];

  v7 = [MCNewEmailAccountPayloadHandler unhashedAccountIdentifierWithType:v4 hostname:v5 username:v6];
  v8 = [v7 MCHashedIdentifier];

  return v8;
}

+ (id)MCACAccountIdentifierWithOutgoingAccountInfo:(id)a3
{
  v3 = MailAccountHostname;
  v4 = a3;
  v5 = [v4 objectForKey:v3];
  v6 = [v4 objectForKey:MFMailAccountUsername];

  v7 = [MCNewEmailAccountPayloadHandler unhashedAccountIdentifierWithType:@"smtp" hostname:v5 username:v6];
  v8 = [v7 MCHashedIdentifier];

  return v8;
}

+ (id)unhashedAccountIdentifierWithType:(id)a3 hostname:(id)a4 username:(id)a5
{
  v7 = a5;
  v8 = 0;
  if (a3)
  {
    if (a4)
    {
      v9 = [NSString stringWithFormat:@"%@|%@", a3, a4];
      v8 = v9;
      if (v7)
      {
        if (v9)
        {
          v10 = [v9 stringByAppendingFormat:@"|%@", v7];

          v8 = v10;
        }
      }
    }
  }

  return v8;
}

- (id)_incomingAccountInfoDictionaryWithUserInput:(id)a3 isPreflight:(BOOL)a4 outError:(id *)a5
{
  v70 = a4;
  v6 = a3;
  v7 = +[NSMutableDictionary dictionary];
  v8 = [(MCNewPayloadHandler *)self payload];
  v9 = kMCEAPEmailAddressKey;
  v10 = [v8 emailAddress];
  v11 = [MCNewPayloadHandler prioritizeUserInput:v6 key:v9 overField:v10];

  v12 = kMCEAPIncomingMailServerUsernameKey;
  v13 = [v8 incomingMailServerUsername];
  v76 = [MCNewPayloadHandler prioritizeUserInput:v6 key:v12 overField:v13];

  v14 = kMCEAPIncomingMailServerHostnameKey;
  v15 = [v8 incomingMailServerHostname];
  v16 = [MCNewPayloadHandler prioritizeUserInput:v6 key:v14 overField:v15];

  v17 = kMCEAPIncomingPasswordKey;
  v18 = [v8 incomingPassword];
  v75 = [MCNewPayloadHandler prioritizeUserInput:v6 key:v17 overField:v18];

  v19 = kMCEAPEmailAccountDescriptionKey;
  v20 = [v8 emailAccountDescription];
  v74 = [MCNewPayloadHandler prioritizeUserInput:v6 key:v19 overField:v20];

  v21 = kMCEAPEmailAccountNameKey;
  v22 = [v8 emailAccountName];
  v23 = [MCNewPayloadHandler prioritizeUserInput:v6 key:v21 overField:v22];

  if (v11)
  {
    v24 = [NSArray arrayWithObject:v11];
    [v7 MCSetObjectIfNotNil:v24 forKey:MailAccountEmailAddresses];
  }

  [v7 MCSetObjectIfNotNil:v76 forKey:MFMailAccountUsername];
  [v7 MCSetObjectIfNotNil:v16 forKey:MailAccountHostname];
  v25 = MailAccountPassword;
  [v7 MCSetObjectIfNotNil:v75 forKey:MailAccountPassword];
  [v7 MCSetObjectIfNotNil:v74 forKey:MFMailAccountDescription];
  v72 = v23;
  [v7 MCSetObjectIfNotNil:v23 forKey:MailAccountFullUserName];
  v26 = [v8 incomingMailServerPortNumber];
  [v7 MCSetObjectIfNotNil:v26 forKey:MailAccountPortNumber];

  if ([v8 incomingMailServerUseSSL])
  {
    v27 = [NSNumber numberWithInt:1];
    [v7 setObject:v27 forKey:MailAccountSSLEnabled];
  }

  if ([v8 preventMove])
  {
    v28 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 preventMove]);
    [v7 setObject:v28 forKey:MFMailAccountRestrictMessageTransfersToOtherAccounts];
  }

  if ([v8 preventAppSheet])
  {
    v29 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 preventAppSheet]);
    [v7 setObject:v29 forKey:MFMailAccountRestrictSendingFromExternalProcesses];
  }

  if ([v8 isRecentsSyncingDisabled])
  {
    v30 = [NSNumber numberWithBool:1];
    [v7 setObject:v30 forKey:MFMailAccountRestrictRecentsSyncing];
  }

  if ([v8 isMailDropEnabled])
  {
    v31 = [NSNumber numberWithBool:1];
    [v7 setObject:v31 forKey:MFMailAccountSupportsMailDrop];
  }

  v73 = v11;
  v32 = [v8 emailAccountType];
  v33 = [v32 isEqualToString:kMCEmailAccountPayloadTypeIMAP];

  if (v33)
  {
    v34 = @"imap";
  }

  else
  {
    v34 = @"pop";
  }

  [v7 setValue:v34 forKey:@"MCNewEmailAccountPayloadHandlerAccountType"];
  v35 = [v8 incomingMailServerAuthentication];
  v36 = [(MCNewEmailAccountPayloadHandler *)self _authSchemeForAuthenticationMethod:v35];
  [v7 setObject:v36 forKey:MFMailAccountAuthenticationScheme];

  v37 = [v7 objectForKey:v25];

  if (v37)
  {
    v38 = &__kCFBooleanTrue;
  }

  else
  {
    v38 = &__kCFBooleanFalse;
  }

  [v7 setObject:v38 forKey:ACAccountPropertyShouldNeverUseSyncableCredential];
  v39 = [v8 incomingMailServerIMAPPathPrefix];
  if (v39 && [(__CFString *)v34 isEqualToString:@"imap"])
  {
    [v7 setObject:v39 forKey:IMAPServerPathPrefix];
  }

  v40 = [MCNewEmailAccountPayloadHandler unhashedAccountIdentifierWithType:v34 hostname:v16 username:v76];
  v41 = [v8 profile];
  v42 = [v41 displayName];
  v43 = [NSString stringWithFormat:@"%@|%@", v40, v42];

  [v7 setObject:v43 forKey:MailAccountManagedTag];
  if (![v8 SMIMEEnabled])
  {
    v48 = 0;
    goto LABEL_52;
  }

  v44 = [v8 SMIMESigningIdentityUUID];

  if (v44)
  {
    v45 = [v8 SMIMESigningIdentityUUID];
    if (v70)
    {
      v80 = 0;
      v46 = &v80;
      v47 = [(MCNewPayloadHandler *)self _temporaryPersistentIDForIdentityUUID:v45 outError:&v80];
    }

    else
    {
      v79 = 0;
      v46 = &v79;
      v47 = [(MCNewEmailAccountPayloadHandler *)self _persistentIDForCertificateUUID:v45 notFoundLocErrorString:@"EMAIL_ERROR_SMIME_SIGNING_CERT_NOT_FOUND_P_PAYLOAD" badLocErrorString:@"EMAIL_ERROR_SMIME_SIGNING_CERT_BAD_P_PAYLOAD" outError:&v79];
    }

    v49 = v47;
    v48 = *v46;

    if (v48)
    {
      goto LABEL_51;
    }

    if (!v49)
    {
      v61 = MCEmailErrorDomain;
      v52 = [(MCNewPayloadHandler *)self payload];
      v69 = [v52 friendlyName];
      v57 = MCErrorArray();
      v48 = [NSError MCErrorWithDomain:v61 code:7003 descriptionArray:v57 errorType:MCErrorTypeFatal, v69, 0];
      goto LABEL_50;
    }

    [v7 setObject:v49 forKey:@"MCSMIMESigningIdentityPersistentID"];
  }

  v49 = [v8 SMIMESigningEnabled];
  if (v49)
  {
    [v7 setObject:v49 forKey:MFMailAccountSigningEnabled];
  }

  else
  {
    v50 = [v8 SMIMESigningIdentityUUID];

    if (v50)
    {
      v51 = [NSNumber numberWithBool:1];
      [v7 setObject:v51 forKey:MFMailAccountSigningEnabled];
    }
  }

  v52 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 SMIMESigningUserOverrideable]);
  [v7 setObject:v52 forKey:MFMailAccountSigningUserOverrideable];
  v69 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 SMIMESigningIdentityUserOverrideable]);
  [v7 setObject:? forKey:?];
  v53 = [v8 SMIMEEncryptionIdentityUUID];

  if (!v53)
  {
LABEL_42:
    v57 = [v8 SMIMEEncryptionEnabled];
    if (v57)
    {
      [v7 setObject:v57 forKey:MFMailAccountEncryptionEnabled];
    }

    else
    {
      v58 = [v8 SMIMEEncryptionIdentityUUID];

      if (v58)
      {
        v59 = [NSNumber numberWithBool:1];
        [v7 setObject:v59 forKey:MFMailAccountEncryptionEnabled];
      }
    }

    if ([v8 SMIMEEncryptByDefaultUserOverrideable])
    {
      [v7 setObject:&__kCFBooleanTrue forKey:MFMailAccountEncryptByDefaultUserOverrideable];
    }

    v60 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 SMIMEEncryptionIdentityUserOverrideable]);
    [v7 setObject:v60 forKey:MFMailAccountEncryptionIdentityUserOverrideable];

    v48 = 0;
    goto LABEL_50;
  }

  v68 = v52;
  v54 = [v8 SMIMEEncryptionIdentityUUID];
  if (v70)
  {
    v78 = 0;
    v55 = &v78;
    v56 = [(MCNewPayloadHandler *)self _temporaryPersistentIDForIdentityUUID:v54 outError:&v78];
  }

  else
  {
    v77 = 0;
    v55 = &v77;
    v56 = [(MCNewEmailAccountPayloadHandler *)self _persistentIDForCertificateUUID:v54 notFoundLocErrorString:@"EMAIL_ERROR_SMIME_ENCRYPTION_CERT_NOT_FOUND_P_PAYLOAD" badLocErrorString:@"EMAIL_ERROR_SMIME_ENCRYPTION_CERT_BAD_P_PAYLOAD" outError:&v77];
  }

  v57 = v56;
  v48 = *v55;

  if (!v48)
  {
    [v7 setObject:v57 forKey:@"MCSMIMEEncryptionIdentityPersistentID"];

    v52 = v68;
    goto LABEL_42;
  }

  v52 = v68;
LABEL_50:

LABEL_51:
LABEL_52:

  if (v48)
  {
    v62 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v63 = v62;
      v64 = [v48 MCVerboseDescription];
      *buf = 138543362;
      v82 = v64;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Cannot create incoming account dictionary. Error: %{public}@", buf, 0xCu);
    }

    if (a5)
    {
      v65 = v48;
      v66 = 0;
      *a5 = v48;
    }

    else
    {
      v66 = 0;
    }
  }

  else
  {
    v66 = v7;
  }

  return v66;
}

- (id)_incomingAccountWithAccountInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"MCNewEmailAccountPayloadHandlerAccountType"];
  v6 = [v5 isEqualToString:@"imap"];
  v7 = IMAPAccount_ptr;
  if (!v6)
  {
    v7 = POPAccount_ptr;
  }

  v8 = *v7;
  v9 = objc_opt_class();
  v10 = +[MDMCloudConfiguration sharedConfiguration];
  v11 = [v10 userMode];

  if (v11 == 1)
  {
    v47 = v5;
    v12 = +[ACAccountStore defaultStore];
    v13 = v12;
    v14 = &ACAccountTypeIdentifierIMAP;
    if (!v6)
    {
      v14 = &ACAccountTypeIdentifierPOP;
    }

    v15 = [v12 accountTypeWithAccountTypeIdentifier:*v14];
    v16 = [[ACAccount alloc] initWithAccountType:v15];
    [v16 setManagingOwnerIdentifier:kMCAccountManagingOwnerIdentifier];
    v17 = [(MCNewPayloadHandler *)self payload];
    v18 = [v17 friendlyName];
    [v16 setManagingSourceName:v18];

    v19 = [MCNewEmailAccountPayloadHandler MCACAccountIdentifierWithIncomingAccountInfo:v4];
    if (v19)
    {
      v20 = [v16 identifier];
      [v16 setAccountProperty:v20 forKey:@"MCAccountIdentifer"];

      [v16 setIdentifier:v19];
    }

    v21 = [v13 supportedDataclassesForAccountType:{v15, v13}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v22 = [v21 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v53;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v53 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [v16 setProvisioned:1 forDataclass:*(*(&v52 + 1) + 8 * i)];
        }

        v23 = [v21 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v23);
    }

    [v16 setAuthenticated:1];
    v26 = [v4 mutableCopy];
    v27 = NSStringFromClass(v9);
    [v26 setObject:v27 forKey:MFMailAccountClass];

    v28 = [[v9 alloc] initWithPersistentAccount:v16];
    [v28 _setAccountProperties:v26];

    v5 = v47;
  }

  else
  {
    v28 = [(objc_class *)v9 newAccountWithDictionary:v4];
    v29 = kMCAccountManagingOwnerIdentifier;
    v30 = [v28 persistentAccount];
    [v30 setManagingOwnerIdentifier:v29];

    v31 = [(MCNewPayloadHandler *)self payload];
    v32 = [v31 friendlyName];
    v33 = [v28 persistentAccount];
    [v33 setManagingSourceName:v32];
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v34 = [v28 persistentAccount];
  v35 = [v34 provisionedDataclasses];

  v36 = [v35 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v49;
    do
    {
      for (j = 0; j != v37; j = j + 1)
      {
        if (*v49 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v48 + 1) + 8 * j);
        v41 = [v28 persistentAccount];
        [v41 setEnabled:1 forDataclass:v40];
      }

      v37 = [v35 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v37);
  }

  v42 = [v28 persistentAccount];
  v43 = [v42 identifier];
  incomingACAccountIdentifier = self->_incomingACAccountIdentifier;
  self->_incomingACAccountIdentifier = v43;

  return v28;
}

- (id)_outgoingAccountInfoDictionaryWithUserInput:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)self payload];
  v6 = +[NSMutableDictionary dictionary];
  v7 = kMCEAPOutgoingMailServerUsernameKey;
  v8 = [v5 outgoingMailServerUsername];
  v9 = [MCNewPayloadHandler prioritizeUserInput:v4 key:v7 overField:v8];

  v10 = kMCEAPOutgoingMailServerHostnameKey;
  v11 = [v5 outgoingMailServerHostname];
  v12 = [MCNewPayloadHandler prioritizeUserInput:v4 key:v10 overField:v11];

  v13 = kMCEAPIncomingPasswordKey;
  v14 = [v5 incomingPassword];
  v15 = [MCNewPayloadHandler prioritizeUserInput:v4 key:v13 overField:v14];

  v16 = kMCEAPOutgoingPasswordKey;
  v17 = [v5 outgoingPassword];
  v18 = [MCNewPayloadHandler prioritizeUserInput:v4 key:v16 overField:v17];

  [v6 MCSetObjectIfNotNil:v9 forKey:MFMailAccountUsername];
  [v6 MCSetObjectIfNotNil:v12 forKey:MailAccountHostname];
  v19 = [v5 outgoingMailServerPortNumber];
  [v6 MCSetObjectIfNotNil:v19 forKey:MailAccountPortNumber];

  if (v15 && [v5 outgoingPasswordSameAsIncomingPassword])
  {
    v20 = MailAccountPassword;
    v21 = v6;
    v22 = v15;
  }

  else
  {
    v20 = MailAccountPassword;
    if (!v18)
    {
      goto LABEL_7;
    }

    v21 = v6;
    v22 = v18;
  }

  [v21 setObject:v22 forKey:v20];
LABEL_7:
  v23 = [v5 outgoingMailServerAuthentication];
  v24 = [(MCNewEmailAccountPayloadHandler *)self _authSchemeForAuthenticationMethod:v23];
  [v6 setObject:v24 forKey:MFMailAccountAuthenticationScheme];

  v25 = [v6 objectForKey:v20];

  if (v25)
  {
    v26 = &__kCFBooleanTrue;
  }

  else
  {
    v26 = &__kCFBooleanFalse;
  }

  [v6 setObject:v26 forKey:ACAccountPropertyShouldNeverUseSyncableCredential];
  v27 = [MCNewEmailAccountPayloadHandler unhashedAccountIdentifierWithType:@"smtp" hostname:v12 username:v9];
  v28 = [v5 profile];
  v29 = [v28 displayName];
  v30 = [NSString stringWithFormat:@"%@|%@", v27, v29];

  [v6 setObject:v30 forKey:MailAccountManagedTag];
  v31 = [v5 outgoingMailServerAuthentication];
  LOBYTE(v29) = [v31 isEqualToString:kMCEmailAccountPayloadAuthenticationTypeNone];

  if ((v29 & 1) == 0)
  {
    v32 = [NSNumber numberWithInt:1];
    [v6 setObject:v32 forKey:DeliveryAccountShouldUseAuthentication];
  }

  if ([v5 outgoingMailServerUseSSL])
  {
    v33 = [NSNumber numberWithInt:1];
    [v6 setObject:v33 forKey:MailAccountSSLEnabled];
  }

  return v6;
}

- (id)_outgoingAccountWithAccountInfo:(id)a3
{
  v4 = a3;
  v5 = +[MDMCloudConfiguration sharedConfiguration];
  v6 = [v5 userMode];

  if (v6 == 1)
  {
    v7 = +[ACAccountStore defaultStore];
    v8 = [v7 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierSMTP];
    v9 = [[ACAccount alloc] initWithAccountType:v8];
    [v9 setManagingOwnerIdentifier:kMCAccountManagingOwnerIdentifier];
    v10 = [(MCNewPayloadHandler *)self payload];
    v11 = [v10 friendlyName];
    [v9 setManagingSourceName:v11];

    v12 = [MCNewEmailAccountPayloadHandler MCACAccountIdentifierWithOutgoingAccountInfo:v4];
    if (v12)
    {
      v13 = [v9 identifier];
      [v9 setAccountProperty:v13 forKey:@"MCAccountIdentifer"];

      [v9 setIdentifier:v12];
    }

    v14 = [v7 supportedDataclassesForAccountType:v8];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [v9 setProvisioned:1 forDataclass:*(*(&v29 + 1) + 8 * i)];
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v16);
    }

    [v9 setAuthenticated:1];
    v19 = [v4 mutableCopy];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [v19 setObject:v21 forKey:MFMailAccountClass];

    v22 = [[SMTPAccount alloc] initWithPersistentAccount:v9];
    [v22 _setAccountProperties:v19];
  }

  else
  {
    v22 = [SMTPAccount newAccountWithDictionary:v4];
    v23 = kMCAccountManagingOwnerIdentifier;
    v24 = [v22 persistentAccount];
    [v24 setManagingOwnerIdentifier:v23];

    v7 = [(MCNewPayloadHandler *)self payload];
    v8 = [v7 friendlyName];
    v9 = [v22 persistentAccount];
    [v9 setManagingSourceName:v8];
  }

  v25 = [v22 persistentAccount];
  v26 = [v25 identifier];
  outgoingACAccountIdentifier = self->_outgoingACAccountIdentifier;
  self->_outgoingACAccountIdentifier = v26;

  return v22;
}

- (void)_validateIncomingAccountOnThread
{
  v3 = objc_autoreleasePoolPush();
  self->_validationResult = 0;
  self->_validationDone = 0;
  v4 = objc_alloc_init(MFAccountValidator);
  [v4 setDelegate:self];
  [v4 validateAccount:self->_incomingAccount useSSL:self->_incomingAccountUsesSSL];
  while (!self->_validationDone)
  {
    v5 = [[NSDate alloc] initWithTimeIntervalSinceNow:0.3];
    v6 = +[NSRunLoop currentRunLoop];
    [v6 runUntilDate:v5];
  }

  [(NSConditionLock *)self->_validationLock lockWhenCondition:1];
  [(NSConditionLock *)self->_validationLock unlockWithCondition:2];

  objc_autoreleasePoolPop(v3);
}

- (id)_errorFromValidationError:(id)a3
{
  if (!a3)
  {
    v8 = 0;
    goto LABEL_15;
  }

  v3 = a3;
  v4 = [v3 code];
  v5 = MCErrorTypeSkippable;
  if ((v4 - 1043) >= 3)
  {
    if (v4 == 1030)
    {
      v7 = 7002;
      goto LABEL_10;
    }

    v6 = &MCErrorTypeFatal;
    if (v4 == 1032)
    {
      v6 = &MCErrorTypeRetryable;
      v7 = 7001;
    }

    else
    {
      v7 = 7002;
    }
  }

  else
  {
    v6 = &MCErrorTypeRetryable;
    v7 = 7000;
  }

  v9 = *v6;

  v5 = v9;
LABEL_10:
  v10 = [v3 localizedDescription];

  if (!v10)
  {
    v11 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Validation error %u does not have a description.", buf, 8u);
    }

    v10 = MCLocalizedFormat();
  }

  v12 = MCEmailErrorDomain;
  v13 = MCErrorArrayFromLocalizedDescription();
  v8 = [NSError MCErrorWithDomain:v12 code:v7 descriptionArray:v13 errorType:v5];

LABEL_15:

  return v8;
}

- (void)accountValidator:(id)a3 finishedValidationOfAccount:(id)a4 usedSSL:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  if (![v7 accountIsValid])
  {
    self->_validationResult = 0;
    if (self->_incomingAccount == v8)
    {
      v15 = _MCLogObjects[0];
      if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      v11 = v15;
      v12 = [v7 error];
      v13 = [v12 MCVerboseDescription];
      v19 = 138543362;
      v20 = v13;
      v14 = "Error validating incoming server information: %{public}@";
    }

    else
    {
      if (self->_outgoingAccount != v8)
      {
        goto LABEL_13;
      }

      v10 = _MCLogObjects[0];
      if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      v11 = v10;
      v12 = [v7 error];
      v13 = [v12 MCVerboseDescription];
      v19 = 138543362;
      v20 = v13;
      v14 = "Error validating outgoing server information: %{public}@";
    }

    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v14, &v19, 0xCu);

    goto LABEL_13;
  }

  outgoingAccount = self->_outgoingAccount;
  if (self->_incomingAccount == v8)
  {
    [v7 validateAccount:outgoingAccount useSSL:self->_outgoingAccountUsesSSL];
    goto LABEL_16;
  }

  if (outgoingAccount == v8)
  {
    self->_validationResult = 1;
LABEL_13:
    if (!self->_validationResult)
    {
      v16 = [v7 error];
      v17 = [(MCNewEmailAccountPayloadHandler *)self _errorFromValidationError:v16];
      validationError = self->_validationError;
      self->_validationError = v17;
    }

    self->_validationDone = 1;
  }

LABEL_16:
}

- (BOOL)preflightUserInputResponses:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = [(MCNewPayloadHandler *)self payload];
  v46 = 0;
  v8 = [(MCNewEmailAccountPayloadHandler *)self _incomingAccountInfoDictionaryWithUserInput:v6 isPreflight:1 outError:&v46];
  v9 = v46;
  if (v9)
  {
    v10 = v9;

    goto LABEL_18;
  }

  v11 = [(MCNewEmailAccountPayloadHandler *)self _outgoingAccountInfoDictionaryWithUserInput:v6];
  v12 = [(MCNewEmailAccountPayloadHandler *)self _incomingAccountWithAccountInfo:v8];
  incomingAccount = self->_incomingAccount;
  self->_incomingAccount = v12;

  self->_incomingAccountUsesSSL = [v7 incomingMailServerUseSSL];
  v14 = [(MCNewEmailAccountPayloadHandler *)self _outgoingAccountWithAccountInfo:v11];
  outgoingAccount = self->_outgoingAccount;
  self->_outgoingAccount = v14;

  self->_outgoingAccountUsesSSL = [v7 outgoingMailServerUseSSL];
  if (!self->_incomingAccount)
  {
    v31 = [v7 emailAccountType];
    v32 = [v31 isEqualToString:kMCEmailAccountPayloadTypeIMAP];

    v33 = MCEmailErrorDomain;
    v29 = [v7 emailAccountDescription];
    v45 = v29;
    MCErrorArray();
    if (v32)
      v34 = {;
      v35 = MCErrorTypeFatal;
      v36 = v33;
      v37 = 7005;
    }

    else
      v34 = {;
      v35 = MCErrorTypeFatal;
      v36 = v33;
      v37 = 7006;
    }

    goto LABEL_16;
  }

  if (!self->_outgoingAccount)
  {
    v38 = MCEmailErrorDomain;
    v29 = [v7 emailAccountDescription];
    v45 = v29;
    v34 = MCErrorArray();
    v35 = MCErrorTypeFatal;
    v36 = v38;
    v37 = 7007;
LABEL_16:
    v10 = [NSError MCErrorWithDomain:v36 code:v37 descriptionArray:v34 errorType:v35, v45, 0];

    goto LABEL_17;
  }

  v16 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    v17 = v16;
    v18 = [v7 emailAccountDescription];
    *buf = 138543362;
    v48 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Validating account “%{public}@”", buf, 0xCu);
  }

  [(NSConditionLock *)self->_validationLock lock];
  [(NSConditionLock *)self->_validationLock unlockWithCondition:1];
  v19 = [[NSThread alloc] initWithTarget:self selector:"_validateIncomingAccountOnThread" object:0];
  validationThread = self->_validationThread;
  self->_validationThread = v19;

  [(NSThread *)self->_validationThread start];
  [(NSConditionLock *)self->_validationLock lockWhenCondition:2];
  [(NSConditionLock *)self->_validationLock unlock];
  v21 = self->_validationThread;
  self->_validationThread = 0;

  v22 = self->_incomingAccount;
  self->_incomingAccount = 0;

  v23 = self->_outgoingAccount;
  self->_outgoingAccount = 0;

  v24 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    v25 = v24;
    v26 = [v7 emailAccountDescription];
    validationResult = self->_validationResult;
    v28 = MCStringForBool();
    *buf = 138543618;
    v48 = v26;
    v49 = 2114;
    v50 = v28;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Validation of account “%{public}@” done. Result: %{public}@", buf, 0x16u);
  }

  v29 = self->_validationError;
  validationError = self->_validationError;
  self->_validationError = 0;

  if (self->_validationResult)
  {
    v10 = 0;
  }

  else
  {
    v29 = v29;
    v10 = v29;
  }

LABEL_17:

  if (!v10)
  {
    v43 = 1;
    goto LABEL_24;
  }

LABEL_18:
  v39 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v40 = v39;
    v41 = [v10 MCVerboseDescription];
    *buf = 138543362;
    v48 = v41;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Account validation failed. Error: %{public}@", buf, 0xCu);
  }

  if (a4)
  {
    v42 = v10;
    v43 = 0;
    *a4 = v10;
  }

  else
  {
    v43 = 0;
  }

LABEL_24:

  return v43;
}

- (id)_installWithIncomingAccountInfo:(id)a3 outgoingAccountInfo:(id)a4 isInstalledByMDM:(BOOL)a5 personaID:(id)a6 rmAccountIdentifier:(id)a7
{
  v74 = a5;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v73 = a7;
  v78 = v11;
  v14 = [(MCNewEmailAccountPayloadHandler *)self _incomingAccountWithAccountInfo:v11];
  v15 = [(MCNewPayloadHandler *)self payload];
  v16 = [v15 profile];
  v17 = [v16 UUID];
  v18 = kMCAccountProfileUUIDKey;
  [v14 setAccountProperty:v17 forKey:kMCAccountProfileUUIDKey];

  v19 = [(MCNewPayloadHandler *)self payload];
  v20 = [v19 UUID];
  v21 = kMCAccountPayloadUUIDKey;
  [v14 setAccountProperty:v20 forKey:kMCAccountPayloadUUIDKey];

  v22 = [(MCNewPayloadHandler *)self payload];
  v23 = [v22 profile];
  v24 = [v23 identifier];
  v25 = ACAccountPropertyConfigurationProfileIdentifier;
  [v14 setAccountProperty:v24 forKey:ACAccountPropertyConfigurationProfileIdentifier];

  v77 = v12;
  v26 = [(MCNewEmailAccountPayloadHandler *)self _outgoingAccountWithAccountInfo:v12];
  v27 = [(MCNewPayloadHandler *)self payload];
  v28 = [v27 profile];
  v29 = [v28 UUID];
  [v26 setAccountProperty:v29 forKey:v18];

  v30 = v13;
  v31 = [(MCNewPayloadHandler *)self payload];
  v32 = [v31 UUID];
  [v26 setAccountProperty:v32 forKey:v21];

  v33 = [(MCNewPayloadHandler *)self payload];
  v34 = [v33 profile];
  v35 = [v34 identifier];
  [v26 setAccountProperty:v35 forKey:v25];

  [v14 setDeliveryAccount:v26];
  v36 = +[MailAccount mailAccounts];
  v37 = [v36 mutableCopy];

  [v37 addObject:v14];
  v72 = v37;
  if ([v13 length])
  {
    v38 = ACAccountPropertyPersonaIdentifier;
    [v14 setAccountProperty:v13 forKey:ACAccountPropertyPersonaIdentifier];
    [v26 setAccountProperty:v13 forKey:v38];
    v91[0] = _NSConcreteStackBlock;
    v91[1] = 3221225472;
    v91[2] = sub_100029FFC;
    v91[3] = &unk_10011B688;
    v92 = v37;
    v39 = [DMCPersonaHelper performBlockUnderPersona:v13 block:v91];
  }

  else
  {
    [MailAccount setMailAccounts:v37];
  }

  v40 = v73;
  if (v73)
  {
    v41 = ACAccountPropertyRemoteManagingAccountIdentifier;
    [v14 setAccountProperty:v73 forKey:ACAccountPropertyRemoteManagingAccountIdentifier];
    [v26 setAccountProperty:v73 forKey:v41];
  }

  v42 = [(MCNewPayloadHandler *)self payload];
  if (v74)
  {
    [v14 setValueInAccountProperties:&__kCFBooleanTrue forKey:@"MCAccountIsManaged"];
  }

  if ([v42 SMIMEEnabled])
  {
    v43 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v42 SMIMEPerMessageSwitchEnabled]);
    [v14 setAccountProperty:v43 forKey:MFMailAccountPerMessageEncryptionEnabled];
  }

  if ([v13 length])
  {
    v89[0] = _NSConcreteStackBlock;
    v89[1] = 3221225472;
    v89[2] = sub_10002A010;
    v89[3] = &unk_10011B688;
    v90 = v14;
    v44 = [DMCPersonaHelper performBlockUnderPersona:v13 block:v89];
  }

  else
  {
    [v14 savePersistentAccount];
  }

  [DeliveryAccount addDeliveryAccount:v26];
  if (v74)
  {
    [v26 setValueInAccountProperties:&__kCFBooleanTrue forKey:@"MCAccountIsManaged"];
  }

  if ([v42 SMIMEEnabled])
  {
    v45 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v42 SMIMEPerMessageSwitchEnabled]);
    [v26 setAccountProperty:v45 forKey:MFMailAccountPerMessageEncryptionEnabled];
  }

  if ([v13 length])
  {
    v87[0] = _NSConcreteStackBlock;
    v87[1] = 3221225472;
    v87[2] = sub_10002A018;
    v87[3] = &unk_10011B688;
    v88 = v26;
    v46 = [DMCPersonaHelper performBlockUnderPersona:v13 block:v87];
  }

  else
  {
    [v26 savePersistentAccount];
  }

  v47 = v78;
  if ([v42 SMIMEEnabled])
  {
    v75 = v30;
    v48 = [v78 objectForKey:@"MCSMIMESigningIdentityPersistentID"];
    if (v48)
    {
      v49 = v42;
      v50 = [v78 objectForKey:MailAccountEmailAddresses];
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v51 = [v50 countByEnumeratingWithState:&v83 objects:v96 count:16];
      if (v51)
      {
        v52 = v51;
        v53 = *v84;
        do
        {
          for (i = 0; i != v52; i = i + 1)
          {
            if (*v84 != v53)
            {
              objc_enumerationMutation(v50);
            }

            [v14 setSigningIdentityPersistentReference:v48 forAddress:*(*(&v83 + 1) + 8 * i)];
          }

          v52 = [v50 countByEnumeratingWithState:&v83 objects:v96 count:16];
        }

        while (v52);
      }

      v42 = v49;
      [v49 setSMIMESigningIdentityPersistentID:v48];

      v47 = v78;
    }

    v55 = [v47 objectForKey:@"MCSMIMEEncryptionIdentityPersistentID"];
    if (v55)
    {
      v71 = v42;
      v56 = [v47 objectForKey:MailAccountEmailAddresses];
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v57 = [v56 countByEnumeratingWithState:&v79 objects:v95 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v80;
        do
        {
          for (j = 0; j != v58; j = j + 1)
          {
            if (*v80 != v59)
            {
              objc_enumerationMutation(v56);
            }

            [v14 setEncryptionIdentityPersistentReference:v55 forAddress:*(*(&v79 + 1) + 8 * j)];
          }

          v58 = [v56 countByEnumeratingWithState:&v79 objects:v95 count:16];
        }

        while (v58);
      }

      v42 = v71;
      [v71 setSMIMEEncryptionIdentityPersistentID:v55];

      v47 = v78;
    }

    v30 = v75;
  }

  v93[0] = @"IncomingAccountInfo";
  v93[1] = @"OutgoingAccountInfo";
  v94[0] = v47;
  v94[1] = v77;
  v61 = [NSDictionary dictionaryWithObjects:v94 forKeys:v93 count:2];
  v62 = [NSPropertyListSerialization dataWithPropertyList:v61 format:200 options:0 error:0];
  if (v62)
  {
    [(MCNewPayloadHandler *)self payload];
    v76 = v26;
    v64 = v63 = v42;
    [v64 UUID];
    v66 = v65 = v30;
    v67 = [(MCNewPayloadHandler *)self profileHandler];
    v68 = [v67 profile];
    +[MCKeychain setData:forService:account:label:description:useSystemKeychain:outError:](MCKeychain, "setData:forService:account:label:description:useSystemKeychain:outError:", v62, @"MCEmailAccount", v66, 0, 0, [v68 isInstalledForSystem], 0);

    v47 = v78;
    v30 = v65;
    v40 = v73;

    v42 = v63;
    v26 = v76;
  }

  v69 = [v14 accountPropertyForKey:MailAccountManagedTag];

  return v69;
}

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v8 = a4;
  v9 = [v8 objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
  v10 = [v9 BOOLValue];

  if (!v10)
  {
    v13 = 0;
    goto LABEL_5;
  }

  v11 = kMDMPersonaKey;
  v12 = [v8 objectForKeyedSubscript:kMDMPersonaKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v8 objectForKeyedSubscript:v11];
  }

  else
  {
    v13 = 0;
  }

  v15 = kMCInstallProfileOptionManagingProfileIdentifier;
  v16 = [v8 objectForKeyedSubscript:kMCInstallProfileOptionManagingProfileIdentifier];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = 0;
    goto LABEL_11;
  }

  v17 = [v8 objectForKeyedSubscript:v15];

  if (!v17)
  {
LABEL_5:
    v14 = 0;
    goto LABEL_12;
  }

  v18 = +[ACAccountStore defaultStore];
  v19 = [v18 dmc_remoteManagementAccountForManagementProfileIdentifier:v17];

  v14 = [v19 identifier];

  v16 = v17;
LABEL_11:

LABEL_12:
  v20 = [(MCNewPayloadHandler *)self userInputResponses];
  v32 = 0;
  v21 = [(MCNewEmailAccountPayloadHandler *)self _incomingAccountInfoDictionaryWithUserInput:v20 isPreflight:0 outError:&v32];
  v22 = v32;

  if (v22)
  {

    v23 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v24 = v23;
      v25 = [(MCNewPayloadHandler *)self payload];
      v26 = [v25 friendlyName];
      *buf = 138543618;
      v34 = v26;
      v35 = 2114;
      v36 = v22;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Could not install email payload %{public}@. Error: %{public}@", buf, 0x16u);
    }

    if (a6)
    {
      *a6 = [v22 MCCopyAsPrimaryError];
    }
  }

  else
  {
    v27 = [(MCNewPayloadHandler *)self userInputResponses];
    v28 = [(MCNewEmailAccountPayloadHandler *)self _outgoingAccountInfoDictionaryWithUserInput:v27];

    v29 = [(MCNewEmailAccountPayloadHandler *)self _installWithIncomingAccountInfo:v21 outgoingAccountInfo:v28 isInstalledByMDM:v10 personaID:v13 rmAccountIdentifier:v14];
    v30 = [(MCNewPayloadHandler *)self payload];
    [v30 setPersistentResourceID:v29];
    [v30 setIncomingACAccountIdentifier:self->_incomingACAccountIdentifier];
    [v30 setOutgoingACAccountIdentifier:self->_outgoingACAccountIdentifier];
  }

  return v22 == 0;
}

- (BOOL)isInstalled
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = [v2 persistentResourceID];

  +[MailAccount mailAccounts];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    v8 = MailAccountManagedTag;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) accountPropertyForKey:{v8, v13}];
        if (v10 && ([v3 isEqualToString:v10] & 1) != 0)
        {

          v11 = 1;
          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (id)_removeAccountWithPersistentResourceID:(id)a3 fromArray:(id)a4 outArray:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v23;
    v14 = MailAccountManagedTag;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = [v16 accountPropertyForKey:v14];
        if (v17 && ([v6 isEqualToString:v17] & 1) != 0)
        {
          v18 = v16;

          v12 = v18;
        }

        else
        {
          [v8 addObject:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  if (a5)
  {
    v19 = v8;
    *a5 = v8;
  }

  return v12;
}

- (void)_removePersonaIDForMailAccountWithPersistentResourceID:(id)a3
{
  v3 = a3;
  v4 = +[ACAccountStore defaultStore];
  v33[0] = ACAccountTypeIdentifierPOP;
  v33[1] = ACAccountTypeIdentifierAol;
  v33[2] = ACAccountTypeIdentifierYahoo;
  v33[3] = ACAccountTypeIdentifierGmail;
  v33[4] = ACAccountTypeIdentifierIMAP;
  v33[5] = ACAccountTypeIdentifierIMAPMail;
  v5 = [NSArray arrayWithObjects:v33 count:6];
  v22 = v4;
  v6 = [v4 accountsWithAccountTypeIdentifiers:v5 error:0];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v25;
    v12 = MailAccountManagedTag;
    v21 = ACAccountPropertyPersonaIdentifier;
    *&v9 = 138412546;
    v20 = v9;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v15 = [v14 accountPropertyForKey:{v12, v20}];
        if (v15)
        {
          if ([v3 isEqualToString:v15])
          {
            v16 = [v14 personaIdentifier];

            if (v16)
            {
              v17 = _MCLogObjects[0];
              if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v29 = v14;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Removing personaIdentifier for mail account: %@", buf, 0xCu);
              }

              [v14 setAccountProperty:0 forKey:v21];
              v23 = 0;
              [v22 saveVerifiedAccount:v14 error:&v23];
              v18 = v23;
              if (v18)
              {
                v19 = _MCLogObjects[0];
                if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
                {
                  *buf = v20;
                  v29 = v14;
                  v30 = 2114;
                  v31 = v18;
                  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to remove personaIdentifier for mail account: %@, error: %{public}@", buf, 0x16u);
                }
              }
            }
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v10);
  }
}

- (void)_remove
{
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [v3 persistentResourceID];

  [(MCNewEmailAccountPayloadHandler *)self _removePersonaIDForMailAccountWithPersistentResourceID:v4];
  +[MailAccount reloadAccounts];
  v5 = +[MailAccount mailAccounts];
  v13 = 0;
  v6 = [(MCNewEmailAccountPayloadHandler *)self _removeAccountWithPersistentResourceID:v4 fromArray:v5 outArray:&v13];
  v7 = v13;

  if (v6)
  {
    v8 = [v6 deliveryAccount];
    [DeliveryAccount removeDeliveryAccount:v8];

    [MailAccount setMailAccounts:v7];
    [v6 removePersistentAccount];
    v9 = [(MCNewPayloadHandler *)self payload];
    v10 = [v9 UUID];
    v11 = [(MCNewPayloadHandler *)self profileHandler];
    v12 = [v11 profile];
    +[MCKeychain removeItemForService:account:label:description:useSystemKeychain:group:](MCKeychain, "removeItemForService:account:label:description:useSystemKeychain:group:", @"MCEmailAccount", v10, 0, 0, [v12 isInstalledForSystem], 0);
  }
}

- (void)remove
{
  v3 = [(MCNewPayloadHandler *)self profileHandler];
  v4 = [v3 isSetAside];

  if (v4)
  {
    setAsideAccountInfo = self->_setAsideAccountInfo;
    self->_setAsideAccountInfo = 0;
  }

  else
  {
    [(MCNewEmailAccountPayloadHandler *)self _remove];
  }

  v6 = [(MCNewPayloadHandler *)self payload];
  [v6 setPersistentResourceID:0];
}

- (void)setAside
{
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [v3 UUID];
  v5 = [(MCNewPayloadHandler *)self profileHandler];
  v6 = [v5 profile];
  v7 = +[MCKeychain dataFromService:account:label:description:useSystemKeychain:outError:](MCKeychain, "dataFromService:account:label:description:useSystemKeychain:outError:", @"MCEmailAccount", v4, 0, 0, [v6 isInstalledForSystem], 0);

  +[MailAccount mailAccounts];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v24 = v7;
    v9 = *v27;
    v10 = MailAccountManagedTag;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [v12 accountPropertyForKey:{v10, v24}];
        if (v13)
        {
          v14 = [(MCNewPayloadHandler *)self payload];
          v15 = [v14 persistentResourceID];
          v16 = [v15 isEqualToString:v13];

          if (v16)
          {
            v19 = [v12 valueInAccountPropertiesForKey:@"MCAccountIsManaged"];
            LOBYTE(v8) = [v19 BOOLValue];

            v20 = [v12 persistentAccount];
            v18 = [v20 objectForKeyedSubscript:ACAccountPropertyPersonaIdentifier];

            v21 = [v12 persistentAccount];
            v17 = [v21 objectForKeyedSubscript:ACAccountPropertyRemoteManagingAccountIdentifier];

            goto LABEL_12;
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v17 = 0;
    v18 = 0;
LABEL_12:
    v7 = v24;
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  if (v7)
  {
    v22 = [NSPropertyListSerialization MCSafePropertyListWithData:v7 options:0 format:0 error:0];
    setAsideAccountInfo = self->_setAsideAccountInfo;
    self->_setAsideAccountInfo = v22;

    self->_wasInstalledByMDM = v8;
    objc_storeStrong(&self->_personaID, v18);
    objc_storeStrong(&self->_rmAccountIdentifier, v17);
  }

  [(MCNewEmailAccountPayloadHandler *)self _remove];
}

- (void)unsetAside
{
  setAsideAccountInfo = self->_setAsideAccountInfo;
  if (setAsideAccountInfo)
  {
    v4 = [(NSDictionary *)setAsideAccountInfo objectForKey:@"IncomingAccountInfo"];
    v5 = [(NSDictionary *)self->_setAsideAccountInfo objectForKey:@"OutgoingAccountInfo"];
    v6 = [(MCNewEmailAccountPayloadHandler *)self _installWithIncomingAccountInfo:v4 outgoingAccountInfo:v5 isInstalledByMDM:self->_wasInstalledByMDM personaID:self->_personaID rmAccountIdentifier:self->_rmAccountIdentifier];

    v7 = self->_setAsideAccountInfo;
    self->_setAsideAccountInfo = 0;
  }
}

@end