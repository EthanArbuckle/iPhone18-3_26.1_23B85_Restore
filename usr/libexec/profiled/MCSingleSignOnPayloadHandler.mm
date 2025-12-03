@interface MCSingleSignOnPayloadHandler
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (BOOL)preflightUserInputResponses:(id)responses outError:(id *)error;
- (id)userInputFields;
- (void)remove;
@end

@implementation MCSingleSignOnPayloadHandler

- (id)userInputFields
{
  payload = [(MCNewPayloadHandler *)self payload];
  kerberosInfo = [payload kerberosInfo];
  v4 = +[NSMutableArray array];
  principalName = [kerberosInfo principalName];
  v6 = [principalName length];

  if (!v6)
  {
    v7 = MCLocalizedFormat();
    realm = [kerberosInfo realm];
    v9 = MCLocalizedFormat();
    humanReadableName = [payload humanReadableName];
    v11 = [MCNewPayloadHandler promptDictionaryForKey:@"KPrincipalName" title:v7 description:v9 retypeDescription:0 finePrint:humanReadableName defaultValue:0 placeholderValue:0 minimumLength:1 fieldType:0 flags:?];
    [v4 addObject:v11];
  }

  return v4;
}

- (BOOL)preflightUserInputResponses:(id)responses outError:(id *)error
{
  v5 = [MCNewPayloadHandler prioritizeUserInput:responses key:@"KPrincipalName" overField:0];
  v6 = v5;
  if (v5 && [v5 rangeOfString:@"@"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = MCSSOErrorDomain;
    v11 = MCErrorArray();
    v8 = [NSError MCErrorWithDomain:v10 code:34003 descriptionArray:v11 errorType:MCErrorTypeNeedsRetry, 0];

    v7 = v8 != 0;
    if (error && v8)
    {
      v12 = v8;
      *error = v8;
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  return !v7;
}

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  installerCopy = installer;
  optionsCopy = options;
  clientCopy = client;
  v103 = 0;
  v104 = &v103;
  v105 = 0x3032000000;
  v106 = sub_10009D944;
  v107 = sub_10009D954;
  v108 = 0;
  v76 = optionsCopy;
  v9 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
  LODWORD(client) = [v9 BOOLValue];

  if (client)
  {
    v11 = kMDMPersonaKey;
    v12 = [v76 objectForKeyedSubscript:kMDMPersonaKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v75 = [v76 objectForKeyedSubscript:v11];
    }

    else
    {
      v75 = 0;
    }
  }

  else
  {
    v75 = 0;
  }

  payload = [(MCNewPayloadHandler *)self payload];
  kerberosInfo = [payload kerberosInfo];
  v15 = +[ACAccountStore defaultStore];
  userInputResponses = [(MCNewPayloadHandler *)self userInputResponses];
  principalName = [kerberosInfo principalName];
  v77 = [MCNewPayloadHandler prioritizeUserInput:userInputResponses key:@"KPrincipalName" overField:principalName];

  if (!kerberosInfo)
  {
LABEL_44:
    v53 = v104[5];
    if (v53)
    {
      if (error)
      {
        *error = v53;
      }

      accountGUID = [kerberosInfo accountGUID];

      if (accountGUID)
      {
        accountGUID2 = [kerberosInfo accountGUID];
        v56 = [v15 accountWithIdentifier:accountGUID2];

        if (v56)
        {
          v57 = dispatch_semaphore_create(0);
          v58 = dispatch_get_global_queue(0, 0);
          v82[0] = _NSConcreteStackBlock;
          v82[1] = 3221225472;
          v82[2] = sub_10009DD08;
          v82[3] = &unk_10011CC68;
          v83 = v15;
          v84 = v56;
          v85 = v57;
          v59 = v57;
          dispatch_async(v58, v82);

          dispatch_semaphore_wait(v59, 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      client = [kerberosInfo accountTypeGUID];

      if (client)
      {
        accountTypeGUID = [kerberosInfo accountTypeGUID];
        client = [v15 accountTypeWithAccountTypeIdentifier:accountTypeGUID];

        if (client)
        {
          v61 = dispatch_semaphore_create(0);
          v62 = dispatch_get_global_queue(0, 0);
          v78[0] = _NSConcreteStackBlock;
          v78[1] = 3221225472;
          v78[2] = sub_10009DE94;
          v78[3] = &unk_10011CC68;
          v79 = v15;
          clientCopy2 = client;
          v81 = v61;
          v63 = v61;
          dispatch_async(v62, v78);

          dispatch_semaphore_wait(v63, 0xFFFFFFFFFFFFFFFFLL);
        }

        LOBYTE(client) = 0;
      }
    }

    else
    {
      LOBYTE(client) = 1;
    }

    goto LABEL_56;
  }

  if (![v77 length])
  {
    humanReadableName = [payload humanReadableName];
    v23 = MCErrorArray();
    v24 = [NSError MCErrorWithDomain:MCSSOErrorDomain code:34002 descriptionArray:v23 errorType:MCErrorTypeFatal, humanReadableName, 0];
    v25 = v104[5];
    v104[5] = v24;

    goto LABEL_13;
  }

  certificateUUID = [kerberosInfo certificateUUID];

  if (certificateUUID)
  {
    profileHandler = [(MCNewPayloadHandler *)self profileHandler];
    certificateUUID2 = [kerberosInfo certificateUUID];
    v71 = [profileHandler persistentIDForCertificateUUID:certificateUUID2];

    if (!v71)
    {
      humanReadableName = MCErrorArray();
      v22 = [NSError MCErrorWithDomain:MCSSOErrorDomain code:34004 descriptionArray:humanReadableName errorType:MCErrorTypeFatal, 0];
      v23 = v104[5];
      v104[5] = v22;
LABEL_13:

      goto LABEL_44;
    }
  }

  else
  {
    v71 = 0;
  }

  realm = [kerberosInfo realm];
  v69 = [NSString stringWithFormat:@"%@@%@", v77, realm];

  v27 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v111 = v69;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Creating Kerberos SSO account for %{public}@", buf, 0xCu);
  }

  v28 = +[NSString MCMakeUUID];
  v29 = [NSString stringWithFormat:@"com.apple.account.kerberos.sso.%@", v28];

  v30 = [ACAccountType alloc];
  humanReadableName2 = [payload humanReadableName];
  v32 = [v30 initWithIdentifier:v29 description:humanReadableName2];

  v33 = ACCredentialTypeKerberos;
  [v32 setCredentialType:ACCredentialTypeKerberos];
  v34 = dispatch_semaphore_create(0);
  v35 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D95C;
  block[3] = &unk_10011D0F0;
  v65 = v15;
  v97 = v65;
  v36 = v32;
  v98 = v36;
  v37 = kerberosInfo;
  v99 = v37;
  v68 = v29;
  v100 = v68;
  v102 = &v103;
  dsema = v34;
  v101 = dsema;
  dispatch_async(v35, block);

  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  if (v104[5])
  {
    v38 = 2;
  }

  else
  {
    v39 = [[ACAccount alloc] initWithAccountType:v36];
    [v39 setManagingOwnerIdentifier:kMCAccountManagingOwnerIdentifier];
    friendlyName = [payload friendlyName];
    [v39 setManagingSourceName:friendlyName];

    v67 = [[ACAccountCredential alloc] initWithPassword:0];
    [v67 setCredentialType:v33];
    [v39 setAuthenticationType:kAccountAuthenticationTypeKerberos];
    [v39 setCredential:v67];
    [v39 setUsername:v69];
    if (v71)
    {
      [v39 setAccountProperty:v71 forKey:@"kGSSICCertificate"];
    }

    uRLPrefixMatches = [v37 URLPrefixMatches];

    if (uRLPrefixMatches)
    {
      uRLPrefixMatches2 = [v37 URLPrefixMatches];
      [v39 setAccountProperty:uRLPrefixMatches2 forKey:@"domains"];
    }

    else
    {
      [v39 setAccountProperty:&off_100127310 forKey:@"domains"];
    }

    if (client)
    {
      [v39 setAccountProperty:&__kCFBooleanTrue forKey:@"MCAccountIsManaged"];
      if ([v75 length])
      {
        [v39 setAccountProperty:v75 forKey:ACAccountPropertyPersonaIdentifier];
      }
    }

    v90[0] = _NSConcreteStackBlock;
    v90[1] = 3221225472;
    v90[2] = sub_10009DAAC;
    v90[3] = &unk_10011D118;
    v43 = v65;
    v91 = v43;
    client = v39;
    clientCopy3 = client;
    v44 = v37;
    v93 = v44;
    v95 = &v103;
    v94 = dsema;
    v45 = objc_retainBlock(v90);
    if ([v75 length])
    {
      v46 = [DMCPersonaHelper performBlockUnderPersona:v75 block:v45];
    }

    else
    {
      (v45[2])(v45);
    }

    if (v104[5])
    {
      v38 = 2;
    }

    else
    {
      [v43 clearAllPermissionsGrantedForAccountType:v36];
      clientCopy4 = client;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      appIdentifierMatches = [v44 appIdentifierMatches];
      v48 = [appIdentifierMatches countByEnumeratingWithState:&v86 objects:v109 count:16];
      if (v48)
      {
        v49 = *v87;
        do
        {
          for (i = 0; i != v48; i = i + 1)
          {
            if (*v87 != v49)
            {
              objc_enumerationMutation(appIdentifierMatches);
            }

            [v43 setPermissionGranted:1 forBundleID:*(*(&v86 + 1) + 8 * i) onAccountType:v36];
          }

          v48 = [appIdentifierMatches countByEnumeratingWithState:&v86 objects:v109 count:16];
        }

        while (v48);
      }

      client = clientCopy4;
      v51 = _MCLogObjects[0];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        humanReadableName3 = [payload humanReadableName];
        *buf = 138543362;
        v111 = humanReadableName3;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "Installed Kerberos account for %{public}@", buf, 0xCu);
      }

      v38 = 0;
    }
  }

  if ((v38 | 2) == 2)
  {
    goto LABEL_44;
  }

LABEL_56:

  _Block_object_dispose(&v103, 8);
  return client & 1;
}

- (void)remove
{
  payload = [(MCNewPayloadHandler *)self payload];
  kerberosInfo = [payload kerberosInfo];
  v5 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    payload2 = [(MCNewPayloadHandler *)self payload];
    uUID = [payload2 UUID];
    payload3 = [(MCNewPayloadHandler *)self payload];
    profile = [payload3 profile];
    [profile identifier];
    v11 = v41 = payload;
    payload4 = [(MCNewPayloadHandler *)self payload];
    profile2 = [payload4 profile];
    uUID2 = [profile2 UUID];
    *buf = 138543874;
    v53 = uUID;
    v54 = 2114;
    v55 = v11;
    v56 = 2114;
    v57 = uUID2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Remove SSO payload with UUID %{public}@ in profile %{public}@ (%{public}@)", buf, 0x20u);

    payload = v41;
  }

  v15 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    v16 = v15;
    principalName = [kerberosInfo principalName];
    realm = [kerberosInfo realm];
    *buf = 138543618;
    v53 = principalName;
    v54 = 2114;
    v55 = realm;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Remove SSO payload: principal name = %{public}@, realm = %{public}@", buf, 0x16u);
  }

  v19 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    accountGUID = [kerberosInfo accountGUID];
    *buf = 138543362;
    v53 = accountGUID;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Remove SSO payload: looking for account with accountGUID = %{public}@", buf, 0xCu);
  }

  accountGUID2 = [kerberosInfo accountGUID];

  if (accountGUID2)
  {
    v23 = +[ACAccountStore defaultStore];
    accountGUID3 = [kerberosInfo accountGUID];
    v25 = [v23 accountWithIdentifier:accountGUID3];

    v26 = _MCLogObjects[0];
    v27 = os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT);
    if (v25)
    {
      if (v27)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Remove SSO payload: found account to remove", buf, 2u);
      }

      v28 = dispatch_semaphore_create(0);
      v29 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10009E5F0;
      block[3] = &unk_10011CBA8;
      v48 = v23;
      v49 = v25;
      v50 = payload;
      v51 = v28;
      v30 = v28;
      dispatch_async(v29, block);
    }

    else if (v27)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Remove SSO payload: no account found to remove", buf, 2u);
    }

    v31 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
      accountTypeGUID = [kerberosInfo accountTypeGUID];
      *buf = 138543362;
      v53 = accountTypeGUID;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Remove SSO payload: looking for account type with accountTypeGUID = %{public}@", buf, 0xCu);
    }

    accountTypeGUID2 = [kerberosInfo accountTypeGUID];
    v35 = [v23 accountTypeWithAccountTypeIdentifier:accountTypeGUID2];

    v36 = _MCLogObjects[0];
    v37 = os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT);
    if (v35)
    {
      if (v37)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Remove SSO payload: found account type to remove", buf, 2u);
      }

      v38 = dispatch_semaphore_create(0);
      v39 = dispatch_get_global_queue(0, 0);
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_10009E7D0;
      v42[3] = &unk_10011CBA8;
      v43 = v23;
      v44 = v35;
      v45 = payload;
      v46 = v38;
      v40 = v38;
      dispatch_async(v39, v42);
    }

    else if (v37)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Remove SSO payload: no account type found to remove", buf, 2u);
    }
  }
}

@end