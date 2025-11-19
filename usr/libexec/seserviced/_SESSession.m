@interface _SESSession
+ (id)validateEntitlements:(id)a3;
- (BOOL)isActive;
- (_SESSession)initWithRemoteObject:(id)a3 queue:(id)a4;
- (void)endSession:(id)a3;
- (void)endSessionInternal:(id)a3;
- (void)releaseRemoteObject;
- (void)setDidEndCallback:(id)a3;
- (void)start;
@end

@implementation _SESSession

- (_SESSession)initWithRemoteObject:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _SESSession;
  v9 = [(_SESSession *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_remoteObject, a3);
    v10->_queue = v8;
    v10->_isBackgrounded = 0;
    *&v10->_didStart = 0;
    v10->_lock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

+ (id)validateEntitlements:(id)a3
{
  v3 = SESDefaultLogObject();
  v4 = SESCreateAndLogError();

  return v4;
}

- (void)setDidEndCallback:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 copy];

  didEndCallback = self->_didEndCallback;
  self->_didEndCallback = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)releaseRemoteObject
{
  dispatch_assert_queue_V2(self->_queue);
  os_unfair_lock_lock(&self->_lock);
  remoteObject = self->_remoteObject;
  self->_remoteObject = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)start
{
  dispatch_assert_queue_V2(self->_queue);
  os_unfair_lock_lock(&self->_lock);
  v3 = SESDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "SESSession start %@", &v4, 0xCu);
  }

  if (!self->_didStart)
  {
    self->_didStart = 1;
    [self->_remoteObject didStartSession:0];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)endSessionInternal:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  os_unfair_lock_lock(&self->_lock);
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SESSession endSessionInternal %@ error %@", &v9, 0x16u);
  }

  if (!self->_didStart)
  {
    self->_didStart = 1;
    if (!v4)
    {
      v6 = SESDefaultLogObject();
      v4 = SESCreateAndLogError();
    }

    [self->_remoteObject didStartSession:v4];
  }

  self->_didEnd = 1;
  didEndCallback = self->_didEndCallback;
  if (didEndCallback)
  {
    didEndCallback[2](didEndCallback, self);
    v8 = self->_didEndCallback;
    self->_didEndCallback = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isActive
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_didStart && !self->_didEnd;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)endSession:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100013424;
  v7[3] = &unk_1004C0F00;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

@end