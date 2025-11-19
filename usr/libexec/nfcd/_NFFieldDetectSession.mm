@interface _NFFieldDetectSession
+ (id)validateEntitlements:(id)a3;
- (BOOL)isFeatureSupported:(unint64_t)a3;
- (_NFFieldDetectSession)initWithRemoteObject:(id)a3 workQueue:(id)a4;
- (void)didStartSession:(id)a3;
- (void)handleFieldNotification:(id)a3;
- (void)handleFilteredFieldNotification:(id)a3;
@end

@implementation _NFFieldDetectSession

- (_NFFieldDetectSession)initWithRemoteObject:(id)a3 workQueue:(id)a4
{
  v8.receiver = self;
  v8.super_class = _NFFieldDetectSession;
  v4 = [(_NFXPCSession *)&v8 initWithRemoteObject:a3 workQueue:a4];
  v5 = v4;
  if (v4)
  {
    v4->_notificationConfig = 1;
    v4->_notificationCategories = -1;
    v6 = v4;
  }

  return v5;
}

+ (id)validateEntitlements:(id)a3
{
  if ([a3 cardModeAccess])
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

      v7(3, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring card access", v11, ClassName, Name, 30);
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
      v32 = 30;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring card access", buf, 0x22u);
    }

    v15 = [NSError alloc];
    v16 = [NSString stringWithUTF8String:"nfcd"];
    v23[0] = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithUTF8String:"Not entitled"];
    v24[0] = v17;
    v24[1] = &off_10032FC70;
    v23[1] = @"Line";
    v23[2] = @"Method";
    v18 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v24[2] = v18;
    v23[3] = NSDebugDescriptionErrorKey;
    v19 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 31];
    v24[3] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
    v5 = [v15 initWithDomain:v16 code:32 userInfo:v20];
  }

  return v5;
}

- (void)handleFieldNotification:(id)a3
{
  v6 = a3;
  if (([(_NFFieldDetectSession *)self notificationConfig]& 2) != 0)
  {
    v4 = [(_NFXPCSession *)self remoteObject];
    [v4 didDetectField:1];
  }

  if (([(_NFFieldDetectSession *)self notificationConfig]& 1) != 0)
  {
    v5 = [(_NFXPCSession *)self remoteObject];
    [v5 didDetectFieldNotification:v6];
  }
}

- (void)handleFilteredFieldNotification:(id)a3
{
  v8 = a3;
  v4 = [(_NFFieldDetectSession *)self unfiltered];
  v5 = v8;
  if (v4)
  {
    if (([(_NFFieldDetectSession *)self notificationConfig]& 2) != 0)
    {
      v6 = [(_NFXPCSession *)self remoteObject];
      [v6 didDetectField:1];
    }

    v4 = [(_NFFieldDetectSession *)self notificationConfig];
    v5 = v8;
    if (v4)
    {
      v7 = [(_NFXPCSession *)self remoteObject];
      [v7 didDetectFieldNotification:v8];

      v5 = v8;
    }
  }

  _objc_release_x1(v4, v5);
}

- (void)didStartSession:(id)a3
{
  v6.receiver = self;
  v6.super_class = _NFFieldDetectSession;
  v4 = a3;
  [(_NFXPCSession *)&v6 didStartSession:v4];
  v5 = [(_NFXPCSession *)self remoteObject:v6.receiver];
  [v5 didStartSession:v4];
}

- (BOOL)isFeatureSupported:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = _NFFieldDetectSession;
  return [(_NFSession *)&v4 isFeatureSupported:a3];
}

@end