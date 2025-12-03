@interface _NFContactlessSession
+ (id)validateEntitlements:(id)entitlements;
- (BOOL)_configureEmulationType:(unint64_t)type;
- (BOOL)_configureEmulationType:(unint64_t)type routingConfigWhenEmulationOff:(id)off;
- (BOOL)_expressModeRequiredForApplet:(id)applet keySet:(id)set;
- (BOOL)_startFieldDetectAndKeepSEOn:(BOOL)on;
- (BOOL)canEnableExpress;
- (BOOL)startWiredMode;
- (BOOL)suspendWithInfo:(id)info;
- (BOOL)willStartSession;
- (id)_getAppletsForAids:(id)aids;
- (id)_getRelatedGroupMembersForActiveApplet;
- (id)_getSecureElementWrapperForApplet:(id)applet;
- (id)_resetVolatileConfigOnApplet:(id)applet;
- (id)preloadApplets;
- (id)seidForApplet:(id)applet;
- (id)setActiveApplet:(id)applet;
- (id)setActiveApplets:(id)applets;
- (id)setActiveApplets:(id)applets keyIdentifiers:(id)identifiers activationConfig:(unint64_t)config;
- (id)setActiveKeys:(id)keys onApplet:(id)applet activationConfig:(unint64_t)config;
- (int)_getActiveAppletEmulationType:(id)type;
- (void)_internalCleanup;
- (void)_setActiveSecureElementWrapper:(id)wrapper;
- (void)cleanup;
- (void)didStartSession:(id)session;
- (void)getAppletsWithCompletion:(id)completion;
- (void)handleFelicaStateEvent:(id)event;
- (void)handleFieldNotification:(id)notification;
- (void)handleFieldReset;
- (void)handleSelectEvent:(id)event;
- (void)setActiveApplet:(id)applet completion:(id)completion;
- (void)setActiveAppletsForTest:(id)test withCardType:(unsigned int)type completion:(id)completion;
- (void)startCardEmulationWithCompletion:(id)completion;
- (void)stopCardEmulationWithCompletion:(id)completion;
- (void)switchToSecureElementWrapperForApplet:(id)applet;
@end

@implementation _NFContactlessSession

+ (id)validateEntitlements:(id)entitlements
{
  if ([entitlements cardModeAccess])
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
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring card access", v11, ClassName, Name, 44);
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
      v26 = v14;
      v27 = 2082;
      v28 = object_getClassName(self);
      v29 = 2082;
      v30 = sel_getName(a2);
      v31 = 1024;
      v32 = 44;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring card access", buf, 0x22u);
    }

    v15 = [NSError alloc];
    v16 = [NSString stringWithUTF8String:"nfcd"];
    v23[0] = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithUTF8String:"Not entitled"];
    v24[0] = v17;
    v24[1] = &off_100330EB8;
    v23[1] = @"Line";
    v23[2] = @"Method";
    v18 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v24[2] = v18;
    v23[3] = NSDebugDescriptionErrorKey;
    v19 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 45];
    v24[3] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
    v5 = [v15 initWithDomain:v16 code:32 userInfo:v20];
  }

  return v5;
}

- (BOOL)willStartSession
{
  sub_1001AF828(self->_powerConsumptionReporter, v2);
  sub_10026449C();
  v5.receiver = self;
  v5.super_class = _NFContactlessSession;
  return [(_NFSession *)&v5 willStartSession];
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

    v7(6, "%c[%{public}s %{public}s]:%i ", v11, ClassName, Name, 69);
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
    v23 = v14;
    v24 = 2082;
    v25 = object_getClassName(self);
    v26 = 2082;
    v27 = sel_getName(a2);
    v28 = 1024;
    v29 = 69;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v21.receiver = self;
  v21.super_class = _NFContactlessSession;
  [(_NFXPCSession *)&v21 didStartSession:sessionCopy];
  if (!sessionCopy)
  {
    v15 = +[_NFHardwareManager sharedHardwareManager];
    secureElementWrapper = [v15 secureElementWrapper];
    secureElementWrapper = self->_secureElementWrapper;
    self->_secureElementWrapper = secureElementWrapper;

    preloadApplets = [(_NFContactlessSession *)self preloadApplets];
  }

  remoteObject = [(_NFXPCSession *)self remoteObject];
  [remoteObject didStartSession:sessionCopy];
}

- (void)_internalCleanup
{
  if (![(_NFSession *)self isSuspended])
  {
    if (self->_activeKeyIdentifiers && self->_activeApplet)
    {
      v4 = [(_NFContactlessSession *)self _resetVolatileConfigOnApplet:?];
    }

    if (self->_activeSecondaryKeyIdentifiers && self->_activeSecondaryApplet)
    {
      v5 = [(_NFContactlessSession *)self _resetVolatileConfigOnApplet:?];
      activeSecondaryApplet = self->_activeSecondaryApplet;
      self->_activeSecondaryApplet = 0;

      activeSecondaryKeyIdentifiers = self->_activeSecondaryKeyIdentifiers;
      self->_activeSecondaryKeyIdentifiers = 0;
    }

    if (self->_activeApplet)
    {
      expressModeManager = [(_NFXPCSession *)self expressModeManager];
      if (expressModeManager)
      {
        v9 = expressModeManager;
        expressModeManager2 = [(_NFXPCSession *)self expressModeManager];
        identifier = [(NFApplet *)self->_activeApplet identifier];
        v12 = sub_1000354C4(expressModeManager2, identifier);

        if ((v12 & 1) == 0)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v14 = Logger;
            Class = object_getClass(self);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(self);
            Name = sel_getName(a2);
            v19 = 45;
            if (isMetaClass)
            {
              v19 = 43;
            }

            v14(6, "%c[%{public}s %{public}s]:%i Deselecting applet %{public}@", v19, ClassName, Name, 99, self->_activeApplet);
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
            activeApplet = self->_activeApplet;
            *buf = 67110146;
            v33 = v22;
            v34 = 2082;
            v35 = v23;
            v36 = 2082;
            v37 = v24;
            v38 = 1024;
            v39 = 99;
            v40 = 2114;
            v41 = activeApplet;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Deselecting applet %{public}@", buf, 0x2Cu);
          }

          expressModeManager3 = [(_NFXPCSession *)self expressModeManager];
          sub_100035DE4(expressModeManager3, 1);

          v27 = [(_NFContactlessSession *)self setActiveApplet:0];
          expressModeManager4 = [(_NFXPCSession *)self expressModeManager];
          if (expressModeManager4)
          {
            v29 = expressModeManager4[2];
            if (v29)
            {
              *(v29 + 176) = 0;
            }
          }
        }
      }
    }

    activeApplets = self->_activeApplets;
    self->_activeApplets = 0;

    sub_1001AEDB0(self->_powerConsumptionReporter, v31);
  }
}

- (void)cleanup
{
  v4 = NFSharedSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "cleanup", "_NFContactlessSession", buf, 2u);
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

      v6(6, "%c[%{public}s %{public}s]:%i ", v10, ClassName, Name, 113);
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
      v20 = v13;
      v21 = 2082;
      v22 = v14;
      v23 = 2082;
      v24 = v15;
      v25 = 1024;
      v26 = 113;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    [(_NFContactlessSession *)self _internalCleanup];
  }

  v18.receiver = self;
  v18.super_class = _NFContactlessSession;
  [(_NFSession *)&v18 cleanup];
  v16 = NFSharedSignpostLog();
  if (os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "cleanup", "_NFContactlessSession", buf, 2u);
  }
}

- (BOOL)suspendWithInfo:(id)info
{
  v6.receiver = self;
  v6.super_class = _NFContactlessSession;
  v4 = [(_NFXPCSession *)&v6 suspendWithInfo:info];
  if (v4)
  {
    [(_NFContactlessSession *)self _internalCleanup];
  }

  return v4;
}

- (BOOL)canEnableExpress
{
  activeApplet = self->_activeApplet;
  if (activeApplet)
  {
    deferredActivationApplet = activeApplet;
  }

  else
  {
    deferredActivationApplet = [(_NFContactlessSession *)self deferredActivationApplet];
  }

  v5 = deferredActivationApplet;
  if ([(_NFContactlessSession *)self _expressModeRequiredForApplet:deferredActivationApplet keySet:self->_activeKeyIdentifiers])
  {
    v6 = 1;
  }

  else
  {
    v6 = [(_NFContactlessSession *)self _expressModeRequiredForApplet:self->_activeSecondaryApplet keySet:self->_activeSecondaryKeyIdentifiers];
  }

  return v6;
}

- (BOOL)_expressModeRequiredForApplet:(id)applet keySet:(id)set
{
  appletCopy = applet;
  setCopy = set;
  if (appletCopy)
  {
    expressModeManager = [(_NFXPCSession *)self expressModeManager];
    if (!expressModeManager)
    {
      expressModeManager2 = 0;
      v13 = 0;
LABEL_11:

      goto LABEL_12;
    }

    if (*(expressModeManager + 152) == 1)
    {

LABEL_6:
      expressModeManager2 = [(_NFXPCSession *)self expressModeManager];
      identifier = [appletCopy identifier];
      if (setCopy)
      {
        v12 = sub_1000355EC(expressModeManager2, identifier, setCopy);
      }

      else
      {
        v12 = sub_1000354C4(expressModeManager2, identifier);
      }

      v13 = v12;

      goto LABEL_11;
    }

    v9 = *(expressModeManager + 179);

    if (v9 == 1)
    {
      goto LABEL_6;
    }
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (void)_setActiveSecureElementWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  if (wrapperCopy)
  {
    secureElementWrapper = [(_NFContactlessSession *)self secureElementWrapper];

    if (secureElementWrapper != wrapperCopy)
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

        v8(6, "%c[%{public}s %{public}s]:%i switching to eSE", v12, ClassName, Name, 181);
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
        v18 = v15;
        v19 = 2082;
        v20 = object_getClassName(self);
        v21 = 2082;
        v22 = sel_getName(a2);
        v23 = 1024;
        v24 = 181;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i switching to eSE", buf, 0x22u);
      }

      [(_NFContactlessSession *)self setSecureElementWrapper:wrapperCopy];
    }
  }
}

- (id)_getSecureElementWrapperForApplet:(id)applet
{
  appletCopy = applet;
  secureElementWrapper = [(_NFContactlessSession *)self secureElementWrapper];
  v62 = secureElementWrapper;
  v7 = [NSArray arrayWithObjects:&v62 count:1];

  if (appletCopy)
  {
    appletMap = self->_appletMap;
    identifier = [appletCopy identifier];
    v10 = [(NSMutableDictionary *)appletMap objectForKey:identifier];
  }

  else
  {
    v10 = 0;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v46 objects:v61 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v47;
    selfCopy = self;
    v41 = a2;
    v39 = *v47;
    while (2)
    {
      v15 = 0;
      do
      {
        if (*v47 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v46 + 1) + 8 * v15);
        if (v10)
        {
          serialNumber = [*(*(&v46 + 1) + 8 * v15) serialNumber];
          if ([v10 isEqualToString:serialNumber])
          {

LABEL_39:
            v35 = v16;
LABEL_34:
            v30 = v11;
            goto LABEL_35;
          }

          systemOSSerialNumber = [v16 systemOSSerialNumber];
          v19 = [v10 isEqualToString:systemOSSerialNumber];

          if (v19)
          {
            goto LABEL_39;
          }
        }

        if (!appletCopy)
        {
          goto LABEL_39;
        }

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v20 = sub_100253854(v16);
        v21 = [v20 countByEnumeratingWithState:&v42 objects:v60 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v43;
          while (2)
          {
            for (i = 0; i != v22; i = i + 1)
            {
              if (*v43 != v23)
              {
                objc_enumerationMutation(v20);
              }

              if ([*(*(&v42 + 1) + 8 * i) isEqualToApplet:appletCopy])
              {
                v35 = v16;

                goto LABEL_34;
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v42 objects:v60 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

        v15 = v15 + 1;
        self = selfCopy;
        a2 = v41;
        v14 = v39;
      }

      while (v15 != v13);
      v13 = [v11 countByEnumeratingWithState:&v46 objects:v61 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v26 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v29 = 45;
    if (isMetaClass)
    {
      v29 = 43;
    }

    v26(3, "%c[%{public}s %{public}s]:%i No secure element wrapper found for applet %{public}@", v29, ClassName, Name, 211, appletCopy);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v30 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = object_getClass(self);
    if (class_isMetaClass(v31))
    {
      v32 = 43;
    }

    else
    {
      v32 = 45;
    }

    v33 = object_getClassName(self);
    v34 = sel_getName(a2);
    *buf = 67110146;
    v51 = v32;
    v52 = 2082;
    v53 = v33;
    v54 = 2082;
    v55 = v34;
    v56 = 1024;
    v57 = 211;
    v58 = 2114;
    v59 = appletCopy;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No secure element wrapper found for applet %{public}@", buf, 0x2Cu);
  }

  v35 = 0;
LABEL_35:

  return v35;
}

- (void)switchToSecureElementWrapperForApplet:(id)applet
{
  v4 = [(_NFContactlessSession *)self _getSecureElementWrapperForApplet:applet];
  [(_NFContactlessSession *)self _setActiveSecureElementWrapper:v4];
}

- (id)seidForApplet:(id)applet
{
  appletMap = self->_appletMap;
  identifier = [applet identifier];
  v5 = [(NSMutableDictionary *)appletMap objectForKey:identifier];

  return v5;
}

- (id)_resetVolatileConfigOnApplet:(id)applet
{
  appletCopy = applet;
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

    v7(6, "%c[%{public}s %{public}s]:%i applet: %{public}@", v10, ClassName, Name, 249, appletCopy);
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
    v39 = v13;
    v40 = 2082;
    v41 = object_getClassName(self);
    v42 = 2082;
    v43 = sel_getName(a2);
    v44 = 1024;
    v45 = 249;
    v46 = 2114;
    v47 = appletCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i applet: %{public}@", buf, 0x2Cu);
  }

  if (appletCopy && [appletCopy containsSubKeys])
  {
    [(_NFContactlessSession *)self switchToSecureElementWrapperForApplet:appletCopy];
    if ([(_NFContactlessSession *)self startWiredMode])
    {
      secureElementWrapper = [(_NFContactlessSession *)self secureElementWrapper];
      v15 = sub_10025F700(secureElementWrapper, appletCopy);
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

        v17(3, "%c[%{public}s %{public}s]:%i Failed to start wired mode eSE", v21, v20, v35, 260);
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
        v45 = 260;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to start wired mode eSE", buf, 0x22u);
      }

      v27 = [NSError alloc];
      secureElementWrapper = [NSString stringWithUTF8String:"nfcd"];
      v36[0] = NSLocalizedDescriptionKey;
      v28 = [NSString stringWithUTF8String:"Stack Error"];
      v37[0] = v28;
      v37[1] = &off_100330ED0;
      v36[1] = @"Line";
      v36[2] = @"Method";
      v29 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v37[2] = v29;
      v36[3] = NSDebugDescriptionErrorKey;
      v30 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 261];
      v37[3] = v30;
      v31 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:4];
      v15 = [v27 initWithDomain:secureElementWrapper code:15 userInfo:v31];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)setActiveKeys:(id)keys onApplet:(id)applet activationConfig:(unint64_t)config
{
  keysCopy = keys;
  appletCopy = applet;
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

    v12(6, "%c[%{public}s %{public}s]:%i applet: %{public}@  keyIdentifiers: %{public}@", v16, ClassName, Name, 271, appletCopy, keysCopy);
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
    v47 = v19;
    v48 = 2082;
    v49 = object_getClassName(self);
    v50 = 2082;
    v51 = sel_getName(a2);
    v52 = 1024;
    v53 = 271;
    v54 = 2114;
    v55 = appletCopy;
    v56 = 2114;
    v57 = keysCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i applet: %{public}@  keyIdentifiers: %{public}@", buf, 0x36u);
  }

  if (self->_activeApplet && self->_activeKeyIdentifiers)
  {
    v20 = [_NFContactlessSession _activateKeys:"_activateKeys:forIdentifiers:onApplet:" forIdentifiers:0 onApplet:?];
    if (v20)
    {
      v21 = v20;
      goto LABEL_38;
    }

    activeKeyIdentifiers = self->_activeKeyIdentifiers;
    self->_activeKeyIdentifiers = 0;
  }

  if (keysCopy | appletCopy)
  {
    if (!keysCopy || appletCopy)
    {
      if (keysCopy)
      {
        v37 = 1;
      }

      else
      {
        v37 = config == 0;
      }

      v38 = v37;
      v21 = [(_NFContactlessSession *)self _activateKeys:v38 forIdentifiers:keysCopy onApplet:appletCopy];
      if (v21)
      {
        goto LABEL_38;
      }

      v39 = keysCopy;
      v34 = self->_activeKeyIdentifiers;
      self->_activeKeyIdentifiers = v39;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v23 = NFLogGetLogger();
      if (v23)
      {
        v24 = v23;
        v25 = object_getClass(self);
        v26 = class_isMetaClass(v25);
        v41 = object_getClassName(self);
        v43 = sel_getName(a2);
        v27 = 45;
        if (v26)
        {
          v27 = 43;
        }

        v24(3, "%c[%{public}s %{public}s]:%i An applet is needed to activate keys %{public}@", v27, v41, v43, 306, keysCopy);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v28 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
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
        *buf = 67110146;
        v47 = v30;
        v48 = 2082;
        v49 = v31;
        v50 = 2082;
        v51 = v32;
        v52 = 1024;
        v53 = 306;
        v54 = 2114;
        v55 = keysCopy;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i An applet is needed to activate keys %{public}@", buf, 0x2Cu);
      }

      v33 = [NSError alloc];
      v34 = [NSString stringWithUTF8String:"nfcd"];
      v44 = NSLocalizedDescriptionKey;
      v35 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v45 = v35;
      v36 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v21 = [v33 initWithDomain:v34 code:10 userInfo:v36];
    }
  }

  else
  {
    v21 = 0;
  }

LABEL_38:

  return v21;
}

- (id)setActiveApplets:(id)applets keyIdentifiers:(id)identifiers activationConfig:(unint64_t)config
{
  appletsCopy = applets;
  identifiersCopy = identifiers;
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

    v12(6, "%c[%{public}s %{public}s]:%i applets=%{public}@", v15, ClassName, Name, 324, appletsCopy);
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
    v155 = v18;
    v156 = 2082;
    v157 = v19;
    v158 = 2082;
    v159 = v20;
    v160 = 1024;
    v161 = 324;
    v162 = 2114;
    v163 = appletsCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i applets=%{public}@", buf, 0x2Cu);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v21 = NFLogGetLogger();
  if (v21)
  {
    v22 = v21;
    v23 = object_getClass(self);
    v24 = class_isMetaClass(v23);
    v132 = object_getClassName(self);
    v135 = sel_getName(a2);
    v25 = 45;
    if (v24)
    {
      v25 = 43;
    }

    v22(6, "%c[%{public}s %{public}s]:%i keyIdentifiers: %{public}@", v25, v132, v135, 325, identifiersCopy);
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
    *buf = 67110146;
    v155 = v28;
    v156 = 2082;
    v157 = v29;
    v158 = 2082;
    v159 = v30;
    v160 = 1024;
    v161 = 325;
    v162 = 2114;
    v163 = identifiersCopy;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i keyIdentifiers: %{public}@", buf, 0x2Cu);
  }

  v147 = identifiersCopy;
  if (!self->_activeApplet || !self->_activeKeyIdentifiers)
  {
LABEL_32:
    if ([appletsCopy count] && objc_msgSend(identifiersCopy, "count"))
    {
      v46 = [appletsCopy count];
      if (v46 == [identifiersCopy count])
      {
        firstObject = [identifiersCopy firstObject];
        if (firstObject)
        {
          v47 = [NSSet setWithObject:firstObject];
          if ([appletsCopy count] < 2)
          {
            v49 = 0;
          }

          else
          {
            v48 = [identifiersCopy objectAtIndex:1];
            if (v48)
            {
              v49 = [NSSet setWithObject:v48];
            }

            else
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v96 = NFLogGetLogger();
              if (v96)
              {
                v97 = v96;
                v98 = object_getClass(self);
                v99 = appletsCopy;
                v100 = class_isMetaClass(v98);
                v142 = object_getClassName(self);
                v140 = sel_getName(a2);
                v112 = !v100;
                appletsCopy = v99;
                v101 = 45;
                if (!v112)
                {
                  v101 = 43;
                }

                v97(6, "%c[%{public}s %{public}s]:%i Invalid secondaryKeyIdentifier. Not setting", v101, v142, v140, 365);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v102 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
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

                v143 = v104;
                v105 = v47;
                v106 = firstObject;
                v107 = appletsCopy;
                v108 = object_getClassName(self);
                v109 = sel_getName(a2);
                *buf = 67109890;
                v155 = v143;
                v156 = 2082;
                v157 = v108;
                appletsCopy = v107;
                firstObject = v106;
                v47 = v105;
                v158 = 2082;
                v159 = v109;
                v160 = 1024;
                v161 = 365;
                _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Invalid secondaryKeyIdentifier. Not setting", buf, 0x22u);
              }

              v49 = 0;
            }
          }

          obj = v47;
          v146 = firstObject;
          v144 = v49;
          if ([v47 count])
          {
            v110 = 1;
          }

          else
          {
            v111 = [v49 count];
            if (config)
            {
              v112 = v111 == 0;
            }

            else
            {
              v112 = 0;
            }

            v110 = !v112;
          }

          v113 = appletsCopy;
          if ([appletsCopy count])
          {
            v114 = 0;
            while (1)
            {
              v115 = [NSSet alloc];
              v116 = [v147 objectAtIndexedSubscript:v114];
              v117 = [v115 initWithObjects:{v116, 0}];
              v118 = [v113 objectAtIndexedSubscript:v114];
              v119 = [(_NFContactlessSession *)self _activateKeys:v110 forIdentifiers:v117 onApplet:v118];

              if (v119)
              {
                break;
              }

              if ([v113 count] <= ++v114)
              {
                goto LABEL_98;
              }
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v122 = NFLogGetLogger();
            if (v122)
            {
              v123 = v122;
              v124 = object_getClass(self);
              v125 = class_isMetaClass(v124);
              v133 = object_getClassName(self);
              v141 = sel_getName(a2);
              v126 = 45;
              if (v125)
              {
                v126 = 43;
              }

              v123(3, "%c[%{public}s %{public}s]:%i Unable to activate Keys : error = %{public}@", v126, v133, v141, 385, v119);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            p_super = NFSharedLogGetLogger();
            appletsCopy = v113;
            v93 = v144;
            if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
            {
              v127 = object_getClass(self);
              if (class_isMetaClass(v127))
              {
                v128 = 43;
              }

              else
              {
                v128 = 45;
              }

              v129 = object_getClassName(self);
              v130 = sel_getName(a2);
              *buf = 67110146;
              v155 = v128;
              v156 = 2082;
              v157 = v129;
              v158 = 2082;
              v159 = v130;
              v160 = 1024;
              v161 = 385;
              v162 = 2114;
              v163 = v119;
              _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unable to activate Keys : error = %{public}@", buf, 0x2Cu);
            }

            v63 = obj;
          }

          else
          {
LABEL_98:
            v63 = obj;
            objc_storeStrong(&self->_activeKeyIdentifiers, obj);
            v93 = v144;
            v120 = v144;
            v119 = 0;
            p_super = &self->_activeSecondaryKeyIdentifiers->super;
            self->_activeSecondaryKeyIdentifiers = v120;
            appletsCopy = v113;
          }

          v62 = v119;
          v32 = v62;
          firstObject = v146;
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v80 = NFLogGetLogger();
          if (v80)
          {
            v81 = v80;
            v82 = object_getClass(self);
            v83 = class_isMetaClass(v82);
            v84 = object_getClassName(self);
            v139 = sel_getName(a2);
            v85 = 45;
            if (v83)
            {
              v85 = 43;
            }

            v81(3, "%c[%{public}s %{public}s]:%i Invalid primaryKeyIdentifier", v85, v84, v139, 352);
          }

          v86 = appletsCopy;
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v87 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
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
            v155 = v89;
            v156 = 2082;
            v157 = v90;
            v158 = 2082;
            v159 = v91;
            v160 = 1024;
            v161 = 352;
            _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid primaryKeyIdentifier", buf, 0x22u);
          }

          v92 = [NSError alloc];
          v62 = [NSString stringWithUTF8String:"nfcd"];
          v148[0] = NSLocalizedDescriptionKey;
          v63 = [NSString stringWithUTF8String:"Invalid Parameter"];
          v149[0] = v63;
          v149[1] = &off_100330F18;
          v148[1] = @"Line";
          v148[2] = @"Method";
          v93 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
          v149[2] = v93;
          v148[3] = NSDebugDescriptionErrorKey;
          v94 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 354];
          v149[3] = v94;
          v95 = [NSDictionary dictionaryWithObjects:v149 forKeys:v148 count:4];
          v32 = [v92 initWithDomain:v62 code:10 userInfo:v95];

          appletsCopy = v86;
        }

        goto LABEL_60;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v67 = NFLogGetLogger();
      if (v67)
      {
        v68 = v67;
        v69 = object_getClass(self);
        v70 = class_isMetaClass(v69);
        v71 = object_getClassName(self);
        v138 = sel_getName(a2);
        v72 = 45;
        if (v70)
        {
          v72 = 43;
        }

        v68(3, "%c[%{public}s %{public}s]:%i Mismatch # of applets and keyIdentifiers", v72, v71, v138, 345);
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
        *buf = 67109890;
        v155 = v75;
        v156 = 2082;
        v157 = v76;
        v158 = 2082;
        v159 = v77;
        v160 = 1024;
        v161 = 345;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Mismatch # of applets and keyIdentifiers", buf, 0x22u);
      }

      v61 = [NSError alloc];
      firstObject = [NSString stringWithUTF8String:"nfcd"];
      v150[0] = NSLocalizedDescriptionKey;
      v62 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v151[0] = v62;
      v151[1] = &off_100330F00;
      v150[1] = @"Line";
      v150[2] = @"Method";
      v63 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v151[2] = v63;
      v150[3] = NSDebugDescriptionErrorKey;
      v64 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 346];
      v151[3] = v64;
      v65 = v151;
      v66 = v150;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v50 = NFLogGetLogger();
      if (v50)
      {
        v51 = v50;
        v52 = object_getClass(self);
        v53 = class_isMetaClass(v52);
        v54 = object_getClassName(self);
        v137 = sel_getName(a2);
        v55 = 45;
        if (v53)
        {
          v55 = 43;
        }

        v51(3, "%c[%{public}s %{public}s]:%i No applets or keyIdentifiers ", v55, v54, v137, 342);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v56 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v57 = object_getClass(self);
        if (class_isMetaClass(v57))
        {
          v58 = 43;
        }

        else
        {
          v58 = 45;
        }

        v59 = object_getClassName(self);
        v60 = sel_getName(a2);
        *buf = 67109890;
        v155 = v58;
        v156 = 2082;
        v157 = v59;
        v158 = 2082;
        v159 = v60;
        v160 = 1024;
        v161 = 342;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No applets or keyIdentifiers ", buf, 0x22u);
      }

      v61 = [NSError alloc];
      firstObject = [NSString stringWithUTF8String:"nfcd"];
      v152[0] = NSLocalizedDescriptionKey;
      v62 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v153[0] = v62;
      v153[1] = &off_100330EE8;
      v152[1] = @"Line";
      v152[2] = @"Method";
      v63 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v153[2] = v63;
      v152[3] = NSDebugDescriptionErrorKey;
      v64 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 343];
      v153[3] = v64;
      v65 = v153;
      v66 = v152;
    }

    v78 = [NSDictionary dictionaryWithObjects:v65 forKeys:v66 count:4];
    v32 = [v61 initWithDomain:firstObject code:10 userInfo:v78];

LABEL_60:
    goto LABEL_61;
  }

  v31 = [_NFContactlessSession _activateKeys:"_activateKeys:forIdentifiers:onApplet:" forIdentifiers:0 onApplet:?];
  if (!v31)
  {
    activeKeyIdentifiers = self->_activeKeyIdentifiers;
    self->_activeKeyIdentifiers = 0;

    activeSecondaryKeyIdentifiers = self->_activeSecondaryKeyIdentifiers;
    self->_activeSecondaryKeyIdentifiers = 0;

    goto LABEL_32;
  }

  v32 = v31;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v33 = NFLogGetLogger();
  if (v33)
  {
    v34 = v33;
    v35 = object_getClass(self);
    v36 = class_isMetaClass(v35);
    v37 = object_getClassName(self);
    v136 = sel_getName(a2);
    v38 = 45;
    if (v36)
    {
      v38 = 43;
    }

    v34(3, "%c[%{public}s %{public}s]:%i Unable to deactivate keys on activeApplet", v38, v37, v136, 336);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  firstObject = NFSharedLogGetLogger();
  if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
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
    v155 = v41;
    v156 = 2082;
    v157 = v42;
    v158 = 2082;
    v159 = v43;
    v160 = 1024;
    v161 = 336;
    _os_log_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unable to deactivate keys on activeApplet", buf, 0x22u);
  }

LABEL_61:

  return v32;
}

- (id)setActiveApplet:(id)applet
{
  appletCopy = applet;
  expressModeManager = [(_NFXPCSession *)self expressModeManager];

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  v9 = Logger;
  if (!expressModeManager)
  {
    if (Logger)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v60 = 45;
      if (isMetaClass)
      {
        v60 = 43;
      }

      v9(3, "%c[%{public}s %{public}s]:%i EMM is nil", v60, ClassName, Name, 394);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v61 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v62 = object_getClass(self);
      if (class_isMetaClass(v62))
      {
        v63 = 43;
      }

      else
      {
        v63 = 45;
      }

      *buf = 67109890;
      v162 = v63;
      v163 = 2082;
      v164 = object_getClassName(self);
      v165 = 2082;
      v166 = sel_getName(a2);
      v167 = 1024;
      v168 = 394;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i EMM is nil", buf, 0x22u);
    }

    v64 = [NSError alloc];
    v65 = [NSString stringWithUTF8String:"nfcd"];
    v177 = NSLocalizedDescriptionKey;
    v66 = [NSString stringWithUTF8String:"Invalid State"];
    v178 = v66;
    v67 = [NSDictionary dictionaryWithObjects:&v178 forKeys:&v177 count:1];
    v68 = v64;
    v69 = v65;
    v70 = 12;
    goto LABEL_96;
  }

  if (Logger)
  {
    v10 = object_getClass(self);
    v11 = class_isMetaClass(v10);
    v146 = object_getClassName(self);
    v151 = sel_getName(a2);
    v12 = 45;
    if (v11)
    {
      v12 = 43;
    }

    v9(6, "%c[%{public}s %{public}s]:%i %{public}@", v12, v146, v151, 398, appletCopy);
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

    *buf = 67110146;
    v162 = v15;
    v163 = 2082;
    v164 = object_getClassName(self);
    v165 = 2082;
    v166 = sel_getName(a2);
    v167 = 1024;
    v168 = 398;
    v169 = 2114;
    v170 = appletCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (!appletCopy || ![(NFApplet *)self->_activeApplet isEqualToApplet:appletCopy])
  {
    if (self->_activeApplet)
    {
      [(_NFContactlessSession *)self switchToSecureElementWrapperForApplet:?];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v16 = NFLogGetLogger();
      if (v16)
      {
        v17 = v16;
        v18 = object_getClass(self);
        v19 = class_isMetaClass(v18);
        v20 = object_getClassName(self);
        v21 = sel_getName(a2);
        v22 = 45;
        if (v19)
        {
          v22 = 43;
        }

        v17(6, "%c[%{public}s %{public}s]:%i Deselecting current active applet: %{public}@", v22, v20, v21, 405, self->_activeApplet);
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
        activeApplet = self->_activeApplet;
        *buf = 67110146;
        v162 = v25;
        v163 = 2082;
        v164 = v26;
        v165 = 2082;
        v166 = v27;
        v167 = 1024;
        v168 = 405;
        v169 = 2114;
        v170 = activeApplet;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Deselecting current active applet: %{public}@", buf, 0x2Cu);
      }

      if (![(_NFContactlessSession *)self startWiredMode])
      {
        v71 = [NSError alloc];
        v65 = [NSString stringWithUTF8String:"nfcd"];
        v175 = NSLocalizedDescriptionKey;
        v66 = [NSString stringWithUTF8String:"Stack Error"];
        v176 = v66;
        v72 = &v176;
        v73 = &v175;
LABEL_95:
        v67 = [NSDictionary dictionaryWithObjects:v72 forKeys:v73 count:1];
        v68 = v71;
        v69 = v65;
        v70 = 15;
LABEL_96:
        v46 = [v68 initWithDomain:v69 code:v70 userInfo:v67];

        goto LABEL_97;
      }

      if (self->_activeKeyIdentifiers)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v29 = NFLogGetLogger();
        if (v29)
        {
          v30 = v29;
          v31 = object_getClass(self);
          v32 = class_isMetaClass(v31);
          v33 = object_getClassName(self);
          v34 = sel_getName(a2);
          identifier = [(NFApplet *)self->_activeApplet identifier];
          v36 = 45;
          if (v32)
          {
            v36 = 43;
          }

          v30(6, "%c[%{public}s %{public}s]:%i Resetting volatile config on: %{public}@", v36, v33, v34, 412, identifier);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v37 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
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
          identifier2 = [(NFApplet *)self->_activeApplet identifier];
          *buf = 67110146;
          v162 = v39;
          v163 = 2082;
          v164 = v40;
          v165 = 2082;
          v166 = v41;
          v167 = 1024;
          v168 = 412;
          v169 = 2114;
          v170 = identifier2;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Resetting volatile config on: %{public}@", buf, 0x2Cu);
        }

        secureElementWrapper = [(_NFContactlessSession *)self secureElementWrapper];
        v44 = sub_10025F700(secureElementWrapper, self->_activeApplet);
      }

      secureElementWrapper2 = [(_NFContactlessSession *)self secureElementWrapper];
      v46 = sub_1002562FC(secureElementWrapper2);

      if (v46)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v47 = NFLogGetLogger();
        if (v47)
        {
          v48 = v47;
          v49 = object_getClass(self);
          v50 = class_isMetaClass(v49);
          v147 = object_getClassName(self);
          v152 = sel_getName(a2);
          v51 = 45;
          if (v50)
          {
            v51 = 43;
          }

          v48(3, "%c[%{public}s %{public}s]:%i deactivateAll failed: %{public}@", v51, v147, v152, 419, v46);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v52 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
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
          v162 = v54;
          v163 = 2082;
          v164 = v55;
          v165 = 2082;
          v166 = v56;
          v167 = 1024;
          v168 = 419;
          v169 = 2114;
          v170 = v46;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i deactivateAll failed: %{public}@", buf, 0x2Cu);
        }

        goto LABEL_97;
      }

      if ([(_NFContactlessSession *)self plasticCardMode])
      {
        secureElementWrapper3 = [(_NFContactlessSession *)self secureElementWrapper];
        v118 = sub_1002629A4(secureElementWrapper3, 0, self->_activeApplet);

        if (v118)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v119 = NFLogGetLogger();
          if (v119)
          {
            v120 = v119;
            v121 = object_getClass(self);
            v122 = class_isMetaClass(v121);
            v150 = object_getClassName(self);
            v157 = sel_getName(a2);
            v123 = 45;
            if (v122)
            {
              v123 = 43;
            }

            v120(3, "%c[%{public}s %{public}s]:%i ATL failed to enable plastic card mode: %{public}@", v123, v150, v157, 426, v118);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v124 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
          {
            v125 = object_getClass(self);
            if (class_isMetaClass(v125))
            {
              v126 = 43;
            }

            else
            {
              v126 = 45;
            }

            v127 = object_getClassName(self);
            v128 = sel_getName(a2);
            *buf = 67110146;
            v162 = v126;
            v163 = 2082;
            v164 = v127;
            v165 = 2082;
            v166 = v128;
            v167 = 1024;
            v168 = 426;
            v169 = 2114;
            v170 = v118;
            _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i ATL failed to enable plastic card mode: %{public}@", buf, 0x2Cu);
          }
        }
      }

      else
      {
        v118 = 0;
      }

      v129 = self->_activeApplet;
      self->_activeApplet = 0;

      activeGroupMembers = self->_activeGroupMembers;
      self->_activeGroupMembers = 0;

      if (!appletCopy)
      {
        goto LABEL_114;
      }
    }

    else
    {
      [(_NFContactlessSession *)self switchToSecureElementWrapperForApplet:?];
      if (!appletCopy)
      {
LABEL_114:
        if (![(_NFSession *)self isEnding]&& ![(_NFSession *)self didEnd])
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v131 = NFLogGetLogger();
          if (v131)
          {
            v132 = v131;
            v133 = object_getClass(self);
            v134 = class_isMetaClass(v133);
            v135 = object_getClassName(self);
            v158 = sel_getName(a2);
            v136 = 45;
            if (v134)
            {
              v136 = 43;
            }

            v132(6, "%c[%{public}s %{public}s]:%i Removing express mode aid restriction", v136, v135, v158, 438);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v137 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
          {
            v138 = object_getClass(self);
            if (class_isMetaClass(v138))
            {
              v139 = 43;
            }

            else
            {
              v139 = 45;
            }

            v140 = object_getClassName(self);
            v141 = sel_getName(a2);
            *buf = 67109890;
            v162 = v139;
            v163 = 2082;
            v164 = v140;
            v165 = 2082;
            v166 = v141;
            v167 = 1024;
            v168 = 438;
            _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Removing express mode aid restriction", buf, 0x22u);
          }

          expressModeManager2 = [(_NFXPCSession *)self expressModeManager];
          sub_10003AE30(expressModeManager2, 0);
        }

        v46 = 0;
        self->_activeAppletEmulationType = 0;
        goto LABEL_97;
      }
    }
  }

  if (self->_activeApplet)
  {
LABEL_58:
    v46 = 0;
    self->_activeAppletEmulationType = [(_NFContactlessSession *)self _getActiveAppletEmulationType:?];
    goto LABEL_97;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v74 = NFLogGetLogger();
  if (v74)
  {
    v75 = v74;
    v76 = object_getClass(self);
    v77 = class_isMetaClass(v76);
    v148 = object_getClassName(self);
    v154 = sel_getName(a2);
    v78 = 45;
    if (v77)
    {
      v78 = 43;
    }

    v75(6, "%c[%{public}s %{public}s]:%i Activating %{public}@", v78, v148, v154, 444, appletCopy);
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
    *buf = 67110146;
    v162 = v81;
    v163 = 2082;
    v164 = v82;
    v165 = 2082;
    v166 = v83;
    v167 = 1024;
    v168 = 444;
    v169 = 2114;
    v170 = appletCopy;
    _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Activating %{public}@", buf, 0x2Cu);
  }

  [(_NFContactlessSession *)self switchToSecureElementWrapperForApplet:appletCopy];
  if (![(_NFContactlessSession *)self startWiredMode])
  {
    v71 = [NSError alloc];
    v65 = [NSString stringWithUTF8String:"nfcd"];
    v173 = NSLocalizedDescriptionKey;
    v66 = [NSString stringWithUTF8String:"Stack Error"];
    v174 = v66;
    v72 = &v174;
    v73 = &v173;
    goto LABEL_95;
  }

  secureElementWrapper4 = [(_NFContactlessSession *)self secureElementWrapper];
  v85 = sub_1002562FC(secureElementWrapper4);

  if ([(_NFContactlessSession *)self plasticCardMode])
  {
    secureElementWrapper5 = [(_NFContactlessSession *)self secureElementWrapper];
    v87 = sub_1002629A4(secureElementWrapper5, 1, appletCopy);

    if (v87)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v88 = NFLogGetLogger();
      if (v88)
      {
        v89 = v88;
        v90 = object_getClass(self);
        v91 = class_isMetaClass(v90);
        v149 = object_getClassName(self);
        v155 = sel_getName(a2);
        v92 = 45;
        if (v91)
        {
          v92 = 43;
        }

        v89(3, "%c[%{public}s %{public}s]:%i ATL failed to enable plastic card mode: %{public}@", v92, v149, v155, 458, v87);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v93 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        v94 = object_getClass(self);
        if (class_isMetaClass(v94))
        {
          v95 = 43;
        }

        else
        {
          v95 = 45;
        }

        v96 = object_getClassName(self);
        v97 = sel_getName(a2);
        *buf = 67110146;
        v162 = v95;
        v163 = 2082;
        v164 = v96;
        v165 = 2082;
        v166 = v97;
        v167 = 1024;
        v168 = 458;
        v169 = 2114;
        v170 = v87;
        _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i ATL failed to enable plastic card mode: %{public}@", buf, 0x2Cu);
      }
    }
  }

  secureElementWrapper6 = [(_NFContactlessSession *)self secureElementWrapper];
  v46 = sub_100254768(secureElementWrapper6, appletCopy);

  if (!v46)
  {
    objc_storeStrong(&self->_activeApplet, applet);
    _getRelatedGroupMembersForActiveApplet = [(_NFContactlessSession *)self _getRelatedGroupMembersForActiveApplet];
    v144 = self->_activeGroupMembers;
    self->_activeGroupMembers = _getRelatedGroupMembersForActiveApplet;

    v145 = self->_activeApplet;
    goto LABEL_58;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v99 = NFLogGetLogger();
  if (v99)
  {
    v100 = v99;
    v101 = object_getClass(self);
    v102 = class_isMetaClass(v101);
    v103 = object_getClassName(self);
    v156 = sel_getName(a2);
    v104 = 45;
    if (v102)
    {
      v104 = 43;
    }

    v100(3, "%c[%{public}s %{public}s]:%i Activation failed: %{public}@ : %{public}@", v104, v103, v156, 465, appletCopy, v46);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v105 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
  {
    v106 = object_getClass(self);
    if (class_isMetaClass(v106))
    {
      v107 = 43;
    }

    else
    {
      v107 = 45;
    }

    v108 = object_getClassName(self);
    v109 = sel_getName(a2);
    *buf = 67110402;
    v162 = v107;
    v163 = 2082;
    v164 = v108;
    v165 = 2082;
    v166 = v109;
    v167 = 1024;
    v168 = 465;
    v169 = 2114;
    v170 = appletCopy;
    v171 = 2114;
    v172 = v46;
    _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Activation failed: %{public}@ : %{public}@", buf, 0x36u);
  }

  identifier3 = [(NFApplet *)appletCopy identifier];
  packageIdentifier = [(NFApplet *)appletCopy packageIdentifier];
  moduleIdentifier = [(NFApplet *)appletCopy moduleIdentifier];
  v113 = [NSString stringWithFormat:@"Unable to activate applet with AID: %@, PID: %@, MID: %@. Error: %@", identifier3, packageIdentifier, moduleIdentifier, v46];

  v159[0] = @"Applet Identifier";
  identifier4 = [(NFApplet *)appletCopy identifier];
  v160[0] = identifier4;
  v160[1] = @"Other Bug";
  v159[1] = @"Classification";
  v159[2] = @"FailureKey";
  v160[2] = @"ttrTransaction";
  v115 = [NSDictionary dictionaryWithObjects:v160 forKeys:v159 count:3];
  sub_1001998C4(NFBugCapture, @"Failed to activate applet", v113, v115);

LABEL_97:

  return v46;
}

- (id)setActiveApplets:(id)applets
{
  appletsCopy = applets;
  expressModeManager = [(_NFXPCSession *)self expressModeManager];

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  v8 = Logger;
  if (!expressModeManager)
  {
    if (Logger)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v61 = 45;
      if (isMetaClass)
      {
        v61 = 43;
      }

      v8(3, "%c[%{public}s %{public}s]:%i EMM is nil", v61, ClassName, Name, 496);
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

      *buf = 67109890;
      v182 = v64;
      v183 = 2082;
      v184 = object_getClassName(self);
      v185 = 2082;
      v186 = sel_getName(a2);
      v187 = 1024;
      v188 = 496;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i EMM is nil", buf, 0x22u);
    }

    v65 = [NSError alloc];
    firstObject = [NSString stringWithUTF8String:"nfcd"];
    v199[0] = NSLocalizedDescriptionKey;
    lastObject = [NSString stringWithUTF8String:"Invalid State"];
    v200[0] = lastObject;
    v200[1] = &off_100330F30;
    v199[1] = @"Line";
    v199[2] = @"Method";
    v53 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v200[2] = v53;
    v199[3] = NSDebugDescriptionErrorKey;
    v66 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 497];
    v200[3] = v66;
    v67 = [NSDictionary dictionaryWithObjects:v200 forKeys:v199 count:4];
    v68 = v65;
    v69 = firstObject;
    v70 = 12;
    goto LABEL_66;
  }

  if (Logger)
  {
    v9 = object_getClass(self);
    v10 = class_isMetaClass(v9);
    v164 = object_getClassName(self);
    v170 = sel_getName(a2);
    v11 = 45;
    if (v10)
    {
      v11 = 43;
    }

    v8(6, "%c[%{public}s %{public}s]:%i %{public}@", v11, v164, v170, 499, appletsCopy);
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

    *buf = 67110146;
    v182 = v14;
    v183 = 2082;
    v184 = object_getClassName(self);
    v185 = 2082;
    v186 = sel_getName(a2);
    v187 = 1024;
    v188 = 499;
    v189 = 2114;
    v190 = appletsCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([(NFApplet *)appletsCopy count]!= 2)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v71 = NFLogGetLogger();
    if (v71)
    {
      v72 = v71;
      v73 = object_getClass(self);
      v74 = class_isMetaClass(v73);
      v166 = object_getClassName(self);
      v173 = sel_getName(a2);
      v75 = 45;
      if (v74)
      {
        v75 = 43;
      }

      v72(3, "%c[%{public}s %{public}s]:%i Invalid number of applets %{public}@", v75, v166, v173, 502, appletsCopy);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v76 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      v77 = object_getClass(self);
      if (class_isMetaClass(v77))
      {
        v78 = 43;
      }

      else
      {
        v78 = 45;
      }

      v79 = object_getClassName(self);
      v80 = sel_getName(a2);
      *buf = 67110146;
      v182 = v78;
      v183 = 2082;
      v184 = v79;
      v185 = 2082;
      v186 = v80;
      v187 = 1024;
      v188 = 502;
      v189 = 2114;
      v190 = appletsCopy;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid number of applets %{public}@", buf, 0x2Cu);
    }

    v81 = [NSError alloc];
    firstObject = [NSString stringWithUTF8String:"nfcd"];
    v197[0] = NSLocalizedDescriptionKey;
    lastObject = [NSString stringWithUTF8String:"Invalid Parameter"];
    v198[0] = lastObject;
    v198[1] = &off_100330F48;
    v197[1] = @"Line";
    v197[2] = @"Method";
    v53 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v198[2] = v53;
    v197[3] = NSDebugDescriptionErrorKey;
    v66 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 503];
    v198[3] = v66;
    v67 = [NSDictionary dictionaryWithObjects:v198 forKeys:v197 count:4];
    v68 = v81;
    v69 = firstObject;
    v70 = 10;
LABEL_66:
    v47 = [v68 initWithDomain:v69 code:v70 userInfo:v67];

LABEL_67:
    goto LABEL_68;
  }

  firstObject = [(NFApplet *)appletsCopy firstObject];
  lastObject = [(NFApplet *)appletsCopy lastObject];
  if (!firstObject || ![(NFApplet *)self->_activeApplet isEqualToApplet:firstObject])
  {
    if (self->_activeApplet)
    {
      [(_NFContactlessSession *)self switchToSecureElementWrapperForApplet:?];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFLogGetLogger();
      if (v17)
      {
        v18 = v17;
        v19 = object_getClass(self);
        v20 = class_isMetaClass(v19);
        v21 = object_getClassName(self);
        v22 = sel_getName(a2);
        v23 = 45;
        if (v20)
        {
          v23 = 43;
        }

        v18(6, "%c[%{public}s %{public}s]:%i Deselecting current active applet: %{public}@", v23, v21, v22, 514, self->_activeApplet);
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
        activeApplet = self->_activeApplet;
        *buf = 67110146;
        v182 = v26;
        v183 = 2082;
        v184 = v27;
        v185 = 2082;
        v186 = v28;
        v187 = 1024;
        v188 = 514;
        v189 = 2114;
        v190 = activeApplet;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Deselecting current active applet: %{public}@", buf, 0x2Cu);
      }

      if (![(_NFContactlessSession *)self startWiredMode])
      {
        v83 = [NSError alloc];
        v84 = [NSString stringWithUTF8String:"nfcd"];
        v195[0] = NSLocalizedDescriptionKey;
        v85 = [NSString stringWithUTF8String:"Stack Error"];
        v196[0] = v85;
        v196[1] = &off_100330F60;
        v195[1] = @"Line";
        v195[2] = @"Method";
        v86 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v196[2] = v86;
        v195[3] = NSDebugDescriptionErrorKey;
        v87 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 517];
        v196[3] = v87;
        v88 = v196;
        v89 = v195;
LABEL_124:
        v144 = [NSDictionary dictionaryWithObjects:v88 forKeys:v89 count:4];
        v47 = [v83 initWithDomain:v84 code:15 userInfo:v144];

        goto LABEL_68;
      }

      if (self->_activeKeyIdentifiers)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v30 = NFLogGetLogger();
        if (v30)
        {
          v31 = v30;
          v32 = object_getClass(self);
          v33 = class_isMetaClass(v32);
          v34 = object_getClassName(self);
          v35 = sel_getName(a2);
          identifier = [(NFApplet *)self->_activeApplet identifier];
          v37 = 45;
          if (v33)
          {
            v37 = 43;
          }

          v31(6, "%c[%{public}s %{public}s]:%i Resetting volatile config on: %{public}@", v37, v34, v35, 521, identifier);
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
          identifier2 = [(NFApplet *)self->_activeApplet identifier];
          *buf = 67110146;
          v182 = v40;
          v183 = 2082;
          v184 = v41;
          v185 = 2082;
          v186 = v42;
          v187 = 1024;
          v188 = 521;
          v189 = 2114;
          v190 = identifier2;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Resetting volatile config on: %{public}@", buf, 0x2Cu);
        }

        secureElementWrapper = [(_NFContactlessSession *)self secureElementWrapper];
        v45 = sub_10025F700(secureElementWrapper, self->_activeApplet);
      }

      secureElementWrapper2 = [(_NFContactlessSession *)self secureElementWrapper];
      v47 = sub_1002562FC(secureElementWrapper2);

      if (v47)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v48 = NFLogGetLogger();
        if (v48)
        {
          v49 = v48;
          v50 = object_getClass(self);
          v51 = class_isMetaClass(v50);
          v165 = object_getClassName(self);
          v171 = sel_getName(a2);
          v52 = 45;
          if (v51)
          {
            v52 = 43;
          }

          v49(3, "%c[%{public}s %{public}s]:%i deactivateAll failed: %{public}@", v52, v165, v171, 528, v47);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v53 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
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
          *buf = 67110146;
          v182 = v55;
          v183 = 2082;
          v184 = v56;
          v185 = 2082;
          v186 = v57;
          v187 = 1024;
          v188 = 528;
          v189 = 2114;
          v190 = v47;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i deactivateAll failed: %{public}@", buf, 0x2Cu);
        }

        goto LABEL_67;
      }

      if ([(_NFContactlessSession *)self plasticCardMode])
      {
        secureElementWrapper3 = [(_NFContactlessSession *)self secureElementWrapper];
        v133 = sub_1002629A4(secureElementWrapper3, 0, self->_activeApplet);

        if (v133)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v134 = NFLogGetLogger();
          if (v134)
          {
            v135 = v134;
            v136 = object_getClass(self);
            v137 = class_isMetaClass(v136);
            v169 = object_getClassName(self);
            v177 = sel_getName(a2);
            v138 = 45;
            if (v137)
            {
              v138 = 43;
            }

            v135(3, "%c[%{public}s %{public}s]:%i ATL failed to enable plastic card mode: %{public}@", v138, v169, v177, 535, v133);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v139 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
          {
            v140 = object_getClass(self);
            if (class_isMetaClass(v140))
            {
              v141 = 43;
            }

            else
            {
              v141 = 45;
            }

            v142 = object_getClassName(self);
            v143 = sel_getName(a2);
            *buf = 67110146;
            v182 = v141;
            v183 = 2082;
            v184 = v142;
            v185 = 2082;
            v186 = v143;
            v187 = 1024;
            v188 = 535;
            v189 = 2114;
            v190 = v133;
            _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i ATL failed to enable plastic card mode: %{public}@", buf, 0x2Cu);
          }
        }
      }

      else
      {
        v133 = 0;
      }

      v145 = self->_activeApplet;
      self->_activeApplet = 0;

      activeSecondaryApplet = self->_activeSecondaryApplet;
      self->_activeSecondaryApplet = 0;

      activeGroupMembers = self->_activeGroupMembers;
      self->_activeGroupMembers = 0;

      if (!firstObject)
      {
        goto LABEL_127;
      }
    }

    else
    {
      [(_NFContactlessSession *)self switchToSecureElementWrapperForApplet:?];
      if (!firstObject)
      {
LABEL_127:
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v148 = NFLogGetLogger();
        if (v148)
        {
          v149 = v148;
          v150 = object_getClass(self);
          v151 = class_isMetaClass(v150);
          v152 = object_getClassName(self);
          v178 = sel_getName(a2);
          v153 = 45;
          if (v151)
          {
            v153 = 43;
          }

          v149(6, "%c[%{public}s %{public}s]:%i Removing express mode aid restriction", v153, v152, v178, 547);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v154 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
        {
          v155 = object_getClass(self);
          if (class_isMetaClass(v155))
          {
            v156 = 43;
          }

          else
          {
            v156 = 45;
          }

          v157 = object_getClassName(self);
          v158 = sel_getName(a2);
          *buf = 67109890;
          v182 = v156;
          v183 = 2082;
          v184 = v157;
          v185 = 2082;
          v186 = v158;
          v187 = 1024;
          v188 = 547;
          _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Removing express mode aid restriction", buf, 0x22u);
        }

        expressModeManager2 = [(_NFXPCSession *)self expressModeManager];
        sub_10003AE30(expressModeManager2, 0);

        if (!appletsCopy)
        {
          goto LABEL_137;
        }

        goto LABEL_73;
      }
    }
  }

  if (!appletsCopy)
  {
LABEL_137:
    v47 = 0;
    self->_activeAppletEmulationType = 0;
    goto LABEL_68;
  }

LABEL_73:
  if (self->_activeApplet)
  {
LABEL_74:
    v47 = 0;
    self->_activeAppletEmulationType = [(_NFContactlessSession *)self _getActiveAppletEmulationType:?];
    goto LABEL_68;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v90 = NFLogGetLogger();
  if (v90)
  {
    v91 = v90;
    v92 = object_getClass(self);
    v93 = class_isMetaClass(v92);
    v167 = object_getClassName(self);
    v174 = sel_getName(a2);
    v94 = 45;
    if (v93)
    {
      v94 = 43;
    }

    v91(6, "%c[%{public}s %{public}s]:%i Activating %{public}@", v94, v167, v174, 553, appletsCopy);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v95 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
  {
    v96 = object_getClass(self);
    if (class_isMetaClass(v96))
    {
      v97 = 43;
    }

    else
    {
      v97 = 45;
    }

    v98 = object_getClassName(self);
    v99 = sel_getName(a2);
    *buf = 67110146;
    v182 = v97;
    v183 = 2082;
    v184 = v98;
    v185 = 2082;
    v186 = v99;
    v187 = 1024;
    v188 = 553;
    v189 = 2114;
    v190 = appletsCopy;
    _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Activating %{public}@", buf, 0x2Cu);
  }

  [(_NFContactlessSession *)self switchToSecureElementWrapperForApplet:firstObject];
  if (![(_NFContactlessSession *)self startWiredMode])
  {
    v83 = [NSError alloc];
    v84 = [NSString stringWithUTF8String:"nfcd"];
    v193[0] = NSLocalizedDescriptionKey;
    v85 = [NSString stringWithUTF8String:"Stack Error"];
    v194[0] = v85;
    v194[1] = &off_100330F78;
    v193[1] = @"Line";
    v193[2] = @"Method";
    v86 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v194[2] = v86;
    v193[3] = NSDebugDescriptionErrorKey;
    v87 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 559];
    v194[3] = v87;
    v88 = v194;
    v89 = v193;
    goto LABEL_124;
  }

  secureElementWrapper4 = [(_NFContactlessSession *)self secureElementWrapper];
  v101 = sub_1002562FC(secureElementWrapper4);

  if ([(_NFContactlessSession *)self plasticCardMode])
  {
    secureElementWrapper5 = [(_NFContactlessSession *)self secureElementWrapper];
    v103 = sub_1002629A4(secureElementWrapper5, 1, firstObject);

    if (v103)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v104 = NFLogGetLogger();
      if (v104)
      {
        v105 = v104;
        v106 = object_getClass(self);
        v107 = class_isMetaClass(v106);
        v168 = object_getClassName(self);
        v175 = sel_getName(a2);
        v108 = 45;
        if (v107)
        {
          v108 = 43;
        }

        v105(3, "%c[%{public}s %{public}s]:%i ATL failed to enable plastic card mode: %{public}@", v108, v168, v175, 567, v103);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v109 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        v110 = object_getClass(self);
        if (class_isMetaClass(v110))
        {
          v111 = 43;
        }

        else
        {
          v111 = 45;
        }

        v112 = object_getClassName(self);
        v113 = sel_getName(a2);
        *buf = 67110146;
        v182 = v111;
        v183 = 2082;
        v184 = v112;
        v185 = 2082;
        v186 = v113;
        v187 = 1024;
        v188 = 567;
        v189 = 2114;
        v190 = v103;
        _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i ATL failed to enable plastic card mode: %{public}@", buf, 0x2Cu);
      }
    }
  }

  secureElementWrapper6 = [(_NFContactlessSession *)self secureElementWrapper];
  v47 = sub_100254C8C(secureElementWrapper6, appletsCopy);

  if (!v47)
  {
    objc_storeStrong(&self->_activeApplet, firstObject);
    objc_storeStrong(&self->_activeSecondaryApplet, lastObject);
    _getRelatedGroupMembersForActiveApplet = [(_NFContactlessSession *)self _getRelatedGroupMembersForActiveApplet];
    v161 = self->_activeGroupMembers;
    self->_activeGroupMembers = _getRelatedGroupMembersForActiveApplet;

    v162 = self->_activeApplet;
    goto LABEL_74;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v115 = NFLogGetLogger();
  if (v115)
  {
    v116 = v115;
    v117 = object_getClass(self);
    v118 = class_isMetaClass(v117);
    v119 = object_getClassName(self);
    v176 = sel_getName(a2);
    v120 = 45;
    if (v118)
    {
      v120 = 43;
    }

    v116(3, "%c[%{public}s %{public}s]:%i Activation failed: %{public}@ : %{public}@", v120, v119, v176, 574, appletsCopy, v47);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v121 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
  {
    v122 = object_getClass(self);
    if (class_isMetaClass(v122))
    {
      v123 = 43;
    }

    else
    {
      v123 = 45;
    }

    v124 = object_getClassName(self);
    v125 = sel_getName(a2);
    *buf = 67110402;
    v182 = v123;
    v183 = 2082;
    v184 = v124;
    v185 = 2082;
    v186 = v125;
    v187 = 1024;
    v188 = 574;
    v189 = 2114;
    v190 = appletsCopy;
    v191 = 2114;
    v192 = v47;
    _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Activation failed: %{public}@ : %{public}@", buf, 0x36u);
  }

  identifier3 = [firstObject identifier];
  packageIdentifier = [firstObject packageIdentifier];
  moduleIdentifier = [firstObject moduleIdentifier];
  v129 = [NSString stringWithFormat:@"Unable to activate applet with AID: %@, PID: %@, MID: %@. Error: %@", identifier3, packageIdentifier, moduleIdentifier, v47];

  v179[0] = @"Applet Identifier";
  identifier4 = [firstObject identifier];
  if (identifier4)
  {
    identifier5 = [firstObject identifier];
  }

  else
  {
    identifier5 = @"NULL";
  }

  v180[0] = identifier5;
  v180[1] = @"Other Bug";
  v179[1] = @"Classification";
  v179[2] = @"FailureKey";
  v180[2] = @"ttrTransaction";
  v163 = [NSDictionary dictionaryWithObjects:v180 forKeys:v179 count:3];
  sub_1001998C4(NFBugCapture, @"Failed to activate applet", v129, v163);

  if (identifier4)
  {
  }

LABEL_68:

  return v47;
}

- (id)preloadApplets
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  secureElementWrapper = [(_NFContactlessSession *)selfCopy secureElementWrapper];
  v133 = secureElementWrapper;
  v5 = [NSArray arrayWithObjects:&v133 count:1];

  expressModeManager = [(_NFXPCSession *)selfCopy expressModeManager];

  if (expressModeManager)
  {
    if (!selfCopy->_appletMap)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      appletMap = selfCopy->_appletMap;
      selfCopy->_appletMap = v7;
    }

    if (!selfCopy->_applets)
    {
      sel = a2;
      [(NSMutableDictionary *)selfCopy->_appletMap removeAllObjects];
      v102 = objc_opt_new();
      expressModeManager2 = [(_NFXPCSession *)selfCopy expressModeManager];
      sub_100035DE4(expressModeManager2, 1);

      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      obj = v5;
      v104 = [obj countByEnumeratingWithState:&v113 objects:v122 count:16];
      if (v104)
      {
        v103 = *v114;
        v99 = v5;
        while (2)
        {
          v25 = 0;
          do
          {
            if (*v114 != v103)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v113 + 1) + 8 * v25);
            [(_NFContactlessSession *)selfCopy _setActiveSecureElementWrapper:v26];
            v27 = sub_100253854(v26);
            if (v27 && (v28 = v27, v29 = [(_NFContactlessSession *)selfCopy useFilteredApplets], v28, v29))
            {
              v30 = sub_100253854(v26);
              v106 = 1;
            }

            else
            {
              if (![(_NFContactlessSession *)selfCopy startWiredMode])
              {
                expressModeManager3 = [(_NFXPCSession *)selfCopy expressModeManager];
                if (expressModeManager3)
                {
                  v49 = expressModeManager3[2];
                  if (v49)
                  {
                    *(v49 + 176) = 0;
                  }
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                Logger = NFLogGetLogger();
                if (Logger)
                {
                  v51 = Logger;
                  Class = object_getClass(selfCopy);
                  isMetaClass = class_isMetaClass(Class);
                  ClassName = object_getClassName(selfCopy);
                  Name = sel_getName(sel);
                  v55 = 45;
                  if (isMetaClass)
                  {
                    v55 = 43;
                  }

                  v51(3, "%c[%{public}s %{public}s]:%i Failed to start wired mode for eSE", v55, ClassName, Name, 765);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v56 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  v57 = object_getClass(selfCopy);
                  if (class_isMetaClass(v57))
                  {
                    v58 = 43;
                  }

                  else
                  {
                    v58 = 45;
                  }

                  v59 = object_getClassName(selfCopy);
                  v60 = sel_getName(sel);
                  *buf = 67109890;
                  v126 = v58;
                  v127 = 2082;
                  v128 = v59;
                  v129 = 2082;
                  v130 = v60;
                  v131 = 1024;
                  v132 = 765;
                  _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to start wired mode for eSE", buf, 0x22u);
                }

                v61 = [NSError alloc];
                v30 = [NSString stringWithUTF8String:"nfcd"];
                v120 = NSLocalizedDescriptionKey;
                v62 = [NSString stringWithUTF8String:"Stack Error"];
                v121 = v62;
                v63 = [NSDictionary dictionaryWithObjects:&v121 forKeys:&v120 count:1];
                v9 = [v61 initWithDomain:v30 code:15 userInfo:v63];

                goto LABEL_87;
              }

              useFilteredApplets = [(_NFContactlessSession *)selfCopy useFilteredApplets];
              secureElementWrapper2 = [(_NFContactlessSession *)selfCopy secureElementWrapper];
              v33 = secureElementWrapper2;
              if (useFilteredApplets)
              {
                v112 = 0;
                v34 = &v112;
                sub_1002543BC(secureElementWrapper2, &v112);
              }

              else
              {
                v111 = 0;
                v34 = &v111;
                sub_100257A4C(secureElementWrapper2, &v111);
              }
              v9 = ;
              v30 = *v34;

              if (v9 && [v9 code] != 24)
              {
                expressModeManager4 = [(_NFXPCSession *)selfCopy expressModeManager];
                if (expressModeManager4)
                {
                  v82 = expressModeManager4[2];
                  if (v82)
                  {
                    *(v82 + 176) = 0;
                  }
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v83 = NFLogGetLogger();
                if (v83)
                {
                  v84 = v83;
                  v85 = object_getClass(selfCopy);
                  v86 = class_isMetaClass(v85);
                  v87 = object_getClassName(selfCopy);
                  v98 = sel_getName(sel);
                  v88 = 45;
                  if (v86)
                  {
                    v88 = 43;
                  }

                  v84(3, "%c[%{public}s %{public}s]:%i Failed to get applets from eSE", v88, v87, v98, 781);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v89 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                {
                  v90 = object_getClass(selfCopy);
                  if (class_isMetaClass(v90))
                  {
                    v91 = 43;
                  }

                  else
                  {
                    v91 = 45;
                  }

                  v92 = object_getClassName(selfCopy);
                  v93 = sel_getName(sel);
                  *buf = 67109890;
                  v126 = v91;
                  v127 = 2082;
                  v128 = v92;
                  v129 = 2082;
                  v130 = v93;
                  v131 = 1024;
                  v132 = 781;
                  _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get applets from eSE", buf, 0x22u);
                }

                [(_NFContactlessSession *)selfCopy startDefaultMode];
                goto LABEL_87;
              }

              v106 = 0;
            }

            v105 = v25;
            if (v30)
            {
              [(NSArray *)v102 addObjectsFromArray:v30];
            }

            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            v30 = v30;
            v35 = [v30 countByEnumeratingWithState:&v107 objects:v119 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v108;
              do
              {
                for (i = 0; i != v36; i = i + 1)
                {
                  if (*v108 != v37)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v39 = *(*(&v107 + 1) + 8 * i);
                  v40 = selfCopy->_appletMap;
                  serialNumber = [v26 serialNumber];
                  identifier = [v39 identifier];
                  [(NSMutableDictionary *)v40 setObject:serialNumber forKey:identifier];
                }

                v36 = [v30 countByEnumeratingWithState:&v107 objects:v119 count:16];
              }

              while (v36);
            }

            if (v106 && ![(_NFContactlessSession *)selfCopy startWiredMode])
            {
              expressModeManager5 = [(_NFXPCSession *)selfCopy expressModeManager];
              if (expressModeManager5)
              {
                v65 = expressModeManager5[2];
                if (v65)
                {
                  *(v65 + 176) = 0;
                }
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v66 = NFLogGetLogger();
              if (v66)
              {
                v67 = v66;
                v68 = object_getClass(selfCopy);
                v69 = class_isMetaClass(v68);
                v70 = object_getClassName(selfCopy);
                v97 = sel_getName(sel);
                v71 = 45;
                if (v69)
                {
                  v71 = 43;
                }

                v67(3, "%c[%{public}s %{public}s]:%i Failed to start wired mode for eSE", v71, v70, v97, 802);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v72 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
              {
                v73 = object_getClass(selfCopy);
                if (class_isMetaClass(v73))
                {
                  v74 = 43;
                }

                else
                {
                  v74 = 45;
                }

                v75 = object_getClassName(selfCopy);
                v76 = sel_getName(sel);
                *buf = 67109890;
                v126 = v74;
                v127 = 2082;
                v128 = v75;
                v129 = 2082;
                v130 = v76;
                v131 = 1024;
                v132 = 802;
                _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to start wired mode for eSE", buf, 0x22u);
              }

              v77 = [NSError alloc];
              v78 = [NSString stringWithUTF8String:"nfcd"];
              v117 = NSLocalizedDescriptionKey;
              v79 = [NSString stringWithUTF8String:"Stack Error"];
              v118 = v79;
              v80 = [NSDictionary dictionaryWithObjects:&v118 forKeys:&v117 count:1];
              v9 = [v77 initWithDomain:v78 code:15 userInfo:v80];

LABEL_87:
              v5 = v99;
              goto LABEL_88;
            }

            secureElementWrapper3 = [(_NFContactlessSession *)selfCopy secureElementWrapper];
            v44 = sub_1002562FC(secureElementWrapper3);

            v25 = v105 + 1;
          }

          while ((v105 + 1) != v104);
          v5 = v99;
          v104 = [obj countByEnumeratingWithState:&v113 objects:v122 count:16];
          if (v104)
          {
            continue;
          }

          break;
        }
      }

      expressModeManager6 = [(_NFXPCSession *)selfCopy expressModeManager];
      if (expressModeManager6)
      {
        v46 = expressModeManager6[2];
        if (v46)
        {
          *(v46 + 176) = 0;
        }
      }

      applets = selfCopy->_applets;
      selfCopy->_applets = v102;

      [(_NFContactlessSession *)selfCopy startDefaultMode];
    }

    v9 = 0;
  }

  else
  {
    v10 = v5;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFLogGetLogger();
    if (v11)
    {
      v12 = v11;
      v13 = object_getClass(selfCopy);
      v14 = class_isMetaClass(v13);
      v15 = object_getClassName(selfCopy);
      v95 = sel_getName(a2);
      v16 = 45;
      if (v14)
      {
        v16 = 43;
      }

      v12(3, "%c[%{public}s %{public}s]:%i EMM is nil!", v16, v15, v95, 734);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = object_getClass(selfCopy);
      if (class_isMetaClass(v18))
      {
        v19 = 43;
      }

      else
      {
        v19 = 45;
      }

      *buf = 67109890;
      v126 = v19;
      v127 = 2082;
      v128 = object_getClassName(selfCopy);
      v129 = 2082;
      v130 = sel_getName(a2);
      v131 = 1024;
      v132 = 734;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i EMM is nil!", buf, 0x22u);
    }

    v20 = [NSError alloc];
    v21 = [NSString stringWithUTF8String:"nfcd"];
    v123 = NSLocalizedDescriptionKey;
    v22 = [NSString stringWithUTF8String:"Invalid State"];
    v124 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v124 forKeys:&v123 count:1];
    v9 = [v20 initWithDomain:v21 code:12 userInfo:v23];

    v5 = v10;
  }

LABEL_88:

  objc_sync_exit(selfCopy);

  return v9;
}

- (id)_getAppletsForAids:(id)aids
{
  aidsCopy = aids;
  v5 = objc_opt_new();
  secureElementWrapper = [(_NFContactlessSession *)self secureElementWrapper];
  v7 = sub_100253854(secureElementWrapper);

  if (v7)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    secureElementWrapper2 = [(_NFContactlessSession *)self secureElementWrapper];
    v9 = sub_100253854(secureElementWrapper2);

    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          identifier = [v14 identifier];
          v16 = [aidsCopy containsObject:identifier];

          if (v16)
          {
            [v5 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }
  }

  if ([v5 count])
  {
    v17 = v5;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_getRelatedGroupMembersForActiveApplet
{
  activeApplet = self->_activeApplet;
  if (!activeApplet)
  {
    goto LABEL_39;
  }

  multiSEGroupMemberIDs = [(NFApplet *)activeApplet multiSEGroupMemberIDs];

  v6 = self->_activeApplet;
  if (multiSEGroupMemberIDs)
  {
    multiSEGroupMemberIDs2 = [(NFApplet *)v6 multiSEGroupMemberIDs];
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

      v9(6, "%c[%{public}s %{public}s]:%i MultiSE group members found: %{public}@", v12, ClassName, Name, 845, multiSEGroupMemberIDs2);
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

      *buf = 67110146;
      v50 = v15;
      v51 = 2082;
      v52 = object_getClassName(self);
      v53 = 2082;
      v54 = sel_getName(a2);
      v55 = 1024;
      v56 = 845;
      v57 = 2114;
      v58 = multiSEGroupMemberIDs2;
      v16 = "%c[%{public}s %{public}s]:%i MultiSE group members found: %{public}@";
LABEL_22:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v16, buf, 0x2Cu);
    }
  }

  else
  {
    groupMemberIDs = [(NFApplet *)v6 groupMemberIDs];

    v18 = self->_activeApplet;
    if (groupMemberIDs)
    {
      multiSEGroupMemberIDs2 = [(NFApplet *)v18 groupMemberIDs];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v19 = NFLogGetLogger();
      if (v19)
      {
        v20 = v19;
        v21 = object_getClass(self);
        v22 = class_isMetaClass(v21);
        v43 = object_getClassName(self);
        v46 = sel_getName(a2);
        v23 = 45;
        if (v22)
        {
          v23 = 43;
        }

        v20(6, "%c[%{public}s %{public}s]:%i Group members found: %{public}@", v23, v43, v46, 849, multiSEGroupMemberIDs2);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
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

        *buf = 67110146;
        v50 = v25;
        v51 = 2082;
        v52 = object_getClassName(self);
        v53 = 2082;
        v54 = sel_getName(a2);
        v55 = 1024;
        v56 = 849;
        v57 = 2114;
        v58 = multiSEGroupMemberIDs2;
        v16 = "%c[%{public}s %{public}s]:%i Group members found: %{public}@";
        goto LABEL_22;
      }
    }

    else
    {
      groupHeadID = [(NFApplet *)v18 groupHeadID];

      if (!groupHeadID)
      {
        goto LABEL_39;
      }

      groupHeadID2 = [(NFApplet *)self->_activeApplet groupHeadID];
      v48 = groupHeadID2;
      v29 = [NSArray arrayWithObjects:&v48 count:1];
      v13 = [(_NFContactlessSession *)self _getAppletsForAids:v29];

      if (!v13 || [v13 count]!= 1)
      {
        v26 = 0;
        goto LABEL_25;
      }

      v30 = [v13 objectAtIndex:0];
      multiSEGroupMemberIDs2 = [v30 groupMemberIDs];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFLogGetLogger();
      if (v31)
      {
        v32 = v31;
        v33 = object_getClass(self);
        v34 = class_isMetaClass(v33);
        v44 = object_getClassName(self);
        v47 = sel_getName(a2);
        v35 = 45;
        if (v34)
        {
          v35 = 43;
        }

        v32(6, "%c[%{public}s %{public}s]:%i Group members found: %{public}@", v35, v44, v47, 856, multiSEGroupMemberIDs2);
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
        *buf = 67110146;
        v50 = v38;
        v51 = 2082;
        v52 = v39;
        v53 = 2082;
        v54 = v40;
        v55 = 1024;
        v56 = 856;
        v57 = 2114;
        v58 = multiSEGroupMemberIDs2;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Group members found: %{public}@", buf, 0x2Cu);
      }
    }
  }

  if (multiSEGroupMemberIDs2)
  {
    v26 = [(_NFContactlessSession *)self _getAppletsForAids:multiSEGroupMemberIDs2];
    v13 = multiSEGroupMemberIDs2;
LABEL_25:

    goto LABEL_40;
  }

LABEL_39:
  v26 = 0;
LABEL_40:

  return v26;
}

- (int)_getActiveAppletEmulationType:(id)type
{
  typeCopy = type;
  identifierAsData = [typeCopy identifierAsData];
  v7 = [[NSData alloc] initWithBytes:&unk_100296F08 length:14];
  v8 = [identifierAsData isEqualToData:v7];

  if (v8)
  {
    v9 = typeCopy;
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

      v11(6, "%c[%{public}s %{public}s]:%i Enabling ABF for FTA", v15, ClassName, Name, 869);
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

      *buf = 67109890;
      v59 = v18;
      v60 = 2082;
      v61 = object_getClassName(self);
      v62 = 2082;
      v63 = sel_getName(a2);
      v64 = 1024;
      v65 = 869;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Enabling ABF for FTA", buf, 0x22u);
    }

    v19 = 7;
LABEL_12:
    typeCopy = v9;
    goto LABEL_52;
  }

  isTypeF = [typeCopy isTypeF];
  if ([typeCopy groupActivationStyle] == 1)
  {
    if (isTypeF)
    {
      v19 = 4;
    }

    else
    {
      v19 = 3;
    }
  }

  else
  {
    if (![typeCopy groupActivationStyle])
    {
      groupHeadID = [typeCopy groupHeadID];

      if (groupHeadID)
      {
        v9 = typeCopy;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v26 = NFLogGetLogger();
        if (v26)
        {
          v27 = v26;
          v28 = object_getClass(self);
          v29 = class_isMetaClass(v28);
          v30 = object_getClassName(self);
          v50 = sel_getName(a2);
          v31 = 45;
          if (v29)
          {
            v31 = 43;
          }

          v27(4, "%c[%{public}s %{public}s]:%i Invalid GP group activation", v31, v30, v50, 880);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v32 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
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

          *buf = 67109890;
          v59 = v34;
          v60 = 2082;
          v61 = object_getClassName(self);
          v62 = 2082;
          v63 = sel_getName(a2);
          v64 = 1024;
          v65 = 880;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid GP group activation", buf, 0x22u);
        }

        v19 = 0;
        goto LABEL_12;
      }
    }

    groupHeadID2 = [typeCopy groupHeadID];
    if (groupHeadID2)
    {
      secureElementWrapper = [(_NFContactlessSession *)self secureElementWrapper];
      groupHeadIDAsData = [typeCopy groupHeadIDAsData];
      v24 = sub_100257F24(secureElementWrapper, groupHeadIDAsData, 0);
    }

    else
    {
      v24 = typeCopy;
    }

    groupMemberIDs = [v24 groupMemberIDs];
    v36 = groupMemberIDs;
    if (groupMemberIDs)
    {
      v37 = groupMemberIDs;
    }

    else
    {
      v37 = objc_opt_new();
    }

    v38 = v37;

    v52 = typeCopy;
    if (v24)
    {
      if ([v24 isTypeF])
      {
        v19 = 4;
      }

      else
      {
        v19 = 3;
      }
    }

    else
    {
      v19 = 0;
    }

    v51 = v24;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v39 = v38;
    v40 = [v39 countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v54;
      do
      {
        for (i = 0; i != v41; i = i + 1)
        {
          if (*v54 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v53 + 1) + 8 * i);
          secureElementWrapper2 = [(_NFContactlessSession *)self secureElementWrapper];
          v46 = [NSData NF_dataWithHexString:v44];
          v47 = sub_100257F24(secureElementWrapper2, v46, 0);

          if (v47)
          {
            if ([v47 isTypeF])
            {
              v19 |= 4u;
            }

            else
            {
              v19 |= 3u;
            }
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v41);
    }

    typeCopy = v52;
  }

LABEL_52:

  return v19;
}

- (BOOL)_configureEmulationType:(unint64_t)type
{
  if (!type)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_NFContactlessSession.m" lineNumber:915 description:@"Invalid argument"];
  }

  v5 = sub_10004C144();
  v6 = [(_NFContactlessSession *)self _configureEmulationType:type routingConfigWhenEmulationOff:v5];

  return v6;
}

- (BOOL)_configureEmulationType:(unint64_t)type routingConfigWhenEmulationOff:(id)off
{
  offCopy = off;
  if (!type)
  {
    if (self->_emulationState)
    {
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v13 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        clientName = [(_NFXPCSession *)self clientName];
        v19 = 45;
        if (isMetaClass)
        {
          v19 = 43;
        }

        v13(6, "%c[%{public}s %{public}s]:%i NFC emulation mode terminated: %@", v19, ClassName, Name, 929, clientName);
      }

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
        clientName2 = [(_NFXPCSession *)self clientName];
        *buf = 67110146;
        v67 = v22;
        v68 = 2082;
        v69 = v23;
        v70 = 2082;
        v71 = v24;
        v72 = 1024;
        v73 = 929;
        v74 = 2112;
        v75 = clientName2;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC emulation mode terminated: %@", buf, 0x2Cu);
      }
    }

    self->_emulationState = 0;
    v8 = +[_NFHardwareManager sharedHardwareManager];
    v26 = [v8 setRoutingConfig:offCopy];
    v11 = v26 == 0;

    goto LABEL_16;
  }

  if ((type & 0x18) != 0)
  {
    self->_emulationState = 8;
    v8 = sub_10004C2B0(NFRoutingConfig, 0, 1, (type >> 4) & 1, 0, 2, 0);
    v9 = +[_NFHardwareManager sharedHardwareManager];
    v10 = [v9 setRoutingConfig:v8];
    v11 = v10 == 0;

LABEL_16:
    goto LABEL_57;
  }

  v27 = self->_emulationState & 0xFFFFFFFFFFFFFFF7;
  v28 = v27 | type;
  self->_emulationState = v27;
  if ((v27 | type) == 4)
  {
    v29 = sub_10004BD70();
  }

  else
  {
    activeAppletEmulationType = self->_activeAppletEmulationType;
    if ((v28 & 4) != 0)
    {
      supportedTypeFSystem = [(NFApplet *)self->_activeApplet supportedTypeFSystem];
      v31 = supportedTypeFSystem != 2;
      if (supportedTypeFSystem == 2)
      {
        activeAppletEmulationType |= 4u;
      }

      else
      {
        activeAppletEmulationType |= 3u;
      }
    }

    else
    {
      v31 = 0;
    }

    if ([(NFApplet *)self->_activeApplet suppressTypeB])
    {
      activeAppletEmulationType &= ~2u;
    }

    else if ([(NFApplet *)self->_activeApplet groupActivationStyle]== 2)
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      groupMemberIDs = [(NFApplet *)self->_activeApplet groupMemberIDs];
      v34 = [(_NFContactlessSession *)self _getAppletsForAids:groupMemberIDs];

      v35 = [v34 countByEnumeratingWithState:&v61 objects:v65 count:16];
      if (v35)
      {
        v36 = v35;
        v56 = v31;
        v58 = v28;
        v37 = *v62;
        while (2)
        {
          for (i = 0; i != v36; i = i + 1)
          {
            if (*v62 != v37)
            {
              objc_enumerationMutation(v34);
            }

            if ([*(*(&v61 + 1) + 8 * i) suppressTypeB])
            {
              activeAppletEmulationType &= ~2u;
              goto LABEL_37;
            }
          }

          v36 = [v34 countByEnumeratingWithState:&v61 objects:v65 count:16];
          if (v36)
          {
            continue;
          }

          break;
        }

LABEL_37:
        v28 = v58;
        v31 = v56;
      }
    }

    if ([(NFApplet *)self->_activeApplet suppressTypeA])
    {
      v39 = activeAppletEmulationType & 0xFFFFFFFE;
    }

    else
    {
      v39 = activeAppletEmulationType;
    }

    v29 = sub_10004C050(NFRoutingConfig, v31, v39);
  }

  v40 = v29;
  v41 = +[_NFHardwareManager sharedHardwareManager];
  v42 = [v41 setRoutingConfig:v40];
  v11 = v42 == 0;

  if (!v42)
  {
    if (!self->_emulationState)
    {
      v43 = NFLogGetLogger();
      if (v43)
      {
        v44 = v43;
        v45 = object_getClass(self);
        v59 = class_isMetaClass(v45);
        v46 = object_getClassName(self);
        v57 = sel_getName(a2);
        clientName3 = [(_NFXPCSession *)self clientName];
        v48 = 45;
        if (v59)
        {
          v48 = 43;
        }

        v44(6, "%c[%{public}s %{public}s]:%i NFC emulation mode activated: %@", v48, v46, v57, 994, clientName3);
      }

      v49 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = object_getClass(self);
        v51 = v28;
        if (class_isMetaClass(v50))
        {
          v52 = 43;
        }

        else
        {
          v52 = 45;
        }

        v60 = object_getClassName(self);
        v53 = sel_getName(a2);
        clientName4 = [(_NFXPCSession *)self clientName];
        *buf = 67110146;
        v67 = v52;
        v28 = v51;
        v68 = 2082;
        v69 = v60;
        v70 = 2082;
        v71 = v53;
        v72 = 1024;
        v73 = 994;
        v74 = 2112;
        v75 = clientName4;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC emulation mode activated: %@", buf, 0x2Cu);
      }
    }

    self->_emulationState = v28;
  }

LABEL_57:
  return v11;
}

- (void)getAppletsWithCompletion:(id)completion
{
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = _NFContactlessSession;
  workQueue = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C3ECC;
  block[3] = &unk_100316050;
  v9 = completionCopy;
  v10 = a2;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)setActiveApplet:(id)applet completion:(id)completion
{
  appletCopy = applet;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = _NFContactlessSession;
  workQueue = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000C42F4;
  v12[3] = &unk_1003165E8;
  v14 = completionCopy;
  v15 = a2;
  v12[4] = self;
  v13 = appletCopy;
  v10 = appletCopy;
  v11 = completionCopy;
  dispatch_async(workQueue, v12);
}

- (void)setActiveAppletsForTest:(id)test withCardType:(unsigned int)type completion:(id)completion
{
  testCopy = test;
  completionCopy = completion;
  v19.receiver = self;
  v19.super_class = _NFContactlessSession;
  workQueue = [(_NFSession *)&v19 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C4844;
  block[3] = &unk_100318228;
  v16 = completionCopy;
  v17 = a2;
  block[4] = self;
  v15 = testCopy;
  typeCopy = type;
  v12 = testCopy;
  v13 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)startCardEmulationWithCompletion:(id)completion
{
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = _NFContactlessSession;
  workQueue = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C4D50;
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
  v11.super_class = _NFContactlessSession;
  workQueue = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C5410;
  block[3] = &unk_100316050;
  v9 = completionCopy;
  v10 = a2;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (BOOL)startWiredMode
{
  v3 = sub_10004BF60(NFRoutingConfig, 0);
  LOBYTE(self) = [(_NFContactlessSession *)self _configureEmulationType:0 routingConfigWhenEmulationOff:v3];

  return self;
}

- (BOOL)_startFieldDetectAndKeepSEOn:(BOOL)on
{
  if (on)
  {
    sub_10004BF60(NFRoutingConfig, 1);
  }

  else
  {
    sub_10004C224(NFRoutingConfig, 1);
  }
  v4 = ;
  v5 = [(_NFContactlessSession *)self _configureEmulationType:0 routingConfigWhenEmulationOff:v4];

  return v5;
}

- (void)handleFieldNotification:(id)notification
{
  notificationCopy = notification;
  remoteObject = [(_NFXPCSession *)self remoteObject];
  [remoteObject didDetectFieldNotification:notificationCopy];
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

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 1196);
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
    v21 = 1196;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }
}

- (void)handleSelectEvent:(id)event
{
  eventCopy = event;
  if ([(_NFContactlessSession *)self plasticCardMode])
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

      v7(6, "%c[%{public}s %{public}s]:%i Ignoring due to plasticCardMode", v11, ClassName, Name, 1202);
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
      v18 = v14;
      v19 = 2082;
      v20 = object_getClassName(self);
      v21 = 2082;
      v22 = sel_getName(a2);
      v23 = 1024;
      v24 = 1202;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Ignoring due to plasticCardMode", buf, 0x22u);
    }
  }

  else
  {
    remoteObject = [(_NFXPCSession *)self remoteObject];
    [remoteObject didSelectApplet:eventCopy];
  }
}

- (void)handleFelicaStateEvent:(id)event
{
  eventCopy = event;
  remoteObject = [(_NFXPCSession *)self remoteObject];
  [remoteObject didFelicaStateChange:eventCopy];
}

@end