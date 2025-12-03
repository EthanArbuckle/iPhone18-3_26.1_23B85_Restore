@interface _NFSession
- (BOOL)didEnd;
- (BOOL)holdAssertion;
- (BOOL)isEnding;
- (BOOL)isFeatureSupported:(unint64_t)supported;
- (BOOL)needsCleanup;
- (BOOL)resume;
- (BOOL)suspendWithInfo:(id)info;
- (BOOL)willStartSession;
- (_NFSession)initWithWorkQueue:(id)queue allowsBackgroundMode:(BOOL)mode;
- (id)powerAssertionIdentifier;
- (void)_checkSessionDuration;
- (void)_internalEndSessionWithDequeue:(BOOL)dequeue completion:(id)completion;
- (void)activateWithToken:(id)token completion:(id)completion;
- (void)createHandoffTokenWithCompletion:(id)completion;
- (void)dealloc;
- (void)didEndSession:(id)session;
- (void)didStartSession:(id)session;
- (void)endSession:(id)session;
- (void)handleSecureElementTransactionData:(id)data appletIdentifier:(id)identifier;
- (void)prioritizeSessionWithCompletion:(id)completion;
- (void)releaseAssertion;
- (void)setCustomSessionName:(id)name;
@end

@implementation _NFSession

- (_NFSession)initWithWorkQueue:(id)queue allowsBackgroundMode:(BOOL)mode
{
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = _NFSession;
  v7 = [(_NFSession *)&v20 init];
  v8 = v7;
  if (v7)
  {
    v7->_workQueue = queueCopy;
    v7->_isEnding = 0;
    v7->_allowsBackgroundMode = mode;
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

- (void)setCustomSessionName:(id)name
{
  if (!self->_didStart)
  {
    nameCopy = name;
    v6 = [NSString alloc];
    v7 = objc_opt_class();
    v12 = NSStringFromClass(v7);
    v8 = +[NSDate now];
    [v8 timeIntervalSince1970];
    v10 = [v6 initWithFormat:@"%@-%@-%lf", v12, nameCopy, v9];

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

    expectedDurationInNS = [(_NFSession *)self expectedDurationInNS];
    clientName = [(_NFSession *)self clientName];
    if (v5 && v6 > expectedDurationInNS)
    {
      v9 = [[NSString alloc] initWithFormat:@"Client=%@, PID=%d, TotalDuration=%llu", clientName, -[_NFSession processIdentifier](self, "processIdentifier"), v6];
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

- (BOOL)holdAssertion
{
  if (self->_hasAssertion)
  {
    return 1;
  }

  v4 = +[NFPowerAssertion sharedPowerAssertion];
  powerAssertionIdentifier = [(_NFSession *)self powerAssertionIdentifier];
  v2 = 1;
  v6 = [v4 holdPowerAssertion:powerAssertionIdentifier onBehalfOf:-[_NFSession processIdentifier](self behaviourWhenSleepStarted:{"processIdentifier"), 1}];

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
    powerAssertionIdentifier = [(_NFSession *)self powerAssertionIdentifier];
    [v3 releasePowerAssertion:powerAssertionIdentifier];

    self->_hasAssertion = 0;
  }
}

- (BOOL)suspendWithInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [infoCopy NF_numberForKey:@"ReasonCode"];
  v8 = v7;
  if (!v7)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v21 = Logger;
      Class = object_getClass(selfCopy);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(selfCopy);
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

    v26 = object_getClass(selfCopy);
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
    v66 = object_getClassName(selfCopy);
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
      v9 = [infoCopy objectForKey:@"Field"];

      if (!v9)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v10 = NFLogGetLogger();
        if (v10)
        {
          v11 = v10;
          v12 = object_getClass(selfCopy);
          v13 = class_isMetaClass(v12);
          v14 = object_getClassName(selfCopy);
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

        v17 = object_getClass(selfCopy);
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
        v66 = object_getClassName(selfCopy);
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

  else if (!selfCopy->_token)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v50 = NFLogGetLogger();
    if (v50)
    {
      v51 = v50;
      v52 = object_getClass(selfCopy);
      v53 = class_isMetaClass(v52);
      v54 = object_getClassName(selfCopy);
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

    v56 = object_getClass(selfCopy);
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
    v66 = object_getClassName(selfCopy);
    v67 = 2082;
    v68 = sel_getName(a2);
    v69 = 1024;
    v70 = 169;
    v19 = "%c[%{public}s %{public}s]:%i Missing token";
    goto LABEL_53;
  }

  isSuspended = selfCopy->_isSuspended;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v29 = NFLogGetLogger();
  v30 = v29;
  if (isSuspended)
  {
    if (v29)
    {
      v31 = object_getClass(selfCopy);
      v32 = class_isMetaClass(v31);
      v33 = object_getClassName(selfCopy);
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

    v35 = object_getClass(selfCopy);
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
    v66 = object_getClassName(selfCopy);
    v67 = 2082;
    v68 = sel_getName(a2);
    v69 = 1024;
    v70 = 181;
    v19 = "%c[%{public}s %{public}s]:%i Already in suspended state";
    goto LABEL_53;
  }

  if (v29)
  {
    v37 = object_getClass(selfCopy);
    v38 = class_isMetaClass(v37);
    v39 = object_getClassName(selfCopy);
    v40 = sel_getName(a2);
    v41 = 45;
    if (v38)
    {
      v41 = 43;
    }

    v30(6, "%c[%{public}s %{public}s]:%i Suspending session %{public}@ using token %{public}@", v41, v39, v40, 185, selfCopy->_sessionUID, selfCopy->_token);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v42 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = object_getClass(selfCopy);
    if (class_isMetaClass(v43))
    {
      v44 = 43;
    }

    else
    {
      v44 = 45;
    }

    v45 = object_getClassName(selfCopy);
    v46 = sel_getName(a2);
    sessionUID = selfCopy->_sessionUID;
    token = selfCopy->_token;
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
  selfCopy->_isSuspended = 1;
  [(_NFSession *)selfCopy _checkSessionDuration];
  [(_NFSession *)selfCopy releaseAssertion];
LABEL_55:

  objc_sync_exit(selfCopy);
  return v49;
}

- (BOOL)resume
{
  holdAssertion = [(_NFSession *)self holdAssertion];
  if (holdAssertion)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(selfCopy);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(selfCopy);
      Name = sel_getName(a2);
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i Resuming session %{public}@", v12, ClassName, Name, 203, selfCopy->_sessionUID);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = object_getClass(selfCopy);
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      v16 = object_getClassName(selfCopy);
      v17 = sel_getName(a2);
      sessionUID = selfCopy->_sessionUID;
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

    selfCopy->_isSuspended = 0;
    token = selfCopy->_token;
    selfCopy->_token = 0;

    selfCopy->_startTime = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
    objc_sync_exit(selfCopy);
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
    selfCopy = NFSharedLogGetLogger();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
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
      _os_log_impl(&_mh_execute_header, &selfCopy->super, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to hold assertion", buf, 0x22u);
    }
  }

  return holdAssertion;
}

- (void)handleSecureElementTransactionData:(id)data appletIdentifier:(id)identifier
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
  clientName = [(_NFSession *)self clientName];
  v4 = clientName;
  if (!clientName || ![(__CFString *)clientName length])
  {

    v4 = @"unavailable";
  }

  v5 = [[NSString alloc] initWithFormat:@"process:%@, %s, sessionID:%d", v4, object_getClassName(self), self->_sessionID];

  return v5;
}

- (BOOL)isFeatureSupported:(unint64_t)supported
{
  if (supported)
  {
    supportedCopy = supported;
    if ((supported & 1) == 0)
    {
      allowsBackgroundMode = 1;
      if ((supported & 2) == 0)
      {
        return allowsBackgroundMode;
      }

      goto LABEL_16;
    }

    allowsBackgroundMode = [(_NFSession *)self allowsBackgroundMode];
    if ((supportedCopy & 2) != 0)
    {
LABEL_16:
      allowsBackgroundMode &= [(_NFSession *)self forceExpressExit];
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

    LOBYTE(allowsBackgroundMode) = 0;
  }

  return allowsBackgroundMode;
}

- (BOOL)needsCleanup
{
  didStart = [(_NFSession *)self didStart];
  if (didStart)
  {
    LOBYTE(didStart) = ![(_NFSession *)self didEnd];
  }

  return didStart;
}

- (void)didEndSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_didEnd)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(selfCopy);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(selfCopy);
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
      v14 = object_getClass(selfCopy);
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
      *&v39[6] = object_getClassName(selfCopy);
      *&v39[14] = 2082;
      *&v39[16] = sel_getName(a2);
      v40 = 1024;
      v41 = 289;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session has ended previously", buf, 0x22u);
    }

    objc_sync_exit(selfCopy);
LABEL_12:

    goto LABEL_26;
  }

  objc_sync_exit(selfCopy);

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFLogGetLogger();
  if (v16)
  {
    v17 = v16;
    v18 = object_getClass(selfCopy);
    v19 = class_isMetaClass(v18);
    v20 = object_getClassName(selfCopy);
    v21 = sel_getName(a2);
    clientName = [(_NFSession *)selfCopy clientName];
    processIdentifier = [(_NFSession *)selfCopy processIdentifier];
    v23 = 43;
    if (!v19)
    {
      v23 = 45;
    }

    v17(6, "%c[%{public}s %{public}s]:%i %{public}@ (%d) ended %{public}@", v23, v20, v21, 294, clientName, processIdentifier, selfCopy->_sessionUID);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v24 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = object_getClass(selfCopy);
    if (class_isMetaClass(v25))
    {
      v26 = 43;
    }

    else
    {
      v26 = 45;
    }

    v27 = object_getClassName(selfCopy);
    v28 = sel_getName(a2);
    clientName2 = [(_NFSession *)selfCopy clientName];
    processIdentifier2 = [(_NFSession *)selfCopy processIdentifier];
    sessionUID = selfCopy->_sessionUID;
    *buf = 67110658;
    *v39 = v26;
    *&v39[4] = 2082;
    *&v39[6] = v27;
    *&v39[14] = 2082;
    *&v39[16] = v28;
    v40 = 1024;
    v41 = 294;
    v42 = 2114;
    v43 = clientName2;
    v44 = 1024;
    v45 = processIdentifier2;
    v46 = 2114;
    v47 = sessionUID;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ (%d) ended %{public}@", buf, 0x3Cu);
  }

  [(_NFSession *)selfCopy cleanup];
  v32 = selfCopy;
  objc_sync_enter(v32);
  selfCopy->_didEnd = 1;
  objc_sync_exit(v32);

  if (v32->_didStart)
  {
    selfCopy = NFSharedSignpostLog();
    signpostId = [(_NFSession *)v32 signpostId];
    if ((signpostId - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v34 = signpostId;
      if (os_signpost_enabled(&selfCopy->super))
      {
        v35 = v32->_sessionUID;
        *buf = 138412546;
        *v39 = v35;
        *&v39[8] = 2112;
        *&v39[10] = sessionCopy;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, &selfCopy->super, OS_SIGNPOST_INTERVAL_END, v34, "Session_Start_End_Time", "_sessionUID=%@ error=%@", buf, 0x16u);
      }
    }

    goto LABEL_12;
  }

LABEL_26:
}

- (BOOL)willStartSession
{
  v3 = NFSharedSignpostLog();
  signpostId = [(_NFSession *)self signpostId];
  if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = signpostId;
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

- (void)didStartSession:(id)session
{
  sessionCopy = session;
  v6 = NFSharedSignpostLog();
  signpostId = [(_NFSession *)self signpostId];
  if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = signpostId;
    if (os_signpost_enabled(v6))
    {
      sessionUID = self->_sessionUID;
      *buf = 138412546;
      *v35 = sessionUID;
      *&v35[8] = 2112;
      *&v35[10] = sessionCopy;
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
    clientName = [(_NFSession *)self clientName];
    processIdentifier = [(_NFSession *)self processIdentifier];
    if (sessionCopy)
    {
      v18 = sessionCopy;
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

    v11(6, "%c[%{public}s %{public}s]:%i %{public}@ (%d) started %{public}@ ID:%d %@", v19, ClassName, Name, 326, clientName, processIdentifier, self->_sessionUID, self->_sessionID, v18);
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
    clientName2 = [(_NFSession *)self clientName];
    processIdentifier2 = [(_NFSession *)self processIdentifier];
    v27 = self->_sessionUID;
    sessionID = self->_sessionID;
    if (sessionCopy)
    {
      v29 = sessionCopy;
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
    v39 = clientName2;
    v40 = 1024;
    v41 = processIdentifier2;
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
  if (sessionCopy)
  {
    self->_didEnd = 1;
    v30 = NFSharedSignpostLog();
    signpostId2 = [(_NFSession *)self signpostId];
    if (signpostId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v32 = signpostId2;
      if (os_signpost_enabled(v30))
      {
        v33 = self->_sessionUID;
        *buf = 138412546;
        *v35 = v33;
        *&v35[8] = 2112;
        *&v35[10] = sessionCopy;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_END, v32, "Session_Start_End_Time", "_sessionUID=%@ error=%@", buf, 0x16u);
      }
    }
  }

  else
  {
    self->_startTime = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  }
}

- (void)_internalEndSessionWithDequeue:(BOOL)dequeue completion:(id)completion
{
  dequeueCopy = dequeue;
  completionCopy = completion;
  v8 = NFSharedSignpostLog();
  signpostId = [(_NFSession *)self signpostId];
  if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = signpostId;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, v10, "INTERNAL_END_SESSION", &unk_1002E8B7A, buf, 2u);
    }
  }

  self->_isEnding = 1;
  [(_NFSession *)self _checkSessionDuration];
  if (dequeueCopy)
  {
    workQueue = [(_NFSession *)self workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000418C4;
    block[3] = &unk_100316050;
    block[4] = self;
    v14 = a2;
    v13 = completionCopy;
    dispatch_async(workQueue, block);
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)endSession:(id)session
{
  sessionCopy = session;
  v6 = NFSharedSignpostLog();
  signpostId = [(_NFSession *)self signpostId];
  if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = signpostId;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, v8, "END_SESSION", &unk_1002E8B7A, buf, 2u);
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_didEnd)
  {
    objc_sync_exit(selfCopy);

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      Class = object_getClass(selfCopy);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(selfCopy);
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
      v17 = object_getClass(selfCopy);
      if (class_isMetaClass(v17))
      {
        v18 = 43;
      }

      else
      {
        v18 = 45;
      }

      v19 = object_getClassName(selfCopy);
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

    if (sessionCopy)
    {
      sessionCopy[2](sessionCopy);
    }
  }

  else
  {
    [(_NFSession *)selfCopy _internalEndSessionWithDequeue:1 completion:sessionCopy];
    objc_sync_exit(selfCopy);
  }
}

- (void)prioritizeSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(_NFSession *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041ED8;
  block[3] = &unk_100316050;
  v9 = completionCopy;
  v10 = a2;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)activateWithToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  workQueue = [(_NFSession *)self workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000422D8;
  v12[3] = &unk_100316078;
  v12[4] = self;
  v13 = tokenCopy;
  v14 = completionCopy;
  v15 = a2;
  v10 = completionCopy;
  v11 = tokenCopy;
  dispatch_async(workQueue, v12);
}

- (void)createHandoffTokenWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_token)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(selfCopy);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(selfCopy);
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
      v14 = object_getClass(selfCopy);
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
      v55 = object_getClassName(selfCopy);
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
    completionCopy[2](completionCopy, 0, v33);

    goto LABEL_26;
  }

  if (selfCopy->_isSuspended || !selfCopy->_didStart || selfCopy->_didEnd)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFLogGetLogger();
    if (v23)
    {
      v24 = v23;
      v25 = object_getClass(selfCopy);
      v26 = class_isMetaClass(v25);
      v27 = object_getClassName(selfCopy);
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
      v30 = object_getClass(selfCopy);
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
      v55 = object_getClassName(selfCopy);
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
  token = selfCopy->_token;
  selfCopy->_token = v34;

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v36 = NFLogGetLogger();
  if (v36)
  {
    v37 = v36;
    v38 = object_getClass(selfCopy);
    v39 = class_isMetaClass(v38);
    v40 = object_getClassName(selfCopy);
    v41 = sel_getName(a2);
    v42 = 45;
    if (v39)
    {
      v42 = 43;
    }

    v37(6, "%c[%{public}s %{public}s]:%i Session %{public}@ created token %{public}@", v42, v40, v41, 427, selfCopy->_sessionUID, selfCopy->_token);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v43 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = object_getClass(selfCopy);
    if (class_isMetaClass(v44))
    {
      v45 = 43;
    }

    else
    {
      v45 = 45;
    }

    v46 = object_getClassName(selfCopy);
    v47 = sel_getName(a2);
    sessionUID = selfCopy->_sessionUID;
    v49 = selfCopy->_token;
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

  (completionCopy)[2](completionCopy, selfCopy->_token, 0);
LABEL_26:
  objc_sync_exit(selfCopy);
}

@end