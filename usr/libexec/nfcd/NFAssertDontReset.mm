@interface NFAssertDontReset
- (BOOL)isEntitled:(id)entitled;
- (BOOL)isSupported;
- (id)onAssert;
- (id)onDeassert;
@end

@implementation NFAssertDontReset

- (BOOL)isEntitled:(id)entitled
{
  nF_whitelistChecker = [entitled NF_whitelistChecker];
  dontResetAssertion = [nF_whitelistChecker dontResetAssertion];

  return dontResetAssertion;
}

- (BOOL)isSupported
{
  v2 = +[_NFHardwareManager sharedHardwareManager];
  controllerInfo = [v2 controllerInfo];
  if ([controllerInfo siliconName] == 14)
  {
    v4 = 1;
  }

  else
  {
    controllerInfo2 = [v2 controllerInfo];
    if ([controllerInfo2 siliconName] == 15)
    {
      v4 = 1;
    }

    else
    {
      controllerInfo3 = [v2 controllerInfo];
      if ([controllerInfo3 siliconName] == 16)
      {
        v4 = 1;
      }

      else
      {
        controllerInfo4 = [v2 controllerInfo];
        v4 = [controllerInfo4 siliconName] == 17;
      }
    }
  }

  return v4;
}

- (id)onAssert
{
  [(NFAsserter *)self setState:2];
  v4 = +[_NFHardwareManager sharedHardwareManager];
  remoteAssertion = [(NFAsserter *)self remoteAssertion];
  v6 = sub_10017C8A0(v4, remoteAssertion);

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
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v8(3, "%c[%{public}s %{public}s]:%i Failed to open session for assertion: %{public}@", v11, ClassName, Name, 40, v6);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

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
    v31 = v14;
    v32 = 2082;
    v33 = object_getClassName(self);
    v34 = 2082;
    v35 = sel_getName(a2);
    v36 = 1024;
    v37 = 40;
    v38 = 2114;
    v39 = v6;
    v15 = "%c[%{public}s %{public}s]:%i Failed to open session for assertion: %{public}@";
    goto LABEL_21;
  }

  driverWrapper = [v4 driverWrapper];
  v6 = sub_1002248A4(driverWrapper, 1);

  if (!v6)
  {
    goto LABEL_23;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v17 = NFLogGetLogger();
  if (v17)
  {
    v18 = v17;
    v19 = object_getClass(self);
    v20 = class_isMetaClass(v19);
    v27 = object_getClassName(self);
    v29 = sel_getName(a2);
    v21 = 45;
    if (v20)
    {
      v21 = 43;
    }

    v18(3, "%c[%{public}s %{public}s]:%i Failed to set don't reset flag: %{public}@", v21, v27, v29, 46, v6);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v22 = object_getClass(self);
    if (class_isMetaClass(v22))
    {
      v23 = 43;
    }

    else
    {
      v23 = 45;
    }

    *buf = 67110146;
    v31 = v23;
    v32 = 2082;
    v33 = object_getClassName(self);
    v34 = 2082;
    v35 = sel_getName(a2);
    v36 = 1024;
    v37 = 46;
    v38 = 2114;
    v39 = v6;
    v15 = "%c[%{public}s %{public}s]:%i Failed to set don't reset flag: %{public}@";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v15, buf, 0x2Cu);
  }

LABEL_22:

LABEL_23:
  v24 = v6;

  return v24;
}

- (id)onDeassert
{
  [(NFAsserter *)self setState:4];
  v3 = +[_NFHardwareManager sharedHardwareManager];
  driverWrapper = [v3 driverWrapper];
  v5 = sub_1002248A4(driverWrapper, 0);

  remoteAssertion = [(NFAsserter *)self remoteAssertion];
  sub_10017D8F4(v3, remoteAssertion);

  return 0;
}

@end