@interface DMDInstallManagedBookOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
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

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v14.receiver = self;
  v14.super_class = &OBJC_METACLASS___DMDInstallManagedBookOperation;
  if (!objc_msgSendSuper2(&v14, "validateRequest:error:", requestCopy, error))
  {
    goto LABEL_13;
  }

  v7 = [requestCopy URL];

  if (v7)
  {
    persistentID = [requestCopy persistentID];

    if (!persistentID)
    {
      if (error)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }
  }

  else
  {
    iTunesStoreID = [requestCopy iTunesStoreID];

    if (!iTunesStoreID)
    {
      if (error)
      {
LABEL_10:
        DMFErrorWithCodeAndUserInfo();
        *error = v11 = 0;
        goto LABEL_14;
      }

LABEL_13:
      v11 = 0;
      goto LABEL_14;
    }

    originator = [requestCopy originator];

    if (!originator)
    {
      if (error)
      {
        v15 = DMFInvalidParameterErrorKey;
        v16 = @"request.originator";
        v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        *error = DMFErrorWithCodeAndUserInfo();
      }

      goto LABEL_13;
    }
  }

  v11 = 1;
LABEL_14:

  return v11;
}

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  v5 = [DMDPowerAssertion assertionForOperation:@"DMDInstallManagedBookOperation: run"];
  if (MCHasMDMMigrated())
  {
    iTunesStoreID = [requestCopy iTunesStoreID];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10004C3C8;
    v21 = &unk_1000CF328;
    selfCopy = self;
    v7 = v5;
    v23 = v7;
    v8 = objc_retainBlock(&v18);
    v9 = [DMDManagedMediaManager sharedManager:v18];
    if (iTunesStoreID)
    {
      originator = [requestCopy originator];
      [v9 installStoreBookWithiTunesStoreID:iTunesStoreID originator:originator assertion:v7 completionBlock:v8];
    }

    else
    {
      originator = objc_opt_new();
      persistentID = [requestCopy persistentID];
      [originator setPersistentID:persistentID];

      author = [requestCopy author];
      [originator setAuthor:author];

      title = [requestCopy title];
      [originator setTitle:title];

      version = [requestCopy version];
      [originator setVersion:version];

      type = [requestCopy type];
      if (type > 2)
      {
        v16 = 0;
      }

      else
      {
        v16 = *off_1000CF348[type];
      }

      [originator setKind:v16];
      v17 = [requestCopy URL];
      [v9 installNonStoreBook:originator fileExtension:v16 URL:v17 assertion:v7 completionBlock:v8];
    }
  }

  else
  {
    [(DMDTaskOperation *)self endOperationWithDMFErrorCode:1650];
  }
}

@end