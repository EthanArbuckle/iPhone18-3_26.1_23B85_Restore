@interface DMDInstallManagedBookOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDInstallManagedBookOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDInstallManagedBookOperation;
  [(DMDInstallManagedBookOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14.receiver = a1;
  v14.super_class = &OBJC_METACLASS___DMDInstallManagedBookOperation;
  if (!objc_msgSendSuper2(&v14, "validateRequest:error:", v6, a4))
  {
    goto LABEL_13;
  }

  v7 = [v6 URL];

  if (v7)
  {
    v8 = [v6 persistentID];

    if (!v8)
    {
      if (a4)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v9 = [v6 iTunesStoreID];

    if (!v9)
    {
      if (a4)
      {
LABEL_10:
        DMFErrorWithCodeAndUserInfo();
        *a4 = v11 = 0;
        goto LABEL_14;
      }

LABEL_13:
      v11 = 0;
      goto LABEL_14;
    }

    v10 = [v6 originator];

    if (!v10)
    {
      if (a4)
      {
        v15 = DMFInvalidParameterErrorKey;
        v16 = @"request.originator";
        v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        *a4 = DMFErrorWithCodeAndUserInfo();
      }

      goto LABEL_13;
    }
  }

  v11 = 1;
LABEL_14:

  return v11;
}

- (void)runWithRequest:(id)a3
{
  v4 = a3;
  v5 = [DMDPowerAssertion assertionForOperation:@"DMDInstallManagedBookOperation: run"];
  if (MCHasMDMMigrated())
  {
    v6 = [v4 iTunesStoreID];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10004C3C8;
    v21 = &unk_1000CF328;
    v22 = self;
    v7 = v5;
    v23 = v7;
    v8 = objc_retainBlock(&v18);
    v9 = [DMDManagedMediaManager sharedManager:v18];
    if (v6)
    {
      v10 = [v4 originator];
      [v9 installStoreBookWithiTunesStoreID:v6 originator:v10 assertion:v7 completionBlock:v8];
    }

    else
    {
      v10 = objc_opt_new();
      v11 = [v4 persistentID];
      [v10 setPersistentID:v11];

      v12 = [v4 author];
      [v10 setAuthor:v12];

      v13 = [v4 title];
      [v10 setTitle:v13];

      v14 = [v4 version];
      [v10 setVersion:v14];

      v15 = [v4 type];
      if (v15 > 2)
      {
        v16 = 0;
      }

      else
      {
        v16 = *off_1000CF348[v15];
      }

      [v10 setKind:v16];
      v17 = [v4 URL];
      [v9 installNonStoreBook:v10 fileExtension:v16 URL:v17 assertion:v7 completionBlock:v8];
    }
  }

  else
  {
    [(DMDTaskOperation *)self endOperationWithDMFErrorCode:1650];
  }
}

@end