@interface DMDRemoveManagedBookOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDRemoveManagedBookOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDRemoveManagedBookOperation;
  [(DMDRemoveManagedBookOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___DMDRemoveManagedBookOperation;
  if (!objc_msgSendSuper2(&v11, "validateRequest:error:", requestCopy, error))
  {
    goto LABEL_8;
  }

  persistentID = [requestCopy persistentID];
  if (!persistentID)
  {
    iTunesStoreID = [requestCopy iTunesStoreID];

    if (iTunesStoreID)
    {
      goto LABEL_5;
    }

    if (error)
    {
      DMFErrorWithCodeAndUserInfo();
      *error = v9 = 0;
      goto LABEL_9;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

LABEL_5:
  v9 = 1;
LABEL_9:

  return v9;
}

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  if (MCHasMDMMigrated())
  {
    v5 = +[DMDManagedMediaManager sharedManager];
    [DMDPowerAssertion assertionForOperation:@"DMDRemoveManagedBookOperation: run"];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10006A524;
    v13 = &unk_1000CDC38;
    v6 = v14 = self;
    v15 = v6;
    v7 = objc_retainBlock(&v10);
    persistentID = [requestCopy persistentID];

    if (persistentID)
    {
      persistentID2 = [requestCopy persistentID];
      [v5 removeNonStoreBookWithPersistentID:persistentID2 assertion:v6 completionBlock:v7];
    }

    else
    {
      persistentID2 = [requestCopy iTunesStoreID];
      [v5 removeStoreBookWithiTunesStoreID:persistentID2 assertion:v6 completionBlock:v7];
    }
  }

  else
  {
    [(DMDTaskOperation *)self endOperationWithDMFErrorCode:1650];
  }
}

@end