@interface NFAssertSuppressPresentmentIntentToDefaultApp
- (BOOL)isEntitled:(id)entitled;
- (id)onAssert;
- (id)onDeassert;
@end

@implementation NFAssertSuppressPresentmentIntentToDefaultApp

- (BOOL)isEntitled:(id)entitled
{
  entitledCopy = entitled;
  nF_serviceType = [entitledCopy NF_serviceType];
  v5 = nF_serviceType;
  if (!nF_serviceType)
  {
    nF_whitelistChecker = [entitledCopy NF_whitelistChecker];
    goto LABEL_9;
  }

  unsignedIntegerValue = [nF_serviceType unsignedIntegerValue];
  unsignedIntegerValue2 = [v5 unsignedIntegerValue];
  nF_whitelistChecker2 = [entitledCopy NF_whitelistChecker];
  nF_whitelistChecker = nF_whitelistChecker2;
  if (unsignedIntegerValue == 2)
  {
    nfcCardSessionAccess = [nF_whitelistChecker2 nfcCardSessionAccess];
    goto LABEL_4;
  }

  if (unsignedIntegerValue2 != 1)
  {
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  if ([nF_whitelistChecker2 seCredentialManagerAccess])
  {
    v11 = 1;
    goto LABEL_10;
  }

  nfcCardSessionAccess = [nF_whitelistChecker internalAccess];
LABEL_4:
  v11 = nfcCardSessionAccess;
LABEL_10:

  return v11;
}

- (id)onAssert
{
  [(NFAsserter *)self setState:2];
  v4 = +[_NFHardwareManager sharedHardwareManager];
  v5 = v4;
  v32 = 0;
  if (self)
  {
    fieldDetectOnly = self->_fieldDetectOnly;
    if (fieldDetectOnly)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    if (v4)
    {
LABEL_6:
      v8 = *(v4 + 128);
      if (v8)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    fieldDetectOnly = 0;
    v7 = 1;
    if (v4)
    {
      goto LABEL_6;
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
    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v10(4, "%c[%{public}s %{public}s]:%i Presentation service is not available", v14, ClassName, Name, 85);
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

    *buf = 67109890;
    *&buf[4] = v17;
    v36 = 2082;
    v37 = object_getClassName(self);
    v38 = 2082;
    v39 = sel_getName(a2);
    v40 = 1024;
    v41 = 85;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Presentation service is not available", buf, 0x22u);
  }

  sub_100199548(NFBugCapture, @"Assertion Failure", @"[NFAssertSuppressPresentmentIntentToDefaultApp onAssert]", @"Presentation service is not available", 0, 0);
  v8 = 0;
LABEL_17:
  *buf = 0;
  remoteAssertion = [(NFAsserter *)self remoteAssertion];
  v19 = [remoteAssertion description];
  v20 = [v8 assert:v7 requestor:v19 isFirst:&v32 updatedVal:buf];

  if (v20)
  {
    if (fieldDetectOnly || (v32 & 1) == 0)
    {
      v21 = 0;
      goto LABEL_25;
    }

    if (v5)
    {
      v28 = v5[52];
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;
    [v29 queueSuspend];

    expressModeManager = [v5 expressModeManager];
    sub_100031A1C(expressModeManager, 1, 0);
    v21 = 0;
  }

  else
  {
    v22 = [NSError alloc];
    expressModeManager = [NSString stringWithUTF8String:"nfcd"];
    v33[0] = NSLocalizedDescriptionKey;
    v24 = [NSString stringWithUTF8String:"Invalid State"];
    v34[0] = v24;
    v34[1] = &off_100332B50;
    v33[1] = @"Line";
    v33[2] = @"Method";
    v25 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v34[2] = v25;
    v33[3] = NSDebugDescriptionErrorKey;
    v26 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 112];
    v34[3] = v26;
    v27 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:4];
    v21 = [v22 initWithDomain:expressModeManager code:12 userInfo:v27];
  }

LABEL_25:

  return v21;
}

- (id)onDeassert
{
  [(NFAsserter *)self setState:4];
  v4 = +[_NFHardwareManager sharedHardwareManager];
  v5 = v4;
  v64 = 0;
  if (self)
  {
    fieldDetectOnly = self->_fieldDetectOnly;
    if (fieldDetectOnly)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    if (v4)
    {
LABEL_6:
      v8 = *(v4 + 128);
      if (v8)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    fieldDetectOnly = 0;
    v7 = 1;
    if (v4)
    {
      goto LABEL_6;
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
    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v10(4, "%c[%{public}s %{public}s]:%i Presentation service is not available", v14, ClassName, Name, 133);
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

    *buf = 67109890;
    v68 = v17;
    v69 = 2082;
    v70 = object_getClassName(self);
    v71 = 2082;
    v72 = sel_getName(a2);
    v73 = 1024;
    v74 = 133;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Presentation service is not available", buf, 0x22u);
  }

  sub_100199548(NFBugCapture, @"Assertion Failure", @"[NFAssertSuppressPresentmentIntentToDefaultApp onDeassert]", @"Presentation service is not available", 0, 0);
  v8 = 0;
LABEL_17:
  v63 = 0;
  remoteAssertion = [(NFAsserter *)self remoteAssertion];
  v19 = [remoteAssertion description];
  v20 = [v8 deassert:v7 requestor:v19 isLast:&v64 updatedVal:&v63];

  if (v20)
  {
    if (fieldDetectOnly || (v64 & 1) == 0)
    {
      v21 = 0;
      goto LABEL_52;
    }

    expressModeManager = [v5 expressModeManager];
    if (v5)
    {
      v28 = v5[52];
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;
    [v29 queueResume];

    expressModeManager2 = [v5 expressModeManager];
    sub_100031A1C(expressModeManager2, 0, 0);

    if (expressModeManager)
    {
      v31 = expressModeManager[181];
    }

    else
    {
      v31 = 0;
    }

    v32 = sub_100006030(expressModeManager);
    if (sub_1000065FC(v5))
    {
      v33 = [(NFAsserter *)self xpc];
      v34 = sub_1000E9E3C(v5, v33);

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v35 = NFLogGetLogger();
      if (v35)
      {
        v36 = v35;
        v37 = object_getClass(self);
        v38 = class_isMetaClass(v37);
        v62 = object_getClassName(self);
        v60 = sel_getName(a2);
        v39 = 45;
        if (v38)
        {
          v39 = 43;
        }

        v36(6, "%c[%{public}s %{public}s]:%i expressInProgress=%d, expressIsActive=%d, requestorHoldsActiveSession=%d", v39, v62, v60, 167, v31 & 1, v32, v34);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v40 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = object_getClass(self);
        if (class_isMetaClass(v41))
        {
          v42 = 43;
        }

        else
        {
          v42 = 45;
        }

        v43 = object_getClassName(self);
        v44 = sel_getName(a2);
        *buf = 67110658;
        v68 = v42;
        v69 = 2082;
        v70 = v43;
        v71 = 2082;
        v72 = v44;
        v73 = 1024;
        v74 = 167;
        v75 = 1024;
        v76 = v31 & 1;
        v77 = 1024;
        v78 = v32;
        v79 = 1024;
        v80 = v34;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i expressInProgress=%d, expressIsActive=%d, requestorHoldsActiveSession=%d", buf, 0x34u);
      }

      v21 = 0;
      if (v31 & 1 | !v32 || ((v34 ^ 1) & 1) != 0)
      {
        goto LABEL_51;
      }

      lastKnownRoutingConfig = [v5 lastKnownRoutingConfig];
      contactlessOnAny = [lastKnownRoutingConfig contactlessOnAny];

      if (contactlessOnAny)
      {
        goto LABEL_50;
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v47 = NFLogGetLogger();
      if (v47)
      {
        v48 = v47;
        v49 = object_getClass(self);
        v50 = class_isMetaClass(v49);
        v51 = object_getClassName(self);
        v61 = sel_getName(a2);
        v52 = 45;
        if (v50)
        {
          v52 = 43;
        }

        v48(6, "%c[%{public}s %{public}s]:%i expressInProgress=%d, expressIsActive=%d", v52, v51, v61, 165, v31 & 1, v32);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v53 = NFSharedLogGetLogger();
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
        *buf = 67110402;
        v68 = v55;
        v69 = 2082;
        v70 = v56;
        v71 = 2082;
        v72 = v57;
        v73 = 1024;
        v74 = 165;
        v75 = 1024;
        v76 = v31 & 1;
        v77 = 1024;
        v78 = v32;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i expressInProgress=%d, expressIsActive=%d", buf, 0x2Eu);
      }

      if (v31 & 1 | !v32)
      {
        goto LABEL_50;
      }
    }

    sub_10002E9BC(expressModeManager);
    [v5 maybeStartNextSession];
LABEL_50:
    v21 = 0;
    goto LABEL_51;
  }

  v22 = [NSError alloc];
  expressModeManager = [NSString stringWithUTF8String:"nfcd"];
  v65[0] = NSLocalizedDescriptionKey;
  v24 = [NSString stringWithUTF8String:"Invalid State"];
  v66[0] = v24;
  v66[1] = &off_100332B68;
  v65[1] = @"Line";
  v65[2] = @"Method";
  v25 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
  v66[2] = v25;
  v65[3] = NSDebugDescriptionErrorKey;
  v26 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 188];
  v66[3] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:4];
  v21 = [v22 initWithDomain:expressModeManager code:12 userInfo:v27];

LABEL_51:
LABEL_52:

  return v21;
}

@end