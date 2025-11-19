@interface _NFECommercePaymentSession
+ (id)validateEntitlements:(id)a3;
- (BOOL)willStartSession;
- (void)didStartSession:(id)a3;
- (void)getAppletsWithCompletion:(id)a3;
- (void)performECommercePayment:(id)a3 request:(id)a4 completion:(id)a5;
- (void)validateEcommercePaymentRequest:(id)a3 completion:(id)a4;
@end

@implementation _NFECommercePaymentSession

+ (id)validateEntitlements:(id)a3
{
  if ([a3 eCommerceAccess])
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

      v7(3, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring ecomm access", v11, ClassName, Name, 32);
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
      v32 = 32;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring ecomm access", buf, 0x22u);
    }

    v15 = [NSError alloc];
    v16 = [NSString stringWithUTF8String:"nfcd"];
    v23[0] = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithUTF8String:"Not entitled"];
    v24[0] = v17;
    v24[1] = &off_1003303C0;
    v23[1] = @"Line";
    v23[2] = @"Method";
    v18 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v24[2] = v18;
    v23[3] = NSDebugDescriptionErrorKey;
    v19 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 33];
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
  v4.super_class = _NFECommercePaymentSession;
  return [(_NFSession *)&v4 willStartSession];
}

- (void)didStartSession:(id)a3
{
  v9.receiver = self;
  v9.super_class = _NFECommercePaymentSession;
  v4 = a3;
  [(_NFXPCSession *)&v9 didStartSession:v4];
  v5 = [_NFHardwareManager sharedHardwareManager:v9.receiver];
  v6 = [v5 secureElementWrapper];
  secureElementWrapper = self->_secureElementWrapper;
  self->_secureElementWrapper = v6;

  v8 = [(_NFXPCSession *)self remoteObject];
  [v8 didStartSession:v4];
}

- (void)getAppletsWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFECommercePaymentSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005F3D8;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)performECommercePayment:(id)a3 request:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = _NFECommercePaymentSession;
  v12 = [(_NFSession *)&v21 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005F7EC;
  block[3] = &unk_1003165C0;
  v19 = v11;
  v20 = a2;
  block[4] = self;
  v17 = v9;
  v18 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v11;
  dispatch_async(v12, block);
}

- (void)validateEcommercePaymentRequest:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = _NFECommercePaymentSession;
  v9 = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005FDAC;
  v12[3] = &unk_1003165E8;
  v14 = v8;
  v15 = a2;
  v12[4] = self;
  v13 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

@end