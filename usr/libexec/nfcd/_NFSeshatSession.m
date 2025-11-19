@interface _NFSeshatSession
+ (id)validateEntitlements:(id)a3;
- (void)allocateSlot:(unsigned __int8)a3 authorizingUser:(unsigned __int8)a4 authorizingUserToken:(id)a5 completion:(id)a6;
- (void)authorizeUpdate:(BOOL)a3 slotIndex:(unsigned __int8)a4 userToken:(id)a5 completion:(id)a6;
- (void)deleteSlot:(unsigned __int8)a3 completion:(id)a4;
- (void)derive:(unsigned __int8)a3 userHash:(id)a4 completion:(id)a5;
- (void)didStartSession:(id)a3;
- (void)getDataWithCompletion:(id)a3;
- (void)getHashWithCompletion:(id)a3;
- (void)obliterateWithCompletion:(id)a3;
- (void)resetCounter:(unsigned __int8)a3 userToken:(id)a4 completion:(id)a5;
- (void)upgradeKey:(unsigned __int8)a3 inputData:(id)a4 completion:(id)a5;
@end

@implementation _NFSeshatSession

+ (id)validateEntitlements:(id)a3
{
  if ([a3 seshatAccess])
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

      v7(3, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring seshat access", v11, ClassName, Name, 33);
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
      v32 = 33;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring seshat access", buf, 0x22u);
    }

    v15 = [NSError alloc];
    v16 = [NSString stringWithUTF8String:"nfcd"];
    v23[0] = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithUTF8String:"Not entitled"];
    v24[0] = v17;
    v24[1] = &off_100336648;
    v23[1] = @"Line";
    v23[2] = @"Method";
    v18 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v24[2] = v18;
    v23[3] = NSDebugDescriptionErrorKey;
    v19 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 34];
    v24[3] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
    v5 = [v15 initWithDomain:v16 code:32 userInfo:v20];
  }

  return v5;
}

- (void)didStartSession:(id)a3
{
  v9.receiver = self;
  v9.super_class = _NFSeshatSession;
  v4 = a3;
  [(_NFXPCSession *)&v9 didStartSession:v4];
  v5 = [_NFHardwareManager sharedHardwareManager:v9.receiver];
  v6 = [v5 secureElementWrapper];
  embeddedSecureElementWrapper = self->_embeddedSecureElementWrapper;
  self->_embeddedSecureElementWrapper = v6;

  v8 = [(_NFXPCSession *)self remoteObject];
  [v8 didStartSession:v4];
}

- (void)allocateSlot:(unsigned __int8)a3 authorizingUser:(unsigned __int8)a4 authorizingUserToken:(id)a5 completion:(id)a6
{
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = _NFSeshatSession;
  v13 = [(_NFSession *)&v22 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002381D0;
  block[3] = &unk_10031CC30;
  v18 = v12;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  block[4] = self;
  v17 = v11;
  v14 = v11;
  v15 = v12;
  dispatch_async(v13, block);
}

- (void)derive:(unsigned __int8)a3 userHash:(id)a4 completion:(id)a5
{
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _NFSeshatSession;
  v11 = [(_NFSession *)&v19 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100238BE0;
  block[3] = &unk_100317360;
  v18 = a3;
  block[4] = self;
  v15 = v9;
  v16 = v10;
  v17 = a2;
  v12 = v10;
  v13 = v9;
  dispatch_async(v11, block);
}

- (void)resetCounter:(unsigned __int8)a3 userToken:(id)a4 completion:(id)a5
{
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _NFSeshatSession;
  v11 = [(_NFSession *)&v19 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002395D0;
  block[3] = &unk_100317360;
  v18 = a3;
  block[4] = self;
  v15 = v9;
  v16 = v10;
  v17 = a2;
  v12 = v10;
  v13 = v9;
  dispatch_async(v11, block);
}

- (void)authorizeUpdate:(BOOL)a3 slotIndex:(unsigned __int8)a4 userToken:(id)a5 completion:(id)a6
{
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = _NFSeshatSession;
  v13 = [(_NFSession *)&v22 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100239FA8;
  block[3] = &unk_10031CC30;
  v20 = a3;
  v21 = a4;
  block[4] = self;
  v17 = v11;
  v18 = v12;
  v19 = a2;
  v14 = v12;
  v15 = v11;
  dispatch_async(v13, block);
}

- (void)deleteSlot:(unsigned __int8)a3 completion:(id)a4
{
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _NFSeshatSession;
  v8 = [(_NFSession *)&v14 workQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10023A988;
  v10[3] = &unk_100316FA0;
  v11 = v7;
  v12 = a2;
  v13 = a3;
  v10[4] = self;
  v9 = v7;
  dispatch_async(v8, v10);
}

- (void)getDataWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFSeshatSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10023B2C0;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)getHashWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFSeshatSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10023BC14;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)upgradeKey:(unsigned __int8)a3 inputData:(id)a4 completion:(id)a5
{
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _NFSeshatSession;
  v11 = [(_NFSession *)&v19 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10023C570;
  block[3] = &unk_100317360;
  v18 = a3;
  block[4] = self;
  v15 = v9;
  v16 = v10;
  v17 = a2;
  v12 = v10;
  v13 = v9;
  dispatch_async(v11, block);
}

- (void)obliterateWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFSeshatSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10023CF08;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

@end