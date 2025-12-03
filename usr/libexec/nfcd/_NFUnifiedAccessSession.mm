@interface _NFUnifiedAccessSession
+ (id)validateEntitlements:(id)entitlements;
- (BOOL)isUnifiedAccessForHome:(id)home;
- (BOOL)suspendWithInfo:(id)info;
- (BOOL)willStartSession;
- (_NFUnifiedAccessSession)initWithRemoteObject:(id)object driverWrapper:(id)wrapper workQueue:(id)queue;
- (void)_invalidateStepupController;
- (void)cleanup;
- (void)didStartSession:(id)session;
- (void)endSession:(id)session;
- (void)handleHostCardReaderDetected:(id)detected;
- (void)startSTSNotificationListenerEndpoint:(id)endpoint;
- (void)waitForSafeTransactionCompletion;
@end

@implementation _NFUnifiedAccessSession

- (_NFUnifiedAccessSession)initWithRemoteObject:(id)object driverWrapper:(id)wrapper workQueue:(id)queue
{
  wrapperCopy = wrapper;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  queueCopy = queue;
  objectCopy = object;
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v14 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v18 = 45;
    if (isMetaClass)
    {
      v18 = 43;
    }

    v14(6, "%c[%{public}s %{public}s]:%i ", v18, ClassName, Name, 34);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v19 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = object_getClass(self);
    if (class_isMetaClass(v20))
    {
      v21 = 43;
    }

    else
    {
      v21 = 45;
    }

    *buf = 67109890;
    v27 = v21;
    v28 = 2082;
    v29 = object_getClassName(self);
    v30 = 2082;
    v31 = sel_getName(a2);
    v32 = 1024;
    v33 = 34;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v25.receiver = self;
  v25.super_class = _NFUnifiedAccessSession;
  v22 = [(_NFContactlessPaymentSession *)&v25 initWithRemoteObject:objectCopy workQueue:queueCopy allowsBackgroundMode:0 hostCardEmulationSupport:1];

  if (v22)
  {
    objc_storeStrong((v22 + 388), wrapper);
  }

  return v22;
}

- (BOOL)willStartSession
{
  v3 = [NFStepUpController alloc];
  workQueue = [(_NFSession *)self workQueue];
  v5 = *(&self->super._transactionState + 1);
  expressModeManager = [(_NFXPCSession *)self expressModeManager];
  v7 = [(NFStepUpController *)v3 initWithQueue:workQueue driverWrapper:v5 expressModeManager:expressModeManager];
  v8 = *(&self->_driverWrapper + 4);
  *(&self->_driverWrapper + 4) = v7;

  v10.receiver = self;
  v10.super_class = _NFUnifiedAccessSession;
  return [(_NFContactlessSession *)&v10 willStartSession];
}

- (void)startSTSNotificationListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (![(_NFSession *)self didStart]|| [(_NFSession *)self isSuspended]|| [(_NFSession *)self didEnd])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      sessionUID = [(_NFSession *)self sessionUID];
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v13, ClassName, Name, 58, sessionUID);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = object_getClass(self);
      if (class_isMetaClass(v15))
      {
        v16 = 43;
      }

      else
      {
        v16 = 45;
      }

      v17 = object_getClassName(self);
      v18 = sel_getName(a2);
      sessionUID2 = [(_NFSession *)self sessionUID];
      *buf = 67110146;
      v22 = v16;
      v23 = 2082;
      v24 = v17;
      v25 = 2082;
      v26 = v18;
      v27 = 1024;
      v28 = 58;
      v29 = 2114;
      v30 = sessionUID2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }
  }

  else
  {
    v20 = [*(&self->_driverWrapper + 4) connectToNotificationListener:endpointCopy];
  }
}

- (void)handleHostCardReaderDetected:(id)detected
{
  detectedCopy = detected;
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

    v7(6, "%c[%{public}s %{public}s]:%i ", v11, ClassName, Name, 80);
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
    v22 = v14;
    v23 = 2082;
    v24 = object_getClassName(self);
    v25 = 2082;
    v26 = sel_getName(a2);
    v27 = 1024;
    v28 = 80;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  workQueue = [(_NFSession *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100218DB8;
  block[3] = &unk_100315F80;
  block[4] = self;
  v19 = detectedCopy;
  v20 = a2;
  v16 = detectedCopy;
  dispatch_async(workQueue, block);
}

+ (id)validateEntitlements:(id)entitlements
{
  entitlementsCopy = entitlements;
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

    v7(6, "%c[%{public}s %{public}s]:%i ", v11, ClassName, Name, 132);
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
    v39 = v14;
    v40 = 2082;
    v41 = object_getClassName(self);
    v42 = 2082;
    v43 = sel_getName(a2);
    v44 = 1024;
    v45 = 132;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  if ([entitlementsCopy seSessionAccess] && (objc_msgSend(entitlementsCopy, "hceAccess") & 1) != 0)
  {
    v15 = 0;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v17 = v16;
      v18 = object_getClass(self);
      v19 = class_isMetaClass(v18);
      v20 = object_getClassName(self);
      v35 = sel_getName(a2);
      v21 = 45;
      if (v19)
      {
        v21 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring card and SE access", v21, v20, v35, 134);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = object_getClass(self);
      if (class_isMetaClass(v23))
      {
        v24 = 43;
      }

      else
      {
        v24 = 45;
      }

      v25 = object_getClassName(self);
      v26 = sel_getName(a2);
      *buf = 67109890;
      v39 = v24;
      v40 = 2082;
      v41 = v25;
      v42 = 2082;
      v43 = v26;
      v44 = 1024;
      v45 = 134;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring card and SE access", buf, 0x22u);
    }

    v27 = [NSError alloc];
    v28 = [NSString stringWithUTF8String:"nfcd"];
    v36[0] = NSLocalizedDescriptionKey;
    v29 = [NSString stringWithUTF8String:"Not entitled"];
    v37[0] = v29;
    v37[1] = &off_100336078;
    v36[1] = @"Line";
    v36[2] = @"Method";
    v30 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v37[2] = v30;
    v36[3] = NSDebugDescriptionErrorKey;
    v31 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 135];
    v37[3] = v31;
    v32 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:4];
    v15 = [v27 initWithDomain:v28 code:32 userInfo:v32];
  }

  return v15;
}

- (void)cleanup
{
  v3 = NFSharedSignpostLog();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "cleanup", "_NFUnifiedAccessSession", buf, 2u);
  }

  if ([(_NFSession *)self needsCleanup])
  {
    [(_NFUnifiedAccessSession *)self _invalidateStepupController];
  }

  v5.receiver = self;
  v5.super_class = _NFUnifiedAccessSession;
  [(_NFContactlessPaymentSession *)&v5 cleanup];
  v4 = NFSharedSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "cleanup", "_NFUnifiedAccessSession", buf, 2u);
  }
}

- (BOOL)suspendWithInfo:(id)info
{
  v6.receiver = self;
  v6.super_class = _NFUnifiedAccessSession;
  v4 = [(_NFContactlessPaymentSession *)&v6 suspendWithInfo:info];
  if (v4 && [(_NFSession *)self needsCleanup])
  {
    [(_NFUnifiedAccessSession *)self _invalidateStepupController];
  }

  return v4;
}

- (void)_invalidateStepupController
{
  [*(&self->_driverWrapper + 4) invalidate];
  v3 = *(&self->_driverWrapper + 4);
  *(&self->_driverWrapper + 4) = 0;
}

- (void)endSession:(id)session
{
  sessionCopy = session;
  [(_NFUnifiedAccessSession *)self _invalidateStepupController];
  v5.receiver = self;
  v5.super_class = _NFUnifiedAccessSession;
  [(_NFXPCSession *)&v5 endSession:sessionCopy];
}

- (void)didStartSession:(id)session
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

    v7(6, "%c[%{public}s %{public}s]:%i ", v11, ClassName, Name, 178);
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
    v44 = v14;
    v45 = 2082;
    v46 = object_getClassName(self);
    v47 = 2082;
    v48 = sel_getName(a2);
    v49 = 1024;
    v50 = 178;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v42.receiver = self;
  v42.super_class = _NFUnifiedAccessSession;
  [(_NFContactlessPaymentSession *)&v42 didStartSession:sessionCopy];
  if (sessionCopy)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFLogGetLogger();
    if (v15)
    {
      v16 = v15;
      v17 = object_getClass(self);
      v18 = class_isMetaClass(v17);
      v37 = object_getClassName(self);
      v40 = sel_getName(a2);
      v19 = 45;
      if (v18)
      {
        v19 = 43;
      }

      v16(3, "%c[%{public}s %{public}s]:%i error: %{public}@", v19, v37, v40, 181, sessionCopy);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = object_getClass(self);
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      v23 = object_getClassName(self);
      v24 = sel_getName(a2);
      *buf = 67110146;
      v44 = v22;
      v45 = 2082;
      v46 = v23;
      v47 = 2082;
      v48 = v24;
      v49 = 1024;
      v50 = 181;
      v51 = 2114;
      v52 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i error: %{public}@", buf, 0x2Cu);
    }

    remoteObject = [(_NFXPCSession *)self remoteObject];
    [remoteObject didStartSession:sessionCopy];
  }

  else
  {
    remoteObject = [*(&self->_driverWrapper + 4) startISO18013WithConnectionHandoverConfiguration];
    if (remoteObject)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v26 = NFLogGetLogger();
      if (v26)
      {
        v27 = v26;
        v28 = object_getClass(self);
        v29 = class_isMetaClass(v28);
        v38 = object_getClassName(self);
        v41 = sel_getName(a2);
        v30 = 45;
        if (v29)
        {
          v30 = 43;
        }

        v27(3, "%c[%{public}s %{public}s]:%i Reader start error: %{public}@", v30, v38, v41, 187, remoteObject);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = object_getClass(self);
        if (class_isMetaClass(v32))
        {
          v33 = 43;
        }

        else
        {
          v33 = 45;
        }

        v34 = object_getClassName(self);
        v35 = sel_getName(a2);
        *buf = 67110146;
        v44 = v33;
        v45 = 2082;
        v46 = v34;
        v47 = 2082;
        v48 = v35;
        v49 = 1024;
        v50 = 187;
        v51 = 2114;
        v52 = remoteObject;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Reader start error: %{public}@", buf, 0x2Cu);
      }
    }

    remoteObject2 = [(_NFXPCSession *)self remoteObject];
    [remoteObject2 didStartSession:remoteObject];
  }
}

- (void)waitForSafeTransactionCompletion
{
  if ([(_NFContactlessPaymentSession *)self dontWaitForEOT])
  {

    usleep(0x2710u);
  }

  else
  {
    v3.receiver = self;
    v3.super_class = _NFUnifiedAccessSession;
    [(_NFContactlessPaymentSession *)&v3 waitForSafeTransactionCompletion];
  }
}

- (BOOL)isUnifiedAccessForHome:(id)home
{
  homeCopy = home;
  expressModeManager = [(_NFXPCSession *)self expressModeManager];
  v6 = sub_100032938(expressModeManager, homeCopy);

  if ([homeCopy NF_isPrefixOfHexEncodedEqualToBytes:&unk_100297BFA length:7])
  {
    v7 = 1;
  }

  else if ([homeCopy NF_isPrefixOfHexEncodedEqualToBytes:&unk_100297C01 length:9])
  {
    v8 = [v6 objectForKeyedSubscript:@"ECP2Info"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [v6 objectForKeyedSubscript:@"ECP2Info"];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 objectForKeyedSubscript:@"TCIs"];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v22 + 1) + 8 * i);
          v19 = [NSData alloc];
          v20 = [v19 initWithBytes:&unk_100297C0A length:{3, v22}];
          LOBYTE(v18) = [v18 isEqual:v20];

          if (v18)
          {
            v7 = 1;
            goto LABEL_21;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
LABEL_21:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end