@interface DMDRemoveConfigurationOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (id)whitelistedClassesForRequest;
- (BOOL)_removeRestrictionsWithRequest:(id)a3 error:(id *)a4;
- (void)_removeProfile:(id)a3 withRequest:(id)a4 completion:(id)a5;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDRemoveConfigurationOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDRemoveConfigurationOperation;
  [(DMDRemoveConfigurationOperation *)&v2 waitUntilFinished];
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
  v10.super_class = &OBJC_METACLASS___DMDRemoveConfigurationOperation;
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

    if (v9)
    {
      v10 = 0;
      v11 = 1;
    }

    else
    {
      v10 = [v4 profile];
      v11 = 0;
    }
  }

  else if ([v6 count] == 2)
  {
    v12 = [v4 profile];
    v13 = [v12 mutableCopy];

    v14 = [v6 objectAtIndexedSubscript:0];
    v20 = v14;
    v11 = 1;
    v15 = [NSArray arrayWithObjects:&v20 count:1];
    [v13 setObject:v15 forKeyedSubscript:@"PayloadContent"];

    v10 = [v13 copy];
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100069314;
  v17[3] = &unk_1000CFDE0;
  v19 = v11;
  v17[4] = self;
  v18 = v4;
  v16 = v4;
  [(DMDRemoveConfigurationOperation *)self _removeProfile:v10 withRequest:v16 completion:v17];
}

- (void)_removeProfile:(id)a3 withRequest:(id)a4 completion:(id)a5
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
      v17 = [(DMDRemoveConfigurationOperation *)self request];
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

- (BOOL)_removeRestrictionsWithRequest:(id)a3 error:(id *)a4
{
  v4 = [a3 profile];
  v5 = [v4 objectForKeyedSubscript:@"PayloadIdentifier"];
  v6 = [NSString stringWithFormat:@"%@-restrictions", v5];

  v7 = +[MCProfileConnection sharedConnection];
  v8 = [v7 clientRestrictionsForClientUUID:v6];

  v9 = MCFeatureMaximumAppsRating;
  v10 = [MCRestrictionManager valueForFeature:MCFeatureMaximumAppsRating withRestrictionsDictionary:v8];
  v11 = [v10 intValue];
  v12 = DMFAppRatingUnrated;
  v13 = [DMFAppRatingUnrated intValue];
  v14 = +[MCProfileConnection sharedConnection];
  v24 = 0;
  v15 = [v14 applyRestrictionDictionary:0 clientType:@"com.apple.dmd" clientUUID:v6 localizedClientDescription:0 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:&v24];
  v16 = v24;

  if (v15)
  {
    if (v11 == v13)
    {
      v17 = +[MCProfileConnection sharedConnection];
      v18 = [v17 userValueForSetting:v9];

      LODWORD(v17) = [v18 intValue];
      if (v17 == [v12 intValue])
      {
        v19 = +[MCProfileConnection sharedConnection];
        [v19 setValue:DMFAppRatingAllApps forSetting:v9];
      }
    }
  }

  else
  {
    v20 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100087508(v16, v20);
    }

    if (*a4)
    {
      v21 = v16;
      *a4 = v16;
    }
  }

  return v15;
}

@end