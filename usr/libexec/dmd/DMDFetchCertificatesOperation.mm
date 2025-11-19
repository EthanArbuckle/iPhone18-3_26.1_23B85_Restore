@interface DMDFetchCertificatesOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDFetchCertificatesOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDFetchCertificatesOperation;
  [(DMDFetchCertificatesOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v5 count:2];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (void)runWithRequest:(id)a3
{
  v33 = a3;
  v31 = objc_opt_new();
  v3 = objc_opt_new();
  v29 = +[MCProfileConnection sharedConnection];
  v4 = [v29 installedProfilesWithFilterFlags:1];
  objc_opt_class();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v44;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v44 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v43 + 1) + 8 * i);
        if (![v33 managedOnly] || objc_msgSend(v9, "isManagedByMDM"))
        {
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v10 = [v9 payloads];
          v11 = [v10 countByEnumeratingWithState:&v39 objects:v48 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v40;
            do
            {
              for (j = 0; j != v12; j = j + 1)
              {
                if (*v40 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v39 + 1) + 8 * j);
                if (objc_opt_isKindOfClass())
                {
                  v16 = [v15 certificatePersistentID];
                  [v3 addObject:v16];
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v39 objects:v48 count:16];
            }

            while (v12);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v6);
  }

  TypeID = SecIdentityGetTypeID();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v18 = v3;
  v19 = [v18 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v36;
    do
    {
      for (k = 0; k != v20; k = k + 1)
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [MCKeychain copyItemWithPersistentID:*(*(&v35 + 1) + 8 * k) useSystemKeychain:1];
        if (v23)
        {
          v24 = v23;
          certificateRef = 0;
          v25 = CFGetTypeID(v23);
          if (v25 != TypeID)
          {
            certificateRef = v24;
LABEL_30:
            v26 = [DMFCertificate alloc];
            v27 = [v26 initWithCertificateRef:certificateRef isIdentity:v25 == TypeID];
            [v31 addObject:v27];

            CFRelease(certificateRef);
            continue;
          }

          SecIdentityCopyCertificate(v24, &certificateRef);
          CFRelease(v24);
          if (certificateRef)
          {
            goto LABEL_30;
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v20);
  }

  v28 = [[DMFFetchCertificatesResultObject alloc] initWithCertificates:v31];
  [(DMDFetchCertificatesOperation *)self endOperationWithResultObject:v28];
}

@end