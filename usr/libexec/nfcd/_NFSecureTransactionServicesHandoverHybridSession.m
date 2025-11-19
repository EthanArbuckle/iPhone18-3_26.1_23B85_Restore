@interface _NFSecureTransactionServicesHandoverHybridSession
+ (id)validateEntitlements:(id)a3;
- (BOOL)willStartSession;
- (_NFSecureTransactionServicesHandoverHybridSession)initWithRemoteObject:(id)a3 role:(unint64_t)a4 type:(unint64_t)a5 driverWrapper:(id)a6 workQueue:(id)a7;
- (id)_asynchronousRemoteProxyWithErrorHandler:(id)a3;
- (id)_synchronousRemoteProxyWithErrorHandler:(id)a3;
- (id)createCHSelectErrorMessage;
- (unint64_t)getCHConfig;
- (unint64_t)getSTSHelperOperation;
- (void)_startSEProxyListener;
- (void)_startTNEPDeviceWithServices:(id)a3 optionalRecords:(id)a4 callback:(id)a5;
- (void)_startTNEPReaderWithCallback:(id)a3;
- (void)cleanup;
- (void)coreDuetActivityRevoked;
- (void)didStartSession:(id)a3;
- (void)enablePlasticCardMode:(BOOL)a3 completion:(id)a4;
- (void)endSession:(id)a3;
- (void)getAppletsWithCompletion:(id)a3;
- (void)getFelicaAppletState:(id)a3 completion:(id)a4;
- (void)getTransitAppletState:(id)a3 completion:(id)a4;
- (void)handleFieldNotification:(id)a3;
- (void)handleHostCardReaderDetected:(id)a3;
- (void)handleReaderBurnoutCleared;
- (void)handleReaderBurnoutTimer;
- (void)handleRemoteTagsDetected:(id)a3;
- (void)iso18013DataRetrievalCompleted;
- (void)relinquishSEProxy;
- (void)reqlinquishNFCReaderProxy;
- (void)restartNFCReaderDiscovery;
- (void)startDeferredCardEmulationWithAuthorization:(id)a3 completion:(id)a4;
- (void)startExpressModeWithCompletion:(id)a3;
- (void)startHCEProcessingWithDevice:(id)a3 completion:(id)a4;
- (void)startHostCardEmulationWithCompletion:(id)a3;
- (void)startSTSNotificationListenerEndpoint:(id)a3;
- (void)startTNEPDeviceWithServices:(id)a3 optionalRecords:(id)a4 callback:(id)a5;
- (void)startTNEPReaderWithCallback:(id)a3;
- (void)staticReaderEngagementDiscovered:(id)a3;
- (void)tnepReaderDeselectWithCallback:(id)a3;
- (void)tnepReaderRestartPollingWithCallback:(id)a3;
- (void)tnepReaderSelectService:(id)a3 callback:(id)a4;
- (void)tnepReaderSend:(id)a3 callback:(id)a4;
- (void)tnepReaderServicesAborted:(id)a3;
- (void)tnepReaderServicesDiscovered:(id)a3;
- (void)tnepServiceInvalidate;
- (void)tnepTagDeviceDeselected:(id)a3;
- (void)tnepTagDeviceNDEFMessageReceived:(id)a3;
- (void)tnepTagDeviceReaderDetected;
- (void)tnepTagDeviceSelected:(id)a3 respondHandler:(id)a4;
- (void)tnepTagDeviceSendNDEFMessage:(id)a3 callback:(id)a4;
@end

@implementation _NFSecureTransactionServicesHandoverHybridSession

- (_NFSecureTransactionServicesHandoverHybridSession)initWithRemoteObject:(id)a3 role:(unint64_t)a4 type:(unint64_t)a5 driverWrapper:(id)a6 workQueue:(id)a7
{
  v13 = a6;
  v18.receiver = self;
  v18.super_class = _NFSecureTransactionServicesHandoverHybridSession;
  v14 = [(_NFXPCSession *)&v18 initWithRemoteObject:a3 workQueue:a7 allowsBackgroundMode:1];
  v15 = v14;
  if (v14)
  {
    *(v14 + 388) = a4;
    *(v14 + 396) = a5;
    v16 = *(v14 + 412);
    *(v14 + 412) = 0;

    objc_storeStrong((v15 + 404), a6);
  }

  return v15;
}

- (BOOL)willStartSession
{
  v3 = objc_opt_new();
  [(_NFSecureTransactionServicesHandoverHybridSession *)self setStsHelper:v3];

  v5.receiver = self;
  v5.super_class = _NFSecureTransactionServicesHandoverHybridSession;
  return [(_NFContactlessSession *)&v5 willStartSession];
}

- (void)endSession:(id)a3
{
  v4 = a3;
  v5 = [(_NFSecureTransactionServicesHandoverHybridSession *)self stsHelper];
  [v5 invalidate];

  [(_NFSecureTransactionServicesHandoverHybridSession *)self setStsHelper:0];
  v6.receiver = self;
  v6.super_class = _NFSecureTransactionServicesHandoverHybridSession;
  [(_NFXPCSession *)&v6 endSession:v4];
}

- (void)startSTSNotificationListenerEndpoint:(id)a3
{
  v5 = a3;
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
      v12 = [(_NFSession *)self sessionUID];
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v13, ClassName, Name, 98, v12);
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
      v19 = [(_NFSession *)self sessionUID];
      *buf = 67110146;
      v32 = v16;
      v33 = 2082;
      v34 = v17;
      v35 = 2082;
      v36 = v18;
      v37 = 1024;
      v38 = 98;
      v39 = 2114;
      v40 = v19;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFLogGetLogger();
    if (v20)
    {
      v21 = v20;
      v22 = object_getClass(self);
      v23 = class_isMetaClass(v22);
      v24 = object_getClassName(self);
      v30 = sel_getName(a2);
      v25 = 45;
      if (v23)
      {
        v25 = 43;
      }

      v21(6, "%c[%{public}s %{public}s]:%i ", v25, v24, v30, 101);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = object_getClass(self);
      if (class_isMetaClass(v27))
      {
        v28 = 43;
      }

      else
      {
        v28 = 45;
      }

      *buf = 67109890;
      v32 = v28;
      v33 = 2082;
      v34 = object_getClassName(self);
      v35 = 2082;
      v36 = sel_getName(a2);
      v37 = 1024;
      v38 = 101;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    v14 = [(_NFSecureTransactionServicesHandoverHybridSession *)self stsHelper];
    v29 = [v14 connectToNotificationListener:v5];
  }
}

- (void)getAppletsWithCompletion:(id)a3
{
  v3.receiver = self;
  v3.super_class = _NFSecureTransactionServicesHandoverHybridSession;
  [(_NFContactlessPaymentSession *)&v3 getAppletsWithCompletion:a3];
}

- (void)startDeferredCardEmulationWithAuthorization:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [NSError alloc];
  v8 = [NSString stringWithUTF8String:"nfcd"];
  v14[0] = NSLocalizedDescriptionKey;
  v9 = [NSString stringWithUTF8String:"Feature Not Supported"];
  v15[0] = v9;
  v15[1] = &off_1003368B8;
  v14[1] = @"Line";
  v14[2] = @"Method";
  v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
  v15[2] = v10;
  v14[3] = NSDebugDescriptionErrorKey;
  v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 118];
  v15[3] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
  v13 = [v7 initWithDomain:v8 code:14 userInfo:v12];
  (*(a4 + 2))(v6, v13);
}

- (void)startHostCardEmulationWithCompletion:(id)a3
{
  v5 = a3;
  v6 = [NSError alloc];
  v7 = [NSString stringWithUTF8String:"nfcd"];
  v13[0] = NSLocalizedDescriptionKey;
  v8 = [NSString stringWithUTF8String:"Feature Not Supported"];
  v14[0] = v8;
  v14[1] = &off_1003368D0;
  v13[1] = @"Line";
  v13[2] = @"Method";
  v9 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
  v14[2] = v9;
  v13[3] = NSDebugDescriptionErrorKey;
  v10 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 124];
  v14[3] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];
  v12 = [v6 initWithDomain:v7 code:14 userInfo:v11];
  (*(a3 + 2))(v5, v12);
}

- (void)getFelicaAppletState:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [NSError alloc];
  v8 = [NSString stringWithUTF8String:"nfcd"];
  v14[0] = NSLocalizedDescriptionKey;
  v9 = [NSString stringWithUTF8String:"Feature Not Supported"];
  v15[0] = v9;
  v15[1] = &off_1003368E8;
  v14[1] = @"Line";
  v14[2] = @"Method";
  v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
  v15[2] = v10;
  v14[3] = NSDebugDescriptionErrorKey;
  v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 130];
  v15[3] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
  v13 = [v7 initWithDomain:v8 code:14 userInfo:v12];
  (*(a4 + 2))(v6, 0, v13);
}

- (void)getTransitAppletState:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [NSError alloc];
  v8 = [NSString stringWithUTF8String:"nfcd"];
  v14[0] = NSLocalizedDescriptionKey;
  v9 = [NSString stringWithUTF8String:"Feature Not Supported"];
  v15[0] = v9;
  v15[1] = &off_100336900;
  v14[1] = @"Line";
  v14[2] = @"Method";
  v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
  v15[2] = v10;
  v14[3] = NSDebugDescriptionErrorKey;
  v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 136];
  v15[3] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
  v13 = [v7 initWithDomain:v8 code:14 userInfo:v12];
  (*(a4 + 2))(v6, 0, v13);
}

- (void)enablePlasticCardMode:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [NSError alloc];
  v8 = [NSString stringWithUTF8String:"nfcd"];
  v14[0] = NSLocalizedDescriptionKey;
  v9 = [NSString stringWithUTF8String:"Feature Not Supported"];
  v15[0] = v9;
  v15[1] = &off_100336918;
  v14[1] = @"Line";
  v14[2] = @"Method";
  v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
  v15[2] = v10;
  v14[3] = NSDebugDescriptionErrorKey;
  v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 142];
  v15[3] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
  v13 = [v7 initWithDomain:v8 code:14 userInfo:v12];
  (*(a4 + 2))(v6, v13);
}

- (void)startExpressModeWithCompletion:(id)a3
{
  v5 = a3;
  v6 = [NSError alloc];
  v7 = [NSString stringWithUTF8String:"nfcd"];
  v13[0] = NSLocalizedDescriptionKey;
  v8 = [NSString stringWithUTF8String:"Feature Not Supported"];
  v14[0] = v8;
  v14[1] = &off_100336930;
  v13[1] = @"Line";
  v13[2] = @"Method";
  v9 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
  v14[2] = v9;
  v13[3] = NSDebugDescriptionErrorKey;
  v10 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 148];
  v14[3] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];
  v12 = [v6 initWithDomain:v7 code:14 userInfo:v11];
  (*(a3 + 2))(v5, v12);
}

- (void)handleFieldNotification:(id)a3
{
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100240E88;
  v9 = &unk_1003162B8;
  v10 = self;
  v11 = a2;
  v4 = a3;
  v5 = [(_NFSecureTransactionServicesHandoverHybridSession *)self _asynchronousRemoteProxyWithErrorHandler:&v6];
  [v5 fieldNotification:{v4, v6, v7, v8, v9, v10, v11}];
}

- (void)handleHostCardReaderDetected:(id)a3
{
  v4 = a3;
  v5 = NFSharedSignpostLog();
  v6 = [(_NFSession *)self signpostId];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, v7, "ReaderDetected", &unk_1002E8B7A, v8, 2u);
    }
  }

  [(_NFSecureTransactionServicesHandoverHybridSession *)self startHCEProcessingWithDevice:v4 completion:0];
}

- (void)handleRemoteTagsDetected:(id)a3
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = *v26;
  while (2)
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v26 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v25 + 1) + 8 * i);
      v10 = [v9 tagA];
      if (v10)
      {

LABEL_13:
        v6 = v9;

        if (!v6)
        {
          goto LABEL_16;
        }

        v13 = [(_NFSecureTransactionServicesHandoverHybridSession *)self driverWrapper];
        if (v13)
        {
          v14 = v13;
          v15 = sub_100190BD0(v13, v6, 0);

          if (v15)
          {
            goto LABEL_16;
          }
        }

        v17 = NFSharedSignpostLog();
        v18 = [(_NFSession *)self signpostId];
        if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v19 = v18;
          if (os_signpost_enabled(v17))
          {
            *v24 = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_EVENT, v19, "TargetTagDetected", &unk_1002E8B7A, v24, 2u);
          }
        }

        [(_NFSecureTransactionServicesHandoverHybridSession *)self setConnectedTag:v6];
        v20 = [(_NFSecureTransactionServicesHandoverHybridSession *)self tnepHandler];
        if (v20)
        {
          v21 = v20;
          if ([(_NFSecureTransactionServicesHandoverHybridSession *)self role]== 4)
          {

LABEL_25:
            v16 = [(_NFSecureTransactionServicesHandoverHybridSession *)self tnepHandler];
            v23 = [(_NFSecureTransactionServicesHandoverHybridSession *)self connectedTag];
            sub_100264684(v16, v23);

            goto LABEL_17;
          }

          v22 = [(_NFSecureTransactionServicesHandoverHybridSession *)self role];

          if (v22 == 1)
          {
            goto LABEL_25;
          }
        }

        v12 = +[NSAssertionHandler currentHandler];
        [v12 handleFailureInMethod:a2 object:self file:@"_NFSecureTransactionServicesHandoverHybridSession.m" lineNumber:219 description:@"Tag not handle!"];
        goto LABEL_11;
      }

      v11 = [v9 tagB];

      if (v11)
      {
        goto LABEL_13;
      }
    }

    v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_10:
  v12 = v5;
LABEL_11:

LABEL_16:
  v16 = [(_NFSecureTransactionServicesHandoverHybridSession *)self driverWrapper];
  sub_10021E364(v16);
LABEL_17:
}

+ (id)validateEntitlements:(id)a3
{
  v5 = a3;
  if ([v5 seSessionAccess] && (objc_msgSend(v5, "hceAccess") & 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName(a2);
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v8(3, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring card and SE access", v12, ClassName, Name, 231);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = object_getClass(a1);
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      *buf = 67109890;
      v27 = v15;
      v28 = 2082;
      v29 = object_getClassName(a1);
      v30 = 2082;
      v31 = sel_getName(a2);
      v32 = 1024;
      v33 = 231;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring card and SE access", buf, 0x22u);
    }

    v16 = [NSError alloc];
    v17 = [NSString stringWithUTF8String:"nfcd"];
    v24[0] = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithUTF8String:"Not entitled"];
    v25[0] = v18;
    v25[1] = &off_100336948;
    v24[1] = @"Line";
    v24[2] = @"Method";
    v19 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v25[2] = v19;
    v24[3] = NSDebugDescriptionErrorKey;
    v20 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 232];
    v25[3] = v20;
    v21 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];
    v6 = [v16 initWithDomain:v17 code:32 userInfo:v21];
  }

  return v6;
}

- (void)cleanup
{
  v3 = NFSharedSignpostLog();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "cleanup", "_NFSecureTransactionServicesHelperSession", buf, 2u);
  }

  if ([(_NFSession *)self needsCleanup]&& ![(_NFSession *)self isSuspended])
  {
    v4 = +[_NFHardwareManager sharedHardwareManager];
    v5 = sub_10004C224(NFRoutingConfig, 0);
    v6 = [v4 setRoutingConfig:v5];

    v7 = [(_NFSecureTransactionServicesHandoverHybridSession *)self stsHelper];
    [v7 invalidate];
  }

  v9.receiver = self;
  v9.super_class = _NFSecureTransactionServicesHandoverHybridSession;
  [(_NFContactlessPaymentSession *)&v9 cleanup];
  v8 = NFSharedSignpostLog();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "cleanup", "_NFSecureTransactionServicesHelperSession", buf, 2u);
  }
}

- (void)_startSEProxyListener
{
  v4 = [NFSecureElementProxyListener alloc];
  v5 = [(_NFSecureTransactionServicesHandoverHybridSession *)self driverWrapper];
  v6 = [(NFSecureElementProxyListener *)v4 initWithDriverWrapper:v5];
  [(_NFSecureTransactionServicesHandoverHybridSession *)self setSeProxyListener:v6];

  v7 = [(_NFSecureTransactionServicesHandoverHybridSession *)self stsHelper];
  v8 = [(_NFSecureTransactionServicesHandoverHybridSession *)self seProxyListener];
  v9 = [(_NFSession *)self workQueue];
  v10 = [v7 startSEProxyListener:v8 parameters:&__NSDictionary0__struct workQueue:v9];

  if (v10)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v12 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v15 = 45;
      if (isMetaClass)
      {
        v15 = 43;
      }

      v12(3, "%c[%{public}s %{public}s]:%i SE proxy listener start error=%{public}@", v15, ClassName, Name, 263, v10);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = object_getClass(self);
      if (class_isMetaClass(v17))
      {
        v18 = 43;
      }

      else
      {
        v18 = 45;
      }

      *buf = 67110146;
      v22 = v18;
      v23 = 2082;
      v24 = object_getClassName(self);
      v25 = 2082;
      v26 = sel_getName(a2);
      v27 = 1024;
      v28 = 263;
      v29 = 2114;
      v30 = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i SE proxy listener start error=%{public}@", buf, 0x2Cu);
    }
  }
}

- (void)didStartSession:(id)a3
{
  v5 = a3;
  v124.receiver = self;
  v124.super_class = _NFSecureTransactionServicesHandoverHybridSession;
  [(_NFContactlessPaymentSession *)&v124 didStartSession:v5];
  v123[0] = _NSConcreteStackBlock;
  v123[1] = 3221225472;
  v123[2] = sub_10024291C;
  v123[3] = &unk_1003162B8;
  v123[4] = self;
  v123[5] = a2;
  v6 = objc_retainBlock(v123);
  v122[0] = _NSConcreteStackBlock;
  v122[1] = 3221225472;
  v122[2] = sub_100242CDC;
  v122[3] = &unk_100315F58;
  v122[4] = self;
  v122[5] = a2;
  v7 = objc_retainBlock(v122);
  if (v5)
  {
    (v6[2])(v6, v5);
    goto LABEL_93;
  }

  v8 = +[_NFHardwareManager sharedHardwareManager];
  v9 = [v8 secureElementWrapper];
  v10 = *(&self->_driverWrapper + 4);
  *(&self->_driverWrapper + 4) = v9;

  if ([(_NFSecureTransactionServicesHandoverHybridSession *)self role]== 1 || [(_NFSecureTransactionServicesHandoverHybridSession *)self role]== 4)
  {
    if ([(_NFSecureTransactionServicesHandoverHybridSession *)self role]== 1)
    {
      v11 = [(_NFSecureTransactionServicesHandoverHybridSession *)self getCHConfig];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v13 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v16 = 45;
        if (isMetaClass)
        {
          v16 = 43;
        }

        v13(6, "%c[%{public}s %{public}s]:%i Starting ISO18013 reader polling, hoConfig=0x%lx", v16, ClassName, Name, 298, v11);
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
        *buf = 67110146;
        *v129 = v19;
        *&v129[4] = 2082;
        *&v129[6] = v20;
        v130 = 2082;
        v131 = v21;
        v132 = 1024;
        v133 = 298;
        v134 = 2048;
        v135 = v11;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Starting ISO18013 reader polling, hoConfig=0x%lx", buf, 0x2Cu);
      }

      v22 = NFSharedSignpostLog();
      v23 = [(_NFSession *)self signpostId];
      if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v24 = v23;
        if (os_signpost_enabled(v22))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, v24, "Start_ISO18013_Reader", &unk_1002E8B7A, buf, 2u);
        }
      }

      v25 = [(_NFSecureTransactionServicesHandoverHybridSession *)self stsHelper];
      v26 = [v25 startISO18013WithConnectionHandoverConfiguration:v11 type:-[_NFSecureTransactionServicesHandoverHybridSession getSTSHelperOperation](self credentialType:"getSTSHelperOperation") delegate:{5, self}];

      v27 = NFSharedSignpostLog();
      v28 = [(_NFSession *)self signpostId];
      if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v29 = v28;
        if (os_signpost_enabled(v27))
        {
          *buf = 138412290;
          *v129 = v26;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_END, v29, "Start_ISO18013_Reader", "error=%@", buf, 0xCu);
        }
      }

      if (v26)
      {
LABEL_22:
        (v6[2])(v6, v26);
LABEL_92:

        goto LABEL_93;
      }

      v65 = NFSharedSignpostLog();
      v66 = [(_NFSession *)self signpostId];
      if (v66 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v67 = v66;
        if (os_signpost_enabled(v65))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v65, OS_SIGNPOST_INTERVAL_BEGIN, v67, "Start_SEProxyListener", &unk_1002E8B7A, buf, 2u);
        }
      }

      [(_NFSecureTransactionServicesHandoverHybridSession *)self _startSEProxyListener];
      v41 = NFSharedSignpostLog();
      v68 = [(_NFSession *)self signpostId];
      if (v68 - 1 > 0xFFFFFFFFFFFFFFFDLL || (v43 = v68, !os_signpost_enabled(v41)))
      {
LABEL_58:

        v118[0] = _NSConcreteStackBlock;
        v118[1] = 3221225472;
        v118[2] = sub_100242F04;
        v118[3] = &unk_100316548;
        v118[4] = self;
        v121 = a2;
        v119 = v6;
        v120 = v7;
        [(_NFSecureTransactionServicesHandoverHybridSession *)self _startTNEPReaderWithCallback:v118];

        goto LABEL_93;
      }

      *buf = 0;
      v44 = "Start_SEProxyListener";
      v45 = v41;
      v46 = OS_SIGNPOST_INTERVAL_END;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFLogGetLogger();
      if (v30)
      {
        v31 = v30;
        v32 = object_getClass(self);
        v33 = class_isMetaClass(v32);
        v34 = object_getClassName(self);
        v110 = sel_getName(a2);
        v35 = 45;
        if (v33)
        {
          v35 = 43;
        }

        v31(6, "%c[%{public}s %{public}s]:%i Starting TNEP reader", v35, v34, v110, 316);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v36 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = object_getClass(self);
        if (class_isMetaClass(v37))
        {
          v38 = 43;
        }

        else
        {
          v38 = 45;
        }

        v39 = object_getClassName(self);
        v40 = sel_getName(a2);
        *buf = 67109890;
        *v129 = v38;
        *&v129[4] = 2082;
        *&v129[6] = v39;
        v130 = 2082;
        v131 = v40;
        v132 = 1024;
        v133 = 316;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Starting TNEP reader", buf, 0x22u);
      }

      v41 = NFSharedSignpostLog();
      v42 = [(_NFSession *)self signpostId];
      if (v42 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_58;
      }

      v43 = v42;
      if (!os_signpost_enabled(v41))
      {
        goto LABEL_58;
      }

      *buf = 0;
      v44 = "Start_TNEP_Reader";
      v45 = v41;
      v46 = OS_SIGNPOST_EVENT;
    }

    _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, v46, v43, v44, &unk_1002E8B7A, buf, 2u);
    goto LABEL_58;
  }

  if (![(_NFSecureTransactionServicesHandoverHybridSession *)self role]|| [(_NFSecureTransactionServicesHandoverHybridSession *)self role]== 3)
  {
    v47 = [(_NFSecureTransactionServicesHandoverHybridSession *)self role];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v48 = NFLogGetLogger();
    v49 = v48;
    if (v47)
    {
      if (v48)
      {
        v50 = object_getClass(self);
        v51 = class_isMetaClass(v50);
        v52 = object_getClassName(self);
        v111 = sel_getName(a2);
        v53 = 45;
        if (v51)
        {
          v53 = 43;
        }

        v49(6, "%c[%{public}s %{public}s]:%i Starting TNEP device", v53, v52, v111, 347);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v54 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = object_getClass(self);
        if (class_isMetaClass(v55))
        {
          v56 = 43;
        }

        else
        {
          v56 = 45;
        }

        v57 = object_getClassName(self);
        v58 = sel_getName(a2);
        *buf = 67109890;
        *v129 = v56;
        *&v129[4] = 2082;
        *&v129[6] = v57;
        v130 = 2082;
        v131 = v58;
        v132 = 1024;
        v133 = 347;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Starting TNEP device", buf, 0x22u);
      }

      v59 = NFSharedSignpostLog();
      v60 = [(_NFSession *)self signpostId];
      if (v60 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_91;
      }

      v61 = v60;
      if (!os_signpost_enabled(v59))
      {
        goto LABEL_91;
      }

      *buf = 0;
      v62 = "Start_TNEP_Device";
      v63 = v59;
      v64 = OS_SIGNPOST_EVENT;
    }

    else
    {
      if (v48)
      {
        v87 = object_getClass(self);
        v88 = class_isMetaClass(v87);
        v89 = object_getClassName(self);
        v113 = sel_getName(a2);
        v90 = 45;
        if (v88)
        {
          v90 = 43;
        }

        v49(6, "%c[%{public}s %{public}s]:%i Starting ISO18013 device", v90, v89, v113, 330);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v91 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        v92 = object_getClass(self);
        if (class_isMetaClass(v92))
        {
          v93 = 43;
        }

        else
        {
          v93 = 45;
        }

        v94 = object_getClassName(self);
        v95 = sel_getName(a2);
        *buf = 67109890;
        *v129 = v93;
        *&v129[4] = 2082;
        *&v129[6] = v94;
        v130 = 2082;
        v131 = v95;
        v132 = 1024;
        v133 = 330;
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Starting ISO18013 device", buf, 0x22u);
      }

      v96 = NFSharedSignpostLog();
      v97 = [(_NFSession *)self signpostId];
      if (v97 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v98 = v97;
        if (os_signpost_enabled(v96))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v96, OS_SIGNPOST_INTERVAL_BEGIN, v98, "Start_ISO18013_Device", &unk_1002E8B7A, buf, 2u);
        }
      }

      v99 = [(_NFSecureTransactionServicesHandoverHybridSession *)self stsHelper];
      v26 = [v99 startISO18013WithConnectionHandoverConfiguration:-[_NFSecureTransactionServicesHandoverHybridSession getCHConfig](self type:"getCHConfig") credentialType:-[_NFSecureTransactionServicesHandoverHybridSession getSTSHelperOperation](self delegate:{"getSTSHelperOperation"), 5, self}];

      v100 = NFSharedSignpostLog();
      v101 = [(_NFSession *)self signpostId];
      if (v101 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v102 = v101;
        if (os_signpost_enabled(v100))
        {
          *buf = 138412290;
          *v129 = v26;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v100, OS_SIGNPOST_INTERVAL_END, v102, "Start_ISO18013_Device", "error=%@", buf, 0xCu);
        }
      }

      if (v26)
      {
        goto LABEL_22;
      }

      v103 = NFSharedSignpostLog();
      v104 = [(_NFSession *)self signpostId];
      if (v104 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v105 = v104;
        if (os_signpost_enabled(v103))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v103, OS_SIGNPOST_INTERVAL_BEGIN, v105, "Start_SEProxyListener", &unk_1002E8B7A, buf, 2u);
        }
      }

      [(_NFSecureTransactionServicesHandoverHybridSession *)self _startSEProxyListener];
      v59 = NFSharedSignpostLog();
      v106 = [(_NFSession *)self signpostId];
      if (v106 - 1 > 0xFFFFFFFFFFFFFFFDLL || (v61 = v106, !os_signpost_enabled(v59)))
      {
LABEL_91:

        v26 = [NFTNEPService serviceWithURI:@"urn:nfc:sn:handover" minWaitTime:20 maxWaitTimeExtension:31 maxMessageSize:2048];
        v127 = v26;
        v107 = [NSArray arrayWithObjects:&v127 count:1];
        v114[0] = _NSConcreteStackBlock;
        v114[1] = 3221225472;
        v114[2] = sub_10024325C;
        v114[3] = &unk_100316548;
        v114[4] = self;
        v117 = a2;
        v115 = v6;
        v116 = v7;
        [(_NFSecureTransactionServicesHandoverHybridSession *)self _startTNEPDeviceWithServices:v107 optionalRecords:0 callback:v114];

        goto LABEL_92;
      }

      *buf = 0;
      v62 = "Start_SEProxyListener";
      v63 = v59;
      v64 = OS_SIGNPOST_INTERVAL_END;
    }

    _os_signpost_emit_with_name_impl(&_mh_execute_header, v63, v64, v61, v62, &unk_1002E8B7A, buf, 2u);
    goto LABEL_91;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v69 = NFLogGetLogger();
  if (v69)
  {
    v70 = v69;
    v71 = object_getClass(self);
    v72 = class_isMetaClass(v71);
    v73 = object_getClassName(self);
    v112 = sel_getName(a2);
    v74 = 45;
    if (v72)
    {
      v74 = 43;
    }

    v70(3, "%c[%{public}s %{public}s]:%i Invalid command", v74, v73, v112, 366);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v75 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
  {
    v76 = object_getClass(self);
    if (class_isMetaClass(v76))
    {
      v77 = 43;
    }

    else
    {
      v77 = 45;
    }

    v78 = object_getClassName(self);
    v79 = sel_getName(a2);
    *buf = 67109890;
    *v129 = v77;
    *&v129[4] = 2082;
    *&v129[6] = v78;
    v130 = 2082;
    v131 = v79;
    v132 = 1024;
    v133 = 366;
    _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid command", buf, 0x22u);
  }

  v80 = [NSError alloc];
  v81 = [NSString stringWithUTF8String:"nfcd"];
  v125[0] = NSLocalizedDescriptionKey;
  v82 = [NSString stringWithUTF8String:"Invalid Command"];
  v126[0] = v82;
  v126[1] = &off_100336990;
  v125[1] = @"Line";
  v125[2] = @"Method";
  v83 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
  v126[2] = v83;
  v125[3] = NSDebugDescriptionErrorKey;
  v84 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 367];
  v126[3] = v84;
  v85 = [NSDictionary dictionaryWithObjects:v126 forKeys:v125 count:4];
  v86 = [v80 initWithDomain:v81 code:11 userInfo:v85];
  (v6[2])(v6, v86);

LABEL_93:
}

- (void)_startTNEPDeviceWithServices:(id)a3 optionalRecords:(id)a4 callback:(id)a5
{
  v9 = a3;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = a5;
  v11 = a4;
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v13 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v16 = 45;
    if (isMetaClass)
    {
      v16 = 43;
    }

    v13(6, "%c[%{public}s %{public}s]:%i services=%{public}@", v16, ClassName, Name, 382, v9);
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

    *buf = 67110146;
    v29 = v19;
    v30 = 2082;
    v31 = object_getClassName(self);
    v32 = 2082;
    v33 = sel_getName(a2);
    v34 = 1024;
    v35 = 382;
    v36 = 2114;
    v37 = v9;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i services=%{public}@", buf, 0x2Cu);
  }

  v20 = [NFTNEPHandler alloc];
  v21 = [(_NFSecureTransactionServicesHandoverHybridSession *)self role];
  if (v21)
  {
    v22 = [(_NFXPCSession *)self remoteObject];
  }

  else
  {
    v22 = self;
  }

  v23 = [(_NFSecureTransactionServicesHandoverHybridSession *)self driverWrapper];
  v24 = sub_1002644CC(&v20->super.isa, 0, v22, v23, [(_NFSession *)self signpostId]);
  [(_NFSecureTransactionServicesHandoverHybridSession *)self setTnepHandler:v24];

  if (v21)
  {
  }

  v25 = [(_NFSecureTransactionServicesHandoverHybridSession *)self tnepHandler];
  [v25 startTNEPDeviceWithServices:v9 optionalRecords:v11 callback:v10];
}

- (void)_startTNEPReaderWithCallback:(id)a3
{
  v5 = a3;
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

    v7(6, "%c[%{public}s %{public}s]:%i ", v11, ClassName, Name, 393);
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
    v27 = v14;
    v28 = 2082;
    v29 = object_getClassName(self);
    v30 = 2082;
    v31 = sel_getName(a2);
    v32 = 1024;
    v33 = 393;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v15 = [NFTNEPHandler alloc];
  v16 = [(_NFSecureTransactionServicesHandoverHybridSession *)self role];
  v17 = self;
  if (v16 != 1)
  {
    v17 = [(_NFXPCSession *)self remoteObject];
  }

  v18 = [(_NFSecureTransactionServicesHandoverHybridSession *)self driverWrapper];
  v19 = sub_1002644CC(&v15->super.isa, 1, v17, v18, [(_NFSession *)self signpostId]);
  [(_NFSecureTransactionServicesHandoverHybridSession *)self setTnepHandler:v19];

  if (v16 != 1)
  {
  }

  v20 = [(_NFSecureTransactionServicesHandoverHybridSession *)self tnepHandler];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100243AD8;
  v23[3] = &unk_100316598;
  v24 = v5;
  v25 = a2;
  v23[4] = self;
  v21 = v5;
  [v20 startTNEPReaderWithCallback:v23];
}

- (void)iso18013DataRetrievalCompleted
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

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 435);
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
    v18 = v12;
    v19 = 2082;
    v20 = object_getClassName(self);
    v21 = 2082;
    v22 = sel_getName(a2);
    v23 = 1024;
    v24 = 435;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v13 = +[_NFHardwareManager sharedHardwareManager];
  v14 = sub_10004BF2C();
  v15 = [v13 setRoutingConfig:v14];
}

- (void)relinquishSEProxy
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

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 442);
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
    v16 = v12;
    v17 = 2082;
    v18 = object_getClassName(self);
    v19 = 2082;
    v20 = sel_getName(a2);
    v21 = 1024;
    v22 = 442;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v13 = [(_NFSecureTransactionServicesHandoverHybridSession *)self stsHelper];
  [v13 stopSEProxyListener];

  [(_NFSecureTransactionServicesHandoverHybridSession *)self setSeProxyListener:0];
}

- (void)restartNFCReaderDiscovery
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

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 450);
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
    v15 = v12;
    v16 = 2082;
    v17 = object_getClassName(self);
    v18 = 2082;
    v19 = sel_getName(a2);
    v20 = 1024;
    v21 = 450;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  sub_10021E364(*(&self->_type + 4));
}

- (void)reqlinquishNFCReaderProxy
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

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 456);
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
    v18 = v12;
    v19 = 2082;
    v20 = object_getClassName(self);
    v21 = 2082;
    v22 = sel_getName(a2);
    v23 = 1024;
    v24 = 456;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v13 = +[_NFHardwareManager sharedHardwareManager];
  v14 = sub_10004C144();
  v15 = [v13 setRoutingConfig:v14];
}

- (void)coreDuetActivityRevoked
{
  v3 = [(_NFSession *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100244604;
  block[3] = &unk_100315F30;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)startTNEPDeviceWithServices:(id)a3 optionalRecords:(id)a4 callback:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(_NFSession *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002447BC;
  block[3] = &unk_1003165C0;
  v19 = v11;
  v20 = a2;
  block[4] = self;
  v17 = v9;
  v18 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v11;
  dispatch_async(v12, block);
}

- (void)tnepTagDeviceSendNDEFMessage:(id)a3 callback:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(_NFSession *)self workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100244FD4;
  v12[3] = &unk_1003165E8;
  v14 = v8;
  v15 = a2;
  v12[4] = self;
  v13 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

- (void)startTNEPReaderWithCallback:(id)a3
{
  v5 = a3;
  v6 = [(_NFSession *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100245630;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)tnepReaderSelectService:(id)a3 callback:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(_NFSession *)self workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100245BE4;
  v12[3] = &unk_1003165E8;
  v14 = v8;
  v15 = a2;
  v12[4] = self;
  v13 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

- (void)tnepReaderDeselectWithCallback:(id)a3
{
  v5 = a3;
  v6 = [(_NFSession *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100246234;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)tnepReaderSend:(id)a3 callback:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(_NFSession *)self workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100246894;
  v12[3] = &unk_1003165E8;
  v14 = v8;
  v15 = a2;
  v12[4] = self;
  v13 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

- (void)tnepReaderRestartPollingWithCallback:(id)a3
{
  v5 = a3;
  v6 = [(_NFSession *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100246ED0;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)tnepServiceInvalidate
{
  if (![(_NFSession *)self didStart]|| [(_NFSession *)self isSuspended]|| [(_NFSession *)self didEnd])
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
      v10 = [(_NFSession *)self sessionUID];
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v5(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v11, ClassName, Name, 605, v10);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
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

      v15 = object_getClassName(self);
      v16 = sel_getName(a2);
      v17 = [(_NFSession *)self sessionUID];
      LODWORD(buf) = 67110146;
      HIDWORD(buf) = v14;
      v32 = 2082;
      v33 = v15;
      v34 = 2082;
      v35 = v16;
      v36 = 1024;
      v37 = 605;
      v38 = 2114;
      v39 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", &buf, 0x2Cu);
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v19 = v18;
      v20 = object_getClass(self);
      v21 = class_isMetaClass(v20);
      v22 = object_getClassName(self);
      v28 = sel_getName(a2);
      v23 = 45;
      if (v21)
      {
        v23 = 43;
      }

      v19(6, "%c[%{public}s %{public}s]:%i ", v23, v22, v28, 607);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = object_getClass(self);
      if (class_isMetaClass(v25))
      {
        v26 = 43;
      }

      else
      {
        v26 = 45;
      }

      LODWORD(buf) = 67109890;
      HIDWORD(buf) = v26;
      v32 = 2082;
      v33 = object_getClassName(self);
      v34 = 2082;
      v35 = sel_getName(a2);
      v36 = 1024;
      v37 = 607;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", &buf, 0x22u);
    }

    objc_initWeak(&buf, self);
    v27 = [(_NFSession *)self workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100247830;
    block[3] = &unk_100316610;
    objc_copyWeak(v30, &buf);
    v30[1] = a2;
    dispatch_async(v27, block);

    objc_destroyWeak(v30);
    objc_destroyWeak(&buf);
  }
}

- (void)tnepTagDeviceReaderDetected
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

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 626);
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
    v15 = v12;
    v16 = 2082;
    v17 = object_getClassName(self);
    v18 = 2082;
    v19 = sel_getName(a2);
    v20 = 1024;
    v21 = 626;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }
}

- (void)tnepTagDeviceSelected:(id)a3 respondHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 isEqualToString:@"urn:nfc:sn:handover"];
  v10 = v9 ^ 1;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v12 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v16 = 45;
    if (isMetaClass)
    {
      v16 = 43;
    }

    v12(6, "%c[%{public}s %{public}s]:%i service=%{public}@, status=%ld", v16, ClassName, Name, 636, v7, v10);
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

    *buf = 67110402;
    v24 = v19;
    v25 = 2082;
    v26 = object_getClassName(self);
    v27 = 2082;
    v28 = sel_getName(a2);
    v29 = 1024;
    v30 = 636;
    v31 = 2114;
    v32 = v7;
    v33 = 2048;
    v34 = v9 ^ 1;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i service=%{public}@, status=%ld", buf, 0x36u);
  }

  if (v9)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100247E14;
    v22[3] = &unk_1003162B8;
    v22[4] = self;
    v22[5] = a2;
    v20 = [(_NFSecureTransactionServicesHandoverHybridSession *)self _asynchronousRemoteProxyWithErrorHandler:v22];
    [v20 connectionHandoverTNEPServiceSelected:@"urn:nfc:sn:handover"];
  }

  v8[2](v8, v10, 0);
}

- (void)tnepTagDeviceDeselected:(id)a3
{
  v5 = a3;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v12 = [(_NFSecureTransactionServicesHandoverHybridSession *)self deviceHandoverSelectError];
    v13 = 45;
    if (isMetaClass)
    {
      v13 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i CH status=%{public}@, link error=%{public}@", v13, ClassName, Name, 650, v12, v5);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
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
    v19 = [(_NFSecureTransactionServicesHandoverHybridSession *)self deviceHandoverSelectError];
    *buf = 67110402;
    *&buf[4] = v16;
    v36 = 2082;
    v37 = v17;
    v38 = 2082;
    v39 = v18;
    v40 = 1024;
    v41 = 650;
    v42 = 2114;
    v43 = v19;
    v44 = 2114;
    v45 = v5;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i CH status=%{public}@, link error=%{public}@", buf, 0x36u);
  }

  v20 = [(_NFSecureTransactionServicesHandoverHybridSession *)self deviceHandoverSelectError];

  if (v20)
  {
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100248484;
    v34[3] = &unk_1003162B8;
    v34[4] = self;
    v34[5] = a2;
    v21 = [(_NFSecureTransactionServicesHandoverHybridSession *)self _asynchronousRemoteProxyWithErrorHandler:v34];
    v22 = [(_NFSecureTransactionServicesHandoverHybridSession *)self deviceHandoverSelectError];
    [v21 connectionHandoverProcessFailure:v22];

    [(_NFSecureTransactionServicesHandoverHybridSession *)self setDeviceHandoverSelectError:0];
  }

  else if (v5)
  {
    if ([v5 code] == 28)
    {
      v23 = STS_XCPHELPER_ERROR_DOMAIN;
      v46 = NSLocalizedDescriptionKey;
      *buf = STSXPCHelperErrorDescriptions[8];
      v24 = [NSDictionary dictionaryWithObjects:buf forKeys:&v46 count:1];
      v25 = v23;
      v26 = 8;
    }

    else if ([v5 code] == 62 || objc_msgSend(v5, "code") == 59)
    {
      v28 = STS_XCPHELPER_ERROR_DOMAIN;
      v46 = NSLocalizedDescriptionKey;
      *buf = STSXPCHelperErrorDescriptions[2];
      v24 = [NSDictionary dictionaryWithObjects:buf forKeys:&v46 count:1];
      v25 = v28;
      v26 = 2;
    }

    else
    {
      v29 = STS_XCPHELPER_ERROR_DOMAIN;
      v46 = NSLocalizedDescriptionKey;
      *buf = STSXPCHelperErrorDescriptions[10];
      v24 = [NSDictionary dictionaryWithObjects:buf forKeys:&v46 count:1];
      v25 = v29;
      v26 = 10;
    }

    v30 = [NSError errorWithDomain:v25 code:v26 userInfo:v24];

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10024861C;
    v33[3] = &unk_1003162B8;
    v33[4] = self;
    v33[5] = a2;
    v31 = [(_NFSecureTransactionServicesHandoverHybridSession *)self _asynchronousRemoteProxyWithErrorHandler:v33];
    [v31 connectionHandoverProcessFailure:v30];
  }

  else
  {
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1002487B4;
    v32[3] = &unk_1003162B8;
    v32[4] = self;
    v32[5] = a2;
    v27 = [(_NFSecureTransactionServicesHandoverHybridSession *)self _asynchronousRemoteProxyWithErrorHandler:v32];
    [v27 connectionHandoverProcessCompleted];
  }
}

- (void)tnepTagDeviceNDEFMessageReceived:(id)a3
{
  v5 = a3;
  v6 = NFSharedSignpostLog();
  v7 = [(_NFSession *)self signpostId];
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CH_Negotiation", &unk_1002E8B7A, buf, 2u);
    }
  }

  v9 = [(_NFSecureTransactionServicesHandoverHybridSession *)self stsHelper];
  v10 = [v5 asData];

  v11 = [(_NFSession *)self workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100248A94;
  v12[3] = &unk_100316660;
  v12[4] = self;
  v12[5] = a2;
  [v9 processConnectionHandoverRequestData:v10 callbackQueue:v11 responseHandler:v12];
}

- (void)tnepReaderServicesDiscovered:(id)a3
{
  v5 = a3;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i services=%{public}@", v10, ClassName, Name, 711, v5);
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

    *buf = 67110146;
    v48 = v13;
    v49 = 2082;
    v50 = object_getClassName(self);
    v51 = 2082;
    v52 = sel_getName(a2);
    v53 = 1024;
    v54 = 711;
    v55 = 2114;
    v56 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i services=%{public}@", buf, 0x2Cu);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v43;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v43 != v17)
        {
          objc_enumerationMutation(v14);
        }

        if ([*(*(&v42 + 1) + 8 * i) isEqualToString:@"urn:nfc:sn:handover"])
        {

          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_100249558;
          v41[3] = &unk_1003162B8;
          v41[4] = self;
          v41[5] = a2;
          v30 = objc_retainBlock(v41);
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_100249978;
          v40[3] = &unk_1003162B8;
          v40[4] = self;
          v40[5] = a2;
          v31 = [(_NFSecureTransactionServicesHandoverHybridSession *)self _asynchronousRemoteProxyWithErrorHandler:v40];
          [v31 connectionHandoverTNEPServiceSelected:@"urn:nfc:sn:handover"];

          v32 = [(_NFSecureTransactionServicesHandoverHybridSession *)self tnepHandler];
          v37[0] = _NSConcreteStackBlock;
          v37[1] = 3221225472;
          v37[2] = sub_100249B10;
          v37[3] = &unk_100316598;
          v38 = v30;
          v39 = a2;
          v37[4] = self;
          v33 = v30;
          [v32 tnepReaderSelectService:@"urn:nfc:sn:handover" callback:v37];

          goto LABEL_29;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v19 = NFLogGetLogger();
  if (v19)
  {
    v20 = v19;
    v21 = object_getClass(self);
    v22 = class_isMetaClass(v21);
    v23 = object_getClassName(self);
    v36 = sel_getName(a2);
    v24 = 45;
    if (v22)
    {
      v24 = 43;
    }

    v20(4, "%c[%{public}s %{public}s]:%i No matching service found", v24, v23, v36, 722);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = object_getClass(self);
    if (class_isMetaClass(v26))
    {
      v27 = 43;
    }

    else
    {
      v27 = 45;
    }

    v28 = object_getClassName(self);
    v29 = sel_getName(a2);
    *buf = 67109890;
    v48 = v27;
    v49 = 2082;
    v50 = v28;
    v51 = 2082;
    v52 = v29;
    v53 = 1024;
    v54 = 722;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No matching service found", buf, 0x22u);
  }

LABEL_29:
}

- (void)staticReaderEngagementDiscovered:(id)a3
{
  v5 = a3;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i handover select = %@", v10, ClassName, Name, 793, v5);
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

    *buf = 67110146;
    v21 = v13;
    v22 = 2082;
    v23 = object_getClassName(self);
    v24 = 2082;
    v25 = sel_getName(a2);
    v26 = 1024;
    v27 = 793;
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i handover select = %@", buf, 0x2Cu);
  }

  v14 = [(_NFSecureTransactionServicesHandoverHybridSession *)self stsHelper];
  v15 = [v5 asData];
  v16 = [(_NFSession *)self workQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10024AA8C;
  v19[3] = &unk_1003162B8;
  v19[4] = self;
  v19[5] = a2;
  [v14 connectRemoteWithConnectionHandoverSelect:v15 callbackQueue:v16 responseHandler:v19];
}

- (void)tnepReaderServicesAborted:(id)a3
{
  v5 = a3;
  v6 = NFSharedSignpostLog();
  v7 = [(_NFSession *)self signpostId];
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, v8, "ReaderServicesAborted", &unk_1002E8B7A, buf, 2u);
    }
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v10 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v13 = 45;
    if (isMetaClass)
    {
      v13 = 43;
    }

    v10(3, "%c[%{public}s %{public}s]:%i error=%{public}@", v13, ClassName, Name, 816, v5);
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
    *buf = 67110146;
    v24 = v16;
    v25 = 2082;
    v26 = v17;
    v27 = 2082;
    v28 = v18;
    v29 = 1024;
    v30 = 816;
    v31 = 2114;
    v32 = v5;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i error=%{public}@", buf, 0x2Cu);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10024B2A8;
  v22[3] = &unk_1003162B8;
  v22[4] = self;
  v22[5] = a2;
  v19 = [(_NFSecureTransactionServicesHandoverHybridSession *)self _asynchronousRemoteProxyWithErrorHandler:v22];
  [v19 tnepReaderServicesAborted:v5];
}

- (void)startHCEProcessingWithDevice:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(_NFSecureTransactionServicesHandoverHybridSession *)self tnepHandler];

  if (v9)
  {
    v10 = [(_NFSecureTransactionServicesHandoverHybridSession *)self tnepHandler];
    v11 = v10;
    if (v10)
    {
      sub_1002645F8(v10, v7);
    }

    if (v8)
    {
      v8[2](v8, 0);
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v13 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v17 = 45;
      if (isMetaClass)
      {
        v17 = 43;
      }

      v13(3, "%c[%{public}s %{public}s]:%i Missing tnepHandler", v17, ClassName, Name, 830);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = object_getClass(self);
      if (class_isMetaClass(v19))
      {
        v20 = 43;
      }

      else
      {
        v20 = 45;
      }

      *buf = 67109890;
      v30 = v20;
      v31 = 2082;
      v32 = object_getClassName(self);
      v33 = 2082;
      v34 = sel_getName(a2);
      v35 = 1024;
      v36 = 830;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing tnepHandler", buf, 0x22u);
    }

    if (v8)
    {
      v21 = [NSError alloc];
      v22 = [NSString stringWithUTF8String:"nfcd"];
      v27 = NSLocalizedDescriptionKey;
      v23 = [NSString stringWithUTF8String:"Unexpected Result"];
      v28 = v23;
      v24 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v25 = [v21 initWithDomain:v22 code:13 userInfo:v24];
      (v8)[2](v8, v25);
    }
  }
}

- (unint64_t)getCHConfig
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
    v19 = [(_NFSecureTransactionServicesHandoverHybridSession *)self type];
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i type=0x%lx", v10, ClassName, Name, 837, v19);
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

    *buf = 67110146;
    v21 = v13;
    v22 = 2082;
    v23 = object_getClassName(self);
    v24 = 2082;
    v25 = sel_getName(a2);
    v26 = 1024;
    v27 = 837;
    v28 = 2048;
    v29 = [(_NFSecureTransactionServicesHandoverHybridSession *)self type];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i type=0x%lx", buf, 0x2Cu);
  }

  v14 = [(_NFSecureTransactionServicesHandoverHybridSession *)self type];
  v15 = [(_NFSecureTransactionServicesHandoverHybridSession *)self type];
  v16 = [(_NFSecureTransactionServicesHandoverHybridSession *)self type];
  v17 = [(_NFSecureTransactionServicesHandoverHybridSession *)self type];
  return (16 * (v14 & 1)) | (v15 >> 1) & 1 | (v16 >> 1) & 2 | (v17 >> 1) & 4 | ([(_NFSecureTransactionServicesHandoverHybridSession *)self type]>> 1) & 8;
}

- (unint64_t)getSTSHelperOperation
{
  v4 = [(_NFSecureTransactionServicesHandoverHybridSession *)self role];
  if (v4 - 2 >= 3 && v4 != -1)
  {
    return v4 == 1;
  }

  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"_NFSecureTransactionServicesHandoverHybridSession.m" lineNumber:861 description:@"Invalid"];

  return -1;
}

- (id)_synchronousRemoteProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(_NFXPCSession *)self remoteObject];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)_asynchronousRemoteProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(_NFXPCSession *)self remoteObject];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)createCHSelectErrorMessage
{
  v2 = objc_alloc_init(NFNdefRecordInternal);
  [v2 setTypeNameFormat:1];
  v3 = [[NSData alloc] initWithBytes:&unk_100297C56 length:3];
  [v2 setType:v3];

  v4 = [[NSData alloc] initWithBytes:&unk_100297C59 length:2];
  [v2 setPayload:v4];

  v5 = objc_alloc_init(NFNdefRecordInternal);
  v6 = [[NSMutableData alloc] initWithBytes:&unk_100297C5D length:2];
  v7 = [v2 asData];
  [v6 appendData:v7];

  [v5 setTypeNameFormat:1];
  v8 = [[NSData alloc] initWithBytes:&unk_100297C5B length:2];
  [v5 setType:v8];

  [v5 setPayload:v6];
  v9 = objc_alloc_init(NFNdefMessageInternal);
  [v9 addRecord:v5];

  return v9;
}

- (void)handleReaderBurnoutTimer
{
  v4 = [(_NFSession *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = NFSharedSignpostLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "handleReaderBurnoutTimer", &unk_1002E8B7A, buf, 2u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10024BDBC;
  v12[3] = &unk_1003162B8;
  v12[4] = self;
  v12[5] = a2;
  v6 = [(_NFSecureTransactionServicesHandoverHybridSession *)self _synchronousRemoteProxyWithErrorHandler:v12];
  v7 = [NSError alloc];
  v8 = [NSString stringWithUTF8String:"nfcd"];
  v14 = NSLocalizedDescriptionKey;
  v9 = [NSString stringWithUTF8String:"Reader mode temporarily disabled"];
  v15 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v11 = [v7 initWithDomain:v8 code:47 userInfo:v10];
  [v6 tnepReaderServicesAborted:v11];

  [(_NFSecureTransactionServicesHandoverHybridSession *)self endSession:0];
}

- (void)handleReaderBurnoutCleared
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

    v5(6, "%c[%{public}s %{public}s]:%i Warning : message received - session should be gone.", v9, ClassName, Name, 924);
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
    v15 = v12;
    v16 = 2082;
    v17 = object_getClassName(self);
    v18 = 2082;
    v19 = sel_getName(a2);
    v20 = 1024;
    v21 = 924;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Warning : message received - session should be gone.", buf, 0x22u);
  }
}

@end