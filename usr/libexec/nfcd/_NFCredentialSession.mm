@interface _NFCredentialSession
+ (id)validateEntitlements:(id)entitlements;
- (BOOL)_validateCAPDU:(id)u isDFSelectCommand:(BOOL *)command outError:(id *)error;
- (BOOL)suspendWithInfo:(id)info;
- (BOOL)willStartSession;
- (id)_startCardEmulationWithApplet:(id)applet externalAuth:(id)auth ceType:(unsigned int)type;
- (id)_startWiredModeWithExternalAuth:(id)auth applets:(id)applets selectOnStart:(id)start;
- (void)_setupFirstFieldNotificationTimer:(unint64_t)timer;
- (void)cleanup;
- (void)deleteApplets:(id)applets completion:(id)completion;
- (void)didStartSession:(id)session;
- (void)handleSecureElementTransactionData:(id)data appletIdentifier:(id)identifier;
- (void)handleTimerExpiredEvent:(id)event;
- (void)listAppletsAndRefreshCache:(BOOL)cache completion:(id)completion;
- (void)queryExtraInfoForApplets:(id)applets completion:(id)completion;
- (void)requestApplets:(id)applets selectOnStart:(id)start AIDAllowList:(id)list externalAuth:(id)auth mode:(unint64_t)mode ceType:(unsigned int)type completion:(id)completion;
- (void)signChallenge:(id)challenge completion:(id)completion;
- (void)transceive:(id)transceive completion:(id)completion;
@end

@implementation _NFCredentialSession

- (BOOL)_validateCAPDU:(id)u isDFSelectCommand:(BOOL *)command outError:(id *)error
{
  uCopy = u;
  v10 = [[NFCommandAPDU alloc] initWithData:uCopy];
  v11 = v10;
  if (command)
  {
    *command = 0;
  }

  if (!v10)
  {
    if (error)
    {
      v14 = [NSError alloc];
      payload = [NSString stringWithUTF8String:"nfcd"];
      v108[0] = NSLocalizedDescriptionKey;
      nF_asHexString5 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v109[0] = nF_asHexString5;
      v109[1] = &off_100330558;
      v108[1] = @"Line";
      v108[2] = @"Method";
      v17 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v109[2] = v17;
      v108[3] = NSDebugDescriptionErrorKey;
      v18 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 64];
      v109[3] = v18;
      v19 = [NSDictionary dictionaryWithObjects:v109 forKeys:v108 count:4];
      v20 = v14;
      v21 = payload;
      v22 = 10;
LABEL_71:
      *error = [v20 initWithDomain:v21 code:v22 userInfo:v19];
      goto LABEL_72;
    }

    goto LABEL_75;
  }

  if (([v10 clss] & 0x80) != 0)
  {
    goto LABEL_74;
  }

  if ([v11 instruction] != 164)
  {
    goto LABEL_67;
  }

  if ([v11 p1] != 4)
  {
LABEL_74:
    LOBYTE(error) = 1;
    goto LABEL_75;
  }

  v12 = [v11 clss] & 0xC0;
  clss = [v11 clss];
  if (v12 == 64)
  {
    if ((clss & 0x20) == 0)
    {
      goto LABEL_25;
    }

LABEL_14:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v24 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      nF_asHexString = [uCopy NF_asHexString];
      v30 = 45;
      if (isMetaClass)
      {
        v30 = 43;
      }

      v24(3, "%c[%{public}s %{public}s]:%i Select command not supported: %{public}@", v30, ClassName, Name, 98, nF_asHexString);
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
      nF_asHexString2 = [uCopy NF_asHexString];
      *buf = 67110146;
      v99 = v33;
      v100 = 2082;
      v101 = v34;
      v102 = 2082;
      v103 = v35;
      v104 = 1024;
      v105 = 98;
      v106 = 2114;
      v107 = nF_asHexString2;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Select command not supported: %{public}@", buf, 0x2Cu);
    }

    if (!error)
    {
      goto LABEL_75;
    }

    v37 = [NSError alloc];
    payload = [NSString stringWithUTF8String:"nfcd"];
    v96[0] = NSLocalizedDescriptionKey;
    nF_asHexString5 = [NSString stringWithUTF8String:"Security Violation"];
    v97[0] = nF_asHexString5;
    v97[1] = &off_100330570;
    v96[1] = @"Line";
    v96[2] = @"Method";
    v17 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v97[2] = v17;
    v96[3] = NSDebugDescriptionErrorKey;
    v18 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 100];
    v97[3] = v18;
    v38 = v97;
    v39 = v96;
LABEL_70:
    v19 = [NSDictionary dictionaryWithObjects:v38 forKeys:v39 count:4];
    v20 = v37;
    v21 = payload;
    v22 = 8;
    goto LABEL_71;
  }

  if (clss <= 0x3F && ([v11 clss] & 0xC) != 0)
  {
    goto LABEL_14;
  }

LABEL_25:
  if (command)
  {
    *command = 1;
  }

  if (![v11 payloadLength])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v45 = NFLogGetLogger();
    if (v45)
    {
      v46 = v45;
      v47 = object_getClass(self);
      v48 = class_isMetaClass(v47);
      v49 = object_getClassName(self);
      v50 = sel_getName(a2);
      nF_asHexString3 = [uCopy NF_asHexString];
      v52 = 45;
      if (v48)
      {
        v52 = 43;
      }

      v46(3, "%c[%{public}s %{public}s]:%i Select command not supported: %@", v52, v49, v50, 108, nF_asHexString3);
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
      nF_asHexString4 = [uCopy NF_asHexString];
      *buf = 67110146;
      v99 = v55;
      v100 = 2082;
      v101 = v56;
      v102 = 2082;
      v103 = v57;
      v104 = 1024;
      v105 = 108;
      v106 = 2112;
      v107 = nF_asHexString4;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Select command not supported: %@", buf, 0x2Cu);
    }

    if (!error)
    {
      goto LABEL_75;
    }

    v37 = [NSError alloc];
    payload = [NSString stringWithUTF8String:"nfcd"];
    v94[0] = NSLocalizedDescriptionKey;
    nF_asHexString5 = [NSString stringWithUTF8String:"Security Violation"];
    v95[0] = nF_asHexString5;
    v95[1] = &off_100330588;
    v94[1] = @"Line";
    v94[2] = @"Method";
    v17 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v95[2] = v17;
    v94[3] = NSDebugDescriptionErrorKey;
    v18 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 109];
    v95[3] = v18;
    v38 = v95;
    v39 = v94;
    goto LABEL_70;
  }

  payload = [v11 payload];
  nF_asHexString5 = [payload NF_asHexString];
  allowedAIDsListInWiredMode = [(_NFCredentialSession *)self allowedAIDsListInWiredMode];
  v41 = [allowedAIDsListInWiredMode member:payload];

  allowedAIDsListInWiredMode2 = [(_NFCredentialSession *)self allowedAIDsListInWiredMode];
  v43 = [allowedAIDsListInWiredMode2 count];

  if (!v43 || !v41)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v59 = NFLogGetLogger();
    if (v59)
    {
      v60 = v59;
      v61 = object_getClass(self);
      v62 = class_isMetaClass(v61);
      v63 = object_getClassName(self);
      v83 = sel_getName(a2);
      v64 = 45;
      if (v62)
      {
        v64 = 43;
      }

      v60(3, "%c[%{public}s %{public}s]:%i AID=%@ selection is not allowed", v64, v63, v83, 119, nF_asHexString5);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v65 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v66 = object_getClass(self);
      if (class_isMetaClass(v66))
      {
        v67 = 43;
      }

      else
      {
        v67 = 45;
      }

      v68 = object_getClassName(self);
      v69 = sel_getName(a2);
      *buf = 67110146;
      v99 = v67;
      v100 = 2082;
      v101 = v68;
      v102 = 2082;
      v103 = v69;
      v104 = 1024;
      v105 = 119;
      v106 = 2112;
      v107 = nF_asHexString5;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i AID=%@ selection is not allowed", buf, 0x2Cu);
    }

    if (!error)
    {
      goto LABEL_73;
    }

    v85 = [NSError alloc];
    v17 = [NSString stringWithUTF8String:"nfcd"];
    v92[0] = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithUTF8String:"Security Violation"];
    v93[0] = v18;
    v93[1] = &off_1003305A0;
    v92[1] = @"Line";
    v92[2] = @"Method";
    v19 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v93[2] = v19;
    v92[3] = NSDebugDescriptionErrorKey;
    v70 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 121];
    v93[3] = v70;
    v71 = [NSDictionary dictionaryWithObjects:v93 forKeys:v92 count:4];
    *error = [v85 initWithDomain:v17 code:8 userInfo:v71];

LABEL_72:
LABEL_73:

    LOBYTE(error) = 0;
    goto LABEL_75;
  }

  if (nF_asHexString5)
  {
    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_100074B0C;
    v88[3] = &unk_100316F30;
    v88[4] = self;
    v89 = nF_asHexString5;
    os_unfair_lock_lock(&self->_requestedAppletsLock);
    v44 = sub_100074B0C(v88);
    os_unfair_lock_unlock(&self->_requestedAppletsLock);
  }

  else
  {
    v44 = 0;
  }

  if (([v44 BOOLValue] & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v72 = NFLogGetLogger();
    if (v72)
    {
      v73 = v72;
      v74 = object_getClass(self);
      v75 = class_isMetaClass(v74);
      v86 = object_getClassName(self);
      v84 = sel_getName(a2);
      v76 = 45;
      if (v75)
      {
        v76 = 43;
      }

      v73(6, "%c[%{public}s %{public}s]:%i Non-applet=%{public}@ selection", v76, v86, v84, 134, nF_asHexString5);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v77 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      v78 = object_getClass(self);
      if (class_isMetaClass(v78))
      {
        v79 = 43;
      }

      else
      {
        v79 = 45;
      }

      v87 = v79;
      v80 = object_getClassName(self);
      v81 = sel_getName(a2);
      *buf = 67110146;
      v99 = v87;
      v100 = 2082;
      v101 = v80;
      v102 = 2082;
      v103 = v81;
      v104 = 1024;
      v105 = 134;
      v106 = 2114;
      v107 = nF_asHexString5;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Non-applet=%{public}@ selection", buf, 0x2Cu);
    }
  }

  [(_NFCredentialSession *)self setAppletSelectedInWiredMode:1];

LABEL_67:
  if ([v11 instruction] != 112)
  {
    goto LABEL_74;
  }

  if (error)
  {
    v37 = [NSError alloc];
    payload = [NSString stringWithUTF8String:"nfcd"];
    v90[0] = NSLocalizedDescriptionKey;
    nF_asHexString5 = [NSString stringWithUTF8String:"Security Violation"];
    v91[0] = nF_asHexString5;
    v91[1] = &off_1003305E8;
    v90[1] = @"Line";
    v90[2] = @"Method";
    v17 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v91[2] = v17;
    v90[3] = NSDebugDescriptionErrorKey;
    v18 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 141];
    v91[3] = v18;
    v38 = v91;
    v39 = v90;
    goto LABEL_70;
  }

LABEL_75:

  return error;
}

+ (id)validateEntitlements:(id)entitlements
{
  if ([entitlements seCredentialManagerAccess])
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

      v7(3, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring credential manager access", v11, ClassName, Name, 152);
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
      v32 = 152;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring credential manager access", buf, 0x22u);
    }

    v15 = [NSError alloc];
    v16 = [NSString stringWithUTF8String:"nfcd"];
    v23[0] = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithUTF8String:"Not entitled"];
    v24[0] = v17;
    v24[1] = &off_100330600;
    v23[1] = @"Line";
    v23[2] = @"Method";
    v18 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v24[2] = v18;
    v23[3] = NSDebugDescriptionErrorKey;
    v19 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 153];
    v24[3] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
    v5 = [v15 initWithDomain:v16 code:32 userInfo:v20];
  }

  return v5;
}

- (BOOL)willStartSession
{
  sub_10026449C();
  v4.receiver = self;
  v4.super_class = _NFCredentialSession;
  return [(_NFSession *)&v4 willStartSession];
}

- (void)didStartSession:(id)session
{
  sessionCopy = session;
  v5 = NFSharedSignpostLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFCredentialSessionStarted", &unk_1002E8B7A, buf, 2u);
  }

  v10.receiver = self;
  v10.super_class = _NFCredentialSession;
  [(_NFXPCSession *)&v10 didStartSession:sessionCopy];
  v6 = +[_NFHardwareManager sharedHardwareManager];
  secureElementWrapper = [v6 secureElementWrapper];
  secureElementWrapper = self->_secureElementWrapper;
  self->_secureElementWrapper = secureElementWrapper;

  remoteObject = [(_NFXPCSession *)self remoteObject];
  [remoteObject didStartSession:sessionCopy];
}

- (BOOL)suspendWithInfo:(id)info
{
  infoCopy = info;
  v5 = NFSharedSignpostLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFCredentialSessionSuspended", &unk_1002E8B7A, buf, 2u);
  }

  v11.receiver = self;
  v11.super_class = _NFCredentialSession;
  v6 = [(_NFXPCSession *)&v11 suspendWithInfo:infoCopy];

  if (v6)
  {
    firstFieldNotificationTimer = [(_NFCredentialSession *)self firstFieldNotificationTimer];
    [firstFieldNotificationTimer stopTimer];

    if (self && self->_mode == 2)
    {
      [(_NFCredentialSession *)self requestApplets:0 selectOnStart:0 AIDAllowList:0 externalAuth:0 mode:0 ceType:0 completion:&stru_100316F50];
    }

    v8 = sub_1001AE20C();
    sub_1001AEDB0(v8, v9);
  }

  return v6;
}

- (void)_setupFirstFieldNotificationTimer:(unint64_t)timer
{
  [(_NFCredentialSession *)self setFirstFieldNotification:0];
  firstFieldNotificationTimer = [(_NFCredentialSession *)self firstFieldNotificationTimer];
  [firstFieldNotificationTimer stopTimer];

  if (timer == 2)
  {
    firstFieldNotificationTimer2 = [(_NFCredentialSession *)self firstFieldNotificationTimer];

    if (!firstFieldNotificationTimer2)
    {
      objc_initWeak(&location, self);
      v7 = [NFTimer alloc];
      objc_copyWeak(&v12, &location);
      v8 = [(_NFSession *)self workQueue:_NSConcreteStackBlock];
      v9 = [v7 initWithCallback:&v11 queue:v8];
      [(_NFCredentialSession *)self setFirstFieldNotificationTimer:v9];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    firstFieldNotificationTimer3 = [(_NFCredentialSession *)self firstFieldNotificationTimer];
    [firstFieldNotificationTimer3 startTimer:0.3];
  }
}

- (id)_startCardEmulationWithApplet:(id)applet externalAuth:(id)auth ceType:(unsigned int)type
{
  typeCopy = type;
  appletCopy = applet;
  authCopy = auth;
  v11 = sub_10004BF60(NFRoutingConfig, 0);
  v56 = sub_10004C050(NFRoutingConfig, 0, typeCopy & 7);
  v12 = +[_NFHardwareManager sharedHardwareManager];
  v55 = v11;
  v13 = [v12 setRoutingConfig:v11];

  v54 = authCopy;
  if (v13)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v68 = v13;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Routing failure: %@", buf, 0xCu);
    }

    v14 = [NSError alloc];
    v15 = [NSString stringWithUTF8String:"nfcd"];
    code = [v13 code];
    v65[0] = NSLocalizedDescriptionKey;
    v17 = appletCopy;
    if ([v13 code] > 75)
    {
      code2 = 76;
    }

    else
    {
      code2 = [v13 code];
    }

    v23 = [NSString stringWithUTF8String:off_100316CC0[code2]];
    v66[0] = v23;
    v66[1] = v13;
    v65[1] = NSUnderlyingErrorKey;
    v65[2] = @"Line";
    v66[2] = &off_100330618;
    v65[3] = @"Method";
    v24 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v66[3] = v24;
    v65[4] = NSDebugDescriptionErrorKey;
    v25 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 255];
    v66[4] = v25;
    v26 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:5];
    v27 = [v14 initWithDomain:v15 code:code userInfo:v26];

    goto LABEL_25;
  }

  secureElementWrapper = [(_NFCredentialSession *)self secureElementWrapper];
  v13 = sub_1002562FC(secureElementWrapper);

  if (v13)
  {
    v20 = [NSError alloc];
    v15 = [NSString stringWithUTF8String:"nfcd"];
    code3 = [v13 code];
    v63[0] = NSLocalizedDescriptionKey;
    v17 = appletCopy;
    if ([v13 code] > 75)
    {
      code4 = 76;
    }

    else
    {
      code4 = [v13 code];
    }

    v23 = [NSString stringWithUTF8String:off_100316CC0[code4]];
    v64[0] = v23;
    v64[1] = v13;
    v63[1] = NSUnderlyingErrorKey;
    v63[2] = @"Line";
    v64[2] = &off_100330630;
    v63[3] = @"Method";
    v24 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v64[3] = v24;
    v63[4] = NSDebugDescriptionErrorKey;
    v33 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 260];
    v64[4] = v33;
    v34 = v64;
    v35 = v63;
LABEL_24:
    v48 = [NSDictionary dictionaryWithObjects:v34 forKeys:v35 count:5];
    v27 = [v20 initWithDomain:v15 code:code3 userInfo:v48];

LABEL_25:
    appletCopy = v17;
    authCopy = v54;
    goto LABEL_26;
  }

  secureElementWrapper2 = [(_NFCredentialSession *)self secureElementWrapper];
  v29 = [NSSet setWithObject:appletCopy];
  v30 = sub_10015CB40(secureElementWrapper2, v29);

  secureElementWrapper3 = [(_NFCredentialSession *)self secureElementWrapper];
  v13 = sub_100254768(secureElementWrapper3, appletCopy);

  if (v13)
  {
    v20 = [NSError alloc];
    v15 = [NSString stringWithUTF8String:"nfcd"];
    code3 = [v13 code];
    v61[0] = NSLocalizedDescriptionKey;
    v17 = appletCopy;
    if ([v13 code] > 75)
    {
      code5 = 76;
    }

    else
    {
      code5 = [v13 code];
    }

    v23 = [NSString stringWithUTF8String:off_100316CC0[code5]];
    v62[0] = v23;
    v62[1] = v13;
    v61[1] = NSUnderlyingErrorKey;
    v61[2] = @"Line";
    v62[2] = &off_100330648;
    v61[3] = @"Method";
    v24 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v62[3] = v24;
    v61[4] = NSDebugDescriptionErrorKey;
    v33 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 267];
    v62[4] = v33;
    v34 = v62;
    v35 = v61;
    goto LABEL_24;
  }

  if (authCopy)
  {
    secureElementWrapper4 = [(_NFCredentialSession *)self secureElementWrapper];
    v37 = [(_NFSession *)self uid];
    identifierAsData = [appletCopy identifierAsData];
    v39 = sub_1001F5428(secureElementWrapper4, authCopy, v37, identifierAsData, 0, 0);

    if (v39)
    {
      v40 = [NSError alloc];
      v41 = [NSString stringWithUTF8String:"nfcd"];
      v42 = v39;
      v59[0] = NSLocalizedDescriptionKey;
      if (v39 >= 0x4C)
      {
        v43 = 76;
      }

      else
      {
        v43 = v39;
      }

      v44 = [NSString stringWithUTF8String:off_100316CC0[v43]];
      v60[0] = v44;
      v60[1] = &off_100330660;
      v59[1] = @"Line";
      v59[2] = @"Method";
      v45 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v60[2] = v45;
      v59[3] = NSDebugDescriptionErrorKey;
      v46 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 277];
      v60[3] = v46;
      v47 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:4];
      v27 = [v40 initWithDomain:v41 code:v42 userInfo:v47];

      goto LABEL_26;
    }
  }

  v50 = +[_NFHardwareManager sharedHardwareManager];
  v13 = [v50 setRoutingConfig:v56];

  if (v13)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v68 = v13;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Routing failure: %@", buf, 0xCu);
    }

    v20 = [NSError alloc];
    v15 = [NSString stringWithUTF8String:"nfcd"];
    code3 = [v13 code];
    v57[0] = NSLocalizedDescriptionKey;
    v17 = appletCopy;
    if ([v13 code] > 75)
    {
      code6 = 76;
    }

    else
    {
      code6 = [v13 code];
    }

    v23 = [NSString stringWithUTF8String:off_100316CC0[code6]];
    v58[0] = v23;
    v58[1] = v13;
    v57[1] = NSUnderlyingErrorKey;
    v57[2] = @"Line";
    v58[2] = &off_100330678;
    v57[3] = @"Method";
    v24 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v58[3] = v24;
    v57[4] = NSDebugDescriptionErrorKey;
    v33 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 284];
    v58[4] = v33;
    v34 = v58;
    v35 = v57;
    goto LABEL_24;
  }

  v52 = sub_1001AE20C();
  sub_1001AF828(v52, v53);

  v27 = 0;
LABEL_26:

  return v27;
}

- (id)_startWiredModeWithExternalAuth:(id)auth applets:(id)applets selectOnStart:(id)start
{
  authCopy = auth;
  appletsCopy = applets;
  startCopy = start;
  v12 = sub_10004BF60(NFRoutingConfig, 0);
  v13 = +[_NFHardwareManager sharedHardwareManager];
  v14 = [v13 setRoutingConfig:v12];

  v51 = startCopy;
  if (!v14)
  {
    secureElementWrapper = [(_NFCredentialSession *)self secureElementWrapper];
    v20 = sub_1002562FC(secureElementWrapper);

    v21 = [appletsCopy count];
    secureElementWrapper2 = [(_NFCredentialSession *)self secureElementWrapper];
    v23 = secureElementWrapper2;
    if (v21)
    {
      v24 = [NSSet setWithArray:appletsCopy];
      v25 = sub_10015CB40(v23, v24);

      identifierAsData = [startCopy identifierAsData];
      if (!identifierAsData)
      {
        identifierAsData = [[NSData alloc] initWithBytes:"FACTORYTESTAPP" length:14];
      }

      secureElementWrapper3 = [(_NFCredentialSession *)self secureElementWrapper];
      v52 = 0;
      v27 = sub_1001595DC(secureElementWrapper3, identifierAsData, &v52);
      v14 = v52;

      if ((v27 & 1) == 0)
      {
        v49 = [NSError alloc];
        v29 = [NSString stringWithUTF8String:"nfcd"];
        code = [v14 code];
        v55[0] = NSLocalizedDescriptionKey;
        v50 = authCopy;
        if ([v14 code] > 75)
        {
          code2 = 76;
        }

        else
        {
          code2 = [v14 code];
        }

        v30 = [NSString stringWithUTF8String:off_100316CC0[code2]];
        v56[0] = v30;
        v56[1] = v14;
        v55[1] = NSUnderlyingErrorKey;
        v55[2] = @"Line";
        v56[2] = &off_1003306A8;
        v55[3] = @"Method";
        v31 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v56[3] = v31;
        v55[4] = NSDebugDescriptionErrorKey;
        v32 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 316];
        v56[4] = v32;
        v48 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:5];
        v28 = [v49 initWithDomain:v29 code:code userInfo:v48];

        goto LABEL_15;
      }

      [(_NFCredentialSession *)self setDefaultWiredModeApplet:identifierAsData];

      if (!authCopy)
      {
LABEL_11:
        v28 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v37 = sub_10015D3EC(secureElementWrapper2);

      v14 = 0;
      if (!authCopy)
      {
        goto LABEL_11;
      }
    }

    secureElementWrapper4 = [(_NFCredentialSession *)self secureElementWrapper];
    v39 = [(_NFSession *)self uid];
    firstObject = [appletsCopy firstObject];
    identifierAsData2 = [firstObject identifierAsData];
    v42 = sub_1001F5428(secureElementWrapper4, authCopy, v39, identifierAsData2, 0, 0);

    if (!v42)
    {
      v28 = 0;
      goto LABEL_16;
    }

    v50 = authCopy;
    v43 = [NSError alloc];
    identifierAsData = [NSString stringWithUTF8String:"nfcd"];
    v44 = v42;
    v53[0] = NSLocalizedDescriptionKey;
    if (v42 >= 0x4C)
    {
      v45 = 76;
    }

    else
    {
      v45 = v42;
    }

    v29 = [NSString stringWithUTF8String:off_100316CC0[v45]];
    v54[0] = v29;
    v54[1] = &off_1003306C0;
    v53[1] = @"Line";
    v53[2] = @"Method";
    v30 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v54[2] = v30;
    v53[3] = NSDebugDescriptionErrorKey;
    v31 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 331];
    v54[3] = v31;
    v32 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:4];
    v33 = v43;
    v34 = identifierAsData;
    v35 = v44;
    goto LABEL_14;
  }

  v50 = authCopy;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v60 = v14;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Routing failure: %@", buf, 0xCu);
  }

  v15 = [NSError alloc];
  identifierAsData = [NSString stringWithUTF8String:"nfcd"];
  code3 = [v14 code];
  v57[0] = NSLocalizedDescriptionKey;
  if ([v14 code] > 75)
  {
    code4 = 76;
  }

  else
  {
    code4 = [v14 code];
  }

  v29 = [NSString stringWithUTF8String:off_100316CC0[code4]];
  v58[0] = v29;
  v58[1] = v14;
  v57[1] = NSUnderlyingErrorKey;
  v57[2] = @"Line";
  v58[2] = &off_100330690;
  v57[3] = @"Method";
  v30 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
  v58[3] = v30;
  v57[4] = NSDebugDescriptionErrorKey;
  v31 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 301];
  v58[4] = v31;
  v32 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:5];
  v33 = v15;
  v34 = identifierAsData;
  v35 = code3;
LABEL_14:
  v28 = [v33 initWithDomain:v34 code:v35 userInfo:v32];
LABEL_15:

  authCopy = v50;
LABEL_16:
  startCopy = v51;
LABEL_17:

  return v28;
}

- (void)requestApplets:(id)applets selectOnStart:(id)start AIDAllowList:(id)list externalAuth:(id)auth mode:(unint64_t)mode ceType:(unsigned int)type completion:(id)completion
{
  appletsCopy = applets;
  startCopy = start;
  listCopy = list;
  authCopy = auth;
  completionCopy = completion;
  v21 = NFSharedSignpostLog();
  if (os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NFCredentialSession requestApplets:externalAuth:mode:", "before dispatch", buf, 2u);
  }

  v37.receiver = self;
  v37.super_class = _NFCredentialSession;
  workQueue = [(_NFSession *)&v37 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000765D4;
  block[3] = &unk_100316F78;
  v34 = a2;
  modeCopy = mode;
  block[4] = self;
  v29 = authCopy;
  v30 = appletsCopy;
  v31 = listCopy;
  typeCopy = type;
  v32 = startCopy;
  v33 = completionCopy;
  v23 = startCopy;
  v24 = listCopy;
  v25 = appletsCopy;
  v26 = authCopy;
  v27 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)transceive:(id)transceive completion:(id)completion
{
  transceiveCopy = transceive;
  completionCopy = completion;
  v9 = NFSharedSignpostLog();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NFCredentialSession transceive:", "before dispatch", buf, 2u);
  }

  v17.receiver = self;
  v17.super_class = _NFCredentialSession;
  workQueue = [(_NFSession *)&v17 workQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100078738;
  v13[3] = &unk_1003165E8;
  v15 = completionCopy;
  v16 = a2;
  v13[4] = self;
  v14 = transceiveCopy;
  v11 = transceiveCopy;
  v12 = completionCopy;
  dispatch_async(workQueue, v13);
}

- (void)listAppletsAndRefreshCache:(BOOL)cache completion:(id)completion
{
  completionCopy = completion;
  v8 = NFSharedSignpostLog();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NFCredentialSession listAppletsAndRefreshCache:", "before dispatch", buf, 2u);
  }

  v15.receiver = self;
  v15.super_class = _NFCredentialSession;
  workQueue = [(_NFSession *)&v15 workQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000794A8;
  v11[3] = &unk_100316FA0;
  v12 = completionCopy;
  v13 = a2;
  v11[4] = self;
  cacheCopy = cache;
  v10 = completionCopy;
  dispatch_async(workQueue, v11);
}

- (void)queryExtraInfoForApplets:(id)applets completion:(id)completion
{
  appletsCopy = applets;
  completionCopy = completion;
  v9 = NFSharedSignpostLog();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NFCredentialSession queryExtraInfoForApplets:", "before dispatch", buf, 2u);
  }

  v17.receiver = self;
  v17.super_class = _NFCredentialSession;
  workQueue = [(_NFSession *)&v17 workQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100079DFC;
  v13[3] = &unk_1003165E8;
  v15 = completionCopy;
  v16 = a2;
  v13[4] = self;
  v14 = appletsCopy;
  v11 = appletsCopy;
  v12 = completionCopy;
  dispatch_async(workQueue, v13);
}

- (void)deleteApplets:(id)applets completion:(id)completion
{
  appletsCopy = applets;
  completionCopy = completion;
  v9 = NFSharedSignpostLog();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NFCredentialSession deleteApplets:", "before dispatch", buf, 2u);
  }

  v17.receiver = self;
  v17.super_class = _NFCredentialSession;
  workQueue = [(_NFSession *)&v17 workQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007A50C;
  v13[3] = &unk_1003165E8;
  v15 = completionCopy;
  v16 = a2;
  v13[4] = self;
  v14 = appletsCopy;
  v11 = appletsCopy;
  v12 = completionCopy;
  dispatch_async(workQueue, v13);
}

- (void)signChallenge:(id)challenge completion:(id)completion
{
  challengeCopy = challenge;
  completionCopy = completion;
  v9 = NFSharedSignpostLog();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NFCredentialSession signChallenge:", "before dispatch", buf, 2u);
  }

  v17.receiver = self;
  v17.super_class = _NFCredentialSession;
  workQueue = [(_NFSession *)&v17 workQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007AFCC;
  v13[3] = &unk_1003165E8;
  v15 = completionCopy;
  v16 = a2;
  v13[4] = self;
  v14 = challengeCopy;
  v11 = challengeCopy;
  v12 = completionCopy;
  dispatch_async(workQueue, v13);
}

- (void)cleanup
{
  if ([(_NFSession *)self needsCleanup])
  {
    v4 = sub_10004BF60(NFRoutingConfig, 0);
    v5 = +[_NFHardwareManager sharedHardwareManager];
    v6 = [v5 setRoutingConfig:v4];

    if (v6)
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

        v8(3, "%c[%{public}s %{public}s]:%i Failed to config wired mode", v12, ClassName, Name, 715);
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
        v25 = v15;
        v26 = 2082;
        v27 = object_getClassName(self);
        v28 = 2082;
        v29 = sel_getName(a2);
        v30 = 1024;
        v31 = 715;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to config wired mode", buf, 0x22u);
      }
    }

    else
    {
      secureElementWrapper = [(_NFCredentialSession *)self secureElementWrapper];
      v17 = sub_1002562FC(secureElementWrapper);

      secureElementWrapper2 = [(_NFCredentialSession *)self secureElementWrapper];
      v19 = sub_10015D3EC(secureElementWrapper2);
    }

    firstFieldNotificationTimer = [(_NFCredentialSession *)self firstFieldNotificationTimer];
    [firstFieldNotificationTimer stopTimer];

    v21 = sub_1001AE20C();
    sub_1001AEDB0(v21, v22);

    [(_NFCredentialSession *)self setMode:0];
  }
}

- (void)handleSecureElementTransactionData:(id)data appletIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataCopy = data;
  v8 = NFSharedSignpostLog();
  if (os_signpost_enabled(v8))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HCI data", &unk_1002E8B7A, v10, 2u);
  }

  remoteObject = [(_NFXPCSession *)self remoteObject];
  [remoteObject notifyHCIData:dataCopy appletIdentifier:identifierCopy];
}

- (void)handleTimerExpiredEvent:(id)event
{
  eventCopy = event;
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

    v7(6, "%c[%{public}s %{public}s]:%i %{public}@", v10, ClassName, Name, 754, eventCopy);
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
    *buf = 67110146;
    v50 = v13;
    v51 = 2082;
    v52 = v14;
    v53 = 2082;
    v54 = v15;
    v55 = 1024;
    v56 = 754;
    v57 = 2114;
    v58 = eventCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  v16 = NFSharedSignpostLog();
  if (os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AUTH_EXPIRED", &unk_1002E8B7A, buf, 2u);
  }

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10007C304;
  v47[3] = &unk_100316FC8;
  v47[4] = self;
  os_unfair_lock_lock(&self->_requestedAppletsLock);
  v17 = sub_10007C304(v47);
  os_unfair_lock_unlock(&self->_requestedAppletsLock);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v18 = eventCopy;
  v19 = [v18 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v44;
    while (2)
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v44 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [v17 objectForKey:*(*(&v43 + 1) + 8 * i)];
        if (v23)
        {
          firstObject = v23;
          v34 = v18;
          goto LABEL_30;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  allValues = [v17 allValues];
  firstObject = [allValues firstObject];

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v26 = NFLogGetLogger();
  if (v26)
  {
    v27 = v26;
    v28 = object_getClass(self);
    v29 = class_isMetaClass(v28);
    v30 = object_getClassName(self);
    v31 = sel_getName(a2);
    identifier = [firstObject identifier];
    v33 = 45;
    if (v29)
    {
      v33 = 43;
    }

    v27(6, "%c[%{public}s %{public}s]:%i Assumes %{public}@", v33, v30, v31, 773, identifier);
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
    identifier2 = [firstObject identifier];
    *buf = 67110146;
    v50 = v36;
    v51 = 2082;
    v52 = v37;
    v53 = 2082;
    v54 = v38;
    v55 = 1024;
    v56 = 773;
    v57 = 2114;
    v58 = identifier2;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Assumes %{public}@", buf, 0x2Cu);
  }

LABEL_30:

  remoteObject = [(_NFXPCSession *)self remoteObject];
  [remoteObject didExpireTransactionForApplet:firstObject];

  [(_NFCredentialSession *)self requestApplets:0 selectOnStart:0 AIDAllowList:0 externalAuth:0 mode:0 ceType:0 completion:&stru_100316FE8];
}

@end