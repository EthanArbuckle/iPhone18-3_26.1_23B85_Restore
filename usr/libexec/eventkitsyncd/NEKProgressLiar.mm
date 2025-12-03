@interface NEKProgressLiar
- (NEKProgressLiar)initWithSpan:(double)span session:(id)session;
- (void)_doneForRealNotifyingPairedSync:(BOOL)sync;
- (void)doneForRealNotifyingPairedSync:(BOOL)sync;
- (void)pause;
- (void)resume;
- (void)start;
@end

@implementation NEKProgressLiar

- (NEKProgressLiar)initWithSpan:(double)span session:(id)session
{
  sessionCopy = session;
  v14.receiver = self;
  v14.super_class = NEKProgressLiar;
  v8 = [(NEKProgressLiar *)&v14 init];
  v9 = v8;
  if (v8)
  {
    spanCopy = 1.0;
    if (span != 0.0)
    {
      spanCopy = span;
    }

    v8->_span = spanCopy;
    v8->_previousFraction = -0.02;
    v11 = sub_100004B98("com.apple.eventkitsync.progressliar");
    q = v9->_q;
    v9->_q = v11;

    objc_storeStrong(&v9->_session, session);
  }

  return v9;
}

- (void)start
{
  objc_initWeak(&location, self);
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_q);
  timeToLie = self->_timeToLie;
  self->_timeToLie = v3;

  v5 = self->_timeToLie;
  v6 = dispatch_time(0, 0);
  dispatch_source_set_timer(v5, v6, 0x3B9ACA00uLL, 0x1DCD6500uLL);
  v7 = self->_timeToLie;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10003609C;
  handler[3] = &unk_1000B4B48;
  objc_copyWeak(&v11, &location);
  dispatch_source_set_event_handler(v7, handler);
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100036180;
  block[3] = &unk_1000B4B90;
  block[4] = self;
  dispatch_sync(q, block);
  dispatch_resume(self->_timeToLie);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)pause
{
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100036228;
  block[3] = &unk_1000B4B90;
  block[4] = self;
  dispatch_sync(q, block);
}

- (void)resume
{
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000362AC;
  block[3] = &unk_1000B4B90;
  block[4] = self;
  dispatch_sync(q, block);
}

- (void)doneForRealNotifyingPairedSync:(BOOL)sync
{
  q = self->_q;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100036330;
  v4[3] = &unk_1000B5650;
  v4[4] = self;
  syncCopy = sync;
  dispatch_sync(q, v4);
}

- (void)_doneForRealNotifyingPairedSync:(BOOL)sync
{
  syncCopy = sync;
  v5 = os_transaction_create();
  dispatch_assert_queue_V2(self->_q);
  v6 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = syncCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "doneForRealNotifyingPairedSync: %{BOOL}d", v10, 8u);
  }

  timeToLie = self->_timeToLie;
  if (timeToLie)
  {
    dispatch_source_cancel(timeToLie);
    v8 = self->_timeToLie;
    self->_timeToLie = 0;
  }

  if (syncCopy && !self->_calledDidComplete)
  {
    self->_calledDidComplete = 1;
    session = [(NEKProgressLiar *)self session];
    [session syncDidComplete];
  }
}

@end