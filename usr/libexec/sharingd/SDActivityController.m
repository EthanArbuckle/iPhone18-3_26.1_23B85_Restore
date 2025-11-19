@interface SDActivityController
- (BOOL)shouldStart;
- (NSArray)allPeerBTIdentifiers;
- (NSString)appleID;
- (SDActivityController)init;
- (id)idsDeviceFromBTIdentifier:(id)a3;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)service:(id)a3 nearbyDevicesChanged:(id)a4;
@end

@implementation SDActivityController

- (BOOL)shouldStart
{
  v3 = +[MCProfileConnection sharedConnection];
  v4 = [v3 isActivityContinuationAllowed];

  if ((v4 & 1) == 0)
  {
    v5 = handoff_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Handoff is disabled in settings on this device", buf, 2u);
    }

    v8 = 0;
    goto LABEL_27;
  }

  v5 = +[SDStatusMonitor sharedMonitor];
  if (([v5 deviceWasUnlockedOnce]& 1) != 0 || ([v5 deviceUIUnlocked]& 1) != 0)
  {
    if ([v5 alwaysSendPayload])
    {
      v6 = handoff_log();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v7 = "Real Handoff is disabled since alwaysSendPayload is enabled";
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = [(IDSService *)self->_activityService devices];
      v9 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
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
              objc_enumerationMutation(v6);
            }

            v13 = *(*(&v16 + 1) + 8 * i);
            if ([v13 supportsHandoff])
            {
              v14 = [v13 nsuuid];

              if (v14)
              {
                v8 = 1;
                goto LABEL_26;
              }
            }
          }

          v10 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v6 = handoff_log();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v7 = "Failed to find any valid cloud paired devices";
    }
  }

  else
  {
    v6 = handoff_log();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v7 = "Handoff is disabled until first unlock has occurred";
  }

  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v7, buf, 2u);
LABEL_24:
  v8 = 0;
LABEL_26:

LABEL_27:
  return v8;
}

- (SDActivityController)init
{
  v6.receiver = self;
  v6.super_class = SDActivityController;
  v2 = [(SDXPCDaemon *)&v6 init];
  if (v2)
  {
    v3 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.continuity.activity"];
    activityService = v2->_activityService;
    v2->_activityService = v3;

    [(IDSService *)v2->_activityService addDelegate:v2 queue:&_dispatch_main_q];
  }

  return v2;
}

- (id)idsDeviceFromBTIdentifier:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(IDSService *)self->_activityService devices];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 nsuuid];
        v11 = [v10 UUIDString];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (NSString)appleID
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(SDActivityController *)self activityService];
  v3 = [v2 accounts];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 loginID];

        if (v8)
        {
          v4 = [v7 loginID];
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (NSArray)allPeerBTIdentifiers
{
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(IDSService *)self->_activityService devices];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 nsuuid];
        if ([v9 supportsHandoff])
        {
          v11 = v10 == 0;
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v5 = a4;
  v6 = handoff_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 valueForKeyPath:@"@unionOfObjects.uniqueIDOverride"];
    v8 = SFCompactStringFromCollection();
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "List of Activity Continuation devices changed %@", &v10, 0xCu);
  }

  [(SDActivityController *)self activityServiceDevicesChanged:v5];
  if ([v5 count])
  {
    [(SDActivityController *)self restart];
  }

  else
  {
    v9 = +[SDActivityEncryptionManager sharedEncryptionManager];
    [v9 deleteAllEncryptionAndDecryptionKeys];
  }
}

- (void)service:(id)a3 nearbyDevicesChanged:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = handoff_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D20E0(v6, v8);
  }

  v9 = [v7 devices];

  [(SDActivityController *)self nearbyServiceDevicesChanged:v9];
}

@end