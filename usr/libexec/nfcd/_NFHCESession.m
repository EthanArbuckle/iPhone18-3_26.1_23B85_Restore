@interface _NFHCESession
+ (id)validateEntitlements:(id)a3;
- (BOOL)resume;
- (BOOL)suspendWithInfo:(id)a3;
- (BOOL)willStartSession;
- (NSData)effectiveECPFrame;
- (id)_routingConfigWithECPBroadcastInHCE;
- (id)initialECPConfig;
- (id)initialRoutingConfig;
- (id)initialRoutingConfigWithField:(id)a3;
- (void)_asyncReadWithCompletion:(id)a3;
- (void)_didLoseTarget:(BOOL)a3 suspendAssertion:(BOOL)a4;
- (void)_syncStartAssertionTimer:(double)a3;
- (void)_syncStartEmulationWithCompletion:(id)a3;
- (void)asyncReadAPDUWithCompletion:(id)a3;
- (void)cleanup;
- (void)didEndSession:(id)a3;
- (void)didStartSession:(id)a3;
- (void)endSession:(id)a3;
- (void)handleFieldChanged:(BOOL)a3;
- (void)handleFieldNotification:(id)a3;
- (void)handleHceTargetLost;
- (void)handleHostCardReaderDetected:(id)a3;
- (void)prioritizeSession:(id)a3;
- (void)readAPDUWithCompletion:(id)a3;
- (void)requestEmulationAssertion:(id)a3 completion:(id)a4;
- (void)restartDiscovery;
- (void)resumeSessionFromWaitingOnFieldWithCompletion:(id)a3;
- (void)sendAPDU:(id)a3 startReadOnCompletion:(BOOL)a4 completion:(id)a5;
- (void)startEmulationWithCompletion:(id)a3;
- (void)stopEmulationAndConfigWithRouting:(id)a3 completion:(id)a4;
- (void)stopEmulationWithCompletion:(id)a3;
@end

@implementation _NFHCESession

- (NSData)effectiveECPFrame
{
  v4 = [(_NFHCESession *)self ecpBroadcastConfig];

  if (v4)
  {
    v5 = [(_NFHCESession *)self ecpBroadcastConfig];
    v6 = v5;
    if (v5)
    {
      v7 = *(v5 + 16);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

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

      v10(5, "%c[%{public}s %{public}s]:%i Enabling FD & ECP Broadcast %@", v13, ClassName, Name, 74, v8);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v15 = object_getClass(self);
    if (class_isMetaClass(v15))
    {
      v16 = 43;
    }

    else
    {
      v16 = 45;
    }

    *buf = 67110146;
    v31 = v16;
    v32 = 2082;
    v33 = object_getClassName(self);
    v34 = 2082;
    v35 = sel_getName(a2);
    v36 = 1024;
    v37 = 74;
    v38 = 2112;
    v39 = v8;
    v17 = "%c[%{public}s %{public}s]:%i Enabling FD & ECP Broadcast %@";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v17, buf, 0x2Cu);
LABEL_14:

    goto LABEL_27;
  }

  if ([(_NFSession *)self backgroundTagReadEcpOption]== 2)
  {
    v8 = [(_NFSession *)self backgroundTagReadCustomECP];

    if (v8)
    {
      v8 = [(_NFSession *)self backgroundTagReadCustomECP];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v18 = NFLogGetLogger();
      if (v18)
      {
        v19 = v18;
        v20 = object_getClass(self);
        v21 = class_isMetaClass(v20);
        v27 = object_getClassName(self);
        v29 = sel_getName(a2);
        v22 = 45;
        if (v21)
        {
          v22 = 43;
        }

        v19(5, "%c[%{public}s %{public}s]:%i Enabling FD & custom ECP %@", v22, v27, v29, 78, v8);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v14 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v23 = object_getClass(self);
      if (class_isMetaClass(v23))
      {
        v24 = 43;
      }

      else
      {
        v24 = 45;
      }

      *buf = 67110146;
      v31 = v24;
      v32 = 2082;
      v33 = object_getClassName(self);
      v34 = 2082;
      v35 = sel_getName(a2);
      v36 = 1024;
      v37 = 78;
      v38 = 2112;
      v39 = v8;
      v17 = "%c[%{public}s %{public}s]:%i Enabling FD & custom ECP %@";
      goto LABEL_13;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_27:

  return v8;
}

+ (id)validateEntitlements:(id)a3
{
  if ([a3 hceAccess])
  {
    v5 = 0;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName(a2);
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring card access", v11, ClassName, Name, 91);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = object_getClass(a1);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      *buf = 67109890;
      v26 = v14;
      v27 = 2082;
      v28 = object_getClassName(a1);
      v29 = 2082;
      v30 = sel_getName(a2);
      v31 = 1024;
      v32 = 91;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring card access", buf, 0x22u);
    }

    v15 = [NSError alloc];
    v16 = [NSString stringWithUTF8String:"nfcd"];
    v23[0] = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithUTF8String:"Not entitled"];
    v24[0] = v17;
    v24[1] = &off_1003309A8;
    v23[1] = @"Line";
    v23[2] = @"Method";
    v18 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v24[2] = v18;
    v23[3] = NSDebugDescriptionErrorKey;
    v19 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 92];
    v24[3] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
    v5 = [v15 initWithDomain:v16 code:32 userInfo:v20];
  }

  return v5;
}

- (void)cleanup
{
  v4 = NFSharedSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "cleanup", "_NFHCESession", buf, 2u);
  }

  if ([(_NFSession *)self didStart]&& ![(_NFSession *)self isSuspended])
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

      v6(6, "%c[%{public}s %{public}s]:%i Terminating session, flagging reads as interrupted.", v10, ClassName, Name, 102);
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

      v14 = object_getClassName(self);
      v15 = sel_getName(a2);
      *buf = 67109890;
      v27 = v13;
      v28 = 2082;
      v29 = v14;
      v30 = 2082;
      v31 = v15;
      v32 = 1024;
      v33 = 102;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Terminating session, flagging reads as interrupted.", buf, 0x22u);
    }

    v16 = +[_NFHardwareManager sharedHardwareManager];
    v17 = sub_10004C144();
    v18 = [v16 setRoutingConfig:v17];
  }

  suspendAssertionDeadline = self->_suspendAssertionDeadline;
  self->_suspendAssertionDeadline = 0;

  [(NFTimer *)self->_emuAssertionTimer stopTimer];
  emuAssertionTimer = self->_emuAssertionTimer;
  self->_emuAssertionTimer = 0;

  v21 = sub_1001AE20C();
  sub_1001AEDB0(v21, v22);
  v25.receiver = self;
  v25.super_class = _NFHCESession;
  [(_NFSession *)&v25 cleanup];
  v23 = NFSharedSignpostLog();
  if (os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "cleanup", "_NFHCESession", buf, 2u);
  }
}

- (void)_syncStartAssertionTimer:(double)a3
{
  if (!self->_emuAssertionTimer)
  {
    v6 = [NFTimer alloc];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100080C70;
    v23[3] = &unk_100315F58;
    v23[4] = self;
    v23[5] = a2;
    v7 = [(_NFSession *)self workQueue];
    v8 = [v6 initWithCallback:v23 queue:v7];
    emuAssertionTimer = self->_emuAssertionTimer;
    self->_emuAssertionTimer = v8;
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100080F30;
  v22[3] = &unk_100315F58;
  v22[4] = self;
  *&v22[5] = a3;
  os_unfair_lock_lock(&self->_lock);
  sub_100080F30(v22);
  os_unfair_lock_unlock(&self->_lock);
  [(NFTimer *)self->_emuAssertionTimer startTimer:a3];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v11 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v15 = 45;
    if (isMetaClass)
    {
      v15 = 43;
    }

    v11(5, "%c[%{public}s %{public}s]:%i Assertion timer (%{public}fs) started", v15, ClassName, Name, 140, *&a3);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
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

    v19 = object_getClassName(self);
    v20 = sel_getName(a2);
    *buf = 67110146;
    v25 = v18;
    v26 = 2082;
    v27 = v19;
    v28 = 2082;
    v29 = v20;
    v30 = 1024;
    v31 = 140;
    v32 = 2050;
    v33 = a3;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Assertion timer (%{public}fs) started", buf, 0x2Cu);
  }
}

- (BOOL)suspendWithInfo:(id)a3
{
  v10.receiver = self;
  v10.super_class = _NFHCESession;
  v4 = [(_NFXPCSession *)&v10 suspendWithInfo:a3];
  if (v4)
  {
    remoteDev = self->_remoteDev;
    self->_remoteDev = 0;

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100081090;
    v9[3] = &unk_100315F30;
    v9[4] = self;
    os_unfair_lock_lock(&self->_lock);
    sub_100081090(v9);
    os_unfair_lock_unlock(&self->_lock);
    sub_10000AA98(self->_hceCALogger);
    v6 = sub_1001AE20C();
    sub_1001AEDB0(v6, v7);
  }

  return v4;
}

- (BOOL)resume
{
  v5.receiver = self;
  v5.super_class = _NFHCESession;
  v3 = [(_NFXPCSession *)&v5 resume];
  if (v3)
  {
    sub_10000AA28(self->_hceCALogger);
  }

  return v3;
}

- (id)_routingConfigWithECPBroadcastInHCE
{
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = _NSConcreteStackBlock;
  v33 = 3221225472;
  v34 = sub_100081798;
  v35 = &unk_1003161D8;
  v36 = self;
  v37 = &v38;
  os_unfair_lock_lock(&self->_lock);
  sub_100081798(&v32);
  os_unfair_lock_unlock(&self->_lock);
  if ((v39[3] & 1) == 0)
  {
    v4 = [(_NFHCESession *)self ecpBroadcastConfig];
    if (v4)
    {
      v5 = v4[3];

      if (v5)
      {
        v6 = [(_NFHCESession *)self ecpBroadcastConfig];
        if (v6)
        {
          LODWORD(v7) = v6[3];
          v8 = v7;
        }

        else
        {
          v8 = 0.0;
        }

        v9 = v8 / 1000.0;

        [(_NFHCESession *)self _syncStartAssertionTimer:v9];
      }
    }
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v11 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v15 = 45;
    if (isMetaClass)
    {
      v15 = 43;
    }

    v11(6, "%c[%{public}s %{public}s]:%i ECP broadcast in HCE enabled", v15, ClassName, Name, 208, v32, v33);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
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

    v19 = object_getClassName(self);
    v20 = sel_getName(a2);
    *buf = 67109890;
    v43 = v18;
    v44 = 2082;
    v45 = v19;
    v46 = 2082;
    v47 = v20;
    v48 = 1024;
    v49 = 208;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ECP broadcast in HCE enabled", buf, 0x22u);
  }

  v21 = [(_NFHCESession *)self emulationOnSessionStart];
  v22 = [(_NFHCESession *)self ecpBroadcastConfig];
  v23 = v22;
  if (v22)
  {
    v24 = *(v22 + 16);
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  v26 = [(_NFHCESession *)self ecpBroadcastConfig];
  v27 = v26;
  if (v26)
  {
    v28 = *(v26 + 8);
  }

  else
  {
    v28 = 0;
  }

  v29 = sub_100081164(self, v21, v25, v28);

  _Block_object_dispose(&v38, 8);

  return v29;
}

- (id)initialRoutingConfigWithField:(id)a3
{
  v5 = a3;
  v6 = [(_NFHCESession *)self ecpBroadcastConfig];

  if (!v6)
  {
    v31 = sub_100081164(self, [(_NFHCESession *)self emulationOnSessionStart], 0, 0);
    goto LABEL_50;
  }

  v7 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm"];
  v8 = [v7 objectForKey:@"disableECPBroadcastInHCE"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 BOOLValue];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v11(6, "%c[%{public}s %{public}s]:%i disableECPBroadcastInHCE override=%d", v14, ClassName, Name, 229, v9);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
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
      *buf = 67110146;
      v65 = v17;
      v66 = 2082;
      v67 = v18;
      v68 = 2082;
      v69 = v19;
      v70 = 1024;
      v71 = 229;
      v72 = 1024;
      v73 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i disableECPBroadcastInHCE override=%d", buf, 0x28u);
    }

    if (v9)
    {
      goto LABEL_26;
    }
  }

  v20 = [(_NFHCESession *)self ecpBroadcastConfig];
  if (v20)
  {
    v21 = v20[3];

    if (v21)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v22 = [(_NFHCESession *)self ecpBroadcastConfig];
      v23 = v22;
      if (v22)
      {
        v24 = *(v22 + 24);
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;

      v26 = [v25 countByEnumeratingWithState:&v59 objects:v63 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v60;
        while (2)
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v60 != v28)
            {
              objc_enumerationMutation(v25);
            }

            if ([*(*(&v59 + 1) + 8 * i) isEqual:v5])
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v32 = NFLogGetLogger();
              if (v32)
              {
                v33 = v32;
                v34 = object_getClass(self);
                v35 = class_isMetaClass(v34);
                v36 = object_getClassName(self);
                v57 = sel_getName(a2);
                v37 = 45;
                if (v35)
                {
                  v37 = 43;
                }

                v33(6, "%c[%{public}s %{public}s]:%i Broadcast field matches", v37, v36, v57, 241);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v38 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                v39 = object_getClass(self);
                if (class_isMetaClass(v39))
                {
                  v40 = 43;
                }

                else
                {
                  v40 = 45;
                }

                v41 = object_getClassName(self);
                v42 = sel_getName(a2);
                *buf = 67109890;
                v65 = v40;
                v66 = 2082;
                v67 = v41;
                v68 = 2082;
                v69 = v42;
                v70 = 1024;
                v71 = 241;
                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Broadcast field matches", buf, 0x22u);
              }

              v31 = [(_NFHCESession *)self _routingConfigWithECPBroadcastInHCE];

              goto LABEL_49;
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v59 objects:v63 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }
      }

LABEL_26:
      v30 = sub_100081164(self, [(_NFHCESession *)self emulationOnSessionStart], 0, 0);
      goto LABEL_48;
    }
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v43 = NFLogGetLogger();
  if (v43)
  {
    v44 = v43;
    v45 = object_getClass(self);
    v46 = class_isMetaClass(v45);
    v47 = object_getClassName(self);
    v58 = sel_getName(a2);
    v48 = 45;
    if (v46)
    {
      v48 = 43;
    }

    v44(6, "%c[%{public}s %{public}s]:%i Broadcast field match rules unavailable", v48, v47, v58, 235);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v49 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v50 = object_getClass(self);
    if (class_isMetaClass(v50))
    {
      v51 = 43;
    }

    else
    {
      v51 = 45;
    }

    v52 = object_getClassName(self);
    v53 = sel_getName(a2);
    *buf = 67109890;
    v65 = v51;
    v66 = 2082;
    v67 = v52;
    v68 = 2082;
    v69 = v53;
    v70 = 1024;
    v71 = 235;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Broadcast field match rules unavailable", buf, 0x22u);
  }

  v30 = [(_NFHCESession *)self _routingConfigWithECPBroadcastInHCE];
LABEL_48:
  v31 = v30;
LABEL_49:

LABEL_50:

  return v31;
}

- (id)initialRoutingConfig
{
  v3 = [(_NFHCESession *)self emulationOnSessionStart];
  v4 = [(_NFHCESession *)self ecpBroadcastConfig];
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 16);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [(_NFHCESession *)self ecpBroadcastConfig];
  v9 = v8;
  if (v8)
  {
    v10 = *(v8 + 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_100081164(self, v3, v7, v10);

  return v11;
}

- (id)initialECPConfig
{
  v3 = [(_NFHCESession *)self ecpBroadcastConfig];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if ([v6 length])
  {
    v7 = [(_NFHCESession *)self ecpBroadcastConfig];
    v8 = v7;
    if (v7)
    {
      v9 = *(v7 + 16);
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)willStartSession
{
  sub_10026449C();
  v4.receiver = self;
  v4.super_class = _NFHCESession;
  return [(_NFSession *)&v4 willStartSession];
}

- (void)endSession:(id)a3
{
  v3.receiver = self;
  v3.super_class = _NFHCESession;
  [(_NFXPCSession *)&v3 endSession:a3];
}

- (void)prioritizeSession:(id)a3
{
  v3.receiver = self;
  v3.super_class = _NFHCESession;
  [(_NFXPCSession *)&v3 prioritizeSessionWithCompletion:a3];
}

- (void)didStartSession:(id)a3
{
  v11.receiver = self;
  v11.super_class = _NFHCESession;
  v4 = a3;
  [(_NFXPCSession *)&v11 didStartSession:v4];
  v5 = [(_NFXPCSession *)self remoteObject];
  [v5 didStartSession:v4];

  if (!v4)
  {
    remoteDev = self->_remoteDev;
    self->_remoteDev = 0;

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000820D4;
    v10[3] = &unk_100315F30;
    v10[4] = self;
    os_unfair_lock_lock(&self->_lock);
    sub_1000820D4(v10);
    os_unfair_lock_unlock(&self->_lock);
    v7 = objc_alloc_init(NFHceTagReadCALogger);
    hceCALogger = self->_hceCALogger;
    self->_hceCALogger = v7;

    sub_10000AA28(self->_hceCALogger);
    if (([(_NFSession *)self backgroundTagReadEcpOption]& 1) != 0)
    {
      v9 = self->_hceCALogger;
      if (v9)
      {
        v9->_isConnectionHandover = 1;
      }
    }
  }
}

- (void)didEndSession:(id)a3
{
  v5 = a3;
  if (![(_NFSession *)self didEnd])
  {
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

      v7(6, "%c[%{public}s %{public}s]:%i NFC emulation mode terminated: %@", v13, ClassName, Name, 312, v12);
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
      v29 = 312;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC emulation mode terminated: %@", buf, 0x2Cu);
    }

    sub_10000A778(self->_hceCALogger);
    sub_10000AA98(self->_hceCALogger);
    hceCALogger = self->_hceCALogger;
    self->_hceCALogger = 0;
  }

  v21.receiver = self;
  v21.super_class = _NFHCESession;
  [(_NFSession *)&v21 didEndSession:v5];
}

- (void)stopEmulationAndConfigWithRouting:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_initWeak(&location, self);
  v16.receiver = self;
  v16.super_class = _NFHCESession;
  v9 = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100082528;
  v12[3] = &unk_100317298;
  objc_copyWeak(v15, &location);
  v15[1] = a2;
  v13 = v7;
  v14 = v8;
  v12[4] = self;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

- (void)handleHostCardReaderDetected:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_remoteDev, a3);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100082CD8;
  v13[3] = &unk_100315F30;
  v13[4] = self;
  os_unfair_lock_lock(&self->_lock);
  sub_100082CD8(v13);
  os_unfair_lock_unlock(&self->_lock);
  v7 = NFSharedSignpostLog();
  if (os_signpost_enabled(v7))
  {
    v8 = [(_NFHCESession *)self readOnConnected];
    *buf = 67240192;
    v15 = v8;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_READER_DETECTED", "readOnConnected=%{public,signpost.description:attribute}d", buf, 8u);
  }

  v9 = [(_NFXPCSession *)self remoteObject];
  [v9 didConnectToReader];

  v10 = sub_1001AE20C();
  sub_1001AF828(v10, v11);
  sub_10000A684(self->_hceCALogger);
  if ([(_NFHCESession *)self readOnConnected])
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100082CF0;
    v12[3] = &unk_1003172C0;
    v12[4] = self;
    v12[5] = a2;
    [(_NFHCESession *)self _asyncReadWithCompletion:v12];
  }
}

- (void)handleFieldNotification:(id)a3
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

    v7(6, "%c[%{public}s %{public}s]:%i %@", v10, ClassName, Name, 398, v5);
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
    v20 = v13;
    v21 = 2082;
    v22 = object_getClassName(self);
    v23 = 2082;
    v24 = sel_getName(a2);
    v25 = 1024;
    v26 = 398;
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %@", buf, 0x2Cu);
  }

  v14 = NFSharedSignpostLog();
  if (os_signpost_enabled(v14))
  {
    v15 = [(_NFHCESession *)self emulationOnSessionStart];
    *buf = 67240192;
    v20 = v15;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_FIELD_NTF", "emulationOnSessionStart=%{public,signpost.description:attribute}d", buf, 8u);
  }

  v16 = [(_NFXPCSession *)self remoteObject];
  [v16 didReceiveField:v5];
}

- (void)_didLoseTarget:(BOOL)a3 suspendAssertion:(BOOL)a4
{
  if (a3)
  {
    v7 = [(_NFXPCSession *)self remoteObject];
    [v7 didDisconnectFromReader];

    v8 = NFSharedSignpostLog();
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_TARGET_LOST", "onRFStateChange", buf, 2u);
    }
  }

  v9 = sub_1001AE20C();
  sub_1001AEDB0(v9, v10);
  if ([(_NFHCESession *)self suspendOnDisconnect]&& !a4 && ![(_NFSession *)self isSuspended])
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

      v12(6, "%c[%{public}s %{public}s]:%i Suspending", v16, ClassName, Name, 421);
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
      *buf = 67109890;
      v25 = v19;
      v26 = 2082;
      v27 = v20;
      v28 = 2082;
      v29 = v21;
      v30 = 1024;
      v31 = 421;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Suspending", buf, 0x22u);
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100083378;
    v23[3] = &unk_1003172C0;
    v23[4] = self;
    v23[5] = a2;
    [(_NFXPCSession *)self createHandoffTokenWithCompletion:v23];
  }
}

- (void)handleFieldChanged:(BOOL)a3
{
  if (!a3)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10008365C;
    v4[3] = &unk_1003172E8;
    v4[4] = self;
    v4[5] = &v9;
    v4[6] = &v5;
    os_unfair_lock_lock(&self->_lock);
    sub_10008365C(v4);
    os_unfair_lock_unlock(&self->_lock);
    [(_NFHCESession *)self _didLoseTarget:*(v10 + 24) suspendAssertion:*(v6 + 24)];
    _Block_object_dispose(&v5, 8);
    _Block_object_dispose(&v9, 8);
  }
}

- (void)handleHceTargetLost
{
  remoteDev = self->_remoteDev;
  self->_remoteDev = 0;

  v4 = NFSharedSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_TARGET_LOST", &unk_1002E8B7A, buf, 2u);
  }

  *buf = 0;
  v11 = buf;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100083820;
  v5[3] = &unk_1003172E8;
  v5[4] = self;
  v5[5] = buf;
  v5[6] = &v6;
  os_unfair_lock_lock(&self->_lock);
  sub_100083820(v5);
  os_unfair_lock_unlock(&self->_lock);
  [(_NFHCESession *)self _didLoseTarget:v11[24] suspendAssertion:*(v7 + 24)];
  sub_10000A778(self->_hceCALogger);
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(buf, 8);
}

- (void)_syncStartEmulationWithCompletion:(id)a3
{
  v5 = a3;
  if ([(_NFSession *)self didStart]&& ![(_NFSession *)self isSuspended]&& ![(_NFSession *)self didEnd])
  {
    kdebug_trace();
    v25 = NFSharedSignpostLog();
    if (os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_START_EMULATION", &unk_1002E8B7A, buf, 2u);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v27 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v32 = [(_NFXPCSession *)self clientName];
      v33 = 45;
      if (isMetaClass)
      {
        v33 = 43;
      }

      v27(6, "%c[%{public}s %{public}s]:%i %{public}@", v33, ClassName, Name, 486, v32);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v34 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = object_getClass(self);
      if (class_isMetaClass(v35))
      {
        v36 = 43;
      }

      else
      {
        v36 = 45;
      }

      v37 = object_getClassName(self);
      v38 = sel_getName(a2);
      v39 = [(_NFXPCSession *)self clientName];
      *buf = 67110146;
      v59 = v36;
      v60 = 2082;
      v61 = v37;
      v62 = 2082;
      v63 = v38;
      v64 = 1024;
      v65 = 486;
      v66 = 2114;
      v67 = v39;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
    }

    v40 = +[_NFHardwareManager sharedHardwareManager];
    v41 = sub_10004BD70();
    v42 = [v40 setRoutingConfig:v41];

    if (v5)
    {
      v5[2](v5, 0);
    }

    v43 = NFLogGetLogger();
    if (v43)
    {
      v44 = v43;
      v45 = object_getClass(self);
      v46 = class_isMetaClass(v45);
      v47 = object_getClassName(self);
      v48 = sel_getName(a2);
      v49 = [(_NFXPCSession *)self clientName];
      v50 = 45;
      if (v46)
      {
        v50 = 43;
      }

      v44(6, "%c[%{public}s %{public}s]:%i NFC emulation mode activated: %@", v50, v47, v48, 491, v49);
    }

    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v51 = object_getClass(self);
      if (class_isMetaClass(v51))
      {
        v52 = 43;
      }

      else
      {
        v52 = 45;
      }

      v53 = object_getClassName(self);
      v54 = sel_getName(a2);
      v55 = [(_NFXPCSession *)self clientName];
      *buf = 67110146;
      v59 = v52;
      v60 = 2082;
      v61 = v53;
      v62 = 2082;
      v63 = v54;
      v64 = 1024;
      v65 = 491;
      v66 = 2112;
      v67 = v55;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC emulation mode activated: %@", buf, 0x2Cu);
    }

    goto LABEL_15;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v6 = NFLogGetLogger();
  if (v6)
  {
    v7 = v6;
    v8 = object_getClass(self);
    v9 = class_isMetaClass(v8);
    v10 = object_getClassName(self);
    v11 = sel_getName(a2);
    v12 = [(_NFSession *)self sessionUID];
    v13 = 45;
    if (v9)
    {
      v13 = 43;
    }

    v7(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v13, v10, v11, 482, v12);
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
    v59 = v16;
    v60 = 2082;
    v61 = v17;
    v62 = 2082;
    v63 = v18;
    v64 = 1024;
    v65 = 482;
    v66 = 2114;
    v67 = v19;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  if (v5)
  {
    v20 = [NSError alloc];
    v21 = [NSString stringWithUTF8String:"nfcd"];
    v56 = NSLocalizedDescriptionKey;
    v22 = [NSString stringWithUTF8String:"Session not active"];
    v57 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v24 = [v20 initWithDomain:v21 code:54 userInfo:v23];
    (v5)[2](v5, v24);

LABEL_15:
  }
}

- (void)startEmulationWithCompletion:(id)a3
{
  v4 = a3;
  kdebug_trace();
  v5 = NFSharedSignpostLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_START_EMULATION_XPC", &unk_1002E8B7A, buf, 2u);
  }

  v10.receiver = self;
  v10.super_class = _NFHCESession;
  v6 = [(_NFSession *)&v10 workQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100083FD0;
  v8[3] = &unk_100316700;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)stopEmulationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_10004C144();
  [(_NFHCESession *)self stopEmulationAndConfigWithRouting:v5 completion:v4];
}

- (void)sendAPDU:(id)a3 startReadOnCompletion:(BOOL)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _NFHCESession;
  v11 = [(_NFSession *)&v19 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084154;
  block[3] = &unk_100317360;
  block[4] = self;
  v15 = v9;
  v16 = v10;
  v17 = a2;
  v18 = a4;
  v12 = v10;
  v13 = v9;
  dispatch_async(v11, block);
}

- (void)readAPDUWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFHCESession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000851DC;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)asyncReadAPDUWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFHCESession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100085B94;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)_asyncReadWithCompletion:(id)a3
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

      v7(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v13, ClassName, Name, 652, v12);
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
      v34 = v16;
      v35 = 2082;
      v36 = v17;
      v37 = 2082;
      v38 = v18;
      v39 = 1024;
      v40 = 652;
      v41 = 2114;
      v42 = v19;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    if (v5)
    {
      v20 = [NSError alloc];
      v21 = [NSString stringWithUTF8String:"nfcd"];
      v31 = NSLocalizedDescriptionKey;
      v22 = [NSString stringWithUTF8String:"Session not active"];
      v32 = v22;
      v23 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v24 = [v20 initWithDomain:v21 code:54 userInfo:v23];
      v5[2](v5, 0, v24);
    }
  }

  else
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000863CC;
    v30[3] = &unk_100317310;
    v30[4] = self;
    os_unfair_lock_lock(&self->_lock);
    v25 = sub_1000863CC(v30);
    os_unfair_lock_unlock(&self->_lock);
    if (v25)
    {
      v5[2](v5, 0, v25);
      sub_10000A6F0(self->_hceCALogger, v25);
    }

    else
    {
      v26 = NFSharedSignpostLog();
      if (os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_READ", &unk_1002E8B7A, buf, 2u);
      }

      remoteDev = self->_remoteDev;
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1000864FC;
      v28[3] = &unk_1003173B0;
      v28[4] = self;
      v29 = v5;
      [(NFHostCardEmulationDeviceHandle *)remoteDev readAPDUWithCompletion:v28];
    }
  }
}

- (void)requestEmulationAssertion:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = _NFHCESession;
  v9 = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100086950;
  v12[3] = &unk_1003165E8;
  v14 = v8;
  v15 = a2;
  v12[4] = self;
  v13 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

- (void)resumeSessionFromWaitingOnFieldWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFHCESession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000877FC;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)restartDiscovery
{
  v6.receiver = self;
  v6.super_class = _NFHCESession;
  v4 = [(_NFSession *)&v6 workQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100087C7C;
  v5[3] = &unk_100315F58;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(v4, v5);
}

@end