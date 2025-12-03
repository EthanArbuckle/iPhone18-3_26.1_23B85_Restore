@interface DMDSSRequestDelegate
- (DMDSSRequestDelegate)initWithRequest:(id)request;
- (void)_timerDidFire:(id)fire;
- (void)cancel;
- (void)dealloc;
- (void)request:(id)request didFailWithError:(id)error;
- (void)requestDidFinish:(id)finish;
- (void)startWithCompletionBlock:(id)block;
@end

@implementation DMDSSRequestDelegate

- (DMDSSRequestDelegate)initWithRequest:(id)request
{
  requestCopy = request;
  v12.receiver = self;
  v12.super_class = DMDSSRequestDelegate;
  v6 = [(DMDSSRequestDelegate *)&v12 init];
  v7 = v6;
  if (v6)
  {
    if (!requestCopy)
    {
      sub_1000876C4();
    }

    objc_storeStrong(&v6->_request, request);
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
  timeoutTimer = [(DMDSSRequestDelegate *)self timeoutTimer];
  [timeoutTimer invalidate];

  v4.receiver = self;
  v4.super_class = DMDSSRequestDelegate;
  [(DMDSSRequestDelegate *)&v4 dealloc];
}

- (void)startWithCompletionBlock:(id)block
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006F304;
  v4[3] = &unk_1000CE8C0;
  v4[4] = self;
  blockCopy = block;
  v3 = blockCopy;
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

- (void)request:(id)request didFailWithError:(id)error
{
  errorCopy = error;
  v6 = +[NSDate distantFuture];
  timeoutTimer = [(DMDSSRequestDelegate *)self timeoutTimer];
  [timeoutTimer setFireDate:v6];

  completionBlock = [(DMDSSRequestDelegate *)self completionBlock];
  [(DMDSSRequestDelegate *)self setCompletionBlock:0];
  if (completionBlock)
  {
    v9 = dispatch_get_global_queue(0, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10006F64C;
    v10[3] = &unk_1000CF450;
    v12 = completionBlock;
    v11 = errorCopy;
    dispatch_async(v9, v10);
  }
}

- (void)requestDidFinish:(id)finish
{
  v4 = +[NSDate distantFuture];
  timeoutTimer = [(DMDSSRequestDelegate *)self timeoutTimer];
  [timeoutTimer setFireDate:v4];

  completionBlock = [(DMDSSRequestDelegate *)self completionBlock];
  [(DMDSSRequestDelegate *)self setCompletionBlock:0];
  if (completionBlock)
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006F760;
    block[3] = &unk_1000CF578;
    v9 = completionBlock;
    dispatch_async(v7, block);
  }
}

- (void)_timerDidFire:(id)fire
{
  [(DMDSSRequestDelegate *)self cancel];
  completionBlock = [(DMDSSRequestDelegate *)self completionBlock];
  [(DMDSSRequestDelegate *)self setCompletionBlock:0];
  if (completionBlock)
  {
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006F83C;
    block[3] = &unk_1000CF578;
    v7 = completionBlock;
    dispatch_async(v5, block);
  }
}

@end