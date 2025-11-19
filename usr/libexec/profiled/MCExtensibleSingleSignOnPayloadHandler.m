@interface MCExtensibleSingleSignOnPayloadHandler
+ (BOOL)_writeConfiguration:(id)a3 withError:(id *)a4;
+ (BOOL)rebuildConfigurationIncludingPayloads:(id)a3 excludingPayloads:(id)a4 error:(id *)a5;
+ (id)_configurationForPayloads:(id)a3 includingPayloads:(id)a4 excludingPayloads:(id)a5 error:(id *)a6;
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCExtensibleSingleSignOnPayloadHandler

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v7 = [(MCNewPayloadHandler *)self payload:a3];
  v8 = [MCProfileHandler payloadsOfClass:objc_opt_class() installedBeforePayload:v7];
  v9 = [v8 mutableCopy];

  [v9 addObject:v7];
  v16 = 0;
  [objc_opt_class() rebuildConfigurationIncludingPayloads:v9 excludingPayloads:qword_100136C70 error:&v16];
  v10 = v16;

  if (v10)
  {
    if (a6)
    {
      v11 = v10;
      *a6 = v10;
    }
  }

  else
  {
    v12 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      v14 = [v7 esso_extensionIdentifier];
      *buf = 138543362;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Installed Extensible SSO extension for %{public}@", buf, 0xCu);
    }
  }

  return v10 == 0;
}

- (void)remove
{
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [(MCNewPayloadHandler *)self profileHandler];
  v5 = [v4 isSetAside];

  if (!v5)
  {
    v6 = [MCProfileHandler payloadsOfClass:objc_opt_class() removedBeforePayload:v3];
    v7 = [v6 mutableCopy];

    [v7 addObject:v3];
    v17 = 0;
    LODWORD(v6) = [objc_opt_class() rebuildConfigurationIncludingPayloads:0 excludingPayloads:v7 error:&v17];
    v8 = v17;
    if (v6)
    {
      v9 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = [v3 esso_extensionIdentifier];
        *buf = 138543362;
        v19 = v11;
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
          v11 = [v3 esso_extensionIdentifier];
          *buf = 138543618;
          v19 = v11;
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
        v11 = [v3 esso_extensionIdentifier];
        *buf = 138543362;
        v19 = v11;
        v12 = "Remove Extensible SSO payload: no extension found with extension ID %{public}@";
        goto LABEL_11;
      }
    }

    goto LABEL_14;
  }

  [qword_100136C70 removeObject:v3];
LABEL_14:
}

- (void)setAside
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = qword_100136C70;
  if (!qword_100136C70)
  {
    v4 = +[NSMutableArray array];
    v5 = qword_100136C70;
    qword_100136C70 = v4;

    v3 = qword_100136C70;
  }

  [v3 addObject:v2];
  v11 = 0;
  v6 = [objc_opt_class() rebuildConfigurationIncludingPayloads:0 excludingPayloads:qword_100136C70 error:&v11];
  v7 = v11;
  if ((v6 & 1) == 0)
  {
    v8 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      v10 = [v2 esso_extensionIdentifier];
      *buf = 138543618;
      v13 = v10;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to set aside Extensible SSO payload with extension ID %{public}@. Ignoring. Error: %{public}@", buf, 0x16u);
    }
  }
}

- (void)unsetAside
{
  v2 = [(MCNewPayloadHandler *)self payload];
  [qword_100136C70 removeObject:v2];
  v8 = 0;
  v3 = [objc_opt_class() rebuildConfigurationIncludingPayloads:0 excludingPayloads:qword_100136C70 error:&v8];
  v4 = v8;
  if ((v3 & 1) == 0)
  {
    v5 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [v2 esso_extensionIdentifier];
      *buf = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to restore Extensible SSO payload with extension ID %{public}@. Ignoring. Error: %{public}@", buf, 0x16u);
    }
  }
}

+ (BOOL)rebuildConfigurationIncludingPayloads:(id)a3 excludingPayloads:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[MCManifest sharedManifest];
  v11 = [v10 allInstalledPayloadsOfClass:objc_opt_class()];
  v12 = [v11 mutableCopy];

  v20 = 0;
  v13 = [a1 _configurationForPayloads:v12 includingPayloads:v9 excludingPayloads:v8 error:&v20];

  v14 = v20;
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v19 = 0;
    v16 = [a1 _writeConfiguration:v13 withError:&v19];
    v15 = v19;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  if (v15)
  {
    v17 = v15;
    *a5 = v15;
  }

LABEL_7:

  return v16;
}

+ (id)_configurationForPayloads:(id)a3 includingPayloads:(id)a4 excludingPayloads:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v75 = v10;
  if ([v9 count] || objc_msgSend(v10, "count"))
  {
    v105[0] = _NSConcreteStackBlock;
    v105[1] = 3221225472;
    v105[2] = sub_100099BD0;
    v105[3] = &unk_10011CFD8;
    v106 = v9;
    v107 = v10;
    v11 = [v8 indexesOfObjectsPassingTest:v105];
    [v8 removeObjectsAtIndexes:v11];

    v10 = v75;
  }

  if ([v9 count])
  {
    [v8 addObjectsFromArray:v9];
  }

  v12 = +[NSMutableSet set];
  v13 = +[NSMutableSet set];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = v8;
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
      v16 = [v15 esso_type];
      v17 = [v16 isEqualToString:@"Credential"];

      if (v17)
      {
        v99 = 0uLL;
        v100 = 0uLL;
        v97 = 0uLL;
        v98 = 0uLL;
        v18 = [v15 esso_hosts];
        v19 = [v18 countByEnumeratingWithState:&v97 objects:v121 count:16];
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
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v97 + 1) + 8 * i);
              v24 = [v23 lowercaseString];
              if ([v12 containsObject:v24])
              {
                if ([v9 containsObject:v15])
                {
                  v70 = v23;
                  v38 = MCErrorArray();
                  v37 = [NSError MCErrorWithDomain:v73 code:54007 descriptionArray:v38 underlyingError:0 errorType:v72, v70, 0];
                  goto LABEL_41;
                }

                v25 = _MCLogObjects[0];
                if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
                {
                  v26 = v25;
                  v27 = [v15 esso_extensionIdentifier];
                  *buf = 138543618;
                  v118 = v27;
                  v119 = 2114;
                  v120 = v23;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Found pre-existing conflicting hosts while rebuilding configuration for Extensible SSO payload with extension ID %{public}@: %{public}@", buf, 0x16u);

                  v12 = v80;
                }
              }

              else
              {
                [v12 addObject:v24];
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v97 objects:v121 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }

LABEL_37:
          v37 = 0;
LABEL_42:
          v10 = v75;
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
        v18 = [v15 esso_URLs];
        v28 = [v18 countByEnumeratingWithState:&v93 objects:v116 count:16];
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
                objc_enumerationMutation(v18);
              }

              v32 = *(*(&v93 + 1) + 8 * j);
              v24 = [v32 normalizedURL];
              if ([v84 containsObject:v24])
              {
                if ([v9 containsObject:v15])
                {
                  v38 = [v32 absoluteString];
                  v39 = MCErrorArray();
                  v37 = [NSError MCErrorWithDomain:v73 code:54005 descriptionArray:v39 underlyingError:0 errorType:v72, v38, 0];

                  v12 = v80;
LABEL_41:

                  goto LABEL_42;
                }

                v33 = _MCLogObjects[0];
                if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
                {
                  v34 = v33;
                  v35 = [v15 esso_extensionIdentifier];
                  v36 = [v32 absoluteString];
                  *buf = 138543618;
                  v118 = v35;
                  v119 = 2114;
                  v120 = v36;
                  _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Found pre-existing conflicting URLs while rebuilding configuration for Extensible SSO payload with extension ID %{public}@: %{public}@", buf, 0x16u);

                  v12 = v80;
                }
              }

              else
              {
                [v84 addObject:v24];
              }
            }

            v29 = [v18 countByEnumeratingWithState:&v93 objects:v116 count:16];
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

        if (a6)
        {
          v68 = v37;
          v67 = 0;
          *a6 = v37;
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
        v44 = [v42 esso_type];
        [v43 setObject:v44 forKeyedSubscript:@"Type"];

        v45 = [v42 esso_realm];

        if (v45)
        {
          v46 = [v42 esso_realm];
          [v43 setObject:v46 forKeyedSubscript:@"Realm"];
        }

        v47 = [v42 esso_teamIdentifier];
        if (v47)
        {
          v113[0] = @"BundleIdentifier";
          v48 = [v42 esso_extensionIdentifier];
          v114[0] = v48;
          v113[1] = @"TeamIdentifier";
          v49 = [v42 esso_teamIdentifier];
          v114[1] = v49;
          v50 = [NSDictionary dictionaryWithObjects:v114 forKeys:v113 count:2];
          [v43 setObject:v50 forKeyedSubscript:@"Extension"];
        }

        else
        {
          v111 = @"BundleIdentifier";
          v48 = [v42 esso_extensionIdentifier];
          v112 = v48;
          v49 = [NSDictionary dictionaryWithObjects:&v112 forKeys:&v111 count:1];
          [v43 setObject:v49 forKeyedSubscript:@"Extension"];
        }

        v51 = [v42 esso_extensionData];

        if (v51)
        {
          v52 = [v42 esso_extensionData];
          [v43 setObject:v52 forKeyedSubscript:@"ExtensionData"];
        }

        v53 = [v42 esso_type];
        v54 = [v53 isEqualToString:@"Credential"];

        if (v54)
        {
          v55 = [v42 esso_hosts];
          [v43 setObject:v55 forKeyedSubscript:@"Hosts"];
        }

        else
        {
          v56 = v9;
          v55 = +[NSMutableArray array];
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v57 = [v42 esso_URLs];
          v58 = [v57 countByEnumeratingWithState:&v85 objects:v110 count:16];
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
                  objc_enumerationMutation(v57);
                }

                v62 = [*(*(&v85 + 1) + 8 * m) absoluteString];
                [v55 addObject:v62];
              }

              v59 = [v57 countByEnumeratingWithState:&v85 objects:v110 count:16];
            }

            while (v59);
          }

          [v43 setObject:v55 forKeyedSubscript:@"URLPrefix"];
          v9 = v56;
          v40 = v77;
        }

        v63 = [v42 esso_screenLockedBehavior];

        if (v63)
        {
          v64 = [v42 esso_screenLockedBehavior];
          [v43 setObject:v64 forKeyedSubscript:@"ScreenLockedBehavior"];
        }

        v65 = [v42 esso_deniedBundleIdentifiers];

        if (v65)
        {
          v66 = [v42 esso_deniedBundleIdentifiers];
          [v43 setObject:v66 forKeyedSubscript:@"DeniedBundleIdentifiers"];
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
  v10 = v75;
  v12 = v80;
  v13 = v84;
LABEL_78:

  return v67;
}

+ (BOOL)_writeConfiguration:(id)a3 withError:(id *)a4
{
  v5 = a3;
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
  [v7 saveConfigurationData:v5 completion:&v15];

  v9 = dispatch_time(0, 30000000000);
  if (!dispatch_semaphore_wait(v8, v9))
  {
    v12 = *(v29 + 24);
    v11 = v23[5];
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = MCErrorArray();
  v11 = [NSError MCErrorWithDomain:MCExtensibleSingleSignOnErrorDomain code:54002 descriptionArray:v10 underlyingError:0 errorType:MCErrorTypeFatal, 0, v15, v16, v17, v18];

  v12 = 0;
  if (a4)
  {
LABEL_3:
    v13 = v11;
    *a4 = v11;
  }

LABEL_4:

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v12 & 1;
}

@end