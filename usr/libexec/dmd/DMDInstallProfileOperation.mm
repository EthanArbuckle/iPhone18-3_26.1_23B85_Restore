@interface DMDInstallProfileOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (id)whitelistedClassesForRequest;
- (void)_installInteractiveProfile:(id)a3;
- (void)_installSilentProfileData:(id)a3 managingProfileIdentifier:(id)a4 personaID:(id)a5;
- (void)runWithRequest:(id)a3;
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

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15.receiver = a1;
  v15.super_class = &OBJC_METACLASS___DMDInstallProfileOperation;
  if (!objc_msgSendSuper2(&v15, "validateRequest:error:", v6, a4))
  {
    goto LABEL_11;
  }

  v7 = [v6 profileData];

  if (!v7)
  {
    if (!a4)
    {
      goto LABEL_12;
    }

    v18 = DMFInvalidParameterErrorKey;
    v19 = @"request.profileData";
    v11 = &v19;
    v12 = &v18;
    goto LABEL_10;
  }

  v8 = [v6 managingProfileIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = [v6 style];

    if (v10 != 1)
    {
      if (!a4)
      {
        goto LABEL_12;
      }

      v16 = DMFInvalidParameterErrorKey;
      v17 = @"request.managingProfileIdentifier";
      v11 = &v17;
      v12 = &v16;
LABEL_10:
      v13 = [NSDictionary dictionaryWithObjects:v11 forKeys:v12 count:1];
      *a4 = DMFErrorWithCodeAndUserInfo();

LABEL_11:
      LOBYTE(a4) = 0;
      goto LABEL_12;
    }
  }

  LOBYTE(a4) = 1;
LABEL_12:

  return a4;
}

- (void)runWithRequest:(id)a3
{
  v9 = a3;
  v4 = [v9 profileData];
  v5 = [v9 managingProfileIdentifier];
  v6 = DMCBYSetupAssistantNeedsToRun();
  v7 = [v9 style];
  if (v7 == 2)
  {
    if (v6)
    {
      [(DMDTaskOperation *)self endOperationWithDMFErrorCode:2001];
      goto LABEL_10;
    }
  }

  else
  {
    if (v7 == 1)
    {
      goto LABEL_6;
    }

    if (v7)
    {
      goto LABEL_10;
    }

    if ((v6 & 1) != 0 || getuid() == 502)
    {
LABEL_6:
      v8 = [v9 personaID];
      [(DMDInstallProfileOperation *)self _installSilentProfileData:v4 managingProfileIdentifier:v5 personaID:v8];

      goto LABEL_10;
    }
  }

  [(DMDInstallProfileOperation *)self _installInteractiveProfile:v4];
LABEL_10:
}

- (void)_installSilentProfileData:(id)a3 managingProfileIdentifier:(id)a4 personaID:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = +[MCProfileConnection sharedConnection];
  v12 = [(DMDTaskOperation *)self context];
  if ([v12 runAsUser])
  {

LABEL_4:
    v15 = 2;
    goto LABEL_6;
  }

  v13 = [(DMDInstallProfileOperation *)self request];
  v14 = [v13 type];

  if (v14 == 1)
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

  if (v8)
  {
    [v18 setObject:&__kCFBooleanTrue forKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
    [v18 setObject:v8 forKeyedSubscript:kMCInstallProfileOptionManagingProfileIdentifier];
  }

  if (v9)
  {
    [v18 setObject:v9 forKeyedSubscript:kMDMPersonaKey];
  }

  v19 = [v18 copy];
  v24 = 0;
  v20 = [v11 installProfileData:v10 options:v19 outError:&v24];

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

- (void)_installInteractiveProfile:(id)a3
{
  v4 = a3;
  v16 = 0;
  v5 = [MCProfile profileWithData:v4 outError:&v16];
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
      v11 = [v8 queueFileDataForAcceptance:v4 originalFileName:0 outError:&v15];
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