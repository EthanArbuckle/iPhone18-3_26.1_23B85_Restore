@interface MCExtensibleSingleSignOnPayloadHandler
+ (BOOL)_writeConfiguration:(id)configuration withError:(id *)error;
+ (BOOL)rebuildConfigurationIncludingPayloads:(id)payloads excludingPayloads:(id)excludingPayloads error:(id *)error;
+ (id)_configurationForPayloads:(id)payloads includingPayloads:(id)includingPayloads excludingPayloads:(id)excludingPayloads error:(id *)error;
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCExtensibleSingleSignOnPayloadHandler

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  v7 = [(MCNewPayloadHandler *)self payload:installer];
  v8 = [MCProfileHandler payloadsOfClass:objc_opt_class() installedBeforePayload:v7];
  v9 = [v8 mutableCopy];

  [v9 addObject:v7];
  v16 = 0;
  [objc_opt_class() rebuildConfigurationIncludingPayloads:v9 excludingPayloads:qword_100136C70 error:&v16];
  v10 = v16;

  if (v10)
  {
    if (error)
    {
      v11 = v10;
      *error = v10;
    }
  }

  else
  {
    v12 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      esso_extensionIdentifier = [v7 esso_extensionIdentifier];
      *buf = 138543362;
      v18 = esso_extensionIdentifier;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Installed Extensible SSO extension for %{public}@", buf, 0xCu);
    }
  }

  return v10 == 0;
}

- (void)remove
{
  payload = [(MCNewPayloadHandler *)self payload];
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  isSetAside = [profileHandler isSetAside];

  if (!isSetAside)
  {
    v6 = [MCProfileHandler payloadsOfClass:objc_opt_class() removedBeforePayload:payload];
    v7 = [v6 mutableCopy];

    [v7 addObject:payload];
    v17 = 0;
    LODWORD(v6) = [objc_opt_class() rebuildConfigurationIncludingPayloads:0 excludingPayloads:v7 error:&v17];
    v8 = v17;
    if (v6)
    {
      v9 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        esso_extensionIdentifier = [payload esso_extensionIdentifier];
        *buf = 138543362;
        v19 = esso_extensionIdentifier;
        v12 = "Removed Extensible SSO payload for extension ID %{public}@";
LABEL_11:
        v14 = v10;
        v15 = OS_LOG_TYPE_DEFAULT;
        v16 = 12;
        goto LABEL_12;
      }
    }

    else
    {
      v13 = _MCLogObjects[0];
      if (v8)
      {
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          v10 = v13;
          esso_extensionIdentifier = [payload esso_extensionIdentifier];
          *buf = 138543618;
          v19 = esso_extensionIdentifier;
          v20 = 2114;
          v21 = v8;
          v12 = "Failed to remove Extensible SSO payload with extension ID %{public}@. Ignoring. Error: %{public}@";
          v14 = v10;
          v15 = OS_LOG_TYPE_ERROR;
          v16 = 22;
LABEL_12:
          _os_log_impl(&_mh_execute_header, v14, v15, v12, buf, v16);
        }
      }

      else if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        v10 = v13;
        esso_extensionIdentifier = [payload esso_extensionIdentifier];
        *buf = 138543362;
        v19 = esso_extensionIdentifier;
        v12 = "Remove Extensible SSO payload: no extension found with extension ID %{public}@";
        goto LABEL_11;
      }
    }

    goto LABEL_14;
  }

  [qword_100136C70 removeObject:payload];
LABEL_14:
}

- (void)setAside
{
  payload = [(MCNewPayloadHandler *)self payload];
  v3 = qword_100136C70;
  if (!qword_100136C70)
  {
    v4 = +[NSMutableArray array];
    v5 = qword_100136C70;
    qword_100136C70 = v4;

    v3 = qword_100136C70;
  }

  [v3 addObject:payload];
  v11 = 0;
  v6 = [objc_opt_class() rebuildConfigurationIncludingPayloads:0 excludingPayloads:qword_100136C70 error:&v11];
  v7 = v11;
  if ((v6 & 1) == 0)
  {
    v8 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      esso_extensionIdentifier = [payload esso_extensionIdentifier];
      *buf = 138543618;
      v13 = esso_extensionIdentifier;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to set aside Extensible SSO payload with extension ID %{public}@. Ignoring. Error: %{public}@", buf, 0x16u);
    }
  }
}

- (void)unsetAside
{
  payload = [(MCNewPayloadHandler *)self payload];
  [qword_100136C70 removeObject:payload];
  v8 = 0;
  v3 = [objc_opt_class() rebuildConfigurationIncludingPayloads:0 excludingPayloads:qword_100136C70 error:&v8];
  v4 = v8;
  if ((v3 & 1) == 0)
  {
    v5 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      esso_extensionIdentifier = [payload esso_extensionIdentifier];
      *buf = 138543618;
      v10 = esso_extensionIdentifier;
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to restore Extensible SSO payload with extension ID %{public}@. Ignoring. Error: %{public}@", buf, 0x16u);
    }
  }
}

+ (BOOL)rebuildConfigurationIncludingPayloads:(id)payloads excludingPayloads:(id)excludingPayloads error:(id *)error
{
  excludingPayloadsCopy = excludingPayloads;
  payloadsCopy = payloads;
  v10 = +[MCManifest sharedManifest];
  v11 = [v10 allInstalledPayloadsOfClass:objc_opt_class()];
  v12 = [v11 mutableCopy];

  v20 = 0;
  v13 = [self _configurationForPayloads:v12 includingPayloads:payloadsCopy excludingPayloads:excludingPayloadsCopy error:&v20];

  v14 = v20;
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v19 = 0;
    v16 = [self _writeConfiguration:v13 withError:&v19];
    v15 = v19;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (v15)
  {
    v17 = v15;
    *error = v15;
  }

LABEL_7:

  return v16;
}

+ (id)_configurationForPayloads:(id)payloads includingPayloads:(id)includingPayloads excludingPayloads:(id)excludingPayloads error:(id *)error
{
  payloadsCopy = payloads;
  includingPayloadsCopy = includingPayloads;
  excludingPayloadsCopy = excludingPayloads;
  v75 = excludingPayloadsCopy;
  if ([includingPayloadsCopy count] || objc_msgSend(excludingPayloadsCopy, "count"))
  {
    v105[0] = _NSConcreteStackBlock;
    v105[1] = 3221225472;
    v105[2] = sub_100099BD0;
    v105[3] = &unk_10011CFD8;
    v106 = includingPayloadsCopy;
    v107 = excludingPayloadsCopy;
    v11 = [payloadsCopy indexesOfObjectsPassingTest:v105];
    [payloadsCopy removeObjectsAtIndexes:v11];

    excludingPayloadsCopy = v75;
  }

  if ([includingPayloadsCopy count])
  {
    [payloadsCopy addObjectsFromArray:includingPayloadsCopy];
  }

  v12 = +[NSMutableSet set];
  v13 = +[NSMutableSet set];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = payloadsCopy;
  v78 = [obj countByEnumeratingWithState:&v101 objects:v122 count:16];
  v80 = v12;
  v84 = v13;
  if (v78)
  {
    v76 = *v102;
    v73 = MCExtensibleSingleSignOnErrorDomain;
    v72 = MCErrorTypeFatal;
LABEL_8:
    v14 = 0;
    while (1)
    {
      if (*v102 != v76)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v101 + 1) + 8 * v14);
      esso_type = [v15 esso_type];
      v17 = [esso_type isEqualToString:@"Credential"];

      if (v17)
      {
        v99 = 0uLL;
        v100 = 0uLL;
        v97 = 0uLL;
        v98 = 0uLL;
        esso_hosts = [v15 esso_hosts];
        v19 = [esso_hosts countByEnumeratingWithState:&v97 objects:v121 count:16];
        if (v19)
        {
          v20 = v19;
          v81 = v14;
          v21 = *v98;
          while (2)
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v98 != v21)
              {
                objc_enumerationMutation(esso_hosts);
              }

              v23 = *(*(&v97 + 1) + 8 * i);
              lowercaseString = [v23 lowercaseString];
              if ([v12 containsObject:lowercaseString])
              {
                if ([includingPayloadsCopy containsObject:v15])
                {
                  v70 = v23;
                  absoluteString = MCErrorArray();
                  v37 = [NSError MCErrorWithDomain:v73 code:54007 descriptionArray:absoluteString underlyingError:0 errorType:v72, v70, 0];
                  goto LABEL_41;
                }

                v25 = _MCLogObjects[0];
                if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
                {
                  v26 = v25;
                  esso_extensionIdentifier = [v15 esso_extensionIdentifier];
                  *buf = 138543618;
                  v118 = esso_extensionIdentifier;
                  v119 = 2114;
                  v120 = v23;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Found pre-existing conflicting hosts while rebuilding configuration for Extensible SSO payload with extension ID %{public}@: %{public}@", buf, 0x16u);

                  v12 = v80;
                }
              }

              else
              {
                [v12 addObject:lowercaseString];
              }
            }

            v20 = [esso_hosts countByEnumeratingWithState:&v97 objects:v121 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }

LABEL_37:
          v37 = 0;
LABEL_42:
          excludingPayloadsCopy = v75;
          v13 = v84;
          v14 = v81;
          goto LABEL_43;
        }
      }

      else
      {
        v95 = 0uLL;
        v96 = 0uLL;
        v93 = 0uLL;
        v94 = 0uLL;
        esso_hosts = [v15 esso_URLs];
        v28 = [esso_hosts countByEnumeratingWithState:&v93 objects:v116 count:16];
        if (v28)
        {
          v29 = v28;
          v81 = v14;
          v30 = *v94;
          while (2)
          {
            for (j = 0; j != v29; j = j + 1)
            {
              if (*v94 != v30)
              {
                objc_enumerationMutation(esso_hosts);
              }

              v32 = *(*(&v93 + 1) + 8 * j);
              lowercaseString = [v32 normalizedURL];
              if ([v84 containsObject:lowercaseString])
              {
                if ([includingPayloadsCopy containsObject:v15])
                {
                  absoluteString = [v32 absoluteString];
                  v39 = MCErrorArray();
                  v37 = [NSError MCErrorWithDomain:v73 code:54005 descriptionArray:v39 underlyingError:0 errorType:v72, absoluteString, 0];

                  v12 = v80;
LABEL_41:

                  goto LABEL_42;
                }

                v33 = _MCLogObjects[0];
                if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
                {
                  v34 = v33;
                  esso_extensionIdentifier2 = [v15 esso_extensionIdentifier];
                  absoluteString2 = [v32 absoluteString];
                  *buf = 138543618;
                  v118 = esso_extensionIdentifier2;
                  v119 = 2114;
                  v120 = absoluteString2;
                  _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Found pre-existing conflicting URLs while rebuilding configuration for Extensible SSO payload with extension ID %{public}@: %{public}@", buf, 0x16u);

                  v12 = v80;
                }
              }

              else
              {
                [v84 addObject:lowercaseString];
              }
            }

            v29 = [esso_hosts countByEnumeratingWithState:&v93 objects:v116 count:16];
            if (v29)
            {
              continue;
            }

            goto LABEL_37;
          }
        }
      }

      v37 = 0;
LABEL_43:

      if (v37)
      {

        if (error)
        {
          v68 = v37;
          v67 = 0;
          *error = v37;
        }

        else
        {
          v67 = 0;
        }

        goto LABEL_78;
      }

      if (++v14 == v78)
      {
        v78 = [obj countByEnumeratingWithState:&v101 objects:v122 count:16];
        if (v78)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  v40 = +[NSMutableArray array];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v79 = obj;
  v83 = [v79 countByEnumeratingWithState:&v89 objects:v115 count:16];
  if (v83)
  {
    v82 = *v90;
    v77 = v40;
    do
    {
      for (k = 0; k != v83; k = k + 1)
      {
        if (*v90 != v82)
        {
          objc_enumerationMutation(v79);
        }

        v42 = *(*(&v89 + 1) + 8 * k);
        v43 = +[NSMutableDictionary dictionary];
        esso_type2 = [v42 esso_type];
        [v43 setObject:esso_type2 forKeyedSubscript:@"Type"];

        esso_realm = [v42 esso_realm];

        if (esso_realm)
        {
          esso_realm2 = [v42 esso_realm];
          [v43 setObject:esso_realm2 forKeyedSubscript:@"Realm"];
        }

        esso_teamIdentifier = [v42 esso_teamIdentifier];
        if (esso_teamIdentifier)
        {
          v113[0] = @"BundleIdentifier";
          esso_extensionIdentifier3 = [v42 esso_extensionIdentifier];
          v114[0] = esso_extensionIdentifier3;
          v113[1] = @"TeamIdentifier";
          esso_teamIdentifier2 = [v42 esso_teamIdentifier];
          v114[1] = esso_teamIdentifier2;
          v50 = [NSDictionary dictionaryWithObjects:v114 forKeys:v113 count:2];
          [v43 setObject:v50 forKeyedSubscript:@"Extension"];
        }

        else
        {
          v111 = @"BundleIdentifier";
          esso_extensionIdentifier3 = [v42 esso_extensionIdentifier];
          v112 = esso_extensionIdentifier3;
          esso_teamIdentifier2 = [NSDictionary dictionaryWithObjects:&v112 forKeys:&v111 count:1];
          [v43 setObject:esso_teamIdentifier2 forKeyedSubscript:@"Extension"];
        }

        esso_extensionData = [v42 esso_extensionData];

        if (esso_extensionData)
        {
          esso_extensionData2 = [v42 esso_extensionData];
          [v43 setObject:esso_extensionData2 forKeyedSubscript:@"ExtensionData"];
        }

        esso_type3 = [v42 esso_type];
        v54 = [esso_type3 isEqualToString:@"Credential"];

        if (v54)
        {
          esso_hosts2 = [v42 esso_hosts];
          [v43 setObject:esso_hosts2 forKeyedSubscript:@"Hosts"];
        }

        else
        {
          v56 = includingPayloadsCopy;
          esso_hosts2 = +[NSMutableArray array];
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          esso_URLs = [v42 esso_URLs];
          v58 = [esso_URLs countByEnumeratingWithState:&v85 objects:v110 count:16];
          if (v58)
          {
            v59 = v58;
            v60 = *v86;
            do
            {
              for (m = 0; m != v59; m = m + 1)
              {
                if (*v86 != v60)
                {
                  objc_enumerationMutation(esso_URLs);
                }

                absoluteString3 = [*(*(&v85 + 1) + 8 * m) absoluteString];
                [esso_hosts2 addObject:absoluteString3];
              }

              v59 = [esso_URLs countByEnumeratingWithState:&v85 objects:v110 count:16];
            }

            while (v59);
          }

          [v43 setObject:esso_hosts2 forKeyedSubscript:@"URLPrefix"];
          includingPayloadsCopy = v56;
          v40 = v77;
        }

        esso_screenLockedBehavior = [v42 esso_screenLockedBehavior];

        if (esso_screenLockedBehavior)
        {
          esso_screenLockedBehavior2 = [v42 esso_screenLockedBehavior];
          [v43 setObject:esso_screenLockedBehavior2 forKeyedSubscript:@"ScreenLockedBehavior"];
        }

        esso_deniedBundleIdentifiers = [v42 esso_deniedBundleIdentifiers];

        if (esso_deniedBundleIdentifiers)
        {
          esso_deniedBundleIdentifiers2 = [v42 esso_deniedBundleIdentifiers];
          [v43 setObject:esso_deniedBundleIdentifiers2 forKeyedSubscript:@"DeniedBundleIdentifiers"];
        }

        [v40 addObject:v43];
      }

      v83 = [v79 countByEnumeratingWithState:&v89 objects:v115 count:16];
    }

    while (v83);
  }

  v108 = @"Profiles";
  v109 = v40;
  v67 = [NSDictionary dictionaryWithObjects:&v109 forKeys:&v108 count:1];

  v37 = 0;
  excludingPayloadsCopy = v75;
  v12 = v80;
  v13 = v84;
LABEL_78:

  return v67;
}

+ (BOOL)_writeConfiguration:(id)configuration withError:(id *)error
{
  configurationCopy = configuration;
  v6 = dispatch_semaphore_create(0);
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10009A010;
  v26 = sub_10009A020;
  v27 = 0;
  v7 = +[SOConfigurationManager defaultManager];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10009A028;
  v18 = &unk_10011BFC8;
  v20 = &v28;
  v21 = &v22;
  v8 = v6;
  v19 = v8;
  [v7 saveConfigurationData:configurationCopy completion:&v15];

  v9 = dispatch_time(0, 30000000000);
  if (!dispatch_semaphore_wait(v8, v9))
  {
    v12 = *(v29 + 24);
    v11 = v23[5];
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = MCErrorArray();
  v11 = [NSError MCErrorWithDomain:MCExtensibleSingleSignOnErrorDomain code:54002 descriptionArray:v10 underlyingError:0 errorType:MCErrorTypeFatal, 0, v15, v16, v17, v18];

  v12 = 0;
  if (error)
  {
LABEL_3:
    v13 = v11;
    *error = v11;
  }

LABEL_4:

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v12 & 1;
}

@end