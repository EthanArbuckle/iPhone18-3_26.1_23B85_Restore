@interface DMDFetchProvisioningProfilesOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDFetchProvisioningProfilesOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDFetchProvisioningProfilesOperation;
  [(DMDFetchProvisioningProfilesOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v5 count:2];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  v5 = +[MCProfileConnection sharedConnection];
  v6 = [v5 listInstalledProvisioningProfileUUIDsWithManagedOnly:{objc_msgSend(requestCopy, "managedOnly")}];

  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (MISCopyProvisioningProfile())
        {

          [(DMDTaskOperation *)self endOperationWithDMFErrorCode:2400];
          goto LABEL_11;
        }

        v14 = [[DMFProvisioningProfile alloc] initWithProfileRef:0];
        [v7 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = [[DMFFetchProvisioningProfilesResultObject alloc] initWithProfiles:v7];
  [(DMDFetchProvisioningProfilesOperation *)self endOperationWithResultObject:v15];

LABEL_11:
}

@end