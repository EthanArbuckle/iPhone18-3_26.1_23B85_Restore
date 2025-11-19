@interface MCSingleSignOnPayloadHandler
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (BOOL)preflightUserInputResponses:(id)a3 outError:(id *)a4;
- (id)userInputFields;
- (void)remove;
@end

@implementation MCSingleSignOnPayloadHandler

- (id)userInputFields
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = [v2 kerberosInfo];
  v4 = +[NSMutableArray array];
  v5 = [v3 principalName];
  v6 = [v5 length];

  if (!v6)
  {
    v7 = MCLocalizedFormat();
    v8 = [v3 realm];
    v9 = MCLocalizedFormat();
    v10 = [v2 humanReadableName];
    v11 = [MCNewPayloadHandler promptDictionaryForKey:@"KPrincipalName" title:v7 description:v9 retypeDescription:0 finePrint:v10 defaultValue:0 placeholderValue:0 minimumLength:1 fieldType:0 flags:?];
    [v4 addObject:v11];
  }

  return v4;
}

- (BOOL)preflightUserInputResponses:(id)a3 outError:(id *)a4
{
  v5 = [MCNewPayloadHandler prioritizeUserInput:a3 key:@"KPrincipalName" overField:0];
  v6 = v5;
  if (v5 && [v5 rangeOfString:@"@"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = MCSSOErrorDomain;
    v11 = MCErrorArray();
    v8 = [NSError MCErrorWithDomain:v10 code:34003 descriptionArray:v11 errorType:MCErrorTypeNeedsRetry, 0];

    v7 = v8 != 0;
    if (a4 && v8)
    {
      v12 = v8;
      *a4 = v8;
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

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v73 = a3;
  v8 = a4;
  v74 = a5;
  v103 = 0;
  v104 = &v103;
  v105 = 0x3032000000;
  v106 = sub_10009D944;
  v107 = sub_10009D954;
  v108 = 0;
  v76 = v8;
  v9 = [v8 objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
  LODWORD(a5) = [v9 BOOLValue];

  if (a5)
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

  v13 = [(MCNewPayloadHandler *)self payload];
  v14 = [v13 kerberosInfo];
  v15 = +[ACAccountStore defaultStore];
  v16 = [(MCNewPayloadHandler *)self userInputResponses];
  v17 = [v14 principalName];
  v77 = [MCNewPayloadHandler prioritizeUserInput:v16 key:@"KPrincipalName" overField:v17];

  if (!v14)
  {
LABEL_44:
    v53 = v104[5];
    if (v53)
    {
      if (a6)
      {
        *a6 = v53;
      }

      v54 = [v14 accountGUID];

      if (v54)
      {
        v55 = [v14 accountGUID];
        v56 = [v15 accountWithIdentifier:v55];

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

      a5 = [v14 accountTypeGUID];

      if (a5)
      {
        v60 = [v14 accountTypeGUID];
        a5 = [v15 accountTypeWithAccountTypeIdentifier:v60];

        if (a5)
        {
          v61 = dispatch_semaphore_create(0);
          v62 = dispatch_get_global_queue(0, 0);
          v78[0] = _NSConcreteStackBlock;
          v78[1] = 3221225472;
          v78[2] = sub_10009DE94;
          v78[3] = &unk_10011CC68;
          v79 = v15;
          v80 = a5;
          v81 = v61;
          v63 = v61;
          dispatch_async(v62, v78);

          dispatch_semaphore_wait(v63, 0xFFFFFFFFFFFFFFFFLL);
        }

        LOBYTE(a5) = 0;
      }
    }

    else
    {
      LOBYTE(a5) = 1;
    }

    goto LABEL_56;
  }

  if (![v77 length])
  {
    v21 = [v13 humanReadableName];
    v23 = MCErrorArray();
    v24 = [NSError MCErrorWithDomain:MCSSOErrorDomain code:34002 descriptionArray:v23 errorType:MCErrorTypeFatal, v21, 0];
    v25 = v104[5];
    v104[5] = v24;

    goto LABEL_13;
  }

  v18 = [v14 certificateUUID];

  if (v18)
  {
    v19 = [(MCNewPayloadHandler *)self profileHandler];
    v20 = [v14 certificateUUID];
    v71 = [v19 persistentIDForCertificateUUID:v20];

    if (!v71)
    {
      v21 = MCErrorArray();
      v22 = [NSError MCErrorWithDomain:MCSSOErrorDomain code:34004 descriptionArray:v21 errorType:MCErrorTypeFatal, 0];
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

  v26 = [v14 realm];
  v69 = [NSString stringWithFormat:@"%@@%@", v77, v26];

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
  v31 = [v13 humanReadableName];
  v32 = [v30 initWithIdentifier:v29 description:v31];

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
  v37 = v14;
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
    v40 = [v13 friendlyName];
    [v39 setManagingSourceName:v40];

    v67 = [[ACAccountCredential alloc] initWithPassword:0];
    [v67 setCredentialType:v33];
    [v39 setAuthenticationType:kAccountAuthenticationTypeKerberos];
    [v39 setCredential:v67];
    [v39 setUsername:v69];
    if (v71)
    {
      [v39 setAccountProperty:v71 forKey:@"kGSSICCertificate"];
    }

    v41 = [v37 URLPrefixMatches];

    if (v41)
    {
      v42 = [v37 URLPrefixMatches];
      [v39 setAccountProperty:v42 forKey:@"domains"];
    }

    else
    {
      [v39 setAccountProperty:&off_100127310 forKey:@"domains"];
    }

    if (a5)
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
    a5 = v39;
    v92 = a5;
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
      v66 = a5;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v47 = [v44 appIdentifierMatches];
      v48 = [v47 countByEnumeratingWithState:&v86 objects:v109 count:16];
      if (v48)
      {
        v49 = *v87;
        do
        {
          for (i = 0; i != v48; i = i + 1)
          {
            if (*v87 != v49)
            {
              objc_enumerationMutation(v47);
            }

            [v43 setPermissionGranted:1 forBundleID:*(*(&v86 + 1) + 8 * i) onAccountType:v36];
          }

          v48 = [v47 countByEnumeratingWithState:&v86 objects:v109 count:16];
        }

        while (v48);
      }

      a5 = v66;
      v51 = _MCLogObjects[0];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = [v13 humanReadableName];
        *buf = 138543362;
        v111 = v52;
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
  return a5 & 1;
}

- (void)remove
{
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [v3 kerberosInfo];
  v5 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(MCNewPayloadHandler *)self payload];
    v8 = [v7 UUID];
    v9 = [(MCNewPayloadHandler *)self payload];
    v10 = [v9 profile];
    [v10 identifier];
    v11 = v41 = v3;
    v12 = [(MCNewPayloadHandler *)self payload];
    v13 = [v12 profile];
    v14 = [v13 UUID];
    *buf = 138543874;
    v53 = v8;
    v54 = 2114;
    v55 = v11;
    v56 = 2114;
    v57 = v14;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Remove SSO payload with UUID %{public}@ in profile %{public}@ (%{public}@)", buf, 0x20u);

    v3 = v41;
  }

  v15 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    v16 = v15;
    v17 = [v4 principalName];
    v18 = [v4 realm];
    *buf = 138543618;
    v53 = v17;
    v54 = 2114;
    v55 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Remove SSO payload: principal name = %{public}@, realm = %{public}@", buf, 0x16u);
  }

  v19 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    v21 = [v4 accountGUID];
    *buf = 138543362;
    v53 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Remove SSO payload: looking for account with accountGUID = %{public}@", buf, 0xCu);
  }

  v22 = [v4 accountGUID];

  if (v22)
  {
    v23 = +[ACAccountStore defaultStore];
    v24 = [v4 accountGUID];
    v25 = [v23 accountWithIdentifier:v24];

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
      v50 = v3;
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
      v33 = [v4 accountTypeGUID];
      *buf = 138543362;
      v53 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Remove SSO payload: looking for account type with accountTypeGUID = %{public}@", buf, 0xCu);
    }

    v34 = [v4 accountTypeGUID];
    v35 = [v23 accountTypeWithAccountTypeIdentifier:v34];

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
      v45 = v3;
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