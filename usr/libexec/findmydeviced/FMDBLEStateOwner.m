@interface FMDBLEStateOwner
+ (id)sharedInstance;
- (FMDBLEStateOwner)init;
- (void)_monitorWatchBLEStatus;
- (void)_updateBLEStatus;
- (void)dealloc;
@end

@implementation FMDBLEStateOwner

+ (id)sharedInstance
{
  if (qword_100314538 != -1)
  {
    sub_100226674();
  }

  v3 = qword_100314530;

  return v3;
}

- (FMDBLEStateOwner)init
{
  v16.receiver = self;
  v16.super_class = FMDBLEStateOwner;
  v2 = [(FMDBLEStateOwner *)&v16 init];
  v3 = v2;
  if (v2)
  {
    blePowerStatus = v2->_blePowerStatus;
    v2->_blePowerStatus = @"unknown";

    v5 = objc_alloc_init(CBController);
    btController = v3->_btController;
    v3->_btController = v5;

    v7 = objc_alloc_init(CBAdvertiser);
    btAdvertiser = v3->_btAdvertiser;
    v3->_btAdvertiser = v7;

    objc_initWeak(&location, v3);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100139668;
    v13[3] = &unk_1002CD518;
    objc_copyWeak(&v14, &location);
    v9 = [(FMDBLEStateOwner *)v3 btAdvertiser];
    [v9 setBluetoothStateChangedHandler:v13];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100139760;
    block[3] = &unk_1002CD518;
    objc_copyWeak(&v12, &location);
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)dealloc
{
  v3 = [(FMDBLEStateOwner *)self btAdvertiser];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = FMDBLEStateOwner;
  [(FMDBLEStateOwner *)&v4 dealloc];
}

- (void)_monitorWatchBLEStatus
{
  v3 = [(FMDBLEStateOwner *)self btAdvertiser];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100139888;
  v4[3] = &unk_1002CD868;
  v4[4] = self;
  [v3 activateWithCompletion:v4];
}

- (void)_updateBLEStatus
{
  if (+[NSThread isMainThread])
  {
    v3 = [(FMDBLEStateOwner *)self btController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100139A20;
    v7[3] = &unk_1002CD960;
    v7[4] = self;
    [v3 getControllerInfoWithCompletion:v7];
  }

  else
  {
    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100139B64;
    block[3] = &unk_1002CD518;
    objc_copyWeak(&v5, &location);
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

@end