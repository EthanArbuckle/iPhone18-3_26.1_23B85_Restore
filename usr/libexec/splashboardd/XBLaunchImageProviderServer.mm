@interface XBLaunchImageProviderServer
+ (id)sharedInstance;
- (XBLaunchImageProviderServer)init;
- (id)_transactionWorkForClient:(id)client;
- (unsigned)_onMain_createLaunchWindowForClient:(id)client withLaunchRequest:(id)request appInfo:(id)info captureInfo:(id *)captureInfo captureOptions:(int64_t)options error:(id *)error;
- (void)_queue_handleGetLaunchImage:(id)image forClient:(id)client;
- (void)_removeTransactionWorkForClient:(id)client;
- (void)_setTransactionWork:(id)work forClient:(id)client;
- (void)queue_clientAdded:(id)added;
- (void)queue_clientRemoved:(id)removed;
- (void)queue_handleMessage:(id)message client:(id)client;
- (void)run;
@end

@implementation XBLaunchImageProviderServer

+ (id)sharedInstance
{
  if (qword_100011438 != -1)
  {
    sub_100005F84();
  }

  v3 = qword_100011430;

  return v3;
}

- (XBLaunchImageProviderServer)init
{
  v8.receiver = self;
  v8.super_class = XBLaunchImageProviderServer;
  v2 = [(XBLaunchImageProviderServer *)&v8 initWithServiceName:XBApplicationLaunchImageServiceName];
  if (v2)
  {
    v3 = objc_alloc_init(_XBMemoryMonitor);
    memoryMonitor = v2->_memoryMonitor;
    v2->_memoryMonitor = v3;

    v2->_accessLock._os_unfair_lock_opaque = 0;
    v5 = +[NSMapTable strongToStrongObjectsMapTable];
    accessLock_clientTransactionWorkMap = v2->_accessLock_clientTransactionWorkMap;
    v2->_accessLock_clientTransactionWorkMap = v5;
  }

  return v2;
}

- (void)run
{
  v3 = sub_100001248();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Running", buf, 2u);
  }

  if (qword_100011440 != -1)
  {
    sub_100005F98();
  }

  queue = [(XBLaunchImageProviderServer *)self queue];
  dispatch_async(queue, &stru_10000C708);

  v5.receiver = self;
  v5.super_class = XBLaunchImageProviderServer;
  [(XBLaunchImageProviderServer *)&v5 run];
}

- (void)queue_handleMessage:(id)message client:(id)client
{
  xdict = message;
  clientCopy = client;
  int64 = xpc_dictionary_get_int64(xdict, XBLaunchImageProviderMessageKeyMessageType);
  if (int64 == 1)
  {
    [(XBLaunchImageProviderServer *)self _handlePreheat:xdict forClient:clientCopy];
  }

  else if (!int64)
  {
    [(XBLaunchImageProviderServer *)self _queue_handleGetLaunchImage:xdict forClient:clientCopy];
  }
}

- (void)queue_clientAdded:(id)added
{
  addedCopy = added;
  v5 = objc_alloc_init(XBLaunchImageClientTransactionWork);
  [(XBLaunchImageProviderServer *)self _setTransactionWork:v5 forClient:addedCopy];
}

- (void)queue_clientRemoved:(id)removed
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000045AC;
  block[3] = &unk_10000C758;
  block[4] = self;
  removedCopy = removed;
  v8 = dispatch_semaphore_create(0);
  v4 = v8;
  v5 = removedCopy;
  dispatch_async(&_dispatch_main_q, block);
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  [(XBLaunchImageProviderServer *)self _removeTransactionWorkForClient:v5];
}

- (void)_queue_handleGetLaunchImage:(id)image forClient:(id)client
{
  imageCopy = image;
  clientCopy = client;
  dispatch_assert_queue_V2(*&self->BSBaseXPCServer_opaque[OBJC_IVAR___BSBaseXPCServer__queue]);
  xdict = imageCopy;
  v8 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
  v34 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
  LODWORD(v9) = xpc_dictionary_get_BOOL(imageCopy, XBLaunchImageProviderMessageKeyCreateCaptureInfo);
  connection = [clientCopy connection];
  BSPIDForXPCConnection();
  v11 = BSProcessDescriptionForPID();

  v12 = sub_1000012D0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [v8 bundleIdentifier];
    *buf = 138543618;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Running image request from %{public}@ for %@", buf, 0x16u);
  }

  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x2020000000;
  v51 = XBInvalidContextId;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v54 = sub_100004D5C;
  v55 = sub_100004D6C;
  v56 = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3032000000;
  v48[3] = sub_100004D5C;
  v48[4] = sub_100004D6C;
  v49 = 0;
  connection2 = [clientCopy connection];
  v15 = [BSAuditToken tokenFromXPCConnection:connection2];

  if ([v15 hasEntitlement:XBApplicationLaunchImageCaptureEntitlement])
  {
    goto LABEL_8;
  }

  if (v15)
  {
    [v15 realToken];
  }

  else
  {
    memset(v52, 0, sizeof(v52));
  }

  if (BSAuditTokenRepresentsPlatformBinary())
  {
LABEL_8:
    v16 = v9;
    if (v9)
    {
      LOBYTE(v9) = [v15 hasEntitlement:XBApplicationLaunchImageCaarCaptureEntitlement];
    }

    *v52 = 0;
    *&v52[8] = 0;
    pthread_dependency_init_np();
    Main = CFRunLoopGetMain();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004D74;
    block[3] = &unk_10000C780;
    v46 = v16;
    v47 = v9;
    v42 = v50;
    block[4] = self;
    v39 = clientCopy;
    v40 = v34;
    v9 = v8;
    v41 = v9;
    v43 = v48;
    v44 = buf;
    v45 = v52;
    CFRunLoopPerformBlock(Main, kCFRunLoopCommonModes, block);
    v18 = CFRunLoopGetMain();
    CFRunLoopWakeUp(v18);
    pthread_dependency_wait_np();
    memoryMonitor = self->_memoryMonitor;
    bundleIdentifier2 = [v9 bundleIdentifier];
    [(_XBMemoryMonitor *)memoryMonitor recordMemoryForBundleID:bundleIdentifier2];

    LOBYTE(v9) = v16;
  }

  else
  {
    v21 = sub_1000012D0();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10000604C(v11, v21);
    }

    v22 = [XBLaunchImageError alloc];
    bundleIdentifier3 = [v8 bundleIdentifier];
    v24 = [v22 initWithCode:10 bundleID:bundleIdentifier3 reason:@"The client is unentitled" fatal:0];
    v25 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v24;
  }

  v26 = [BSXPCReply replyForMessage:xdict];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100004E40;
  v36[3] = &unk_10000C7A8;
  v36[4] = v50;
  v36[5] = buf;
  v37 = v9;
  v36[6] = v48;
  [v26 sendReply:v36];
  v27 = *(*&buf[8] + 40);
  if (v27)
  {
    if ([v27 isFatal])
    {
      v31 = sub_1000012D0();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        code = [*(*&buf[8] + 40) code];
        bundleIdentifier4 = [v8 bundleIdentifier];
        *v52 = 134218242;
        *&v52[4] = code;
        *&v52[12] = 2114;
        *&v52[14] = bundleIdentifier4;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "XBLaunchImageProviderServer encountered a fatal error with code: %ld during launch image generation for bundleID: %{public}@", v52, 0x16u);
      }

      exit(0);
    }

    v28 = sub_1000012D0();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      code2 = [*(*&buf[8] + 40) code];
      bundleIdentifier5 = [v8 bundleIdentifier];
      *v52 = 134218242;
      *&v52[4] = code2;
      *&v52[12] = 2114;
      *&v52[14] = bundleIdentifier5;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "XBLaunchImageProviderServer encountered an error with code: %ld during launch image generation for bundleID: %{public}@", v52, 0x16u);
    }
  }

  _Block_object_dispose(v48, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v50, 8);
}

- (unsigned)_onMain_createLaunchWindowForClient:(id)client withLaunchRequest:(id)request appInfo:(id)info captureInfo:(id *)captureInfo captureOptions:(int64_t)options error:(id *)error
{
  requestCopy = request;
  infoCopy = info;
  clientCopy = client;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v17 = sub_1000012D0();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v32 = 67109376;
    *v33 = qos_class_self();
    *&v33[4] = 1024;
    *&v33[6] = BSPthreadGetCurrentPriority();
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Running on main thread at QoS %d with priority %d.", &v32, 0xEu);
  }

  v18 = +[NSDate date];
  v19 = [(XBLaunchImageProviderServer *)self _transactionWorkForClient:clientCopy];

  contextWrapper = [v19 contextWrapper];
  if (!contextWrapper)
  {
    v21 = [XBLaunchImageContextWrapper contextWrapperForApplicationWithCompatibilityInfo:infoCopy launchRequest:requestCopy captureOptions:options];
    [v19 setContextWrapper:v21];
    if (!captureInfo)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v21 = contextWrapper;
  [contextWrapper updateLaunchRequest:requestCopy];
  if (captureInfo)
  {
LABEL_5:
    *captureInfo = [v21 captureInformation];
  }

LABEL_6:
  contextID = XBInvalidContextId;
  error = [v21 error];
  if (error || (v27 = [v21 contextID]) == 0 || contextID == v27)
  {
    [v21 invalidate];
    [v19 setContextWrapper:0];
    v24 = sub_1000012D0();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = [infoCopy bundleIdentifier];
      v32 = 138412546;
      *v33 = bundleIdentifier;
      *&v33[8] = 2112;
      v34 = *&error;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%@] launch image generation failed with error: %@", &v32, 0x16u);
    }

    if (error && error)
    {
      v26 = error;
      *error = error;
    }
  }

  else
  {
    contextID = [v21 contextID];
    v28 = sub_1000012D0();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier2 = [infoCopy bundleIdentifier];
      [v18 timeIntervalSinceNow];
      v32 = 138412546;
      *v33 = bundleIdentifier2;
      *&v33[8] = 2048;
      v34 = -v30;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%@] launch image generation completed after %.3fs", &v32, 0x16u);
    }
  }

  return contextID;
}

- (id)_transactionWorkForClient:(id)client
{
  clientCopy = client;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(NSMapTable *)self->_accessLock_clientTransactionWorkMap objectForKey:clientCopy];

  os_unfair_lock_unlock(&self->_accessLock);

  return v5;
}

- (void)_setTransactionWork:(id)work forClient:(id)client
{
  clientCopy = client;
  workCopy = work;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMapTable *)self->_accessLock_clientTransactionWorkMap setObject:workCopy forKey:clientCopy];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)_removeTransactionWorkForClient:(id)client
{
  clientCopy = client;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMapTable *)self->_accessLock_clientTransactionWorkMap removeObjectForKey:clientCopy];

  os_unfair_lock_unlock(&self->_accessLock);
}

@end