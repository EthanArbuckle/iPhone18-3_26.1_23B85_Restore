@interface _NFSecureElementReaderSession
+ (id)validateEntitlements:(id)a3;
- (BOOL)suspendWithInfo:(id)a3;
- (NFSystemPowerConsumptionMonitor)powerConsumptionReporter;
- (id)selectApplets:(id)a3;
- (void)_cleanupVAS;
- (void)cleanup;
- (void)connect:(id)a3 completion:(id)a4;
- (void)didStartSession:(id)a3;
- (void)disconnectWithCardRemoval:(BOOL)a3 completion:(id)a4;
- (void)expectedBurnoutProtectionTimerWithCompletion:(id)a3;
- (void)handleReaderBurnoutCleared;
- (void)handleReaderBurnoutTimer;
- (void)handleRemoteTagsDetected:(id)a3;
- (void)handleSecureElementTransactionData:(id)a3 appletIdentifier:(id)a4;
- (void)performSelectVASWithCompletion:(id)a3;
- (void)performVAS:(id)a3 select:(BOOL)a4 completion:(id)a5;
- (void)secureElementReaderStarted:(id)a3;
- (void)secureElementReaderStopped:(id)a3;
- (void)selectApplets:(id)a3 completion:(id)a4;
- (void)startSecureElementReaderWithCompletion:(id)a3;
- (void)startVASPolling:(id)a3 completion:(id)a4;
- (void)stopSecureElementReaderWithCompletion:(id)a3;
- (void)stopVASPolling:(id)a3;
- (void)transceive:(id)a3 completion:(id)a4;
@end

@implementation _NFSecureElementReaderSession

+ (id)validateEntitlements:(id)a3
{
  v5 = a3;
  if ([v5 seSessionAccess] && (objc_msgSend(v5, "readerInternalAccess") & 1) != 0)
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

      v8(3, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring card and SE access", v12, ClassName, Name, 53);
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
      v33 = 53;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring card and SE access", buf, 0x22u);
    }

    v16 = [NSError alloc];
    v17 = [NSString stringWithUTF8String:"nfcd"];
    v24[0] = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithUTF8String:"Not entitled"];
    v25[0] = v18;
    v25[1] = &off_100332478;
    v24[1] = @"Line";
    v24[2] = @"Method";
    v19 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v25[2] = v19;
    v24[3] = NSDebugDescriptionErrorKey;
    v20 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 54];
    v25[3] = v20;
    v21 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];
    v6 = [v16 initWithDomain:v17 code:32 userInfo:v21];
  }

  return v6;
}

- (void)cleanup
{
  v4 = NFSharedSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "cleanup", "_NFSecureElementReaderSession", buf, 2u);
  }

  if ([(_NFSession *)self needsCleanup]&& ![(_NFSession *)self isSuspended])
  {
    [(_NFSecureElementReaderSession *)self _cleanupVAS];
    WeakRetained = objc_loadWeakRetained(&self->_powerConsumptionReporter);
    sub_1001AF894(WeakRetained, self);

    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v12 = [(_NFXPCSession *)self clientName];
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i NFC Reader mode terminated: %@", v13, ClassName, Name, 74, v12);
    }

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
      v19 = [(_NFXPCSession *)self clientName];
      *buf = 67110146;
      v23 = v16;
      v24 = 2082;
      v25 = v17;
      v26 = 2082;
      v27 = v18;
      v28 = 1024;
      v29 = 74;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC Reader mode terminated: %@", buf, 0x2Cu);
    }
  }

  v21.receiver = self;
  v21.super_class = _NFSecureElementReaderSession;
  [(_NFSession *)&v21 cleanup];
  v20 = NFSharedSignpostLog();
  if (os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "cleanup", "_NFSecureElementReaderSession", buf, 2u);
  }
}

- (void)didStartSession:(id)a3
{
  v9.receiver = self;
  v9.super_class = _NFSecureElementReaderSession;
  v4 = a3;
  [(_NFXPCSession *)&v9 didStartSession:v4];
  v5 = [_NFHardwareManager sharedHardwareManager:v9.receiver];
  v6 = [v5 secureElementWrapper];
  embeddedSecureElementWrapper = self->_embeddedSecureElementWrapper;
  self->_embeddedSecureElementWrapper = v6;

  v8 = [(_NFXPCSession *)self remoteObject];
  [v8 didStartSession:v4];
}

- (BOOL)suspendWithInfo:(id)a3
{
  v36.receiver = self;
  v36.super_class = _NFSecureElementReaderSession;
  v5 = [(_NFXPCSession *)&v36 suspendWithInfo:a3];
  if (v5 && self->_readerOn)
  {
    v6 = +[_NFHardwareManager sharedHardwareManager];
    v7 = sub_10004BF2C();
    v8 = [v6 setRoutingConfig:v7];

    if (v8)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v10 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v14 = 45;
        if (isMetaClass)
        {
          v14 = 43;
        }

        v10(3, "%c[%{public}s %{public}s]:%i Failed to change routing.", v14, ClassName, Name, 103);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = object_getClass(self);
        if (class_isMetaClass(v16))
        {
          v17 = 43;
        }

        else
        {
          v17 = 45;
        }

        v18 = object_getClassName(self);
        v19 = sel_getName(a2);
        *buf = 67109890;
        v38 = v17;
        v39 = 2082;
        v40 = v18;
        v41 = 2082;
        v42 = v19;
        v43 = 1024;
        v44 = 103;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to change routing.", buf, 0x22u);
      }
    }

    else
    {
      self->_readerOn = 0;
      self->_tooHot = 0;
      WeakRetained = objc_loadWeakRetained(&self->_powerConsumptionReporter);
      sub_1001AF894(WeakRetained, self);

      v21 = NFLogGetLogger();
      if (v21)
      {
        v22 = v21;
        v23 = object_getClass(self);
        v24 = class_isMetaClass(v23);
        v25 = object_getClassName(self);
        v26 = sel_getName(a2);
        v27 = [(_NFXPCSession *)self clientName];
        v28 = 45;
        if (v24)
        {
          v28 = 43;
        }

        v22(6, "%c[%{public}s %{public}s]:%i NFC Reader mode terminated: %@", v28, v25, v26, 101, v27);
      }

      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v29 = object_getClass(self);
        if (class_isMetaClass(v29))
        {
          v30 = 43;
        }

        else
        {
          v30 = 45;
        }

        v31 = object_getClassName(self);
        v32 = sel_getName(a2);
        v33 = [(_NFXPCSession *)self clientName];
        *buf = 67110146;
        v38 = v30;
        v39 = 2082;
        v40 = v31;
        v41 = 2082;
        v42 = v32;
        v43 = 1024;
        v44 = 101;
        v45 = 2112;
        v46 = v33;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC Reader mode terminated: %@", buf, 0x2Cu);
      }
    }
  }

  return v5;
}

- (void)handleReaderBurnoutTimer
{
  v6.receiver = self;
  v6.super_class = _NFSecureElementReaderSession;
  v4 = [(_NFSession *)&v6 workQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10014E33C;
  v5[3] = &unk_100315F58;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(v4, v5);
}

- (void)handleReaderBurnoutCleared
{
  self->_tooHot = 0;
  v2 = [(_NFXPCSession *)self remoteObject];
  [v2 didReceiveThermalIndication:0];
}

- (id)selectApplets:(id)a3
{
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v5 = a3;
  v55 = [v5 countByEnumeratingWithState:&v57 objects:v75 count:16];
  if (v55)
  {
    v53 = *v58;
    v6 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
    v50 = v5;
    sel = a2;
    v52 = self;
    while (2)
    {
      for (i = 0; i != v55; i = i + 1)
      {
        if (*v58 != v53)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v57 + 1) + 8 * i);
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

          v6 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
          v10(6, "%c[%{public}s %{public}s]:%i Selecting %{public}@", v13, ClassName, Name, 154, v8);
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
          *buf = 67110146;
          v66 = v16;
          v67 = 2082;
          v68 = v17;
          v69 = 2082;
          v70 = v18;
          v71 = 1024;
          v72 = 154;
          v73 = 2114;
          v74 = v8;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Selecting %{public}@", buf, 0x2Cu);
        }

        v19 = [(_NFSecureElementReaderSession *)self embeddedSecureElementWrapper];
        v54 = v8;
        v20 = [NSData NF_dataWithHexString:v8];
        v56 = 0;
        v21 = sub_100158A6C(v19, v20, &v56);
        v22 = v56;

        if (v22 || [v21 status] != 36864)
        {
          if ([v21 status] != 36864)
          {
            v23 = [v21 status];
            v24 = [NSError alloc];
            v25 = [v6[475] stringWithUTF8String:"nfcd"];
            if (v23 == 25392)
            {
              v63 = NSLocalizedDescriptionKey;
              v26 = [v6[475] stringWithUTF8String:"Reader mode prohibit timer"];
              v64 = v26;
              v27 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
              v28 = [v24 initWithDomain:v25 code:64 userInfo:v27];
            }

            else
            {
              v61[0] = NSLocalizedDescriptionKey;
              v29 = [v6[475] stringWithUTF8String:"Command Error"];
              v30 = v6;
              v26 = v29;
              v61[1] = NSLocalizedFailureReasonErrorKey;
              v62[0] = v29;
              v31 = objc_alloc(v30[475]);
              v27 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v21 status]);
              v32 = [v27 stringValue];
              v33 = [v31 initWithFormat:@"%@", v32];
              v62[1] = v33;
              v34 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:2];
              v28 = [v24 initWithDomain:v25 code:16 userInfo:v34];

              a2 = sel;
              v22 = v32;
              v5 = v50;
            }

            v22 = v28;
            self = v52;
            v6 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
          }

          if (v22)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v35 = NFLogGetLogger();
            if (v35)
            {
              v36 = v35;
              v37 = object_getClass(self);
              v38 = class_isMetaClass(v37);
              v39 = object_getClassName(self);
              v49 = sel_getName(sel);
              v40 = 45;
              if (v38)
              {
                v40 = 43;
              }

              v36(3, "%c[%{public}s %{public}s]:%i Failed to select applet %{public}@", v40, v39, v49, 170, v54);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v41 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              v42 = object_getClass(self);
              if (class_isMetaClass(v42))
              {
                v43 = 43;
              }

              else
              {
                v43 = 45;
              }

              v44 = object_getClassName(self);
              v45 = sel_getName(sel);
              *buf = 67110146;
              v66 = v43;
              v67 = 2082;
              v68 = v44;
              v69 = 2082;
              v70 = v45;
              v71 = 1024;
              v72 = 170;
              v73 = 2114;
              v74 = v54;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select applet %{public}@", buf, 0x2Cu);
            }

            goto LABEL_36;
          }
        }
      }

      v55 = [v5 countByEnumeratingWithState:&v57 objects:v75 count:16];
      if (v55)
      {
        continue;
      }

      break;
    }
  }

  v22 = 0;
LABEL_36:

  return v22;
}

- (void)selectApplets:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v40 objects:v54 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v41;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v40 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v17 = Logger;
            Class = object_getClass(self);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(self);
            Name = sel_getName(a2);
            v21 = 45;
            if (isMetaClass)
            {
              v21 = 43;
            }

            v17(3, "%c[%{public}s %{public}s]:%i Invalid applet type", v21, ClassName, Name, 183);
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
            v47 = v24;
            v48 = 2082;
            v49 = v25;
            v50 = 2082;
            v51 = v26;
            v52 = 1024;
            v53 = 183;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid applet type", buf, 0x22u);
          }

          v27 = [NSError alloc];
          v28 = [NSString stringWithUTF8String:"nfcd"];
          v44[0] = NSLocalizedDescriptionKey;
          v29 = [NSString stringWithUTF8String:"Invalid Parameter"];
          v45[0] = v29;
          v45[1] = &off_100332490;
          v44[1] = @"Line";
          v44[2] = @"Method";
          v30 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
          v45[2] = v30;
          v44[3] = NSDebugDescriptionErrorKey;
          v31 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 184];
          v45[3] = v31;
          v32 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:4];
          v33 = [v27 initWithDomain:v28 code:10 userInfo:v32];
          v8[2](v8, v33);

          goto LABEL_20;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v40 objects:v54 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v39.receiver = self;
  v39.super_class = _NFSecureElementReaderSession;
  v15 = [(_NFSession *)&v39 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014F198;
  block[3] = &unk_1003165E8;
  block[4] = self;
  v38 = a2;
  v37 = v8;
  v36 = v9;
  dispatch_async(v15, block);

LABEL_20:
}

- (void)startSecureElementReaderWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFSecureElementReaderSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014F794;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)stopSecureElementReaderWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFSecureElementReaderSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014FF28;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)transceive:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = _NFSecureElementReaderSession;
  v9 = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10015069C;
  v12[3] = &unk_1003165E8;
  v14 = v8;
  v15 = a2;
  v12[4] = self;
  v13 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

- (void)startVASPolling:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = _NFSecureElementReaderSession;
  v9 = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100150DF0;
  v12[3] = &unk_1003165E8;
  v14 = v8;
  v15 = a2;
  v12[4] = self;
  v13 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

- (void)stopVASPolling:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFSecureElementReaderSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100151A04;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)performSelectVASWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFSecureElementReaderSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015221C;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)performVAS:(id)a3 select:(BOOL)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _NFSecureElementReaderSession;
  v11 = [(_NFSession *)&v19 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100152CFC;
  block[3] = &unk_100318AB8;
  v16 = v10;
  v17 = a2;
  block[4] = self;
  v15 = v9;
  v18 = a4;
  v12 = v9;
  v13 = v10;
  dispatch_async(v11, block);
}

- (void)connect:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 conformsToProtocol:&OBJC_PROTOCOL___NFTag])
  {
    v21.receiver = self;
    v21.super_class = _NFSecureElementReaderSession;
    v9 = [(_NFSession *)&v21 workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100153D04;
    block[3] = &unk_100316078;
    block[4] = self;
    v20 = a2;
    v18 = v7;
    v19 = v8;
    dispatch_async(v9, block);
  }

  else
  {
    v10 = [NSError alloc];
    v11 = [NSString stringWithUTF8String:"nfcd"];
    v22[0] = NSLocalizedDescriptionKey;
    v12 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v23[0] = v12;
    v23[1] = &off_1003324D8;
    v22[1] = @"Line";
    v22[2] = @"Method";
    v13 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v23[2] = v13;
    v22[3] = NSDebugDescriptionErrorKey;
    v14 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 493];
    v23[3] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
    v16 = [v10 initWithDomain:v11 code:10 userInfo:v15];
    (*(v8 + 2))(v8, v16);
  }
}

- (void)disconnectWithCardRemoval:(BOOL)a3 completion:(id)a4
{
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _NFSecureElementReaderSession;
  v8 = [(_NFSession *)&v14 workQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001543B8;
  v10[3] = &unk_100316FA0;
  v11 = v7;
  v12 = a2;
  v10[4] = self;
  v13 = a3;
  v9 = v7;
  dispatch_async(v8, v10);
}

- (void)_cleanupVAS
{
  if (self->_currentTag)
  {
    v4 = [(_NFSecureElementReaderSession *)self _disconnectWithCardRemoval:0];
  }

  if (self->_vasECP)
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

      v6(6, "%c[%{public}s %{public}s]:%i Stopping routing", v10, ClassName, Name, 571);
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
      v34 = v13;
      v35 = 2082;
      v36 = object_getClassName(self);
      v37 = 2082;
      v38 = sel_getName(a2);
      v39 = 1024;
      v40 = 571;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Stopping routing", buf, 0x22u);
    }

    v14 = +[_NFHardwareManager sharedHardwareManager];
    v15 = sub_10004C224(NFRoutingConfig, 0);
    v16 = [v14 setRoutingConfig:v15];

    self->_vasECP = 0;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v18 = v17;
      v19 = object_getClass(self);
      v20 = class_isMetaClass(v19);
      v21 = object_getClassName(self);
      v32 = sel_getName(a2);
      v22 = 45;
      if (v20)
      {
        v22 = 43;
      }

      v18(6, "%c[%{public}s %{public}s]:%i Restoring initial session routing", v22, v21, v32, 578);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = object_getClass(self);
      if (class_isMetaClass(v24))
      {
        v25 = 43;
      }

      else
      {
        v25 = 45;
      }

      v26 = object_getClassName(self);
      v27 = sel_getName(a2);
      *buf = 67109890;
      v34 = v25;
      v35 = 2082;
      v36 = v26;
      v37 = 2082;
      v38 = v27;
      v39 = 1024;
      v40 = 578;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Restoring initial session routing", buf, 0x22u);
    }

    v28 = +[_NFHardwareManager sharedHardwareManager];
    v29 = [(_NFSecureElementReaderSession *)self initialRoutingConfig];
    v30 = [v28 setRoutingConfig:v29];
  }
}

- (void)expectedBurnoutProtectionTimerWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFSecureElementReaderSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100155050;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)secureElementReaderStarted:(id)a3
{
  v4 = a3;
  v5 = [(_NFXPCSession *)self remoteObject];
  [v5 didStartSecureElementReader:v4];
}

- (void)secureElementReaderStopped:(id)a3
{
  v4 = a3;
  v6 = [[NSMutableDictionary alloc] initWithDictionary:v4];

  if (self->_tooHot)
  {
    [v6 setObject:&off_1003324F0 forKeyedSubscript:@"tooHot"];
  }

  v5 = [(_NFXPCSession *)self remoteObject];
  [v5 didEndSecureElementReader:v6];
}

- (void)handleSecureElementTransactionData:(id)a3 appletIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_100006AAC;
  v47 = sub_100155844;
  v48 = 0;
  embeddedSecureElementWrapper = self->_embeddedSecureElementWrapper;
  v42 = 0;
  v9 = sub_100257A4C(embeddedSecureElementWrapper, &v42);
  v10 = v42;

  if (v9)
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
      v16 = 45;
      if (isMetaClass)
      {
        v16 = 43;
      }

      v12(3, "%c[%{public}s %{public}s]:%i Failed to validate applets", v16, ClassName, Name, 621);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
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
      *buf = 67109890;
      v50 = v19;
      v51 = 2082;
      v52 = v20;
      v53 = 2082;
      v54 = v21;
      v55 = 1024;
      v56 = 621;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to validate applets", buf, 0x22u);
    }
  }

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10015584C;
  v39[3] = &unk_100319C80;
  v22 = v7;
  v40 = v22;
  v41 = &v43;
  [v10 enumerateObjectsUsingBlock:v39];
  if (v44[5])
  {
    v23 = [(_NFXPCSession *)self remoteObject];
    [v23 receivedSecureElementReaderData:v6 forApplet:v44[5]];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFLogGetLogger();
    if (v24)
    {
      v25 = v24;
      v26 = object_getClass(self);
      v27 = class_isMetaClass(v26);
      v28 = object_getClassName(self);
      v29 = sel_getName(a2);
      v30 = [v22 NF_asHexString];
      v31 = 45;
      if (v27)
      {
        v31 = 43;
      }

      v25(5, "%c[%{public}s %{public}s]:%i Failed to find applet %{public}@", v31, v28, v29, 634, v30);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
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
      v36 = [v22 NF_asHexString];
      *buf = 67110146;
      v50 = v33;
      v51 = 2082;
      v52 = v34;
      v53 = 2082;
      v54 = v35;
      v55 = 1024;
      v56 = 634;
      v57 = 2114;
      v58 = v36;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Failed to find applet %{public}@", buf, 0x2Cu);
    }
  }

  _Block_object_dispose(&v43, 8);
}

- (void)handleRemoteTagsDetected:(id)a3
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

    v7(6, "%c[%{public}s %{public}s]:%i tags: %{public}@", v10, ClassName, Name, 641, v5);
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
    v19 = v13;
    v20 = 2082;
    v21 = object_getClassName(self);
    v22 = 2082;
    v23 = sel_getName(a2);
    v24 = 1024;
    v25 = 641;
    v26 = 2114;
    v27 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i tags: %{public}@", buf, 0x2Cu);
  }

  v14 = NFSharedSignpostLog();
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_NFSecureElementReaderSession+detect_tags", &unk_1002E8B7A, buf, 2u);
  }

  v15 = [(_NFXPCSession *)self remoteObject];
  [v15 didDetectTags:v5];
}

- (NFSystemPowerConsumptionMonitor)powerConsumptionReporter
{
  WeakRetained = objc_loadWeakRetained(&self->_powerConsumptionReporter);

  return WeakRetained;
}

@end