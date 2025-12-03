@interface DMDDeleteUserOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
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

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___DMDDeleteUserOperation;
  if (!objc_msgSendSuper2(&v10, "validateRequest:error:", requestCopy, error))
  {
    goto LABEL_6;
  }

  username = [requestCopy username];

  if (!username)
  {
    if (!error)
    {
      goto LABEL_7;
    }

    v11 = DMFInvalidParameterErrorKey;
    v12 = @"request.message";
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    *error = DMFErrorWithCodeAndUserInfo();

LABEL_6:
    LOBYTE(error) = 0;
    goto LABEL_7;
  }

  LOBYTE(error) = 1;
LABEL_7:

  return error;
}

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  v5 = +[UMUserManager sharedManager];
  allUsers = [v5 allUsers];
  if (allUsers)
  {
    username = [requestCopy username];
    currentUser = [v5 currentUser];
    username2 = [currentUser username];
    v10 = [username2 isEqualToString:username];

    if (v10)
    {
      [(DMDTaskOperation *)self endOperationWithDMFErrorCode:1801];
    }

    else
    {
      selfCopy = self;
      v21 = requestCopy;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = allUsers;
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
          username3 = [v16 username];
          v18 = [username3 isEqualToString:username];

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

        requestCopy = v21;
        if ([v19 hasDataToSync] && (objc_msgSend(v21, "forceDeletion") & 1) == 0)
        {
          [(DMDTaskOperation *)selfCopy endOperationWithDMFErrorCode:1803];
        }

        else
        {
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_100035698;
          v22[3] = &unk_1000CEE68;
          v22[4] = selfCopy;
          [v5 deleteUser:v19 completionHandler:v22];
        }
      }

      else
      {
LABEL_13:

LABEL_18:
        [(DMDTaskOperation *)selfCopy endOperationWithDMFErrorCode:1802];
        requestCopy = v21;
      }
    }
  }

  else
  {
    [(DMDTaskOperation *)self endOperationWithDMFErrorCode:1700];
  }
}

@end