@interface EPKeymaster
- (EPKeymaster)initWithKeyName:(id)name shouldExport:(BOOL)export unlockAssertionManager:(id)manager okayToCreateKeyBlock:(id)block queue:(id)queue;
- (id)getAndMigrateKey:(BOOL)key;
- (void)createResource;
- (void)destroyResource;
- (void)registerForKeychainNotifications;
- (void)unregisterForKeychainNotifications;
- (void)update;
@end

@implementation EPKeymaster

- (EPKeymaster)initWithKeyName:(id)name shouldExport:(BOOL)export unlockAssertionManager:(id)manager okayToCreateKeyBlock:(id)block queue:(id)queue
{
  nameCopy = name;
  managerCopy = manager;
  blockCopy = block;
  queueCopy = queue;
  v24.receiver = self;
  v24.super_class = EPKeymaster;
  v17 = [(EPResourceManager *)&v24 initWithQueue:queueCopy];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_name, name);
    v18->_shouldExportKey = export;
    objc_storeStrong(&v18->_unlockManager, manager);
    v19 = objc_retainBlock(blockCopy);
    okayToCreateKeyBlock = v18->_okayToCreateKeyBlock;
    v18->_okayToCreateKeyBlock = v19;

    v18->_keychainNotifyToken = -1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E04C0;
    block[3] = &unk_100175660;
    v23 = v18;
    dispatch_async(queueCopy, block);
  }

  return v18;
}

- (void)createResource
{
  v7.receiver = self;
  v7.super_class = EPKeymaster;
  [(EPResourceManager *)&v7 createResource];
  v3 = [(EPUnlockAssertionManager *)self->_unlockManager newUnlockAssertionWithDelegate:self];
  clientUnlockAssertion = self->_clientUnlockAssertion;
  self->_clientUnlockAssertion = v3;

  if (self->_shouldExportKey)
  {
    self->_triedToCreateKey = 0;
    if (!self->_keyDistributionUnlockAssertion)
    {
      v5 = [(EPUnlockAssertionManager *)self->_unlockManager newUnlockAssertionWithDelegate:self];
      keyDistributionUnlockAssertion = self->_keyDistributionUnlockAssertion;
      self->_keyDistributionUnlockAssertion = v5;
    }
  }

  else
  {
    self->_triedToCreateKey = 1;
  }

  [(EPKeymaster *)self update];
}

- (void)destroyResource
{
  v4.receiver = self;
  v4.super_class = EPKeymaster;
  [(EPResourceManager *)&v4 destroyResource];
  clientUnlockAssertion = self->_clientUnlockAssertion;
  self->_clientUnlockAssertion = 0;
}

- (void)registerForKeychainNotifications
{
  if (self->_keychainNotifyToken == -1)
  {
    selfCopy = self;
    queue = [(EPResourceManager *)self queue];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000E0708;
    handler[3] = &unk_1001759E8;
    handler[4] = selfCopy;
    LODWORD(selfCopy) = notify_register_dispatch("com.apple.security.keychainchanged", &selfCopy->_keychainNotifyToken, queue, handler);

    if (selfCopy)
    {
      v4 = nr_daemon_log();
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v6 = nr_daemon_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_100104F84();
        }
      }
    }
  }
}

- (void)unregisterForKeychainNotifications
{
  keychainNotifyToken = self->_keychainNotifyToken;
  if (keychainNotifyToken != -1)
  {
    notify_cancel(keychainNotifyToken);
    self->_keychainNotifyToken = -1;
  }
}

- (id)getAndMigrateKey:(BOOL)key
{
  keyCopy = key;
  v5 = [EPKeychain retrieveKeyWithName:self->_name keychainGroup:@"com.apple.nanoregistry.migration2"];
  if (v5)
  {
    goto LABEL_2;
  }

  v16 = [EPKeychain retrieveKeyWithName:self->_name keychainGroup:@"com.apple.nanoregistry.migration"];
  if (v16)
  {
    v5 = v16;
    if (keyCopy)
    {
      [EPKeychain storeKeyWithData:v16 name:self->_name keychainGroup:@"com.apple.nanoregistry.migration2"];
    }

LABEL_2:
    v6 = [[NRPBMigrationKeyForKeychain alloc] initWithData:v5];

    if (!keyCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  if (keyCopy)
  {
LABEL_3:
    v7 = [EPKeychain removeKeyWithName:self->_name keychainGroup:@"com.apple.nanoregistry.migration"];
    v8 = [EPKeychain removeKeyWithName:&stru_10017A258 keychainGroup:@"com.apple.nanoregistry.migration2"];
  }

LABEL_4:
  if (!v6)
  {
    v9 = [EPKeychain retrieveKeyWithName:@"migration" keychainGroup:@"com.apple.nanoregistry.migration"];
    if (v9)
    {
      v10 = [EPKey keyFromData:v9];
      v6 = v10;
      if (keyCopy)
      {
        data = [(NRPBMigrationKeyForKeychain *)v10 data];
        v12 = [EPKeychain storeKeyWithData:data name:self->_name keychainGroup:@"com.apple.nanoregistry.migration2"];

        if ((v12 & 1) == 0)
        {
          v13 = sub_1000034AC();
          v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

          if (v14)
          {
            v15 = sub_1000034AC();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              sub_100104FF4();
            }
          }
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)update
{
  triedToCreateKey = self->_triedToCreateKey;
  keyDistributionUnlockAssertion = self->_keyDistributionUnlockAssertion;
  if (triedToCreateKey)
  {
    self->_keyDistributionUnlockAssertion = 0;

    goto LABEL_31;
  }

  if ([(EPResource *)keyDistributionUnlockAssertion availability]== 1)
  {
    [(EPKeymaster *)self registerForKeychainNotifications];
    okayToCreateKeyBlock = self->_okayToCreateKeyBlock;
    if (okayToCreateKeyBlock)
    {
      v6 = okayToCreateKeyBlock[2]();
    }

    else
    {
      v6 = 1;
    }

    v7 = [(EPKeymaster *)self getAndMigrateKey:v6];
    v8 = nr_daemon_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      if (v9)
      {
        v10 = nr_daemon_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v29 = sub_1000FDEB0(v7);
          sHA256Data = [v29 SHA256Data];
          v12 = [sHA256Data base64EncodedStringWithOptions:0];
          v13 = [v12 substringToIndex:6];
          *buf = 138412290;
          v33 = v13;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "EPKeymaster: Retrieved key, digest %@", buf, 0xCu);
        }

LABEL_14:
      }
    }

    else if (v9)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "EPKeymaster: Could not retrieve key", buf, 2u);
      }

      goto LABEL_14;
    }

    v14 = sub_1000FDEB0(v7);

    if (v14)
    {
      [(EPKeymaster *)self unregisterForKeychainNotifications];
      self->_triedToCreateKey = 1;
    }

    else if (v6)
    {
      if ([EPKeychain newKeysWithName:self->_name])
      {
        self->_triedToCreateKey = 1;
      }

      else
      {
        v19 = sub_1000034AC();
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

        if (v20)
        {
          v21 = sub_1000034AC();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_100105028(&self->_name);
          }
        }

        self->_noKey = 1;
        self->_triedToCreateKey = 1;
      }

      [(EPKeymaster *)self unregisterForKeychainNotifications];
    }

    else
    {
      v15 = sub_1000034AC();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

      if (v16)
      {
        v17 = sub_1000034AC();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          name = self->_name;
          *buf = 138412290;
          v33 = name;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "EPKeyMaster: Not allowed to create key %@", buf, 0xCu);
        }
      }
    }

    v22 = self->_keyDistributionUnlockAssertion;
    self->_keyDistributionUnlockAssertion = 0;
  }

LABEL_31:
  if (self->_noKey)
  {
    v30 = NSLocalizedDescriptionKey;
    v31 = @"Can't create key";
    v23 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    error = [NSError errorWithDomain:@"com.apple.nanoregistry" code:555 userInfo:v23];

    [(EPResourceManager *)self setAvailability:2 withError:error];
    clientUnlockAssertion = self->_clientUnlockAssertion;
    self->_clientUnlockAssertion = 0;

LABEL_33:
    return;
  }

  if (!self->_keyDistributionUnlockAssertion && self->_triedToCreateKey)
  {
    v26 = self->_clientUnlockAssertion;
    if (v26)
    {
      if ([(EPResource *)v26 availability]== 1)
      {
        selfCopy2 = self;
        v28 = 1;
LABEL_42:
        [(EPResourceManager *)selfCopy2 setAvailability:v28 withError:0];
        return;
      }

      if ([(EPResource *)self->_clientUnlockAssertion availability]== 2)
      {
        error = [(EPResource *)self->_clientUnlockAssertion error];
        [(EPResourceManager *)self setAvailability:2 withError:error];
        goto LABEL_33;
      }
    }

    selfCopy2 = self;
    v28 = 0;
    goto LABEL_42;
  }
}

@end