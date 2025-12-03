@interface EPActiveDeviceAssertionFactory
+ (id)newService:(id)service;
- (EPActiveDeviceAssertionFactory)init;
- (EPActiveDeviceAssertionFactory)initWithServiceRegistry:(id)registry;
- (NSDictionary)assertions;
- (id)assertionWithPairingID:(id)d isAltAccount:(BOOL)account delegate:(id)delegate;
- (void)_holdAlternateAccountOSTransaction;
- (void)_releaseAlternateAccountOSTransaction;
- (void)addObserver:(id)observer;
- (void)managerIsIdle:(id)idle;
- (void)removeObserver:(id)observer;
- (void)setPairingID:(id)d;
- (void)update;
@end

@implementation EPActiveDeviceAssertionFactory

+ (id)newService:(id)service
{
  serviceCopy = service;
  v5 = [[self alloc] initWithServiceRegistry:serviceCopy];

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

- (EPActiveDeviceAssertionFactory)initWithServiceRegistry:(id)registry
{
  objc_storeStrong(&self->_serviceRegistry, registry);

  return [(EPActiveDeviceAssertionFactory *)self init];
}

- (void)setPairingID:(id)d
{
  dCopy = d;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (dCopy)
  {
    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        uUIDString = [(NSUUID *)dCopy UUIDString];
        v11 = 138412290;
        v12 = uUIDString;
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
      uUIDString = [(EPActiveDeviceAssertionFactory *)self pairingID];
      v8UUIDString = [uUIDString UUIDString];
      v11 = 138412290;
      v12 = v8UUIDString;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPActiveDeviceAssertion: releasing switch assertion for %@", &v11, 0xCu);

      goto LABEL_8;
    }

LABEL_9:
  }

  pairingID = self->_pairingID;
  self->_pairingID = dCopy;
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

- (id)assertionWithPairingID:(id)d isAltAccount:(BOOL)account delegate:(id)delegate
{
  accountCopy = account;
  dCopy = d;
  delegateCopy = delegate;
  v10 = [(NSMapTable *)self->_managers objectForKey:dCopy];
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
        uUIDString = [dCopy UUIDString];
        v31 = 134218242;
        v32 = v11;
        v33 = 2112;
        v34 = uUIDString;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "EPActiveDeviceAssertionFactory: Reusing existing EPActiveDeviceAssertionManager %p to monitor switch to device %@", &v31, 0x16u);
      }
    }
  }

  else
  {
    v11 = [[EPActiveDeviceAssertionManager alloc] initWithFactory:self pairingID:dCopy];
    [(NSMapTable *)self->_managers setObject:v11 forKey:dCopy];
    v16 = sub_1000A98C0();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v18 = sub_1000A98C0();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        uUIDString2 = [dCopy UUIDString];
        v31 = 134218242;
        v32 = v11;
        v33 = 2112;
        v34 = uUIDString2;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "EPActiveDeviceAssertionFactory: Created new EPActiveDeviceAssertionManager %p to monitor switch to device %@", &v31, 0x16u);
      }
    }

    pairingID = [(EPActiveDeviceAssertionFactory *)self pairingID];
    if (!pairingID || (v21 = pairingID, -[EPActiveDeviceAssertionFactory pairingID](self, "pairingID"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 isEqual:dCopy], v22, v21, (v23 & 1) == 0))
    {
      [(EPActiveDeviceAssertionFactory *)self setPairingID:dCopy];
      v24 = sub_1000A98C0();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

      if (v25)
      {
        v26 = sub_1000A98C0();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          pairingID2 = [(EPActiveDeviceAssertionFactory *)self pairingID];
          v31 = 138412290;
          v32 = pairingID2;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "EPActiveDeviceAssertionFactory: Assertion taken for %@", &v31, 0xCu);
        }
      }

      [(EPActiveDeviceAssertionFactory *)self update];
    }

    pairingID3 = [(EPActiveDeviceAssertionFactory *)self pairingID];

    if (pairingID3 && accountCopy)
    {
      [(EPActiveDeviceAssertionFactory *)self _holdAlternateAccountOSTransaction];
    }

    else
    {
      [(EPActiveDeviceAssertionFactory *)self _releaseAlternateAccountOSTransaction];
    }
  }

  v29 = [(EPResourceManager *)v11 newResourceWithDelegate:delegateCopy];

  return v29;
}

- (void)managerIsIdle:(id)idle
{
  idleCopy = idle;
  managers = self->_managers;
  pairingID = [idleCopy pairingID];
  [(NSMapTable *)managers removeObjectForKey:pairingID];

  pairingID2 = [(EPActiveDeviceAssertionFactory *)self pairingID];
  pairingID3 = [idleCopy pairingID];
  v9 = [pairingID2 isEqual:pairingID3];

  if (!v9)
  {
    goto LABEL_17;
  }

  keyEnumerator = [(NSMapTable *)self->_managers keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  [(EPActiveDeviceAssertionFactory *)self setPairingID:nextObject];

  pairingID4 = [(EPActiveDeviceAssertionFactory *)self pairingID];

  v13 = pairingID4 == 0;
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
      pairingID5 = [(EPActiveDeviceAssertionFactory *)self pairingID];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = pairingID5;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "EPActiveDeviceAssertionFactory: Assertion taken for %@", &buf, 0xCu);
    }

LABEL_9:
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x2020000000;
  v26 = 0;
  pairingID6 = [(EPActiveDeviceAssertionFactory *)self pairingID];
  v19 = pairingID6 == 0;

  if (!v19)
  {
    registry = [idleCopy registry];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000950EC;
    v23[3] = &unk_100177830;
    v23[4] = self;
    v23[5] = &buf;
    [registry deasyncGrabRegistryWithReadBlock:v23];
  }

  pairingID7 = [(EPActiveDeviceAssertionFactory *)self pairingID];
  if (pairingID7 && (v22 = *(*(&buf + 1) + 24), pairingID7, (v22 & 1) != 0))
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
        pairingID = [(EPActiveDeviceAssertionFactory *)self pairingID];
        [v8 updateWithPairingID:pairingID];

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

- (void)addObserver:(id)observer
{
  observerCopy = observer;
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
  [v8 setObserver:observerCopy];

  assertions = [(EPActiveDeviceAssertionFactory *)self assertions];
  v10 = [assertions count];

  [(NSMutableOrderedSet *)self->_observers addObject:v8];
  if (!v10)
  {
    v11 = +[NRQueue registryDaemonQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000956C8;
    v12[3] = &unk_100175598;
    v13 = v8;
    selfCopy = self;
    [v11 dispatchAsync:v12];
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
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
        observer = [v13 observer];
        if (observer)
        {
          v15 = observer;
          observer2 = [v13 observer];

          if (observer2 != observerCopy)
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