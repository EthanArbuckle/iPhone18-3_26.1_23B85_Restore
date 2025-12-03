@interface SWCEnterpriseContext
- (NSData)state;
- (SWCEnterpriseContext)init;
- (id)isApplicationIdentifierEligibleForManagedMode:(id)mode error:(id *)error;
- (id)serviceSpecifiersForApplicationIdentifier:(id)identifier error:(id *)error;
- (void)_loadEnterpriseData;
@end

@implementation SWCEnterpriseContext

- (SWCEnterpriseContext)init
{
  v5.receiver = self;
  v5.super_class = SWCEnterpriseContext;
  v2 = [(SWCEnterpriseContext *)&v5 init];
  if (v2)
  {
    v3 = +[_SWCPrefs sharedPrefs];
    v2->_appleInternal = [v3 isAppleInternal];

    [(SWCEnterpriseContext *)v2 _loadEnterpriseData];
  }

  return v2;
}

- (id)serviceSpecifiersForApplicationIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (!self->_associatedDomains)
  {
    v12 = self->_highLevelError;
    v11 = 0;
    if (!error)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  bundleIdentifier = [identifierCopy bundleIdentifier];
  if (!bundleIdentifier)
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"SWCEnterpriseContext.mm" lineNumber:93 description:{@"Failed to get a string value from %@", v8}];
  }

  v10 = [(NSDictionary *)self->_associatedDomains objectForKeyedSubscript:bundleIdentifier];
  if (v10)
  {
    v17 = 0;
    v11 = [_SWCServiceSpecifier serviceSpecifiersWithEntitlementValue:v10 error:&v17];
    v12 = v17;
    if (v11)
    {
      v13 = v11;
    }
  }

  else
  {
    v12 = 0;
    v11 = &__NSArray0__struct;
  }

  if (error)
  {
LABEL_12:
    if (!v11)
    {
      v14 = v12;
      *error = v12;
    }
  }

LABEL_14:

  return v11;
}

- (id)isApplicationIdentifierEligibleForManagedMode:(id)mode error:(id *)error
{
  modeCopy = mode;
  v8 = _SWCDiagnosticStorage[1];
  if (v8 && self->_appleInternal)
  {
    v9 = v8;
  }

  else
  {
    v9 = self->_managedModeAppIDs;
    if (!v9)
    {
      v11 = 0;
      if (!error)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  bundleIdentifier = [modeCopy bundleIdentifier];
  if (!bundleIdentifier)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SWCEnterpriseContext.mm" lineNumber:142 description:{@"Failed to get a string value from %@", modeCopy}];
  }

  v11 = [NSNumber numberWithBool:[(NSSet *)v9 containsObject:bundleIdentifier]];

  if (error)
  {
LABEL_10:
    if (!v11)
    {
      *error = self->_highLevelError;
    }
  }

LABEL_12:

  return v11;
}

- (NSData)state
{
  v3 = objc_autoreleasePoolPush();
  if ([(NSDictionary *)self->_associatedDomains count]|| [(NSSet *)self->_managedModeAppIDs count])
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:2];
    if ([(NSDictionary *)self->_associatedDomains count])
    {
      [v4 addObject:self->_associatedDomains];
    }

    if ([(NSSet *)self->_managedModeAppIDs count])
    {
      allObjects = [(NSSet *)self->_managedModeAppIDs allObjects];
      [v4 addObject:allObjects];
    }

    v6 = [NSJSONSerialization dataWithJSONObject:v4 options:2 error:0];
    v7 = v6;
    if (v6)
    {
      memset(v10, 0, sizeof(v10));
      CC_SHA256([v6 bytes], objc_msgSend(v6, "length"), v10);
      v8 = [[NSData alloc] initWithBytes:v10 length:32];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v8;
}

- (void)_loadEnterpriseData
{
  context = objc_autoreleasePoolPush();
  if (qword_10003AC68 != -1)
  {
    dispatch_once(&qword_10003AC68, &stru_100034B00);
  }

  if (qword_10003AC70)
  {
    sharedConnection = [qword_10003AC70 sharedConnection];
    associatedDomainsForManagedApps = [sharedConnection associatedDomainsForManagedApps];
    v3 = associatedDomainsForManagedApps;
    if (associatedDomainsForManagedApps)
    {
      v32 = associatedDomainsForManagedApps;
      v4 = objc_alloc_init(NSMutableDictionary);
      v36 = objc_alloc_init(NSMutableSet);
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = v3;
      v5 = [obj countByEnumeratingWithState:&v38 objects:v48 count:{16, v32}];
      if (v5)
      {
        v6 = *v39;
        do
        {
          for (i = 0; i != v5; i = i + 1)
          {
            if (*v39 != v6)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v38 + 1) + 8 * i);
            v9 = [v8 objectForKeyedSubscript:@"BundleID"];
            v10 = [v8 objectForKeyedSubscript:@"AssociatedDomains"];
            [v4 setObject:v10 forKeyedSubscript:v9];
            v11 = [v8 objectForKeyedSubscript:@"AssociatedDomainsEnableDirectDownloads"];
            if ([v11 BOOLValue])
            {
              [v36 addObject:v9];
            }
          }

          v5 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
        }

        while (v5);
      }

      v12 = [v4 copy];
      v13 = [v36 copy];

      v14 = 0;
      v15 = 1;
      goto LABEL_22;
    }

    v16 = [NSError alloc];
    v47[0] = &off_100036828;
    v46[0] = @"Line";
    v46[1] = @"Function";
    v17 = [NSString stringWithUTF8String:"[SWCEnterpriseContext(CPMCInterop) _loadEnterpriseData]"];
    v46[2] = NSDebugDescriptionErrorKey;
    v47[1] = v17;
    v47[2] = @"Failed to get associated domain data from ManagedConfiguration framework.";
    v18 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:3];
    v14 = [v16 initWithDomain:_SWCErrorDomain code:1701 userInfo:v18];
  }

  else
  {
    v14 = qword_10003AC60;
  }

  if (qword_10003AC80 != -1)
  {
    dispatch_once(&qword_10003AC80, &stru_100034B20);
  }

  v19 = qword_10003AC78;
  if (os_log_type_enabled(qword_10003AC78, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v45 = v14;
    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error getting enterprise-managed associated domains data. If this device is not enterprise-managed, this is normal: %@", buf, 0xCu);
  }

  v15 = 0;
  v12 = 0;
  v13 = 0;
LABEL_22:
  objc_autoreleasePoolPop(context);
  if (v15)
  {
    v20 = [v12 copy];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = &__NSDictionary0__struct;
    }

    objc_storeStrong(&self->_associatedDomains, v22);

    v23 = [v13 copy];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = +[NSSet set];
    }

    managedModeAppIDs = self->_managedModeAppIDs;
    self->_managedModeAppIDs = v25;

    self->_managing = (v12 | v13) != 0;
  }

  else if (v14)
  {
    objc_storeStrong(&self->_highLevelError, v14);
  }

  else
  {
    v26 = [NSError alloc];
    v42[0] = @"Line";
    v42[1] = @"Function";
    v43[0] = &off_100036840;
    v27 = [NSString stringWithUTF8String:"[SWCEnterpriseContext(CPMCInterop) _loadEnterpriseData]"];
    v43[1] = v27;
    v28 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
    v29 = [v26 initWithDomain:_SWCErrorDomain code:-1 userInfo:v28];
    highLevelError = self->_highLevelError;
    self->_highLevelError = v29;
  }
}

@end