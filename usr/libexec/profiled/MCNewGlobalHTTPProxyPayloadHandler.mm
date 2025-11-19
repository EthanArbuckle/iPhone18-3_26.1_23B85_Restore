@interface MCNewGlobalHTTPProxyPayloadHandler
- (BOOL)_install;
- (BOOL)_remove;
- (BOOL)_sendSystemConfigurationProxyChangeNotification;
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (BOOL)preflightUserInputResponses:(id)a3 outError:(id *)a4;
- (id)userInputFields;
- (void)_applyProxyCredential:(id)a3;
- (void)_recoverProxyCredential;
- (void)_removeProxyCredential;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCNewGlobalHTTPProxyPayloadHandler

- (id)userInputFields
{
  v3 = +[NSMutableArray array];
  v4 = [(MCNewPayloadHandler *)self payload];
  v5 = [v4 proxyUsername];
  if ([v5 length])
  {
    v6 = [v4 proxyPassword];
    v7 = [v6 length];

    if (v7)
    {
      goto LABEL_5;
    }

    v5 = MCLocalizedFormat();
    v8 = MCLocalizedFormat();
    v9 = [MCNewPayloadHandler promptDictionaryForKey:@"password" title:v5 description:v8 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:0 minimumLength:0 fieldType:0x100000003 flags:?];
    [v3 addObject:v9];
  }

LABEL_5:

  return v3;
}

- (BOOL)preflightUserInputResponses:(id)a3 outError:(id *)a4
{
  v5 = a3;
  v6 = [(MCNewPayloadHandler *)self payload];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v31;
    v12 = kMCIDUUIDKey;
    v13 = kMCIDResponseKey;
    *&v9 = 138543618;
    v28 = v9;
    do
    {
      v14 = 0;
      v29 = v10;
      do
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v30 + 1) + 8 * v14);
        v16 = [v15 objectForKey:{v12, v28}];
        v17 = [v15 objectForKey:v13];
        if ([v16 isEqualToString:@"password"])
        {
          [v6 setProxyPassword:v17];
        }

        else
        {
          v18 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
          {
            v19 = v18;
            v20 = objc_opt_class();
            *buf = v28;
            v35 = v20;
            v36 = 2114;
            v37 = v16;
            v21 = v13;
            v22 = v12;
            v23 = v11;
            v24 = v7;
            v25 = v6;
            v26 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ didn't ask for user input for key %{public}@", buf, 0x16u);

            v6 = v25;
            v7 = v24;
            v11 = v23;
            v12 = v22;
            v13 = v21;
            v10 = v29;
          }
        }

        v14 = v14 + 1;
      }

      while (v10 != v14);
      v10 = [v7 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v10);
  }

  return 1;
}

- (BOOL)_install
{
  v2 = self;
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = +[NSMutableDictionary dictionary];
  if ([v3 proxyType] == 1)
  {
    v5 = [v3 proxyServer];

    if (v5)
    {
      v6 = [v3 proxyServer];
      [v4 setObject:v6 forKey:kSCPropNetProxiesHTTPProxy];

      v7 = [v3 proxyServer];
      [v4 setObject:v7 forKey:kSCPropNetProxiesHTTPSProxy];
    }

    v8 = [v3 proxyServerPort];
    if (v8)
    {
      [v4 setObject:v8 forKey:kSCPropNetProxiesHTTPPort];
    }

    else
    {
      v17 = [NSNumber numberWithInt:80];
      [v4 setObject:v17 forKey:kSCPropNetProxiesHTTPPort];
    }

    v28 = v2;

    v12 = [v3 proxyServerPort];
    if (v12)
    {
      [v4 setObject:v12 forKey:kSCPropNetProxiesHTTPSPort];
    }

    else
    {
      v18 = [NSNumber numberWithInt:80];
      [v4 setObject:v18 forKey:kSCPropNetProxiesHTTPSPort];
    }

    v15 = &kSCPropNetProxiesHTTPSEnable;
    v16 = &kSCPropNetProxiesHTTPEnable;
    v13 = 1;
    v14 = 1;
  }

  else
  {
    if ([v3 proxyType])
    {
      goto LABEL_19;
    }

    v28 = v2;
    v9 = [v3 proxyPACURLString];

    if (v9)
    {
      v10 = [v3 proxyPACURLString];
      [v4 setObject:v10 forKey:kSCPropNetProxiesProxyAutoConfigURLString];
    }

    if ([v3 proxyPACFallbackAllowed])
    {
      v11 = &off_100127270;
    }

    else
    {
      v11 = &off_100127288;
    }

    [v4 setObject:v11 forKeyedSubscript:kSCPropNetProxiesFallBackAllowed];
    v12 = [NSNumber numberWithInt:0];
    [v4 setObject:v12 forKey:kSCPropNetProxiesHTTPEnable];
    v13 = 0;
    v14 = 2;
    v15 = &kSCPropNetProxiesProxyAutoConfigEnable;
    v16 = &kSCPropNetProxiesHTTPSEnable;
  }

  v19 = [NSNumber numberWithInt:v13];
  [v4 setObject:v19 forKey:*v16];

  v20 = [NSNumber numberWithInt:1];
  [v4 setObject:v20 forKey:*v15];

  v21 = [NSNumber numberWithInt:v14];
  [v4 setObject:v21 forKey:@"HTTPProxyType"];

  v2 = v28;
LABEL_19:
  if ([v3 proxyCaptiveLoginAllowed])
  {
    v22 = &off_100127270;
  }

  else
  {
    v22 = &off_100127288;
  }

  [v4 setObject:v22 forKeyedSubscript:kSCPropNetProxiesBypassAllowed];
  v30 = @"Proxies";
  v31 = v4;
  v23 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v24 = [MCManagedPreferencesManager setManagedPreferences:v23 forDomain:@"com.apple.SystemConfiguration"];

  if (v24)
  {
    v25 = [(MCNewGlobalHTTPProxyPayloadHandler *)v2 _sendSystemConfigurationProxyChangeNotification];
  }

  else
  {
    v26 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "MCNewGlobalHTTPProxyPayloadHandler cannot install proxy settings.", buf, 2u);
    }

    v25 = 0;
  }

  return v25;
}

- (BOOL)_remove
{
  if (([MCManagedPreferencesManager setManagedPreferences:&__NSDictionary0__struct forDomain:@"com.apple.SystemConfiguration"]& 1) != 0)
  {

    return [(MCNewGlobalHTTPProxyPayloadHandler *)self _sendSystemConfigurationProxyChangeNotification];
  }

  else
  {
    v4 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "MCNewGlobalHTTPProxyPayloadHandler cannot remove proxy settings.", v5, 2u);
    }

    return 0;
  }
}

- (void)_applyProxyCredential:(id)a3
{
  v4 = a3;
  v17 = [(MCNewPayloadHandler *)self payload];
  v5 = +[NSURLCredentialStorage sharedCredentialStorage];
  v6 = [(MCNewPayloadHandler *)self profileHandler];
  v7 = [v6 profile];
  [v5 set_useSystemKeychain:{objc_msgSend(v7, "isInstalledForSystem")}];

  v8 = [v17 proxyServerPort];
  if (v8)
  {
    v9 = [v17 proxyServerPort];
    v10 = [v9 integerValue];
  }

  else
  {
    v10 = 80;
  }

  v11 = [NSURLProtectionSpace alloc];
  v12 = [v17 proxyServer];
  v13 = [v11 initWithProxyHost:v12 port:v10 type:NSURLProtectionSpaceHTTP realm:0 authenticationMethod:NSURLAuthenticationMethodDefault];

  v14 = [NSURLProtectionSpace alloc];
  v15 = [v17 proxyServer];
  v16 = [v14 initWithProxyHost:v15 port:v10 type:NSURLProtectionSpaceHTTPS realm:0 authenticationMethod:NSURLAuthenticationMethodDefault];

  [v5 setDefaultCredential:v4 forProtectionSpace:v13];
  [v5 setDefaultCredential:v4 forProtectionSpace:v16];
}

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v8 = [(MCNewPayloadHandler *)self payload:a3];
  if ([v8 proxyType] == 1)
  {
    v9 = [v8 proxyUsername];
    v10 = [v8 proxyPassword];
    v11 = [NSURLCredential credentialWithUser:v9 password:v10 persistence:2];

    [(MCNewGlobalHTTPProxyPayloadHandler *)self _applyProxyCredential:v11];
    v12 = [v8 proxyUsername];
    v13 = [v8 proxyPassword];
    v14 = CFURLCredentialCreate();

    if (v14)
    {
      Archive = _CFURLCredentialCreateArchive();
      if (Archive)
      {
        v16 = Archive;
        Data = CFPropertyListCreateData(0, Archive, kCFPropertyListBinaryFormat_v1_0, 0, 0);
        if (Data)
        {
          v18 = +[NSString MCMakeUUID];
          v19 = [(MCNewPayloadHandler *)self profileHandler];
          v20 = [v19 profile];
          +[MCKeychain setData:forService:account:label:description:useSystemKeychain:outError:](MCKeychain, "setData:forService:account:label:description:useSystemKeychain:outError:", Data, @"MCGlobalProxy", v18, 0, 0, [v20 isInstalledForSystem], 0);

          [v8 setCredentialUUID:v18];
        }

        CFRelease(v16);

        CFRelease(v14);
LABEL_10:

        goto LABEL_11;
      }

      CFRelease(v14);
    }

    v21 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Cannot serialize credential. Ignoring.", buf, 2u);
    }

    goto LABEL_10;
  }

LABEL_11:
  if ([(MCNewGlobalHTTPProxyPayloadHandler *)self _install])
  {

    v22 = 0;
    v23 = 1;
  }

  else
  {
    v24 = MCGlobalHTTPProxyErrorDomain;
    v25 = MCErrorArray();
    v22 = [NSError MCErrorWithDomain:v24 code:31001 descriptionArray:v25 errorType:MCErrorTypeFatal, 0];

    v23 = v22 == 0;
    if (a6 && v22)
    {
      v26 = v22;
      v23 = 0;
      *a6 = v22;
    }
  }

  return v23;
}

- (void)_removeProxyCredential
{
  v3 = [(MCNewPayloadHandler *)self payload];
  if ([v3 proxyType] == 1)
  {
    v4 = [v3 proxyServerPort];
    if (v4)
    {
      v5 = [v3 proxyServerPort];
      v6 = [v5 intValue];
    }

    else
    {
      v6 = 80;
    }

    v7 = +[NSURLCredentialStorage sharedCredentialStorage];
    v8 = [(MCNewPayloadHandler *)self profileHandler];
    v9 = [v8 profile];
    [v7 set_useSystemKeychain:{objc_msgSend(v9, "isInstalledForSystem")}];

    v10 = [NSURLProtectionSpace alloc];
    v11 = [v3 proxyServer];
    v12 = [v10 initWithProxyHost:v11 port:v6 type:NSURLProtectionSpaceHTTP realm:0 authenticationMethod:NSURLAuthenticationMethodDefault];

    v13 = [v7 defaultCredentialForProtectionSpace:v12];
    if (v13)
    {
      v22 = NSURLCredentialStorageRemoveSynchronizableCredentials;
      v23 = &__kCFBooleanTrue;
      v14 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      [v7 removeCredential:v13 forProtectionSpace:v12 options:v14];
    }

    v15 = [NSURLProtectionSpace alloc];
    v16 = [v3 proxyServer];
    v17 = [v15 initWithProxyHost:v16 port:v6 type:NSURLProtectionSpaceHTTPS realm:0 authenticationMethod:NSURLAuthenticationMethodDefault];

    v18 = [v7 defaultCredentialForProtectionSpace:v17];
    if (v18)
    {
      v20 = NSURLCredentialStorageRemoveSynchronizableCredentials;
      v21 = &__kCFBooleanTrue;
      v19 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      [v7 removeCredential:v18 forProtectionSpace:v17 options:v19];
    }
  }
}

- (void)_recoverProxyCredential
{
  v16 = [(MCNewPayloadHandler *)self payload];
  v3 = [v16 proxyType] == 1;
  v4 = v16;
  if (v3)
  {
    v5 = [v16 credentialUUID];
    if (v5)
    {
      v6 = [(MCNewPayloadHandler *)self profileHandler];
      v7 = [v6 profile];
      v8 = +[MCKeychain dataFromService:account:label:description:useSystemKeychain:outError:](MCKeychain, "dataFromService:account:label:description:useSystemKeychain:outError:", @"MCGlobalProxy", v5, 0, 0, [v7 isInstalledForSystem], 0);

      if (v8)
      {
        v9 = CFPropertyListCreateWithData(0, v8, 0, 0, 0);
        if (v9)
        {
          v10 = v9;
          v11 = _CFURLCredentialCreateFromArchive();
          if (v11)
          {
            v12 = v11;
            v13 = CFURLCredentialGetUsername();
            v14 = CFURLCredentialCopyPassword();
            v15 = [NSURLCredential credentialWithUser:v13 password:v14 persistence:2];
            [(MCNewGlobalHTTPProxyPayloadHandler *)self _applyProxyCredential:v15];
            CFRelease(v12);
          }

          CFRelease(v10);
        }
      }
    }

    v4 = v16;
  }
}

- (void)setAside
{
  [(MCNewGlobalHTTPProxyPayloadHandler *)self _removeProxyCredential];

  [(MCNewGlobalHTTPProxyPayloadHandler *)self _remove];
}

- (void)unsetAside
{
  [(MCNewGlobalHTTPProxyPayloadHandler *)self _recoverProxyCredential];

  [(MCNewGlobalHTTPProxyPayloadHandler *)self _install];
}

- (void)remove
{
  v8 = [(MCNewPayloadHandler *)self payload];
  v3 = [(MCNewPayloadHandler *)self profileHandler];
  v4 = [v3 isSetAside];

  if ((v4 & 1) == 0)
  {
    [(MCNewGlobalHTTPProxyPayloadHandler *)self _remove];
    [(MCNewGlobalHTTPProxyPayloadHandler *)self _removeProxyCredential];
  }

  v5 = [v8 credentialUUID];
  if (v5)
  {
    v6 = [(MCNewPayloadHandler *)self profileHandler];
    v7 = [v6 profile];
    +[MCKeychain removeItemForService:account:label:description:useSystemKeychain:group:](MCKeychain, "removeItemForService:account:label:description:useSystemKeychain:group:", @"MCGlobalProxy", v5, 0, 0, [v7 isInstalledForSystem], 0);
  }
}

- (BOOL)_sendSystemConfigurationProxyChangeNotification
{
  v2 = SCDynamicStoreCreate(0, @"ManagedConfiguration", 0, 0);
  if (v2)
  {
    v3 = v2;
    Proxies = SCDynamicStoreKeyCreateProxies(0);
    v5 = Proxies != 0;
    v6 = _MCLogObjects[0];
    if (Proxies)
    {
      v7 = Proxies;
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending proxy change notification.", v11, 2u);
      }

      v12 = @"com.apple.SystemConfiguration";
      v8 = [NSArray arrayWithObjects:&v12 count:1];
      [MCManagedPreferencesManager sendManagedPreferencesChangedNotificationForDomains:v8];

      SCDynamicStoreNotifyValue(v3, v7);
      CFRelease(v7);
    }

    else if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot create System Configuration proxy key.", v11, 2u);
    }

    CFRelease(v3);
  }

  else
  {
    v9 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot create System Configuration dynamic store reference.", v11, 2u);
    }

    return 0;
  }

  return v5;
}

@end