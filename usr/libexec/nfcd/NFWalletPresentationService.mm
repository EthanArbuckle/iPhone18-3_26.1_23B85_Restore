@interface NFWalletPresentationService
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
- (BOOL)_shouldSuppressNotify;
- (BOOL)assert:(unint64_t)assert requestor:(id)requestor isFirst:(BOOL *)first updatedVal:(int64_t *)val;
- (BOOL)deassert:(unint64_t)deassert requestor:(id)requestor isLast:(BOOL *)last updatedVal:(int64_t *)val;
- (BOOL)fieldDetectRequested;
- (BOOL)forceNotifyFieldDetectPresentmentWithFieldNotification:(id)notification walletDomain:(unint64_t)domain;
- (BOOL)isAsserted:(unint64_t)asserted;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)notifyFieldDetectPresentmentWithFieldNotification:(id)notification;
- (id)dumpState;
- (id)walletBundleIdentifier;
- (unint64_t)walletDomain;
- (void)currentAssertionCounts:(int64_t *)counts;
- (void)notifyPresentmentFieldExit;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)presentWithUserInfo:(id)info completion:(id)completion;
- (void)updateNFCDefaultForCA;
@end

@implementation NFWalletPresentationService

- (BOOL)fieldDetectRequested
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    walletPresentationEventPublisher = selfCopy->_walletPresentationEventPublisher;
  }

  else
  {
    walletPresentationEventPublisher = 0;
  }

  v4 = walletPresentationEventPublisher;
  objc_sync_exit(selfCopy);

  if ([(os_unfair_lock_s *)v4 walletDomain]== 2 || [(os_unfair_lock_s *)v4 walletDomain]== 1)
  {
    v5 = sub_100048C40(v4);
    v6 = [v5 lengthOfBytesUsingEncoding:4] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)notifyPresentmentFieldExit
{
  if (![(NFWalletPresentationService *)self _shouldSuppressNotify])
  {
    obj = self;
    objc_sync_enter(obj);
    walletPresentationEventPublisher = obj;
    if (obj)
    {
      walletPresentationEventPublisher = obj->_walletPresentationEventPublisher;
    }

    sub_100003FD0(walletPresentationEventPublisher);
    objc_sync_exit(obj);
  }
}

- (BOOL)_shouldSuppressNotify
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    referenceCounter = selfCopy->_referenceCounter;
  }

  else
  {
    referenceCounter = 0;
  }

  v4 = referenceCounter;
  v5 = 1;
  if ((sub_100147A68(v4, 1uLL, 0) & 1) == 0)
  {
    if (selfCopy)
    {
      v6 = selfCopy->_referenceCounter;
    }

    else
    {
      v6 = 0;
    }

    v5 = sub_100147A68(v6, 2uLL, 0);
  }

  objc_sync_exit(selfCopy);
  return v5;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
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

    v8(6, "%c[%{public}s %{public}s]:%i ", v12, ClassName, Name, 132);
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
    v48 = v15;
    v49 = 2082;
    v50 = object_getClassName(self);
    v51 = 2082;
    v52 = sel_getName(a2);
    v53 = 1024;
    v54 = 132;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  objc_initWeak(&location, connectionCopy);
  if (self)
  {
    v16 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFWalletPresentationInterface];
  }

  else
  {
    v16 = 0;
  }

  [connectionCopy setExportedInterface:v16];

  [connectionCopy setExportedObject:self];
  [connectionCopy setRemoteObjectInterface:0];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100046214;
  v44[3] = &unk_1003161B0;
  objc_copyWeak(v45, &location);
  v44[4] = self;
  v45[1] = a2;
  [connectionCopy setInvalidationHandler:v44];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100046470;
  v42[3] = &unk_1003161B0;
  objc_copyWeak(v43, &location);
  v42[4] = self;
  v43[1] = a2;
  [connectionCopy setInterruptionHandler:v42];
  sub_1001E4C54(connectionCopy);
  v17 = sub_1001E4F9C(connectionCopy);
  if (v17)
  {
    [connectionCopy resume];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v19 = v18;
      v20 = object_getClass(self);
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      v41 = v21;
      v22 = object_getClassName(self);
      v23 = sel_getName(a2);
      processIdentifier = [connectionCopy processIdentifier];
      v25 = sub_1001E4B84(connectionCopy);
      v26 = v25;
      if (v25)
      {
        v27 = *(v25 + 8);
      }

      else
      {
        v27 = 0;
      }

      v28 = v27;
      v19(3, "%c[%{public}s %{public}s]:%i PID %d (%{public}@) does not entitle to access service", v41, v22, v23, 164, processIdentifier, v28);
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
      processIdentifier2 = [connectionCopy processIdentifier];
      v35 = sub_1001E4B84(connectionCopy);
      v36 = v35;
      if (v35)
      {
        v37 = *(v35 + 8);
      }

      else
      {
        v37 = 0;
      }

      v38 = v37;
      *buf = 67110402;
      v48 = v31;
      v49 = 2082;
      v50 = v32;
      v51 = 2082;
      v52 = v33;
      v53 = 1024;
      v54 = 164;
      v55 = 1024;
      v56 = processIdentifier2;
      v57 = 2114;
      v58 = v38;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i PID %d (%{public}@) does not entitle to access service", buf, 0x32u);
    }
  }

  objc_destroyWeak(v43);
  objc_destroyWeak(v45);
  objc_destroyWeak(&location);

  return v17;
}

- (void)presentWithUserInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  infoCopy = info;
  v9 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v11 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    selfCopy = self;
    v17 = a2;
    v18 = completionCopy;
    v19 = Name;
    sub_1001E4B84(v9);
    v44 = infoCopy;
    v21 = v20 = v9;
    v22 = [v21 debugDescription];
    v43 = v19;
    completionCopy = v18;
    a2 = v17;
    self = selfCopy;
    v23 = 45;
    if (isMetaClass)
    {
      v23 = 43;
    }

    v11(6, "%c[%{public}s %{public}s]:%i %@", v23, ClassName, v43, 181, v22);

    v9 = v20;
    infoCopy = v44;
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
    v29 = sub_1001E4B84(v9);
    v30 = [v29 debugDescription];
    *buf = 67110146;
    *v46 = v26;
    *&v46[4] = 2082;
    *&v46[6] = v27;
    *&v46[14] = 2082;
    *&v46[16] = v28;
    v47 = 1024;
    v48 = 181;
    v49 = 2112;
    v50 = v30;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %@", buf, 0x2Cu);
  }

  v31 = +[NSDate now];
  v32 = NFSharedSignpostLog();
  if (os_signpost_enabled(v32))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "[XPC]presentWithCompletion:", &unk_1002E8B7A, buf, 2u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  if (selfCopy2)
  {
    walletPresentationEventPublisher = selfCopy2->_walletPresentationEventPublisher;
  }

  else
  {
    walletPresentationEventPublisher = 0;
  }

  sub_100048DC4(walletPresentationEventPublisher);
  objc_sync_exit(selfCopy2);

  v35 = NFSharedSignpostLog();
  if (os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "[XPC]presentWithCompletion:", &unk_1002E8B7A, buf, 2u);
  }

  v36 = [infoCopy NF_numberForKey:@"SignpostBeginTime"];

  if (v36)
  {
    v37 = NFSharedSignpostLog();
    if (os_signpost_enabled(v37))
    {
      unsignedLongLongValue = [v36 unsignedLongLongValue];
      *buf = 134349056;
      *v46 = unsignedLongLongValue;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "WalletPresentTotalDuration", "%{public, signpost.description:begin_time}llu", buf, 0xCu);
    }
  }

  [v31 timeIntervalSinceNow];
  v40 = v39;
  v41 = NFSharedLogGetLogger();
  v42 = v41;
  if (v40 >= -0.5)
  {
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *v46 = "[NFWalletPresentationService presentWithUserInfo:completion:]";
      *&v46[8] = 2050;
      *&v46[10] = -v40;
      _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "%s signalPresentation interval=%{public}f", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
  {
    *buf = 134349056;
    *v46 = 0x3FE0000000000000;
    _os_log_fault_impl(&_mh_execute_header, v42, OS_LOG_TYPE_FAULT, "Exceed %{public}f time limit", buf, 0xCu);
  }

  completionCopy[2](completionCopy);
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"walletDomain"])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___NFWalletPresentationService;
    v5 = objc_msgSendSuper2(&v7, "automaticallyNotifiesObserversForKey:", keyCopy);
  }

  return v5;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if (off_10035B2A0 == context)
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
      v16 = 45;
      if (isMetaClass)
      {
        v16 = 43;
      }

      v13(6, "%c[%{public}s %{public}s]:%i change=%@", v16, ClassName, Name, 223, changeCopy);
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
      v24 = v19;
      v25 = 2082;
      v26 = object_getClassName(self);
      v27 = 2082;
      v28 = sel_getName(a2);
      v29 = 1024;
      v30 = 223;
      v31 = 2112;
      v32 = changeCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i change=%@", buf, 0x2Cu);
    }

    [(NFWalletPresentationService *)self willChangeValueForKey:@"walletDomain"];
    [(NFWalletPresentationService *)self didChangeValueForKey:@"walletDomain"];
  }

  else
  {
    v22.receiver = self;
    v22.super_class = NFWalletPresentationService;
    [(NFWalletPresentationService *)&v22 observeValueForKeyPath:path ofObject:object change:changeCopy context:context];
  }
}

- (unint64_t)walletDomain
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    walletPresentationEventPublisher = selfCopy->_walletPresentationEventPublisher;
  }

  else
  {
    walletPresentationEventPublisher = 0;
  }

  walletDomain = [(NFWalletPresentationEventPublisher *)walletPresentationEventPublisher walletDomain];
  objc_sync_exit(selfCopy);

  return walletDomain;
}

- (id)walletBundleIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    walletPresentationEventPublisher = selfCopy->_walletPresentationEventPublisher;
  }

  else
  {
    walletPresentationEventPublisher = 0;
  }

  v4 = sub_100048C40(walletPresentationEventPublisher);
  objc_sync_exit(selfCopy);

  return v4;
}

- (void)updateNFCDefaultForCA
{
  obj = self;
  objc_sync_enter(obj);
  walletPresentationEventPublisher = obj;
  if (obj)
  {
    walletPresentationEventPublisher = obj->_walletPresentationEventPublisher;
  }

  sub_100048974(walletPresentationEventPublisher);
  objc_sync_exit(obj);
}

- (BOOL)notifyFieldDetectPresentmentWithFieldNotification:(id)notification
{
  notificationCopy = notification;
  if ([(NFWalletPresentationService *)self _shouldSuppressNotify])
  {
    v5 = 0;
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy)
    {
      walletPresentationEventPublisher = selfCopy->_walletPresentationEventPublisher;
    }

    else
    {
      walletPresentationEventPublisher = 0;
    }

    v5 = sub_10004A14C(walletPresentationEventPublisher, notificationCopy);
    objc_sync_exit(selfCopy);
  }

  return v5;
}

- (BOOL)forceNotifyFieldDetectPresentmentWithFieldNotification:(id)notification walletDomain:(unint64_t)domain
{
  notificationCopy = notification;
  if ([(NFWalletPresentationService *)self _shouldSuppressNotify])
  {
    v7 = 0;
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy)
    {
      walletPresentationEventPublisher = selfCopy->_walletPresentationEventPublisher;
    }

    else
    {
      walletPresentationEventPublisher = 0;
    }

    v7 = sub_10004A9E4(walletPresentationEventPublisher, notificationCopy, domain);
    objc_sync_exit(selfCopy);
  }

  return v7;
}

- (BOOL)assert:(unint64_t)assert requestor:(id)requestor isFirst:(BOOL *)first updatedVal:(int64_t *)val
{
  v37 = 0;
  v38 = 0;
  selfCopy = self;
  requestorCopy = requestor;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    v12 = selfCopy->_walletPresentationEventPublisher;
    referenceCounter = selfCopy->_referenceCounter;
  }

  else
  {
    v12 = 0;
    referenceCounter = 0;
  }

  v14 = sub_100147A68(referenceCounter, assert, &v38);
  if (selfCopy)
  {
    v15 = selfCopy->_referenceCounter;
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_100147314(v15, assert, requestorCopy, &v37);

  objc_sync_exit(selfCopy);
  if (val)
  {
    *val = v37;
  }

  v17 = v14 ^ 1;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v19 = Logger;
    Class = object_getClass(selfCopy);
    isMetaClass = class_isMetaClass(Class);
    v22 = v14;
    v23 = v16;
    v24 = v12;
    firstCopy = first;
    ClassName = object_getClassName(selfCopy);
    Name = sel_getName(a2);
    v28 = 43;
    if (!isMetaClass)
    {
      v28 = 45;
    }

    v35 = ClassName;
    first = firstCopy;
    v12 = v24;
    v16 = v23;
    LOBYTE(v14) = v22;
    v19(6, "%c[%{public}s %{public}s]:%i (type=%lu) isFirstAssert=%d, currentVal=%ld, updatedVal=%ld", v28, v35, Name, 321, assert, v17, v38, v37);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v29 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
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

    v32 = object_getClassName(selfCopy);
    v33 = sel_getName(a2);
    *buf = 67110914;
    v40 = v31;
    v41 = 2082;
    v42 = v32;
    v43 = 2082;
    v44 = v33;
    v45 = 1024;
    v46 = 321;
    v47 = 2048;
    assertCopy = assert;
    v49 = 1024;
    v50 = v17;
    v51 = 2048;
    v52 = v38;
    v53 = 2048;
    v54 = v37;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i (type=%lu) isFirstAssert=%d, currentVal=%ld, updatedVal=%ld", buf, 0x46u);
  }

  if (!(v14 & 1 | ((v16 & 1) == 0)))
  {
    switch(assert)
    {
      case 3uLL:
        sub_10004A0A0(v12, 1);
        break;
      case 1uLL:
        sub_100049D38(v12);
        break;
      case 0uLL:
        sub_100007F80(v12);
        break;
    }
  }

  if (first)
  {
    *first = v17;
  }

  return v16;
}

- (BOOL)deassert:(unint64_t)deassert requestor:(id)requestor isLast:(BOOL *)last updatedVal:(int64_t *)val
{
  v47 = 0;
  selfCopy = self;
  requestorCopy = requestor;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    v13 = selfCopy->_walletPresentationEventPublisher;
    referenceCounter = selfCopy->_referenceCounter;
  }

  else
  {
    v13 = 0;
    referenceCounter = 0;
  }

  v15 = sub_100147588(referenceCounter, deassert, requestorCopy, &v47);

  if (v15)
  {
    if (selfCopy)
    {
      v16 = selfCopy->_referenceCounter;
    }

    else
    {
      v16 = 0;
    }

    sel = a2;
    v17 = sub_100147A68(v16, deassert, 0);
    objc_sync_exit(selfCopy);

    if (val)
    {
      *val = v47;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v19 = Logger;
      Class = object_getClass(selfCopy);
      v21 = v13;
      lastCopy = last;
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(selfCopy);
      Name = sel_getName(sel);
      v26 = !isMetaClass;
      last = lastCopy;
      v13 = v21;
      v27 = 43;
      if (v26)
      {
        v27 = 45;
      }

      v19(6, "%c[%{public}s %{public}s]:%i (type=%lu) lastAssertion=%d, updatedVal=%ld", v27, ClassName, Name, 375, deassert, v17 ^ 1, v47);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = object_getClass(selfCopy);
      if (class_isMetaClass(v29))
      {
        v30 = 43;
      }

      else
      {
        v30 = 45;
      }

      v31 = object_getClassName(selfCopy);
      v32 = sel_getName(sel);
      *buf = 67110658;
      v49 = v30;
      v50 = 2082;
      v51 = v31;
      v52 = 2082;
      v53 = v32;
      v54 = 1024;
      v55 = 375;
      v56 = 2048;
      deassertCopy2 = deassert;
      v58 = 1024;
      v59 = v17 ^ 1;
      v60 = 2048;
      v61 = v47;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i (type=%lu) lastAssertion=%d, updatedVal=%ld", buf, 0x3Cu);
    }

    if ((v17 & 1) == 0)
    {
      if (last)
      {
        *last = 1;
      }

      switch(deassert)
      {
        case 3uLL:
          sub_10004A0A0(v13, 0);
          break;
        case 1uLL:
          sub_100049DEC(v13);
          break;
        case 0uLL:
          sub_100049EA0(v13);
          break;
      }
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v33 = NFLogGetLogger();
    if (v33)
    {
      v34 = v33;
      v35 = object_getClass(selfCopy);
      v36 = class_isMetaClass(v35);
      v44 = object_getClassName(selfCopy);
      v45 = sel_getName(a2);
      v37 = 45;
      if (v36)
      {
        v37 = 43;
      }

      v34(3, "%c[%{public}s %{public}s]:%i Missing assertion (%lu)", v37, v44, v45, 365, deassert);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v38 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = object_getClass(selfCopy);
      if (class_isMetaClass(v39))
      {
        v40 = 43;
      }

      else
      {
        v40 = 45;
      }

      v41 = object_getClassName(selfCopy);
      v42 = sel_getName(a2);
      *buf = 67110146;
      v49 = v40;
      v50 = 2082;
      v51 = v41;
      v52 = 2082;
      v53 = v42;
      v54 = 1024;
      v55 = 365;
      v56 = 2048;
      deassertCopy2 = deassert;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing assertion (%lu)", buf, 0x2Cu);
    }

    objc_sync_exit(selfCopy);
  }

  return v15;
}

- (BOOL)isAsserted:(unint64_t)asserted
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    referenceCounter = selfCopy->_referenceCounter;
  }

  else
  {
    referenceCounter = 0;
  }

  v6 = sub_100147A68(referenceCounter, asserted, 0);
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)currentAssertionCounts:(int64_t *)counts
{
  if (counts)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    for (i = 0; i != 4; ++i)
    {
      v7 = 0;
      if (selfCopy)
      {
        referenceCounter = selfCopy->_referenceCounter;
      }

      else
      {
        referenceCounter = 0;
      }

      sub_100147A68(referenceCounter, i, &v7);
      counts[i] = v7;
    }

    objc_sync_exit(selfCopy);
  }
}

- (id)dumpState
{
  v3 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    walletPresentationEventPublisher = selfCopy->_walletPresentationEventPublisher;
  }

  else
  {
    walletPresentationEventPublisher = 0;
  }

  v6 = walletPresentationEventPublisher;
  objc_sync_exit(selfCopy);

  if (selfCopy)
  {
    referenceCounter = selfCopy->_referenceCounter;
  }

  else
  {
    referenceCounter = 0;
  }

  v8 = sub_100147C78(referenceCounter);
  [v3 setObject:v8 forKeyedSubscript:@"AssertRefCounters"];

  v9 = sub_10004B24C(v6);

  [v3 setObject:v9 forKeyedSubscript:@"EventPublisher"];

  return v3;
}

@end