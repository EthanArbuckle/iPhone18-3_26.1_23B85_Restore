@interface CDAppSignInUtilities
+ (id)credentialRequestFromClientAuthenticationContext:(id)context;
+ (void)preparePasskeyRequestsWithRequest:(id)request applicationIdentifier:(id)identifier approvedWebCredentialsDomains:(id)domains completionHandler:(id)handler;
+ (void)sendSessionActivatedMetricsWithRequest:(id)request approvedAssociatedDomains:(id)domains;
+ (void)sendSessionCompletedMetricsWithError:(id)error;
@end

@implementation CDAppSignInUtilities

+ (void)sendSessionActivatedMetricsWithRequest:(id)request approvedAssociatedDomains:(id)domains
{
  requestCopy = request;
  domainsCopy = domains;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2810000000;
  v16 = "";
  v17 = 0;
  appleIDRequest = [requestCopy appleIDRequest];

  if (appleIDRequest)
  {
    *(v14 + 32) |= 1u;
  }

  passwordRequest = [requestCopy passwordRequest];

  if (passwordRequest)
  {
    *(v14 + 32) |= 2u;
  }

  customAuthenticationMethods = [requestCopy customAuthenticationMethods];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100002884;
  v12[3] = &unk_100089CB8;
  v12[4] = &v13;
  [customAuthenticationMethods enumerateObjectsUsingBlock:v12];

  v10 = [domainsCopy count];
  v11 = *(v14 + 32);
  if (v10)
  {
    v11 |= 0x20u;
    *(v14 + 32) = v11;
  }

  [CPSMetrics sendAppSignInSessionActivatedEvent:v11];
  _Block_object_dispose(&v13, 8);
}

+ (void)sendSessionCompletedMetricsWithError:(id)error
{
  errorCopy = error;
  v3 = CPSErrorGetCustomAuthenticationMethod();
  if (v3)
  {
    v4 = CPSMetricsSessionResultWithCustomMethod();
    goto LABEL_8;
  }

  domain = [errorCopy domain];
  if ([domain isEqualToString:CPSErrorDomain])
  {
    code = [errorCopy code];

    if (code == 104)
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

+ (id)credentialRequestFromClientAuthenticationContext:(id)context
{
  contextCopy = context;
  appleIDRequest = [contextCopy appleIDRequest];
  platformKeyCredentialAssertionOptions = [contextCopy platformKeyCredentialAssertionOptions];
  platformKeyCredentialRegistrationOptions = [contextCopy platformKeyCredentialRegistrationOptions];
  v8 = sub_100002C64(self, platformKeyCredentialAssertionOptions, platformKeyCredentialRegistrationOptions);
  passwordRequest = [contextCopy passwordRequest];
  v10 = passwordRequest != 0;

  v11 = v10 | (2 * (appleIDRequest != 0));
  if (platformKeyCredentialAssertionOptions)
  {
    v11 |= 8uLL;
  }

  if (platformKeyCredentialRegistrationOptions)
  {
    v12 = v11 | 4;
  }

  else
  {
    v12 = v11;
  }

  v13 = [[ASCCredentialRequestContext alloc] initWithRequestTypes:v12];
  [v13 setAppleIDAuthorizationRequest:appleIDRequest];
  [v13 setPlatformKeyCredentialAssertionOptions:platformKeyCredentialAssertionOptions];
  [v13 setPlatformKeyCredentialCreationOptions:platformKeyCredentialRegistrationOptions];
  appIdentifier = [contextCopy appIdentifier];
  [v13 setProxiedAppIdentifier:appIdentifier];

  appName = [contextCopy appName];
  [v13 setProxiedAppName:appName];

  appDomains = [contextCopy appDomains];
  [v13 setProxiedAssociatedDomains:appDomains];

  appBundleIdentifier = [contextCopy appBundleIdentifier];
  [v13 setProxiedBundleIdentifier:appBundleIdentifier];

  appIconData = [contextCopy appIconData];
  [v13 setProxiedIconData:appIconData];

  appIconScale = [contextCopy appIconScale];
  [v13 setProxiedIconScale:appIconScale];

  deviceName = [contextCopy deviceName];
  [v13 setProxiedOriginDeviceName:deviceName];

  appTeamIdentifier = [contextCopy appTeamIdentifier];

  [v13 setProxiedTeamIdentifier:appTeamIdentifier];
  [v13 setRelyingPartyIdentifier:v8];

  return v13;
}

+ (void)preparePasskeyRequestsWithRequest:(id)request applicationIdentifier:(id)identifier approvedWebCredentialsDomains:(id)domains completionHandler:(id)handler
{
  requestCopy = request;
  identifierCopy = identifier;
  domainsCopy = domains;
  handlerCopy = handler;
  platformKeyCredentialAssertionOptions = [requestCopy platformKeyCredentialAssertionOptions];
  platformKeyCredentialRegistrationOptions = [requestCopy platformKeyCredentialRegistrationOptions];
  if (!(platformKeyCredentialAssertionOptions | platformKeyCredentialRegistrationOptions))
  {
    sub_10005DFEC(a2);
  }

  v16 = platformKeyCredentialRegistrationOptions;
  if ([identifierCopy length])
  {
    v17 = sub_100002C64(CDAppSignInUtilities, platformKeyCredentialAssertionOptions, v16);
    if ([v17 length])
    {
      if ([domainsCopy containsObject:v17])
      {
        handlerCopy[2](handlerCopy, 0);
      }

      else
      {
        v23 = CPSErrorDomain;
        v27 = NSLocalizedDescriptionKey;
        v24 = [NSString stringWithFormat:@"Application (%@) is not associated with relying party identifier (%@)", identifierCopy, v17];
        v28 = v24;
        v25 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v26 = [NSError errorWithDomain:v23 code:205 userInfo:v25];
        (handlerCopy)[2](handlerCopy, v26);
      }
    }

    else
    {
      v20 = CPSErrorDomain;
      v29 = NSLocalizedDescriptionKey;
      v30 = @"Missing relying party identifier";
      v21 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v22 = [NSError errorWithDomain:v20 code:205 userInfo:v21];
      (handlerCopy)[2](handlerCopy, v22);
    }
  }

  else
  {
    v18 = CPSErrorDomain;
    v31 = NSLocalizedDescriptionKey;
    v32 = @"Missing application identifier";
    v17 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v19 = [NSError errorWithDomain:v18 code:205 userInfo:v17];
    (handlerCopy)[2](handlerCopy, v19);
  }
}

@end