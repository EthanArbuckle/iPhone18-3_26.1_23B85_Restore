@interface F13Server
+ (id)sharedInstance;
- (F13Server)init;
- (id)effectiveAppIdentifiers;
- (id)effectiveExtensionAttributes;
- (id)effectiveExtensionIdentifiers;
- (void)applicationInstallsDidStart:(id)start;
- (void)applicationsDidInstall:(id)install;
- (void)dealloc;
- (void)findExtension;
- (void)matchExtension;
- (void)resetExtension;
- (void)verifyExtensionIsRunning;
- (void)windwardAppInstallationStarted;
@end

@implementation F13Server

+ (id)sharedInstance
{
  if (qword_1001A55A0 != -1)
  {
    sub_1000C4EE8();
  }

  v3 = qword_1001A5598;

  return v3;
}

- (F13Server)init
{
  v9.receiver = self;
  v9.super_class = F13Server;
  v2 = [(F13Server *)&v9 init];
  if (v2)
  {
    v3 = sub_100063A54();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Initializing F13Server", v8, 2u);
    }

    [(F13Server *)v2 setAppInstallationInProgress:0];
    v4 = +[LSApplicationWorkspace defaultWorkspace];
    [(F13Server *)v2 setWorkspace:v4];

    v5 = +[MSDTargetDevice sharedInstance];
    -[F13Server setPOSDevice:](v2, "setPOSDevice:", [v5 isVerifiedPOSDevice]);

    workspace = [(F13Server *)v2 workspace];
    [workspace addObserver:v2];

    [(F13Server *)v2 findExtension];
  }

  return v2;
}

- (void)dealloc
{
  workspace = [(F13Server *)self workspace];
  [workspace removeObserver:self];

  v4.receiver = self;
  v4.super_class = F13Server;
  [(F13Server *)&v4 dealloc];
}

- (id)effectiveAppIdentifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  if ([(F13Server *)self isPOSDevice])
  {
    v4 = @"com.apple.ist.pierogi";
  }

  else
  {
    [v3 addObject:@"com.retailtech.arkenstone"];
    [v3 addObject:@"com.apple.ist.windward"];
    v4 = @"com.apple.ist.DemoDiscoveryApp";
  }

  [v3 addObject:v4];

  return v3;
}

- (id)effectiveExtensionIdentifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  if ([(F13Server *)self isPOSDevice])
  {
    v4 = @"com.apple.ist.pierogi.potato";
  }

  else
  {
    [v3 addObject:@"com.retailtech.arkenstone.extension"];
    [v3 addObject:@"com.apple.ist.windward.Arizona"];
    v4 = @"com.apple.ist.DemoDiscoveryApp.Extension";
  }

  [v3 addObject:v4];

  return v3;
}

- (id)effectiveExtensionAttributes
{
  v3 = objc_alloc_init(NSMutableArray);
  isPOSDevice = [(F13Server *)self isPOSDevice];
  v5 = NSExtensionIdentifierName;
  if (isPOSDevice)
  {
    v21[0] = NSExtensionIdentifierName;
    v22[0] = @"com.apple.ist.pierogi.potato";
    v6 = [NSString stringWithFormat:@"ENTITLEMENT:%@", @"com.apple.ist.pierogi.potato"];
    v21[1] = v6;
    v22[1] = &__kCFBooleanTrue;
    v7 = v22;
    v8 = v21;
  }

  else
  {
    v19[0] = NSExtensionIdentifierName;
    v20[0] = @"com.retailtech.arkenstone.extension";
    v9 = [NSString stringWithFormat:@"ENTITLEMENT:%@", @"com.retailtech.arkenstone.extension"];
    v19[1] = v9;
    v20[1] = &__kCFBooleanTrue;
    v10 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    [v3 addObject:v10];

    v17[0] = v5;
    v18[0] = @"com.apple.ist.windward.Arizona";
    v11 = [NSString stringWithFormat:@"ENTITLEMENT:%@", @"com.apple.ist.windward.Arizona"];
    v17[1] = v11;
    v18[1] = &__kCFBooleanTrue;
    v12 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
    [v3 addObject:v12];

    v16[0] = @"com.apple.ist.DemoDiscoveryApp.Extension";
    v6 = [NSString stringWithFormat:@"ENTITLEMENT:%@", @"com.apple.ist.DemoDiscoveryApp.Extension", v5];
    v15[1] = v6;
    v16[1] = &__kCFBooleanTrue;
    v7 = v16;
    v8 = v15;
  }

  v13 = [NSDictionary dictionaryWithObjects:v7 forKeys:v8 count:2];
  [v3 addObject:v13];

  return v3;
}

- (void)findExtension
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finding extension...", &v5, 2u);
  }

  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543874;
    v6 = @"com.retailtech.arkenstone.extension";
    v7 = 2114;
    v8 = @"com.apple.ist.windward.Arizona";
    v9 = 2114;
    v10 = @"com.apple.ist.DemoDiscoveryApp.Extension";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ENTITLEMENT:%{public}@ OR ENTITLEMENT:%{public}@ OR ENTITLEMENT:%{public}@", &v5, 0x20u);
  }

  [(F13Server *)self verifyExtensionIsRunning];
  [(F13Server *)self matchExtension];
}

- (void)matchExtension
{
  [(F13Server *)self effectiveExtensionAttributes];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = v21 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = sub_100063A54();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v23 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "F13Server: Matching extension: %{public}@", buf, 0xCu);
        }

        v17 = 0;
        v9 = [NSExtension extensionsWithMatchingAttributes:v7 error:&v17];
        v10 = v17;
        if (!v10 && [v9 count])
        {
          firstObject = [v9 firstObject];
          [(F13Server *)self setExtension:firstObject];

          v14 = sub_100063A54();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "F13Server: Found extension!", buf, 2u);
          }

          v15 = os_transaction_create();
          [(F13Server *)self setTransaction:v15];

          v12 = v2;
          goto LABEL_19;
        }

        v11 = sub_100063A54();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v23 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "F13Server: Error matching extension: %{public}@", buf, 0xCu);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v12 = sub_100063A54();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v2;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "F13Server: Failed to match extensions in: %{public}@", buf, 0xCu);
  }

LABEL_19:
}

- (void)verifyExtensionIsRunning
{
  objc_initWeak(&location, self);
  v2 = dispatch_time(0, 5000000000);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100005FE4;
  v3[3] = &unk_100169C78;
  objc_copyWeak(&v4, &location);
  dispatch_after(v2, &_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)resetExtension
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000063B8;
  block[3] = &unk_100169B70;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)windwardAppInstallationStarted
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "F13Server: killing extension...", v4, 2u);
  }

  [(F13Server *)self resetExtension];
  [(F13Server *)self setAppInstallationInProgress:1];
}

- (void)applicationInstallsDidStart:(id)start
{
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  startCopy = start;
  v5 = [startCopy countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    v20 = *v27;
    selfCopy = self;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(startCopy);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        effectiveAppIdentifiers = [(F13Server *)self effectiveAppIdentifiers];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = effectiveAppIdentifiers;
        v12 = [v11 countByEnumeratingWithState:&v22 objects:v32 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v23;
          while (2)
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v23 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v22 + 1) + 8 * j);
              bundleIdentifier = [v9 bundleIdentifier];
              LODWORD(v16) = [bundleIdentifier isEqualToString:v16];

              if (v16)
              {
                v18 = sub_100063A54();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  bundleIdentifier2 = [v9 bundleIdentifier];
                  *buf = 138543362;
                  v31 = bundleIdentifier2;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "F13Server: New %{public}@ app installation started, killing extension...", buf, 0xCu);
                }

                [(F13Server *)selfCopy windwardAppInstallationStarted];
                goto LABEL_20;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v22 objects:v32 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v7 = v20;
        self = selfCopy;
      }

      v6 = [startCopy countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v6);
  }

LABEL_20:
}

- (void)applicationsDidInstall:(id)install
{
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  installCopy = install;
  v5 = [installCopy countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    v20 = *v27;
    selfCopy = self;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(installCopy);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        effectiveAppIdentifiers = [(F13Server *)self effectiveAppIdentifiers];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = effectiveAppIdentifiers;
        v12 = [v11 countByEnumeratingWithState:&v22 objects:v32 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v23;
          while (2)
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v23 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v22 + 1) + 8 * j);
              bundleIdentifier = [v9 bundleIdentifier];
              LODWORD(v16) = [bundleIdentifier isEqualToString:v16];

              if (v16)
              {
                v18 = sub_100063A54();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  bundleIdentifier2 = [v9 bundleIdentifier];
                  *buf = 138543362;
                  v31 = bundleIdentifier2;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "F13Server: %{public}@ app installation finished", buf, 0xCu);
                }

                [(F13Server *)selfCopy setAppInstallationInProgress:0];
                [(F13Server *)selfCopy matchExtension];

                goto LABEL_20;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v22 objects:v32 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v7 = v20;
        self = selfCopy;
      }

      v6 = [installCopy countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v6);
  }

LABEL_20:
}

@end