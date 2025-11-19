@interface _NFInternalConfigurationSession
+ (id)validateEntitlements:(id)a3;
- (void)cleanup;
- (void)didStartSession:(id)a3;
- (void)flashFirmware:(id)a3 completion:(id)a4;
- (void)handlMFWNotification:(id)a3;
- (void)readRegisters:(id)a3 operation:(unint64_t)a4 completion:(id)a5;
- (void)sendMFGCommand:(unsigned __int8)a3 payload:(id)a4 completion:(id)a5;
- (void)startContinuousWaveWithCompletion:(id)a3;
- (void)startFieldDetectWithCompletion:(id)a3;
- (void)startLPCDWithCompletion:(id)a3;
- (void)startReaderWithCompletion:(id)a3;
- (void)stopRFActivityWithCompletion:(id)a3;
- (void)writeRegisters:(id)a3 payloads:(id)a4 operation:(unint64_t)a5 completion:(id)a6;
@end

@implementation _NFInternalConfigurationSession

+ (id)validateEntitlements:(id)a3
{
  if ([a3 nfcHardwareRegistersAccess])
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
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
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
      v13 = object_getClass(a1);
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
      v28 = object_getClassName(a1);
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

- (void)didStartSession:(id)a3
{
  v6.receiver = self;
  v6.super_class = _NFInternalConfigurationSession;
  v4 = a3;
  [(_NFXPCSession *)&v6 didStartSession:v4];
  v5 = [(_NFXPCSession *)self remoteObject:v6.receiver];
  [v5 didStartSession:v4];
}

- (void)readRegisters:(id)a3 operation:(unint64_t)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = _NFInternalConfigurationSession;
  v11 = [(_NFSession *)&v20 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001ECDB4;
  block[3] = &unk_1003187D8;
  v15 = v9;
  v16 = self;
  v17 = v10;
  v18 = a2;
  v19 = a4;
  v12 = v10;
  v13 = v9;
  dispatch_async(v11, block);
}

- (void)writeRegisters:(id)a3 payloads:(id)a4 operation:(unint64_t)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = _NFInternalConfigurationSession;
  v14 = [(_NFSession *)&v24 workQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001ED304;
  v18[3] = &unk_10031B830;
  v18[4] = self;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = a2;
  v23 = a5;
  v15 = v12;
  v16 = v11;
  v17 = v13;
  dispatch_async(v14, v18);
}

- (void)flashFirmware:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = _NFInternalConfigurationSession;
  v9 = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001EDB90;
  v12[3] = &unk_1003165E8;
  v14 = v8;
  v15 = a2;
  v12[4] = self;
  v13 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

- (void)sendMFGCommand:(unsigned __int8)a3 payload:(id)a4 completion:(id)a5
{
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _NFInternalConfigurationSession;
  v11 = [(_NFSession *)&v19 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EE0D0;
  block[3] = &unk_100318AB8;
  v16 = v10;
  v17 = a2;
  v18 = a3;
  block[4] = self;
  v15 = v9;
  v12 = v9;
  v13 = v10;
  dispatch_async(v11, block);
}

- (void)startLPCDWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFInternalConfigurationSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EE4D0;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)startReaderWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFInternalConfigurationSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EE8D8;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)startFieldDetectWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFInternalConfigurationSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EECE0;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)startContinuousWaveWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFInternalConfigurationSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EF0EC;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)stopRFActivityWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFInternalConfigurationSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EF4EC;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)handlMFWNotification:(id)a3
{
  v4 = a3;
  v5 = [(_NFXPCSession *)self remoteObject];
  [v5 handlMFWNotification:v4];
}

@end