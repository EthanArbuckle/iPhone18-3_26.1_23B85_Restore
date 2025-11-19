@interface EPActiveDeviceAssertionFactory
+ (id)newService:(id)a3;
- (EPActiveDeviceAssertionFactory)init;
- (EPActiveDeviceAssertionFactory)initWithServiceRegistry:(id)a3;
- (NSDictionary)assertions;
- (id)assertionWithPairingID:(id)a3 isAltAccount:(BOOL)a4 delegate:(id)a5;
- (void)_holdAlternateAccountOSTransaction;
- (void)_releaseAlternateAccountOSTransaction;
- (void)addObserver:(id)a3;
- (void)managerIsIdle:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setPairingID:(id)a3;
- (void)update;
@end

@implementation EPActiveDeviceAssertionFactory

+ (id)newService:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithServiceRegistry:v4];

  return v5;
}

- (EPActiveDeviceAssertionFactory)init
{
  v9.receiver = self;
  v9.super_class = EPActiveDeviceAssertionFactory;
  v2 = [(EPActiveDeviceAssertionFactory *)&v9 init];
  if (v2)
  {
    v3 = +[NSMapTable strongToStrongObjectsMapTable];
    managers = v2->_managers;
    v2->_managers = v3;

    v5 = +[NSMutableOrderedSet orderedSet];
    observers = v2->_observers;
    v2->_observers = v5;

    altAccountTransaction = v2->_altAccountTransaction;
    v2->_altAccountTransaction = 0;
  }

  return v2;
}

- (EPActiveDeviceAssertionFactory)initWithServiceRegistry:(id)a3
{
  objc_storeStrong(&self->_serviceRegistry, a3);

  return [(EPActiveDeviceAssertionFactory *)self init];
}

- (void)setPairingID:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(NSUUID *)v4 UUIDString];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPActiveDeviceAssertion: taking out switch assertion for %@", &v11, 0xCu);
LABEL_8:

        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(EPActiveDeviceAssertionFactory *)self pairingID];
      v9 = [v8 UUIDString];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPActiveDeviceAssertion: releasing switch assertion for %@", &v11, 0xCu);

      goto LABEL_8;
    }

LABEL_9:
  }

  pairingID = self->_pairingID;
  self->_pairingID = v4;
}

- (void)_holdAlternateAccountOSTransaction
{
  if (!self->_altAccountTransaction)
  {
    v11 = v2;
    v12 = v3;
    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Holding os_transaction_t for alternate account", v10, 2u);
      }
    }

    v8 = os_transaction_create();
    altAccountTransaction = self->_altAccountTransaction;
    self->_altAccountTransaction = v8;
  }
}

- (void)_releaseAlternateAccountOSTransaction
{
  if (self->_altAccountTransaction)
  {
    v3 = nr_daemon_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Releasing os_transaction_t for alternate account", v7, 2u);
      }
    }

    altAccountTransaction = self->_altAccountTransaction;
    self->_altAccountTransaction = 0;
  }
}

- (id)assertionWithPairingID:(id)a3 isAltAccount:(BOOL)a4 delegate:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(NSMapTable *)self->_managers objectForKey:v8];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1000A98C0();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = sub_1000A98C0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v8 UUIDString];
        v31 = 134218242;
        v32 = v11;
        v33 = 2112;
        v34 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "EPActiveDeviceAssertionFactory: Reusing existing EPActiveDeviceAssertionManager %p to monitor switch to device %@", &v31, 0x16u);
      }
    }
  }

  else
  {
    v11 = [[EPActiveDeviceAssertionManager alloc] initWithFactory:self pairingID:v8];
    [(NSMapTable *)self->_managers setObject:v11 forKey:v8];
    v16 = sub_1000A98C0();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v18 = sub_1000A98C0();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v8 UUIDString];
        v31 = 134218242;
        v32 = v11;
        v33 = 2112;
        v34 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "EPActiveDeviceAssertionFactory: Created new EPActiveDeviceAssertionManager %p to monitor switch to device %@", &v31, 0x16u);
      }
    }

    v20 = [(EPActiveDeviceAssertionFactory *)self pairingID];
    if (!v20 || (v21 = v20, -[EPActiveDeviceAssertionFactory pairingID](self, "pairingID"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 isEqual:v8], v22, v21, (v23 & 1) == 0))
    {
      [(EPActiveDeviceAssertionFactory *)self setPairingID:v8];
      v24 = sub_1000A98C0();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

      if (v25)
      {
        v26 = sub_1000A98C0();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [(EPActiveDeviceAssertionFactory *)self pairingID];
          v31 = 138412290;
          v32 = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "EPActiveDeviceAssertionFactory: Assertion taken for %@", &v31, 0xCu);
        }
      }

      [(EPActiveDeviceAssertionFactory *)self update];
    }

    v28 = [(EPActiveDeviceAssertionFactory *)self pairingID];

    if (v28 && v6)
    {
      [(EPActiveDeviceAssertionFactory *)self _holdAlternateAccountOSTransaction];
    }

    else
    {
      [(EPActiveDeviceAssertionFactory *)self _releaseAlternateAccountOSTransaction];
    }
  }

  v29 = [(EPResourceManager *)v11 newResourceWithDelegate:v9];

  return v29;
}

- (void)managerIsIdle:(id)a3
{
  v4 = a3;
  managers = self->_managers;
  v6 = [v4 pairingID];
  [(NSMapTable *)managers removeObjectForKey:v6];

  v7 = [(EPActiveDeviceAssertionFactory *)self pairingID];
  v8 = [v4 pairingID];
  v9 = [v7 isEqual:v8];

  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = [(NSMapTable *)self->_managers keyEnumerator];
  v11 = [v10 nextObject];
  [(EPActiveDeviceAssertionFactory *)self setPairingID:v11];

  v12 = [(EPActiveDeviceAssertionFactory *)self pairingID];

  v13 = v12 == 0;
  v14 = sub_1000A98C0();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    if (v15)
    {
      v16 = sub_1000A98C0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "EPActiveDeviceAssertionFactory: Assertion released", &buf, 2u);
      }

      goto LABEL_9;
    }
  }

  else if (v15)
  {
    v16 = sub_1000A98C0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(EPActiveDeviceAssertionFactory *)self pairingID];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "EPActiveDeviceAssertionFactory: Assertion taken for %@", &buf, 0xCu);
    }

LABEL_9:
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x2020000000;
  v26 = 0;
  v18 = [(EPActiveDeviceAssertionFactory *)self pairingID];
  v19 = v18 == 0;

  if (!v19)
  {
    v20 = [v4 registry];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000950EC;
    v23[3] = &unk_100177830;
    v23[4] = self;
    v23[5] = &buf;
    [v20 deasyncGrabRegistryWithReadBlock:v23];
  }

  v21 = [(EPActiveDeviceAssertionFactory *)self pairingID];
  if (v21 && (v22 = *(*(&buf + 1) + 24), v21, (v22 & 1) != 0))
  {
    [(EPActiveDeviceAssertionFactory *)self _holdAlternateAccountOSTransaction];
  }

  else
  {
    [(EPActiveDeviceAssertionFactory *)self _releaseAlternateAccountOSTransaction];
  }

  _Block_object_dispose(&buf, 8);

LABEL_17:
  [(EPActiveDeviceAssertionFactory *)self update];
}

- (void)update
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = self->_managers;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMapTable *)self->_managers objectForKey:*(*(&v20 + 1) + 8 * v7)];
        v9 = [(EPActiveDeviceAssertionFactory *)self pairingID];
        [v8 updateWithPairingID:v9];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  if (![(NSMapTable *)self->_managers count])
  {
    v10 = [(NSMutableOrderedSet *)self->_observers copy];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * v15) assertionFactoryDidBecomeIdle:{self, v16}];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }
  }
}

- (NSDictionary)assertions
{
  v3 = +[NSMutableDictionary dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_managers;
  v4 = [(NSMapTable *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_managers objectForKey:v8];
        v10 = +[NSMutableSet set];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10009551C;
        v14[3] = &unk_1001785C0;
        v15 = v10;
        v11 = v10;
        [v9 enumerateResourcesWithBlock:v14];
        [v3 setObject:v11 forKeyedSubscript:v8];
      }

      v5 = [(NSMapTable *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v16 = "[EPActiveDeviceAssertionFactory addObserver:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }

  v8 = objc_opt_new();
  [v8 setObserver:v4];

  v9 = [(EPActiveDeviceAssertionFactory *)self assertions];
  v10 = [v9 count];

  [(NSMutableOrderedSet *)self->_observers addObject:v8];
  if (!v10)
  {
    v11 = +[NRQueue registryDaemonQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000956C8;
    v12[3] = &unk_100175598;
    v13 = v8;
    v14 = self;
    [v11 dispatchAsync:v12];
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v23 = "[EPActiveDeviceAssertionFactory removeObserver:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(NSMutableOrderedSet *)self->_observers copy];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 observer];
        if (v14)
        {
          v15 = v14;
          v16 = [v13 observer];

          if (v16 != v4)
          {
            continue;
          }
        }

        [(NSMutableOrderedSet *)self->_observers removeObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }
}

@end