@interface _NFACSession
- (BOOL)didEnd;
- (BOOL)isEnding;
- (BOOL)needsCleanup;
- (_NFACSession)initWithRemoteObject:(id)object workQueue:(id)queue;
- (id)_powerAssertionIdentifier;
- (id)clientName;
- (id)willStartSession;
- (void)cleanup;
- (void)didEndSession:(id)session;
- (void)didStartSession:(id)session;
- (void)endSession:(id)session;
- (void)internalEndSession:(id)session;
- (void)releaseRemoteObject;
@end

@implementation _NFACSession

- (_NFACSession)initWithRemoteObject:(id)object workQueue:(id)queue
{
  objectCopy = object;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = _NFACSession;
  v9 = [(_NFACSession *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_remoteObject, object);
    v10->_workQueue = queueCopy;
    v10->_isEnding = 0;
    v10->_driverOpen = 0;
  }

  return v10;
}

- (void)releaseRemoteObject
{
  remoteObject = self->_remoteObject;
  self->_remoteObject = 0;
  _objc_release_x1();
}

- (BOOL)isEnding
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isEnding = selfCopy->_isEnding;
  objc_sync_exit(selfCopy);

  return isEnding;
}

- (BOOL)didEnd
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  didEnd = selfCopy->_didEnd;
  objc_sync_exit(selfCopy);

  return didEnd;
}

- (id)_powerAssertionIdentifier
{
  clientName = [(_NFACSession *)self clientName];
  v4 = clientName;
  if (!clientName || ![(__CFString *)clientName length])
  {

    v4 = @"unavailable";
  }

  v5 = [[NSString alloc] initWithFormat:@"process:%@, pid:%d, %s, sessionID:%lu", v4, -[NSXPCConnection processIdentifier](self->_connection, "processIdentifier"), object_getClassName(self), self->_sessionID];

  return v5;
}

- (id)clientName
{
  connection = [(_NFACSession *)self connection];

  if (!connection || (-[_NFACSession connection](self, "connection"), v4 = objc_claimAutoreleasedReturnValue(), [v4 NF_clientName], v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v5 = &stru_10031EA18;
  }

  return v5;
}

- (BOOL)needsCleanup
{
  didStart = [(_NFACSession *)self didStart];
  if (didStart)
  {
    LOBYTE(didStart) = ![(_NFACSession *)self didEnd];
  }

  return didStart;
}

- (void)cleanup
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 99);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(self);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    *buf = 67109890;
    v21 = v12;
    v22 = 2082;
    v23 = object_getClassName(self);
    v24 = 2082;
    v25 = sel_getName(a2);
    v26 = 1024;
    v27 = 99;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  driverOpen = selfCopy->_driverOpen;
  selfCopy->_driverOpen = 0;
  objc_sync_exit(selfCopy);

  if (driverOpen)
  {
    driverWrapper = selfCopy->_driverWrapper;
    _powerAssertionIdentifier = [(_NFACSession *)selfCopy _powerAssertionIdentifier];
    [(NFACDriverWrapper *)driverWrapper closeSession:_powerAssertionIdentifier];
  }

  v17 = +[NFPowerAssertion sharedPowerAssertion];
  _powerAssertionIdentifier2 = [(_NFACSession *)selfCopy _powerAssertionIdentifier];
  [v17 releasePowerAssertion:_powerAssertionIdentifier2];
}

- (void)didEndSession:(id)session
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(6, "%c[%{public}s %{public}s]:%i ", v10, ClassName, Name, 117);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(self);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    *buf = 67109890;
    v50 = v13;
    v51 = 2082;
    v52 = object_getClassName(self);
    v53 = 2082;
    v54 = sel_getName(a2);
    v55 = 1024;
    v56 = 117;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_didEnd)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFLogGetLogger();
    if (v15)
    {
      v16 = v15;
      v17 = object_getClass(selfCopy);
      v18 = class_isMetaClass(v17);
      v19 = object_getClassName(selfCopy);
      v47 = sel_getName(a2);
      v20 = 45;
      if (v18)
      {
        v20 = 43;
      }

      v16(6, "%c[%{public}s %{public}s]:%i Session already ended", v20, v19, v47, 120);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = object_getClass(selfCopy);
      if (class_isMetaClass(v22))
      {
        v23 = 43;
      }

      else
      {
        v23 = 45;
      }

      v24 = object_getClassName(selfCopy);
      v25 = sel_getName(a2);
      *buf = 67109890;
      v50 = v23;
      v51 = 2082;
      v52 = v24;
      v53 = 2082;
      v54 = v25;
      v55 = 1024;
      v56 = 120;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Session already ended", buf, 0x22u);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_sync_exit(selfCopy);

    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFLogGetLogger();
    if (v28)
    {
      v29 = v28;
      v30 = object_getClass(selfCopy);
      v31 = class_isMetaClass(v30);
      v32 = object_getClassName(selfCopy);
      v33 = sel_getName(a2);
      clientName = [(_NFACSession *)selfCopy clientName];
      connection = [(_NFACSession *)selfCopy connection];
      processIdentifier = [connection processIdentifier];
      v36 = 43;
      if (!v31)
      {
        v36 = 45;
      }

      v29(6, "%c[%{public}s %{public}s]:%i %{public}@ (%d) ended %{public}@", v36, v32, v33, 126, clientName, processIdentifier, v27);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = object_getClass(selfCopy);
      if (class_isMetaClass(v38))
      {
        v39 = 43;
      }

      else
      {
        v39 = 45;
      }

      v40 = object_getClassName(selfCopy);
      v41 = sel_getName(a2);
      clientName2 = [(_NFACSession *)selfCopy clientName];
      connection2 = [(_NFACSession *)selfCopy connection];
      processIdentifier2 = [connection2 processIdentifier];
      *buf = 67110658;
      v50 = v39;
      v51 = 2082;
      v52 = v40;
      v53 = 2082;
      v54 = v41;
      v55 = 1024;
      v56 = 126;
      v57 = 2114;
      v58 = clientName2;
      v59 = 1024;
      v60 = processIdentifier2;
      v61 = 2114;
      v62 = v27;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ (%d) ended %{public}@", buf, 0x3Cu);
    }

    [(_NFACSession *)selfCopy cleanup];
    v45 = selfCopy;
    objc_sync_enter(v45);
    selfCopy->_didEnd = 1;
    objc_sync_exit(v45);

    selfCopy = v27;
  }
}

- (id)willStartSession
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 136);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(self);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    *buf = 67109890;
    v57 = v12;
    v58 = 2082;
    v59 = object_getClassName(self);
    v60 = 2082;
    v61 = sel_getName(a2);
    v62 = 1024;
    v63 = 136;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v13 = +[NFPowerAssertion sharedPowerAssertion];
  _powerAssertionIdentifier = [(_NFACSession *)self _powerAssertionIdentifier];
  v15 = [v13 holdPowerAssertion:_powerAssertionIdentifier onBehalfOf:-[NSXPCConnection processIdentifier](self->_connection behaviourWhenSleepStarted:{"processIdentifier"), 1}];

  if (v15)
  {
    driverWrapper = self->_driverWrapper;
    _powerAssertionIdentifier2 = [(_NFACSession *)self _powerAssertionIdentifier];
    v18 = [(NFACDriverWrapper *)driverWrapper openSession:_powerAssertionIdentifier2];

    if (v18 == 1)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      selfCopy->_driverOpen = 1;
      objc_sync_exit(selfCopy);
      v20 = 0;
      goto LABEL_34;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v38 = NFLogGetLogger();
    if (v38)
    {
      v39 = v38;
      v40 = object_getClass(self);
      v41 = class_isMetaClass(v40);
      v50 = object_getClassName(self);
      v53 = sel_getName(a2);
      v42 = 45;
      if (v41)
      {
        v42 = 43;
      }

      v39(3, "%c[%{public}s %{public}s]:%i Failed to open session; hwState=%lu", v42, v50, v53, 146, v18);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v43 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = object_getClass(self);
      if (class_isMetaClass(v44))
      {
        v45 = 43;
      }

      else
      {
        v45 = 45;
      }

      v46 = object_getClassName(self);
      v47 = sel_getName(a2);
      *buf = 67110146;
      v57 = v45;
      v58 = 2082;
      v59 = v46;
      v60 = 2082;
      v61 = v47;
      v62 = 1024;
      v63 = 146;
      v64 = 2048;
      v65 = v18;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session; hwState=%lu", buf, 0x2Cu);
    }

    v48 = [NSError alloc];
    selfCopy = [NSString stringWithUTF8String:"nfcd"];
    v54 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Stack Error"];
    v55 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v35 = v48;
    v36 = selfCopy;
    v37 = 15;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v22 = v21;
      v23 = object_getClass(self);
      v24 = class_isMetaClass(v23);
      v25 = object_getClassName(self);
      v52 = sel_getName(a2);
      v26 = 45;
      if (v24)
      {
        v26 = 43;
      }

      v22(3, "%c[%{public}s %{public}s]:%i Error : Failed to get power assertion.", v26, v25, v52, 139);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = object_getClass(self);
      if (class_isMetaClass(v28))
      {
        v29 = 43;
      }

      else
      {
        v29 = 45;
      }

      v30 = object_getClassName(self);
      v31 = sel_getName(a2);
      *buf = 67109890;
      v57 = v29;
      v58 = 2082;
      v59 = v30;
      v60 = 2082;
      v61 = v31;
      v62 = 1024;
      v63 = 139;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error : Failed to get power assertion.", buf, 0x22u);
    }

    v32 = [NSError alloc];
    selfCopy = [NSString stringWithUTF8String:"nfcd"];
    v66 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Unavailable - System Will Sleep"];
    v67 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    v35 = v32;
    v36 = selfCopy;
    v37 = 72;
  }

  v20 = [v35 initWithDomain:v36 code:v37 userInfo:v34];

LABEL_34:

  return v20;
}

- (void)didStartSession:(id)session
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  connection = [(_NFACSession *)self connection];
  nF_clientName = [connection NF_clientName];

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v10 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    connection2 = [(_NFACSession *)self connection];
    processIdentifier = [connection2 processIdentifier];
    v16 = 43;
    if (!isMetaClass)
    {
      v16 = 45;
    }

    v10(6, "%c[%{public}s %{public}s]:%i %{public}@ (%d) started %{public}@", v16, ClassName, Name, 161, nF_clientName, processIdentifier, v6);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v17 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = object_getClass(self);
    if (class_isMetaClass(v18))
    {
      v19 = 43;
    }

    else
    {
      v19 = 45;
    }

    v20 = object_getClassName(self);
    v21 = sel_getName(a2);
    connection3 = [(_NFACSession *)self connection];
    *buf = 67110658;
    v25 = v19;
    v26 = 2082;
    v27 = v20;
    v28 = 2082;
    v29 = v21;
    v30 = 1024;
    v31 = 161;
    v32 = 2114;
    v33 = nF_clientName;
    v34 = 1024;
    processIdentifier2 = [connection3 processIdentifier];
    v36 = 2114;
    v37 = v6;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ (%d) started %{public}@", buf, 0x3Cu);
  }

  self->_didStart = 1;
}

- (void)internalEndSession:(id)session
{
  sessionCopy = session;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i ", v11, ClassName, Name, 169);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(self);
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    *buf = 67109890;
    v41 = v14;
    v42 = 2082;
    v43 = object_getClassName(self);
    v44 = 2082;
    v45 = sel_getName(a2);
    v46 = 1024;
    v47 = 169;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  didEnd = selfCopy->_didEnd;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v17 = NFLogGetLogger();
  v18 = v17;
  if (didEnd)
  {
    if (v17)
    {
      v19 = object_getClass(selfCopy);
      v20 = class_isMetaClass(v19);
      v21 = object_getClassName(selfCopy);
      v38 = sel_getName(a2);
      v22 = 45;
      if (v20)
      {
        v22 = 43;
      }

      v18(6, "%c[%{public}s %{public}s]:%i Already ended", v22, v21, v38, 172);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    queue = NFSharedLogGetLogger();
    if (os_log_type_enabled(queue, OS_LOG_TYPE_DEFAULT))
    {
      v24 = object_getClass(selfCopy);
      if (class_isMetaClass(v24))
      {
        v25 = 43;
      }

      else
      {
        v25 = 45;
      }

      v26 = object_getClassName(selfCopy);
      v27 = sel_getName(a2);
      *buf = 67109890;
      v41 = v25;
      v42 = 2082;
      v43 = v26;
      v44 = 2082;
      v45 = v27;
      v46 = 1024;
      v47 = 172;
      _os_log_impl(&_mh_execute_header, queue, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Already ended", buf, 0x22u);
    }
  }

  else
  {
    if (v17)
    {
      v28 = object_getClass(selfCopy);
      v29 = class_isMetaClass(v28);
      v30 = object_getClassName(selfCopy);
      v39 = sel_getName(a2);
      v31 = 45;
      if (v29)
      {
        v31 = 43;
      }

      v18(6, "%c[%{public}s %{public}s]:%i ", v31, v30, v39, 174);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v32 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = object_getClass(selfCopy);
      if (class_isMetaClass(v33))
      {
        v34 = 43;
      }

      else
      {
        v34 = 45;
      }

      v35 = object_getClassName(selfCopy);
      v36 = sel_getName(a2);
      *buf = 67109890;
      v41 = v34;
      v42 = 2082;
      v43 = v35;
      v44 = 2082;
      v45 = v36;
      v46 = 1024;
      v47 = 174;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    queue = [(_NFACSession *)selfCopy queue];
    [queue dequeueSession:selfCopy];
  }

  objc_sync_exit(selfCopy);
  if (sessionCopy)
  {
    sessionCopy[2](sessionCopy);
  }
}

- (void)endSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  didEnd = selfCopy->_didEnd;
  if (didEnd)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(selfCopy);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(selfCopy);
      Name = sel_getName(a2);
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v9(6, "%c[%{public}s %{public}s]:%i Already ended", v13, ClassName, Name, 185);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = object_getClass(selfCopy);
      if (class_isMetaClass(v15))
      {
        v16 = 43;
      }

      else
      {
        v16 = 45;
      }

      *buf = 67109890;
      v23 = v16;
      v24 = 2082;
      v25 = object_getClassName(selfCopy);
      v26 = 2082;
      v27 = sel_getName(a2);
      v28 = 1024;
      v29 = 185;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Already ended", buf, 0x22u);
    }
  }

  else
  {
    selfCopy->_isEnding = 1;
    workQueue = [(_NFACSession *)selfCopy workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100157348;
    block[3] = &unk_100316050;
    block[4] = selfCopy;
    v21 = a2;
    v20 = sessionCopy;
    dispatch_async(workQueue, block);
  }

  objc_sync_exit(selfCopy);

  if (sessionCopy && didEnd)
  {
    sessionCopy[2](sessionCopy);
  }
}

@end