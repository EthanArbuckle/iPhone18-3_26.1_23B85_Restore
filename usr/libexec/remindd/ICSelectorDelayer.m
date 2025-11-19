@interface ICSelectorDelayer
- (BOOL)isScheduledToFire;
- (SEL)selector;
- (id)target;
- (void)_cancelFireRequests;
- (void)callTargetSelector;
- (void)cancelPreviousFireRequests;
- (void)dealloc;
- (void)fireImmediately;
- (void)requestFire;
- (void)setSelector:(SEL)a3;
@end

@implementation ICSelectorDelayer

- (void)dealloc
{
  v3 = [(ICSelectorDelayer *)self requestQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100068674;
  block[3] = &unk_1008D9990;
  block[4] = self;
  dispatch_sync(v3, block);

  v4.receiver = self;
  v4.super_class = ICSelectorDelayer;
  [(ICSelectorDelayer *)&v4 dealloc];
}

- (void)requestFire
{
  v3 = [(ICSelectorDelayer *)self requestQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100068704;
  block[3] = &unk_1008D9990;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)fireImmediately
{
  v3 = [(ICSelectorDelayer *)self requestQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100068A6C;
  block[3] = &unk_1008D9990;
  block[4] = self;
  dispatch_sync(v3, block);

  if ([(ICSelectorDelayer *)self callOnMainThread]&& !+[NSThread isMainThread])
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100068A74;
    v4[3] = &unk_1008D9990;
    v4[4] = self;
    dispatch_sync(&_dispatch_main_q, v4);
  }

  else
  {
    [(ICSelectorDelayer *)self callTargetSelector];
  }
}

- (void)callTargetSelector
{
  v3 = [(ICSelectorDelayer *)self target];
  v4 = [v3 methodForSelector:{-[ICSelectorDelayer selector](self, "selector")}];

  if (v4)
  {
    v6 = [(ICSelectorDelayer *)self target];
    v4(v6, [(ICSelectorDelayer *)self selector]);
  }

  else
  {
    v5 = +[REMLog cloudkit];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_10075FDE4(self, v5);
    }
  }
}

- (BOOL)isScheduledToFire
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(ICSelectorDelayer *)self requestQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100068C30;
  v5[3] = &unk_1008D9A28;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)cancelPreviousFireRequests
{
  v3 = [(ICSelectorDelayer *)self requestQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100068D08;
  block[3] = &unk_1008D9990;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)_cancelFireRequests
{
  v3 = [(ICSelectorDelayer *)self fireBlock];

  if (v3)
  {
    v4 = [(ICSelectorDelayer *)self fireBlock];
    dispatch_block_cancel(v4);

    [(ICSelectorDelayer *)self setFireBlock:0];
  }
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

- (void)setSelector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_selector = v3;
}

@end