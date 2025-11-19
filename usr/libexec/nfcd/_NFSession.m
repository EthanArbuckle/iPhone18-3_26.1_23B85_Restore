@interface _NFSession
- (BOOL)didEnd;
- (BOOL)holdAssertion;
- (BOOL)isEnding;
- (BOOL)isFeatureSupported:(unint64_t)a3;
- (BOOL)needsCleanup;
- (BOOL)resume;
- (BOOL)suspendWithInfo:(id)a3;
- (BOOL)willStartSession;
- (_NFSession)initWithWorkQueue:(id)a3 allowsBackgroundMode:(BOOL)a4;
- (id)powerAssertionIdentifier;
- (void)_checkSessionDuration;
- (void)_internalEndSessionWithDequeue:(BOOL)a3 completion:(id)a4;
- (void)activateWithToken:(id)a3 completion:(id)a4;
- (void)createHandoffTokenWithCompletion:(id)a3;
- (void)dealloc;
- (void)didEndSession:(id)a3;
- (void)didStartSession:(id)a3;
- (void)endSession:(id)a3;
- (void)handleSecureElementTransactionData:(id)a3 appletIdentifier:(id)a4;
- (void)prioritizeSessionWithCompletion:(id)a3;
- (void)releaseAssertion;
- (void)setCustomSessionName:(id)a3;
@end

@implementation _NFSession

- (_NFSession)initWithWorkQueue:(id)a3 allowsBackgroundMode:(BOOL)a4
{
  v6 = a3;
  v20.receiver = self;
  v20.super_class = _NFSession;
  v7 = [(_NFSession *)&v20 init];
  v8 = v7;
  if (v7)
  {
    v7->_workQueue = v6;
    v7->_isEnding = 0;
    v7->_allowsBackgroundMode = a4;
    v9 = +[NSDate now];
    creation = v8->_creation;
    v8->_creation = v9;

    v11 = [NSString alloc];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = +[NSDate now];
    [v14 timeIntervalSince1970];
    v16 = [v11 initWithFormat:@"%@-%lf", v13, v15];
    sessionUID = v8->_sessionUID;
    v8->_sessionUID = v16;

    v18 = NFSharedSignpostLog();
    v8->_signpostId = os_signpost_id_generate(v18);

    v8->_serviceType = 1;
  }

  return v8;
}

- (void)setCustomSessionName:(id)a3
{
  if (!self->_didStart)
  {
    v5 = a3;
    v6 = [NSString alloc];
    v7 = objc_opt_class();
    v12 = NSStringFromClass(v7);
    v8 = +[NSDate now];
    [v8 timeIntervalSince1970];
    v10 = [v6 initWithFormat:@"%@-%@-%lf", v12, v5, v9];

    sessionUID = self->_sessionUID;
    self->_sessionUID = v10;
  }
}

- (void)dealloc
{
  [(_NFSession *)self releaseObjects];
  v3.receiver = self;
  v3.super_class = _NFSession;
  [(_NFSession *)&v3 dealloc];
}

- (void)_checkSessionDuration
{
  if (self->_didStart && !self->_didEnd)
  {
    v4 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
    v5 = v4;
    if (v4)
    {
      v6 = v4 - self->_startTime;
    }

    else
    {
      v6 = 0;
    }

    v7 = [(_NFSession *)self expectedDurationInNS];
    v8 = [(_NFSession *)self clientName];
    if (v5 && v6 > v7)
    {
      v9 = [[NSString alloc] initWithFormat:@"Client=%@, PID=%d, TotalDuration=%llu", v8, -[_NFSession processIdentifier](self, "processIdentifier"), v6];
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

        v11(4, "%c[%{public}s %{public}s]:%i [ABC] %{public}@, %{public}@", v15, ClassName, Name, 102, @"Session duration exceeded expectation", v9);
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

        *buf = 67110402;
        v25 = v18;
        v26 = 2082;
        v27 = object_getClassName(self);
        v28 = 2082;
        v29 = sel_getName(a2);
        v30 = 1024;
        v31 = 102;
        v32 = 2114;
        v33 = @"Session duration exceeded expectation";
        v34 = 2114;
        v35 = v9;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i [ABC] %{public}@, %{public}@", buf, 0x36u);
      }

      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10003FE88;
      v21[3] = &unk_100316028;
      v22 = @"Session duration exceeded expectation";
      v23 = v9;
      v19 = v9;
      sub_100199548(NFBugCapture, @"Session timeout", @"Session duration exceeded expectation", v19, 0, v21);
    }
  }
}

- (BOOL)isEnding
{
  v2 = self;
  objc_sync_enter(v2);
  isEnding = v2->_isEnding;
  objc_sync_exit(v2);

  return isEnding;
}

- (BOOL)didEnd
{
  v2 = self;
  objc_sync_enter(v2);
  didEnd = v2->_didEnd;
  objc_sync_exit(v2);

  return didEnd;
}

- (BOOL)holdAssertion
{
  if (self->_hasAssertion)
  {
    return 1;
  }

  v4 = +[NFPowerAssertion sharedPowerAssertion];
  v5 = [(_NFSession *)self powerAssertionIdentifier];
  v2 = 1;
  v6 = [v4 holdPowerAssertion:v5 onBehalfOf:-[_NFSession processIdentifier](self behaviourWhenSleepStarted:{"processIdentifier"), 1}];

  if (!v6)
  {
    return 0;
  }

  self->_hasAssertion = 1;
  return v2;
}

- (void)releaseAssertion
{
  if (self->_hasAssertion)
  {
    v3 = +[NFPowerAssertion sharedPowerAssertion];
    v4 = [(_NFSession *)self powerAssertionIdentifier];
    [v3 releasePowerAssertion:v4];

    self->_hasAssertion = 0;
  }
}

- (BOOL)suspendWithInfo:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v7 = [v5 NF_numberForKey:@"ReasonCode"];
  v8 = v7;
  if (!v7)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v21 = Logger;
      Class = object_getClass(v6);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v6);
      Name = sel_getName(a2);
      v25 = 45;
      if (isMetaClass)
      {
        v25 = 43;
      }

      v21(3, "%c[%{public}s %{public}s]:%i Missing reason code", v25, ClassName, Name, 163);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }

    v26 = object_getClass(v6);
    if (class_isMetaClass(v26))
    {
      v27 = 43;
    }

    else
    {
      v27 = 45;
    }

    *buf = 67109890;
    v64 = v27;
    v65 = 2082;
    v66 = object_getClassName(v6);
    v67 = 2082;
    v68 = sel_getName(a2);
    v69 = 1024;
    v70 = 163;
    v19 = "%c[%{public}s %{public}s]:%i Missing reason code";
    goto LABEL_53;
  }

  if ([v7 integerValue])
  {
    if ([v8 integerValue] == 2)
    {
      v9 = [v5 objectForKey:@"Field"];

      if (!v9)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v10 = NFLogGetLogger();
        if (v10)
        {
          v11 = v10;
          v12 = object_getClass(v6);
          v13 = class_isMetaClass(v12);
          v14 = object_getClassName(v6);
          v59 = sel_getName(a2);
          v15 = 45;
          if (v13)
          {
            v15 = 43;
          }

          v11(3, "%c[%{public}s %{public}s]:%i Missing field", v15, v14, v59, 175);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v16 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_54;
        }

        v17 = object_getClass(v6);
        if (class_isMetaClass(v17))
        {
          v18 = 43;
        }

        else
        {
          v18 = 45;
        }

        *buf = 67109890;
        v64 = v18;
        v65 = 2082;
        v66 = object_getClassName(v6);
        v67 = 2082;
        v68 = sel_getName(a2);
        v69 = 1024;
        v70 = 175;
        v19 = "%c[%{public}s %{public}s]:%i Missing field";
LABEL_53:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v19, buf, 0x22u);
LABEL_54:

        v49 = 0;
        goto LABEL_55;
      }
    }
  }

  else if (!v6->_token)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v50 = NFLogGetLogger();
    if (v50)
    {
      v51 = v50;
      v52 = object_getClass(v6);
      v53 = class_isMetaClass(v52);
      v54 = object_getClassName(v6);
      v62 = sel_getName(a2);
      v55 = 45;
      if (v53)
      {
        v55 = 43;
      }

      v51(3, "%c[%{public}s %{public}s]:%i Missing token", v55, v54, v62, 169);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }

    v56 = object_getClass(v6);
    if (class_isMetaClass(v56))
    {
      v57 = 43;
    }

    else
    {
      v57 = 45;
    }

    *buf = 67109890;
    v64 = v57;
    v65 = 2082;
    v66 = object_getClassName(v6);
    v67 = 2082;
    v68 = sel_getName(a2);
    v69 = 1024;
    v70 = 169;
    v19 = "%c[%{public}s %{public}s]:%i Missing token";
    goto LABEL_53;
  }

  isSuspended = v6->_isSuspended;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v29 = NFLogGetLogger();
  v30 = v29;
  if (isSuspended)
  {
    if (v29)
    {
      v31 = object_getClass(v6);
      v32 = class_isMetaClass(v31);
      v33 = object_getClassName(v6);
      v61 = sel_getName(a2);
      v34 = 45;
      if (v32)
      {
        v34 = 43;
      }

      v30(4, "%c[%{public}s %{public}s]:%i Already in suspended state", v34, v33, v61, 181);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }

    v35 = object_getClass(v6);
    if (class_isMetaClass(v35))
    {
      v36 = 43;
    }

    else
    {
      v36 = 45;
    }

    *buf = 67109890;
    v64 = v36;
    v65 = 2082;
    v66 = object_getClassName(v6);
    v67 = 2082;
    v68 = sel_getName(a2);
    v69 = 1024;
    v70 = 181;
    v19 = "%c[%{public}s %{public}s]:%i Already in suspended state";
    goto LABEL_53;
  }

  if (v29)
  {
    v37 = object_getClass(v6);
    v38 = class_isMetaClass(v37);
    v39 = object_getClassName(v6);
    v40 = sel_getName(a2);
    v41 = 45;
    if (v38)
    {
      v41 = 43;
    }

    v30(6, "%c[%{public}s %{public}s]:%i Suspending session %{public}@ using token %{public}@", v41, v39, v40, 185, v6->_sessionUID, v6->_token);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v42 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = object_getClass(v6);
    if (class_isMetaClass(v43))
    {
      v44 = 43;
    }

    else
    {
      v44 = 45;
    }

    v45 = object_getClassName(v6);
    v46 = sel_getName(a2);
    sessionUID = v6->_sessionUID;
    token = v6->_token;
    *buf = 67110402;
    v64 = v44;
    v65 = 2082;
    v66 = v45;
    v67 = 2082;
    v68 = v46;
    v69 = 1024;
    v70 = 185;
    v71 = 2114;
    v72 = sessionUID;
    v73 = 2114;
    v74 = token;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Suspending session %{public}@ using token %{public}@", buf, 0x36u);
  }

  v49 = 1;
  v6->_isSuspended = 1;
  [(_NFSession *)v6 _checkSessionDuration];
  [(_NFSession *)v6 releaseAssertion];
LABEL_55:

  objc_sync_exit(v6);
  return v49;
}

- (BOOL)resume
{
  v4 = [(_NFSession *)self holdAssertion];
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(v5);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v5);
      Name = sel_getName(a2);
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i Resuming session %{public}@", v12, ClassName, Name, 203, v5->_sessionUID);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = object_getClass(v5);
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      v16 = object_getClassName(v5);
      v17 = sel_getName(a2);
      sessionUID = v5->_sessionUID;
      *buf = 67110146;
      v31 = v15;
      v32 = 2082;
      v33 = v16;
      v34 = 2082;
      v35 = v17;
      v36 = 1024;
      v37 = 203;
      v38 = 2114;
      v39 = sessionUID;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Resuming session %{public}@", buf, 0x2Cu);
    }

    v5->_isSuspended = 0;
    token = v5->_token;
    v5->_token = 0;

    v5->_startTime = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
    objc_sync_exit(v5);
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
      v29 = sel_getName(a2);
      v25 = 45;
      if (v23)
      {
        v25 = 43;
      }

      v21(3, "%c[%{public}s %{public}s]:%i Failed to hold assertion", v25, v24, v29, 198);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
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

      *buf = 67109890;
      v31 = v27;
      v32 = 2082;
      v33 = object_getClassName(self);
      v34 = 2082;
      v35 = sel_getName(a2);
      v36 = 1024;
      v37 = 198;
      _os_log_impl(&_mh_execute_header, &v5->super, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to hold assertion", buf, 0x22u);
    }
  }

  return v4;
}

- (void)handleSecureElementTransactionData:(id)a3 appletIdentifier:(id)a4
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
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v7(3, "%c[%{public}s %{public}s]:%i Unimplemented", v11, ClassName, Name, 218);
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

    *buf = 67109890;
    v17 = v14;
    v18 = 2082;
    v19 = object_getClassName(self);
    v20 = 2082;
    v21 = sel_getName(a2);
    v22 = 1024;
    v23 = 218;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unimplemented", buf, 0x22u);
  }
}

- (id)powerAssertionIdentifier
{
  v3 = [(_NFSession *)self clientName];
  v4 = v3;
  if (!v3 || ![(__CFString *)v3 length])
  {

    v4 = @"unavailable";
  }

  v5 = [[NSString alloc] initWithFormat:@"process:%@, %s, sessionID:%d", v4, object_getClassName(self), self->_sessionID];

  return v5;
}

- (BOOL)isFeatureSupported:(unint64_t)a3
{
  if (a3)
  {
    v4 = a3;
    if ((a3 & 1) == 0)
    {
      v5 = 1;
      if ((a3 & 2) == 0)
      {
        return v5;
      }

      goto LABEL_16;
    }

    v5 = [(_NFSession *)self allowsBackgroundMode];
    if ((v4 & 2) != 0)
    {
LABEL_16:
      v5 &= [(_NFSession *)self forceExpressExit];
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v8(3, "%c[%{public}s %{public}s]:%i Invalid input", v12, ClassName, Name, 254);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = object_getClass(self);
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      *buf = 67109890;
      v19 = v15;
      v20 = 2082;
      v21 = object_getClassName(self);
      v22 = 2082;
      v23 = sel_getName(a2);
      v24 = 1024;
      v25 = 254;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid input", buf, 0x22u);
    }

    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)needsCleanup
{
  v3 = [(_NFSession *)self didStart];
  if (v3)
  {
    LOBYTE(v3) = ![(_NFSession *)self didEnd];
  }

  return v3;
}

- (void)didEndSession:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  if (v6->_didEnd)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(v6);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v6);
      Name = sel_getName(a2);
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v8(4, "%c[%{public}s %{public}s]:%i Session has ended previously", v12, ClassName, Name, 289);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = object_getClass(v6);
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      *buf = 67109890;
      *v39 = v15;
      *&v39[4] = 2082;
      *&v39[6] = object_getClassName(v6);
      *&v39[14] = 2082;
      *&v39[16] = sel_getName(a2);
      v40 = 1024;
      v41 = 289;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session has ended previously", buf, 0x22u);
    }

    objc_sync_exit(v6);
LABEL_12:

    goto LABEL_26;
  }

  objc_sync_exit(v6);

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFLogGetLogger();
  if (v16)
  {
    v17 = v16;
    v18 = object_getClass(v6);
    v19 = class_isMetaClass(v18);
    v20 = object_getClassName(v6);
    v21 = sel_getName(a2);
    v22 = [(_NFSession *)v6 clientName];
    v37 = [(_NFSession *)v6 processIdentifier];
    v23 = 43;
    if (!v19)
    {
      v23 = 45;
    }

    v17(6, "%c[%{public}s %{public}s]:%i %{public}@ (%d) ended %{public}@", v23, v20, v21, 294, v22, v37, v6->_sessionUID);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v24 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = object_getClass(v6);
    if (class_isMetaClass(v25))
    {
      v26 = 43;
    }

    else
    {
      v26 = 45;
    }

    v27 = object_getClassName(v6);
    v28 = sel_getName(a2);
    v29 = [(_NFSession *)v6 clientName];
    v30 = [(_NFSession *)v6 processIdentifier];
    sessionUID = v6->_sessionUID;
    *buf = 67110658;
    *v39 = v26;
    *&v39[4] = 2082;
    *&v39[6] = v27;
    *&v39[14] = 2082;
    *&v39[16] = v28;
    v40 = 1024;
    v41 = 294;
    v42 = 2114;
    v43 = v29;
    v44 = 1024;
    v45 = v30;
    v46 = 2114;
    v47 = sessionUID;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ (%d) ended %{public}@", buf, 0x3Cu);
  }

  [(_NFSession *)v6 cleanup];
  v32 = v6;
  objc_sync_enter(v32);
  v6->_didEnd = 1;
  objc_sync_exit(v32);

  if (v32->_didStart)
  {
    v6 = NFSharedSignpostLog();
    v33 = [(_NFSession *)v32 signpostId];
    if ((v33 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v34 = v33;
      if (os_signpost_enabled(&v6->super))
      {
        v35 = v32->_sessionUID;
        *buf = 138412546;
        *v39 = v35;
        *&v39[8] = 2112;
        *&v39[10] = v5;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, &v6->super, OS_SIGNPOST_INTERVAL_END, v34, "Session_Start_End_Time", "_sessionUID=%@ error=%@", buf, 0x16u);
      }
    }

    goto LABEL_12;
  }

LABEL_26:
}

- (BOOL)willStartSession
{
  v3 = NFSharedSignpostLog();
  v4 = [(_NFSession *)self signpostId];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      *v9 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_EVENT, v5, "WILL_START_SESSION", &unk_1002E8B7A, v9, 2u);
    }
  }

  v6 = +[NSDate now];
  dequeueDate = self->_dequeueDate;
  self->_dequeueDate = v6;

  if (self->_didStart)
  {
    __assert_rtn("[_NFSession willStartSession]", "_NFSession.m", 316, "_didStart == NO");
  }

  if (self->_didEnd)
  {
    __assert_rtn("[_NFSession willStartSession]", "_NFSession.m", 317, "_didEnd == NO");
  }

  return 1;
}

- (void)didStartSession:(id)a3
{
  v5 = a3;
  v6 = NFSharedSignpostLog();
  v7 = [(_NFSession *)self signpostId];
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v6))
    {
      sessionUID = self->_sessionUID;
      *buf = 138412546;
      *v35 = sessionUID;
      *&v35[8] = 2112;
      *&v35[10] = v5;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "Session_Start_End_Time", "_sessionUID=%@ error=%@", buf, 0x16u);
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
    v16 = [(_NFSession *)self clientName];
    v17 = [(_NFSession *)self processIdentifier];
    if (v5)
    {
      v18 = v5;
    }

    else
    {
      v18 = &stru_10031EA18;
    }

    v19 = 43;
    if (!isMetaClass)
    {
      v19 = 45;
    }

    v11(6, "%c[%{public}s %{public}s]:%i %{public}@ (%d) started %{public}@ ID:%d %@", v19, ClassName, Name, 326, v16, v17, self->_sessionUID, self->_sessionID, v18);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v20 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
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
    v25 = [(_NFSession *)self clientName];
    v26 = [(_NFSession *)self processIdentifier];
    v27 = self->_sessionUID;
    sessionID = self->_sessionID;
    if (v5)
    {
      v29 = v5;
    }

    else
    {
      v29 = &stru_10031EA18;
    }

    *buf = 67111170;
    *v35 = v22;
    *&v35[4] = 2082;
    *&v35[6] = v23;
    *&v35[14] = 2082;
    *&v35[16] = v24;
    v36 = 1024;
    v37 = 326;
    v38 = 2114;
    v39 = v25;
    v40 = 1024;
    v41 = v26;
    v42 = 2114;
    v43 = v27;
    v44 = 1024;
    v45 = sessionID;
    v46 = 2112;
    v47 = v29;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ (%d) started %{public}@ ID:%d %@", buf, 0x4Cu);
  }

  if (self->_didStart)
  {
    __assert_rtn("[_NFSession didStartSession:]", "_NFSession.m", 328, "_didStart == NO");
  }

  if (self->_didEnd)
  {
    __assert_rtn("[_NFSession didStartSession:]", "_NFSession.m", 329, "_didEnd == NO");
  }

  self->_didStart = 1;
  if (v5)
  {
    self->_didEnd = 1;
    v30 = NFSharedSignpostLog();
    v31 = [(_NFSession *)self signpostId];
    if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v32 = v31;
      if (os_signpost_enabled(v30))
      {
        v33 = self->_sessionUID;
        *buf = 138412546;
        *v35 = v33;
        *&v35[8] = 2112;
        *&v35[10] = v5;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_END, v32, "Session_Start_End_Time", "_sessionUID=%@ error=%@", buf, 0x16u);
      }
    }
  }

  else
  {
    self->_startTime = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  }
}

- (void)_internalEndSessionWithDequeue:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v7 = a4;
  v8 = NFSharedSignpostLog();
  v9 = [(_NFSession *)self signpostId];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, v10, "INTERNAL_END_SESSION", &unk_1002E8B7A, buf, 2u);
    }
  }

  self->_isEnding = 1;
  [(_NFSession *)self _checkSessionDuration];
  if (v4)
  {
    v11 = [(_NFSession *)self workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000418C4;
    block[3] = &unk_100316050;
    block[4] = self;
    v14 = a2;
    v13 = v7;
    dispatch_async(v11, block);
  }

  else if (v7)
  {
    v7[2](v7);
  }
}

- (void)endSession:(id)a3
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
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, v8, "END_SESSION", &unk_1002E8B7A, buf, 2u);
    }
  }

  v9 = self;
  objc_sync_enter(v9);
  if (v9->_didEnd)
  {
    objc_sync_exit(v9);

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      Class = object_getClass(v9);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v9);
      Name = sel_getName(a2);
      v15 = 45;
      if (isMetaClass)
      {
        v15 = 43;
      }

      v11(4, "%c[%{public}s %{public}s]:%i Already ended", v15, ClassName, Name, 379);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = object_getClass(v9);
      if (class_isMetaClass(v17))
      {
        v18 = 43;
      }

      else
      {
        v18 = 45;
      }

      v19 = object_getClassName(v9);
      v20 = sel_getName(a2);
      *buf = 67109890;
      v23 = v18;
      v24 = 2082;
      v25 = v19;
      v26 = 2082;
      v27 = v20;
      v28 = 1024;
      v29 = 379;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Already ended", buf, 0x22u);
    }

    if (v5)
    {
      v5[2](v5);
    }
  }

  else
  {
    [(_NFSession *)v9 _internalEndSessionWithDequeue:1 completion:v5];
    objc_sync_exit(v9);
  }
}

- (void)prioritizeSessionWithCompletion:(id)a3
{
  v5 = a3;
  v6 = [(_NFSession *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041ED8;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)activateWithToken:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(_NFSession *)self workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000422D8;
  v12[3] = &unk_100316078;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  v15 = a2;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, v12);
}

- (void)createHandoffTokenWithCompletion:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  if (v6->_token)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(v6);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v6);
      Name = sel_getName(a2);
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v8(3, "%c[%{public}s %{public}s]:%i Token already exists.", v12, ClassName, Name, 413);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = object_getClass(v6);
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      *buf = 67109890;
      v53 = v15;
      v54 = 2082;
      v55 = object_getClassName(v6);
      v56 = 2082;
      v57 = sel_getName(a2);
      v58 = 1024;
      v59 = 413;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Token already exists.", buf, 0x22u);
    }

    v16 = [NSError alloc];
    v17 = [NSString stringWithUTF8String:"nfcd"];
    v67 = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithUTF8String:"Invalid State"];
    v68 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
    v20 = v16;
    v21 = v17;
    v22 = 12;
LABEL_25:
    v33 = [v20 initWithDomain:v21 code:v22 userInfo:v19];
    v5[2](v5, 0, v33);

    goto LABEL_26;
  }

  if (v6->_isSuspended || !v6->_didStart || v6->_didEnd)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFLogGetLogger();
    if (v23)
    {
      v24 = v23;
      v25 = object_getClass(v6);
      v26 = class_isMetaClass(v25);
      v27 = object_getClassName(v6);
      v51 = sel_getName(a2);
      v28 = 45;
      if (v26)
      {
        v28 = 43;
      }

      v24(3, "%c[%{public}s %{public}s]:%i Session not active", v28, v27, v51, 419);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = object_getClass(v6);
      if (class_isMetaClass(v30))
      {
        v31 = 43;
      }

      else
      {
        v31 = 45;
      }

      *buf = 67109890;
      v53 = v31;
      v54 = 2082;
      v55 = object_getClassName(v6);
      v56 = 2082;
      v57 = sel_getName(a2);
      v58 = 1024;
      v59 = 419;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not active", buf, 0x22u);
    }

    v32 = [NSError alloc];
    v17 = [NSString stringWithUTF8String:"nfcd"];
    v65 = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithUTF8String:"Session not active"];
    v66 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v20 = v32;
    v21 = v17;
    v22 = 54;
    goto LABEL_25;
  }

  arc4random_buf(__buf, 0x10uLL);
  v34 = [[NSData alloc] initWithBytes:__buf length:16];
  token = v6->_token;
  v6->_token = v34;

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v36 = NFLogGetLogger();
  if (v36)
  {
    v37 = v36;
    v38 = object_getClass(v6);
    v39 = class_isMetaClass(v38);
    v40 = object_getClassName(v6);
    v41 = sel_getName(a2);
    v42 = 45;
    if (v39)
    {
      v42 = 43;
    }

    v37(6, "%c[%{public}s %{public}s]:%i Session %{public}@ created token %{public}@", v42, v40, v41, 427, v6->_sessionUID, v6->_token);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v43 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = object_getClass(v6);
    if (class_isMetaClass(v44))
    {
      v45 = 43;
    }

    else
    {
      v45 = 45;
    }

    v46 = object_getClassName(v6);
    v47 = sel_getName(a2);
    sessionUID = v6->_sessionUID;
    v49 = v6->_token;
    *buf = 67110402;
    v53 = v45;
    v54 = 2082;
    v55 = v46;
    v56 = 2082;
    v57 = v47;
    v58 = 1024;
    v59 = 427;
    v60 = 2114;
    v61 = sessionUID;
    v62 = 2114;
    v63 = v49;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Session %{public}@ created token %{public}@", buf, 0x36u);
  }

  (v5)[2](v5, v6->_token, 0);
LABEL_26:
  objc_sync_exit(v6);
}

@end