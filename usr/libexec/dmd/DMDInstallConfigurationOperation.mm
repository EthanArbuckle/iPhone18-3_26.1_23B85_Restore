@interface DMDInstallConfigurationOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (NSSet)excludedBoolRestrictions;
+ (id)_intersectionAliasToFeatures;
+ (id)whitelistedClassesForRequest;
- (BOOL)_installProfile:(id)profile withRequest:(id)request error:(id *)error;
- (BOOL)_installRestrictionsPayload:(id)payload withRequest:(id)request error:(id *)error;
- (id)_applyHeuristicsToRestrictions:(id)restrictions error:(id *)error;
- (id)_intersectionFeatureForPayloadRestrictionKey:(id)key;
- (id)_mapMCRestrictionsFromPayload:(id)payload error:(id *)error;
- (void)_rollbackProfile:(id)profile withRequest:(id)request completion:(id)completion;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDInstallConfigurationOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDInstallConfigurationOperation;
  [(DMDInstallConfigurationOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___DMDInstallConfigurationOperation;
  if (!objc_msgSendSuper2(&v10, "validateRequest:error:", requestCopy, error))
  {
    goto LABEL_6;
  }

  profile = [requestCopy profile];

  if (!profile)
  {
    if (!error)
    {
      goto LABEL_7;
    }

    v11 = DMFInvalidParameterErrorKey;
    v12 = @"request.profile";
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    *error = DMFErrorWithCodeAndUserInfo();

LABEL_6:
    LOBYTE(error) = 0;
    goto LABEL_7;
  }

  LOBYTE(error) = 1;
LABEL_7:

  return error;
}

+ (NSSet)excludedBoolRestrictions
{
  if (qword_1000FF100 != -1)
  {
    sub_100084678();
  }

  v3 = qword_1000FF0F8;

  return v3;
}

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  profile = [requestCopy profile];
  v6 = [profile objectForKeyedSubscript:@"PayloadContent"];

  if ([v6 count] == 1)
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v7 objectForKeyedSubscript:@"PayloadType"];
    v9 = [v8 isEqualToString:@"com.apple.applicationaccess"];

    if (!v9)
    {
      profile2 = [requestCopy profile];
      v10 = 0;
      goto LABEL_9;
    }

    v10 = [v6 objectAtIndexedSubscript:0];
  }

  else
  {
    if ([v6 count] == 2)
    {
      profile3 = [requestCopy profile];
      v12 = [profile3 mutableCopy];

      v13 = [v6 objectAtIndexedSubscript:0];
      v29 = v13;
      v14 = [NSArray arrayWithObjects:&v29 count:1];
      [v12 setObject:v14 forKeyedSubscript:@"PayloadContent"];

      profile2 = [v12 copy];
      v10 = [v6 objectAtIndexedSubscript:1];

      goto LABEL_9;
    }

    v10 = 0;
  }

  profile2 = 0;
LABEL_9:
  v26 = 0;
  v16 = [(DMDInstallConfigurationOperation *)self _installProfile:profile2 withRequest:requestCopy error:&v26];
  v17 = v26;
  v18 = v17;
  if (v16)
  {
    v25 = v17;
    v19 = [(DMDInstallConfigurationOperation *)self _installRestrictionsPayload:v10 withRequest:requestCopy error:&v25];
    v20 = v25;

    if (v19)
    {
      [(DMDInstallConfigurationOperation *)self endOperationWithResultObject:0];
      v18 = v20;
    }

    else
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10004A620;
      v23[3] = &unk_1000CDBD0;
      v23[4] = self;
      v24 = v20;
      v18 = v20;
      [(DMDInstallConfigurationOperation *)self _rollbackProfile:profile2 withRequest:requestCopy completion:v23];
    }
  }

  else if (v17)
  {
    v27 = NSUnderlyingErrorKey;
    v28 = v17;
    v21 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v22 = DMFErrorWithCodeAndUserInfo();
    [(DMDInstallConfigurationOperation *)self endOperationWithError:v22];
  }

  else
  {
    v18 = DMFErrorWithCodeAndUserInfo();
    [(DMDInstallConfigurationOperation *)self endOperationWithError:v18];
  }
}

- (BOOL)_installProfile:(id)profile withRequest:(id)request error:(id *)error
{
  requestCopy = request;
  if (profile)
  {
    v30 = 0;
    v9 = [NSPropertyListSerialization dataWithPropertyList:profile format:200 options:0 error:&v30];
    v10 = v30;
    if (!v9)
    {
      v14 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10008468C(v10);
      }

      if (error)
      {
        v15 = v10;
        v13 = 0;
        *error = v10;
      }

      else
      {
        v13 = 0;
      }

      v26 = v10;
      goto LABEL_21;
    }

    v11 = +[MCProfileConnection sharedConnection];
    context = [(DMDTaskOperation *)self context];
    if ([context runAsUser])
    {
    }

    else
    {
      request = [(DMDInstallConfigurationOperation *)self request];
      type = [request type];

      if (type != 1)
      {
        v18 = 1;
        goto LABEL_13;
      }
    }

    v18 = 2;
LABEL_13:
    v31 = kMCInstallProfileOptionInstallationType;
    v19 = [NSNumber numberWithInteger:v18];
    v32 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v21 = [v20 mutableCopy];

    managingProfileIdentifier = [requestCopy managingProfileIdentifier];

    if (managingProfileIdentifier)
    {
      [v21 setObject:&__kCFBooleanTrue forKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
      managingProfileIdentifier2 = [requestCopy managingProfileIdentifier];
      [v21 setObject:managingProfileIdentifier2 forKeyedSubscript:kMCInstallProfileOptionManagingProfileIdentifier];
    }

    v24 = [v21 copy];
    v29 = v10;
    v25 = [v11 installProfileData:v9 options:v24 outError:&v29];
    v26 = v29;

    v13 = v25 != 0;
    if (error && !v25)
    {
      v27 = v26;
      *error = v26;
    }

LABEL_21:
    goto LABEL_22;
  }

  v13 = 1;
LABEL_22:

  return v13;
}

- (void)_rollbackProfile:(id)profile withRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  v9 = completionCopy;
  if (profile)
  {
    profile = [request profile];
    v11 = [profile objectForKeyedSubscript:@"PayloadIdentifier"];

    v12 = +[MCProfileConnection sharedConnection];
    v13 = [v12 installedProfileWithIdentifier:v11];

    if (!v13)
    {
      v21 = DMFProfileIdentifierErrorKey;
      v22 = v11;
      v15 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v16 = DMFErrorWithCodeAndUserInfo();
      (v9)[2](v9, v16);

LABEL_11:
      goto LABEL_12;
    }

    context = [(DMDTaskOperation *)self context];
    if ([context runAsUser])
    {
    }

    else
    {
      request = [(DMDInstallConfigurationOperation *)self request];
      type = [request type];

      if (type != 1)
      {
        v19 = 1;
        goto LABEL_10;
      }
    }

    v19 = 2;
LABEL_10:
    v20 = +[MCProfileConnection sharedConnection];
    [v20 removeProfileAsyncWithIdentifier:v11 installationType:v19 completion:v9];

    goto LABEL_11;
  }

  (*(completionCopy + 2))(completionCopy, 0);
LABEL_12:
}

- (BOOL)_installRestrictionsPayload:(id)payload withRequest:(id)request error:(id *)error
{
  requestCopy = request;
  if (payload)
  {
    v35 = 0;
    v9 = [(DMDInstallConfigurationOperation *)self _mapMCRestrictionsFromPayload:payload error:&v35];
    v10 = v35;
    v11 = v10;
    if (v9)
    {
      v34 = v10;
      v12 = [(DMDInstallConfigurationOperation *)self _applyHeuristicsToRestrictions:v9 error:&v34];
      v13 = v34;

      if (v12)
      {
        profile = [requestCopy profile];
        v15 = [profile objectForKeyedSubscript:@"PayloadIdentifier"];
        v16 = [NSString stringWithFormat:@"%@-restrictions", v15];

        v17 = +[MCProfileConnection sharedConnection];
        v33 = v13;
        v18 = [v17 applyRestrictionDictionary:v12 clientType:@"com.apple.dmd" clientUUID:v16 localizedClientDescription:0 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:&v33];
        v11 = v33;

        if (v18)
        {
          v19 = MCFeatureMaximumAppsRating;
          v20 = [MCRestrictionManager valueForFeature:MCFeatureMaximumAppsRating withRestrictionsDictionary:v12];
          intValue = [v20 intValue];
          v22 = DMFAppRatingUnrated;
          if (intValue == [DMFAppRatingUnrated intValue])
          {
            v23 = +[MCProfileConnection sharedConnection];
            v24 = [v23 userValueForSetting:v19];

            LODWORD(v23) = [v24 intValue];
            if (v23 == [DMFAppRatingAllApps intValue])
            {
              v25 = +[MCProfileConnection sharedConnection];
              [v25 setValue:v22 forSetting:v19];
            }
          }
        }

        else
        {
          v30 = DMFConfigurationEngineLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_100084710(v11);
          }

          if (error)
          {
            v31 = v11;
            *error = v11;
          }
        }
      }

      else
      {
        v28 = DMFConfigurationEngineLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_100084794(v13);
        }

        if (error)
        {
          v29 = v13;
          v18 = 0;
          *error = v13;
        }

        else
        {
          v18 = 0;
        }

        v11 = v13;
      }
    }

    else
    {
      v26 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100084818(v11);
      }

      if (error)
      {
        v27 = v11;
        v18 = 0;
        *error = v11;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (id)_mapMCRestrictionsFromPayload:(id)payload error:(id *)error
{
  errorCopy = error;
  payloadCopy = payload;
  v4 = [NSMutableDictionary dictionaryWithCapacity:4];
  v5 = +[NSMutableDictionary dictionary];
  v6 = +[NSMutableDictionary dictionary];
  v7 = +[NSMutableDictionary dictionary];
  v8 = +[NSMutableDictionary dictionary];
  v9 = MCRestrictedBoolKey;
  v88 = v5;
  [v4 setObject:v5 forKeyedSubscript:MCRestrictedBoolKey];
  v10 = MCRestrictedValueKey;
  v87 = v6;
  [v4 setObject:v6 forKeyedSubscript:MCRestrictedValueKey];
  v11 = MCIntersectionKey;
  v81 = v7;
  [v4 setObject:v7 forKeyedSubscript:MCIntersectionKey];
  v12 = MCUnionKey;
  v71 = v4;
  v76 = v8;
  [v4 setObject:v8 forKeyedSubscript:MCUnionKey];
  v13 = +[MCRestrictionManager sharedManager];
  defaultRestrictions = [v13 defaultRestrictions];

  v15 = [defaultRestrictions objectForKeyedSubscript:v9];
  v74 = [defaultRestrictions objectForKeyedSubscript:v10];
  v73 = [defaultRestrictions objectForKeyedSubscript:v11];
  v70 = defaultRestrictions;
  v72 = [defaultRestrictions objectForKeyedSubscript:v12];
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  obj = v15;
  v16 = [obj countByEnumeratingWithState:&v111 objects:v136 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v112;
    v19 = MCRestrictedBoolValueKey;
    while (2)
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v112 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v111 + 1) + 8 * i);
        v22 = +[DMDInstallConfigurationOperation excludedBoolRestrictions];
        v23 = [v22 containsObject:v21];

        if ((v23 & 1) == 0)
        {
          v24 = [payloadCopy objectForKey:v21];
          if (v24)
          {
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              v134 = DMFInvalidParameterErrorKey;
              v135 = @"key";
              v27 = [NSDictionary dictionaryWithObjects:&v135 forKeys:&v134 count:1];
              v28 = DMFErrorWithCodeAndUserInfo();

              if (v28)
              {
                goto LABEL_76;
              }

              goto LABEL_17;
            }

            v25 = [obj objectForKey:v21];
            mCMutableDeepCopy = [v25 MCMutableDeepCopy];

            if (!mCMutableDeepCopy)
            {
              mCMutableDeepCopy = objc_alloc_init(NSMutableDictionary);
            }

            [mCMutableDeepCopy setObject:v24 forKey:v19];
            [v88 setObject:mCMutableDeepCopy forKey:v21];
          }
        }
      }

      v17 = [obj countByEnumeratingWithState:&v111 objects:v136 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v29 = v74;
  v30 = [v29 countByEnumeratingWithState:&v107 objects:v133 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v108;
    v33 = MCRestrictedValueValueKey;
    while (2)
    {
      for (j = 0; j != v31; j = j + 1)
      {
        if (*v108 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v35 = *(*(&v107 + 1) + 8 * j);
        v36 = [payloadCopy objectForKey:{v35, errorCopy}];
        if (v36)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v131 = DMFInvalidParameterErrorKey;
            v132 = @"key";
            v39 = [NSDictionary dictionaryWithObjects:&v132 forKeys:&v131 count:1];
            v28 = DMFErrorWithCodeAndUserInfo();

            if (v28)
            {
              goto LABEL_76;
            }

            goto LABEL_31;
          }

          v37 = [v29 objectForKey:v35];
          mCMutableDeepCopy2 = [v37 MCMutableDeepCopy];

          if (!mCMutableDeepCopy2)
          {
            mCMutableDeepCopy2 = objc_alloc_init(NSMutableDictionary);
          }

          [mCMutableDeepCopy2 setObject:v36 forKey:v33];
          [v87 setObject:mCMutableDeepCopy2 forKey:v35];
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v107 objects:v133 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

LABEL_31:
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v82 = v73;
  v85 = [v82 countByEnumeratingWithState:&v103 objects:v130 count:16];
  if (v85)
  {
    v83 = *v104;
    v75 = DMFInvalidParameterErrorKey;
    v77 = MCIntersectionValuesKey;
    while (2)
    {
      for (k = 0; k != v85; k = k + 1)
      {
        if (*v104 != v83)
        {
          objc_enumerationMutation(v82);
        }

        v41 = *(*(&v103 + 1) + 8 * k);
        v42 = [payloadCopy objectForKeyedSubscript:{v41, errorCopy}];
        if (v42)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v123 = v75;
            v124 = @"key";
            v52 = [NSDictionary dictionaryWithObjects:&v124 forKeys:&v123 count:1];
            v28 = DMFErrorWithCodeAndUserInfo();

            if (v28)
            {
              goto LABEL_76;
            }

            goto LABEL_53;
          }

          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v43 = v42;
          v44 = [v43 countByEnumeratingWithState:&v99 objects:v129 count:16];
          if (v44)
          {
            v45 = v44;
            v46 = *v100;
            while (2)
            {
              for (m = 0; m != v45; m = m + 1)
              {
                if (*v100 != v46)
                {
                  objc_enumerationMutation(v43);
                }

                v48 = *(*(&v99 + 1) + 8 * m);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v127 = v75;
                  v128 = @"key";
                  v49 = [NSDictionary dictionaryWithObjects:&v128 forKeys:&v127 count:1];
                  v28 = DMFErrorWithCodeAndUserInfo();

                  if (v28)
                  {
LABEL_74:

                    goto LABEL_76;
                  }

                  goto LABEL_48;
                }
              }

              v45 = [v43 countByEnumeratingWithState:&v99 objects:v129 count:16];
              if (v45)
              {
                continue;
              }

              break;
            }
          }

LABEL_48:
          v50 = [(DMDInstallConfigurationOperation *)self _intersectionFeatureForPayloadRestrictionKey:v41];
          v125 = v77;
          v126 = v43;
          v51 = [NSDictionary dictionaryWithObjects:&v126 forKeys:&v125 count:1];
          [v81 setObject:v51 forKeyedSubscript:v50];
        }
      }

      v85 = [v82 countByEnumeratingWithState:&v103 objects:v130 count:16];
      if (v85)
      {
        continue;
      }

      break;
    }
  }

LABEL_53:
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v82 = v72;
  v86 = [v82 countByEnumeratingWithState:&v95 objects:v122 count:16];
  if (!v86)
  {
LABEL_73:

LABEL_79:
    v64 = v71;
    v67 = v71;
    v28 = 0;
    v65 = v70;
    goto LABEL_80;
  }

  v84 = *v96;
  v78 = DMFInvalidParameterErrorKey;
  v80 = MCUnionValuesKey;
LABEL_55:
  v53 = 0;
  while (1)
  {
    if (*v96 != v84)
    {
      objc_enumerationMutation(v82);
    }

    v54 = *(*(&v95 + 1) + 8 * v53);
    v55 = [payloadCopy objectForKeyedSubscript:{v54, errorCopy}];
    if (v55)
    {
      break;
    }

LABEL_71:

    if (++v53 == v86)
    {
      v86 = [v82 countByEnumeratingWithState:&v95 objects:v122 count:16];
      if (v86)
      {
        goto LABEL_55;
      }

      goto LABEL_73;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v43 = v55;
    v56 = [v43 countByEnumeratingWithState:&v91 objects:v121 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v92;
LABEL_62:
      v59 = 0;
      while (1)
      {
        if (*v92 != v58)
        {
          objc_enumerationMutation(v43);
        }

        v60 = *(*(&v91 + 1) + 8 * v59);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        if (v57 == ++v59)
        {
          v57 = [v43 countByEnumeratingWithState:&v91 objects:v121 count:16];
          if (v57)
          {
            goto LABEL_62;
          }

          goto LABEL_68;
        }
      }

      v119 = v78;
      v120 = @"key";
      v61 = [NSDictionary dictionaryWithObjects:&v120 forKeys:&v119 count:1];
      v28 = DMFErrorWithCodeAndUserInfo();

      if (v28)
      {
        goto LABEL_74;
      }
    }

    else
    {
LABEL_68:
    }

    v117 = v80;
    v118 = v43;
    v62 = [NSDictionary dictionaryWithObjects:&v118 forKeys:&v117 count:1];
    [v76 setObject:v62 forKeyedSubscript:v54];

    goto LABEL_71;
  }

  v115 = v78;
  v116 = @"key";
  v63 = [NSDictionary dictionaryWithObjects:&v116 forKeys:&v115 count:1];
  v28 = DMFErrorWithCodeAndUserInfo();

  if (!v28)
  {
    goto LABEL_79;
  }

LABEL_76:
  v65 = v70;
  v64 = v71;
  if (errorCopy)
  {
    v66 = v28;
    v67 = 0;
    *errorCopy = v28;
  }

  else
  {
    v67 = 0;
  }

LABEL_80:

  return v67;
}

- (id)_applyHeuristicsToRestrictions:(id)restrictions error:(id *)error
{
  restrictionsCopy = restrictions;
  v6 = +[NSDictionary dictionary];
  v14 = 0;
  v7 = [MCRestrictionManager restrictionsAfterApplyingRestrictionsDictionary:restrictionsCopy toRestrictionsDictionary:v6 outChangeDetected:0 outError:&v14];

  v8 = v14;
  v9 = +[MCHacks sharedHacks];
  v10 = objc_opt_new();
  [v9 _applyHeuristicsToRestrictions:v7 forProfile:v10 ignoresUnrestrictableApps:0];

  if (v8)
  {
    if (error)
    {
      v11 = v8;
      v12 = 0;
      *error = v8;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = [v7 copy];
  }

  return v12;
}

+ (id)_intersectionAliasToFeatures
{
  if (qword_1000FF110 != -1)
  {
    sub_10008489C();
  }

  v3 = qword_1000FF108;

  return v3;
}

- (id)_intersectionFeatureForPayloadRestrictionKey:(id)key
{
  keyCopy = key;
  _intersectionAliasToFeatures = [objc_opt_class() _intersectionAliasToFeatures];
  v5 = [_intersectionAliasToFeatures objectForKey:keyCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = keyCopy;
  }

  v8 = v7;

  return v7;
}

@end