@interface DMDInstallProfileOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)whitelistedClassesForRequest;
- (void)_installInteractiveProfile:(id)profile;
- (void)_installSilentProfileData:(id)data managingProfileIdentifier:(id)identifier personaID:(id)d;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDInstallProfileOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDInstallProfileOperation;
  [(DMDInstallProfileOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v15.receiver = self;
  v15.super_class = &OBJC_METACLASS___DMDInstallProfileOperation;
  if (!objc_msgSendSuper2(&v15, "validateRequest:error:", requestCopy, error))
  {
    goto LABEL_11;
  }

  profileData = [requestCopy profileData];

  if (!profileData)
  {
    if (!error)
    {
      goto LABEL_12;
    }

    v18 = DMFInvalidParameterErrorKey;
    v19 = @"request.profileData";
    v11 = &v19;
    v12 = &v18;
    goto LABEL_10;
  }

  managingProfileIdentifier = [requestCopy managingProfileIdentifier];
  if (managingProfileIdentifier)
  {
    v9 = managingProfileIdentifier;
    style = [requestCopy style];

    if (style != 1)
    {
      if (!error)
      {
        goto LABEL_12;
      }

      v16 = DMFInvalidParameterErrorKey;
      v17 = @"request.managingProfileIdentifier";
      v11 = &v17;
      v12 = &v16;
LABEL_10:
      v13 = [NSDictionary dictionaryWithObjects:v11 forKeys:v12 count:1];
      *error = DMFErrorWithCodeAndUserInfo();

LABEL_11:
      LOBYTE(error) = 0;
      goto LABEL_12;
    }
  }

  LOBYTE(error) = 1;
LABEL_12:

  return error;
}

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  profileData = [requestCopy profileData];
  managingProfileIdentifier = [requestCopy managingProfileIdentifier];
  v6 = DMCBYSetupAssistantNeedsToRun();
  style = [requestCopy style];
  if (style == 2)
  {
    if (v6)
    {
      [(DMDTaskOperation *)self endOperationWithDMFErrorCode:2001];
      goto LABEL_10;
    }
  }

  else
  {
    if (style == 1)
    {
      goto LABEL_6;
    }

    if (style)
    {
      goto LABEL_10;
    }

    if ((v6 & 1) != 0 || getuid() == 502)
    {
LABEL_6:
      personaID = [requestCopy personaID];
      [(DMDInstallProfileOperation *)self _installSilentProfileData:profileData managingProfileIdentifier:managingProfileIdentifier personaID:personaID];

      goto LABEL_10;
    }
  }

  [(DMDInstallProfileOperation *)self _installInteractiveProfile:profileData];
LABEL_10:
}

- (void)_installSilentProfileData:(id)data managingProfileIdentifier:(id)identifier personaID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  dataCopy = data;
  v11 = +[MCProfileConnection sharedConnection];
  context = [(DMDTaskOperation *)self context];
  if ([context runAsUser])
  {

LABEL_4:
    v15 = 2;
    goto LABEL_6;
  }

  request = [(DMDInstallProfileOperation *)self request];
  type = [request type];

  if (type == 1)
  {
    goto LABEL_4;
  }

  v15 = 1;
LABEL_6:
  v27 = kMCInstallProfileOptionInstallationType;
  v16 = [NSNumber numberWithInteger:v15];
  v28 = v16;
  v17 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v18 = [v17 mutableCopy];

  if (identifierCopy)
  {
    [v18 setObject:&__kCFBooleanTrue forKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
    [v18 setObject:identifierCopy forKeyedSubscript:kMCInstallProfileOptionManagingProfileIdentifier];
  }

  if (dCopy)
  {
    [v18 setObject:dCopy forKeyedSubscript:kMDMPersonaKey];
  }

  v19 = [v18 copy];
  v24 = 0;
  v20 = [v11 installProfileData:dataCopy options:v19 outError:&v24];

  v21 = v24;
  if (v20)
  {
    [(DMDInstallProfileOperation *)self endOperationWithResultObject:0];
  }

  else
  {
    if (v21)
    {
      v25 = NSUnderlyingErrorKey;
      v26 = v21;
      v22 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v23 = DMFErrorWithCodeAndUserInfo();
      [(DMDInstallProfileOperation *)self endOperationWithError:v23];
    }

    else
    {
      v22 = DMFErrorWithCodeAndUserInfo();
      [(DMDInstallProfileOperation *)self endOperationWithError:v22];
    }
  }
}

- (void)_installInteractiveProfile:(id)profile
{
  profileCopy = profile;
  v16 = 0;
  v5 = [MCProfile profileWithData:profileCopy outError:&v16];
  v6 = v16;
  v7 = v6;
  if (v5)
  {
    v8 = +[MCProfileConnection sharedConnection];
    if ([v8 mustInstallProfileNonInteractively:v5])
    {
      [(DMDTaskOperation *)self endOperationWithDMFErrorCode:2000];
    }

    else
    {
      v15 = v7;
      v11 = [v8 queueFileDataForAcceptance:profileCopy originalFileName:0 outError:&v15];
      v12 = v15;

      if (v12)
      {
        v17 = NSUnderlyingErrorKey;
        v18 = v12;
        v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        v14 = DMFErrorWithCodeAndUserInfo();
        [(DMDInstallProfileOperation *)self endOperationWithError:v14];
      }

      else
      {
        [(DMDInstallProfileOperation *)self endOperationWithResultObject:0];
      }
    }

    v7 = v8;
  }

  else if (v6)
  {
    v19 = NSUnderlyingErrorKey;
    v20 = v6;
    v9 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v10 = DMFErrorWithCodeAndUserInfo();
    [(DMDInstallProfileOperation *)self endOperationWithError:v10];
  }

  else
  {
    v7 = DMFErrorWithCodeAndUserInfo();
    [(DMDInstallProfileOperation *)self endOperationWithError:v7];
  }
}

@end