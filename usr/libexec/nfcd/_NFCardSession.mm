@interface _NFCardSession
+ (id)validateEntitlements:(id)a3;
- (BOOL)validateReceivedAPDU:(id)a3;
- (BOOL)willStartSession;
- (_NFCardSession)initWithConfig:(id)a3 allowlistChecker:(id)a4 remoteObject:(id)a5 workQueue:(id)a6;
- (id)initialRoutingConfig;
- (id)initialRoutingConfigWithField:(id)a3;
- (void)_activateUIControllerWithCompletion:(id)a3;
- (void)_deassertPresentationAssertion;
- (void)_initPaymentAIDPrefixList;
- (void)_invalidateUIController;
- (void)_sendErrorStatus:(unsigned __int16)a3;
- (void)asyncReadAPDUWithCompletion:(id)a3;
- (void)cleanup;
- (void)didStartSession:(id)a3;
- (void)handleFieldNotification:(id)a3;
- (void)readAPDUWithCompletion:(id)a3;
- (void)requestEmulationAssertion:(id)a3 completion:(id)a4;
- (void)restartDiscovery;
- (void)resumeSessionFromWaitingOnFieldWithCompletion:(id)a3;
- (void)sendAPDU:(id)a3 completion:(id)a4;
- (void)startEmulationWithCompletion:(id)a3;
- (void)updateUIString:(id)a3 completion:(id)a4;
@end

@implementation _NFCardSession

- (_NFCardSession)initWithConfig:(id)a3 allowlistChecker:(id)a4 remoteObject:(id)a5 workQueue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v21.receiver = self;
  v21.super_class = _NFCardSession;
  v12 = [(_NFXPCSession *)&v21 initWithRemoteObject:a5 workQueue:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_allowlistChecker, a4);
    v14 = objc_opt_new();
    uiService = v13->_uiService;
    v13->_uiService = v14;

    v16 = v13->_uiService;
    if (v16)
    {
      [(NFUIService *)v16 coreNFCUISetMode:3];
      v17 = v13->_uiService;
      v18 = [v10 initialUIText];
      [(NFUIService *)v17 coreNFCUISetScanText:v18];

      v13->_uiServiceWasActivated = 0;
      [(_NFHCESession *)v13 setReadOnConnected:1];
    }

    [(_NFCardSession *)v13 _initPaymentAIDPrefixList];
    v19 = v13;
  }

  return v13;
}

- (void)_activateUIControllerWithCompletion:(id)a3
{
  v5 = a3;
  if (self->_uiServiceWasActivated)
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

      v7(6, "%c[%{public}s %{public}s]:%i UI already activated", v11, ClassName, Name, 80);
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

      LODWORD(buf) = 67109890;
      HIDWORD(buf) = v14;
      v34 = 2082;
      v35 = object_getClassName(self);
      v36 = 2082;
      v37 = sel_getName(a2);
      v38 = 1024;
      v39 = 80;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i UI already activated", &buf, 0x22u);
    }

    v5[2](v5, 0);
  }

  else
  {
    objc_initWeak(&buf, self);
    v15 = +[_NFHardwareManager sharedHardwareManager];
    v16 = v15;
    if (v15)
    {
      v17 = *(v15 + 128);
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    if (self->_assertionHandle)
    {
      __assert_rtn("[_NFCardSession _activateUIControllerWithCompletion:]", "_NFCardSession.m", 89, "nil == _assertionHandle");
    }

    v19 = [NSString alloc];
    v20 = [(_NFSession *)self sessionUID];
    v21 = +[NSDate now];
    v22 = [v21 description];
    v23 = [v19 initWithFormat:@"%@, %@", v20, v22];
    assertionHandle = self->_assertionHandle;
    self->_assertionHandle = v23;

    v32 = 0;
    if (([v18 isAsserted:3] & 1) == 0)
    {
      [v18 assert:3 requestor:self->_assertionHandle isFirst:0 updatedVal:&v32];
    }

    uiService = self->_uiService;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1001A40D8;
    v30[3] = &unk_10031B148;
    objc_copyWeak(v31, &buf);
    v31[1] = a2;
    [(NFUIService *)uiService coreNFCUISetInvalidationHandler:v30];
    v26 = self->_uiService;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001A446C;
    v28[3] = &unk_10031B198;
    v28[4] = self;
    v29 = v5;
    [(NFUIService *)v26 coreNFCUIActivateWithCompletion:v28];

    objc_destroyWeak(v31);
    objc_destroyWeak(&buf);
  }
}

- (void)_initPaymentAIDPrefixList
{
  v3 = objc_opt_new();
  paymentAIDPrefixes = self->_paymentAIDPrefixes;
  self->_paymentAIDPrefixes = v3;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NFServiceWhitelistChecker *)self->_allowlistChecker nfcCardSessionAIDPrefixList];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [v10 NF_asHexString];
        if ([NFATLMobileSettings findAID:v11 filterType:1]|| [NFATLMobileSettings findAID:v11 filterType:0])
        {
          [(NSMutableOrderedSet *)self->_paymentAIDPrefixes addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_deassertPresentationAssertion
{
  if (self->_assertionHandle)
  {
    v3 = +[_NFHardwareManager sharedHardwareManager];
    v4 = v3;
    if (v3)
    {
      v5 = *(v3 + 128);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    v8 = 0;
    if ([v6 isAsserted:3])
    {
      [v6 deassert:3 requestor:self->_assertionHandle isLast:0 updatedVal:&v8];
      assertionHandle = self->_assertionHandle;
      self->_assertionHandle = 0;
    }
  }
}

- (void)_invalidateUIController
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

    v5(6, "%c[%{public}s %{public}s]:%i Invalidating...", v9, ClassName, Name, 168);
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
    v21 = 168;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Invalidating...", buf, 0x22u);
  }

  [(NFUIService *)self->_uiService coreNFCUIInvalidate];
  [(NFUIService *)self->_uiService disconnect];
  [(_NFCardSession *)self _deassertPresentationAssertion];
}

- (void)sendAPDU:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(_NFSession *)self workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001A4BB0;
  v12[3] = &unk_1003165E8;
  v14 = v8;
  v15 = a2;
  v12[4] = self;
  v13 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

- (void)startEmulationWithCompletion:(id)a3
{
  v5 = a3;
  v6 = NFSharedSignpostLog();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_START_EMULATION_XPC", &unk_1002E8B7A, buf, 2u);
  }

  v7 = [(_NFSession *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A509C;
  block[3] = &unk_100316050;
  v10 = v5;
  v11 = a2;
  block[4] = self;
  v8 = v5;
  dispatch_async(v7, block);
}

- (void)updateUIString:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(_NFSession *)self workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001A585C;
  v12[3] = &unk_100316078;
  v13 = v7;
  v14 = self;
  v15 = v8;
  v16 = a2;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, v12);
}

- (void)_sendErrorStatus:(unsigned __int16)a3
{
  v5 = __rev16(a3);
  v4 = [[NSData alloc] initWithBytes:&v5 length:2];
  [(_NFCardSession *)self sendAPDU:v4 completion:&stru_10031B1B8];
}

- (BOOL)validateReceivedAPDU:(id)a3
{
  v5 = a3;
  v6 = [(_NFHCESession *)self caLogger];
  v7 = [[NFCommandAPDU alloc] initWithData:v5];
  v8 = v7;
  if (!v7)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v27 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      v31 = a2;
      Name = sel_getName(a2);
      [v5 NF_asHexString];
      v33 = self;
      v35 = v34 = v5;
      v109 = Name;
      a2 = v31;
      v36 = 45;
      if (isMetaClass)
      {
        v36 = 43;
      }

      v27(3, "%c[%{public}s %{public}s]:%i Invalid ISO7816 APDU detected, %{public}@", v36, ClassName, v109, 278, v35);

      v5 = v34;
      self = v33;
      v8 = 0;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

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
    v41 = [v5 NF_asHexString];
    *buf = 67110146;
    v122 = v38;
    v123 = 2082;
    v124 = v39;
    v125 = 2082;
    v126 = v40;
    v127 = 1024;
    v128 = 278;
    v129 = 2114;
    v130 = v41;
    v42 = "%c[%{public}s %{public}s]:%i Invalid ISO7816 APDU detected, %{public}@";
LABEL_40:
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, v42, buf, 0x2Cu);

LABEL_52:
    [(_NFCardSession *)self _sendErrorStatus:27265];
    v67 = 0;
    goto LABEL_53;
  }

  v9 = [v7 isSecureMessaging];
  v10 = [v8 isSelectByDFNameCommand];
  if (v10)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v43 = NFLogGetLogger();
    if (v43)
    {
      v44 = v43;
      v45 = object_getClass(self);
      v46 = class_isMetaClass(v45);
      v47 = object_getClassName(self);
      v48 = a2;
      v49 = sel_getName(a2);
      [v5 NF_asHexString];
      v50 = v8;
      v51 = self;
      v53 = v52 = v5;
      v110 = v49;
      a2 = v48;
      v54 = 45;
      if (v46)
      {
        v54 = 43;
      }

      v44(3, "%c[%{public}s %{public}s]:%i Invalid ISO7816 SELECT command detected, %{public}@", v54, v47, v110, 287, v53);

      v5 = v52;
      self = v51;
      v8 = v50;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

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
    v41 = [v5 NF_asHexString];
    *buf = 67110146;
    v122 = v56;
    v123 = 2082;
    v124 = v57;
    v125 = 2082;
    v126 = v58;
    v127 = 1024;
    v128 = 287;
    v129 = 2114;
    v130 = v41;
    v42 = "%c[%{public}s %{public}s]:%i Invalid ISO7816 SELECT command detected, %{public}@";
    goto LABEL_40;
  }

  v12 = v10;
  if ([(_NFCardSession *)self cardState]== 1)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v59 = NFLogGetLogger();
    if (v59)
    {
      v60 = v59;
      v61 = object_getClass(self);
      v62 = class_isMetaClass(v61);
      v63 = object_getClassName(self);
      v111 = sel_getName(a2);
      v64 = 45;
      if (v62)
      {
        v64 = 43;
      }

      v60(6, "%c[%{public}s %{public}s]:%i No active application selected", v64, v63, v111, 293);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_52;
    }

    v65 = object_getClass(self);
    if (class_isMetaClass(v65))
    {
      v66 = 43;
    }

    else
    {
      v66 = 45;
    }

    *buf = 67109890;
    v122 = v66;
    v123 = 2082;
    v124 = object_getClassName(self);
    v125 = 2082;
    v126 = sel_getName(a2);
    v127 = 1024;
    v128 = 293;
    v23 = "%c[%{public}s %{public}s]:%i No active application selected";
    goto LABEL_50;
  }

  if (!v12)
  {
    if ([(_NFCardSession *)self cardState]== 3)
    {
      v67 = 1;
      goto LABEL_53;
    }

    [(_NFCardSession *)self setCardState:1];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v97 = NFLogGetLogger();
    if (v97)
    {
      v98 = v97;
      v99 = object_getClass(self);
      v100 = v6;
      v101 = class_isMetaClass(v99);
      v102 = object_getClassName(self);
      v112 = sel_getName(a2);
      v11 = !v101;
      v6 = v100;
      v103 = 45;
      if (!v11)
      {
        v103 = 43;
      }

      v98(6, "%c[%{public}s %{public}s]:%i No active application selected", v103, v102, v112, 343);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_52;
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

    *buf = 67109890;
    v122 = v105;
    v123 = 2082;
    v124 = object_getClassName(self);
    v125 = 2082;
    v126 = sel_getName(a2);
    v127 = 1024;
    v128 = 343;
    v23 = "%c[%{public}s %{public}s]:%i No active application selected";
LABEL_50:
    v24 = v20;
    v25 = OS_LOG_TYPE_DEFAULT;
LABEL_51:
    _os_log_impl(&_mh_execute_header, v24, v25, v23, buf, 0x22u);
    goto LABEL_52;
  }

  if ([v8 payloadLength] >= 0x11)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFLogGetLogger();
    if (v14)
    {
      v15 = v14;
      v16 = object_getClass(self);
      v17 = class_isMetaClass(v16);
      v18 = object_getClassName(self);
      v108 = sel_getName(a2);
      v19 = 45;
      if (v17)
      {
        v19 = 43;
      }

      v15(3, "%c[%{public}s %{public}s]:%i Invalid ISO7816 SELECT command detected; AID length invalid", v19, v18, v108, 300);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    v21 = object_getClass(self);
    if (class_isMetaClass(v21))
    {
      v22 = 43;
    }

    else
    {
      v22 = 45;
    }

    *buf = 67109890;
    v122 = v22;
    v123 = 2082;
    v124 = object_getClassName(self);
    v125 = 2082;
    v126 = sel_getName(a2);
    v127 = 1024;
    v128 = 300;
    v23 = "%c[%{public}s %{public}s]:%i Invalid ISO7816 SELECT command detected; AID length invalid";
    v24 = v20;
    v25 = OS_LOG_TYPE_ERROR;
    goto LABEL_51;
  }

  sel = a2;
  v114 = v6;
  v115 = v5;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v69 = [(_NFCardSession *)self allowlistChecker];
  v70 = [v69 nfcCardSessionAIDPrefixList];

  v71 = [v70 countByEnumeratingWithState:&v116 objects:v120 count:16];
  if (!v71)
  {
LABEL_66:

    [(_NFCardSession *)self setCardState:1];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v81 = NFLogGetLogger();
    if (v81)
    {
      v82 = v81;
      v83 = object_getClass(self);
      v84 = class_isMetaClass(v83);
      v85 = object_getClassName(self);
      v86 = sel_getName(sel);
      v87 = [v8 payload];
      v88 = [v87 NF_asHexString];
      v89 = 45;
      if (v84)
      {
        v89 = 43;
      }

      v82(6, "%c[%{public}s %{public}s]:%i AID %{public}@ is disallowed", v89, v85, v86, 335, v88);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v90 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      v91 = object_getClass(self);
      if (class_isMetaClass(v91))
      {
        v92 = 43;
      }

      else
      {
        v92 = 45;
      }

      v93 = object_getClassName(self);
      v94 = sel_getName(sel);
      v95 = [v8 payload];
      v96 = [v95 NF_asHexString];
      *buf = 67110146;
      v122 = v92;
      v123 = 2082;
      v124 = v93;
      v125 = 2082;
      v126 = v94;
      v127 = 1024;
      v128 = 335;
      v129 = 2114;
      v130 = v96;
      _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i AID %{public}@ is disallowed", buf, 0x2Cu);
    }

    [(_NFCardSession *)self _sendErrorStatus:27266];
    v67 = 0;
LABEL_88:
    v6 = v114;
    v5 = v115;
    goto LABEL_53;
  }

  v72 = v71;
  v73 = *v117;
LABEL_58:
  v74 = 0;
  while (1)
  {
    if (*v117 != v73)
    {
      objc_enumerationMutation(v70);
    }

    v75 = *(*(&v116 + 1) + 8 * v74);
    v76 = [v8 payload];
    v77 = [v76 length];
    v78 = [v75 length];

    if (v77 < v78)
    {
      goto LABEL_64;
    }

    v79 = [v8 payload];
    v80 = [v79 subdataWithRange:{0, objc_msgSend(v75, "length")}];

    if ([v80 isEqualToData:v75])
    {
      break;
    }

LABEL_64:
    if (v72 == ++v74)
    {
      v72 = [v70 countByEnumeratingWithState:&v116 objects:v120 count:16];
      if (v72)
      {
        goto LABEL_58;
      }

      goto LABEL_66;
    }
  }

  v106 = [(_NFCardSession *)self paymentAIDPrefixes];
  v107 = [v106 containsObject:v75];

  [(_NFCardSession *)self setCardState:2];
  v67 = 1;
  if (!v107)
  {
    goto LABEL_88;
  }

  v6 = v114;
  v5 = v115;
  if (v114)
  {
    v114[43] = 257;
  }

LABEL_53:

  return v67;
}

- (void)asyncReadAPDUWithCompletion:(id)a3
{
  v5 = a3;
  v6 = [NSError alloc];
  v7 = [NSString stringWithUTF8String:"nfcd"];
  v13[0] = NSLocalizedDescriptionKey;
  v8 = [NSString stringWithUTF8String:"Feature Not Supported"];
  v14[0] = v8;
  v14[1] = &off_1003335A0;
  v13[1] = @"Line";
  v13[2] = @"Method";
  v9 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
  v14[2] = v9;
  v13[3] = NSDebugDescriptionErrorKey;
  v10 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 352];
  v14[3] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];
  v12 = [v6 initWithDomain:v7 code:14 userInfo:v11];
  (*(a3 + 2))(v5, 0, v12);
}

- (void)readAPDUWithCompletion:(id)a3
{
  v5 = a3;
  v6 = [NSError alloc];
  v7 = [NSString stringWithUTF8String:"nfcd"];
  v13[0] = NSLocalizedDescriptionKey;
  v8 = [NSString stringWithUTF8String:"Feature Not Supported"];
  v14[0] = v8;
  v14[1] = &off_1003335B8;
  v13[1] = @"Line";
  v13[2] = @"Method";
  v9 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
  v14[2] = v9;
  v13[3] = NSDebugDescriptionErrorKey;
  v10 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 356];
  v14[3] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];
  v12 = [v6 initWithDomain:v7 code:14 userInfo:v11];
  (*(a3 + 2))(v5, 0, v12);
}

- (void)restartDiscovery
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

    v5(5, "%c[%{public}s %{public}s]:%i Feature not supported", v9, ClassName, Name, 360);
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
    v21 = 360;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Feature not supported", buf, 0x22u);
  }
}

- (void)requestEmulationAssertion:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [NSError alloc];
  v8 = [NSString stringWithUTF8String:"nfcd"];
  v14[0] = NSLocalizedDescriptionKey;
  v9 = [NSString stringWithUTF8String:"Feature Not Supported"];
  v15[0] = v9;
  v15[1] = &off_1003335D0;
  v14[1] = @"Line";
  v14[2] = @"Method";
  v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
  v15[2] = v10;
  v14[3] = NSDebugDescriptionErrorKey;
  v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 365];
  v15[3] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
  v13 = [v7 initWithDomain:v8 code:14 userInfo:v12];
  (*(a4 + 2))(v6, v13);
}

- (void)resumeSessionFromWaitingOnFieldWithCompletion:(id)a3
{
  v5 = a3;
  v6 = [NSError alloc];
  v7 = [NSString stringWithUTF8String:"nfcd"];
  v13[0] = NSLocalizedDescriptionKey;
  v8 = [NSString stringWithUTF8String:"Feature Not Supported"];
  v14[0] = v8;
  v14[1] = &off_1003335E8;
  v13[1] = @"Line";
  v13[2] = @"Method";
  v9 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
  v14[2] = v9;
  v13[3] = NSDebugDescriptionErrorKey;
  v10 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 369];
  v14[3] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];
  v12 = [v6 initWithDomain:v7 code:14 userInfo:v11];
  (*(a3 + 2))(v5, v12);
}

+ (id)validateEntitlements:(id)a3
{
  v5 = a3;
  if ([v5 nfcCardSessionAccess])
  {
    v6 = [v5 nfcCardSessionAIDPrefixList];
    v7 = [v6 count];

    if (v7)
    {
      v8 = 0;
      goto LABEL_25;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v26 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName(a2);
      v30 = 45;
      if (isMetaClass)
      {
        v30 = 43;
      }

      v26(3, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring non-empty AID prefix list", v30, ClassName, Name, 382);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v31 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = object_getClass(a1);
      if (class_isMetaClass(v32))
      {
        v33 = 43;
      }

      else
      {
        v33 = 45;
      }

      *buf = 67109890;
      v43 = v33;
      v44 = 2082;
      v45 = object_getClassName(a1);
      v46 = 2082;
      v47 = sel_getName(a2);
      v48 = 1024;
      v49 = 382;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring non-empty AID prefix list", buf, 0x22u);
    }

    v18 = [NSError alloc];
    v19 = [NSString stringWithUTF8String:"nfcd"];
    v38[0] = NSLocalizedDescriptionKey;
    v20 = [NSString stringWithUTF8String:"Not entitled"];
    v39[0] = v20;
    v39[1] = &off_100333618;
    v38[1] = @"Line";
    v38[2] = @"Method";
    v21 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v39[2] = v21;
    v38[3] = NSDebugDescriptionErrorKey;
    v22 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 383];
    v39[3] = v22;
    v23 = v39;
    v24 = v38;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFLogGetLogger();
    if (v9)
    {
      v10 = v9;
      v11 = object_getClass(a1);
      v12 = class_isMetaClass(v11);
      v13 = object_getClassName(a1);
      v36 = sel_getName(a2);
      v14 = 45;
      if (v12)
      {
        v14 = 43;
      }

      v10(3, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring card access", v14, v13, v36, 377);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = object_getClass(a1);
      if (class_isMetaClass(v16))
      {
        v17 = 43;
      }

      else
      {
        v17 = 45;
      }

      *buf = 67109890;
      v43 = v17;
      v44 = 2082;
      v45 = object_getClassName(a1);
      v46 = 2082;
      v47 = sel_getName(a2);
      v48 = 1024;
      v49 = 377;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring card access", buf, 0x22u);
    }

    v18 = [NSError alloc];
    v19 = [NSString stringWithUTF8String:"nfcd"];
    v40[0] = NSLocalizedDescriptionKey;
    v20 = [NSString stringWithUTF8String:"Not entitled"];
    v41[0] = v20;
    v41[1] = &off_100333600;
    v40[1] = @"Line";
    v40[2] = @"Method";
    v21 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v41[2] = v21;
    v40[3] = NSDebugDescriptionErrorKey;
    v22 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 378];
    v41[3] = v22;
    v23 = v41;
    v24 = v40;
  }

  v34 = [NSDictionary dictionaryWithObjects:v23 forKeys:v24 count:4];
  v8 = [v18 initWithDomain:v19 code:32 userInfo:v34];

LABEL_25:

  return v8;
}

- (void)didStartSession:(id)a3
{
  v5.receiver = self;
  v5.super_class = _NFCardSession;
  [(_NFHCESession *)&v5 didStartSession:a3];
  v4 = [(_NFHCESession *)self caLogger];
  if (v4)
  {
    v4[85] = 1;
  }
}

- (BOOL)willStartSession
{
  [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339B70];
  v4.receiver = self;
  v4.super_class = _NFCardSession;
  return [(_NFHCESession *)&v4 willStartSession];
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

    v7(6, "%c[%{public}s %{public}s]:%i %{public}@", v10, ClassName, Name, 416, v5);
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
    v18 = v13;
    v19 = 2082;
    v20 = object_getClassName(self);
    v21 = 2082;
    v22 = sel_getName(a2);
    v23 = 1024;
    v24 = 416;
    v25 = 2114;
    v26 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  v14 = NFSharedSignpostLog();
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_FIELD_NTF", &unk_1002E8B7A, buf, 2u);
  }
}

- (void)cleanup
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

    v5(6, "%c[%{public}s %{public}s]:%i Cleanup ...", v9, ClassName, Name, 422);
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
    v27 = v12;
    v28 = 2082;
    v29 = object_getClassName(self);
    v30 = 2082;
    v31 = sel_getName(a2);
    v32 = 1024;
    v33 = 422;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Cleanup ...", buf, 0x22u);
  }

  if ([(_NFSession *)self needsCleanup])
  {
    [(_NFCardSession *)self _invalidateUIController];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v14 = v13;
      v15 = object_getClass(self);
      v16 = class_isMetaClass(v15);
      v17 = object_getClassName(self);
      v25 = sel_getName(a2);
      v18 = 45;
      if (v16)
      {
        v18 = 43;
      }

      v14(6, "%c[%{public}s %{public}s]:%i Cleanup not needed ...", v18, v17, v25, 424);
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
      *buf = 67109890;
      v27 = v21;
      v28 = 2082;
      v29 = v22;
      v30 = 2082;
      v31 = v23;
      v32 = 1024;
      v33 = 424;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Cleanup not needed ...", buf, 0x22u);
    }
  }
}

- (id)initialRoutingConfigWithField:(id)a3
{
  v5 = a3;
  if ([(_NFHCESession *)self emulationOnSessionStart])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001A7DC0;
    v9[3] = &unk_1003162B8;
    v9[4] = self;
    v9[5] = a2;
    [(_NFCardSession *)self _activateUIControllerWithCompletion:v9];
  }

  v8.receiver = self;
  v8.super_class = _NFCardSession;
  v6 = [(_NFHCESession *)&v8 initialRoutingConfigWithField:v5];

  return v6;
}

- (id)initialRoutingConfig
{
  if ([(_NFHCESession *)self emulationOnSessionStart])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001A8038;
    v7[3] = &unk_1003162B8;
    v7[4] = self;
    v7[5] = a2;
    [(_NFCardSession *)self _activateUIControllerWithCompletion:v7];
  }

  v6.receiver = self;
  v6.super_class = _NFCardSession;
  v4 = [(_NFHCESession *)&v6 initialRoutingConfig];

  return v4;
}

@end