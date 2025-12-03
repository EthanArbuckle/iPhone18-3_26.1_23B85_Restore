@interface DMDRemoveConfigurationOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)whitelistedClassesForRequest;
- (BOOL)_removeRestrictionsWithRequest:(id)request error:(id *)error;
- (void)_removeProfile:(id)profile withRequest:(id)request completion:(id)completion;
- (void)runWithRequest:(id)request;
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

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___DMDRemoveConfigurationOperation;
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

    if (v9)
    {
      profile2 = 0;
      v11 = 1;
    }

    else
    {
      profile2 = [requestCopy profile];
      v11 = 0;
    }
  }

  else if ([v6 count] == 2)
  {
    profile3 = [requestCopy profile];
    v13 = [profile3 mutableCopy];

    v14 = [v6 objectAtIndexedSubscript:0];
    v20 = v14;
    v11 = 1;
    v15 = [NSArray arrayWithObjects:&v20 count:1];
    [v13 setObject:v15 forKeyedSubscript:@"PayloadContent"];

    profile2 = [v13 copy];
  }

  else
  {
    v11 = 0;
    profile2 = 0;
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100069314;
  v17[3] = &unk_1000CFDE0;
  v19 = v11;
  v17[4] = self;
  v18 = requestCopy;
  v16 = requestCopy;
  [(DMDRemoveConfigurationOperation *)self _removeProfile:profile2 withRequest:v16 completion:v17];
}

- (void)_removeProfile:(id)profile withRequest:(id)request completion:(id)completion
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
      request = [(DMDRemoveConfigurationOperation *)self request];
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

- (BOOL)_removeRestrictionsWithRequest:(id)request error:(id *)error
{
  profile = [request profile];
  v5 = [profile objectForKeyedSubscript:@"PayloadIdentifier"];
  v6 = [NSString stringWithFormat:@"%@-restrictions", v5];

  v7 = +[MCProfileConnection sharedConnection];
  v8 = [v7 clientRestrictionsForClientUUID:v6];

  v9 = MCFeatureMaximumAppsRating;
  v10 = [MCRestrictionManager valueForFeature:MCFeatureMaximumAppsRating withRestrictionsDictionary:v8];
  intValue = [v10 intValue];
  v12 = DMFAppRatingUnrated;
  intValue2 = [DMFAppRatingUnrated intValue];
  v14 = +[MCProfileConnection sharedConnection];
  v24 = 0;
  v15 = [v14 applyRestrictionDictionary:0 clientType:@"com.apple.dmd" clientUUID:v6 localizedClientDescription:0 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:&v24];
  v16 = v24;

  if (v15)
  {
    if (intValue == intValue2)
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

    if (*error)
    {
      v21 = v16;
      *error = v16;
    }
  }

  return v15;
}

@end