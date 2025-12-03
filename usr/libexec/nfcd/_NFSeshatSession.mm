@interface _NFSeshatSession
+ (id)validateEntitlements:(id)entitlements;
- (void)allocateSlot:(unsigned __int8)slot authorizingUser:(unsigned __int8)user authorizingUserToken:(id)token completion:(id)completion;
- (void)authorizeUpdate:(BOOL)update slotIndex:(unsigned __int8)index userToken:(id)token completion:(id)completion;
- (void)deleteSlot:(unsigned __int8)slot completion:(id)completion;
- (void)derive:(unsigned __int8)derive userHash:(id)hash completion:(id)completion;
- (void)didStartSession:(id)session;
- (void)getDataWithCompletion:(id)completion;
- (void)getHashWithCompletion:(id)completion;
- (void)obliterateWithCompletion:(id)completion;
- (void)resetCounter:(unsigned __int8)counter userToken:(id)token completion:(id)completion;
- (void)upgradeKey:(unsigned __int8)key inputData:(id)data completion:(id)completion;
@end

@implementation _NFSeshatSession

+ (id)validateEntitlements:(id)entitlements
{
  if ([entitlements seshatAccess])
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

      v7(3, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring seshat access", v11, ClassName, Name, 33);
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

- (void)didStartSession:(id)session
{
  v9.receiver = self;
  v9.super_class = _NFSeshatSession;
  sessionCopy = session;
  [(_NFXPCSession *)&v9 didStartSession:sessionCopy];
  v5 = [_NFHardwareManager sharedHardwareManager:v9.receiver];
  secureElementWrapper = [v5 secureElementWrapper];
  embeddedSecureElementWrapper = self->_embeddedSecureElementWrapper;
  self->_embeddedSecureElementWrapper = secureElementWrapper;

  remoteObject = [(_NFXPCSession *)self remoteObject];
  [remoteObject didStartSession:sessionCopy];
}

- (void)allocateSlot:(unsigned __int8)slot authorizingUser:(unsigned __int8)user authorizingUserToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  v22.receiver = self;
  v22.super_class = _NFSeshatSession;
  workQueue = [(_NFSession *)&v22 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002381D0;
  block[3] = &unk_10031CC30;
  v18 = completionCopy;
  v19 = a2;
  slotCopy = slot;
  userCopy = user;
  block[4] = self;
  v17 = tokenCopy;
  v14 = tokenCopy;
  v15 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)derive:(unsigned __int8)derive userHash:(id)hash completion:(id)completion
{
  hashCopy = hash;
  completionCopy = completion;
  v19.receiver = self;
  v19.super_class = _NFSeshatSession;
  workQueue = [(_NFSession *)&v19 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100238BE0;
  block[3] = &unk_100317360;
  deriveCopy = derive;
  block[4] = self;
  v15 = hashCopy;
  v16 = completionCopy;
  v17 = a2;
  v12 = completionCopy;
  v13 = hashCopy;
  dispatch_async(workQueue, block);
}

- (void)resetCounter:(unsigned __int8)counter userToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  v19.receiver = self;
  v19.super_class = _NFSeshatSession;
  workQueue = [(_NFSession *)&v19 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002395D0;
  block[3] = &unk_100317360;
  counterCopy = counter;
  block[4] = self;
  v15 = tokenCopy;
  v16 = completionCopy;
  v17 = a2;
  v12 = completionCopy;
  v13 = tokenCopy;
  dispatch_async(workQueue, block);
}

- (void)authorizeUpdate:(BOOL)update slotIndex:(unsigned __int8)index userToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  v22.receiver = self;
  v22.super_class = _NFSeshatSession;
  workQueue = [(_NFSession *)&v22 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100239FA8;
  block[3] = &unk_10031CC30;
  updateCopy = update;
  indexCopy = index;
  block[4] = self;
  v17 = tokenCopy;
  v18 = completionCopy;
  v19 = a2;
  v14 = completionCopy;
  v15 = tokenCopy;
  dispatch_async(workQueue, block);
}

- (void)deleteSlot:(unsigned __int8)slot completion:(id)completion
{
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = _NFSeshatSession;
  workQueue = [(_NFSession *)&v14 workQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10023A988;
  v10[3] = &unk_100316FA0;
  v11 = completionCopy;
  v12 = a2;
  slotCopy = slot;
  v10[4] = self;
  v9 = completionCopy;
  dispatch_async(workQueue, v10);
}

- (void)getDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = _NFSeshatSession;
  workQueue = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10023B2C0;
  block[3] = &unk_100316050;
  v9 = completionCopy;
  v10 = a2;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)getHashWithCompletion:(id)completion
{
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = _NFSeshatSession;
  workQueue = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10023BC14;
  block[3] = &unk_100316050;
  v9 = completionCopy;
  v10 = a2;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)upgradeKey:(unsigned __int8)key inputData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v19.receiver = self;
  v19.super_class = _NFSeshatSession;
  workQueue = [(_NFSession *)&v19 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10023C570;
  block[3] = &unk_100317360;
  keyCopy = key;
  block[4] = self;
  v15 = dataCopy;
  v16 = completionCopy;
  v17 = a2;
  v12 = completionCopy;
  v13 = dataCopy;
  dispatch_async(workQueue, block);
}

- (void)obliterateWithCompletion:(id)completion
{
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = _NFSeshatSession;
  workQueue = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10023CF08;
  block[3] = &unk_100316050;
  v9 = completionCopy;
  v10 = a2;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

@end