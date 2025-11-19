@interface _NFSecureTransactionServicesHandoverSession
+ (id)validateEntitlements:(id)a3;
- (BOOL)willStartSession;
- (void)cleanup;
- (void)coreDuetActivityRevoked;
- (void)didStartSession:(id)a3;
- (void)endSession:(id)a3;
- (void)handleFieldNotification:(id)a3;
- (void)handleHostCardReaderDetected:(id)a3;
- (void)handleRemoteTagsDetected:(id)a3;
- (void)iso18013DataRetrievalCompleted;
- (void)relinquishSEProxy;
- (void)reqlinquishNFCReaderProxy;
- (void)restartNFCReaderDiscovery;
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

@implementation _NFSecureTransactionServicesHandoverSession

- (BOOL)willStartSession
{
  v3 = objc_opt_new();
  sub_10004CB7C(self, v3);

  v5.receiver = self;
  v5.super_class = _NFSecureTransactionServicesHandoverSession;
  return [(_NFSession *)&v5 willStartSession];
}

- (void)endSession:(id)a3
{
  if (self)
  {
    stsHelper = self->_stsHelper;
  }

  else
  {
    stsHelper = 0;
  }

  v5 = a3;
  [(STSHelperLibrary *)stsHelper invalidate];
  sub_10004CB7C(self, 0);
  v6.receiver = self;
  v6.super_class = _NFSecureTransactionServicesHandoverSession;
  [(_NFXPCSession *)&v6 endSession:v5];
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

      v7(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v13, ClassName, Name, 101, v12);
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
      v33 = v16;
      v34 = 2082;
      v35 = v17;
      v36 = 2082;
      v37 = v18;
      v38 = 1024;
      v39 = 101;
      v40 = 2114;
      v41 = v19;
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
      v31 = sel_getName(a2);
      v25 = 45;
      if (v23)
      {
        v25 = 43;
      }

      v21(6, "%c[%{public}s %{public}s]:%i ", v25, v24, v31, 104);
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
      v33 = v28;
      v34 = 2082;
      v35 = object_getClassName(self);
      v36 = 2082;
      v37 = sel_getName(a2);
      v38 = 1024;
      v39 = 104;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    if (self)
    {
      stsHelper = self->_stsHelper;
    }

    else
    {
      stsHelper = 0;
    }

    v30 = [(STSHelperLibrary *)stsHelper connectToNotificationListener:v5];
  }
}

- (void)handleFieldNotification:(id)a3
{
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_10004D294;
  v9 = &unk_1003162B8;
  v10 = self;
  v11 = a2;
  v4 = a3;
  v5 = sub_10004D188(self, &v6);
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
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, v7, "ReaderDetected", &unk_1002E8B7A, buf, 2u);
    }
  }

  v8 = v4;
  if (self)
  {
    tnepHandler = self->_tnepHandler;
    if (tnepHandler)
    {
      sub_1002645F8(tnepHandler, v8);
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v11 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName("startHCEProcessingWithDevice:completion:");
        v15 = 45;
        if (isMetaClass)
        {
          v15 = 43;
        }

        v11(3, "%c[%{public}s %{public}s]:%i Missing tnepHandler", v15, ClassName, Name, 799);
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

        v19 = object_getClassName(self);
        v20 = sel_getName("startHCEProcessingWithDevice:completion:");
        *buf = 67109890;
        v23 = v18;
        v24 = 2082;
        v25 = v19;
        v26 = 2082;
        v27 = v20;
        v28 = 1024;
        v29 = 799;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing tnepHandler", buf, 0x22u);
      }
    }
  }
}

- (void)handleRemoteTagsDetected:(id)a3
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = *v22;
  while (2)
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v22 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v21 + 1) + 8 * i);
      v10 = [v9 tagA];
      if (v10)
      {

LABEL_13:
        v6 = v9;

        if (!v6)
        {
          goto LABEL_24;
        }

        if (self)
        {
          driverWrapper = self->_driverWrapper;
          if (driverWrapper)
          {
            if (sub_100190BD0(driverWrapper, v6, 0))
            {
              goto LABEL_25;
            }
          }
        }

        v14 = NFSharedSignpostLog();
        v15 = [(_NFSession *)self signpostId];
        if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v16 = v15;
          if (os_signpost_enabled(v14))
          {
            *v20 = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, v16, "TargetTagDetected", &unk_1002E8B7A, v20, 2u);
          }
        }

        if (self)
        {
          objc_storeStrong(&self->_connectedTag, v9);
          v17 = self->_tnepHandler;
          if (v17)
          {
            role = self->_role;
            if (role == 4)
            {

LABEL_29:
              sub_100264684(&self->_tnepHandler->super.isa, self->_connectedTag);
              goto LABEL_27;
            }

            if (role == 1)
            {
              goto LABEL_29;
            }
          }
        }

        v12 = +[NSAssertionHandler currentHandler];
        [v12 handleFailureInMethod:a2 object:self file:@"_NFSecureTransactionServicesHandoverSession.m" lineNumber:191 description:@"Tag not handle!"];
        goto LABEL_11;
      }

      v11 = [v9 tagB];

      if (v11)
      {
        goto LABEL_13;
      }
    }

    v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_10:
  v12 = v5;
LABEL_11:

LABEL_24:
  if (self)
  {
LABEL_25:
    v19 = self->_driverWrapper;
  }

  else
  {
    v19 = 0;
  }

  sub_10021E364(v19);
LABEL_27:
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

      v8(3, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring card and SE access", v12, ClassName, Name, 202);
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
      v33 = 202;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring card and SE access", buf, 0x22u);
    }

    v16 = [NSError alloc];
    v17 = [NSString stringWithUTF8String:"nfcd"];
    v24[0] = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithUTF8String:"Not entitled"];
    v25[0] = v18;
    v25[1] = &off_100330300;
    v24[1] = @"Line";
    v24[2] = @"Method";
    v19 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v25[2] = v19;
    v24[3] = NSDebugDescriptionErrorKey;
    v20 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 203];
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

    if (self)
    {
      stsHelper = self->_stsHelper;
    }

    else
    {
      stsHelper = 0;
    }

    [(STSHelperLibrary *)stsHelper invalidate];
  }

  v9.receiver = self;
  v9.super_class = _NFSecureTransactionServicesHandoverSession;
  [(_NFSession *)&v9 cleanup];
  v8 = NFSharedSignpostLog();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "cleanup", "_NFSecureTransactionServicesHelperSession", buf, 2u);
  }
}

- (void)didStartSession:(id)a3
{
  v5 = a3;
  v127.receiver = self;
  v127.super_class = _NFSecureTransactionServicesHandoverSession;
  [(_NFXPCSession *)&v127 didStartSession:v5];
  v126[0] = _NSConcreteStackBlock;
  v126[1] = 3221225472;
  v126[2] = sub_10004EE88;
  v126[3] = &unk_1003162B8;
  v126[4] = self;
  v126[5] = a2;
  v6 = objc_retainBlock(v126);
  v125[0] = _NSConcreteStackBlock;
  v125[1] = 3221225472;
  v125[2] = sub_10004F250;
  v125[3] = &unk_100315F58;
  v125[4] = self;
  v125[5] = a2;
  v7 = objc_retainBlock(v125);
  if (v5)
  {
    (v6[2])(v6, v5);
    goto LABEL_92;
  }

  v8 = +[_NFHardwareManager sharedHardwareManager];
  v9 = [v8 secureElementWrapper];
  seWrapper = self->_seWrapper;
  self->_seWrapper = v9;

  role = self->_role;
  if (role > 2)
  {
    if (role != 3)
    {
      if (role == 4)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v41 = Logger;
          Class = object_getClass(self);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(self);
          Name = sel_getName(a2);
          v45 = 45;
          if (isMetaClass)
          {
            v45 = 43;
          }

          v41(6, "%c[%{public}s %{public}s]:%i Starting TNEP reader", v45, ClassName, Name, 287);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v46 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = object_getClass(self);
          if (class_isMetaClass(v47))
          {
            v48 = 43;
          }

          else
          {
            v48 = 45;
          }

          v49 = object_getClassName(self);
          v50 = sel_getName(a2);
          *buf = 67109890;
          *v132 = v48;
          *&v132[4] = 2082;
          *&v132[6] = v49;
          v133 = 2082;
          v134 = v50;
          v135 = 1024;
          v136 = 287;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Starting TNEP reader", buf, 0x22u);
        }

        v34 = NFSharedSignpostLog();
        v51 = [(_NFSession *)self signpostId];
        if (v51 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_43;
        }

        v36 = v51;
        if (!os_signpost_enabled(v34))
        {
          goto LABEL_43;
        }

        *buf = 0;
        v37 = "Start_TNEP_Reader";
        v38 = v34;
        v39 = OS_SIGNPOST_EVENT;
        goto LABEL_42;
      }

      goto LABEL_44;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v89 = NFLogGetLogger();
    if (v89)
    {
      v90 = v89;
      v91 = object_getClass(self);
      v92 = class_isMetaClass(v91);
      v93 = object_getClassName(self);
      v116 = sel_getName(a2);
      v94 = 45;
      if (v92)
      {
        v94 = 43;
      }

      v90(6, "%c[%{public}s %{public}s]:%i Starting TNEP device", v94, v93, v116, 318);
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
      *buf = 67109890;
      *v132 = v97;
      *&v132[4] = 2082;
      *&v132[6] = v98;
      v133 = 2082;
      v134 = v99;
      v135 = 1024;
      v136 = 318;
      _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Starting TNEP device", buf, 0x22u);
    }

    v100 = NFSharedSignpostLog();
    v101 = [(_NFSession *)self signpostId];
    if (v101 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v102 = v101;
      if (os_signpost_enabled(v100))
      {
        *buf = 0;
        v103 = "Start_TNEP_Device";
        v104 = v100;
        v105 = OS_SIGNPOST_EVENT;
LABEL_89:
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v104, v105, v102, v103, &unk_1002E8B7A, buf, 2u);
      }
    }

LABEL_90:

    v27 = [NFTNEPService serviceWithURI:@"urn:nfc:sn:handover" minWaitTime:20 maxWaitTimeExtension:31 maxMessageSize:2048];
    v130 = v27;
    v110 = [NSArray arrayWithObjects:&v130 count:1];
    v117[0] = _NSConcreteStackBlock;
    v117[1] = 3221225472;
    v117[2] = sub_10004FCDC;
    v117[3] = &unk_100316548;
    v117[4] = self;
    v120 = a2;
    v118 = v6;
    v119 = v7;
    sub_100050034(self, v110, 0, v117);

    goto LABEL_91;
  }

  if (!role)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v70 = NFLogGetLogger();
    if (v70)
    {
      v71 = v70;
      v72 = object_getClass(self);
      v73 = class_isMetaClass(v72);
      v74 = object_getClassName(self);
      v115 = sel_getName(a2);
      v75 = 45;
      if (v73)
      {
        v75 = 43;
      }

      v71(6, "%c[%{public}s %{public}s]:%i Starting ISO18013 device", v75, v74, v115, 301);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v76 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
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
      *buf = 67109890;
      *v132 = v78;
      *&v132[4] = 2082;
      *&v132[6] = v79;
      v133 = 2082;
      v134 = v80;
      v135 = 1024;
      v136 = 301;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Starting ISO18013 device", buf, 0x22u);
    }

    v81 = NFSharedSignpostLog();
    v82 = [(_NFSession *)self signpostId];
    if (v82 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v83 = v82;
      if (os_signpost_enabled(v81))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v81, OS_SIGNPOST_INTERVAL_BEGIN, v83, "Start_ISO18013_Device", &unk_1002E8B7A, buf, 2u);
      }
    }

    v84 = self->_stsHelper;
    v85 = sub_10004F478(self);
    v27 = [(STSHelperLibrary *)v84 startISO18013WithConnectionHandoverConfiguration:v85 type:sub_10004F63C(self) credentialType:2 delegate:self];

    v86 = NFSharedSignpostLog();
    v87 = [(_NFSession *)self signpostId];
    if (v87 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v88 = v87;
      if (os_signpost_enabled(v86))
      {
        *buf = 138412290;
        *v132 = v27;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v86, OS_SIGNPOST_INTERVAL_END, v88, "Start_ISO18013_Device", "error=%@", buf, 0xCu);
      }
    }

    if (v27)
    {
LABEL_70:
      (v6[2])(v6, v27);
LABEL_91:

      goto LABEL_92;
    }

    v106 = NFSharedSignpostLog();
    v107 = [(_NFSession *)self signpostId];
    if (v107 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v108 = v107;
      if (os_signpost_enabled(v106))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v106, OS_SIGNPOST_INTERVAL_BEGIN, v108, "Start_SEProxyListener", &unk_1002E8B7A, buf, 2u);
      }
    }

    sub_10004DD74(self);
    v100 = NFSharedSignpostLog();
    v109 = [(_NFSession *)self signpostId];
    if (v109 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v102 = v109;
      if (os_signpost_enabled(v100))
      {
        *buf = 0;
        v103 = "Start_SEProxyListener";
        v104 = v100;
        v105 = OS_SIGNPOST_INTERVAL_END;
        goto LABEL_89;
      }
    }

    goto LABEL_90;
  }

  if (role == 1)
  {
    v12 = sub_10004F478(self);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v14 = v13;
      v15 = object_getClass(self);
      v16 = class_isMetaClass(v15);
      v111 = object_getClassName(self);
      v112 = sel_getName(a2);
      v17 = 45;
      if (v16)
      {
        v17 = 43;
      }

      v14(6, "%c[%{public}s %{public}s]:%i Starting ISO18013 reader polling, hoConfig=0x%lx", v17, v111, v112, 269, v12);
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
      *buf = 67110146;
      *v132 = v20;
      *&v132[4] = 2082;
      *&v132[6] = v21;
      v133 = 2082;
      v134 = v22;
      v135 = 1024;
      v136 = 269;
      v137 = 2048;
      v138 = v12;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Starting ISO18013 reader polling, hoConfig=0x%lx", buf, 0x2Cu);
    }

    v23 = NFSharedSignpostLog();
    v24 = [(_NFSession *)self signpostId];
    if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v25 = v24;
      if (os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_BEGIN, v25, "Start_ISO18013_Reader", &unk_1002E8B7A, buf, 2u);
      }
    }

    v26 = self->_stsHelper;
    v27 = [(STSHelperLibrary *)v26 startISO18013WithConnectionHandoverConfiguration:v12 type:sub_10004F63C(self) credentialType:2 delegate:self];

    v28 = NFSharedSignpostLog();
    v29 = [(_NFSession *)self signpostId];
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v30 = v29;
      if (os_signpost_enabled(v28))
      {
        *buf = 138412290;
        *v132 = v27;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_END, v30, "Start_ISO18013_Reader", "error=%@", buf, 0xCu);
      }
    }

    if (!v27)
    {
      v31 = NFSharedSignpostLog();
      v32 = [(_NFSession *)self signpostId];
      if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v33 = v32;
        if (os_signpost_enabled(v31))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_INTERVAL_BEGIN, v33, "Start_SEProxyListener", &unk_1002E8B7A, buf, 2u);
        }
      }

      sub_10004DD74(self);
      v34 = NFSharedSignpostLog();
      v35 = [(_NFSession *)self signpostId];
      if (v35 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_43;
      }

      v36 = v35;
      if (!os_signpost_enabled(v34))
      {
        goto LABEL_43;
      }

      *buf = 0;
      v37 = "Start_SEProxyListener";
      v38 = v34;
      v39 = OS_SIGNPOST_INTERVAL_END;
LABEL_42:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, v39, v36, v37, &unk_1002E8B7A, buf, 2u);
LABEL_43:

      v121[0] = _NSConcreteStackBlock;
      v121[1] = 3221225472;
      v121[2] = sub_10004F6E4;
      v121[3] = &unk_100316548;
      v121[4] = self;
      v124 = a2;
      v122 = v6;
      v123 = v7;
      sub_10004FA3C(self, v121);

      goto LABEL_92;
    }

    goto LABEL_70;
  }

LABEL_44:
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v52 = NFLogGetLogger();
  if (v52)
  {
    v53 = v52;
    v54 = object_getClass(self);
    v55 = class_isMetaClass(v54);
    v56 = object_getClassName(self);
    v114 = sel_getName(a2);
    v57 = 45;
    if (v55)
    {
      v57 = 43;
    }

    v53(3, "%c[%{public}s %{public}s]:%i Invalid command", v57, v56, v114, 337);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v58 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
  {
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
    *v132 = v60;
    *&v132[4] = 2082;
    *&v132[6] = v61;
    v133 = 2082;
    v134 = v62;
    v135 = 1024;
    v136 = 337;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid command", buf, 0x22u);
  }

  v63 = [NSError alloc];
  v64 = [NSString stringWithUTF8String:"nfcd"];
  v128[0] = NSLocalizedDescriptionKey;
  v65 = [NSString stringWithUTF8String:"Invalid Command"];
  v129[0] = v65;
  v129[1] = &off_100330348;
  v128[1] = @"Line";
  v128[2] = @"Method";
  v66 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
  v129[2] = v66;
  v128[3] = NSDebugDescriptionErrorKey;
  v67 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 338];
  v129[3] = v67;
  v68 = [NSDictionary dictionaryWithObjects:v129 forKeys:v128 count:4];
  v69 = [v63 initWithDomain:v64 code:11 userInfo:v68];
  (v6[2])(v6, v69);

LABEL_92:
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

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 404);
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
    v24 = 404;
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

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 411);
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
    v21 = 411;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  if (self)
  {
    [(STSHelperLibrary *)self->_stsHelper stopSEProxyListener];
    objc_storeStrong(&self->_seProxyListener, 0);
  }

  else
  {
    [0 stopSEProxyListener];
  }
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

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 419);
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
    v21 = 419;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  sub_10021E364(self->_driverWrapper);
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

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 425);
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
    v24 = 425;
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
  block[2] = sub_100050EE4;
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
  block[2] = sub_100051094;
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
  v12[2] = sub_1000518B0;
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
  block[2] = sub_100051F58;
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
  v12[2] = sub_100052518;
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
  block[2] = sub_100052BA8;
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
  v12[2] = sub_100053248;
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
  block[2] = sub_1000538C8;
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

      v5(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v11, ClassName, Name, 574, v10);
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
      v37 = 574;
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

      v19(6, "%c[%{public}s %{public}s]:%i ", v23, v22, v28, 576);
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
      v37 = 576;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", &buf, 0x22u);
    }

    objc_initWeak(&buf, self);
    v27 = [(_NFSession *)self workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005427C;
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

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 595);
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
    v21 = 595;
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

    v12(6, "%c[%{public}s %{public}s]:%i service=%{public}@, status=%ld", v16, ClassName, Name, 605, v7, v10);
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
    v30 = 605;
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
    v22[2] = sub_10005485C;
    v22[3] = &unk_1003162B8;
    v22[4] = self;
    v22[5] = a2;
    v20 = sub_10004D188(self, v22);
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
    if (class_isMetaClass(Class))
    {
      v9 = 43;
    }

    else
    {
      v9 = 45;
    }

    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    if (self)
    {
      deviceHandoverSelectError = self->_deviceHandoverSelectError;
    }

    else
    {
      deviceHandoverSelectError = 0;
    }

    v7(6, "%c[%{public}s %{public}s]:%i CH status=%{public}@, link error=%{public}@", v9, ClassName, Name, 619, deviceHandoverSelectError, v5);
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
    if (self)
    {
      v18 = self->_deviceHandoverSelectError;
    }

    else
    {
      v18 = 0;
    }

    *buf = 67110402;
    *&buf[4] = v15;
    v33 = 2082;
    v34 = v16;
    v35 = 2082;
    v36 = v17;
    v37 = 1024;
    v38 = 619;
    v39 = 2114;
    v40 = v18;
    v41 = 2114;
    v42 = v5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i CH status=%{public}@, link error=%{public}@", buf, 0x36u);
  }

  if (self && self->_deviceHandoverSelectError)
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100054EA8;
    v31[3] = &unk_1003162B8;
    v31[4] = self;
    v31[5] = a2;
    v19 = sub_10004D188(self, v31);
    [v19 connectionHandoverProcessFailure:self->_deviceHandoverSelectError];

    sub_100055040(self, 0);
  }

  else if (v5)
  {
    if ([v5 code] == 28)
    {
      v20 = STS_XCPHELPER_ERROR_DOMAIN;
      v43 = NSLocalizedDescriptionKey;
      *buf = STSXPCHelperErrorDescriptions[8];
      v21 = [NSDictionary dictionaryWithObjects:buf forKeys:&v43 count:1];
      v22 = v20;
      v23 = 8;
    }

    else if ([v5 code] == 62 || objc_msgSend(v5, "code") == 59)
    {
      v25 = STS_XCPHELPER_ERROR_DOMAIN;
      v43 = NSLocalizedDescriptionKey;
      *buf = STSXPCHelperErrorDescriptions[2];
      v21 = [NSDictionary dictionaryWithObjects:buf forKeys:&v43 count:1];
      v22 = v25;
      v23 = 2;
    }

    else
    {
      v26 = STS_XCPHELPER_ERROR_DOMAIN;
      v43 = NSLocalizedDescriptionKey;
      *buf = STSXPCHelperErrorDescriptions[10];
      v21 = [NSDictionary dictionaryWithObjects:buf forKeys:&v43 count:1];
      v22 = v26;
      v23 = 10;
    }

    v27 = [NSError errorWithDomain:v22 code:v23 userInfo:v21];

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100055058;
    v30[3] = &unk_1003162B8;
    v30[4] = self;
    v30[5] = a2;
    v28 = sub_10004D188(self, v30);
    [v28 connectionHandoverProcessFailure:v27];
  }

  else
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000551F0;
    v29[3] = &unk_1003162B8;
    v29[4] = self;
    v29[5] = a2;
    v24 = sub_10004D188(self, v29);
    [v24 connectionHandoverProcessCompleted];
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

  if (self)
  {
    stsHelper = self->_stsHelper;
  }

  else
  {
    stsHelper = 0;
  }

  v10 = stsHelper;
  v11 = [v5 asData];

  v12 = [(_NFSession *)self workQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000554E0;
  v13[3] = &unk_100316660;
  v13[4] = self;
  v13[5] = a2;
  [(STSHelperLibrary *)v10 processConnectionHandoverRequestData:v11 callbackQueue:v12 responseHandler:v13];
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

    v7(6, "%c[%{public}s %{public}s]:%i services=%{public}@", v10, ClassName, Name, 680, v5);
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
    v54 = 680;
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
          v41[2] = sub_1000560DC;
          v41[3] = &unk_1003162B8;
          v41[4] = self;
          v41[5] = a2;
          v30 = objc_retainBlock(v41);
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_1000564FC;
          v40[3] = &unk_1003162B8;
          v40[4] = self;
          v40[5] = a2;
          v31 = sub_10004D188(self, v40);
          [v31 connectionHandoverTNEPServiceSelected:@"urn:nfc:sn:handover"];

          if (self)
          {
            tnepHandler = self->_tnepHandler;
          }

          else
          {
            tnepHandler = 0;
          }

          v37[0] = _NSConcreteStackBlock;
          v37[1] = 3221225472;
          v37[2] = sub_100056694;
          v37[3] = &unk_100316598;
          v38 = v30;
          v39 = a2;
          v37[4] = self;
          v33 = v30;
          [(NFTNEPHandler *)tnepHandler tnepReaderSelectService:@"urn:nfc:sn:handover" callback:v37];

          goto LABEL_31;
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

    v20(4, "%c[%{public}s %{public}s]:%i No matching service found", v24, v23, v36, 691);
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
    v54 = 691;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No matching service found", buf, 0x22u);
  }

LABEL_31:
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

    v7(6, "%c[%{public}s %{public}s]:%i handover select = %@", v10, ClassName, Name, 762, v5);
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
    v28 = 762;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i handover select = %@", buf, 0x2Cu);
  }

  if (self)
  {
    stsHelper = self->_stsHelper;
  }

  else
  {
    stsHelper = 0;
  }

  v15 = stsHelper;
  v16 = [v5 asData];
  v17 = [(_NFSession *)self workQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10005763C;
  v20[3] = &unk_1003162B8;
  v20[4] = self;
  v20[5] = a2;
  [(STSHelperLibrary *)v15 connectRemoteWithConnectionHandoverSelect:v16 callbackQueue:v17 responseHandler:v20];
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

    v10(3, "%c[%{public}s %{public}s]:%i error=%{public}@", v13, ClassName, Name, 785, v5);
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
    v30 = 785;
    v31 = 2114;
    v32 = v5;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i error=%{public}@", buf, 0x2Cu);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100057E58;
  v22[3] = &unk_1003162B8;
  v22[4] = self;
  v22[5] = a2;
  v19 = sub_10004D188(self, v22);
  [v19 tnepReaderServicesAborted:v5];
}

@end