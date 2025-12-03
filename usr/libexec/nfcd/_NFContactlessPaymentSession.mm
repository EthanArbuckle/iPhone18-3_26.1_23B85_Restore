@interface _NFContactlessPaymentSession
- (BOOL)_checkActiveAppletCompatibilityWithField:(id)field;
- (BOOL)_checkActiveVASCompatibilityWithField:(id)field;
- (BOOL)_checkDeferredActiveAppletCompatibilityWithField:(id)field;
- (BOOL)_isField:(id)field compatibleWithApplet:(id)applet;
- (BOOL)_requiresDeferredActivation:(id)activation;
- (BOOL)readyForPayment;
- (BOOL)startCardEmulationWithType:(unint64_t)type;
- (BOOL)startDefaultMode;
- (BOOL)startFieldDetectMode;
- (BOOL)startWiredMode;
- (BOOL)suspendWithInfo:(id)info;
- (id)_authorize:(id)_authorize;
- (id)_switchToBestGroupMemberOfHead:(id)head forField:(id)field;
- (id)preloadApplets;
- (unint64_t)defaultEmulationType;
- (void)_deauthorize;
- (void)_fireFelicaTransactionEndEvent;
- (void)_fireFelicaTransactionStartEvent;
- (void)_performAuthAndStartCardEmulation:(id)emulation fromDeferred:(BOOL)deferred completion:(id)completion;
- (void)_performDeferredAuthIfNeeded:(id)needed;
- (void)_sync_startDeferredCardEmulationWithAuthorization:(id)authorization completion:(id)completion;
- (void)cleanup;
- (void)createHandoffTokenWithCompletion:(id)completion;
- (void)didEndSession:(id)session;
- (void)didStartSession:(id)session;
- (void)enableDemoModeWithCompletion:(id)completion;
- (void)enablePlasticCardMode:(BOOL)mode completion:(id)completion;
- (void)getAppletsWithCompletion:(id)completion;
- (void)getFelicaAppletState:(id)state completion:(id)completion;
- (void)getTransitAppletState:(id)state completion:(id)completion;
- (void)handleAppletInactivityTimeout:(id)timeout;
- (void)handleDeferredAuthTimeout;
- (void)handleExpressModeExited;
- (void)handleExpressModeStarted;
- (void)handleExpressModeTimeout;
- (void)handleFelicaStateEvent:(id)event appletAID:(id)d;
- (void)handleFieldNotification:(id)notification;
- (void)handleFieldReset;
- (void)handlePendingServerRequest;
- (void)handleRequestService:(id)service;
- (void)handleSecureElementEndOfOperation;
- (void)handleTimerExpiredEvent:(id)event;
- (void)handleTransactionEndEvent:(id)event atlData:(id)data;
- (void)handleTransactionStartEvent:(id)event atlData:(id)data;
- (void)pauseExpressAndStartDefaultModeAfter:(double)after;
- (void)setActivePaymentApplet:(id)applet keys:(id)keys authorization:(id)authorization completion:(id)completion;
- (void)setActivePaymentApplets:(id)applets keyIdentifiers:(id)identifiers authorization:(id)authorization completion:(id)completion;
- (void)startCardEmulationWithAuthorization:(id)authorization completion:(id)completion;
- (void)startDeferredCardEmulationWithAuthorization:(id)authorization completion:(id)completion;
- (void)startExpressModeWithCompletion:(id)completion;
- (void)startHostCardEmulationWithCompletion:(id)completion;
- (void)stopCardEmulationWithCompletion:(id)completion;
- (void)waitForSafeTransactionCompletion;
@end

@implementation _NFContactlessPaymentSession

- (void)cleanup
{
  v4 = NFSharedSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "cleanup", "_NFContactlessPaymentSession", buf, 2u);
  }

  if ([(_NFSession *)self needsCleanup])
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

      v6(6, "%c[%{public}s %{public}s]:%i ", v10, ClassName, Name, 91);
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
      v64 = v13;
      v65 = 2082;
      v66 = v14;
      v67 = 2082;
      v68 = v15;
      v69 = 1024;
      v70 = 91;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    sub_10026449C();
    self->_deferredAuthRequested = 0;
    [(_NFContactlessSession *)self setDeferredActivationApplet:0];
    [(NFTimer *)self->_deferredAuthTimer stopTimer];
    [(NFTimer *)self->_restartRoutingTimer stopTimer];
    [(_NFContactlessPaymentSession *)self waitForSafeTransactionCompletion];
    if ([(_NFContactlessSession *)self plasticCardMode])
    {
      [(_NFContactlessPaymentSession *)self startWiredMode];
      secureElementWrapper = [(_NFContactlessSession *)self secureElementWrapper];
      handle = [secureElementWrapper handle];
      v18 = [handle enableGreenCarThreshold:1];

      if ((v18 & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v19 = NFLogGetLogger();
        if (v19)
        {
          v20 = v19;
          v21 = object_getClass(self);
          v22 = class_isMetaClass(v21);
          v23 = object_getClassName(self);
          v59 = sel_getName(a2);
          v24 = 45;
          if (v22)
          {
            v24 = 43;
          }

          v20(6, "%c[%{public}s %{public}s]:%i Failed to re-enable GC logic", v24, v23, v59, 107);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v25 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
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
          v64 = v27;
          v65 = 2082;
          v66 = v28;
          v67 = 2082;
          v68 = v29;
          v69 = 1024;
          v70 = 107;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Failed to re-enable GC logic", buf, 0x22u);
        }
      }

      activeApplet = [(_NFContactlessSession *)self activeApplet];

      if (activeApplet)
      {
        secureElementWrapper2 = [(_NFContactlessSession *)self secureElementWrapper];
        activeApplet2 = [(_NFContactlessSession *)self activeApplet];
        v33 = sub_1002629A4(secureElementWrapper2, 0, activeApplet2);

        if (v33)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v34 = NFLogGetLogger();
          if (v34)
          {
            v35 = v34;
            v36 = object_getClass(self);
            v37 = class_isMetaClass(v36);
            v57 = object_getClassName(self);
            v60 = sel_getName(a2);
            v38 = 45;
            if (v37)
            {
              v38 = 43;
            }

            v35(3, "%c[%{public}s %{public}s]:%i Failed to disable plastic card mode: %{public}@", v38, v57, v60, 113, v33);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v39 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v40 = object_getClass(self);
            if (class_isMetaClass(v40))
            {
              v41 = 43;
            }

            else
            {
              v41 = 45;
            }

            v42 = object_getClassName(self);
            v43 = sel_getName(a2);
            *buf = 67110146;
            v64 = v41;
            v65 = 2082;
            v66 = v42;
            v67 = 2082;
            v68 = v43;
            v69 = 1024;
            v70 = 113;
            v71 = 2114;
            v72 = v33;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to disable plastic card mode: %{public}@", buf, 0x2Cu);
          }
        }
      }
    }

    if (self->_hasAuthorized)
    {
      [(_NFContactlessPaymentSession *)self _deauthorize];
    }

    if (self->_delayExpressMode > 0.0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v44 = NFLogGetLogger();
      if (v44)
      {
        v45 = v44;
        v46 = object_getClass(self);
        v47 = class_isMetaClass(v46);
        v48 = object_getClassName(self);
        v61 = sel_getName(a2);
        v49 = 45;
        if (v47)
        {
          v49 = 43;
        }

        v45(6, "%c[%{public}s %{public}s]:%i Delaying express enablement after transaction", v49, v48, v61, 126);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v50 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
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
        *buf = 67109890;
        v64 = v52;
        v65 = 2082;
        v66 = v53;
        v67 = 2082;
        v68 = v54;
        v69 = 1024;
        v70 = 126;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Delaying express enablement after transaction", buf, 0x22u);
      }

      [(_NFContactlessPaymentSession *)self startWiredMode];
      expressModeManager = [(_NFXPCSession *)self expressModeManager];
      sub_100035E30(expressModeManager, self->_delayExpressMode);
    }
  }

  v62.receiver = self;
  v62.super_class = _NFContactlessPaymentSession;
  [(_NFContactlessSession *)&v62 cleanup];
  v56 = NFSharedSignpostLog();
  if (os_signpost_enabled(v56))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v56, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "cleanup", "_NFContactlessPaymentSession", buf, 2u);
  }
}

- (BOOL)suspendWithInfo:(id)info
{
  v39.receiver = self;
  v39.super_class = _NFContactlessPaymentSession;
  v5 = [(_NFContactlessSession *)&v39 suspendWithInfo:info];
  if (v5)
  {
    self->_deferredAuthRequested = 0;
    [(_NFContactlessSession *)self setDeferredActivationApplet:0];
    [(NFTimer *)self->_deferredAuthTimer stopTimer];
    [(NFTimer *)self->_restartRoutingTimer stopTimer];
    [(_NFContactlessPaymentSession *)self waitForSafeTransactionCompletion];
    if ([(_NFContactlessSession *)self plasticCardMode])
    {
      [(_NFContactlessPaymentSession *)self startWiredMode];
      secureElementWrapper = [(_NFContactlessSession *)self secureElementWrapper];
      handle = [secureElementWrapper handle];
      v8 = [handle enableGreenCarThreshold:1];

      if ((v8 & 1) == 0)
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

          v10(6, "%c[%{public}s %{public}s]:%i Failed to re-enable GC logic", v14, ClassName, Name, 156);
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
          *buf = 67109890;
          v41 = v17;
          v42 = 2082;
          v43 = v18;
          v44 = 2082;
          v45 = v19;
          v46 = 1024;
          v47 = 156;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Failed to re-enable GC logic", buf, 0x22u);
        }
      }

      activeApplet = [(_NFContactlessSession *)self activeApplet];

      if (activeApplet)
      {
        secureElementWrapper2 = [(_NFContactlessSession *)self secureElementWrapper];
        activeApplet2 = [(_NFContactlessSession *)self activeApplet];
        v23 = sub_1002629A4(secureElementWrapper2, 0, activeApplet2);

        if (v23)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v24 = NFLogGetLogger();
          if (v24)
          {
            v25 = v24;
            v26 = object_getClass(self);
            v27 = class_isMetaClass(v26);
            v36 = object_getClassName(self);
            v38 = sel_getName(a2);
            v28 = 45;
            if (v27)
            {
              v28 = 43;
            }

            v25(3, "%c[%{public}s %{public}s]:%i Failed to disable plastic card mode: %{public}@", v28, v36, v38, 162, v23);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v29 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = object_getClass(self);
            if (class_isMetaClass(v30))
            {
              v31 = 43;
            }

            else
            {
              v31 = 45;
            }

            v32 = object_getClassName(self);
            v33 = sel_getName(a2);
            *buf = 67110146;
            v41 = v31;
            v42 = 2082;
            v43 = v32;
            v44 = 2082;
            v45 = v33;
            v46 = 1024;
            v47 = 162;
            v48 = 2114;
            v49 = v23;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to disable plastic card mode: %{public}@", buf, 0x2Cu);
          }
        }
      }

      [(_NFContactlessSession *)self setPlasticCardMode:0];
    }

    if (self->_hasAuthorized)
    {
      [(_NFContactlessPaymentSession *)self _deauthorize];
    }

    self->_inWiredMode = 0;
    self->_fieldPresent = 0;
    self->_transactionState = 0;
    v34 = [(_NFContactlessSession *)self setActiveApplet:0];
  }

  return v5;
}

- (unint64_t)defaultEmulationType
{
  if (self->_hostCardEmulationSupport)
  {
    return 6;
  }

  else
  {
    return 2;
  }
}

- (id)preloadApplets
{
  v6.receiver = self;
  v6.super_class = _NFContactlessPaymentSession;
  preloadApplets = [(_NFContactlessSession *)&v6 preloadApplets];
  v3 = preloadApplets;
  if (preloadApplets)
  {
    v4 = preloadApplets;
  }

  return v3;
}

- (BOOL)readyForPayment
{
  activeApplet = [(_NFContactlessSession *)self activeApplet];
  if (activeApplet)
  {
    hasAuthorized = self->_hasAuthorized;
  }

  else
  {
    hasAuthorized = 0;
  }

  return hasAuthorized;
}

- (void)didStartSession:(id)session
{
  v6.receiver = self;
  v6.super_class = _NFContactlessPaymentSession;
  [(_NFContactlessSession *)&v6 didStartSession:?];
  if (!session)
  {
    v5 = [(_NFContactlessSession *)self setActiveApplet:0];
  }
}

- (void)didEndSession:(id)session
{
  sessionCopy = session;
  if (![(_NFSession *)self didEnd])
  {
    self->_deferredAuthRequested = 0;
    [(NFTimer *)self->_deferredAuthTimer stopTimer];
    deferredAuthTimer = self->_deferredAuthTimer;
    self->_deferredAuthTimer = 0;

    if (self->_restartRoutingTimer)
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

        v8(6, "%c[%{public}s %{public}s]:%i Unpausing express mode", v12, ClassName, Name, 242);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
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
        v22 = v15;
        v23 = 2082;
        v24 = object_getClassName(self);
        v25 = 2082;
        v26 = sel_getName(a2);
        v27 = 1024;
        v28 = 242;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Unpausing express mode", buf, 0x22u);
      }

      [(NFTimer *)self->_restartRoutingTimer stopTimer];
      expressModeManager = [(_NFXPCSession *)self expressModeManager];
      v17 = expressModeManager;
      if (expressModeManager)
      {
        sub_100031A1C(expressModeManager, 0, 1);
      }

      restartRoutingTimer = self->_restartRoutingTimer;
      self->_restartRoutingTimer = 0;
    }
  }

  v20.receiver = self;
  v20.super_class = _NFContactlessPaymentSession;
  [(_NFSession *)&v20 didEndSession:sessionCopy];
}

- (void)getAppletsWithCompletion:(id)completion
{
  completionCopy = completion;
  kdebug_trace();
  v6 = NFSharedSignpostLog();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLIENT_GET_APPLETS", "before dispatch", buf, 2u);
  }

  v12.receiver = self;
  v12.super_class = _NFContactlessPaymentSession;
  workQueue = [(_NFSession *)&v12 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100129CC4;
  block[3] = &unk_100316050;
  v10 = completionCopy;
  v11 = a2;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)setActivePaymentApplet:(id)applet keys:(id)keys authorization:(id)authorization completion:(id)completion
{
  appletCopy = applet;
  keysCopy = keys;
  authorizationCopy = authorization;
  completionCopy = completion;
  kdebug_trace();
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10012A208;
  v30[3] = &unk_1003192F0;
  v15 = authorizationCopy;
  v31 = v15;
  v32 = completionCopy;
  v16 = completionCopy;
  v17 = objc_retainBlock(v30);
  v29.receiver = self;
  v29.super_class = _NFContactlessPaymentSession;
  workQueue = [(_NFSession *)&v29 workQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10012A38C;
  v23[3] = &unk_100319340;
  v27 = v17;
  v28 = a2;
  v23[4] = self;
  v24 = appletCopy;
  v25 = keysCopy;
  v26 = v15;
  v19 = v15;
  v20 = keysCopy;
  v21 = appletCopy;
  v22 = v17;
  dispatch_async(workQueue, v23);
}

- (void)setActivePaymentApplets:(id)applets keyIdentifiers:(id)identifiers authorization:(id)authorization completion:(id)completion
{
  appletsCopy = applets;
  identifiersCopy = identifiers;
  authorizationCopy = authorization;
  completionCopy = completion;
  kdebug_trace();
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10012BC80;
  v30[3] = &unk_1003192F0;
  v15 = authorizationCopy;
  v31 = v15;
  v32 = completionCopy;
  v16 = completionCopy;
  v17 = objc_retainBlock(v30);
  v29.receiver = self;
  v29.super_class = _NFContactlessPaymentSession;
  workQueue = [(_NFSession *)&v29 workQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10012BE04;
  v23[3] = &unk_100319340;
  v27 = v17;
  v28 = a2;
  v23[4] = self;
  v24 = appletsCopy;
  v25 = identifiersCopy;
  v26 = v15;
  v19 = v15;
  v20 = identifiersCopy;
  v21 = appletsCopy;
  v22 = v17;
  dispatch_async(workQueue, v23);
}

- (void)startCardEmulationWithAuthorization:(id)authorization completion:(id)completion
{
  authorizationCopy = authorization;
  completionCopy = completion;
  kdebug_trace();
  v9 = NFSharedSignpostLog();
  if (os_signpost_enabled(v9))
  {
    *buf = 67109120;
    v19 = authorizationCopy != 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLIENT_AUTH_REQUEST", "startCardEmulationWithAuthorization, auth=%d", buf, 8u);
  }

  v17.receiver = self;
  v17.super_class = _NFContactlessPaymentSession;
  workQueue = [(_NFSession *)&v17 workQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10012DC88;
  v13[3] = &unk_1003165E8;
  v15 = completionCopy;
  v16 = a2;
  v13[4] = self;
  v14 = authorizationCopy;
  v11 = authorizationCopy;
  v12 = completionCopy;
  dispatch_async(workQueue, v13);
}

- (void)handleDeferredAuthTimeout
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

    v5(5, "%c[%{public}s %{public}s]:%i Deferred authorization timeout", v9, ClassName, Name, 601);
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
    v27 = 601;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Deferred authorization timeout", buf, 0x22u);
  }

  activeApplet = [(_NFContactlessSession *)self activeApplet];

  if (activeApplet)
  {
    activeApplet2 = [(_NFContactlessSession *)self activeApplet];
    identifier = [activeApplet2 identifier];
    v19 = identifier;
    v16 = [NSArray arrayWithObjects:&v19 count:1];
    [(_NFContactlessPaymentSession *)self handleTimerExpiredEvent:v16];
  }

  else
  {
    [(_NFContactlessPaymentSession *)self handleTimerExpiredEvent:&off_100339060];
  }

  self->_deferredAuthRequested = 0;
  deferredAuth = self->_deferredAuth;
  self->_deferredAuth = 0;
}

- (void)_sync_startDeferredCardEmulationWithAuthorization:(id)authorization completion:(id)completion
{
  authorizationCopy = authorization;
  completionCopy = completion;
  kdebug_trace();
  v9 = NFSharedSignpostLog();
  if (os_signpost_enabled(v9))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = authorizationCopy != 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLIENT_DEFERRED_AUTH_REQUEST", "auth=%d", &buf, 8u);
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
    clientName = [(_NFXPCSession *)self clientName];
    v17 = 45;
    if (isMetaClass)
    {
      v17 = 43;
    }

    v11(6, "%c[%{public}s %{public}s]:%i %{public}@", v17, ClassName, Name, 619, clientName);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v18 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
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

    v21 = object_getClassName(self);
    v22 = sel_getName(a2);
    clientName2 = [(_NFXPCSession *)self clientName];
    LODWORD(buf) = 67110146;
    HIDWORD(buf) = v20;
    v71 = 2082;
    v72 = v21;
    v73 = 2082;
    v74 = v22;
    v75 = 1024;
    v76 = 619;
    v77 = 2114;
    v78 = clientName2;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", &buf, 0x2Cu);
  }

  self->_deferredAuthRequested = 1;
  if (authorizationCopy)
  {
    v24 = !self->_deferredAuth || ([authorizationCopy isEqual:?] & 1) == 0;
    v25 = authorizationCopy;
    p_super = &self->_deferredAuth->super;
    self->_deferredAuth = v25;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFLogGetLogger();
    if (v27)
    {
      v28 = v27;
      v29 = object_getClass(self);
      v30 = class_isMetaClass(v29);
      v31 = object_getClassName(self);
      v64 = sel_getName(a2);
      v32 = 45;
      if (v30)
      {
        v32 = 43;
      }

      v28(6, "%c[%{public}s %{public}s]:%i No authorization supplied", v32, v31, v64, 630);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    p_super = NFSharedLogGetLogger();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v33 = object_getClass(self);
      if (class_isMetaClass(v33))
      {
        v34 = 43;
      }

      else
      {
        v34 = 45;
      }

      v35 = object_getClassName(self);
      v36 = sel_getName(a2);
      LODWORD(buf) = 67109890;
      HIDWORD(buf) = v34;
      v71 = 2082;
      v72 = v35;
      v73 = 2082;
      v74 = v36;
      v75 = 1024;
      v76 = 630;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No authorization supplied", &buf, 0x22u);
    }

    v24 = 0;
  }

  kdebug_trace();
  v37 = NFSharedSignpostLog();
  if (os_signpost_enabled(v37))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLIENT_CALLBACK", &unk_1002E8B7A, &buf, 2u);
  }

  completionCopy[2](completionCopy, 0);
  if (self->_deferredAuthTimer)
  {
    if (v24)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v38 = NFLogGetLogger();
      if (v38)
      {
        v39 = v38;
        v40 = object_getClass(self);
        v41 = class_isMetaClass(v40);
        v42 = object_getClassName(self);
        v65 = sel_getName(a2);
        v43 = 45;
        if (v41)
        {
          v43 = 43;
        }

        v39(6, "%c[%{public}s %{public}s]:%i Auth changed", v43, v42, v65, 648);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v44 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = object_getClass(self);
        if (class_isMetaClass(v45))
        {
          v46 = 43;
        }

        else
        {
          v46 = 45;
        }

        v47 = object_getClassName(self);
        v48 = sel_getName(a2);
        LODWORD(buf) = 67109890;
        HIDWORD(buf) = v46;
        v71 = 2082;
        v72 = v47;
        v73 = 2082;
        v74 = v48;
        v75 = 1024;
        v76 = 648;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Auth changed", &buf, 0x22u);
      }

      [(NFTimer *)self->_deferredAuthTimer stopTimer];
      [(NFTimer *)self->_deferredAuthTimer startTimer:60.0 leeway:0.5];
    }
  }

  else
  {
    objc_initWeak(&buf, self);
    v49 = [NFTimer alloc];
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_10012ECE0;
    v68[3] = &unk_100315F08;
    objc_copyWeak(&v69, &buf);
    v67.receiver = self;
    v67.super_class = _NFContactlessPaymentSession;
    workQueue = [(_NFSession *)&v67 workQueue];
    v51 = [v49 initWithCallback:v68 queue:workQueue];
    deferredAuthTimer = self->_deferredAuthTimer;
    self->_deferredAuthTimer = v51;

    [(NFTimer *)self->_deferredAuthTimer startTimer:60.0 leeway:0.5];
    objc_destroyWeak(&v69);
    objc_destroyWeak(&buf);
  }

  if (self->_fieldPresent && self->_fieldNotification)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v53 = NFLogGetLogger();
    if (v53)
    {
      v54 = v53;
      v55 = object_getClass(self);
      v56 = class_isMetaClass(v55);
      v57 = object_getClassName(self);
      v66 = sel_getName(a2);
      v58 = 45;
      if (v56)
      {
        v58 = 43;
      }

      v54(6, "%c[%{public}s %{public}s]:%i Field is already present, starting emulation", v58, v57, v66, 655);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v59 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = object_getClass(self);
      if (class_isMetaClass(v60))
      {
        v61 = 43;
      }

      else
      {
        v61 = 45;
      }

      v62 = object_getClassName(self);
      v63 = sel_getName(a2);
      LODWORD(buf) = 67109890;
      HIDWORD(buf) = v61;
      v71 = 2082;
      v72 = v62;
      v73 = 2082;
      v74 = v63;
      v75 = 1024;
      v76 = 655;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Field is already present, starting emulation", &buf, 0x22u);
    }

    [(_NFContactlessPaymentSession *)self _performDeferredAuthIfNeeded:self->_fieldNotification];
  }

  else
  {
    [(_NFContactlessPaymentSession *)self startWiredMode];
  }
}

- (void)startDeferredCardEmulationWithAuthorization:(id)authorization completion:(id)completion
{
  authorizationCopy = authorization;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = _NFContactlessPaymentSession;
  workQueue = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10012EE50;
  v12[3] = &unk_1003165E8;
  v14 = completionCopy;
  v15 = a2;
  v12[4] = self;
  v13 = authorizationCopy;
  v10 = authorizationCopy;
  v11 = completionCopy;
  dispatch_async(workQueue, v12);
}

- (void)enablePlasticCardMode:(BOOL)mode completion:(id)completion
{
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = _NFContactlessPaymentSession;
  workQueue = [(_NFSession *)&v14 workQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10012F220;
  v10[3] = &unk_100316FA0;
  v11 = completionCopy;
  v12 = a2;
  v10[4] = self;
  modeCopy = mode;
  v9 = completionCopy;
  dispatch_async(workQueue, v10);
}

- (void)startExpressModeWithCompletion:(id)completion
{
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = _NFContactlessPaymentSession;
  workQueue = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013044C;
  block[3] = &unk_100316050;
  v9 = completionCopy;
  v10 = a2;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)startHostCardEmulationWithCompletion:(id)completion
{
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = _NFContactlessPaymentSession;
  workQueue = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100130BDC;
  block[3] = &unk_100316050;
  v9 = completionCopy;
  v10 = a2;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)stopCardEmulationWithCompletion:(id)completion
{
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = _NFContactlessPaymentSession;
  workQueue = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013135C;
  block[3] = &unk_100316050;
  v9 = completionCopy;
  v10 = a2;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)getFelicaAppletState:(id)state completion:(id)completion
{
  stateCopy = state;
  completionCopy = completion;
  v9 = NFSharedSignpostLog();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLPaymentSession:getFelicaAppletState", "in", buf, 2u);
  }

  v17.receiver = self;
  v17.super_class = _NFContactlessPaymentSession;
  workQueue = [(_NFSession *)&v17 workQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100131A30;
  v13[3] = &unk_1003165E8;
  v15 = completionCopy;
  v16 = a2;
  v13[4] = self;
  v14 = stateCopy;
  v11 = stateCopy;
  v12 = completionCopy;
  dispatch_async(workQueue, v13);
}

- (void)getTransitAppletState:(id)state completion:(id)completion
{
  stateCopy = state;
  completionCopy = completion;
  v9 = NFSharedSignpostLog();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLPaymentSession:getTransitAppletState", "in", buf, 2u);
  }

  v17.receiver = self;
  v17.super_class = _NFContactlessPaymentSession;
  workQueue = [(_NFSession *)&v17 workQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100132270;
  v13[3] = &unk_1003165E8;
  v15 = completionCopy;
  v16 = a2;
  v13[4] = self;
  v14 = stateCopy;
  v11 = stateCopy;
  v12 = completionCopy;
  dispatch_async(workQueue, v13);
}

- (void)enableDemoModeWithCompletion:(id)completion
{
  completionCopy = completion;
  v9.receiver = self;
  v9.super_class = _NFContactlessPaymentSession;
  workQueue = [(_NFSession *)&v9 workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100132AA0;
  v7[3] = &unk_100316700;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

- (id)_authorize:(id)_authorize
{
  _authorizeCopy = _authorize;
  kdebug_trace();
  v6 = NFSharedSignpostLog();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AUTHORIZE_CALL", "begin", buf, 2u);
  }

  if (![(_NFContactlessPaymentSession *)self startWiredMode])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v34 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v38 = 45;
      if (isMetaClass)
      {
        v38 = 43;
      }

      v34(3, "%c[%{public}s %{public}s]:%i Failed to set mode to wired", v38, ClassName, Name, 929);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v39 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = object_getClass(self);
      if (class_isMetaClass(v40))
      {
        v41 = 43;
      }

      else
      {
        v41 = 45;
      }

      v42 = object_getClassName(self);
      v43 = sel_getName(a2);
      *buf = 67109890;
      v71 = v41;
      v72 = 2082;
      v73 = v42;
      v74 = 2082;
      v75 = v43;
      v76 = 1024;
      v77 = 929;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set mode to wired", buf, 0x22u);
    }

    v44 = [NSError alloc];
    v25 = [NSString stringWithUTF8String:"nfcd"];
    v68[0] = NSLocalizedDescriptionKey;
    v28 = [NSString stringWithUTF8String:"Command Error"];
    v69[0] = v28;
    v69[1] = &off_100332088;
    v68[1] = @"Line";
    v68[2] = @"Method";
    v45 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v69[2] = v45;
    v68[3] = NSDebugDescriptionErrorKey;
    v46 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 930];
    v69[3] = v46;
    v47 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:4];
    v32 = [v44 initWithDomain:v25 code:16 userInfo:v47];

    goto LABEL_31;
  }

  if (_authorizeCopy)
  {
    secureElementWrapper = [(_NFContactlessSession *)self secureElementWrapper];
    v8 = [(_NFSession *)self uid];
    activeApplet = [(_NFContactlessSession *)self activeApplet];
    instanceACL = [activeApplet instanceACL];
    v11 = sub_1001F5428(secureElementWrapper, _authorizeCopy, v8, 0, instanceACL, self->_demoMode);

    if (v11)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFLogGetLogger();
      if (v12)
      {
        v13 = v12;
        v14 = object_getClass(self);
        v15 = class_isMetaClass(v14);
        v16 = object_getClassName(self);
        v63 = sel_getName(a2);
        v17 = 45;
        if (v15)
        {
          v17 = 43;
        }

        v13(3, "%c[%{public}s %{public}s]:%i Failed to authorize", v17, v16, v63, 941);
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

        v21 = object_getClassName(self);
        v22 = sel_getName(a2);
        *buf = 67109890;
        v71 = v20;
        v72 = 2082;
        v73 = v21;
        v74 = 2082;
        v75 = v22;
        v76 = 1024;
        v77 = 941;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to authorize", buf, 0x22u);
      }

      kdebug_trace();
      v23 = NFSharedSignpostLog();
      if (os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AUTHORIZE_APPLET_FAILED", &unk_1002E8B7A, buf, 2u);
      }

      v24 = [NSError alloc];
      v25 = [NSString stringWithUTF8String:"nfcd"];
      v26 = v11;
      v66[0] = NSLocalizedDescriptionKey;
      if (v11 >= 0x4C)
      {
        v27 = 76;
      }

      else
      {
        v27 = v11;
      }

      v28 = [NSString stringWithUTF8String:off_100319080[v27]];
      v67[0] = v28;
      v67[1] = &off_1003320A0;
      v66[1] = @"Line";
      v66[2] = @"Method";
      v29 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v67[2] = v29;
      v66[3] = NSDebugDescriptionErrorKey;
      v30 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 945];
      v67[3] = v30;
      v31 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:4];
      v32 = [v24 initWithDomain:v25 code:v26 userInfo:v31];

LABEL_31:
      goto LABEL_47;
    }

    self->_hasAuthorized = 1;
  }

  secureElementWrapper2 = [(_NFContactlessSession *)self secureElementWrapper];
  handle = [secureElementWrapper2 handle];
  v50 = [handle setAlwaysOn:1];

  if ((v50 & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v51 = NFLogGetLogger();
    if (v51)
    {
      v52 = v51;
      v53 = object_getClass(self);
      v54 = class_isMetaClass(v53);
      v55 = object_getClassName(self);
      v65 = sel_getName(a2);
      v56 = 45;
      if (v54)
      {
        v56 = 43;
      }

      v52(3, "%c[%{public}s %{public}s]:%i Failed to set eSE always on", v56, v55, v65, 953);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v57 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v58 = object_getClass(self);
      if (class_isMetaClass(v58))
      {
        v59 = 43;
      }

      else
      {
        v59 = 45;
      }

      v60 = object_getClassName(self);
      v61 = sel_getName(a2);
      *buf = 67109890;
      v71 = v59;
      v72 = 2082;
      v73 = v60;
      v74 = 2082;
      v75 = v61;
      v76 = 1024;
      v77 = 953;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set eSE always on", buf, 0x22u);
    }
  }

  PLLogRegisteredEvent();
  kdebug_trace();
  v25 = NFSharedSignpostLog();
  if (os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AUTHORIZE_CALL", "success", buf, 2u);
  }

  v32 = 0;
LABEL_47:

  return v32;
}

- (void)_deauthorize
{
  kdebug_trace();
  v4 = NFSharedSignpostLog();
  if (os_signpost_enabled(v4))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DEAUTHORIZE_CALL", "begin", &buf, 2u);
  }

  deferredAuth = self->_deferredAuth;
  self->_deferredAuth = 0;

  if (![(_NFContactlessPaymentSession *)self startWiredMode])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v21 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v25 = 45;
      if (isMetaClass)
      {
        v25 = 43;
      }

      v21(3, "%c[%{public}s %{public}s]:%i Failed to set mode to wired", v25, ClassName, Name, 975);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

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
    LODWORD(buf) = 67109890;
    HIDWORD(buf) = v27;
    *v49 = 2082;
    *&v49[2] = v28;
    *&v49[10] = 2082;
    *&v49[12] = v29;
    *&v49[20] = 1024;
    *&v49[22] = 975;
    v19 = "%c[%{public}s %{public}s]:%i Failed to set mode to wired";
    goto LABEL_23;
  }

  secureElementWrapper = [(_NFContactlessSession *)self secureElementWrapper];
  v7 = sub_1001F76C0(secureElementWrapper);

  if (!v7)
  {
    goto LABEL_25;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v8 = NFLogGetLogger();
  if (v8)
  {
    v9 = v8;
    v10 = object_getClass(self);
    v11 = class_isMetaClass(v10);
    v12 = object_getClassName(self);
    v45 = sel_getName(a2);
    v13 = 45;
    if (v11)
    {
      v13 = 43;
    }

    v9(3, "%c[%{public}s %{public}s]:%i Failed to deauth", v13, v12, v45, 980);
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
    LODWORD(buf) = 67109890;
    HIDWORD(buf) = v16;
    *v49 = 2082;
    *&v49[2] = v17;
    *&v49[10] = 2082;
    *&v49[12] = v18;
    *&v49[20] = 1024;
    *&v49[22] = 980;
    v19 = "%c[%{public}s %{public}s]:%i Failed to deauth";
LABEL_23:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v19, &buf, 0x22u);
  }

LABEL_24:

LABEL_25:
  secureElementWrapper2 = [(_NFContactlessSession *)self secureElementWrapper];
  handle = [secureElementWrapper2 handle];
  v32 = [handle setAlwaysOn:0];

  if ((v32 & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v33 = NFLogGetLogger();
    if (v33)
    {
      v34 = v33;
      v35 = object_getClass(self);
      v36 = class_isMetaClass(v35);
      v37 = object_getClassName(self);
      v47 = sel_getName(a2);
      v38 = 45;
      if (v36)
      {
        v38 = 43;
      }

      v34(3, "%c[%{public}s %{public}s]:%i Failed to disable eSE always on", v38, v37, v47, 985, buf, *v49, *&v49[16]);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v39 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = object_getClass(self);
      if (class_isMetaClass(v40))
      {
        v41 = 43;
      }

      else
      {
        v41 = 45;
      }

      v42 = object_getClassName(self);
      v43 = sel_getName(a2);
      LODWORD(buf) = 67109890;
      HIDWORD(buf) = v41;
      *v49 = 2082;
      *&v49[2] = v42;
      *&v49[10] = 2082;
      *&v49[12] = v43;
      *&v49[20] = 1024;
      *&v49[22] = 985;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to disable eSE always on", &buf, 0x22u);
    }
  }

  PLLogRegisteredEvent();
  self->_hasAuthorized = 0;
  kdebug_trace();
  v44 = NFSharedSignpostLog();
  if (os_signpost_enabled(v44))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DEAUTHORIZE_CALL", "success", &buf, 2u);
  }
}

- (BOOL)startCardEmulationWithType:(unint64_t)type
{
  kdebug_trace();
  v5 = NFSharedSignpostLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TX_CE", "start Card Emulation", buf, 2u);
  }

  self->_transactionState = 0;
  v8.receiver = self;
  v8.super_class = _NFContactlessPaymentSession;
  v6 = [(_NFContactlessSession *)&v8 startCardEmulationWithType:type];
  if (v6)
  {
    self->_inWiredMode = 0;
    [(NFTimer *)self->_restartRoutingTimer stopTimer];
  }

  return v6;
}

- (BOOL)startWiredMode
{
  [(_NFContactlessPaymentSession *)self waitForSafeTransactionCompletion];
  kdebug_trace();
  v3 = NFSharedSignpostLog();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TX_WIRED", "start Wired Mode", buf, 2u);
  }

  if (self->_deferredAuthRequested)
  {
    v4 = +[_NFHardwareManager sharedHardwareManager];
    v5 = sub_10004BF60(NFRoutingConfig, 2);
    v6 = [v4 setRoutingConfig:v5];

    v7 = v6 == 0;
    if (!v6)
    {
      self->_inWiredMode = 1;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _NFContactlessPaymentSession;
    if ([(_NFContactlessSession *)&v9 startWiredMode])
    {
      v7 = 1;
      self->_inWiredMode = 1;
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

- (BOOL)startDefaultMode
{
  [(_NFContactlessPaymentSession *)self waitForSafeTransactionCompletion];
  v5.receiver = self;
  v5.super_class = _NFContactlessPaymentSession;
  startDefaultMode = [(_NFContactlessSession *)&v5 startDefaultMode];
  if (startDefaultMode)
  {
    self->_inWiredMode = 0;
  }

  return startDefaultMode;
}

- (BOOL)startFieldDetectMode
{
  [(_NFContactlessPaymentSession *)self waitForSafeTransactionCompletion];
  kdebug_trace();
  v3 = NFSharedSignpostLog();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TX_FD", "start Field Detect Mode", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = _NFContactlessPaymentSession;
  startFieldDetectMode = [(_NFContactlessSession *)&v6 startFieldDetectMode];
  if (startFieldDetectMode)
  {
    self->_inWiredMode = 0;
  }

  return startFieldDetectMode;
}

- (void)waitForSafeTransactionCompletion
{
  if (!self->_dontWaitForEOT && !self->_inWiredMode)
  {
    transactionState = self->_transactionState;
    if (transactionState == 2)
    {
      activeApplet = [(_NFContactlessSession *)self activeApplet];
      moduleIdentifier = [activeApplet moduleIdentifier];
      v51 = [[NSData alloc] initWithBytes:&unk_100297790 length:10];
      nF_asHexString = [v51 NF_asHexString];
      v53 = [moduleIdentifier caseInsensitiveCompare:nF_asHexString];

      if (!v53)
      {
        usleep(0x61A80u);
LABEL_68:
        self->_transactionState = 0;
        return;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v55 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v59 = 45;
        if (isMetaClass)
        {
          v59 = 43;
        }

        v55(6, "%c[%{public}s %{public}s]:%i Waiting for RAPDU Sent notification", v59, ClassName, Name, 1080);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v60 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = object_getClass(self);
        if (class_isMetaClass(v61))
        {
          v62 = 43;
        }

        else
        {
          v62 = 45;
        }

        *buf = 67109890;
        v87 = v62;
        v88 = 2082;
        v89 = object_getClassName(self);
        v90 = 2082;
        v91 = sel_getName(a2);
        v92 = 1024;
        v93 = 1080;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Waiting for RAPDU Sent notification", buf, 0x22u);
      }

      v63 = -10;
      while (1)
      {
        secureElementWrapper = [(_NFContactlessSession *)self secureElementWrapper];
        handle = [secureElementWrapper handle];
        hasSentRAPDU = [handle hasSentRAPDU];

        if (hasSentRAPDU)
        {
          break;
        }

        secureElementWrapper2 = [(_NFContactlessSession *)self secureElementWrapper];
        handle2 = [secureElementWrapper2 handle];
        hasTransactionEnded = [handle2 hasTransactionEnded];

        if ((hasTransactionEnded & 1) == 0)
        {
          usleep(0x2710u);
          v63 += 10;
          if (v63 >> 1 < 0x9BF)
          {
            continue;
          }
        }

        goto LABEL_16;
      }

      kdebug_trace();
      v80 = NFSharedSignpostLog();
      if (os_signpost_enabled(v80))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v80, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TX_RADPU_SENT", &unk_1002E8B7A, buf, 2u);
      }

      usleep(0x30D40u);
    }

    else
    {
      if (transactionState != 4)
      {
LABEL_17:
        v17 = transactionState > 4;
        v18 = (1 << transactionState) & 0x16;
        if (!v17 && v18 != 0)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v20 = NFLogGetLogger();
          if (v20)
          {
            v21 = v20;
            v22 = object_getClass(self);
            v23 = class_isMetaClass(v22);
            v24 = object_getClassName(self);
            v82 = sel_getName(a2);
            v25 = 45;
            if (v23)
            {
              v25 = 43;
            }

            v21(6, "%c[%{public}s %{public}s]:%i Waiting for transaction to end...", v25, v24, v82, 1102);
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

            v29 = object_getClassName(self);
            v30 = sel_getName(a2);
            *buf = 67109890;
            v87 = v28;
            v88 = 2082;
            v89 = v29;
            v90 = 2082;
            v91 = v30;
            v92 = 1024;
            v93 = 1102;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Waiting for transaction to end...", buf, 0x22u);
          }

          v31 = -50;
          while (1)
          {
            secureElementWrapper3 = [(_NFContactlessSession *)self secureElementWrapper];
            handle3 = [secureElementWrapper3 handle];
            hasTransactionEnded2 = [handle3 hasTransactionEnded];

            if (hasTransactionEnded2)
            {
              break;
            }

            usleep(0xC350u);
            v31 += 50;
            if (v31 >> 1 >= 0x9AB)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v35 = NFLogGetLogger();
              if (v35)
              {
                v36 = v35;
                v37 = object_getClass(self);
                v38 = class_isMetaClass(v37);
                v39 = object_getClassName(self);
                v83 = sel_getName(a2);
                v40 = 45;
                if (v38)
                {
                  v40 = 43;
                }

                v36(3, "%c[%{public}s %{public}s]:%i Timed out", v40, v39, v83, 1118);
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
                v45 = sel_getName(a2);
                *buf = 67109890;
                v87 = v43;
                v88 = 2082;
                v89 = v44;
                v90 = 2082;
                v91 = v45;
                v92 = 1024;
                v93 = 1118;
                v46 = "%c[%{public}s %{public}s]:%i Timed out";
                v47 = v41;
                v48 = OS_LOG_TYPE_ERROR;
LABEL_66:
                _os_log_impl(&_mh_execute_header, v47, v48, v46, buf, 0x22u);
                goto LABEL_67;
              }

              goto LABEL_67;
            }
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v70 = NFLogGetLogger();
          if (v70)
          {
            v71 = v70;
            v72 = object_getClass(self);
            v73 = class_isMetaClass(v72);
            v74 = object_getClassName(self);
            v85 = sel_getName(a2);
            v75 = 45;
            if (v73)
            {
              v75 = 43;
            }

            v71(6, "%c[%{public}s %{public}s]:%i transaction has completed", v75, v74, v85, 1110);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v41 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
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
            v87 = v77;
            v88 = 2082;
            v89 = v78;
            v90 = 2082;
            v91 = v79;
            v92 = 1024;
            v93 = 1110;
            v46 = "%c[%{public}s %{public}s]:%i transaction has completed";
            v47 = v41;
            v48 = OS_LOG_TYPE_DEFAULT;
            goto LABEL_66;
          }

LABEL_67:
        }

        goto LABEL_68;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v5 = NFLogGetLogger();
      if (v5)
      {
        v6 = v5;
        v7 = object_getClass(self);
        v8 = class_isMetaClass(v7);
        v9 = object_getClassName(self);
        v81 = sel_getName(a2);
        v10 = 45;
        if (v8)
        {
          v10 = 43;
        }

        v6(6, "%c[%{public}s %{public}s]:%i Field lost before End Of Transaction - disabling emulation", v10, v9, v81, 1067);
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
        v87 = v13;
        v88 = 2082;
        v89 = object_getClassName(self);
        v90 = 2082;
        v91 = sel_getName(a2);
        v92 = 1024;
        v93 = 1067;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Field lost before End Of Transaction - disabling emulation", buf, 0x22u);
      }
    }

    v14 = +[_NFHardwareManager sharedHardwareManager];
    v15 = sub_10004BF60(NFRoutingConfig, 0);
    v16 = [v14 setRoutingConfig:v15];

LABEL_16:
    transactionState = self->_transactionState;
    goto LABEL_17;
  }
}

- (BOOL)_isField:(id)field compatibleWithApplet:(id)applet
{
  fieldCopy = field;
  appletCopy = applet;
  if (([appletCopy isTypeF] & 1) == 0 && (objc_msgSend(fieldCopy, "rfTechnology") & 3) != 0 || objc_msgSend(appletCopy, "isTypeF") && (objc_msgSend(fieldCopy, "rfTechnology") & 4) != 0)
  {
    v10 = 1;
  }

  else
  {
    expressModeManager = [(_NFXPCSession *)self expressModeManager];
    identifier = [appletCopy identifier];
    v10 = sub_10003F2E0(expressModeManager, identifier, fieldCopy);
  }

  return v10;
}

- (BOOL)_checkActiveAppletCompatibilityWithField:(id)field
{
  fieldCopy = field;
  if ([fieldCopy rfTechnology] == 8)
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

      v7(4, "%c[%{public}s %{public}s]:%i Only ECP found; assumes active applet is compatible with reader", v11, ClassName, Name, 1147);
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
      v94 = v14;
      v95 = 2082;
      v96 = object_getClassName(self);
      v97 = 2082;
      v98 = sel_getName(a2);
      v99 = 1024;
      v100 = 1147;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Only ECP found; assumes active applet is compatible with reader", buf, 0x22u);
    }

    v15 = 1;
LABEL_75:

    goto LABEL_76;
  }

  activeApplet = [(_NFContactlessSession *)self activeApplet];
  v17 = [(_NFContactlessPaymentSession *)self _isField:fieldCopy compatibleWithApplet:activeApplet];

  if ((v17 & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v19 = v18;
      v20 = object_getClass(self);
      v21 = class_isMetaClass(v20);
      v22 = object_getClassName(self);
      v83 = sel_getName(a2);
      v23 = 45;
      if (v21)
      {
        v23 = 43;
      }

      v19(6, "%c[%{public}s %{public}s]:%i Active applet not compatible with current field - checking for group members", v23, v22, v83, 1153);
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

      *buf = 67109890;
      v94 = v26;
      v95 = 2082;
      v96 = object_getClassName(self);
      v97 = 2082;
      v98 = sel_getName(a2);
      v99 = 1024;
      v100 = 1153;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Active applet not compatible with current field - checking for group members", buf, 0x22u);
    }

    activeAppletGroupMembers = [(_NFContactlessSession *)self activeAppletGroupMembers];
    v28 = [activeAppletGroupMembers copy];

    if (v28)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v29 = NFLogGetLogger();
      if (v29)
      {
        v30 = v29;
        v31 = object_getClass(self);
        v32 = class_isMetaClass(v31);
        v79 = object_getClassName(self);
        v84 = sel_getName(a2);
        v33 = 45;
        if (v32)
        {
          v33 = 43;
        }

        v30(6, "%c[%{public}s %{public}s]:%i Group applets: %{public}@", v33, v79, v84, 1157, v28);
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
        *buf = 67110146;
        v94 = v36;
        v95 = 2082;
        v96 = v37;
        v97 = 2082;
        v98 = v38;
        v99 = 1024;
        v100 = 1157;
        v101 = 2114;
        v102 = v28;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Group applets: %{public}@", buf, 0x2Cu);
      }
    }

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v12 = v28;
    v39 = [v12 countByEnumeratingWithState:&v88 objects:v92 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v89;
LABEL_36:
      v42 = 0;
      while (1)
      {
        if (*v89 != v41)
        {
          objc_enumerationMutation(v12);
        }

        v43 = *(*(&v88 + 1) + 8 * v42);
        if ([(_NFContactlessPaymentSession *)self _isField:fieldCopy compatibleWithApplet:v43])
        {
          break;
        }

        if (v40 == ++v42)
        {
          v40 = [v12 countByEnumeratingWithState:&v88 objects:v92 count:16];
          if (v40)
          {
            goto LABEL_36;
          }

          goto LABEL_63;
        }
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v44 = NFLogGetLogger();
      if (v44)
      {
        v45 = v44;
        v46 = object_getClass(self);
        v47 = class_isMetaClass(v46);
        v80 = object_getClassName(self);
        v85 = sel_getName(a2);
        v48 = 45;
        if (v47)
        {
          v48 = 43;
        }

        v45(6, "%c[%{public}s %{public}s]:%i Found compatible group applet: %{public}@", v48, v80, v85, 1163, v43);
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
        *buf = 67110146;
        v94 = v51;
        v95 = 2082;
        v96 = v52;
        v97 = 2082;
        v98 = v53;
        v99 = 1024;
        v100 = 1163;
        v101 = 2114;
        v102 = v43;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Found compatible group applet: %{public}@", buf, 0x2Cu);
      }

      v54 = [(_NFContactlessSession *)self setActiveApplet:v43];
      if (!v54)
      {
        v15 = 1;
        v73 = v12;
        goto LABEL_74;
      }

      v55 = v54;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v56 = NFLogGetLogger();
      if (v56)
      {
        v57 = v56;
        v58 = object_getClass(self);
        v59 = class_isMetaClass(v58);
        v60 = object_getClassName(self);
        v86 = sel_getName(a2);
        v61 = 45;
        if (v59)
        {
          v61 = 43;
        }

        v57(3, "%c[%{public}s %{public}s]:%i Failed to switch to group applet - firing auth failure", v61, v60, v86, 1166);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v62 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v63 = object_getClass(self);
        if (class_isMetaClass(v63))
        {
          v64 = 43;
        }

        else
        {
          v64 = 45;
        }

        v65 = object_getClassName(self);
        v66 = sel_getName(a2);
        *buf = 67109890;
        v94 = v64;
        v95 = 2082;
        v96 = v65;
        v97 = 2082;
        v98 = v66;
        v99 = 1024;
        v100 = 1166;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to switch to group applet - firing auth failure", buf, 0x22u);
      }

      remoteObject = [(_NFXPCSession *)self remoteObject];
      [remoteObject didFailDeferredAuthorization];

      [(_NFContactlessPaymentSession *)self startDefaultMode];
    }

LABEL_63:

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v68 = NFLogGetLogger();
    if (v68)
    {
      v69 = v68;
      v70 = object_getClass(self);
      v71 = class_isMetaClass(v70);
      v81 = object_getClassName(self);
      v87 = sel_getName(a2);
      v72 = 45;
      if (v71)
      {
        v72 = 43;
      }

      v69(3, "%c[%{public}s %{public}s]:%i No compatible applet found for field: %{public}@", v72, v81, v87, 1177, fieldCopy);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v73 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      v74 = object_getClass(self);
      if (class_isMetaClass(v74))
      {
        v75 = 43;
      }

      else
      {
        v75 = 45;
      }

      v76 = object_getClassName(self);
      v77 = sel_getName(a2);
      *buf = 67110146;
      v94 = v75;
      v95 = 2082;
      v96 = v76;
      v97 = 2082;
      v98 = v77;
      v99 = 1024;
      v100 = 1177;
      v101 = 2114;
      v102 = fieldCopy;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No compatible applet found for field: %{public}@", buf, 0x2Cu);
    }

    v15 = 0;
LABEL_74:

    goto LABEL_75;
  }

  v15 = 1;
LABEL_76:

  return v15;
}

- (BOOL)_checkDeferredActiveAppletCompatibilityWithField:(id)field
{
  fieldCopy = field;
  deferredActivationApplet = [(_NFContactlessSession *)self deferredActivationApplet];
  v7 = [(_NFContactlessPaymentSession *)self _switchToBestGroupMemberOfHead:deferredActivationApplet forField:fieldCopy];

  if (v7)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v9(3, "%c[%{public}s %{public}s]:%i Failed to _switchToBestGroupMember, back to defaultMode : %{public}@", v12, ClassName, Name, 1187, v7);
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

      *buf = 67110146;
      v21 = v15;
      v22 = 2082;
      v23 = object_getClassName(self);
      v24 = 2082;
      v25 = sel_getName(a2);
      v26 = 1024;
      v27 = 1187;
      v28 = 2114;
      v29 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to _switchToBestGroupMember, back to defaultMode : %{public}@", buf, 0x2Cu);
    }

    remoteObject = [(_NFXPCSession *)self remoteObject];
    [remoteObject didFailDeferredAuthorization];

    [(_NFContactlessPaymentSession *)self startDefaultMode];
  }

  return v7 == 0;
}

- (BOOL)_checkActiveVASCompatibilityWithField:(id)field
{
  fieldCopy = field;
  v5 = -[_NFContactlessPaymentSession readyForVAS](self, "readyForVAS") && [fieldCopy notificationType] == 2 && objc_msgSend(fieldCopy, "terminalMode") < 3;

  return v5;
}

- (void)_performDeferredAuthIfNeeded:(id)needed
{
  neededCopy = needed;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v12 = 45;
    if (isMetaClass)
    {
      v12 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i deferred requested:%d - field:%{public}@", v12, ClassName, Name, 1211, self->_deferredAuthRequested, neededCopy);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v13 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
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

    v16 = object_getClassName(self);
    v17 = sel_getName(a2);
    deferredAuthRequested = self->_deferredAuthRequested;
    *buf = 67110402;
    v53 = v15;
    v54 = 2082;
    v55 = v16;
    v56 = 2082;
    v57 = v17;
    v58 = 1024;
    v59 = 1211;
    v60 = 1024;
    v61 = deferredAuthRequested;
    v62 = 2114;
    v63 = neededCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i deferred requested:%d - field:%{public}@", buf, 0x32u);
  }

  if (!self->_deferredAuthRequested)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFLogGetLogger();
    if (v23)
    {
      v24 = v23;
      v25 = object_getClass(self);
      v26 = class_isMetaClass(v25);
      v27 = object_getClassName(self);
      v49 = sel_getName(a2);
      v28 = 45;
      if (v26)
      {
        v28 = 43;
      }

      v24(6, "%c[%{public}s %{public}s]:%i deferred auth not requested", v28, v27, v49, 1213);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    v30 = object_getClass(self);
    if (class_isMetaClass(v30))
    {
      v31 = 43;
    }

    else
    {
      v31 = 45;
    }

    v32 = object_getClassName(self);
    v33 = sel_getName(a2);
    *buf = 67109890;
    v53 = v31;
    v54 = 2082;
    v55 = v32;
    v56 = 2082;
    v57 = v33;
    v58 = 1024;
    v59 = 1213;
    v34 = "%c[%{public}s %{public}s]:%i deferred auth not requested";
    v35 = v29;
    v36 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_34;
  }

  if (!self->_fieldPresent)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFLogGetLogger();
    if (v37)
    {
      v38 = v37;
      v39 = object_getClass(self);
      v40 = class_isMetaClass(v39);
      v41 = object_getClassName(self);
      v50 = sel_getName(a2);
      v42 = 45;
      if (v40)
      {
        v42 = 43;
      }

      v38(3, "%c[%{public}s %{public}s]:%i no field", v42, v41, v50, 1218);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    v43 = object_getClass(self);
    if (class_isMetaClass(v43))
    {
      v44 = 43;
    }

    else
    {
      v44 = 45;
    }

    v45 = object_getClassName(self);
    v46 = sel_getName(a2);
    *buf = 67109890;
    v53 = v44;
    v54 = 2082;
    v55 = v45;
    v56 = 2082;
    v57 = v46;
    v58 = 1024;
    v59 = 1218;
    v34 = "%c[%{public}s %{public}s]:%i no field";
    v35 = v29;
    v36 = OS_LOG_TYPE_ERROR;
LABEL_34:
    _os_log_impl(&_mh_execute_header, v35, v36, v34, buf, 0x22u);
LABEL_35:

    goto LABEL_36;
  }

  v19 = [(_NFContactlessPaymentSession *)self _checkActiveVASCompatibilityWithField:neededCopy];
  activeApplet = [(_NFContactlessSession *)self activeApplet];

  if (activeApplet)
  {
    LODWORD(activeApplet) = [(_NFContactlessPaymentSession *)self _checkActiveAppletCompatibilityWithField:neededCopy];
  }

  deferredActivationApplet = [(_NFContactlessSession *)self deferredActivationApplet];

  if (deferredActivationApplet)
  {
    v22 = [(_NFContactlessPaymentSession *)self _checkDeferredActiveAppletCompatibilityWithField:neededCopy];
  }

  else
  {
    v22 = 0;
  }

  if ((activeApplet | v22 | v19))
  {
    deferredAuth = self->_deferredAuth;
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_1001354A8;
    v51[3] = &unk_100319368;
    v51[4] = self;
    [(_NFContactlessPaymentSession *)self _performAuthAndStartCardEmulation:deferredAuth fromDeferred:1 completion:v51];
    v48 = self->_deferredAuth;
    self->_deferredAuth = 0;
  }

LABEL_36:
}

- (void)_performAuthAndStartCardEmulation:(id)emulation fromDeferred:(BOOL)deferred completion:(id)completion
{
  deferredCopy = deferred;
  emulationCopy = emulation;
  completionCopy = completion;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v11 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    clientName = [(_NFXPCSession *)self clientName];
    v17 = 45;
    if (isMetaClass)
    {
      v17 = 43;
    }

    v11(6, "%c[%{public}s %{public}s]:%i %{public}@", v17, ClassName, Name, 1250, clientName);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v18 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
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

    v21 = object_getClassName(self);
    v22 = sel_getName(a2);
    clientName2 = [(_NFXPCSession *)self clientName];
    *buf = 67110146;
    v91 = v20;
    v92 = 2082;
    v93 = v21;
    v94 = 2082;
    v95 = v22;
    v96 = 1024;
    v97 = 1250;
    v98 = 2114;
    v99 = clientName2;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v24 = NFLogGetLogger();
  if (v24)
  {
    v25 = v24;
    v26 = object_getClass(self);
    v27 = class_isMetaClass(v26);
    v83 = object_getClassName(self);
    v84 = sel_getName(a2);
    v28 = 45;
    if (v27)
    {
      v28 = 43;
    }

    v25(6, "%c[%{public}s %{public}s]:%i auth: %{public}@", v28, v83, v84, 1251, emulationCopy);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v29 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = object_getClass(self);
    if (class_isMetaClass(v30))
    {
      v31 = 43;
    }

    else
    {
      v31 = 45;
    }

    v32 = object_getClassName(self);
    v33 = sel_getName(a2);
    *buf = 67110146;
    v91 = v31;
    v92 = 2082;
    v93 = v32;
    v94 = 2082;
    v95 = v33;
    v96 = 1024;
    v97 = 1251;
    v98 = 2114;
    v99 = emulationCopy;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i auth: %{public}@", buf, 0x2Cu);
  }

  v34 = NFSharedSignpostLog();
  if (os_signpost_enabled(v34))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "performAuthAndStartCardEmulation", &unk_1002E8B7A, buf, 2u);
  }

  self->_deferredAuthRequested = 0;
  [(NFTimer *)self->_deferredAuthTimer stopTimer];
  secureElementWrapper = [(_NFContactlessSession *)self secureElementWrapper];
  v87.receiver = self;
  v87.super_class = _NFContactlessPaymentSession;
  activeApplet = [(_NFContactlessSession *)&v87 activeApplet];
  v37 = sub_10026369C(secureElementWrapper, activeApplet);

  v38 = +[_NFHardwareManager sharedHardwareManager];
  v39 = v38;
  if (v37)
  {
    v40 = 2;
  }

  else
  {
    v40 = 1;
  }

  [v38 reconfigureDynamicTransitRF:v40 withOverride:1];

  if (!emulationCopy)
  {
    goto LABEL_47;
  }

  if (deferredCopy)
  {
    activeApplet2 = [(_NFContactlessSession *)self activeApplet];

    if (!activeApplet2)
    {
      goto LABEL_47;
    }
  }

  sub_10026449C();
  kdebug_trace();
  v42 = NFSharedSignpostLog();
  if (os_signpost_enabled(v42))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AUTHORIZE_APPLET", &unk_1002E8B7A, buf, 2u);
  }

  v43 = [(_NFContactlessPaymentSession *)self _authorize:emulationCopy];
  if (v43)
  {
    v44 = v43;
    v45 = NFSharedSignpostLog();
    if (os_signpost_enabled(v45))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "performAuthAndStartCardEmulation", "error", buf, 2u);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v46 = NFLogGetLogger();
    if (v46)
    {
      v47 = v46;
      v48 = object_getClass(self);
      v49 = class_isMetaClass(v48);
      v50 = object_getClassName(self);
      v51 = sel_getName(a2);
      if (deferredCopy)
      {
        v52 = "yes";
      }

      else
      {
        v52 = "no";
      }

      v85 = v52;
      v53 = 45;
      if (v49)
      {
        v53 = 43;
      }

      v47(3, "%c[%{public}s %{public}s]:%i Authorization failed.  For deferred - [%s] : %@", v53, v50, v51, 1284, v85, v44);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v54 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
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
      *buf = 67110402;
      v59 = "yes";
      if (!deferredCopy)
      {
        v59 = "no";
      }

      v91 = v56;
      v92 = 2082;
      v93 = v57;
      v94 = 2082;
      v95 = v58;
      v96 = 1024;
      v97 = 1284;
      v98 = 2080;
      v99 = v59;
      v100 = 2112;
      v101 = v44;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Authorization failed.  For deferred - [%s] : %@", buf, 0x36u);
    }

    completionCopy[2](completionCopy, v44);
    [(_NFContactlessPaymentSession *)self startDefaultMode];
  }

  else
  {
LABEL_47:
    kdebug_trace();
    v60 = NFSharedSignpostLog();
    if (os_signpost_enabled(v60))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v60, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "START_PAYMENT_EMULATION", &unk_1002E8B7A, buf, 2u);
    }

    if ([(_NFContactlessPaymentSession *)self startCardEmulationWithType:[(_NFContactlessPaymentSession *)self defaultEmulationType]])
    {
      [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_1003398C8];
      sub_10022E700(NFDailyStatisticsCALogger, @"totalCEEnable");
      v61 = NFSharedSignpostLog();
      if (os_signpost_enabled(v61))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v61, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "performAuthAndStartCardEmulation", &unk_1002E8B7A, buf, 2u);
      }

      if (!deferredCopy)
      {
        kdebug_trace();
        v62 = NFSharedSignpostLog();
        if (os_signpost_enabled(v62))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v62, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLIENT_CALLBACK", &unk_1002E8B7A, buf, 2u);
        }
      }

      completionCopy[2](completionCopy, 0);
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v63 = NFLogGetLogger();
      if (v63)
      {
        v64 = v63;
        v65 = object_getClass(self);
        v66 = class_isMetaClass(v65);
        v67 = object_getClassName(self);
        v68 = sel_getName(a2);
        if (deferredCopy)
        {
          v69 = " (from) deferred";
        }

        else
        {
          v69 = "";
        }

        v70 = 45;
        if (v66)
        {
          v70 = 43;
        }

        v64(3, "%c[%{public}s %{public}s]:%i Failed to start%s card emulation", v70, v67, v68, 1295, v69);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v71 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        v72 = object_getClass(self);
        if (class_isMetaClass(v72))
        {
          v73 = 43;
        }

        else
        {
          v73 = 45;
        }

        v74 = object_getClassName(self);
        v75 = sel_getName(a2);
        *buf = 67110146;
        if (deferredCopy)
        {
          v76 = " (from) deferred";
        }

        else
        {
          v76 = "";
        }

        v91 = v73;
        v92 = 2082;
        v93 = v74;
        v94 = 2082;
        v95 = v75;
        v96 = 1024;
        v97 = 1295;
        v98 = 2080;
        v99 = v76;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to start%s card emulation", buf, 0x2Cu);
      }

      if (self->_hasAuthorized)
      {
        [(_NFContactlessPaymentSession *)self _deauthorize];
      }

      v77 = NFSharedSignpostLog();
      if (os_signpost_enabled(v77))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v77, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "performAuthAndStartCardEmulation", "error", buf, 2u);
      }

      v78 = [NSError alloc];
      v79 = [NSString stringWithUTF8String:"nfcd"];
      v88 = NSLocalizedDescriptionKey;
      v80 = [NSString stringWithUTF8String:"Stack Error"];
      v89 = v80;
      v81 = [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];
      v82 = [v78 initWithDomain:v79 code:15 userInfo:v81];
      completionCopy[2](completionCopy, v82);

      [(_NFContactlessPaymentSession *)self startDefaultMode];
    }
  }
}

- (id)_switchToBestGroupMemberOfHead:(id)head forField:(id)field
{
  headCopy = head;
  fieldCopy = field;
  workQueue = [(_NFSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v62 = headCopy;
  groupMemberIDs = [headCopy groupMemberIDs];
  v9 = [groupMemberIDs countByEnumeratingWithState:&v65 objects:v79 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v66;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v66 != v11)
        {
          objc_enumerationMutation(groupMemberIDs);
        }

        v13 = *(*(&v65 + 1) + 8 * i);
        secureElementWrapper = [(_NFContactlessSession *)self secureElementWrapper];
        v15 = [NSData NF_dataWithHexString:v13];
        v16 = sub_100257F24(secureElementWrapper, v15, 0);

        if (v16)
        {
          expressModeManager = [(_NFXPCSession *)self expressModeManager];
          identifier = [v16 identifier];
          v19 = sub_10003F2E0(expressModeManager, identifier, fieldCopy);

          if (v19)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v46 = Logger;
              Class = object_getClass(self);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(self);
              Name = sel_getName(a2);
              identifier2 = [v16 identifier];
              v52 = 45;
              if (isMetaClass)
              {
                v52 = 43;
              }

              v46(6, "%c[%{public}s %{public}s]:%i Applet %{public}@ matches field, switching", v52, ClassName, Name, 1337, identifier2);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v53 = NFSharedLogGetLogger();
            v30 = v62;
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              v54 = object_getClass(self);
              if (class_isMetaClass(v54))
              {
                v55 = 43;
              }

              else
              {
                v55 = 45;
              }

              v56 = object_getClassName(self);
              v57 = sel_getName(a2);
              identifier3 = [v16 identifier];
              *buf = 67110146;
              v70 = v55;
              v71 = 2082;
              v72 = v56;
              v73 = 2082;
              v74 = v57;
              v75 = 1024;
              v76 = 1337;
              v77 = 2114;
              v78 = identifier3;
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Applet %{public}@ matches field, switching", buf, 0x2Cu);
            }

            v44 = [(_NFContactlessSession *)self setActiveApplet:v16];

            goto LABEL_40;
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
            v60 = object_getClassName(self);
            v61 = sel_getName(a2);
            v24 = 45;
            if (v23)
            {
              v24 = 43;
            }

            v21(4, "%c[%{public}s %{public}s]:%i Got AID %{public}@ from groupMemberIDs, but secureElementWrapper couldn't find it?!", v24, v60, v61, 1328, v13);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v16 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
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

            v27 = object_getClassName(self);
            v28 = sel_getName(a2);
            *buf = 67110146;
            v70 = v26;
            v71 = 2082;
            v72 = v27;
            v73 = 2082;
            v74 = v28;
            v75 = 1024;
            v76 = 1328;
            v77 = 2114;
            v78 = v13;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Got AID %{public}@ from groupMemberIDs, but secureElementWrapper couldn't find it?!", buf, 0x2Cu);
          }
        }
      }

      v10 = [groupMemberIDs countByEnumeratingWithState:&v65 objects:v79 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v29 = NFLogGetLogger();
  v30 = v62;
  if (v29)
  {
    v31 = v29;
    v32 = object_getClass(self);
    v33 = class_isMetaClass(v32);
    v34 = object_getClassName(self);
    v35 = sel_getName(a2);
    identifier4 = [v62 identifier];
    v37 = 45;
    if (v33)
    {
      v37 = 43;
    }

    v31(6, "%c[%{public}s %{public}s]:%i No group members matched the field, using head applet %{public}@", v37, v34, v35, 1342, identifier4);
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
    identifier5 = [v62 identifier];
    *buf = 67110146;
    v70 = v40;
    v71 = 2082;
    v72 = v41;
    v73 = 2082;
    v74 = v42;
    v75 = 1024;
    v76 = 1342;
    v77 = 2114;
    v78 = identifier5;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No group members matched the field, using head applet %{public}@", buf, 0x2Cu);
  }

  v44 = [(_NFContactlessSession *)self setActiveApplet:v62];
LABEL_40:

  return v44;
}

- (void)handleFieldNotification:(id)notification
{
  notificationCopy = notification;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    deferredAuthRequested = self->_deferredAuthRequested;
    deferredActivationApplet = [(_NFContactlessSession *)self deferredActivationApplet];
    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i deferredAuth = %d : deferredActivation: %{public}@", v14, ClassName, Name, 1383, deferredAuthRequested, deferredActivationApplet);
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
    v20 = self->_deferredAuthRequested;
    deferredActivationApplet2 = [(_NFContactlessSession *)self deferredActivationApplet];
    *buf = 67110402;
    v26 = v17;
    v27 = 2082;
    v28 = v18;
    v29 = 2082;
    v30 = v19;
    v31 = 1024;
    v32 = 1383;
    v33 = 1024;
    v34 = v20;
    v35 = 2114;
    v36 = deferredActivationApplet2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i deferredAuth = %d : deferredActivation: %{public}@", buf, 0x32u);
  }

  fieldNotification = self->_fieldNotification;
  self->_fieldNotification = notificationCopy;
  v23 = notificationCopy;

  v24.receiver = self;
  v24.super_class = _NFContactlessPaymentSession;
  [(_NFContactlessSession *)&v24 handleFieldNotification:v23];
  [(_NFContactlessPaymentSession *)self _performDeferredAuthIfNeeded:v23];
}

- (void)handleFieldReset
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

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 1393);
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
    v28 = v12;
    v29 = 2082;
    v30 = object_getClassName(self);
    v31 = 2082;
    v32 = sel_getName(a2);
    v33 = 1024;
    v34 = 1393;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  if (self->_transactionState == 1)
  {
    kdebug_trace();
    v13 = NFSharedSignpostLog();
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TX_TEAR", &unk_1002E8B7A, buf, 2u);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFLogGetLogger();
    if (v14)
    {
      v15 = v14;
      v16 = object_getClass(self);
      v17 = class_isMetaClass(v16);
      v18 = object_getClassName(self);
      v26 = sel_getName(a2);
      v19 = 45;
      if (v17)
      {
        v19 = 43;
      }

      v15(5, "%c[%{public}s %{public}s]:%i Field loss before end of transaction", v19, v18, v26, 1398);
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
      *buf = 67109890;
      v28 = v22;
      v29 = 2082;
      v30 = v23;
      v31 = 2082;
      v32 = v24;
      v33 = 1024;
      v34 = 1398;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Field loss before end of transaction", buf, 0x22u);
    }

    self->_transactionState = 4;
  }
}

- (void)handleTimerExpiredEvent:(id)event
{
  eventCopy = event;
  kdebug_trace();
  v6 = NFSharedSignpostLog();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AUTH_EXPIRED", &unk_1002E8B7A, buf, 2u);
  }

  PLLogRegisteredEvent();
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v8 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v8(6, "%c[%{public}s %{public}s]:%i %{public}@", v11, ClassName, Name, 1411, eventCopy);
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

    v15 = object_getClassName(self);
    v16 = sel_getName(a2);
    *buf = 67110146;
    v50 = v14;
    v51 = 2082;
    v52 = v15;
    v53 = 2082;
    v54 = v16;
    v55 = 1024;
    v56 = 1411;
    v57 = 2114;
    v58 = eventCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v17 = eventCopy;
  v18 = [(__CFString *)v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v45;
    while (2)
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v45 != v20)
        {
          objc_enumerationMutation(v17);
        }

        identifier3 = *(*(&v44 + 1) + 8 * i);
        activeApplet = [(_NFContactlessSession *)self activeApplet];
        identifier = [activeApplet identifier];
        v25 = [(__CFString *)identifier3 isEqualToString:identifier];

        if (v25)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v30 = NFLogGetLogger();
          if (v30)
          {
            v31 = v30;
            v32 = object_getClass(self);
            v33 = class_isMetaClass(v32);
            v41 = object_getClassName(self);
            v43 = sel_getName(a2);
            v34 = 45;
            if (v33)
            {
              v34 = 43;
            }

            v31(6, "%c[%{public}s %{public}s]:%i Firing timer expired event for %{public}@", v34, v41, v43, 1414, identifier3);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          activeApplet3 = NFSharedLogGetLogger();
          if (os_log_type_enabled(activeApplet3, OS_LOG_TYPE_DEFAULT))
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
            *buf = 67110146;
            v50 = v36;
            v51 = 2082;
            v52 = v37;
            v53 = 2082;
            v54 = v38;
            v55 = 1024;
            v56 = 1414;
            v57 = 2114;
            v58 = identifier3;
            _os_log_impl(&_mh_execute_header, activeApplet3, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Firing timer expired event for %{public}@", buf, 0x2Cu);
          }

          v29 = v17;
          goto LABEL_32;
        }
      }

      v19 = [(__CFString *)v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  activeApplet2 = [(_NFContactlessSession *)self activeApplet];
  identifier2 = [activeApplet2 identifier];

  if (identifier2)
  {
    activeApplet3 = [(_NFContactlessSession *)self activeApplet];
    identifier3 = [activeApplet3 identifier];
    v29 = identifier3;
LABEL_32:
  }

  else
  {
    identifier3 = &stru_10031EA18;
    v29 = &stru_10031EA18;
  }

  remoteObject = [(_NFXPCSession *)self remoteObject];
  [remoteObject didExpireTransactionForApplet:identifier3];

  [(_NFContactlessPaymentSession *)self startDefaultMode];
}

- (void)handleTransactionStartEvent:(id)event atlData:(id)data
{
  eventCopy = event;
  dataCopy = data;
  v10 = [dataCopy objectForKeyedSubscript:@"DelayExpressReentry"];

  if (v10)
  {
    v11 = [dataCopy objectForKeyedSubscript:@"DelayExpressReentry"];
    [v11 doubleValue];
    self->_delayExpressMode = v12 / 1000.0;
  }

  else
  {
    self->_delayExpressMode = 0.0;
  }

  kdebug_trace();
  v13 = NFSharedSignpostLog();
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TX_START", "Transaction Start Event", buf, 2u);
  }

  PLLogRegisteredEvent();
  self->_dontWaitForEOT = 0;
  self->_ignoreRFEvents = 0;
  if (dataCopy)
  {
    v14 = [dataCopy valueForKey:@"DontWaitForEOT"];
    bOOLValue = [v14 BOOLValue];

    if (bOOLValue)
    {
      self->_dontWaitForEOT = 1;
    }

    v16 = [dataCopy valueForKey:@"IgnoreRFEvents"];
    bOOLValue2 = [v16 BOOLValue];

    if (bOOLValue2)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v19 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v23 = 45;
        if (isMetaClass)
        {
          v23 = 43;
        }

        v19(5, "%c[%{public}s %{public}s]:%i Ignore RF events", v23, ClassName, Name, 1454);
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

        v27 = object_getClassName(self);
        v28 = sel_getName(a2);
        *buf = 67109890;
        v115 = v26;
        v116 = 2082;
        v117 = v27;
        v118 = 2082;
        v119 = v28;
        v120 = 1024;
        v121 = 1454;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Ignore RF events", buf, 0x22u);
      }

      self->_ignoreRFEvents = 1;
    }
  }

  v29 = [dataCopy objectForKeyedSubscript:@"EoTCallbackExpected"];
  bOOLValue3 = [v29 BOOLValue];

  if (bOOLValue3)
  {
    self->_endOfTransactionRequired = 1;
  }

  if ([(_NFContactlessSession *)self plasticCardMode])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v31 = NFLogGetLogger();
    if (v31)
    {
      v32 = v31;
      v33 = object_getClass(self);
      v34 = class_isMetaClass(v33);
      v35 = object_getClassName(self);
      v108 = sel_getName(a2);
      v36 = 45;
      if (v34)
      {
        v36 = 43;
      }

      v32(5, "%c[%{public}s %{public}s]:%i Plastic card mode active - not handling start event", v36, v35, v108, 1465);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    remoteObject2 = NFSharedLogGetLogger();
    if (os_log_type_enabled(remoteObject2, OS_LOG_TYPE_DEFAULT))
    {
      v38 = object_getClass(self);
      if (class_isMetaClass(v38))
      {
        v39 = 43;
      }

      else
      {
        v39 = 45;
      }

      v40 = object_getClassName(self);
      v41 = sel_getName(a2);
      *buf = 67109890;
      v115 = v39;
      v116 = 2082;
      v117 = v40;
      v118 = 2082;
      v119 = v41;
      v120 = 1024;
      v121 = 1465;
      v42 = "%c[%{public}s %{public}s]:%i Plastic card mode active - not handling start event";
LABEL_32:
      _os_log_impl(&_mh_execute_header, remoteObject2, OS_LOG_TYPE_DEFAULT, v42, buf, 0x22u);
      goto LABEL_82;
    }

    goto LABEL_82;
  }

  expressModeManager = [(_NFXPCSession *)self expressModeManager];
  if (expressModeManager)
  {
    v44 = expressModeManager[181];

    if (v44 == 1)
    {
      secureElementWrapper = [(_NFContactlessSession *)self secureElementWrapper];
      appletIdentifier = [eventCopy appletIdentifier];
      v47 = [NSData NF_dataWithHexString:appletIdentifier];
      remoteObject2 = sub_100257F24(secureElementWrapper, v47, 0);

      moduleIdentifierAsData = [remoteObject2 moduleIdentifierAsData];
      v49 = [[NSData alloc] initWithBytes:&unk_10029779A length:10];
      if ([moduleIdentifierAsData isEqualToData:v49])
      {
      }

      else
      {
        v50 = [[NSData alloc] initWithBytes:&unk_1002977A4 length:10];
        v51 = [moduleIdentifierAsData isEqualToData:v50];

        if (!v51)
        {
          background = [eventCopy background];
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v65 = NFLogGetLogger();
          v66 = v65;
          if (!background)
          {
            if (v65)
            {
              v75 = object_getClass(self);
              v76 = class_isMetaClass(v75);
              v77 = object_getClassName(self);
              v111 = sel_getName(a2);
              v78 = 45;
              if (v76)
              {
                v78 = 43;
              }

              v66(6, "%c[%{public}s %{public}s]:%i firing express transaction started state", v78, v77, v111, 1482);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v79 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              v80 = object_getClass(self);
              if (class_isMetaClass(v80))
              {
                v81 = 43;
              }

              else
              {
                v81 = 45;
              }

              v82 = object_getClassName(self);
              v83 = sel_getName(a2);
              *buf = 67109890;
              v115 = v81;
              v116 = 2082;
              v117 = v82;
              v118 = 2082;
              v119 = v83;
              v120 = 1024;
              v121 = 1482;
              _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i firing express transaction started state", buf, 0x22u);
            }

            remoteObject = [(_NFXPCSession *)self remoteObject];
            appletIdentifier2 = [eventCopy appletIdentifier];
            [remoteObject didExpressModeStateChange:2 withObject:appletIdentifier2];

            self->_sendExpressModeEnded = 0;
            goto LABEL_49;
          }

          if (v65)
          {
            v67 = object_getClass(self);
            v68 = class_isMetaClass(v67);
            v69 = object_getClassName(self);
            v110 = sel_getName(a2);
            v70 = 45;
            if (v68)
            {
              v70 = 43;
            }

            v66(6, "%c[%{public}s %{public}s]:%i ignoring express mode update for background event.", v70, v69, v110, 1479);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v58 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
LABEL_48:

LABEL_49:
            goto LABEL_82;
          }

          v71 = object_getClass(self);
          if (class_isMetaClass(v71))
          {
            v72 = 43;
          }

          else
          {
            v72 = 45;
          }

          v73 = object_getClassName(self);
          v74 = sel_getName(a2);
          *buf = 67109890;
          v115 = v72;
          v116 = 2082;
          v117 = v73;
          v118 = 2082;
          v119 = v74;
          v120 = 1024;
          v121 = 1479;
          v63 = "%c[%{public}s %{public}s]:%i ignoring express mode update for background event.";
LABEL_47:
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, v63, buf, 0x22u);
          goto LABEL_48;
        }
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v52 = NFLogGetLogger();
      if (v52)
      {
        v53 = v52;
        v54 = object_getClass(self);
        v55 = class_isMetaClass(v54);
        v56 = object_getClassName(self);
        v109 = sel_getName(a2);
        v57 = 45;
        if (v55)
        {
          v57 = 43;
        }

        v53(6, "%c[%{public}s %{public}s]:%i applet v2.0 - dropping transaction start event", v57, v56, v109, 1474);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v58 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      v59 = object_getClass(self);
      if (class_isMetaClass(v59))
      {
        v60 = 43;
      }

      else
      {
        v60 = 45;
      }

      v61 = object_getClassName(self);
      v62 = sel_getName(a2);
      *buf = 67109890;
      v115 = v60;
      v116 = 2082;
      v117 = v61;
      v118 = 2082;
      v119 = v62;
      v120 = 1024;
      v121 = 1474;
      v63 = "%c[%{public}s %{public}s]:%i applet v2.0 - dropping transaction start event";
      goto LABEL_47;
    }
  }

  if (self->_inWiredMode && ![(_NFContactlessPaymentSession *)self allowTransactionsInWiredMode])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v97 = NFLogGetLogger();
    if (v97)
    {
      v98 = v97;
      v99 = object_getClass(self);
      v100 = class_isMetaClass(v99);
      v101 = object_getClassName(self);
      v113 = sel_getName(a2);
      v102 = 45;
      if (v100)
      {
        v102 = 43;
      }

      v98(5, "%c[%{public}s %{public}s]:%i Suppresing Start Event when in Wired", v102, v101, v113, 1491);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    remoteObject2 = NFSharedLogGetLogger();
    if (os_log_type_enabled(remoteObject2, OS_LOG_TYPE_DEFAULT))
    {
      v103 = object_getClass(self);
      if (class_isMetaClass(v103))
      {
        v104 = 43;
      }

      else
      {
        v104 = 45;
      }

      v105 = object_getClassName(self);
      v106 = sel_getName(a2);
      *buf = 67109890;
      v115 = v104;
      v116 = 2082;
      v117 = v105;
      v118 = 2082;
      v119 = v106;
      v120 = 1024;
      v121 = 1491;
      v42 = "%c[%{public}s %{public}s]:%i Suppresing Start Event when in Wired";
      goto LABEL_32;
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v86 = NFLogGetLogger();
    if (v86)
    {
      v87 = v86;
      v88 = object_getClass(self);
      v89 = class_isMetaClass(v88);
      v90 = object_getClassName(self);
      v112 = sel_getName(a2);
      v91 = 45;
      if (v89)
      {
        v91 = 43;
      }

      v87(6, "%c[%{public}s %{public}s]:%i firing start transaction callback", v91, v90, v112, 1494);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v92 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      v93 = object_getClass(self);
      if (class_isMetaClass(v93))
      {
        v94 = 43;
      }

      else
      {
        v94 = 45;
      }

      v95 = object_getClassName(self);
      v96 = sel_getName(a2);
      *buf = 67109890;
      v115 = v94;
      v116 = 2082;
      v117 = v95;
      v118 = 2082;
      v119 = v96;
      v120 = 1024;
      v121 = 1494;
      _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i firing start transaction callback", buf, 0x22u);
    }

    self->_transactionState = 1;
    objc_storeStrong(&self->_transactionStartEvent, event);
    remoteObject2 = [(_NFXPCSession *)self remoteObject];
    [remoteObject2 didStartTransaction:eventCopy];
  }

LABEL_82:
}

- (void)handleTransactionEndEvent:(id)event atlData:(id)data
{
  eventCopy = event;
  dataCopy = data;
  kdebug_trace();
  v9 = NFSharedSignpostLog();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TX_END", "Transaction End Event", buf, 2u);
  }

  PLLogRegisteredEvent();
  v10 = [dataCopy valueForKey:@"DontWaitForEOT"];

  if (v10)
  {
    v11 = [dataCopy valueForKey:@"DontWaitForEOT"];
    self->_dontWaitForEOT = [v11 BOOLValue];

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v13 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v18 = 45;
      if (isMetaClass)
      {
        v18 = 43;
      }

      v13(6, "%c[%{public}s %{public}s]:%i ATLEndEventDontWaitForEOT: %d", v18, ClassName, Name, 1512, self->_dontWaitForEOT);
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

      v22 = object_getClassName(self);
      v23 = sel_getName(a2);
      dontWaitForEOT = self->_dontWaitForEOT;
      *buf = 67110146;
      v145 = v21;
      v146 = 2082;
      v147 = v22;
      v148 = 2082;
      v149 = v23;
      v150 = 1024;
      v151 = 1512;
      v152 = 1024;
      LODWORD(v153) = dontWaitForEOT;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ATLEndEventDontWaitForEOT: %d", buf, 0x28u);
    }
  }

  if ([(_NFContactlessSession *)self plasticCardMode])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFLogGetLogger();
    if (v25)
    {
      v26 = v25;
      v27 = object_getClass(self);
      v28 = class_isMetaClass(v27);
      v29 = object_getClassName(self);
      v135 = sel_getName(a2);
      v30 = 45;
      if (v28)
      {
        v30 = 43;
      }

      v26(5, "%c[%{public}s %{public}s]:%i Plastic card mode active - not handling end event", v30, v29, v135, 1516);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v31 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_42;
    }

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
    *buf = 67109890;
    v145 = v33;
    v146 = 2082;
    v147 = v34;
    v148 = 2082;
    v149 = v35;
    v150 = 1024;
    v151 = 1516;
    v36 = "%c[%{public}s %{public}s]:%i Plastic card mode active - not handling end event";
    goto LABEL_24;
  }

  expressModeManager = [(_NFXPCSession *)self expressModeManager];
  if (expressModeManager)
  {
    v38 = expressModeManager[181];

    if (v38 == 1)
    {
      secureElementWrapper = [(_NFContactlessSession *)self secureElementWrapper];
      appletIdentifier = [eventCopy appletIdentifier];
      v41 = [NSData NF_dataWithHexString:appletIdentifier];
      v31 = sub_100257F24(secureElementWrapper, v41, 0);

      moduleIdentifierAsData = [v31 moduleIdentifierAsData];
      v43 = [[NSData alloc] initWithBytes:&unk_10029779A length:10];
      if ([moduleIdentifierAsData isEqualToData:v43])
      {
      }

      else
      {
        v44 = [[NSData alloc] initWithBytes:&unk_1002977A4 length:10];
        v45 = [moduleIdentifierAsData isEqualToData:v44];

        if (!v45)
        {
          if ([eventCopy background])
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v58 = NFLogGetLogger();
            if (v58)
            {
              v59 = v58;
              v60 = object_getClass(self);
              v61 = class_isMetaClass(v60);
              v62 = object_getClassName(self);
              v137 = sel_getName(a2);
              v63 = 45;
              if (v61)
              {
                v63 = 43;
              }

              v59(6, "%c[%{public}s %{public}s]:%i ignoring express mode update for background event", v63, v62, v137, 1533);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v52 = NFSharedLogGetLogger();
            if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_40;
            }

            v64 = object_getClass(self);
            if (class_isMetaClass(v64))
            {
              v65 = 43;
            }

            else
            {
              v65 = 45;
            }

            v66 = object_getClassName(self);
            v67 = sel_getName(a2);
            *buf = 67109890;
            v145 = v65;
            v146 = 2082;
            v147 = v66;
            v148 = 2082;
            v149 = v67;
            v150 = 1024;
            v151 = 1533;
            v57 = "%c[%{public}s %{public}s]:%i ignoring express mode update for background event";
          }

          else
          {
            expressModeManager2 = [(_NFXPCSession *)self expressModeManager];
            if (expressModeManager2 && expressModeManager2[43] >= 6u)
            {
              sendExpressModeEnded = self->_sendExpressModeEnded;

              if (!sendExpressModeEnded)
              {
                remoteObject = [(_NFXPCSession *)self remoteObject];
                expressModeManager3 = [(_NFXPCSession *)self expressModeManager];
                v72 = expressModeManager3;
                if (expressModeManager3)
                {
                  v73 = *(expressModeManager3 + 172);
                }

                else
                {
                  v73 = 0;
                }

                appletIdentifier2 = [eventCopy appletIdentifier];
                [remoteObject didExpressModeStateChange:v73 withObject:appletIdentifier2];

                self->_sendExpressModeEnded = 1;
                goto LABEL_41;
              }
            }

            else
            {
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v75 = NFLogGetLogger();
            if (v75)
            {
              v76 = v75;
              v77 = object_getClass(self);
              v78 = class_isMetaClass(v77);
              v79 = object_getClassName(self);
              v138 = sel_getName(a2);
              v80 = 45;
              if (v78)
              {
                v80 = 43;
              }

              v76(6, "%c[%{public}s %{public}s]:%i Express transaction already ended - ignoring", v80, v79, v138, 1543);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v52 = NFSharedLogGetLogger();
            if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
LABEL_40:

LABEL_41:
              goto LABEL_42;
            }

            v81 = object_getClass(self);
            if (class_isMetaClass(v81))
            {
              v82 = 43;
            }

            else
            {
              v82 = 45;
            }

            v83 = object_getClassName(self);
            v84 = sel_getName(a2);
            *buf = 67109890;
            v145 = v82;
            v146 = 2082;
            v147 = v83;
            v148 = 2082;
            v149 = v84;
            v150 = 1024;
            v151 = 1543;
            v57 = "%c[%{public}s %{public}s]:%i Express transaction already ended - ignoring";
          }

LABEL_39:
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, v57, buf, 0x22u);
          goto LABEL_40;
        }
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v46 = NFLogGetLogger();
      if (v46)
      {
        v47 = v46;
        v48 = object_getClass(self);
        v49 = class_isMetaClass(v48);
        v50 = object_getClassName(self);
        v136 = sel_getName(a2);
        v51 = 45;
        if (v49)
        {
          v51 = 43;
        }

        v47(6, "%c[%{public}s %{public}s]:%i applet v2.0 - dropping transaction end event", v51, v50, v136, 1528);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v52 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      v53 = object_getClass(self);
      if (class_isMetaClass(v53))
      {
        v54 = 43;
      }

      else
      {
        v54 = 45;
      }

      v55 = object_getClassName(self);
      v56 = sel_getName(a2);
      *buf = 67109890;
      v145 = v54;
      v146 = 2082;
      v147 = v55;
      v148 = 2082;
      v149 = v56;
      v150 = 1024;
      v151 = 1528;
      v57 = "%c[%{public}s %{public}s]:%i applet v2.0 - dropping transaction end event";
      goto LABEL_39;
    }
  }

  if (self->_inWiredMode && ![(_NFContactlessPaymentSession *)self allowTransactionsInWiredMode])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v108 = NFLogGetLogger();
    if (v108)
    {
      v109 = v108;
      v110 = object_getClass(self);
      v111 = class_isMetaClass(v110);
      v112 = object_getClassName(self);
      v141 = sel_getName(a2);
      v113 = 45;
      if (v111)
      {
        v113 = 43;
      }

      v109(5, "%c[%{public}s %{public}s]:%i Suppresing End Event when in Wired", v113, v112, v141, 1550);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v31 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_42;
    }

    v114 = object_getClass(self);
    if (class_isMetaClass(v114))
    {
      v115 = 43;
    }

    else
    {
      v115 = 45;
    }

    v116 = object_getClassName(self);
    v117 = sel_getName(a2);
    *buf = 67109890;
    v145 = v115;
    v146 = 2082;
    v147 = v116;
    v148 = 2082;
    v149 = v117;
    v150 = 1024;
    v151 = 1550;
    v36 = "%c[%{public}s %{public}s]:%i Suppresing End Event when in Wired";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v36, buf, 0x22u);
LABEL_42:

    goto LABEL_43;
  }

  transactionState = self->_transactionState;
  if (transactionState == 2)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v98 = NFLogGetLogger();
    if (v98)
    {
      v99 = v98;
      v100 = object_getClass(self);
      v101 = class_isMetaClass(v100);
      v102 = object_getClassName(self);
      v140 = sel_getName(a2);
      v103 = 45;
      if (v101)
      {
        v103 = 43;
      }

      v99(6, "%c[%{public}s %{public}s]:%i Transaction already ended, ignoring", v103, v102, v140, 1572);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v31 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_42;
    }

    v104 = object_getClass(self);
    if (class_isMetaClass(v104))
    {
      v105 = 43;
    }

    else
    {
      v105 = 45;
    }

    v106 = object_getClassName(self);
    v107 = sel_getName(a2);
    *buf = 67109890;
    v145 = v105;
    v146 = 2082;
    v147 = v106;
    v148 = 2082;
    v149 = v107;
    v150 = 1024;
    v151 = 1572;
    v36 = "%c[%{public}s %{public}s]:%i Transaction already ended, ignoring";
    goto LABEL_24;
  }

  if (transactionState == 4 && !self->_ignoreRFEvents)
  {
    v118 = [[NSMutableDictionary alloc] initWithDictionary:&off_100339968];
    appletIdentifier3 = [(NFContactlessPaymentStartEvent *)self->_transactionStartEvent appletIdentifier];

    if (appletIdentifier3)
    {
      appletIdentifier4 = [(NFContactlessPaymentStartEvent *)self->_transactionStartEvent appletIdentifier];
      [v118 setObject:appletIdentifier4 forKey:@"appletIdentifier"];
    }

    v143 = v118;
    v121 = [[NFContactlessPaymentEndEvent alloc] initWithDictionary:v118];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v122 = NFLogGetLogger();
    if (v122)
    {
      v123 = v122;
      v124 = object_getClass(self);
      v125 = class_isMetaClass(v124);
      v134 = object_getClassName(self);
      v142 = sel_getName(a2);
      v126 = 45;
      if (v125)
      {
        v126 = 43;
      }

      v123(5, "%c[%{public}s %{public}s]:%i Field Lost before transaction ended: firing: %{public}@", v126, v134, v142, 1568, v121);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v127 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
    {
      v128 = object_getClass(self);
      if (class_isMetaClass(v128))
      {
        v129 = 43;
      }

      else
      {
        v129 = 45;
      }

      v130 = object_getClassName(self);
      v131 = sel_getName(a2);
      *buf = 67110146;
      v145 = v129;
      v146 = 2082;
      v147 = v130;
      v148 = 2082;
      v149 = v131;
      v150 = 1024;
      v151 = 1568;
      v152 = 2114;
      v153 = v121;
      _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Field Lost before transaction ended: firing: %{public}@", buf, 0x2Cu);
    }

    remoteObject2 = [(_NFXPCSession *)self remoteObject];
    [remoteObject2 didEndTransaction:v121];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v86 = NFLogGetLogger();
    if (v86)
    {
      v87 = v86;
      v88 = object_getClass(self);
      v89 = class_isMetaClass(v88);
      v90 = object_getClassName(self);
      v139 = sel_getName(a2);
      v91 = 45;
      if (v89)
      {
        v91 = 43;
      }

      v87(6, "%c[%{public}s %{public}s]:%i firing end transaction callback", v91, v90, v139, 1576);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v92 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      v93 = object_getClass(self);
      if (class_isMetaClass(v93))
      {
        v94 = 43;
      }

      else
      {
        v94 = 45;
      }

      v95 = object_getClassName(self);
      v96 = sel_getName(a2);
      *buf = 67109890;
      v145 = v94;
      v146 = 2082;
      v147 = v95;
      v148 = 2082;
      v149 = v96;
      v150 = 1024;
      v151 = 1576;
      _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i firing end transaction callback", buf, 0x22u);
    }

    self->_transactionState = 2;
    remoteObject3 = [(_NFXPCSession *)self remoteObject];
    [remoteObject3 didEndTransaction:eventCopy];
  }

  transactionStartEvent = self->_transactionStartEvent;
  self->_transactionStartEvent = 0;

  [(_NFContactlessPaymentSession *)self _deauthorize];
  if (self->_delayExpressMode <= 0.0)
  {
    [(_NFContactlessPaymentSession *)self startDefaultMode];
  }

  else
  {
    [(_NFContactlessPaymentSession *)self pauseExpressAndStartDefaultModeAfter:?];
  }

LABEL_43:
}

- (void)pauseExpressAndStartDefaultModeAfter:(double)after
{
  [(NFTimer *)self->_restartRoutingTimer stopTimer];
  objc_initWeak(&location, self);
  v6 = [NFTimer alloc];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100138EA8;
  v25[3] = &unk_100316610;
  objc_copyWeak(v26, &location);
  v26[1] = a2;
  v24.receiver = self;
  v24.super_class = _NFContactlessPaymentSession;
  workQueue = [(_NFSession *)&v24 workQueue];
  v8 = [v6 initWithCallback:v25 queue:workQueue];
  restartRoutingTimer = self->_restartRoutingTimer;
  self->_restartRoutingTimer = v8;

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

    v11(6, "%c[%{public}s %{public}s]:%i Pausing express mode after ATL transaction", v15, ClassName, Name, 1617);
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
    v29 = v18;
    v30 = 2082;
    v31 = v19;
    v32 = 2082;
    v33 = v20;
    v34 = 1024;
    v35 = 1617;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Pausing express mode after ATL transaction", buf, 0x22u);
  }

  expressModeManager = [(_NFXPCSession *)self expressModeManager];
  v22 = expressModeManager;
  if (expressModeManager)
  {
    sub_100031A1C(expressModeManager, 1, 1);
  }

  [(NFTimer *)self->_restartRoutingTimer startTimer:after leeway:0.5];
  objc_destroyWeak(v26);
  objc_destroyWeak(&location);
}

- (BOOL)_requiresDeferredActivation:(id)activation
{
  activationCopy = activation;
  v5 = [[NSData alloc] initWithBytes:&unk_1002977AE length:16];
  nF_asHexString = [v5 NF_asHexString];

  v7 = [[NSData alloc] initWithBytes:&unk_100297790 length:10];
  nF_asHexString2 = [v7 NF_asHexString];

  moduleIdentifier = [activationCopy moduleIdentifier];
  v9 = [moduleIdentifier isEqualToString:nF_asHexString];

  if (v9)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = [activationCopy groupMemberIDs];
    v10 = [obj countByEnumeratingWithState:&v39 objects:v53 count:16];
    if (v10)
    {
      v11 = v10;
      v35 = activationCopy;
      v12 = *v40;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v39 + 1) + 8 * i);
          secureElementWrapper = [(_NFContactlessSession *)self secureElementWrapper];
          v16 = [NSData NF_dataWithHexString:v14];
          v17 = sub_100257F24(secureElementWrapper, v16, 0);

          if (v17)
          {
            moduleIdentifier2 = [v17 moduleIdentifier];
            if ([moduleIdentifier2 isEqualToString:nF_asHexString])
            {

LABEL_27:
              v31 = 1;
              goto LABEL_28;
            }

            moduleIdentifier3 = [v17 moduleIdentifier];
            v20 = [moduleIdentifier3 isEqualToString:nF_asHexString2];

            if (v20)
            {
              goto LABEL_27;
            }
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v22 = Logger;
              Class = object_getClass(self);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(self);
              Name = sel_getName(a2);
              v25 = 45;
              if (isMetaClass)
              {
                v25 = 43;
              }

              v22(4, "%c[%{public}s %{public}s]:%i Got AID %{public}@ from groupMemberIDs, but secureElementWrapper couldn't find it?!", v25, ClassName, Name, 1657, v14);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v26 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
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

              v29 = object_getClassName(self);
              v30 = sel_getName(a2);
              *buf = 67110146;
              v44 = v28;
              v45 = 2082;
              v46 = v29;
              v47 = 2082;
              v48 = v30;
              v49 = 1024;
              v50 = 1657;
              v51 = 2114;
              v52 = v14;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Got AID %{public}@ from groupMemberIDs, but secureElementWrapper couldn't find it?!", buf, 0x2Cu);
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v39 objects:v53 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v31 = 0;
LABEL_28:
      activationCopy = v35;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (void)handleSecureElementEndOfOperation
{
  kdebug_trace();
  v3 = NFSharedSignpostLog();
  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TX_EOO", "Tx End Of Operation", v4, 2u);
  }

  self->_transactionState = 3;
}

- (void)handleExpressModeStarted
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
    expressModeManager = [(_NFXPCSession *)self expressModeManager];
    v11 = sub_10002BB54(expressModeManager);
    v12 = 45;
    if (isMetaClass)
    {
      v12 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i %{public}@ express mode entered", v12, ClassName, Name, 1679, v11);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v13 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
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

    v16 = object_getClassName(self);
    v17 = sel_getName(a2);
    expressModeManager2 = [(_NFXPCSession *)self expressModeManager];
    v19 = sub_10002BB54(expressModeManager2);
    *buf = 67110146;
    v25 = v15;
    v26 = 2082;
    v27 = v16;
    v28 = 2082;
    v29 = v17;
    v30 = 1024;
    v31 = 1679;
    v32 = 2114;
    v33 = v19;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ express mode entered", buf, 0x2Cu);
  }

  expressModeManager3 = [(_NFXPCSession *)self expressModeManager];
  v21 = sub_10002BB54(expressModeManager3);
  expressType = self->_expressType;
  self->_expressType = v21;

  remoteObject = [(_NFXPCSession *)self remoteObject];
  [remoteObject didExpressModeStateChange:1 withObject:self->_expressType];
}

- (void)handleExpressModeExited
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
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i %{public}@ express mode exited", v10, ClassName, Name, 1687, self->_expressType);
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
    expressType = self->_expressType;
    *buf = 67110146;
    v20 = v13;
    v21 = 2082;
    v22 = v14;
    v23 = 2082;
    v24 = v15;
    v25 = 1024;
    v26 = 1687;
    v27 = 2114;
    v28 = expressType;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ express mode exited", buf, 0x2Cu);
  }

  remoteObject = [(_NFXPCSession *)self remoteObject];
  [remoteObject didExpressModeStateChange:4 withObject:self->_expressType];

  v18 = self->_expressType;
  self->_expressType = 0;

  if (self->_delayExpressMode > 0.0)
  {
    [(_NFContactlessPaymentSession *)self pauseExpressAndStartDefaultModeAfter:?];
  }
}

- (void)handleExpressModeTimeout
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
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i %{public}@ express mode timeout", v10, ClassName, Name, 1701, self->_expressType);
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
    expressType = self->_expressType;
    *buf = 67110146;
    v19 = v13;
    v20 = 2082;
    v21 = v14;
    v22 = 2082;
    v23 = v15;
    v24 = 1024;
    v25 = 1701;
    v26 = 2114;
    v27 = expressType;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ express mode timeout", buf, 0x2Cu);
  }

  if (![(_NFContactlessSession *)self plasticCardMode])
  {
    remoteObject = [(_NFXPCSession *)self remoteObject];
    [remoteObject didExpressModeStateChange:3 withObject:self->_expressType];
  }
}

- (void)handleAppletInactivityTimeout:(id)timeout
{
  timeoutCopy = timeout;
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

    v7(6, "%c[%{public}s %{public}s]:%i Applet activity timeout: %{public}@", v10, ClassName, Name, 1714, timeoutCopy);
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
    v22 = v13;
    v23 = 2082;
    v24 = object_getClassName(self);
    v25 = 2082;
    v26 = sel_getName(a2);
    v27 = 1024;
    v28 = 1714;
    v29 = 2114;
    v30 = timeoutCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Applet activity timeout: %{public}@", buf, 0x2Cu);
  }

  if (![(_NFContactlessSession *)self plasticCardMode])
  {
    expressModeManager = [(_NFXPCSession *)self expressModeManager];
    if (expressModeManager)
    {
      v15 = expressModeManager[181];
    }

    else
    {
      v15 = 0;
    }

    remoteObject = [(_NFXPCSession *)self remoteObject];
    v17 = remoteObject;
    if (v15)
    {
      appletIdentifier = [(NFContactlessPaymentStartEvent *)self->_transactionStartEvent appletIdentifier];
      [v17 didExpressModeStateChange:3 withObject:appletIdentifier];
    }

    else
    {
      [remoteObject didReceiveActivityTimeout:timeoutCopy];
    }
  }
}

- (void)handleRequestService:(id)service
{
  serviceCopy = service;
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

    v7(6, "%c[%{public}s %{public}s]:%i %{public}@", v10, ClassName, Name, 1733, serviceCopy);
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
    v76 = v13;
    v77 = 2082;
    v78 = object_getClassName(self);
    v79 = 2082;
    v80 = sel_getName(a2);
    v81 = 1024;
    v82 = 1733;
    v83 = 2114;
    v84 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (![(_NFContactlessSession *)self plasticCardMode])
  {
    expressModeManager = [(_NFXPCSession *)self expressModeManager];
    if (!expressModeManager || (v15 = expressModeManager[181], expressModeManager, v15 != 1))
    {
      activeApplet = [(_NFContactlessSession *)self activeApplet];

      if (!activeApplet)
      {
        transactionStartEvent = self->_transactionStartEvent;
        self->_transactionStartEvent = 0;
        goto LABEL_30;
      }

      activeApplet2 = [(_NFContactlessSession *)self activeApplet];
      transactionStartEvent = [activeApplet2 moduleIdentifierAsData];

      v37 = [[NSData alloc] initWithBytes:&unk_10029779A length:10];
      if ([transactionStartEvent isEqualToData:v37])
      {
      }

      else
      {
        v38 = [[NSData alloc] initWithBytes:&unk_1002977A4 length:10];
        v39 = [transactionStartEvent isEqualToData:v38];

        if (!v39)
        {
          v50 = [NSMutableDictionary alloc];
          v73[0] = @"appletIdentifier";
          activeApplet3 = [(_NFContactlessSession *)self activeApplet];
          identifier = [activeApplet3 identifier];
          v73[1] = @"paymentMode";
          v74[0] = identifier;
          v74[1] = &off_100332118;
          v53 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:2];
          v17 = [v50 initWithDictionary:v53];

          v54 = [[NFContactlessPaymentStartEvent alloc] initWithDictionary:v17];
          v55 = self->_transactionStartEvent;
          self->_transactionStartEvent = v54;

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v56 = NFLogGetLogger();
          if (v56)
          {
            v57 = v56;
            v58 = object_getClass(self);
            v59 = class_isMetaClass(v58);
            v60 = object_getClassName(self);
            v61 = sel_getName(a2);
            v62 = 45;
            if (v59)
            {
              v62 = 43;
            }

            v57(6, "%c[%{public}s %{public}s]:%i transaction started: %{public}@", v62, v60, v61, 1766, self->_transactionStartEvent);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v63 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            v64 = object_getClass(self);
            if (class_isMetaClass(v64))
            {
              v65 = 43;
            }

            else
            {
              v65 = 45;
            }

            v66 = object_getClassName(self);
            v67 = sel_getName(a2);
            v68 = self->_transactionStartEvent;
            *buf = 67110146;
            v76 = v65;
            v77 = 2082;
            v78 = v66;
            v79 = 2082;
            v80 = v67;
            v81 = 1024;
            v82 = 1766;
            v83 = 2114;
            v84 = v68;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i transaction started: %{public}@", buf, 0x2Cu);
          }

          remoteObject = [(_NFXPCSession *)self remoteObject];
          [remoteObject didStartTransaction:self->_transactionStartEvent];

          goto LABEL_29;
        }
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v40 = NFLogGetLogger();
      if (v40)
      {
        v41 = v40;
        v42 = object_getClass(self);
        v43 = class_isMetaClass(v42);
        v44 = object_getClassName(self);
        v72 = sel_getName(a2);
        v45 = 45;
        if (v43)
        {
          v45 = 43;
        }

        v41(6, "%c[%{public}s %{public}s]:%i applet v2.0 - dropping service request", v45, v44, v72, 1759);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v46 = object_getClass(self);
        if (class_isMetaClass(v46))
        {
          v47 = 43;
        }

        else
        {
          v47 = 45;
        }

        v48 = object_getClassName(self);
        v49 = sel_getName(a2);
        *buf = 67109890;
        v76 = v47;
        v77 = 2082;
        v78 = v48;
        v79 = 2082;
        v80 = v49;
        v81 = 1024;
        v82 = 1759;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i applet v2.0 - dropping service request", buf, 0x22u);
      }

LABEL_29:

LABEL_30:
      goto LABEL_31;
    }

    expressModeManager2 = [(_NFXPCSession *)self expressModeManager];
    v17 = sub_10003A754(expressModeManager2);

    if ([(NSString *)self->_expressType isEqualToString:@"express.transit.cathay"])
    {
      v18 = &off_1003320E8;
    }

    else
    {
      if (![(NSString *)self->_expressType isEqualToString:@"express.transit.suica"])
      {
        transactionStartEvent = 0;
        goto LABEL_19;
      }

      v18 = &off_100332100;
    }

    v19 = [v17 objectForKeyedSubscript:v18];
    transactionStartEvent = [v19 objectAtIndexedSubscript:0];

LABEL_19:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v22 = v21;
      v23 = object_getClass(self);
      v24 = class_isMetaClass(v23);
      v25 = object_getClassName(self);
      v26 = sel_getName(a2);
      v27 = 45;
      if (v24)
      {
        v27 = 43;
      }

      v22(6, "%c[%{public}s %{public}s]:%i %{public}@ Express transaction started for %{public}@", v27, v25, v26, 1749, self->_expressType, transactionStartEvent);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
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
      expressType = self->_expressType;
      *buf = 67110402;
      v76 = v30;
      v77 = 2082;
      v78 = v31;
      v79 = 2082;
      v80 = v32;
      v81 = 1024;
      v82 = 1749;
      v83 = 2114;
      v84 = expressType;
      v85 = 2114;
      v86 = transactionStartEvent;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ Express transaction started for %{public}@", buf, 0x36u);
    }

    remoteObject2 = [(_NFXPCSession *)self remoteObject];
    [remoteObject2 didExpressModeStateChange:2 withObject:transactionStartEvent];

    goto LABEL_29;
  }

LABEL_31:
}

- (void)handlePendingServerRequest
{
  v6.receiver = self;
  v6.super_class = _NFContactlessPaymentSession;
  workQueue = [(_NFSession *)&v6 workQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10013A570;
  v5[3] = &unk_100315F58;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(workQueue, v5);
}

- (void)_fireFelicaTransactionEndEvent
{
  transactionStartEvent = self->_transactionStartEvent;
  if (!transactionStartEvent)
  {
    return;
  }

  appletIdentifier = [(NFContactlessPaymentStartEvent *)transactionStartEvent appletIdentifier];
  activeApplet = [(_NFContactlessSession *)self activeApplet];
  identifier = [activeApplet identifier];
  if ([appletIdentifier caseInsensitiveCompare:identifier])
  {
    secureElementWrapper = [(_NFContactlessSession *)self secureElementWrapper];
    appletIdentifier2 = [(NFContactlessPaymentStartEvent *)self->_transactionStartEvent appletIdentifier];
    v9 = [NSData NF_dataWithHexString:appletIdentifier2];
    v10 = sub_100257F24(secureElementWrapper, v9, 0);
    isTypeF = [v10 isTypeF];

    if (!isTypeF)
    {
      return;
    }
  }

  else
  {
  }

  appletIdentifier3 = [(NFContactlessPaymentStartEvent *)self->_transactionStartEvent appletIdentifier];
  if (appletIdentifier3)
  {
    appletIdentifier4 = [(NFContactlessPaymentStartEvent *)self->_transactionStartEvent appletIdentifier];
  }

  else
  {
    activeApplet2 = [(_NFContactlessSession *)self activeApplet];
    appletIdentifier4 = [activeApplet2 identifier];
  }

  if (appletIdentifier4)
  {
    v15 = appletIdentifier4;
  }

  else
  {
    v15 = &stru_10031EA18;
  }

  expressModeManager = [(_NFXPCSession *)self expressModeManager];
  v17 = sub_10003A6A0(expressModeManager, 0);

  if (v17 && ([v17 containsObject:v15] & 1) == 0)
  {
    self->_delayExpressMode = 4.0;
  }

  v18 = &OBJC_IVAR___NFAppletExtraInfo__ssdAID;
  if (!self->_endOfTransactionRequired)
  {
    felicaEvents = self->_felicaEvents;
    if (felicaEvents && ![(NFFelicaStateEvent *)felicaEvents isEmpty])
    {
      asDictionary = [(NFFelicaStateEvent *)self->_felicaEvents asDictionary];
      v107[0] = _NSConcreteStackBlock;
      v107[1] = 3221225472;
      v107[2] = sub_10013B288;
      v107[3] = &unk_100319390;
      v107[4] = self;
      v107[5] = a2;
      [asDictionary enumerateKeysAndObjectsUsingBlock:v107];
    }

    else
    {
      v43 = [NSMutableDictionary alloc];
      v109[0] = @"appletIdentifier";
      v109[1] = @"type";
      v110[0] = v15;
      v110[1] = &off_100332160;
      v109[2] = @"result";
      v44 = [NSNumber numberWithUnsignedShort:0xFFFFLL];
      v110[2] = v44;
      v45 = [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:3];
      asDictionary = [v43 initWithDictionary:v45];

      v46 = [[NFContactlessPaymentEndEvent alloc] initWithDictionary:asDictionary];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v48 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v51 = 45;
        if (isMetaClass)
        {
          v51 = 43;
        }

        v48(6, "%c[%{public}s %{public}s]:%i %{public}@", v51, ClassName, Name, 1853, v46);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v52 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = object_getClass(self);
        if (class_isMetaClass(v53))
        {
          v54 = 43;
        }

        else
        {
          v54 = 45;
        }

        v55 = object_getClassName(self);
        v56 = sel_getName(a2);
        *buf = 67110146;
        v112 = v54;
        v113 = 2082;
        v114 = v55;
        v115 = 2082;
        v116 = v56;
        v117 = 1024;
        v118 = 1853;
        v119 = 2114;
        v120 = v46;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
      }

      remoteObject = [(_NFXPCSession *)self remoteObject];
      [remoteObject didEndTransaction:v46];

      v18 = &OBJC_IVAR___NFAppletExtraInfo__ssdAID;
    }

    goto LABEL_67;
  }

  if (![(_NFContactlessPaymentSession *)self startWiredMode])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v58 = NFLogGetLogger();
    if (v58)
    {
      v59 = v58;
      v60 = object_getClass(self);
      v61 = class_isMetaClass(v60);
      v62 = object_getClassName(self);
      v102 = sel_getName(a2);
      v63 = 45;
      if (v61)
      {
        v63 = 43;
      }

      v59(3, "%c[%{public}s %{public}s]:%i failed to set wired mode", v63, v62, v102, 1843);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    asDictionary = NFSharedLogGetLogger();
    if (os_log_type_enabled(asDictionary, OS_LOG_TYPE_ERROR))
    {
      v64 = object_getClass(self);
      if (class_isMetaClass(v64))
      {
        v65 = 43;
      }

      else
      {
        v65 = 45;
      }

      v66 = object_getClassName(self);
      v67 = sel_getName(a2);
      *buf = 67109890;
      v112 = v65;
      v113 = 2082;
      v114 = v66;
      v115 = 2082;
      v116 = v67;
      v117 = 1024;
      v118 = 1843;
      _os_log_impl(&_mh_execute_header, asDictionary, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i failed to set wired mode", buf, 0x22u);
    }

    goto LABEL_67;
  }

  secureElementWrapper2 = [(_NFContactlessSession *)self secureElementWrapper];
  activeApplet3 = [(_NFContactlessSession *)self activeApplet];
  v108 = 0;
  v21 = sub_1002641A4(secureElementWrapper2, activeApplet3, &v108);
  asDictionary = v108;

  v105 = v21;
  if (!v21 || asDictionary)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v68 = NFLogGetLogger();
    if (v68)
    {
      v69 = v68;
      v70 = object_getClass(self);
      v71 = class_isMetaClass(v70);
      v72 = object_getClassName(self);
      v103 = sel_getName(a2);
      v73 = 45;
      if (v71)
      {
        v73 = 43;
      }

      v69(3, "%c[%{public}s %{public}s]:%i processEndOfFelicaTransactionForApplet failed: %{public}@ or output dictionary is nil: %{public}@", v73, v72, v103, 1812, asDictionary, v105);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(&v23->super, OS_LOG_TYPE_ERROR))
    {
      v74 = object_getClass(self);
      if (class_isMetaClass(v74))
      {
        v75 = 43;
      }

      else
      {
        v75 = 45;
      }

      v76 = object_getClassName(self);
      v77 = sel_getName(a2);
      *buf = 67110402;
      v112 = v75;
      v113 = 2082;
      v114 = v76;
      v115 = 2082;
      v116 = v77;
      v117 = 1024;
      v118 = 1812;
      v119 = 2114;
      v120 = asDictionary;
      v121 = 2114;
      v122 = v105;
      _os_log_impl(&_mh_execute_header, &v23->super, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i processEndOfFelicaTransactionForApplet failed: %{public}@ or output dictionary is nil: %{public}@", buf, 0x36u);
    }

    goto LABEL_66;
  }

  self->_endOfTransactionRequired = 0;
  v23 = [[NFContactlessPaymentEndEvent alloc] initWithDictionary:v21];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v24 = NFLogGetLogger();
  if (v24)
  {
    v25 = v24;
    v26 = object_getClass(self);
    v27 = class_isMetaClass(v26);
    v98 = object_getClassName(self);
    v100 = sel_getName(a2);
    v28 = 45;
    if (v27)
    {
      v28 = 43;
    }

    v25(6, "%c[%{public}s %{public}s]:%i %{public}@", v28, v98, v100, 1819, v23);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v29 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = object_getClass(self);
    if (class_isMetaClass(v30))
    {
      v31 = 43;
    }

    else
    {
      v31 = 45;
    }

    v32 = object_getClassName(self);
    v33 = sel_getName(a2);
    *buf = 67110146;
    v112 = v31;
    v113 = 2082;
    v114 = v32;
    v115 = 2082;
    v116 = v33;
    v117 = 1024;
    v118 = 1819;
    v119 = 2114;
    v120 = v23;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  remoteObject2 = [(_NFXPCSession *)self remoteObject];
  [remoteObject2 didEndTransaction:v23];

  expressModeManager2 = [(_NFXPCSession *)self expressModeManager];
  activeApplet4 = [(_NFContactlessSession *)self activeApplet];
  identifier2 = [activeApplet4 identifier];
  v38 = sub_1000354C4(expressModeManager2, identifier2);
  sub_100250520(NFHciTransactionEventCALogger, v105, v38);

  felicaInfo = [(NFContactlessPaymentEndEvent *)v23 felicaInfo];
  v40 = felicaInfo;
  if (felicaInfo)
  {
    v41 = [felicaInfo objectForKeyedSubscript:@"NFServiceProviderID"];
    if ([&off_100332130 isEqualToNumber:v41])
    {

LABEL_63:
      v80 = &off_100339990;
LABEL_64:
      [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:v80];
      goto LABEL_65;
    }

    v78 = [v40 objectForKeyedSubscript:@"NFServiceProviderID"];
    v79 = [&off_100332148 isEqualToNumber:v78];

    if (v79)
    {
      goto LABEL_63;
    }

    v96 = [v40 objectForKeyedSubscript:@"NFServiceProviderID"];
    if (([&off_100332070 isEqualToNumber:v96] & 1) == 0)
    {

      goto LABEL_65;
    }

    v97 = [v40 objectForKeyedSubscript:@"NFInStation"];

    if (v97)
    {
      v80 = &off_1003399B8;
      goto LABEL_64;
    }
  }

LABEL_65:

  v18 = &OBJC_IVAR___NFAppletExtraInfo__ssdAID;
LABEL_66:

LABEL_67:
  if (self->_hasAuthorized)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v81 = NFLogGetLogger();
    if (v81)
    {
      v82 = v81;
      v83 = object_getClass(self);
      v84 = class_isMetaClass(v83);
      v85 = object_getClassName(self);
      v104 = sel_getName(a2);
      v86 = 45;
      if (v84)
      {
        v86 = 43;
      }

      v82(6, "%c[%{public}s %{public}s]:%i Deauthorizing applet after transaction", v86, v85, v104, 1889);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v87 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      v88 = object_getClass(self);
      if (class_isMetaClass(v88))
      {
        v89 = 43;
      }

      else
      {
        v89 = 45;
      }

      v90 = object_getClassName(self);
      v91 = sel_getName(a2);
      *buf = 67109890;
      v112 = v89;
      v113 = 2082;
      v114 = v90;
      v115 = 2082;
      v116 = v91;
      v117 = 1024;
      v118 = 1889;
      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Deauthorizing applet after transaction", buf, 0x22u);
    }

    [(_NFContactlessPaymentSession *)self _deauthorize];
  }

  v92 = self->_transactionStartEvent;
  self->_transactionStartEvent = 0;

  v93 = objc_opt_new();
  v94 = v18[472];
  v95 = *(&self->super.super.super.super.isa + v94);
  *(&self->super.super.super.super.isa + v94) = v93;
}

- (void)_fireFelicaTransactionStartEvent
{
  if (!self->_transactionStartEvent)
  {
    v4 = [NSMutableDictionary alloc];
    v35 = @"appletIdentifier";
    activeApplet = [(_NFContactlessSession *)self activeApplet];
    identifier = [activeApplet identifier];
    v36 = identifier;
    v7 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v8 = [v4 initWithDictionary:v7];

    v9 = [[NFContactlessPaymentStartEvent alloc] initWithDictionary:v8];
    transactionStartEvent = self->_transactionStartEvent;
    self->_transactionStartEvent = v9;

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v12 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v17 = 45;
      if (isMetaClass)
      {
        v17 = 43;
      }

      v12(6, "%c[%{public}s %{public}s]:%i %{public}@", v17, ClassName, Name, 1903, self->_transactionStartEvent);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
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

      v21 = object_getClassName(self);
      v22 = sel_getName(a2);
      v23 = self->_transactionStartEvent;
      *buf = 67110146;
      v26 = v20;
      v27 = 2082;
      v28 = v21;
      v29 = 2082;
      v30 = v22;
      v31 = 1024;
      v32 = 1903;
      v33 = 2114;
      v34 = v23;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
    }

    remoteObject = [(_NFXPCSession *)self remoteObject];
    [remoteObject didStartTransaction:self->_transactionStartEvent];
  }
}

- (void)handleFelicaStateEvent:(id)event appletAID:(id)d
{
  eventCopy = event;
  dCopy = d;
  if (![(_NFContactlessSession *)self plasticCardMode])
  {
    expressModeManager = [(_NFXPCSession *)self expressModeManager];
    if (!expressModeManager || (v8 = expressModeManager[181], expressModeManager, (v8 & 1) == 0))
    {
      if (!self->_felicaEvents)
      {
        v9 = objc_alloc_init(NFFelicaStateEvent);
        felicaEvents = self->_felicaEvents;
        self->_felicaEvents = v9;
      }

      [(_NFContactlessPaymentSession *)self _fireFelicaTransactionStartEvent];
      [(NFFelicaStateEvent *)self->_felicaEvents addStateInfo:eventCopy appletAID:dCopy];
    }
  }

  remoteObject = [(_NFXPCSession *)self remoteObject];
  [remoteObject didFelicaStateChange:eventCopy];
}

- (void)createHandoffTokenWithCompletion:(id)completion
{
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = _NFContactlessPaymentSession;
  workQueue = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013BA90;
  block[3] = &unk_100316050;
  v9 = completionCopy;
  v10 = a2;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

@end