@interface _NFInternalConfigurationSession
+ (id)validateEntitlements:(id)entitlements;
- (void)cleanup;
- (void)didStartSession:(id)session;
- (void)flashFirmware:(id)firmware completion:(id)completion;
- (void)handlMFWNotification:(id)notification;
- (void)readRegisters:(id)registers operation:(unint64_t)operation completion:(id)completion;
- (void)sendMFGCommand:(unsigned __int8)command payload:(id)payload completion:(id)completion;
- (void)startContinuousWaveWithCompletion:(id)completion;
- (void)startFieldDetectWithCompletion:(id)completion;
- (void)startLPCDWithCompletion:(id)completion;
- (void)startReaderWithCompletion:(id)completion;
- (void)stopRFActivityWithCompletion:(id)completion;
- (void)writeRegisters:(id)registers payloads:(id)payloads operation:(unint64_t)operation completion:(id)completion;
@end

@implementation _NFInternalConfigurationSession

+ (id)validateEntitlements:(id)entitlements
{
  if ([entitlements nfcHardwareRegistersAccess])
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

      v7(3, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring card access", v11, ClassName, Name, 27);
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
      v32 = 27;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring card access", buf, 0x22u);
    }

    v15 = [NSError alloc];
    v16 = [NSString stringWithUTF8String:"nfcd"];
    v23[0] = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithUTF8String:"Not entitled"];
    v24[0] = v17;
    v24[1] = &off_1003359D0;
    v23[1] = @"Line";
    v23[2] = @"Method";
    v18 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v24[2] = v18;
    v23[3] = NSDebugDescriptionErrorKey;
    v19 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 28];
    v24[3] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
    v5 = [v15 initWithDomain:v16 code:32 userInfo:v20];
  }

  return v5;
}

- (void)cleanup
{
  v2.receiver = self;
  v2.super_class = _NFInternalConfigurationSession;
  [(_NFSession *)&v2 cleanup];
}

- (void)didStartSession:(id)session
{
  v6.receiver = self;
  v6.super_class = _NFInternalConfigurationSession;
  sessionCopy = session;
  [(_NFXPCSession *)&v6 didStartSession:sessionCopy];
  v5 = [(_NFXPCSession *)self remoteObject:v6.receiver];
  [v5 didStartSession:sessionCopy];
}

- (void)readRegisters:(id)registers operation:(unint64_t)operation completion:(id)completion
{
  registersCopy = registers;
  completionCopy = completion;
  v20.receiver = self;
  v20.super_class = _NFInternalConfigurationSession;
  workQueue = [(_NFSession *)&v20 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001ECDB4;
  block[3] = &unk_1003187D8;
  v15 = registersCopy;
  selfCopy = self;
  v17 = completionCopy;
  v18 = a2;
  operationCopy = operation;
  v12 = completionCopy;
  v13 = registersCopy;
  dispatch_async(workQueue, block);
}

- (void)writeRegisters:(id)registers payloads:(id)payloads operation:(unint64_t)operation completion:(id)completion
{
  registersCopy = registers;
  payloadsCopy = payloads;
  completionCopy = completion;
  v24.receiver = self;
  v24.super_class = _NFInternalConfigurationSession;
  workQueue = [(_NFSession *)&v24 workQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001ED304;
  v18[3] = &unk_10031B830;
  v18[4] = self;
  v19 = registersCopy;
  v20 = payloadsCopy;
  v21 = completionCopy;
  v22 = a2;
  operationCopy = operation;
  v15 = payloadsCopy;
  v16 = registersCopy;
  v17 = completionCopy;
  dispatch_async(workQueue, v18);
}

- (void)flashFirmware:(id)firmware completion:(id)completion
{
  firmwareCopy = firmware;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = _NFInternalConfigurationSession;
  workQueue = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001EDB90;
  v12[3] = &unk_1003165E8;
  v14 = completionCopy;
  v15 = a2;
  v12[4] = self;
  v13 = firmwareCopy;
  v10 = firmwareCopy;
  v11 = completionCopy;
  dispatch_async(workQueue, v12);
}

- (void)sendMFGCommand:(unsigned __int8)command payload:(id)payload completion:(id)completion
{
  payloadCopy = payload;
  completionCopy = completion;
  v19.receiver = self;
  v19.super_class = _NFInternalConfigurationSession;
  workQueue = [(_NFSession *)&v19 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EE0D0;
  block[3] = &unk_100318AB8;
  v16 = completionCopy;
  v17 = a2;
  commandCopy = command;
  block[4] = self;
  v15 = payloadCopy;
  v12 = payloadCopy;
  v13 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)startLPCDWithCompletion:(id)completion
{
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = _NFInternalConfigurationSession;
  workQueue = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EE4D0;
  block[3] = &unk_100316050;
  v9 = completionCopy;
  v10 = a2;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)startReaderWithCompletion:(id)completion
{
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = _NFInternalConfigurationSession;
  workQueue = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EE8D8;
  block[3] = &unk_100316050;
  v9 = completionCopy;
  v10 = a2;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)startFieldDetectWithCompletion:(id)completion
{
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = _NFInternalConfigurationSession;
  workQueue = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EECE0;
  block[3] = &unk_100316050;
  v9 = completionCopy;
  v10 = a2;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)startContinuousWaveWithCompletion:(id)completion
{
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = _NFInternalConfigurationSession;
  workQueue = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EF0EC;
  block[3] = &unk_100316050;
  v9 = completionCopy;
  v10 = a2;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)stopRFActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = _NFInternalConfigurationSession;
  workQueue = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EF4EC;
  block[3] = &unk_100316050;
  v9 = completionCopy;
  v10 = a2;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)handlMFWNotification:(id)notification
{
  notificationCopy = notification;
  remoteObject = [(_NFXPCSession *)self remoteObject];
  [remoteObject handlMFWNotification:notificationCopy];
}

@end