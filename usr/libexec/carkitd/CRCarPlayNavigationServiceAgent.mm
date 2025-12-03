@interface CRCarPlayNavigationServiceAgent
- (BOOL)_work_queue_doWeHaveOwners;
- (BOOL)_work_queue_navigationOwnerExistsForIdentifier:(id)identifier;
- (BOOL)_work_queue_updateOwnershipToiOSIfNecessary;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CRCarPlayNavigationServiceAgent)initWithSessionStatus:(id)status;
- (id)_work_queue_activeNavigationIdentifiers;
- (id)_work_queue_ownersForIdentifier:(id)identifier pid:(int)pid;
- (void)_navigationOwnershipChangedFromCar:(id)car;
- (void)_removeConnection:(id)connection;
- (void)_work_queue_addNavigationIdentifer:(id)identifer accNavRole:(unint64_t)role forConnection:(id)connection;
- (void)_work_queue_navigationOwnershipChangedFromCar;
- (void)_work_queue_removeNavigationOwner:(id)owner;
- (void)_work_queue_removeNavigationOwnerForConnection:(id)connection;
- (void)_work_queue_removeOwnerWithIdentifier:(id)identifier forConnection:(id)connection;
- (void)_work_queue_updateActiveComponents:(id)components forOwner:(id)owner;
- (void)_work_queue_updateNavigationStateForRemoval;
- (void)addNavigationOwnerWithIdentifier:(id)identifier accNavRole:(unint64_t)role;
- (void)beginObserving;
- (void)dealloc;
- (void)fetchNavigationIdentifierWithReply:(id)reply;
- (void)fetchNavigationIdentifiersWithReply:(id)reply;
- (void)fetchNavigationOwnerWithReply:(id)reply;
- (void)removeNavigationOwnerWithIdentifier:(id)identifier;
- (void)sendInfo:(id)info toComponentUID:(id)d;
- (void)session:(id)session didUpdateActiveComponents:(id)components;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
@end

@implementation CRCarPlayNavigationServiceAgent

- (void)beginObserving
{
  v3 = +[NSXPCConnection currentConnection];
  if (v3)
  {
    workQueue = [(CRCarPlayNavigationServiceAgent *)self workQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100002C70;
    v5[3] = &unk_1000DD580;
    v5[4] = self;
    v6 = v3;
    dispatch_async(workQueue, v5);
  }
}

- (id)_work_queue_activeNavigationIdentifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  owners = [(CRCarPlayNavigationServiceAgent *)self owners];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100044FB0;
  v8[3] = &unk_1000DEBC8;
  v9 = v3;
  v5 = v3;
  [owners enumerateObjectsUsingBlock:v8];

  v6 = [v5 copy];

  return v6;
}

- (CRCarPlayNavigationServiceAgent)initWithSessionStatus:(id)status
{
  statusCopy = status;
  v22.receiver = self;
  v22.super_class = CRCarPlayNavigationServiceAgent;
  v6 = [(CRCarPlayNavigationServiceAgent *)&v22 init];
  v7 = v6;
  if (v6)
  {
    v6->_sessionLock._os_unfair_lock_opaque = 0;
    v8 = dispatch_queue_create("com.apple.carkit.navigationService", 0);
    workQueue = v7->_workQueue;
    v7->_workQueue = v8;

    objc_storeStrong(&v7->_sessionStatus, status);
    v10 = objc_alloc_init(NSMutableOrderedSet);
    owners = v7->_owners;
    v7->_owners = v10;

    v12 = objc_alloc_init(NSMutableArray);
    observers = v7->_observers;
    v7->_observers = v12;

    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v14 = qword_100107F78;
    v31 = qword_100107F78;
    if (!qword_100107F78)
    {
      *buf = _NSConcreteStackBlock;
      v24 = 3221225472;
      v25 = sub_100045DC8;
      v26 = &unk_1000DD660;
      v27 = &v28;
      sub_100045DC8(buf);
      v14 = v29[3];
    }

    v15 = v14;
    _Block_object_dispose(&v28, 8);
    v16 = [[v14 alloc] initWithDelegate:v7];
    accNavProvider = v7->_accNavProvider;
    v7->_accNavProvider = v16;

    v7->_cachedDoWeOwnNavigation = 0;
    v7->_maximumConcurrentNavigationOwners = 0;
    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v7 selector:"_navigationOwnershipChangedFromCar:" name:CARSessionOwnsTurnByTurnNavigationChangedNotification object:0];

    [(CARSessionStatus *)v7->_sessionStatus addSessionObserver:v7];
    currentSession = [(CARSessionStatus *)v7->_sessionStatus currentSession];
    [(CRCarPlayNavigationServiceAgent *)v7 sessionDidConnect:currentSession];

    v20 = sub_100002A68(1uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "CRCarPlayNavigationServiceAgent init", buf, 2u);
    }
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CRCarPlayNavigationServiceAgent;
  [(CRCarPlayNavigationServiceAgent *)&v4 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  serviceName = [connectionCopy serviceName];
  v9 = [serviceName isEqualToString:@"com.apple.carkit.navowners.service"];

  if (v9)
  {
    v10 = CRCarPlayNavigationOwnersServiceInterface();
    [connectionCopy setExportedInterface:v10];

    v11 = CRCarPlayNavigationOwnerClientInterface();
    [connectionCopy setRemoteObjectInterface:v11];

    v12 = sub_100002A68(1uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = connectionCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Receiving navigation ownership connection: %{public}@", &buf, 0xCu);
    }

LABEL_14:

    [connectionCopy setExportedObject:self];
    objc_initWeak(&buf, self);
    objc_initWeak(&location, connectionCopy);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100042F24;
    v32[3] = &unk_1000DEAE0;
    objc_copyWeak(&v33, &location);
    objc_copyWeak(&v34, &buf);
    [connectionCopy setInterruptionHandler:v32];
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_100042FA0;
    v29 = &unk_1000DEAE0;
    objc_copyWeak(&v30, &location);
    objc_copyWeak(&v31, &buf);
    [connectionCopy setInvalidationHandler:&v26];
    [connectionCopy resume];
    objc_destroyWeak(&v31);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
    objc_destroyWeak(&buf);
    v24 = 1;
    goto LABEL_18;
  }

  serviceName2 = [connectionCopy serviceName];
  v14 = [serviceName2 isEqualToString:@"com.apple.carkit.navigation.service"];

  v15 = sub_100002A68(1uLL);
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = connectionCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Receiving accessory navigation connection: %{public}@", &buf, 0xCu);
    }

    location = 0;
    p_location = &location;
    v37 = 0x2020000000;
    v17 = off_100107F80;
    v38 = off_100107F80;
    if (!off_100107F80)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v40 = sub_100045E20;
      v41 = &unk_1000DD660;
      v42 = &location;
      v18 = sub_100045C54();
      v19 = dlsym(v18, "CRNavigationServiceInterface");
      *(v42[1] + 3) = v19;
      off_100107F80 = *(v42[1] + 3);
      v17 = p_location[3];
    }

    _Block_object_dispose(&location, 8);
    if (!v17)
    {
      goto LABEL_19;
    }

    v20 = v17();
    [connectionCopy setExportedInterface:v20];

    location = 0;
    p_location = &location;
    v37 = 0x2020000000;
    v21 = off_100107F88;
    v38 = off_100107F88;
    if (!off_100107F88)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v40 = sub_100045E70;
      v41 = &unk_1000DD660;
      v42 = &location;
      v22 = sub_100045C54();
      v23 = dlsym(v22, "CRNavigationClientInterface");
      *(v42[1] + 3) = v23;
      off_100107F88 = *(v42[1] + 3);
      v21 = p_location[3];
    }

    _Block_object_dispose(&location, 8);
    if (!v21)
    {
LABEL_19:
      sub_100084C30();
      __break(1u);
    }

    v12 = v21();
    [connectionCopy setRemoteObjectInterface:v12];
    goto LABEL_14;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_100086BCC();
  }

  v24 = 0;
LABEL_18:

  return v24;
}

- (void)_removeConnection:(id)connection
{
  connectionCopy = connection;
  v5 = sub_100002A68(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing owners requested for connection: %{public}@", buf, 0xCu);
  }

  workQueue = [(CRCarPlayNavigationServiceAgent *)self workQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100043150;
  v8[3] = &unk_1000DD580;
  v9 = connectionCopy;
  selfCopy = self;
  v7 = connectionCopy;
  dispatch_async(workQueue, v8);
}

- (void)sessionDidConnect:(id)connect
{
  connectCopy = connect;
  if (connectCopy)
  {
    v5 = sub_100002A68(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v9 = connectCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "connected session: %{public}@", buf, 0xCu);
    }

    os_unfair_lock_lock(&self->_sessionLock);
    [(CRCarPlayNavigationServiceAgent *)self setLock_session:connectCopy];
    os_unfair_lock_unlock(&self->_sessionLock);
    workQueue = [(CRCarPlayNavigationServiceAgent *)self workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100043360;
    block[3] = &unk_1000DD480;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

- (void)sessionDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = sub_100002A68(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = disconnectCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "disconnected session: %{public}@", &v6, 0xCu);
  }

  os_unfair_lock_lock(&self->_sessionLock);
  [(CRCarPlayNavigationServiceAgent *)self setLock_session:0];
  os_unfair_lock_unlock(&self->_sessionLock);
}

- (void)_navigationOwnershipChangedFromCar:(id)car
{
  v4 = sub_100002A68(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notified ownership changed by car", buf, 2u);
  }

  workQueue = [(CRCarPlayNavigationServiceAgent *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100043514;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)addNavigationOwnerWithIdentifier:(id)identifier accNavRole:(unint64_t)role
{
  identifierCopy = identifier;
  v7 = +[NSXPCConnection currentConnection];
  workQueue = [(CRCarPlayNavigationServiceAgent *)self workQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100043610;
  v11[3] = &unk_1000DEB08;
  v11[4] = self;
  v12 = identifierCopy;
  v13 = v7;
  roleCopy = role;
  v9 = v7;
  v10 = identifierCopy;
  dispatch_async(workQueue, v11);
}

- (void)removeNavigationOwnerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[NSXPCConnection currentConnection];
  workQueue = [(CRCarPlayNavigationServiceAgent *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100043700;
  block[3] = &unk_1000DD6F0;
  block[4] = self;
  v10 = identifierCopy;
  v11 = v5;
  v7 = v5;
  v8 = identifierCopy;
  dispatch_async(workQueue, block);
}

- (void)fetchNavigationOwnerWithReply:(id)reply
{
  replyCopy = reply;
  os_unfair_lock_lock(&self->_sessionLock);
  lock_session = [(CRCarPlayNavigationServiceAgent *)self lock_session];
  navigationOwner = [lock_session navigationOwner];

  os_unfair_lock_unlock(&self->_sessionLock);
  replyCopy[2](replyCopy, navigationOwner);
}

- (void)fetchNavigationIdentifierWithReply:(id)reply
{
  replyCopy = reply;
  os_unfair_lock_lock(&self->_sessionLock);
  lock_session = [(CRCarPlayNavigationServiceAgent *)self lock_session];
  navigationOwner = [lock_session navigationOwner];

  os_unfair_lock_unlock(&self->_sessionLock);
  if (navigationOwner == 1)
  {
    workQueue = [(CRCarPlayNavigationServiceAgent *)self workQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100043884;
    v8[3] = &unk_1000DD988;
    v8[4] = self;
    v9 = replyCopy;
    dispatch_async(workQueue, v8);
  }
}

- (void)fetchNavigationIdentifiersWithReply:(id)reply
{
  replyCopy = reply;
  workQueue = [(CRCarPlayNavigationServiceAgent *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000439C0;
  v7[3] = &unk_1000DD988;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(workQueue, v7);
}

- (id)_work_queue_ownersForIdentifier:(id)identifier pid:(int)pid
{
  identifierCopy = identifier;
  workQueue = [(CRCarPlayNavigationServiceAgent *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = objc_opt_new();
  owners = [(CRCarPlayNavigationServiceAgent *)self owners];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100043B28;
  v15[3] = &unk_1000DEB30;
  pidCopy = pid;
  v16 = identifierCopy;
  v10 = v8;
  v17 = v10;
  v11 = identifierCopy;
  [owners enumerateObjectsUsingBlock:v15];

  v12 = v17;
  v13 = v10;

  return v10;
}

- (void)_work_queue_addNavigationIdentifer:(id)identifer accNavRole:(unint64_t)role forConnection:(id)connection
{
  identiferCopy = identifer;
  connectionCopy = connection;
  workQueue = [(CRCarPlayNavigationServiceAgent *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (identiferCopy && connectionCopy)
  {
    v11 = -[CRCarPlayNavigationServiceAgent _work_queue_ownersForIdentifier:pid:](self, "_work_queue_ownersForIdentifier:pid:", identiferCopy, [connectionCopy processIdentifier]);
    v12 = [v11 count];

    if (v12)
    {
      v13 = sub_100002A68(1uLL);
      if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_ERROR))
      {
        sub_100086DE0(identiferCopy, connectionCopy);
      }
    }

    else
    {
      v13 = objc_alloc_init(_CRAppStateNavigationOwner);
      [(_CRAppStateNavigationOwner *)v13 setIdentifier:identiferCopy];
      [(_CRAppStateNavigationOwner *)v13 setConnection:connectionCopy];
      [(_CRAppStateNavigationOwner *)v13 setAccNavRole:role];
      v14 = sub_100002A68(1uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = sub_100042438(role);
        *buf = 138543618;
        v41 = v13;
        v42 = 2114;
        v43 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[addNavigationIdentifer] Adding navigation owner: %{public}@ accNavRole: %{public}@", buf, 0x16u);
      }

      owners = [(CRCarPlayNavigationServiceAgent *)self owners];
      [owners addObject:v13];

      if (![(CRCarPlayNavigationServiceAgent *)self _work_queue_updateOwnershipToiOSIfNecessary])
      {
        os_unfair_lock_lock(&self->_sessionLock);
        lock_session = [(CRCarPlayNavigationServiceAgent *)self lock_session];
        navigationOwner = [lock_session navigationOwner];

        os_unfair_lock_unlock(&self->_sessionLock);
        v19 = sub_100002A68(1uLL);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          identifier = [(_CRAppStateNavigationOwner *)v13 identifier];
          v21 = @"None";
          if (navigationOwner == 1)
          {
            v21 = @"iOS";
          }

          if (navigationOwner == 2)
          {
            v21 = @"Car";
          }

          v22 = v21;
          *buf = 138543618;
          v41 = identifier;
          v42 = 2114;
          v43 = v22;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[addNavigationIdentifer] Informing navigation owner: %{public}@ ownership is %{public}@", buf, 0x16u);
        }

        remoteObjectProxy = [connectionCopy remoteObjectProxy];
        [remoteObjectProxy navigationOwnershipChangedTo:navigationOwner];
      }

      owners2 = [(CRCarPlayNavigationServiceAgent *)self owners];
      v25 = [owners2 count];

      if (v25 > [(CRCarPlayNavigationServiceAgent *)self maximumConcurrentNavigationOwners])
      {
        [(CRCarPlayNavigationServiceAgent *)self setMaximumConcurrentNavigationOwners:v25];
      }

      accNavRole = [(_CRAppStateNavigationOwner *)v13 accNavRole];
      v27 = sub_100002A68(1uLL);
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
      if (accNavRole)
      {
        if (v28)
        {
          *buf = 138543362;
          v41 = identiferCopy;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[addNavigationIdentifer] Updating new owner with components: %{public}@", buf, 0xCu);
        }

        accNavProvider = [(CRCarPlayNavigationServiceAgent *)self accNavProvider];
        activeComponents = [accNavProvider activeComponents];
        [(CRCarPlayNavigationServiceAgent *)self _work_queue_updateActiveComponents:activeComponents forOwner:v13];
      }

      else
      {
        if (v28)
        {
          *buf = 138543362;
          v41 = identiferCopy;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[addNavigationIdentifer] Sending app identifier as no ACCNav support after adding: %{public}@", buf, 0xCu);
        }

        accNavProvider = [(CRCarPlayNavigationServiceAgent *)self accNavProvider];
        activeComponents = [(_CRAppStateNavigationOwner *)v13 identifier];
        [accNavProvider sendNoSupportForAppIdentifier:activeComponents];
      }

      v31 = sub_100002A68(1uLL);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v41 = identiferCopy;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[addNavigationIdentifer] Informing navigation observers of new arrival: %{public}@", buf, 0xCu);
      }

      v32 = +[NSDistributedNotificationCenter defaultCenter];
      [v32 postNotificationName:CARNavigationOwnerRequestedNotificationName object:identiferCopy];

      _work_queue_activeNavigationIdentifiers = [(CRCarPlayNavigationServiceAgent *)self _work_queue_activeNavigationIdentifiers];
      v34 = sub_100002A68(1uLL);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v41 = _work_queue_activeNavigationIdentifiers;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[addNavigationIdentifer] Active navigation owners after addition: %{public}@", buf, 0xCu);
      }

      observers = [(CRCarPlayNavigationServiceAgent *)self observers];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10004417C;
      v37[3] = &unk_1000DEB58;
      v38 = _work_queue_activeNavigationIdentifiers;
      selfCopy = self;
      v36 = _work_queue_activeNavigationIdentifiers;
      [observers enumerateObjectsUsingBlock:v37];
    }
  }

  else
  {
    v13 = sub_100002A68(1uLL);
    if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_ERROR))
    {
      sub_100086D58(identiferCopy, connectionCopy);
    }
  }
}

- (void)_work_queue_removeOwnerWithIdentifier:(id)identifier forConnection:(id)connection
{
  identifierCopy = identifier;
  connectionCopy = connection;
  workQueue = [(CRCarPlayNavigationServiceAgent *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (identifierCopy && connectionCopy)
  {
    v9 = -[CRCarPlayNavigationServiceAgent _work_queue_ownersForIdentifier:pid:](self, "_work_queue_ownersForIdentifier:pid:", identifierCopy, [connectionCopy processIdentifier]);
    v10 = sub_100002A68(1uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v22 = [v9 count];
      v23 = 2114;
      v24 = identifierCopy;
      v25 = 1024;
      processIdentifier = [connectionCopy processIdentifier];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[removeNavigationOwner] Removing %lu owners for %{public}@(%d)", buf, 0x1Cu);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

          [(CRCarPlayNavigationServiceAgent *)self _work_queue_removeNavigationOwner:*(*(&v16 + 1) + 8 * v15), v16];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v11 = sub_100002A68(1uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100086E68();
    }
  }
}

- (void)_work_queue_removeNavigationOwnerForConnection:(id)connection
{
  connectionCopy = connection;
  workQueue = [(CRCarPlayNavigationServiceAgent *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = -[CRCarPlayNavigationServiceAgent _work_queue_ownersForIdentifier:pid:](self, "_work_queue_ownersForIdentifier:pid:", 0, [connectionCopy processIdentifier]);
  v7 = sub_100002A68(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v19 = [v6 count];
    v20 = 2114;
    v21 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[removeNavigationOwner] Removing %lu owners for %{public}@", buf, 0x16u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(CRCarPlayNavigationServiceAgent *)self _work_queue_removeNavigationOwner:*(*(&v13 + 1) + 8 * v12), v13];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_work_queue_removeNavigationOwner:(id)owner
{
  ownerCopy = owner;
  workQueue = [(CRCarPlayNavigationServiceAgent *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = sub_100002A68(1uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = ownerCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[removeNavigationOwner] Removing navigation owner: %{public}@", buf, 0xCu);
  }

  owners = [(CRCarPlayNavigationServiceAgent *)self owners];
  [owners removeObject:ownerCopy];

  [(CRCarPlayNavigationServiceAgent *)self _work_queue_updateNavigationStateForRemoval];
  v8 = sub_100002A68(1uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [ownerCopy identifier];
    *buf = 138543362;
    v28 = identifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[removeNavigationOwner] Informing navigation observers of released owner: %{public}@", buf, 0xCu);
  }

  v10 = +[NSDistributedNotificationCenter defaultCenter];
  v11 = CARNavigationOwnerReleasedNotificationName;
  identifier2 = [ownerCopy identifier];
  [v10 postNotificationName:v11 object:identifier2];

  accNavProvider = [(CRCarPlayNavigationServiceAgent *)self accNavProvider];
  [accNavProvider resetActiveComponents];

  owners2 = [(CRCarPlayNavigationServiceAgent *)self owners];
  lastObject = [owners2 lastObject];

  if ([lastObject accNavRole])
  {
    v16 = sub_100002A68(1uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      identifier3 = [lastObject identifier];
      *buf = 138543362;
      v28 = identifier3;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[removeNavigationOwner] Updating new owner with components: %{public}@", buf, 0xCu);
    }

    accNavProvider2 = [(CRCarPlayNavigationServiceAgent *)self accNavProvider];
    activeComponents = [accNavProvider2 activeComponents];
    [(CRCarPlayNavigationServiceAgent *)self _work_queue_updateActiveComponents:activeComponents forOwner:lastObject];
  }

  else
  {
    identifier4 = [lastObject identifier];

    if (!identifier4)
    {
      goto LABEL_12;
    }

    accNavProvider2 = [(CRCarPlayNavigationServiceAgent *)self accNavProvider];
    activeComponents = [lastObject identifier];
    [accNavProvider2 sendNoSupportForAppIdentifier:activeComponents];
  }

LABEL_12:
  _work_queue_activeNavigationIdentifiers = [(CRCarPlayNavigationServiceAgent *)self _work_queue_activeNavigationIdentifiers];
  v22 = sub_100002A68(1uLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = _work_queue_activeNavigationIdentifiers;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[removeNavigationOwner] Active navigation owners after removal: %{public}@", buf, 0xCu);
  }

  observers = [(CRCarPlayNavigationServiceAgent *)self observers];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100044AE0;
  v25[3] = &unk_1000DEB80;
  v26 = _work_queue_activeNavigationIdentifiers;
  v24 = _work_queue_activeNavigationIdentifiers;
  [observers enumerateObjectsUsingBlock:v25];
}

- (void)_work_queue_navigationOwnershipChangedFromCar
{
  os_unfair_lock_lock(&self->_sessionLock);
  lock_session = [(CRCarPlayNavigationServiceAgent *)self lock_session];
  navigationOwner = [lock_session navigationOwner];

  os_unfair_lock_unlock(&self->_sessionLock);
  if (navigationOwner == 1)
  {
    v6 = @"iOS";
  }

  else if (navigationOwner == 2)
  {
    v5 = +[NSDistributedNotificationCenter defaultCenter];
    [v5 postNotificationName:CARNavigationOwnerRequestedNotificationName object:@"OEM"];

    v6 = @"car";
  }

  else
  {
    v6 = @"nobody";
  }

  v7 = sub_100002A68(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[navigationOwnershipChangedFromCar] Received notification indicating ownership changed to %{public}@", buf, 0xCu);
  }

  owners = [(CRCarPlayNavigationServiceAgent *)self owners];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100044D58;
  v9[3] = &unk_1000DEBA0;
  v9[4] = navigationOwner;
  [owners enumerateObjectsUsingBlock:v9];
}

- (BOOL)_work_queue_navigationOwnerExistsForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  owners = [(CRCarPlayNavigationServiceAgent *)self owners];
  v6 = [owners countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(owners);
        }

        identifier = [*(*(&v12 + 1) + 8 * i) identifier];
        v10 = [identifier isEqualToString:identifierCopy];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [owners countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (BOOL)_work_queue_doWeHaveOwners
{
  workQueue = [(CRCarPlayNavigationServiceAgent *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  owners = [(CRCarPlayNavigationServiceAgent *)self owners];
  LOBYTE(workQueue) = [owners count] != 0;

  return workQueue;
}

- (BOOL)_work_queue_updateOwnershipToiOSIfNecessary
{
  workQueue = [(CRCarPlayNavigationServiceAgent *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  os_unfair_lock_lock(&self->_sessionLock);
  lock_session = [(CRCarPlayNavigationServiceAgent *)self lock_session];
  os_unfair_lock_unlock(&self->_sessionLock);
  if (!lock_session)
  {
    v11 = sub_100002A68(1uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100086EEC(v11);
    }

    goto LABEL_13;
  }

  navigationOwner = [lock_session navigationOwner];
  _work_queue_doWeHaveOwners = [(CRCarPlayNavigationServiceAgent *)self _work_queue_doWeHaveOwners];
  v7 = sub_100002A68(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    owners = [(CRCarPlayNavigationServiceAgent *)self owners];
    v14 = 138543362;
    v15 = owners;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[updateOwnershipToiOSIfNecessary] Owners: %{public}@", &v14, 0xCu);
  }

  if (!_work_queue_doWeHaveOwners)
  {
    v11 = sub_100002A68(1uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[updateOwnershipToiOSIfNecessary] No current navigation owners", &v14, 2u);
    }

LABEL_13:

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v9 = sub_100002A68(1uLL);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (navigationOwner == 1)
  {
    if (v10)
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[updateOwnershipToiOSIfNecessary] iOS already has ownership", &v14, 2u);
    }

    goto LABEL_14;
  }

  if (v10)
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[updateOwnershipToiOSIfNecessary] Requesting iOS ownership", &v14, 2u);
  }

  [lock_session requestTurnByTurnOwnership];
  [(CRCarPlayNavigationServiceAgent *)self _work_queue_navigationOwnershipChangedFromCar];
  v12 = 1;
LABEL_15:

  return v12;
}

- (void)_work_queue_updateNavigationStateForRemoval
{
  os_unfair_lock_lock(&self->_sessionLock);
  lock_session = [(CRCarPlayNavigationServiceAgent *)self lock_session];
  os_unfair_lock_unlock(&self->_sessionLock);
  _work_queue_doWeHaveOwners = [(CRCarPlayNavigationServiceAgent *)self _work_queue_doWeHaveOwners];
  if (!lock_session)
  {
    goto LABEL_12;
  }

  navigationOwner = [lock_session navigationOwner];
  v6 = sub_100002A68(1uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    owners = [(CRCarPlayNavigationServiceAgent *)self owners];
    v11 = 138543362;
    v12 = owners;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[updateNavigationStateForRemoval] Owners: %{public}@", &v11, 0xCu);
  }

  v8 = sub_100002A68(1uLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (navigationOwner != 1)
  {
    if (v9)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[updateNavigationStateForRemoval] iOS does not have ownership", &v11, 2u);
    }

LABEL_12:
    if (_work_queue_doWeHaveOwners)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (_work_queue_doWeHaveOwners)
  {
    if (v9)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[updateNavigationStateForRemoval] Holding iOS ownership", &v11, 2u);
    }

    goto LABEL_19;
  }

  if (v9)
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[updateNavigationStateForRemoval] Releasing iOS ownership", &v11, 2u);
  }

  [lock_session releaseTurnByTurnOwnership];
  [(CRCarPlayNavigationServiceAgent *)self setCachedDoWeOwnNavigation:0];
LABEL_17:
  if ([(CRCarPlayNavigationServiceAgent *)self maximumConcurrentNavigationOwners])
  {
    v10 = +[CARAnalytics sharedInstance];
    [v10 navigationOwnershipEndedWithMaximumConcurrentCount:{-[CRCarPlayNavigationServiceAgent maximumConcurrentNavigationOwners](self, "maximumConcurrentNavigationOwners")}];

    [(CRCarPlayNavigationServiceAgent *)self setMaximumConcurrentNavigationOwners:0];
  }

LABEL_19:
}

- (void)sendInfo:(id)info toComponentUID:(id)d
{
  infoCopy = info;
  dCopy = d;
  owners = [(CRCarPlayNavigationServiceAgent *)self owners];
  lastObject = [owners lastObject];

  connection = [lastObject connection];
  v11 = +[NSXPCConnection currentConnection];

  if (connection == v11)
  {
    if ([lastObject accNavRole] != 2)
    {
      accNavProvider = [(CRCarPlayNavigationServiceAgent *)self accNavProvider];
      [accNavProvider sendInfo:infoCopy toComponentUID:dCopy];

      goto LABEL_9;
    }

    v12 = sub_100002A68(1uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      identifier = [lastObject identifier];
      v18 = 138543874;
      selfCopy2 = self;
      v20 = 2114;
      v21 = v16;
      v22 = 2114;
      v23 = identifier;
      v15 = "%{public}@ %{public}@ not sent. %{public}@ controls their own accNav";
      goto LABEL_7;
    }
  }

  else
  {
    v12 = sub_100002A68(1uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      identifier = [lastObject identifier];
      v18 = 138543874;
      selfCopy2 = self;
      v20 = 2114;
      v21 = v13;
      v22 = 2114;
      v23 = identifier;
      v15 = "%{public}@ %{public}@ not sent.  NavOwner=%{public}@";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v15, &v18, 0x20u);
    }
  }

LABEL_9:
}

- (void)session:(id)session didUpdateActiveComponents:(id)components
{
  componentsCopy = components;
  workQueue = [(CRCarPlayNavigationServiceAgent *)self workQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004585C;
  v8[3] = &unk_1000DD580;
  v9 = componentsCopy;
  selfCopy = self;
  v7 = componentsCopy;
  dispatch_async(workQueue, v8);
}

- (void)_work_queue_updateActiveComponents:(id)components forOwner:(id)owner
{
  componentsCopy = components;
  ownerCopy = owner;
  workQueue = [(CRCarPlayNavigationServiceAgent *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([ownerCopy accNavRole])
  {
    connection = [ownerCopy connection];
    remoteObjectProxy = [connection remoteObjectProxy];
    if ([remoteObjectProxy conformsToProtocol:&OBJC_PROTOCOL___CRNavigationClient])
    {
      v11 = remoteObjectProxy;
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_100002A68(1uLL);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        identifier = [ownerCopy identifier];
        connection2 = [ownerCopy connection];
        v19 = 138543618;
        v20 = identifier;
        v21 = 1024;
        LODWORD(v22) = [connection2 processIdentifier];
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[updateActiveComponents] Informing navigation owner: %{public}@(%d)", &v19, 0x12u);
      }

      [v11 didUpdateActiveComponents:componentsCopy];
    }

    else
    {
      if (v13)
      {
        v16 = sub_100042438([ownerCopy accNavRole]);
        identifier2 = [ownerCopy identifier];
        connection3 = [ownerCopy connection];
        v19 = 138412802;
        v20 = v16;
        v21 = 2114;
        v22 = identifier2;
        v23 = 1024;
        processIdentifier = [connection3 processIdentifier];
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[updateActiveComponents] Navigation %@ accNav but is not client: %{public}@(%d)", &v19, 0x1Cu);
      }
    }
  }
}

@end