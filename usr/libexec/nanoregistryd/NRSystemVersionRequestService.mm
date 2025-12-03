@interface NRSystemVersionRequestService
- (BOOL)_shouldBroadcastVersion;
- (NRSystemVersionRequestService)initWithServiceRegistry:(id)registry;
- (void)broadcastVersionChangeToDisconnectedWatches;
- (void)remoteObject:(id)object receivedSystemVersionBroadcast:(id)broadcast fromDeviceID:(id)d;
- (void)sendCloudVersionMessageToCompanion;
- (void)sendVersionRequestToCompanion;
- (void)updateVersions:(id)versions withDeviceUUID:(id)d;
@end

@implementation NRSystemVersionRequestService

- (NRSystemVersionRequestService)initWithServiceRegistry:(id)registry
{
  registryCopy = registry;
  v9.receiver = self;
  v9.super_class = NRSystemVersionRequestService;
  v6 = [(NRSystemVersionRequestService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceRegistry, registry);
  }

  return v7;
}

- (void)updateVersions:(id)versions withDeviceUUID:(id)d
{
  versionsCopy = versions;
  dCopy = d;
  v8 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000CEAB8;
  v11[3] = &unk_100179250;
  v12 = versionsCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = versionsCopy;
  [v8 grabRegistryWithWriteBlockAsync:v11];
}

- (void)sendVersionRequestToCompanion
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  getPairedDevices = [v2 getPairedDevices];

  v30 = objc_alloc_init(NSMutableSet);
  firstObject = [getPairedDevices firstObject];
  v27 = [firstObject objectForKeyedSubscript:NRDevicePropertyPairingID];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = getPairedDevices;
  v4 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  v6 = *v37;
  v7 = _NRDevicePropertyMigrationIDSCloudIdentifier;
  do
  {
    v8 = 0;
    do
    {
      if (*v37 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v36 + 1) + 8 * v8);
      v10 = [v9 objectForKeyedSubscript:v7];
      v11 = +[NRPairedDeviceRegistry sharedInstance];
      secureProperties = [v11 secureProperties];
      v13 = [secureProperties objectForKeyedSubscript:v10];

      if (v13)
      {
        v14 = [v9 objectForKeyedSubscript:v13];
        [v30 addObject:v14];
LABEL_8:

        goto LABEL_9;
      }

      v15 = nr_daemon_log();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

      if (v16)
      {
        v14 = nr_daemon_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Device has no cloud id", buf, 2u);
        }

        goto LABEL_8;
      }

LABEL_9:

      v8 = v8 + 1;
    }

    while (v5 != v8);
    v17 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    v5 = v17;
  }

  while (v17);
LABEL_15:

  v18 = [firstObject objectForKeyedSubscript:NRDevicePropertyIsAltAccount];

  v19 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  if (v18)
  {
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000CF2D4;
    v33[3] = &unk_1001794B8;
    v20 = &v34;
    v21 = v27;
    v33[4] = self;
    v34 = v27;
    v22 = v27;
    v23 = &stru_100179490;
    v24 = v33;
  }

  else
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000CF3B4;
    v31[3] = &unk_1001794B8;
    v20 = &v32;
    v21 = v27;
    v31[4] = self;
    v32 = v27;
    v25 = v27;
    v23 = &stru_1001794D8;
    v24 = v31;
  }

  [v19 sendSystemVersionsRequestToCompanionWithSentBlock:v23 withResponseBlock:v24];
}

- (void)sendCloudVersionMessageToCompanion
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending cloud message with system versions to companion", &v18, 2u);
    }
  }

  v6 = +[NRPairedDeviceRegistry sharedInstance];
  v7 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v8 = [v6 getAllDevicesWithArchivedDevicesMatching:v7];
  firstObject = [v8 firstObject];

  if (firstObject)
  {
    v10 = [firstObject objectForKeyedSubscript:_NRDevicePropertyMigrationIDSCloudIdentifier];
    v11 = v10;
    if (v10 && [v10 length])
    {
      v12 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
      v13 = [NSSet setWithObject:v11];
      [v12 sendSystemVersionsToDestinations:v13 withSentBlock:&stru_1001794F8];
    }

    else
    {
      v14 = nr_framework_log();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

      if (!v15)
      {
LABEL_16:

        goto LABEL_17;
      }

      v12 = nr_framework_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = firstObject;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "NRDevice: %@ has no cloudIDs. Unable to send system versions", &v18, 0xCu);
      }
    }

    goto LABEL_16;
  }

  v16 = nr_daemon_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

  if (v17)
  {
    v11 = nr_daemon_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100103798(v11);
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (BOOL)_shouldBroadcastVersion
{
  v2 = [[NRPreferences alloc] initWithDomain:@"com.apple.nanoregistryd"];
  v3 = [(NRPreferences *)v2 objectForKeyedSubscript:@"lastVersionBroadcastTimestamp"];
  v4 = +[NSDate date];
  [v4 timeIntervalSince1970];
  v6 = v5;

  [v3 doubleValue];
  v8 = v6 - v7;
  v9 = nr_daemon_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = nr_daemon_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134218754;
      v16 = v6;
      v17 = 2112;
      v18 = v3;
      v19 = 2048;
      v20 = v8;
      v21 = 2048;
      v22 = 0x40AC200000000000;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Now %f, last version broadcast %@, diff %f vs. %f", &v15, 0x2Au);
    }
  }

  v13 = v8 >= 3600.0 || v3 == 0;

  return v13;
}

- (void)broadcastVersionChangeToDisconnectedWatches
{
  _shouldBroadcastVersion = [(NRSystemVersionRequestService *)self _shouldBroadcastVersion];
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (_shouldBroadcastVersion)
  {
    if (v5)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Broadcasting system versions to inactive watches", buf, 2u);
      }
    }

    v7 = +[NRPairedDeviceRegistry sharedInstance];
    v8 = [v7 getAllDevicesWithArchivedAltAccountDevicesMatching:&stru_100179518];

    v9 = +[NRPairedDeviceRegistry sharedInstance];
    v10 = [v9 getAllDevicesWithArchivedAltAccountDevicesMatching:&stru_100179538];

    v11 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
    v41 = v10;
    v42 = v8;
    v40 = v11;
    if ([v8 count])
    {
      v39 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
      v12 = objc_alloc_init(NSMutableSet);
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v13 = v8;
      v14 = [v13 countByEnumeratingWithState:&v47 objects:v54 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v48;
        v17 = _NRDevicePropertyMigrationIDSCloudIdentifier;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v48 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v19 = *(*(&v47 + 1) + 8 * i);
            v20 = [v19 objectForKeyedSubscript:{v17, v39}];
            if (v20)
            {
              [v12 addObject:v20];
            }

            else
            {
              v21 = nr_framework_log();
              v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

              if (v22)
              {
                v23 = nr_framework_log();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v53 = v19;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "NRDevice: %@ has no cloudIDs", buf, 0xCu);
                }
              }
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v47 objects:v54 count:16];
        }

        while (v15);
      }

      [v39 sendSystemVersionsToDestinations:v12 withSentBlock:&stru_100179558];
      v10 = v41;
      v8 = v42;
      v11 = v40;
    }

    if ([v10 count])
    {
      v24 = objc_alloc_init(NSMutableSet);
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v25 = v10;
      v26 = [v25 countByEnumeratingWithState:&v43 objects:v51 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v44;
        v29 = _NRDevicePropertyMigrationIDSCloudIdentifier;
        do
        {
          for (j = 0; j != v27; j = j + 1)
          {
            if (*v44 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v31 = *(*(&v43 + 1) + 8 * j);
            v32 = [v31 objectForKeyedSubscript:v29];
            if (v32)
            {
              [v24 addObject:v32];
            }

            else
            {
              v33 = nr_framework_log();
              v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

              if (v34)
              {
                v35 = nr_framework_log();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v53 = v31;
                  _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "NRDevice: %@ has no cloudIDs", buf, 0xCu);
                }
              }
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v43 objects:v51 count:16];
        }

        while (v27);
      }

      v11 = v40;
      [v40 sendSystemVersionsToDestinations:v24 withSentBlock:&stru_100179578];

      v10 = v41;
      v8 = v42;
    }

    v36 = [[NRPreferences alloc] initWithDomain:@"com.apple.nanoregistryd"];
    v37 = +[NSDate date];
    [v37 timeIntervalSince1970];
    v38 = [NSNumber numberWithDouble:?];
    [(NRPreferences *)v36 setObject:v38 forKeyedSubscript:@"lastVersionBroadcastTimestamp"];

    [(NRPreferences *)v36 synchronize];
LABEL_37:

    return;
  }

  if (v5)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Skip broadcasting system versions to inactive watches", buf, 2u);
    }

    goto LABEL_37;
  }
}

- (void)remoteObject:(id)object receivedSystemVersionBroadcast:(id)broadcast fromDeviceID:(id)d
{
  dCopy = d;
  broadcastCopy = broadcast;
  v9 = +[NRPairedDeviceRegistry sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000D01C0;
  v14[3] = &unk_1001795A0;
  v15 = dCopy;
  v10 = dCopy;
  v11 = [v9 getAllDevicesWithArchivedAltAccountDevicesMatching:v14];

  firstObject = [v11 firstObject];
  v13 = [firstObject objectForKeyedSubscript:NRDevicePropertyPairingID];
  [(NRSystemVersionRequestService *)self updateVersions:broadcastCopy withDeviceUUID:v13];
}

@end