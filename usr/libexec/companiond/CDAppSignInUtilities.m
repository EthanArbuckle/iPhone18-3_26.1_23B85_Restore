@interface CDAppSignInUtilities
+ (id)credentialRequestFromClientAuthenticationContext:(id)a3;
+ (void)preparePasskeyRequestsWithRequest:(id)a3 applicationIdentifier:(id)a4 approvedWebCredentialsDomains:(id)a5 completionHandler:(id)a6;
+ (void)sendSessionActivatedMetricsWithRequest:(id)a3 approvedAssociatedDomains:(id)a4;
+ (void)sendSessionCompletedMetricsWithError:(id)a3;
@end

@implementation CDAppSignInUtilities

+ (void)sendSessionActivatedMetricsWithRequest:(id)a3 approvedAssociatedDomains:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2810000000;
  v16 = "";
  v17 = 0;
  v7 = [v5 appleIDRequest];

  if (v7)
  {
    *(v14 + 32) |= 1u;
  }

  v8 = [v5 passwordRequest];

  if (v8)
  {
    *(v14 + 32) |= 2u;
  }

  v9 = [v5 customAuthenticationMethods];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100002884;
  v12[3] = &unk_100089CB8;
  v12[4] = &v13;
  [v9 enumerateObjectsUsingBlock:v12];

  v10 = [v6 count];
  v11 = *(v14 + 32);
  if (v10)
  {
    v11 |= 0x20u;
    *(v14 + 32) = v11;
  }

  [CPSMetrics sendAppSignInSessionActivatedEvent:v11];
  _Block_object_dispose(&v13, 8);
}

+ (void)sendSessionCompletedMetricsWithError:(id)a3
{
  v7 = a3;
  v3 = CPSErrorGetCustomAuthenticationMethod();
  if (v3)
  {
    v4 = CPSMetricsSessionResultWithCustomMethod();
    goto LABEL_8;
  }

  v5 = [v7 domain];
  if ([v5 isEqualToString:CPSErrorDomain])
  {
    v6 = [v7 code];

    if (v6 == 104)
    {
      v4 = 2;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v4 = 3;
LABEL_8:
  [CPSMetrics sendAppSignInSessionCompletedEvent:v4];
}

+ (id)credentialRequestFromClientAuthenticationContext:(id)a3
{
  v4 = a3;
  v5 = [v4 appleIDRequest];
  v6 = [v4 platformKeyCredentialAssertionOptions];
  v7 = [v4 platformKeyCredentialRegistrationOptions];
  v8 = sub_100002C64(a1, v6, v7);
  v9 = [v4 passwordRequest];
  v10 = v9 != 0;

  v11 = v10 | (2 * (v5 != 0));
  if (v6)
  {
    v11 |= 8uLL;
  }

  if (v7)
  {
    v12 = v11 | 4;
  }

  else
  {
    v12 = v11;
  }

  v13 = [[ASCCredentialRequestContext alloc] initWithRequestTypes:v12];
  [v13 setAppleIDAuthorizationRequest:v5];
  [v13 setPlatformKeyCredentialAssertionOptions:v6];
  [v13 setPlatformKeyCredentialCreationOptions:v7];
  v14 = [v4 appIdentifier];
  [v13 setProxiedAppIdentifier:v14];

  v15 = [v4 appName];
  [v13 setProxiedAppName:v15];

  v16 = [v4 appDomains];
  [v13 setProxiedAssociatedDomains:v16];

  v17 = [v4 appBundleIdentifier];
  [v13 setProxiedBundleIdentifier:v17];

  v18 = [v4 appIconData];
  [v13 setProxiedIconData:v18];

  v19 = [v4 appIconScale];
  [v13 setProxiedIconScale:v19];

  v20 = [v4 deviceName];
  [v13 setProxiedOriginDeviceName:v20];

  v21 = [v4 appTeamIdentifier];

  [v13 setProxiedTeamIdentifier:v21];
  [v13 setRelyingPartyIdentifier:v8];

  return v13;
}

+ (void)preparePasskeyRequestsWithRequest:(id)a3 applicationIdentifier:(id)a4 approvedWebCredentialsDomains:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 platformKeyCredentialAssertionOptions];
  v15 = [v10 platformKeyCredentialRegistrationOptions];
  if (!(v14 | v15))
  {
    sub_10005DFEC(a2);
  }

  v16 = v15;
  if ([v11 length])
  {
    v17 = sub_100002C64(CDAppSignInUtilities, v14, v16);
    if ([v17 length])
    {
      if ([v12 containsObject:v17])
      {
        v13[2](v13, 0);
      }

      else
      {
        v23 = CPSErrorDomain;
        v27 = NSLocalizedDescriptionKey;
        v24 = [NSString stringWithFormat:@"Application (%@) is not associated with relying party identifier (%@)", v11, v17];
        v28 = v24;
        v25 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v26 = [NSError errorWithDomain:v23 code:205 userInfo:v25];
        (v13)[2](v13, v26);
      }
    }

    else
    {
      v20 = CPSErrorDomain;
      v29 = NSLocalizedDescriptionKey;
      v30 = @"Missing relying party identifier";
      v21 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v22 = [NSError errorWithDomain:v20 code:205 userInfo:v21];
      (v13)[2](v13, v22);
    }
  }

  else
  {
    v18 = CPSErrorDomain;
    v31 = NSLocalizedDescriptionKey;
    v32 = @"Missing application identifier";
    v17 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v19 = [NSError errorWithDomain:v18 code:205 userInfo:v17];
    (v13)[2](v13, v19);
  }
}

@end