@interface NFHostCardEmulationDeviceHandle
- (BOOL)sendAPDU:(id)u;
- (id)readApduAndReturnError:(id *)error;
- (void)readAPDUWithCompletion:(id)completion;
@end

@implementation NFHostCardEmulationDeviceHandle

- (id)readApduAndReturnError:(id *)error
{
  devHandle = self->_devHandle;
  v4 = sub_100196C90(self->_driver);
  if (v4 && v4[1])
  {
    v5 = [[NSData alloc] initWithBytes:*v4 length:v4[1]];
  }

  else
  {
    v5 = 0;
  }

  NFDataRelease();

  return v5;
}

- (void)readAPDUWithCompletion:(id)completion
{
  completionCopy = completion;
  driver = self->_driver;
  devHandle = self->_devHandle;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100147014;
  v8[3] = &unk_100319690;
  v9 = completionCopy;
  v7 = completionCopy;
  sub_100197048(driver, devHandle, v8);
}

- (BOOL)sendAPDU:(id)u
{
  driver = self->_driver;
  devHandle = self->_devHandle;
  uCopy = u;
  uCopy2 = u;
  [uCopy2 bytes];
  [uCopy2 length];

  v10 = sub_100197918(driver);
  if ((v10 & 1) == 0)
  {
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

      v12(3, "%c[%{public}s %{public}s]:%i Failed to initiate send of data", v16, ClassName, Name, 53);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
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

      *buf = 67109890;
      v23 = v19;
      v24 = 2082;
      v25 = object_getClassName(self);
      v26 = 2082;
      v27 = sel_getName(a2);
      v28 = 1024;
      v29 = 53;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to initiate send of data", buf, 0x22u);
    }
  }

  return v10;
}

@end