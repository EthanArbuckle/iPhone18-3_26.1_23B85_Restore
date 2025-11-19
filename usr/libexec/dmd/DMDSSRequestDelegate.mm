@interface DMDSSRequestDelegate
- (DMDSSRequestDelegate)initWithRequest:(id)a3;
- (void)_timerDidFire:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)request:(id)a3 didFailWithError:(id)a4;
- (void)requestDidFinish:(id)a3;
- (void)startWithCompletionBlock:(id)a3;
@end

@implementation DMDSSRequestDelegate

- (DMDSSRequestDelegate)initWithRequest:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = DMDSSRequestDelegate;
  v6 = [(DMDSSRequestDelegate *)&v12 init];
  v7 = v6;
  if (v6)
  {
    if (!v5)
    {
      sub_1000876C4();
    }

    objc_storeStrong(&v6->_request, a3);
    [(SSRequest *)v7->_request setDelegate:v7];
    v8 = +[NSDate distantFuture];
    [v8 timeIntervalSinceReferenceDate];
    v9 = [NSTimer scheduledTimerWithTimeInterval:v7 target:"_timerDidFire:" selector:v7 userInfo:1 repeats:?];
    timeoutTimer = v7->_timeoutTimer;
    v7->_timeoutTimer = v9;
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(DMDSSRequestDelegate *)self timeoutTimer];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = DMDSSRequestDelegate;
  [(DMDSSRequestDelegate *)&v4 dealloc];
}

- (void)startWithCompletionBlock:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006F304;
  v4[3] = &unk_1000CE8C0;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  _performBlockOnMainThread(v4);
}

- (void)cancel
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10006F48C;
  v2[3] = &unk_1000CE5A0;
  v2[4] = self;
  _performBlockOnMainThread(v2);
}

- (void)request:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v6 = +[NSDate distantFuture];
  v7 = [(DMDSSRequestDelegate *)self timeoutTimer];
  [v7 setFireDate:v6];

  v8 = [(DMDSSRequestDelegate *)self completionBlock];
  [(DMDSSRequestDelegate *)self setCompletionBlock:0];
  if (v8)
  {
    v9 = dispatch_get_global_queue(0, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10006F64C;
    v10[3] = &unk_1000CF450;
    v12 = v8;
    v11 = v5;
    dispatch_async(v9, v10);
  }
}

- (void)requestDidFinish:(id)a3
{
  v4 = +[NSDate distantFuture];
  v5 = [(DMDSSRequestDelegate *)self timeoutTimer];
  [v5 setFireDate:v4];

  v6 = [(DMDSSRequestDelegate *)self completionBlock];
  [(DMDSSRequestDelegate *)self setCompletionBlock:0];
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006F760;
    block[3] = &unk_1000CF578;
    v9 = v6;
    dispatch_async(v7, block);
  }
}

- (void)_timerDidFire:(id)a3
{
  [(DMDSSRequestDelegate *)self cancel];
  v4 = [(DMDSSRequestDelegate *)self completionBlock];
  [(DMDSSRequestDelegate *)self setCompletionBlock:0];
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006F83C;
    block[3] = &unk_1000CF578;
    v7 = v4;
    dispatch_async(v5, block);
  }
}

@end