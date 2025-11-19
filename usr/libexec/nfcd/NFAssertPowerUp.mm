@interface NFAssertPowerUp
- (BOOL)isSupported;
- (id)onAssert;
- (id)onDeassert;
@end

@implementation NFAssertPowerUp

- (BOOL)isSupported
{
  v2 = +[_NFHardwareManager sharedHardwareManager];
  v3 = [v2 controllerInfo];
  if ([v3 siliconName] == 14)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 controllerInfo];
    if ([v5 siliconName] == 15)
    {
      v4 = 1;
    }

    else
    {
      v6 = [v2 controllerInfo];
      if ([v6 siliconName] == 16)
      {
        v4 = 1;
      }

      else
      {
        v7 = [v2 controllerInfo];
        v4 = [v7 siliconName] == 17;
      }
    }
  }

  return v4;
}

- (id)onAssert
{
  [(NFAsserter *)self setState:2];
  v4 = +[_NFHardwareManager sharedHardwareManager];
  v5 = [(NFAsserter *)self remoteAssertion];
  v6 = sub_10017C8A0(v4, v5);

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

      v8(3, "%c[%{public}s %{public}s]:%i Failed to open session for assertion: %{public}@", v11, ClassName, Name, 36, v6);
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

      *buf = 67110146;
      v19 = v14;
      v20 = 2082;
      v21 = object_getClassName(self);
      v22 = 2082;
      v23 = sel_getName(a2);
      v24 = 1024;
      v25 = 36;
      v26 = 2114;
      v27 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session for assertion: %{public}@", buf, 0x2Cu);
    }
  }

  return v6;
}

- (id)onDeassert
{
  [(NFAsserter *)self setState:4];
  v3 = +[_NFHardwareManager sharedHardwareManager];
  v4 = [(NFAsserter *)self remoteAssertion];
  sub_10017D8F4(v3, v4);

  return 0;
}

@end