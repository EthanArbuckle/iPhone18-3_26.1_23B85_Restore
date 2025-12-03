@interface _NFPeerPaymentSession
+ (id)validateEntitlements:(id)entitlements;
- (BOOL)willStartSession;
- (void)deleteKeyWithCompletion:(id)completion;
- (void)didStartSession:(id)session;
- (void)performPeerPayment:(id)payment request:(id)request completion:(id)completion;
@end

@implementation _NFPeerPaymentSession

+ (id)validateEntitlements:(id)entitlements
{
  if ([entitlements surfSessionAccess])
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

      v7(3, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring surf access", v11, ClassName, Name, 24);
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
      v32 = 24;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring surf access", buf, 0x22u);
    }

    v15 = [NSError alloc];
    v16 = [NSString stringWithUTF8String:"nfcd"];
    v23[0] = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithUTF8String:"Not entitled"];
    v24[0] = v17;
    v24[1] = &off_100333648;
    v23[1] = @"Line";
    v23[2] = @"Method";
    v18 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v24[2] = v18;
    v23[3] = NSDebugDescriptionErrorKey;
    v19 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 25];
    v24[3] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
    v5 = [v15 initWithDomain:v16 code:32 userInfo:v20];
  }

  return v5;
}

- (BOOL)willStartSession
{
  sub_10026449C();
  v4.receiver = self;
  v4.super_class = _NFPeerPaymentSession;
  return [(_NFSession *)&v4 willStartSession];
}

- (void)didStartSession:(id)session
{
  v9.receiver = self;
  v9.super_class = _NFPeerPaymentSession;
  sessionCopy = session;
  [(_NFXPCSession *)&v9 didStartSession:sessionCopy];
  v5 = [_NFHardwareManager sharedHardwareManager:v9.receiver];
  secureElementWrapper = [v5 secureElementWrapper];
  secureElementWrapper = self->_secureElementWrapper;
  self->_secureElementWrapper = secureElementWrapper;

  remoteObject = [(_NFXPCSession *)self remoteObject];
  [remoteObject didStartSession:sessionCopy];
}

- (void)deleteKeyWithCompletion:(id)completion
{
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = _NFPeerPaymentSession;
  workQueue = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A9400;
  block[3] = &unk_100316050;
  v9 = completionCopy;
  v10 = a2;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)performPeerPayment:(id)payment request:(id)request completion:(id)completion
{
  paymentCopy = payment;
  requestCopy = request;
  completionCopy = completion;
  v21.receiver = self;
  v21.super_class = _NFPeerPaymentSession;
  workQueue = [(_NFSession *)&v21 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A9838;
  block[3] = &unk_1003165C0;
  v19 = completionCopy;
  v20 = a2;
  block[4] = self;
  v17 = paymentCopy;
  v18 = requestCopy;
  v13 = requestCopy;
  v14 = paymentCopy;
  v15 = completionCopy;
  dispatch_async(workQueue, block);
}

@end