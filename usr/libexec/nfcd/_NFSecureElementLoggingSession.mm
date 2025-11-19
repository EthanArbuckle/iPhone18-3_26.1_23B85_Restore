@interface _NFSecureElementLoggingSession
+ (id)validateEntitlements:(id)a3;
- (id)_getSecureElementWrapperForSEID:(id)a3;
- (void)clearLogs:(unsigned __int8)a3 forSEID:(id)a4 completion:(id)a5;
- (void)didStartSession:(id)a3;
- (void)enableSMBLogging:(BOOL)a3 completion:(id)a4;
- (void)getACLogWithCompletion:(id)a3;
- (void)getAndClearAssertionLogsWithCompletion:(id)a3;
- (void)getLogs:(unsigned __int8)a3 forSEID:(id)a4 completion:(id)a5;
- (void)getSMBLogWithCompletion:(id)a3;
@end

@implementation _NFSecureElementLoggingSession

+ (id)validateEntitlements:(id)a3
{
  v5 = a3;
  if ([v5 seSessionAccess] & 1) != 0 || (objc_msgSend(v5, "seLoggingSessionAccess"))
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

      v8(3, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring SE access", v12, ClassName, Name, 29);
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
      v33 = 29;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring SE access", buf, 0x22u);
    }

    v16 = [NSError alloc];
    v17 = [NSString stringWithUTF8String:"nfcd"];
    v24[0] = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithUTF8String:"Not entitled"];
    v25[0] = v18;
    v25[1] = &off_100335DC0;
    v24[1] = @"Line";
    v24[2] = @"Method";
    v19 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v25[2] = v19;
    v24[3] = NSDebugDescriptionErrorKey;
    v20 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 30];
    v25[3] = v20;
    v21 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];
    v6 = [v16 initWithDomain:v17 code:32 userInfo:v21];
  }

  return v6;
}

- (void)didStartSession:(id)a3
{
  v9.receiver = self;
  v9.super_class = _NFSecureElementLoggingSession;
  v4 = a3;
  [(_NFXPCSession *)&v9 didStartSession:v4];
  v5 = [_NFHardwareManager sharedHardwareManager:v9.receiver];
  v6 = [v5 secureElementWrapper];
  embeddedSecureElementWrapper = self->_embeddedSecureElementWrapper;
  self->_embeddedSecureElementWrapper = v6;

  v8 = [(_NFXPCSession *)self remoteObject];
  [v8 didStartSession:v4];
}

- (id)_getSecureElementWrapperForSEID:(id)a3
{
  v5 = a3;
  v6 = [(_NFSecureElementLoggingSession *)self embeddedSecureElementWrapper];
  v7 = [v6 serialNumber];
  if ([v7 isEqualToString:v5])
  {

LABEL_4:
    v11 = [(_NFSecureElementLoggingSession *)self embeddedSecureElementWrapper];
    goto LABEL_15;
  }

  v8 = [(_NFSecureElementLoggingSession *)self embeddedSecureElementWrapper];
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

- (void)getLogs:(unsigned __int8)a3 forSEID:(id)a4 completion:(id)a5
{
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _NFSecureElementLoggingSession;
  v11 = [(_NFSession *)&v19 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002092D4;
  block[3] = &unk_100318AB8;
  v16 = v10;
  v17 = a2;
  block[4] = self;
  v15 = v9;
  v18 = a3;
  v12 = v9;
  v13 = v10;
  dispatch_async(v11, block);
}

- (void)clearLogs:(unsigned __int8)a3 forSEID:(id)a4 completion:(id)a5
{
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _NFSecureElementLoggingSession;
  v11 = [(_NFSession *)&v19 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002098A4;
  block[3] = &unk_100318AB8;
  v16 = v10;
  v17 = a2;
  block[4] = self;
  v15 = v9;
  v18 = a3;
  v12 = v9;
  v13 = v10;
  dispatch_async(v11, block);
}

- (void)getACLogWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFSecureElementLoggingSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100209E34;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)enableSMBLogging:(BOOL)a3 completion:(id)a4
{
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _NFSecureElementLoggingSession;
  v8 = [(_NFSession *)&v14 workQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10020A2F8;
  v10[3] = &unk_100316FA0;
  v11 = v7;
  v12 = a2;
  v10[4] = self;
  v13 = a3;
  v9 = v7;
  dispatch_async(v8, v10);
}

- (void)getSMBLogWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFSecureElementLoggingSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020AAF0;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)getAndClearAssertionLogsWithCompletion:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _NFSecureElementLoggingSession;
  v5 = [(_NFSession *)&v9 workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10020B39C;
  v7[3] = &unk_100316700;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

@end