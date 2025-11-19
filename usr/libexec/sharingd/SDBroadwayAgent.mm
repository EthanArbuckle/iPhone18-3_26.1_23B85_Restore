@interface SDBroadwayAgent
+ (id)sharedAgent;
- (NSString)description;
- (SDBroadwayAgent)init;
- (void)_applePayCardDectected:(id)a3;
- (void)_invalidate;
- (void)_preparePresentationWithBroadwayActivationCode:(id)a3 testInfo:(id)a4;
- (void)_startUIWithPhysicalCard:(id)a3 activationCode:(id)a4 testInfo:(id)a5;
- (void)activate;
- (void)invalidate;
- (void)lookUpValidAccountWithBroadwayActivationCode:(id)a3 testInfo:(id)a4;
- (void)lookupPhysicalCardWithBroadwayActivationCode:(id)a3 testInfo:(id)a4;
- (void)preparePresentationWithBroadwayActivationCode:(id)a3 testInfo:(id)a4;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation SDBroadwayAgent

+ (id)sharedAgent
{
  if (qword_100989FB0 != -1)
  {
    sub_100164CB8();
  }

  v3 = qword_100989FB8;

  return v3;
}

- (SDBroadwayAgent)init
{
  v6.receiver = self;
  v6.super_class = SDBroadwayAgent;
  v2 = [(SDBroadwayAgent *)&v6 init];
  if (v2)
  {
    v3 = CUMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (NSString)description
{
  v2 = objc_alloc_init(NSMutableString);
  [v2 appendFormat:@"-- SDBroadwayAgent --"];
  if (byte_1009A0614)
  {
    v3 = "yes";
  }

  else
  {
    v3 = "no";
  }

  [v2 appendFormat:@"Suppressed: %s", v3];

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100163610;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100163728;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100971838 <= 30 && (dword_100971838 != -1 || _LogCategory_Initialize()))
  {
    sub_100164CE8();
  }

  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)_applePayCardDectected:(id)a3
{
  v4 = a3;
  v6 = [v4 object];
  v5 = [v4 userInfo];

  [(SDBroadwayAgent *)self preparePresentationWithBroadwayActivationCode:v6 testInfo:v5];
}

- (void)preparePresentationWithBroadwayActivationCode:(id)a3 testInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100163918;
  block[3] = &unk_1008CE900;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)_preparePresentationWithBroadwayActivationCode:(id)a3 testInfo:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (byte_1009A0614 == 1)
  {
    if (dword_100971838 <= 30 && (dword_100971838 != -1 || _LogCategory_Initialize()))
    {
      sub_100164D44();
    }
  }

  else
  {
    if (dword_100971838 <= 30 && (dword_100971838 != -1 || _LogCategory_Initialize()))
    {
      sub_100164D04();
    }

    [(SDBroadwayAgent *)self lookUpValidAccountWithBroadwayActivationCode:v7 testInfo:v6];
  }
}

- (void)lookUpValidAccountWithBroadwayActivationCode:(id)a3 testInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_100971838 <= 30 && (dword_100971838 != -1 || _LogCategory_Initialize()))
  {
    sub_100164D60();
  }

  v8 = [v7 objectForKeyedSubscript:@"testParams"];
  if (v8)
  {
    v9 = SFTestFlagsFromString() & 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = [off_1009718A8[0]() sharedInstance];
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100163BA4;
  v13[3] = &unk_1008D1AD8;
  v17 = v9;
  objc_copyWeak(&v16, &location);
  v11 = v6;
  v14 = v11;
  v12 = v7;
  v15 = v12;
  [v10 defaultAccountForFeature:2 completion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)lookupPhysicalCardWithBroadwayActivationCode:(id)a3 testInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_100971838 <= 30 && (dword_100971838 != -1 || _LogCategory_Initialize()))
  {
    sub_100164E08();
  }

  v8 = [v7 objectForKeyedSubscript:@"testParams"];
  if (v8)
  {
    v9 = SFTestFlagsFromString();
  }

  else
  {
    v9 = 0;
  }

  v10 = [off_1009718A8[0]() sharedInstance];
  objc_initWeak(&location, self);
  v11 = v9 & 1;
  v12 = HIDWORD(v9) & 1;
  if (objc_opt_respondsToSelector())
  {
    v13 = v20;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100163F2C;
    v20[3] = &unk_1008D1B28;
    v20[4] = self;
    v22 = v11;
    v23 = v12;
    v14 = &v21;
    objc_copyWeak(&v21, &location);
    v15 = v6;
    v20[5] = v15;
    v20[6] = v7;
    [v10 physicalCardForFeatureIdentifier:2 activationCode:v15 completion:v20];
  }

  else
  {
    if (dword_100971838 <= 90 && (dword_100971838 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v13 = v16;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100164118;
    v16[3] = &unk_1008D1B28;
    v16[4] = self;
    v18 = v11;
    v19 = v12;
    v14 = &v17;
    objc_copyWeak(&v17, &location);
    v16[5] = v6;
    v16[6] = v7;
    [v10 inactivePhysicalCardForFeatureIdentifier:2 completion:v16];
  }

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

- (void)_startUIWithPhysicalCard:(id)a3 activationCode:(id)a4 testInfo:(id)a5
{
  v26 = a3;
  v8 = a4;
  v9 = a5;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!v8)
  {
    goto LABEL_33;
  }

  if (v26)
  {
    v10 = [v9 objectForKeyedSubscript:@"physicalCard"];
    if (v10)
    {
      v11 = [v9 objectForKeyedSubscript:@"physicalCard"];
      v12 = [v11 unsignedIntegerValue];
    }

    else
    {
      v12 = [v26 state];
    }

    if (v12 == 5 || !v12)
    {
      v24 = off_1009718C0(v12);
      v13 = NSErrorWithOSStatusF();

      goto LABEL_9;
    }
  }

  if (gSDProxCardsSuppressed == 1 || -[SDBroadwayAgent _uiShowing](self, "_uiShowing") || (+[SDStatusMonitor sharedMonitor](SDStatusMonitor, "sharedMonitor"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 systemUIFlags] & 0x5C808, v17, v18))
  {
LABEL_33:
    v13 = NSErrorWithOSStatusF();
LABEL_9:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    if (!v13)
    {
      goto LABEL_27;
    }

LABEL_10:
    if (dword_100971838 <= 60 && (dword_100971838 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_27;
  }

  if (dword_100971838 <= 30 && (dword_100971838 != -1 || _LogCategory_Initialize()))
  {
    v23 = v26;
    v25 = v8;
    LogPrintF();
  }

  v15 = [[NSMutableDictionary alloc] initWithDictionary:v9];
  [v15 setObject:v8 forKeyedSubscript:@"activationCode"];
  v16 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.SharingViewService" viewControllerClassName:@"BroadwayActivationMainController"];
  v14 = objc_opt_new();
  [v14 setUserInfo:v15];
  alertHandle = self->_alertHandle;
  if (alertHandle)
  {
    [(SBSRemoteAlertHandle *)alertHandle removeObserver:self];
    [(SBSRemoteAlertHandle *)self->_alertHandle invalidate];
  }

  v20 = [SBSRemoteAlertHandle newHandleWithDefinition:v16 configurationContext:v14, v23, v25];
  v21 = self->_alertHandle;
  self->_alertHandle = v20;

  v22 = self->_alertHandle;
  if (!v22)
  {
    v13 = NSErrorWithOSStatusF();
    if (!v13)
    {
      goto LABEL_27;
    }

    goto LABEL_10;
  }

  [(SBSRemoteAlertHandle *)v22 addObserver:self];
  [(SBSRemoteAlertHandle *)self->_alertHandle activateWithContext:0];
  if (dword_100971838 <= 30 && (dword_100971838 != -1 || _LogCategory_Initialize()))
  {
    sub_100164E9C();
  }

  v13 = 0;
LABEL_27:
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100164700;
  v7[3] = &unk_1008CE028;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100164858;
  v7[3] = &unk_1008CE028;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001649DC;
  block[3] = &unk_1008CE900;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

@end