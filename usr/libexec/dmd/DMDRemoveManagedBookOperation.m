@interface DMDRemoveManagedBookOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
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

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___DMDRemoveManagedBookOperation;
  if (!objc_msgSendSuper2(&v11, "validateRequest:error:", v6, a4))
  {
    goto LABEL_8;
  }

  v7 = [v6 persistentID];
  if (!v7)
  {
    v8 = [v6 iTunesStoreID];

    if (v8)
    {
      goto LABEL_5;
    }

    if (a4)
    {
      DMFErrorWithCodeAndUserInfo();
      *a4 = v9 = 0;
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

- (void)runWithRequest:(id)a3
{
  v4 = a3;
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
    v8 = [v4 persistentID];

    if (v8)
    {
      v9 = [v4 persistentID];
      [v5 removeNonStoreBookWithPersistentID:v9 assertion:v6 completionBlock:v7];
    }

    else
    {
      v9 = [v4 iTunesStoreID];
      [v5 removeStoreBookWithiTunesStoreID:v9 assertion:v6 completionBlock:v7];
    }
  }

  else
  {
    [(DMDTaskOperation *)self endOperationWithDMFErrorCode:1650];
  }
}

@end