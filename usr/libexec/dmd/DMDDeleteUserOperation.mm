@interface DMDDeleteUserOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDDeleteUserOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDDeleteUserOperation;
  [(DMDDeleteUserOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___DMDDeleteUserOperation;
  if (!objc_msgSendSuper2(&v10, "validateRequest:error:", v6, a4))
  {
    goto LABEL_6;
  }

  v7 = [v6 username];

  if (!v7)
  {
    if (!a4)
    {
      goto LABEL_7;
    }

    v11 = DMFInvalidParameterErrorKey;
    v12 = @"request.message";
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    *a4 = DMFErrorWithCodeAndUserInfo();

LABEL_6:
    LOBYTE(a4) = 0;
    goto LABEL_7;
  }

  LOBYTE(a4) = 1;
LABEL_7:

  return a4;
}

- (void)runWithRequest:(id)a3
{
  v4 = a3;
  v5 = +[UMUserManager sharedManager];
  v6 = [v5 allUsers];
  if (v6)
  {
    v7 = [v4 username];
    v8 = [v5 currentUser];
    v9 = [v8 username];
    v10 = [v9 isEqualToString:v7];

    if (v10)
    {
      [(DMDTaskOperation *)self endOperationWithDMFErrorCode:1801];
    }

    else
    {
      v20 = self;
      v21 = v4;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = v6;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
LABEL_7:
        v15 = 0;
        while (1)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v23 + 1) + 8 * v15);
          v17 = [v16 username];
          v18 = [v17 isEqualToString:v7];

          if (v18)
          {
            break;
          }

          if (v13 == ++v15)
          {
            v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
            if (v13)
            {
              goto LABEL_7;
            }

            goto LABEL_13;
          }
        }

        v19 = v16;

        if (!v19)
        {
          goto LABEL_18;
        }

        v4 = v21;
        if ([v19 hasDataToSync] && (objc_msgSend(v21, "forceDeletion") & 1) == 0)
        {
          [(DMDTaskOperation *)v20 endOperationWithDMFErrorCode:1803];
        }

        else
        {
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_100035698;
          v22[3] = &unk_1000CEE68;
          v22[4] = v20;
          [v5 deleteUser:v19 completionHandler:v22];
        }
      }

      else
      {
LABEL_13:

LABEL_18:
        [(DMDTaskOperation *)v20 endOperationWithDMFErrorCode:1802];
        v4 = v21;
      }
    }
  }

  else
  {
    [(DMDTaskOperation *)self endOperationWithDMFErrorCode:1700];
  }
}

@end