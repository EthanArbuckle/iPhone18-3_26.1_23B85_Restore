@interface MCNewEmailAccountPayloadHandler
+ (id)MCACAccountIdentifierWithIncomingAccountInfo:(id)info;
+ (id)MCACAccountIdentifierWithOutgoingAccountInfo:(id)info;
+ (id)unhashedAccountIdentifierWithType:(id)type hostname:(id)hostname username:(id)username;
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (BOOL)isInstalled;
- (BOOL)preflightUserInputResponses:(id)responses outError:(id *)error;
- (MCNewEmailAccountPayloadHandler)initWithPayload:(id)payload profileHandler:(id)handler;
- (id)_authSchemeForAuthenticationMethod:(id)method;
- (id)_errorFromValidationError:(id)error;
- (id)_incomingAccountInfoDictionaryWithUserInput:(id)input isPreflight:(BOOL)preflight outError:(id *)error;
- (id)_incomingAccountWithAccountInfo:(id)info;
- (id)_installWithIncomingAccountInfo:(id)info outgoingAccountInfo:(id)accountInfo isInstalledByMDM:(BOOL)m personaID:(id)d rmAccountIdentifier:(id)identifier;
- (id)_outgoingAccountInfoDictionaryWithUserInput:(id)input;
- (id)_outgoingAccountWithAccountInfo:(id)info;
- (id)_persistentIDForCertificateUUID:(id)d notFoundLocErrorString:(id)string badLocErrorString:(id)errorString outError:(id *)error;
- (id)_removeAccountWithPersistentResourceID:(id)d fromArray:(id)array outArray:(id *)outArray;
- (id)userInputFields;
- (void)_remove;
- (void)_removePersonaIDForMailAccountWithPersistentResourceID:(id)d;
- (void)_validateIncomingAccountOnThread;
- (void)accountValidator:(id)validator finishedValidationOfAccount:(id)account usedSSL:(BOOL)l;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCNewEmailAccountPayloadHandler

- (MCNewEmailAccountPayloadHandler)initWithPayload:(id)payload profileHandler:(id)handler
{
  v8.receiver = self;
  v8.super_class = MCNewEmailAccountPayloadHandler;
  v4 = [(MCNewPayloadHandler *)&v8 initWithPayload:payload profileHandler:handler];
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
  payload = [(MCNewPayloadHandler *)self payload];
  emailAccountName = [payload emailAccountName];

  if (!emailAccountName)
  {
    v6 = kMCEAPEmailAccountNameKey;
    v7 = MCLocalizedString();
    emailAccountDescription = [payload emailAccountDescription];
    v9 = MCLocalizedFormat();
    v10 = [MCNewPayloadHandler promptDictionaryForKey:v6 title:v7 description:v9 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:0 minimumLength:0 fieldType:6 flags:?];
    [v3 addObject:v10];
  }

  emailAddress = [payload emailAddress];

  if (!emailAddress)
  {
    v12 = kMCEAPEmailAddressKey;
    v13 = MCLocalizedString();
    displayName = [payload displayName];
    v15 = MCLocalizedFormat();
    v16 = [MCNewPayloadHandler promptDictionaryForKey:v12 title:v13 description:v15 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:0 minimumLength:0 fieldType:2 flags:?];
    [v3 addObject:v16];
  }

  incomingMailServerUsername = [payload incomingMailServerUsername];

  if (!incomingMailServerUsername)
  {
    emailAccountDescription2 = [payload emailAccountDescription];
    if (emailAccountDescription2)
    {
      [payload emailAccountDescription];
    }

    else
    {
      [payload incomingMailServerHostname];
    }
    v19 = ;
    v20 = MCLocalizedFormat();

    v21 = kMCEAPIncomingMailServerUsernameKey;
    v22 = MCLocalizedString();
    v23 = [MCNewPayloadHandler promptDictionaryForKey:v21 title:v22 description:v20 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:0 minimumLength:0 fieldType:0 flags:?];
    [v3 addObject:v23];
  }

  incomingMailServerAuthentication = [payload incomingMailServerAuthentication];
  v25 = kMCEmailAccountPayloadAuthenticationTypeNone;
  if (([incomingMailServerAuthentication isEqualToString:kMCEmailAccountPayloadAuthenticationTypeNone] & 1) == 0)
  {
    incomingPassword = [payload incomingPassword];

    if (incomingPassword)
    {
      goto LABEL_17;
    }

    emailAccountDescription3 = [payload emailAccountDescription];
    if (emailAccountDescription3)
    {
      [payload emailAccountDescription];
    }

    else
    {
      [payload incomingMailServerHostname];
    }
    v28 = ;
    incomingMailServerAuthentication = MCLocalizedFormat();

    v29 = kMCEAPIncomingPasswordKey;
    v30 = MCLocalizedString();
    v31 = MCLocalizedString();
    v32 = [MCNewPayloadHandler promptDictionaryForKey:v29 title:v30 description:incomingMailServerAuthentication retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:v31 minimumLength:0 fieldType:3 flags:?];
    [v3 addObject:v32];
  }

LABEL_17:
  outgoingMailServerAuthentication = [payload outgoingMailServerAuthentication];
  v34 = [outgoingMailServerAuthentication isEqualToString:v25];

  if (v34)
  {
    goto LABEL_32;
  }

  emailAccountDescription4 = [payload emailAccountDescription];
  if (emailAccountDescription4)
  {
    [payload emailAccountDescription];
  }

  else
  {
    [payload outgoingMailServerHostname];
  }
  v49 = ;
  v36 = MCLocalizedFormat();

  outgoingMailServerUsername = [payload outgoingMailServerUsername];

  if (!outgoingMailServerUsername)
  {
    v38 = kMCEAPOutgoingMailServerUsernameKey;
    v39 = MCLocalizedString();
    v40 = [MCNewPayloadHandler promptDictionaryForKey:v38 title:v39 description:v36 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:0 minimumLength:0 fieldType:0 flags:?];
    [v3 addObject:v40];
  }

  outgoingPassword = [payload outgoingPassword];
  if (outgoingPassword)
  {
    v42 = outgoingPassword;
LABEL_30:

    goto LABEL_31;
  }

  if (([payload outgoingPasswordSameAsIncomingPassword] & 1) == 0)
  {
    emailAccountDescription5 = [payload emailAccountDescription];
    if (emailAccountDescription5)
    {
      [payload emailAccountDescription];
    }

    else
    {
      [payload outgoingMailServerHostname];
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

- (id)_authSchemeForAuthenticationMethod:(id)method
{
  methodCopy = method;
  if ([methodCopy isEqualToString:kMCEmailAccountPayloadAuthenticationTypeCRAMMD5])
  {
    v4 = &MFAuthSchemeCramMd5;
LABEL_7:
    v5 = *v4;
    goto LABEL_8;
  }

  if ([methodCopy isEqualToString:kMCEmailAccountPayloadAuthenticationTypeNTLM])
  {
    v4 = &MFAuthSchemeNTLM;
    goto LABEL_7;
  }

  if ([methodCopy isEqualToString:kMCEmailAccountPayloadAuthenticationTypeHTTPMD5])
  {
    v4 = &MFAuthSchemeDigestMD5;
    goto LABEL_7;
  }

  v5 = &stru_10011E740;
LABEL_8:

  return v5;
}

- (id)_persistentIDForCertificateUUID:(id)d notFoundLocErrorString:(id)string badLocErrorString:(id)errorString outError:(id *)error
{
  stringCopy = string;
  errorStringCopy = errorString;
  if (!d)
  {
    v18 = 0;
    goto LABEL_13;
  }

  dCopy = d;
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  v14 = [profileHandler persistentIDForCertificateUUID:dCopy];

  if (v14)
  {
    profileHandler2 = [(MCNewPayloadHandler *)self profileHandler];
    profile = [profileHandler2 profile];
    v17 = +[MCKeychain copyIdentityWithPersistentID:useSystemKeychain:](MCKeychain, "copyIdentityWithPersistentID:useSystemKeychain:", v14, [profile isInstalledForSystem]);

    if (v17)
    {
      CFRelease(v17);
      goto LABEL_11;
    }

    errorCopy2 = error;
    v19 = 7004;
  }

  else
  {
    errorCopy2 = error;
    v19 = 7003;
  }

  v20 = MCEmailErrorDomain;
  payload = [(MCNewPayloadHandler *)self payload];
  friendlyName = [payload friendlyName];
  v23 = MCErrorArray();
  v24 = [NSError MCErrorWithDomain:v20 code:v19 descriptionArray:v23 errorType:MCErrorTypeFatal, friendlyName, 0];

  if (v24)
  {
    if (errorCopy2)
    {
      v25 = v24;
      v18 = 0;
      *errorCopy2 = v24;
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

+ (id)MCACAccountIdentifierWithIncomingAccountInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy objectForKey:@"MCNewEmailAccountPayloadHandlerAccountType"];
  v5 = [infoCopy objectForKey:MailAccountHostname];
  v6 = [infoCopy objectForKey:MFMailAccountUsername];

  v7 = [MCNewEmailAccountPayloadHandler unhashedAccountIdentifierWithType:v4 hostname:v5 username:v6];
  mCHashedIdentifier = [v7 MCHashedIdentifier];

  return mCHashedIdentifier;
}

+ (id)MCACAccountIdentifierWithOutgoingAccountInfo:(id)info
{
  v3 = MailAccountHostname;
  infoCopy = info;
  v5 = [infoCopy objectForKey:v3];
  v6 = [infoCopy objectForKey:MFMailAccountUsername];

  v7 = [MCNewEmailAccountPayloadHandler unhashedAccountIdentifierWithType:@"smtp" hostname:v5 username:v6];
  mCHashedIdentifier = [v7 MCHashedIdentifier];

  return mCHashedIdentifier;
}

+ (id)unhashedAccountIdentifierWithType:(id)type hostname:(id)hostname username:(id)username
{
  usernameCopy = username;
  v8 = 0;
  if (type)
  {
    if (hostname)
    {
      hostname = [NSString stringWithFormat:@"%@|%@", type, hostname];
      v8 = hostname;
      if (usernameCopy)
      {
        if (hostname)
        {
          usernameCopy = [hostname stringByAppendingFormat:@"|%@", usernameCopy];

          v8 = usernameCopy;
        }
      }
    }
  }

  return v8;
}

- (id)_incomingAccountInfoDictionaryWithUserInput:(id)input isPreflight:(BOOL)preflight outError:(id *)error
{
  preflightCopy = preflight;
  inputCopy = input;
  v7 = +[NSMutableDictionary dictionary];
  payload = [(MCNewPayloadHandler *)self payload];
  v9 = kMCEAPEmailAddressKey;
  emailAddress = [payload emailAddress];
  v11 = [MCNewPayloadHandler prioritizeUserInput:inputCopy key:v9 overField:emailAddress];

  v12 = kMCEAPIncomingMailServerUsernameKey;
  incomingMailServerUsername = [payload incomingMailServerUsername];
  v76 = [MCNewPayloadHandler prioritizeUserInput:inputCopy key:v12 overField:incomingMailServerUsername];

  v14 = kMCEAPIncomingMailServerHostnameKey;
  incomingMailServerHostname = [payload incomingMailServerHostname];
  v16 = [MCNewPayloadHandler prioritizeUserInput:inputCopy key:v14 overField:incomingMailServerHostname];

  v17 = kMCEAPIncomingPasswordKey;
  incomingPassword = [payload incomingPassword];
  v75 = [MCNewPayloadHandler prioritizeUserInput:inputCopy key:v17 overField:incomingPassword];

  v19 = kMCEAPEmailAccountDescriptionKey;
  emailAccountDescription = [payload emailAccountDescription];
  v74 = [MCNewPayloadHandler prioritizeUserInput:inputCopy key:v19 overField:emailAccountDescription];

  v21 = kMCEAPEmailAccountNameKey;
  emailAccountName = [payload emailAccountName];
  v23 = [MCNewPayloadHandler prioritizeUserInput:inputCopy key:v21 overField:emailAccountName];

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
  incomingMailServerPortNumber = [payload incomingMailServerPortNumber];
  [v7 MCSetObjectIfNotNil:incomingMailServerPortNumber forKey:MailAccountPortNumber];

  if ([payload incomingMailServerUseSSL])
  {
    v27 = [NSNumber numberWithInt:1];
    [v7 setObject:v27 forKey:MailAccountSSLEnabled];
  }

  if ([payload preventMove])
  {
    v28 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [payload preventMove]);
    [v7 setObject:v28 forKey:MFMailAccountRestrictMessageTransfersToOtherAccounts];
  }

  if ([payload preventAppSheet])
  {
    v29 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [payload preventAppSheet]);
    [v7 setObject:v29 forKey:MFMailAccountRestrictSendingFromExternalProcesses];
  }

  if ([payload isRecentsSyncingDisabled])
  {
    v30 = [NSNumber numberWithBool:1];
    [v7 setObject:v30 forKey:MFMailAccountRestrictRecentsSyncing];
  }

  if ([payload isMailDropEnabled])
  {
    v31 = [NSNumber numberWithBool:1];
    [v7 setObject:v31 forKey:MFMailAccountSupportsMailDrop];
  }

  v73 = v11;
  emailAccountType = [payload emailAccountType];
  v33 = [emailAccountType isEqualToString:kMCEmailAccountPayloadTypeIMAP];

  if (v33)
  {
    v34 = @"imap";
  }

  else
  {
    v34 = @"pop";
  }

  [v7 setValue:v34 forKey:@"MCNewEmailAccountPayloadHandlerAccountType"];
  incomingMailServerAuthentication = [payload incomingMailServerAuthentication];
  v36 = [(MCNewEmailAccountPayloadHandler *)self _authSchemeForAuthenticationMethod:incomingMailServerAuthentication];
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
  incomingMailServerIMAPPathPrefix = [payload incomingMailServerIMAPPathPrefix];
  if (incomingMailServerIMAPPathPrefix && [(__CFString *)v34 isEqualToString:@"imap"])
  {
    [v7 setObject:incomingMailServerIMAPPathPrefix forKey:IMAPServerPathPrefix];
  }

  v40 = [MCNewEmailAccountPayloadHandler unhashedAccountIdentifierWithType:v34 hostname:v16 username:v76];
  profile = [payload profile];
  displayName = [profile displayName];
  v43 = [NSString stringWithFormat:@"%@|%@", v40, displayName];

  [v7 setObject:v43 forKey:MailAccountManagedTag];
  if (![payload SMIMEEnabled])
  {
    v48 = 0;
    goto LABEL_52;
  }

  sMIMESigningIdentityUUID = [payload SMIMESigningIdentityUUID];

  if (sMIMESigningIdentityUUID)
  {
    sMIMESigningIdentityUUID2 = [payload SMIMESigningIdentityUUID];
    if (preflightCopy)
    {
      v80 = 0;
      v46 = &v80;
      v47 = [(MCNewPayloadHandler *)self _temporaryPersistentIDForIdentityUUID:sMIMESigningIdentityUUID2 outError:&v80];
    }

    else
    {
      v79 = 0;
      v46 = &v79;
      v47 = [(MCNewEmailAccountPayloadHandler *)self _persistentIDForCertificateUUID:sMIMESigningIdentityUUID2 notFoundLocErrorString:@"EMAIL_ERROR_SMIME_SIGNING_CERT_NOT_FOUND_P_PAYLOAD" badLocErrorString:@"EMAIL_ERROR_SMIME_SIGNING_CERT_BAD_P_PAYLOAD" outError:&v79];
    }

    sMIMESigningEnabled = v47;
    v48 = *v46;

    if (v48)
    {
      goto LABEL_51;
    }

    if (!sMIMESigningEnabled)
    {
      v61 = MCEmailErrorDomain;
      payload2 = [(MCNewPayloadHandler *)self payload];
      friendlyName = [payload2 friendlyName];
      sMIMEEncryptionEnabled = MCErrorArray();
      v48 = [NSError MCErrorWithDomain:v61 code:7003 descriptionArray:sMIMEEncryptionEnabled errorType:MCErrorTypeFatal, friendlyName, 0];
      goto LABEL_50;
    }

    [v7 setObject:sMIMESigningEnabled forKey:@"MCSMIMESigningIdentityPersistentID"];
  }

  sMIMESigningEnabled = [payload SMIMESigningEnabled];
  if (sMIMESigningEnabled)
  {
    [v7 setObject:sMIMESigningEnabled forKey:MFMailAccountSigningEnabled];
  }

  else
  {
    sMIMESigningIdentityUUID3 = [payload SMIMESigningIdentityUUID];

    if (sMIMESigningIdentityUUID3)
    {
      v51 = [NSNumber numberWithBool:1];
      [v7 setObject:v51 forKey:MFMailAccountSigningEnabled];
    }
  }

  payload2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [payload SMIMESigningUserOverrideable]);
  [v7 setObject:payload2 forKey:MFMailAccountSigningUserOverrideable];
  friendlyName = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [payload SMIMESigningIdentityUserOverrideable]);
  [v7 setObject:? forKey:?];
  sMIMEEncryptionIdentityUUID = [payload SMIMEEncryptionIdentityUUID];

  if (!sMIMEEncryptionIdentityUUID)
  {
LABEL_42:
    sMIMEEncryptionEnabled = [payload SMIMEEncryptionEnabled];
    if (sMIMEEncryptionEnabled)
    {
      [v7 setObject:sMIMEEncryptionEnabled forKey:MFMailAccountEncryptionEnabled];
    }

    else
    {
      sMIMEEncryptionIdentityUUID2 = [payload SMIMEEncryptionIdentityUUID];

      if (sMIMEEncryptionIdentityUUID2)
      {
        v59 = [NSNumber numberWithBool:1];
        [v7 setObject:v59 forKey:MFMailAccountEncryptionEnabled];
      }
    }

    if ([payload SMIMEEncryptByDefaultUserOverrideable])
    {
      [v7 setObject:&__kCFBooleanTrue forKey:MFMailAccountEncryptByDefaultUserOverrideable];
    }

    v60 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [payload SMIMEEncryptionIdentityUserOverrideable]);
    [v7 setObject:v60 forKey:MFMailAccountEncryptionIdentityUserOverrideable];

    v48 = 0;
    goto LABEL_50;
  }

  v68 = payload2;
  sMIMEEncryptionIdentityUUID3 = [payload SMIMEEncryptionIdentityUUID];
  if (preflightCopy)
  {
    v78 = 0;
    v55 = &v78;
    v56 = [(MCNewPayloadHandler *)self _temporaryPersistentIDForIdentityUUID:sMIMEEncryptionIdentityUUID3 outError:&v78];
  }

  else
  {
    v77 = 0;
    v55 = &v77;
    v56 = [(MCNewEmailAccountPayloadHandler *)self _persistentIDForCertificateUUID:sMIMEEncryptionIdentityUUID3 notFoundLocErrorString:@"EMAIL_ERROR_SMIME_ENCRYPTION_CERT_NOT_FOUND_P_PAYLOAD" badLocErrorString:@"EMAIL_ERROR_SMIME_ENCRYPTION_CERT_BAD_P_PAYLOAD" outError:&v77];
  }

  sMIMEEncryptionEnabled = v56;
  v48 = *v55;

  if (!v48)
  {
    [v7 setObject:sMIMEEncryptionEnabled forKey:@"MCSMIMEEncryptionIdentityPersistentID"];

    payload2 = v68;
    goto LABEL_42;
  }

  payload2 = v68;
LABEL_50:

LABEL_51:
LABEL_52:

  if (v48)
  {
    v62 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v63 = v62;
      mCVerboseDescription = [v48 MCVerboseDescription];
      *buf = 138543362;
      v82 = mCVerboseDescription;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Cannot create incoming account dictionary. Error: %{public}@", buf, 0xCu);
    }

    if (error)
    {
      v65 = v48;
      v66 = 0;
      *error = v48;
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

- (id)_incomingAccountWithAccountInfo:(id)info
{
  infoCopy = info;
  v5 = [infoCopy objectForKey:@"MCNewEmailAccountPayloadHandlerAccountType"];
  v6 = [v5 isEqualToString:@"imap"];
  v7 = IMAPAccount_ptr;
  if (!v6)
  {
    v7 = POPAccount_ptr;
  }

  v8 = *v7;
  v9 = objc_opt_class();
  v10 = +[MDMCloudConfiguration sharedConfiguration];
  userMode = [v10 userMode];

  if (userMode == 1)
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
    payload = [(MCNewPayloadHandler *)self payload];
    friendlyName = [payload friendlyName];
    [v16 setManagingSourceName:friendlyName];

    v19 = [MCNewEmailAccountPayloadHandler MCACAccountIdentifierWithIncomingAccountInfo:infoCopy];
    if (v19)
    {
      identifier = [v16 identifier];
      [v16 setAccountProperty:identifier forKey:@"MCAccountIdentifer"];

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
    v26 = [infoCopy mutableCopy];
    v27 = NSStringFromClass(v9);
    [v26 setObject:v27 forKey:MFMailAccountClass];

    v28 = [[v9 alloc] initWithPersistentAccount:v16];
    [v28 _setAccountProperties:v26];

    v5 = v47;
  }

  else
  {
    v28 = [(objc_class *)v9 newAccountWithDictionary:infoCopy];
    v29 = kMCAccountManagingOwnerIdentifier;
    persistentAccount = [v28 persistentAccount];
    [persistentAccount setManagingOwnerIdentifier:v29];

    payload2 = [(MCNewPayloadHandler *)self payload];
    friendlyName2 = [payload2 friendlyName];
    persistentAccount2 = [v28 persistentAccount];
    [persistentAccount2 setManagingSourceName:friendlyName2];
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  persistentAccount3 = [v28 persistentAccount];
  provisionedDataclasses = [persistentAccount3 provisionedDataclasses];

  v36 = [provisionedDataclasses countByEnumeratingWithState:&v48 objects:v56 count:16];
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
          objc_enumerationMutation(provisionedDataclasses);
        }

        v40 = *(*(&v48 + 1) + 8 * j);
        persistentAccount4 = [v28 persistentAccount];
        [persistentAccount4 setEnabled:1 forDataclass:v40];
      }

      v37 = [provisionedDataclasses countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v37);
  }

  persistentAccount5 = [v28 persistentAccount];
  identifier2 = [persistentAccount5 identifier];
  incomingACAccountIdentifier = self->_incomingACAccountIdentifier;
  self->_incomingACAccountIdentifier = identifier2;

  return v28;
}

- (id)_outgoingAccountInfoDictionaryWithUserInput:(id)input
{
  inputCopy = input;
  payload = [(MCNewPayloadHandler *)self payload];
  v6 = +[NSMutableDictionary dictionary];
  v7 = kMCEAPOutgoingMailServerUsernameKey;
  outgoingMailServerUsername = [payload outgoingMailServerUsername];
  v9 = [MCNewPayloadHandler prioritizeUserInput:inputCopy key:v7 overField:outgoingMailServerUsername];

  v10 = kMCEAPOutgoingMailServerHostnameKey;
  outgoingMailServerHostname = [payload outgoingMailServerHostname];
  v12 = [MCNewPayloadHandler prioritizeUserInput:inputCopy key:v10 overField:outgoingMailServerHostname];

  v13 = kMCEAPIncomingPasswordKey;
  incomingPassword = [payload incomingPassword];
  v15 = [MCNewPayloadHandler prioritizeUserInput:inputCopy key:v13 overField:incomingPassword];

  v16 = kMCEAPOutgoingPasswordKey;
  outgoingPassword = [payload outgoingPassword];
  v18 = [MCNewPayloadHandler prioritizeUserInput:inputCopy key:v16 overField:outgoingPassword];

  [v6 MCSetObjectIfNotNil:v9 forKey:MFMailAccountUsername];
  [v6 MCSetObjectIfNotNil:v12 forKey:MailAccountHostname];
  outgoingMailServerPortNumber = [payload outgoingMailServerPortNumber];
  [v6 MCSetObjectIfNotNil:outgoingMailServerPortNumber forKey:MailAccountPortNumber];

  if (v15 && [payload outgoingPasswordSameAsIncomingPassword])
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
  outgoingMailServerAuthentication = [payload outgoingMailServerAuthentication];
  v24 = [(MCNewEmailAccountPayloadHandler *)self _authSchemeForAuthenticationMethod:outgoingMailServerAuthentication];
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
  profile = [payload profile];
  displayName = [profile displayName];
  v30 = [NSString stringWithFormat:@"%@|%@", v27, displayName];

  [v6 setObject:v30 forKey:MailAccountManagedTag];
  outgoingMailServerAuthentication2 = [payload outgoingMailServerAuthentication];
  LOBYTE(displayName) = [outgoingMailServerAuthentication2 isEqualToString:kMCEmailAccountPayloadAuthenticationTypeNone];

  if ((displayName & 1) == 0)
  {
    v32 = [NSNumber numberWithInt:1];
    [v6 setObject:v32 forKey:DeliveryAccountShouldUseAuthentication];
  }

  if ([payload outgoingMailServerUseSSL])
  {
    v33 = [NSNumber numberWithInt:1];
    [v6 setObject:v33 forKey:MailAccountSSLEnabled];
  }

  return v6;
}

- (id)_outgoingAccountWithAccountInfo:(id)info
{
  infoCopy = info;
  v5 = +[MDMCloudConfiguration sharedConfiguration];
  userMode = [v5 userMode];

  if (userMode == 1)
  {
    payload2 = +[ACAccountStore defaultStore];
    friendlyName2 = [payload2 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierSMTP];
    persistentAccount2 = [[ACAccount alloc] initWithAccountType:friendlyName2];
    [persistentAccount2 setManagingOwnerIdentifier:kMCAccountManagingOwnerIdentifier];
    payload = [(MCNewPayloadHandler *)self payload];
    friendlyName = [payload friendlyName];
    [persistentAccount2 setManagingSourceName:friendlyName];

    v12 = [MCNewEmailAccountPayloadHandler MCACAccountIdentifierWithOutgoingAccountInfo:infoCopy];
    if (v12)
    {
      identifier = [persistentAccount2 identifier];
      [persistentAccount2 setAccountProperty:identifier forKey:@"MCAccountIdentifer"];

      [persistentAccount2 setIdentifier:v12];
    }

    v14 = [payload2 supportedDataclassesForAccountType:friendlyName2];
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

          [persistentAccount2 setProvisioned:1 forDataclass:*(*(&v29 + 1) + 8 * i)];
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v16);
    }

    [persistentAccount2 setAuthenticated:1];
    v19 = [infoCopy mutableCopy];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [v19 setObject:v21 forKey:MFMailAccountClass];

    v22 = [[SMTPAccount alloc] initWithPersistentAccount:persistentAccount2];
    [v22 _setAccountProperties:v19];
  }

  else
  {
    v22 = [SMTPAccount newAccountWithDictionary:infoCopy];
    v23 = kMCAccountManagingOwnerIdentifier;
    persistentAccount = [v22 persistentAccount];
    [persistentAccount setManagingOwnerIdentifier:v23];

    payload2 = [(MCNewPayloadHandler *)self payload];
    friendlyName2 = [payload2 friendlyName];
    persistentAccount2 = [v22 persistentAccount];
    [persistentAccount2 setManagingSourceName:friendlyName2];
  }

  persistentAccount3 = [v22 persistentAccount];
  identifier2 = [persistentAccount3 identifier];
  outgoingACAccountIdentifier = self->_outgoingACAccountIdentifier;
  self->_outgoingACAccountIdentifier = identifier2;

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

- (id)_errorFromValidationError:(id)error
{
  if (!error)
  {
    v8 = 0;
    goto LABEL_15;
  }

  errorCopy = error;
  code = [errorCopy code];
  v5 = MCErrorTypeSkippable;
  if ((code - 1043) >= 3)
  {
    if (code == 1030)
    {
      v7 = 7002;
      goto LABEL_10;
    }

    v6 = &MCErrorTypeFatal;
    if (code == 1032)
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
  localizedDescription = [errorCopy localizedDescription];

  if (!localizedDescription)
  {
    v11 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v16 = code;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Validation error %u does not have a description.", buf, 8u);
    }

    localizedDescription = MCLocalizedFormat();
  }

  v12 = MCEmailErrorDomain;
  v13 = MCErrorArrayFromLocalizedDescription();
  v8 = [NSError MCErrorWithDomain:v12 code:v7 descriptionArray:v13 errorType:v5];

LABEL_15:

  return v8;
}

- (void)accountValidator:(id)validator finishedValidationOfAccount:(id)account usedSSL:(BOOL)l
{
  validatorCopy = validator;
  accountCopy = account;
  if (![validatorCopy accountIsValid])
  {
    self->_validationResult = 0;
    if (self->_incomingAccount == accountCopy)
    {
      v15 = _MCLogObjects[0];
      if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      v11 = v15;
      error = [validatorCopy error];
      mCVerboseDescription = [error MCVerboseDescription];
      v19 = 138543362;
      v20 = mCVerboseDescription;
      v14 = "Error validating incoming server information: %{public}@";
    }

    else
    {
      if (self->_outgoingAccount != accountCopy)
      {
        goto LABEL_13;
      }

      v10 = _MCLogObjects[0];
      if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      v11 = v10;
      error = [validatorCopy error];
      mCVerboseDescription = [error MCVerboseDescription];
      v19 = 138543362;
      v20 = mCVerboseDescription;
      v14 = "Error validating outgoing server information: %{public}@";
    }

    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v14, &v19, 0xCu);

    goto LABEL_13;
  }

  outgoingAccount = self->_outgoingAccount;
  if (self->_incomingAccount == accountCopy)
  {
    [validatorCopy validateAccount:outgoingAccount useSSL:self->_outgoingAccountUsesSSL];
    goto LABEL_16;
  }

  if (outgoingAccount == accountCopy)
  {
    self->_validationResult = 1;
LABEL_13:
    if (!self->_validationResult)
    {
      error2 = [validatorCopy error];
      v17 = [(MCNewEmailAccountPayloadHandler *)self _errorFromValidationError:error2];
      validationError = self->_validationError;
      self->_validationError = v17;
    }

    self->_validationDone = 1;
  }

LABEL_16:
}

- (BOOL)preflightUserInputResponses:(id)responses outError:(id *)error
{
  responsesCopy = responses;
  payload = [(MCNewPayloadHandler *)self payload];
  v46 = 0;
  v8 = [(MCNewEmailAccountPayloadHandler *)self _incomingAccountInfoDictionaryWithUserInput:responsesCopy isPreflight:1 outError:&v46];
  v9 = v46;
  if (v9)
  {
    v10 = v9;

    goto LABEL_18;
  }

  v11 = [(MCNewEmailAccountPayloadHandler *)self _outgoingAccountInfoDictionaryWithUserInput:responsesCopy];
  v12 = [(MCNewEmailAccountPayloadHandler *)self _incomingAccountWithAccountInfo:v8];
  incomingAccount = self->_incomingAccount;
  self->_incomingAccount = v12;

  self->_incomingAccountUsesSSL = [payload incomingMailServerUseSSL];
  v14 = [(MCNewEmailAccountPayloadHandler *)self _outgoingAccountWithAccountInfo:v11];
  outgoingAccount = self->_outgoingAccount;
  self->_outgoingAccount = v14;

  self->_outgoingAccountUsesSSL = [payload outgoingMailServerUseSSL];
  if (!self->_incomingAccount)
  {
    emailAccountType = [payload emailAccountType];
    v32 = [emailAccountType isEqualToString:kMCEmailAccountPayloadTypeIMAP];

    v33 = MCEmailErrorDomain;
    emailAccountDescription = [payload emailAccountDescription];
    v45 = emailAccountDescription;
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
    emailAccountDescription = [payload emailAccountDescription];
    v45 = emailAccountDescription;
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
    emailAccountDescription2 = [payload emailAccountDescription];
    *buf = 138543362;
    v48 = emailAccountDescription2;
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
    emailAccountDescription3 = [payload emailAccountDescription];
    validationResult = self->_validationResult;
    v28 = MCStringForBool();
    *buf = 138543618;
    v48 = emailAccountDescription3;
    v49 = 2114;
    v50 = v28;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Validation of account “%{public}@” done. Result: %{public}@", buf, 0x16u);
  }

  emailAccountDescription = self->_validationError;
  validationError = self->_validationError;
  self->_validationError = 0;

  if (self->_validationResult)
  {
    v10 = 0;
  }

  else
  {
    emailAccountDescription = emailAccountDescription;
    v10 = emailAccountDescription;
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
    mCVerboseDescription = [v10 MCVerboseDescription];
    *buf = 138543362;
    v48 = mCVerboseDescription;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Account validation failed. Error: %{public}@", buf, 0xCu);
  }

  if (error)
  {
    v42 = v10;
    v43 = 0;
    *error = v10;
  }

  else
  {
    v43 = 0;
  }

LABEL_24:

  return v43;
}

- (id)_installWithIncomingAccountInfo:(id)info outgoingAccountInfo:(id)accountInfo isInstalledByMDM:(BOOL)m personaID:(id)d rmAccountIdentifier:(id)identifier
{
  mCopy = m;
  infoCopy = info;
  accountInfoCopy = accountInfo;
  dCopy = d;
  identifierCopy = identifier;
  v78 = infoCopy;
  v14 = [(MCNewEmailAccountPayloadHandler *)self _incomingAccountWithAccountInfo:infoCopy];
  payload = [(MCNewPayloadHandler *)self payload];
  profile = [payload profile];
  uUID = [profile UUID];
  v18 = kMCAccountProfileUUIDKey;
  [v14 setAccountProperty:uUID forKey:kMCAccountProfileUUIDKey];

  payload2 = [(MCNewPayloadHandler *)self payload];
  uUID2 = [payload2 UUID];
  v21 = kMCAccountPayloadUUIDKey;
  [v14 setAccountProperty:uUID2 forKey:kMCAccountPayloadUUIDKey];

  payload3 = [(MCNewPayloadHandler *)self payload];
  profile2 = [payload3 profile];
  identifier = [profile2 identifier];
  v25 = ACAccountPropertyConfigurationProfileIdentifier;
  [v14 setAccountProperty:identifier forKey:ACAccountPropertyConfigurationProfileIdentifier];

  v77 = accountInfoCopy;
  v26 = [(MCNewEmailAccountPayloadHandler *)self _outgoingAccountWithAccountInfo:accountInfoCopy];
  payload4 = [(MCNewPayloadHandler *)self payload];
  profile3 = [payload4 profile];
  uUID3 = [profile3 UUID];
  [v26 setAccountProperty:uUID3 forKey:v18];

  v30 = dCopy;
  payload5 = [(MCNewPayloadHandler *)self payload];
  uUID4 = [payload5 UUID];
  [v26 setAccountProperty:uUID4 forKey:v21];

  payload6 = [(MCNewPayloadHandler *)self payload];
  profile4 = [payload6 profile];
  identifier2 = [profile4 identifier];
  [v26 setAccountProperty:identifier2 forKey:v25];

  [v14 setDeliveryAccount:v26];
  v36 = +[MailAccount mailAccounts];
  v37 = [v36 mutableCopy];

  [v37 addObject:v14];
  v72 = v37;
  if ([dCopy length])
  {
    v38 = ACAccountPropertyPersonaIdentifier;
    [v14 setAccountProperty:dCopy forKey:ACAccountPropertyPersonaIdentifier];
    [v26 setAccountProperty:dCopy forKey:v38];
    v91[0] = _NSConcreteStackBlock;
    v91[1] = 3221225472;
    v91[2] = sub_100029FFC;
    v91[3] = &unk_10011B688;
    v92 = v37;
    v39 = [DMCPersonaHelper performBlockUnderPersona:dCopy block:v91];
  }

  else
  {
    [MailAccount setMailAccounts:v37];
  }

  v40 = identifierCopy;
  if (identifierCopy)
  {
    v41 = ACAccountPropertyRemoteManagingAccountIdentifier;
    [v14 setAccountProperty:identifierCopy forKey:ACAccountPropertyRemoteManagingAccountIdentifier];
    [v26 setAccountProperty:identifierCopy forKey:v41];
  }

  payload7 = [(MCNewPayloadHandler *)self payload];
  if (mCopy)
  {
    [v14 setValueInAccountProperties:&__kCFBooleanTrue forKey:@"MCAccountIsManaged"];
  }

  if ([payload7 SMIMEEnabled])
  {
    v43 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [payload7 SMIMEPerMessageSwitchEnabled]);
    [v14 setAccountProperty:v43 forKey:MFMailAccountPerMessageEncryptionEnabled];
  }

  if ([dCopy length])
  {
    v89[0] = _NSConcreteStackBlock;
    v89[1] = 3221225472;
    v89[2] = sub_10002A010;
    v89[3] = &unk_10011B688;
    v90 = v14;
    v44 = [DMCPersonaHelper performBlockUnderPersona:dCopy block:v89];
  }

  else
  {
    [v14 savePersistentAccount];
  }

  [DeliveryAccount addDeliveryAccount:v26];
  if (mCopy)
  {
    [v26 setValueInAccountProperties:&__kCFBooleanTrue forKey:@"MCAccountIsManaged"];
  }

  if ([payload7 SMIMEEnabled])
  {
    v45 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [payload7 SMIMEPerMessageSwitchEnabled]);
    [v26 setAccountProperty:v45 forKey:MFMailAccountPerMessageEncryptionEnabled];
  }

  if ([dCopy length])
  {
    v87[0] = _NSConcreteStackBlock;
    v87[1] = 3221225472;
    v87[2] = sub_10002A018;
    v87[3] = &unk_10011B688;
    v88 = v26;
    v46 = [DMCPersonaHelper performBlockUnderPersona:dCopy block:v87];
  }

  else
  {
    [v26 savePersistentAccount];
  }

  v47 = v78;
  if ([payload7 SMIMEEnabled])
  {
    v75 = v30;
    v48 = [v78 objectForKey:@"MCSMIMESigningIdentityPersistentID"];
    if (v48)
    {
      v49 = payload7;
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

      payload7 = v49;
      [v49 setSMIMESigningIdentityPersistentID:v48];

      v47 = v78;
    }

    v55 = [v47 objectForKey:@"MCSMIMEEncryptionIdentityPersistentID"];
    if (v55)
    {
      v71 = payload7;
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

      payload7 = v71;
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
    v64 = v63 = payload7;
    [v64 UUID];
    v66 = v65 = v30;
    profileHandler = [(MCNewPayloadHandler *)self profileHandler];
    profile5 = [profileHandler profile];
    +[MCKeychain setData:forService:account:label:description:useSystemKeychain:outError:](MCKeychain, "setData:forService:account:label:description:useSystemKeychain:outError:", v62, @"MCEmailAccount", v66, 0, 0, [profile5 isInstalledForSystem], 0);

    v47 = v78;
    v30 = v65;
    v40 = identifierCopy;

    payload7 = v63;
    v26 = v76;
  }

  v69 = [v14 accountPropertyForKey:MailAccountManagedTag];

  return v69;
}

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  optionsCopy = options;
  v9 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
  bOOLValue = [v9 BOOLValue];

  if (!bOOLValue)
  {
    v13 = 0;
    goto LABEL_5;
  }

  v11 = kMDMPersonaKey;
  v12 = [optionsCopy objectForKeyedSubscript:kMDMPersonaKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [optionsCopy objectForKeyedSubscript:v11];
  }

  else
  {
    v13 = 0;
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
  userInputResponses = [(MCNewPayloadHandler *)self userInputResponses];
  v32 = 0;
  v21 = [(MCNewEmailAccountPayloadHandler *)self _incomingAccountInfoDictionaryWithUserInput:userInputResponses isPreflight:0 outError:&v32];
  v22 = v32;

  if (v22)
  {

    v23 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v24 = v23;
      payload = [(MCNewPayloadHandler *)self payload];
      friendlyName = [payload friendlyName];
      *buf = 138543618;
      v34 = friendlyName;
      v35 = 2114;
      v36 = v22;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Could not install email payload %{public}@. Error: %{public}@", buf, 0x16u);
    }

    if (error)
    {
      *error = [v22 MCCopyAsPrimaryError];
    }
  }

  else
  {
    userInputResponses2 = [(MCNewPayloadHandler *)self userInputResponses];
    v28 = [(MCNewEmailAccountPayloadHandler *)self _outgoingAccountInfoDictionaryWithUserInput:userInputResponses2];

    v29 = [(MCNewEmailAccountPayloadHandler *)self _installWithIncomingAccountInfo:v21 outgoingAccountInfo:v28 isInstalledByMDM:bOOLValue personaID:v13 rmAccountIdentifier:identifier];
    payload2 = [(MCNewPayloadHandler *)self payload];
    [payload2 setPersistentResourceID:v29];
    [payload2 setIncomingACAccountIdentifier:self->_incomingACAccountIdentifier];
    [payload2 setOutgoingACAccountIdentifier:self->_outgoingACAccountIdentifier];
  }

  return v22 == 0;
}

- (BOOL)isInstalled
{
  payload = [(MCNewPayloadHandler *)self payload];
  persistentResourceID = [payload persistentResourceID];

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
        if (v10 && ([persistentResourceID isEqualToString:v10] & 1) != 0)
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

- (id)_removeAccountWithPersistentResourceID:(id)d fromArray:(id)array outArray:(id *)outArray
{
  dCopy = d;
  arrayCopy = array;
  v8 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = arrayCopy;
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
        if (v17 && ([dCopy isEqualToString:v17] & 1) != 0)
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

  if (outArray)
  {
    v19 = v8;
    *outArray = v8;
  }

  return v12;
}

- (void)_removePersonaIDForMailAccountWithPersistentResourceID:(id)d
{
  dCopy = d;
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
          if ([dCopy isEqualToString:v15])
          {
            personaIdentifier = [v14 personaIdentifier];

            if (personaIdentifier)
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
  payload = [(MCNewPayloadHandler *)self payload];
  persistentResourceID = [payload persistentResourceID];

  [(MCNewEmailAccountPayloadHandler *)self _removePersonaIDForMailAccountWithPersistentResourceID:persistentResourceID];
  +[MailAccount reloadAccounts];
  v5 = +[MailAccount mailAccounts];
  v13 = 0;
  v6 = [(MCNewEmailAccountPayloadHandler *)self _removeAccountWithPersistentResourceID:persistentResourceID fromArray:v5 outArray:&v13];
  v7 = v13;

  if (v6)
  {
    deliveryAccount = [v6 deliveryAccount];
    [DeliveryAccount removeDeliveryAccount:deliveryAccount];

    [MailAccount setMailAccounts:v7];
    [v6 removePersistentAccount];
    payload2 = [(MCNewPayloadHandler *)self payload];
    uUID = [payload2 UUID];
    profileHandler = [(MCNewPayloadHandler *)self profileHandler];
    profile = [profileHandler profile];
    +[MCKeychain removeItemForService:account:label:description:useSystemKeychain:group:](MCKeychain, "removeItemForService:account:label:description:useSystemKeychain:group:", @"MCEmailAccount", uUID, 0, 0, [profile isInstalledForSystem], 0);
  }
}

- (void)remove
{
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  isSetAside = [profileHandler isSetAside];

  if (isSetAside)
  {
    setAsideAccountInfo = self->_setAsideAccountInfo;
    self->_setAsideAccountInfo = 0;
  }

  else
  {
    [(MCNewEmailAccountPayloadHandler *)self _remove];
  }

  payload = [(MCNewPayloadHandler *)self payload];
  [payload setPersistentResourceID:0];
}

- (void)setAside
{
  payload = [(MCNewPayloadHandler *)self payload];
  uUID = [payload UUID];
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  profile = [profileHandler profile];
  v7 = +[MCKeychain dataFromService:account:label:description:useSystemKeychain:outError:](MCKeychain, "dataFromService:account:label:description:useSystemKeychain:outError:", @"MCEmailAccount", uUID, 0, 0, [profile isInstalledForSystem], 0);

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
          payload2 = [(MCNewPayloadHandler *)self payload];
          persistentResourceID = [payload2 persistentResourceID];
          v16 = [persistentResourceID isEqualToString:v13];

          if (v16)
          {
            v19 = [v12 valueInAccountPropertiesForKey:@"MCAccountIsManaged"];
            LOBYTE(v8) = [v19 BOOLValue];

            persistentAccount = [v12 persistentAccount];
            v18 = [persistentAccount objectForKeyedSubscript:ACAccountPropertyPersonaIdentifier];

            persistentAccount2 = [v12 persistentAccount];
            v17 = [persistentAccount2 objectForKeyedSubscript:ACAccountPropertyRemoteManagingAccountIdentifier];

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