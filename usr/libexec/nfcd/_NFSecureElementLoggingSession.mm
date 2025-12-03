@interface _NFSecureElementLoggingSession
+ (id)validateEntitlements:(id)entitlements;
- (id)_getSecureElementWrapperForSEID:(id)d;
- (void)clearLogs:(unsigned __int8)logs forSEID:(id)d completion:(id)completion;
- (void)didStartSession:(id)session;
- (void)enableSMBLogging:(BOOL)logging completion:(id)completion;
- (void)getACLogWithCompletion:(id)completion;
- (void)getAndClearAssertionLogsWithCompletion:(id)completion;
- (void)getLogs:(unsigned __int8)logs forSEID:(id)d completion:(id)completion;
- (void)getSMBLogWithCompletion:(id)completion;
@end

@implementation _NFSecureElementLoggingSession

+ (id)validateEntitlements:(id)entitlements
{
  entitlementsCopy = entitlements;
  if ([entitlementsCopy seSessionAccess] & 1) != 0 || (objc_msgSend(entitlementsCopy, "seLoggingSessionAccess"))
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
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
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
      v27 = v15;
      v28 = 2082;
      v29 = object_getClassName(self);
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

- (void)didStartSession:(id)session
{
  v9.receiver = self;
  v9.super_class = _NFSecureElementLoggingSession;
  sessionCopy = session;
  [(_NFXPCSession *)&v9 didStartSession:sessionCopy];
  v5 = [_NFHardwareManager sharedHardwareManager:v9.receiver];
  secureElementWrapper = [v5 secureElementWrapper];
  embeddedSecureElementWrapper = self->_embeddedSecureElementWrapper;
  self->_embeddedSecureElementWrapper = secureElementWrapper;

  remoteObject = [(_NFXPCSession *)self remoteObject];
  [remoteObject didStartSession:sessionCopy];
}

- (id)_getSecureElementWrapperForSEID:(id)d
{
  dCopy = d;
  embeddedSecureElementWrapper = [(_NFSecureElementLoggingSession *)self embeddedSecureElementWrapper];
  serialNumber = [embeddedSecureElementWrapper serialNumber];
  if ([serialNumber isEqualToString:dCopy])
  {

LABEL_4:
    embeddedSecureElementWrapper2 = [(_NFSecureElementLoggingSession *)self embeddedSecureElementWrapper];
    goto LABEL_15;
  }

  embeddedSecureElementWrapper3 = [(_NFSecureElementLoggingSession *)self embeddedSecureElementWrapper];
  systemOSSerialNumber = [embeddedSecureElementWrapper3 systemOSSerialNumber];
  v10 = [systemOSSerialNumber isEqualToString:dCopy];

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

    v13(3, "%c[%{public}s %{public}s]:%i Unknown secure element id: %{public}@", v16, ClassName, Name, 55, dCopy);
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
    v32 = dCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unknown secure element id: %{public}@", buf, 0x2Cu);
  }

  embeddedSecureElementWrapper2 = 0;
LABEL_15:

  return embeddedSecureElementWrapper2;
}

- (void)getLogs:(unsigned __int8)logs forSEID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v19.receiver = self;
  v19.super_class = _NFSecureElementLoggingSession;
  workQueue = [(_NFSession *)&v19 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002092D4;
  block[3] = &unk_100318AB8;
  v16 = completionCopy;
  v17 = a2;
  block[4] = self;
  v15 = dCopy;
  logsCopy = logs;
  v12 = dCopy;
  v13 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)clearLogs:(unsigned __int8)logs forSEID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v19.receiver = self;
  v19.super_class = _NFSecureElementLoggingSession;
  workQueue = [(_NFSession *)&v19 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002098A4;
  block[3] = &unk_100318AB8;
  v16 = completionCopy;
  v17 = a2;
  block[4] = self;
  v15 = dCopy;
  logsCopy = logs;
  v12 = dCopy;
  v13 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)getACLogWithCompletion:(id)completion
{
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = _NFSecureElementLoggingSession;
  workQueue = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100209E34;
  block[3] = &unk_100316050;
  v9 = completionCopy;
  v10 = a2;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)enableSMBLogging:(BOOL)logging completion:(id)completion
{
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = _NFSecureElementLoggingSession;
  workQueue = [(_NFSession *)&v14 workQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10020A2F8;
  v10[3] = &unk_100316FA0;
  v11 = completionCopy;
  v12 = a2;
  v10[4] = self;
  loggingCopy = logging;
  v9 = completionCopy;
  dispatch_async(workQueue, v10);
}

- (void)getSMBLogWithCompletion:(id)completion
{
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = _NFSecureElementLoggingSession;
  workQueue = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020AAF0;
  block[3] = &unk_100316050;
  v9 = completionCopy;
  v10 = a2;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)getAndClearAssertionLogsWithCompletion:(id)completion
{
  completionCopy = completion;
  v9.receiver = self;
  v9.super_class = _NFSecureElementLoggingSession;
  workQueue = [(_NFSession *)&v9 workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10020B39C;
  v7[3] = &unk_100316700;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

@end