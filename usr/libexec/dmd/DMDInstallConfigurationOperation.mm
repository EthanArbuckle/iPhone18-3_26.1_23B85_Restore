@interface DMDInstallConfigurationOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (NSSet)excludedBoolRestrictions;
+ (id)_intersectionAliasToFeatures;
+ (id)whitelistedClassesForRequest;
- (BOOL)_installProfile:(id)a3 withRequest:(id)a4 error:(id *)a5;
- (BOOL)_installRestrictionsPayload:(id)a3 withRequest:(id)a4 error:(id *)a5;
- (id)_applyHeuristicsToRestrictions:(id)a3 error:(id *)a4;
- (id)_intersectionFeatureForPayloadRestrictionKey:(id)a3;
- (id)_mapMCRestrictionsFromPayload:(id)a3 error:(id *)a4;
- (void)_rollbackProfile:(id)a3 withRequest:(id)a4 completion:(id)a5;
- (void)runWithRequest:(id)a3;
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

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___DMDInstallConfigurationOperation;
  if (!objc_msgSendSuper2(&v10, "validateRequest:error:", v6, a4))
  {
    goto LABEL_6;
  }

  v7 = [v6 profile];

  if (!v7)
  {
    if (!a4)
    {
      goto LABEL_7;
    }

    v11 = DMFInvalidParameterErrorKey;
    v12 = @"request.profile";
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    *a4 = DMFErrorWithCodeAndUserInfo();

LABEL_6:
    LOBYTE(a4) = 0;
    goto LABEL_7;
  }

  LOBYTE(a4) = 1;
LABEL_7:

  return a4;
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

- (void)runWithRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 profile];
  v6 = [v5 objectForKeyedSubscript:@"PayloadContent"];

  if ([v6 count] == 1)
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v7 objectForKeyedSubscript:@"PayloadType"];
    v9 = [v8 isEqualToString:@"com.apple.applicationaccess"];

    if (!v9)
    {
      v15 = [v4 profile];
      v10 = 0;
      goto LABEL_9;
    }

    v10 = [v6 objectAtIndexedSubscript:0];
  }

  else
  {
    if ([v6 count] == 2)
    {
      v11 = [v4 profile];
      v12 = [v11 mutableCopy];

      v13 = [v6 objectAtIndexedSubscript:0];
      v29 = v13;
      v14 = [NSArray arrayWithObjects:&v29 count:1];
      [v12 setObject:v14 forKeyedSubscript:@"PayloadContent"];

      v15 = [v12 copy];
      v10 = [v6 objectAtIndexedSubscript:1];

      goto LABEL_9;
    }

    v10 = 0;
  }

  v15 = 0;
LABEL_9:
  v26 = 0;
  v16 = [(DMDInstallConfigurationOperation *)self _installProfile:v15 withRequest:v4 error:&v26];
  v17 = v26;
  v18 = v17;
  if (v16)
  {
    v25 = v17;
    v19 = [(DMDInstallConfigurationOperation *)self _installRestrictionsPayload:v10 withRequest:v4 error:&v25];
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
      [(DMDInstallConfigurationOperation *)self _rollbackProfile:v15 withRequest:v4 completion:v23];
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

- (BOOL)_installProfile:(id)a3 withRequest:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (a3)
  {
    v30 = 0;
    v9 = [NSPropertyListSerialization dataWithPropertyList:a3 format:200 options:0 error:&v30];
    v10 = v30;
    if (!v9)
    {
      v14 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10008468C(v10);
      }

      if (a5)
      {
        v15 = v10;
        v13 = 0;
        *a5 = v10;
      }

      else
      {
        v13 = 0;
      }

      v26 = v10;
      goto LABEL_21;
    }

    v11 = +[MCProfileConnection sharedConnection];
    v12 = [(DMDTaskOperation *)self context];
    if ([v12 runAsUser])
    {
    }

    else
    {
      v16 = [(DMDInstallConfigurationOperation *)self request];
      v17 = [v16 type];

      if (v17 != 1)
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

    v22 = [v8 managingProfileIdentifier];

    if (v22)
    {
      [v21 setObject:&__kCFBooleanTrue forKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
      v23 = [v8 managingProfileIdentifier];
      [v21 setObject:v23 forKeyedSubscript:kMCInstallProfileOptionManagingProfileIdentifier];
    }

    v24 = [v21 copy];
    v29 = v10;
    v25 = [v11 installProfileData:v9 options:v24 outError:&v29];
    v26 = v29;

    v13 = v25 != 0;
    if (a5 && !v25)
    {
      v27 = v26;
      *a5 = v26;
    }

LABEL_21:
    goto LABEL_22;
  }

  v13 = 1;
LABEL_22:

  return v13;
}

- (void)_rollbackProfile:(id)a3 withRequest:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (a3)
  {
    v10 = [a4 profile];
    v11 = [v10 objectForKeyedSubscript:@"PayloadIdentifier"];

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

    v14 = [(DMDTaskOperation *)self context];
    if ([v14 runAsUser])
    {
    }

    else
    {
      v17 = [(DMDInstallConfigurationOperation *)self request];
      v18 = [v17 type];

      if (v18 != 1)
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

  (*(v8 + 2))(v8, 0);
LABEL_12:
}

- (BOOL)_installRestrictionsPayload:(id)a3 withRequest:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (a3)
  {
    v35 = 0;
    v9 = [(DMDInstallConfigurationOperation *)self _mapMCRestrictionsFromPayload:a3 error:&v35];
    v10 = v35;
    v11 = v10;
    if (v9)
    {
      v34 = v10;
      v12 = [(DMDInstallConfigurationOperation *)self _applyHeuristicsToRestrictions:v9 error:&v34];
      v13 = v34;

      if (v12)
      {
        v14 = [v8 profile];
        v15 = [v14 objectForKeyedSubscript:@"PayloadIdentifier"];
        v16 = [NSString stringWithFormat:@"%@-restrictions", v15];

        v17 = +[MCProfileConnection sharedConnection];
        v33 = v13;
        v18 = [v17 applyRestrictionDictionary:v12 clientType:@"com.apple.dmd" clientUUID:v16 localizedClientDescription:0 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:&v33];
        v11 = v33;

        if (v18)
        {
          v19 = MCFeatureMaximumAppsRating;
          v20 = [MCRestrictionManager valueForFeature:MCFeatureMaximumAppsRating withRestrictionsDictionary:v12];
          v21 = [v20 intValue];
          v22 = DMFAppRatingUnrated;
          if (v21 == [DMFAppRatingUnrated intValue])
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

          if (a5)
          {
            v31 = v11;
            *a5 = v11;
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

        if (a5)
        {
          v29 = v13;
          v18 = 0;
          *a5 = v13;
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

      if (a5)
      {
        v27 = v11;
        v18 = 0;
        *a5 = v11;
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

- (id)_mapMCRestrictionsFromPayload:(id)a3 error:(id *)a4
{
  v69 = a4;
  v90 = a3;
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
  v14 = [v13 defaultRestrictions];

  v15 = [v14 objectForKeyedSubscript:v9];
  v74 = [v14 objectForKeyedSubscript:v10];
  v73 = [v14 objectForKeyedSubscript:v11];
  v70 = v14;
  v72 = [v14 objectForKeyedSubscript:v12];
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
          v24 = [v90 objectForKey:v21];
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
            v26 = [v25 MCMutableDeepCopy];

            if (!v26)
            {
              v26 = objc_alloc_init(NSMutableDictionary);
            }

            [v26 setObject:v24 forKey:v19];
            [v88 setObject:v26 forKey:v21];
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
        v36 = [v90 objectForKey:{v35, v69}];
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
          v38 = [v37 MCMutableDeepCopy];

          if (!v38)
          {
            v38 = objc_alloc_init(NSMutableDictionary);
          }

          [v38 setObject:v36 forKey:v33];
          [v87 setObject:v38 forKey:v35];
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
        v42 = [v90 objectForKeyedSubscript:{v41, v69}];
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
    v55 = [v90 objectForKeyedSubscript:{v54, v69}];
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
  if (v69)
  {
    v66 = v28;
    v67 = 0;
    *v69 = v28;
  }

  else
  {
    v67 = 0;
  }

LABEL_80:

  return v67;
}

- (id)_applyHeuristicsToRestrictions:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NSDictionary dictionary];
  v14 = 0;
  v7 = [MCRestrictionManager restrictionsAfterApplyingRestrictionsDictionary:v5 toRestrictionsDictionary:v6 outChangeDetected:0 outError:&v14];

  v8 = v14;
  v9 = +[MCHacks sharedHacks];
  v10 = objc_opt_new();
  [v9 _applyHeuristicsToRestrictions:v7 forProfile:v10 ignoresUnrestrictableApps:0];

  if (v8)
  {
    if (a4)
    {
      v11 = v8;
      v12 = 0;
      *a4 = v8;
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

- (id)_intersectionFeatureForPayloadRestrictionKey:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _intersectionAliasToFeatures];
  v5 = [v4 objectForKey:v3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v7;
}

@end