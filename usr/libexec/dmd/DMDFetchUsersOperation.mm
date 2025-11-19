@interface DMDFetchUsersOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDFetchUsersOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDFetchUsersOperation;
  [(DMDFetchUsersOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)a3
{
  v4 = +[UMUserManager sharedManager];
  v5 = [v4 allUsers];
  v6 = v5;
  if (v5)
  {
    v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
    v16 = v4;
    v8 = [v4 currentUser];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [[DMFUser alloc] initWithUser:*(*(&v17 + 1) + 8 * i) isCurrentUser:{objc_msgSend(*(*(&v17 + 1) + 8 * i), "isEqualToUser:", v8)}];
          [v7 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    v15 = [[DMFFetchUsersResultObject alloc] initWithUsers:v7];
    [(DMDFetchUsersOperation *)self endOperationWithResultObject:v15];

    v4 = v16;
  }

  else
  {
    [(DMDTaskOperation *)self endOperationWithDMFErrorCode:1700];
  }
}

@end