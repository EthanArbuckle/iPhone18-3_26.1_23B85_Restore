@interface _NFSecureElementAndHostCardEmulationSession
+ (id)validateEntitlements:(id)a3;
- (id)_getSecureElementWrapperForSEID:(id)a3;
- (void)didStartSession:(id)a3;
- (void)startEmulationWithCompletion:(id)a3;
- (void)stopEmulationWithCompletion:(id)a3;
- (void)transceive:(id)a3 forSEID:(id)a4 completion:(id)a5;
@end

@implementation _NFSecureElementAndHostCardEmulationSession

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

      v8(3, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring card and SE access", v12, ClassName, Name, 30);
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
      v33 = 30;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring card and SE access", buf, 0x22u);
    }

    v16 = [NSError alloc];
    v17 = [NSString stringWithUTF8String:"nfcd"];
    v24[0] = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithUTF8String:"Not entitled"];
    v25[0] = v18;
    v25[1] = &off_100330408;
    v24[1] = @"Line";
    v24[2] = @"Method";
    v19 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v25[2] = v19;
    v24[3] = NSDebugDescriptionErrorKey;
    v20 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 31];
    v25[3] = v20;
    v21 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];
    v6 = [v16 initWithDomain:v17 code:32 userInfo:v21];
  }

  return v6;
}

- (void)didStartSession:(id)a3
{
  v7.receiver = self;
  v7.super_class = _NFSecureElementAndHostCardEmulationSession;
  [(_NFHCESession *)&v7 didStartSession:a3];
  v4 = +[_NFHardwareManager sharedHardwareManager];
  v5 = [v4 secureElementWrapper];
  embeddedSecureElementWrapper = self->_embeddedSecureElementWrapper;
  self->_embeddedSecureElementWrapper = v5;
}

- (id)_getSecureElementWrapperForSEID:(id)a3
{
  v5 = a3;
  v6 = [(_NFSecureElementAndHostCardEmulationSession *)self embeddedSecureElementWrapper];
  v7 = [v6 serialNumber];
  if ([v7 isEqualToString:v5])
  {

LABEL_4:
    v11 = [(_NFSecureElementAndHostCardEmulationSession *)self embeddedSecureElementWrapper];
    goto LABEL_15;
  }

  v8 = [(_NFSecureElementAndHostCardEmulationSession *)self embeddedSecureElementWrapper];
  v9 = [v8 systemOSSerialNumber];
  v10 = [v9 isEqualToString:v5];

  if (v10)
  {
    goto LABEL_4;
  }

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

    v13(3, "%c[%{public}s %{public}s]:%i Unknown secure element id: %{public}@", v16, ClassName, Name, 55, v5);
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

    *buf = 67110146;
    v24 = v19;
    v25 = 2082;
    v26 = object_getClassName(self);
    v27 = 2082;
    v28 = sel_getName(a2);
    v29 = 1024;
    v30 = 55;
    v31 = 2114;
    v32 = v5;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unknown secure element id: %{public}@", buf, 0x2Cu);
  }

  v11 = 0;
LABEL_15:

  return v11;
}

- (void)startEmulationWithCompletion:(id)a3
{
  v5 = a3;
  kdebug_trace();
  v6 = NFSharedSignpostLog();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_START_EMULATION_XPC", &unk_1002E8B7A, buf, 2u);
  }

  v12.receiver = self;
  v12.super_class = _NFSecureElementAndHostCardEmulationSession;
  v7 = [(_NFSession *)&v12 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100061DDC;
  block[3] = &unk_100316050;
  v10 = v5;
  v11 = a2;
  block[4] = self;
  v8 = v5;
  dispatch_async(v7, block);
}

- (void)stopEmulationWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFSecureElementAndHostCardEmulationSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000624B0;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)transceive:(id)a3 forSEID:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = _NFSecureElementAndHostCardEmulationSession;
  v12 = [(_NFSession *)&v21 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100062B60;
  block[3] = &unk_1003165C0;
  v19 = v11;
  v20 = a2;
  block[4] = self;
  v17 = v10;
  v18 = v9;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  dispatch_async(v12, block);
}

@end