@interface SDSharedRemoteTextInputClient
+ (id)sharedClient;
- (SDSharedRemoteTextInputClient)init;
- (void)_ensureStarted;
- (void)_logEvent:(unint64_t)event stopClock:(BOOL)clock;
- (void)_rtiHandleEventWithData:(id)data;
- (void)_rtiHandleInputDidBeginWithFlags:(unint64_t)flags sessionInfo:(id)info;
- (void)_rtiHandleInputDidEndWithFlags:(unint64_t)flags sessionInfo:(id)info;
- (void)_startClockWithResetIfNeeded;
- (void)activate;
- (void)addDelegate:(id)delegate;
- (void)invalidate;
- (void)removeAllDelegates;
- (void)removeDelegate:(id)delegate;
@end

@implementation SDSharedRemoteTextInputClient

+ (id)sharedClient
{
  if (qword_100989F40 != -1)
  {
    sub_10013F800();
  }

  v3 = qword_100989F48;

  return v3;
}

- (SDSharedRemoteTextInputClient)init
{
  v6.receiver = self;
  v6.super_class = SDSharedRemoteTextInputClient;
  v2 = [(SDSharedRemoteTextInputClient *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)_ensureStarted
{
  if (!self->_rtiClient)
  {
    v11[5] = v5;
    v11[6] = v4;
    v11[9] = v2;
    v11[10] = v3;
    if (dword_100971508 <= 30 && (dword_100971508 != -1 || _LogCategory_Initialize()))
    {
      sub_10013F814();
    }

    v7 = objc_alloc_init(SFRemoteTextInputClient);
    rtiClient = self->_rtiClient;
    self->_rtiClient = v7;

    [(SFRemoteTextInputClient *)self->_rtiClient setDispatchQueue:self->_dispatchQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10013ED40;
    v11[3] = &unk_1008CF400;
    v11[4] = self;
    [(SFRemoteTextInputClient *)self->_rtiClient setEventHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10013ED4C;
    v10[3] = &unk_1008D14D8;
    v10[4] = self;
    [(SFRemoteTextInputClient *)self->_rtiClient setTextInputDidBegin:v10];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10013EDAC;
    v9[3] = &unk_1008D14D8;
    v9[4] = self;
    [(SFRemoteTextInputClient *)self->_rtiClient setTextInputDidEnd:v9];
    [(SFRemoteTextInputClient *)self->_rtiClient activate];
  }
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013EE30;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  if (dword_100971508 <= 50 && (dword_100971508 != -1 || _LogCategory_Initialize()))
  {
    sub_10013F830();
  }

  [(SDSharedRemoteTextInputClient *)self removeAllDelegates];
  [(SDSharedRemoteTextInputClient *)self _stopClock:3];
  if (self->_rtiClient)
  {
    if (dword_100971508 <= 30 && (dword_100971508 != -1 || _LogCategory_Initialize()))
    {
      sub_10013F850();
    }

    [(SFRemoteTextInputClient *)self->_rtiClient invalidate];
    rtiClient = self->_rtiClient;
    self->_rtiClient = 0;
  }
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (dword_100971508 <= 30 && (dword_100971508 != -1 || _LogCategory_Initialize()))
  {
    sub_10013F86C();
  }

  delegates = self->_delegates;
  if (!delegates)
  {
    v5 = objc_alloc_init(NSMutableSet);
    v6 = self->_delegates;
    self->_delegates = v5;

    delegates = self->_delegates;
  }

  [(NSMutableSet *)delegates addObject:delegateCopy];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  v6 = delegateCopy;
  if (dword_100971508 <= 30)
  {
    if (dword_100971508 != -1 || (v5 = _LogCategory_Initialize(), delegateCopy = v6, v5))
    {
      sub_10013F8AC();
      delegateCopy = v6;
    }
  }

  [(NSMutableSet *)self->_delegates removeObject:delegateCopy];
}

- (void)removeAllDelegates
{
  [(NSMutableSet *)self->_delegates removeAllObjects];
  delegates = self->_delegates;
  self->_delegates = 0;
}

- (void)_rtiHandleEventWithData:(id)data
{
  dataCopy = data;
  if (dword_100971508 <= 30 && (dword_100971508 != -1 || _LogCategory_Initialize()))
  {
    sub_10013F8EC();
  }

  delegates = self->_delegates;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013F178;
  v7[3] = &unk_1008D1500;
  v8 = dataCopy;
  v6 = dataCopy;
  [(NSMutableSet *)delegates enumerateObjectsUsingBlock:v7];
}

- (void)_rtiHandleInputDidBeginWithFlags:(unint64_t)flags sessionInfo:(id)info
{
  infoCopy = info;
  if (dword_100971508 <= 30 && (dword_100971508 != -1 || _LogCategory_Initialize()))
  {
    sub_10013F948();
  }

  [(SDSharedRemoteTextInputClient *)self _startClockWithResetIfNeeded];
  delegates = self->_delegates;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10013F2C0;
  v9[3] = &unk_1008D1528;
  v10 = infoCopy;
  flagsCopy = flags;
  v8 = infoCopy;
  [(NSMutableSet *)delegates enumerateObjectsUsingBlock:v9];
}

- (void)_rtiHandleInputDidEndWithFlags:(unint64_t)flags sessionInfo:(id)info
{
  infoCopy = info;
  if (dword_100971508 <= 30 && (dword_100971508 != -1 || _LogCategory_Initialize()))
  {
    sub_10013F988();
  }

  [(SDSharedRemoteTextInputClient *)self _stopClock:2];
  delegates = self->_delegates;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10013F40C;
  v9[3] = &unk_1008D1528;
  v10 = infoCopy;
  flagsCopy = flags;
  v8 = infoCopy;
  [(NSMutableSet *)delegates enumerateObjectsUsingBlock:v9];
}

- (void)_logEvent:(unint64_t)event stopClock:(BOOL)clock
{
  sessionClock = self->_sessionClock;
  if (sessionClock)
  {
    clockCopy = clock;
    [(NSDate *)sessionClock timeIntervalSinceNow];
    [(NSDate *)self->_sessionClock timeIntervalSinceNow];
    if (clockCopy)
    {
      if (dword_100971508 <= 30 && (dword_100971508 != -1 || _LogCategory_Initialize()))
      {
        sub_10013F9C8(event);
      }

      v8 = self->_sessionClock;
      self->_sessionClock = 0;

      overrunTimer = self->_overrunTimer;
      if (overrunTimer)
      {
        v11 = overrunTimer;
        dispatch_source_cancel(v11);
        v10 = self->_overrunTimer;
        self->_overrunTimer = 0;
      }
    }
  }
}

- (void)_startClockWithResetIfNeeded
{
  if (self->_sessionClock)
  {
    [(SDSharedRemoteTextInputClient *)self _stopClock:4];
  }

  if (dword_100971508 <= 30 && (dword_100971508 != -1 || _LogCategory_Initialize()))
  {
    sub_10013FA28();
  }

  v3 = +[NSDate date];
  sessionClock = self->_sessionClock;
  self->_sessionClock = v3;

  overrunTimer = self->_overrunTimer;
  if (overrunTimer)
  {
    v6 = overrunTimer;
    dispatch_source_cancel(v6);
    v7 = self->_overrunTimer;
    self->_overrunTimer = 0;
  }

  v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v9 = self->_overrunTimer;
  self->_overrunTimer = v8;

  v10 = self->_overrunTimer;
  v11 = dispatch_time(0, 3600000000000);
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0xEE6B280uLL);
  v12 = self->_overrunTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10013F6D4;
  handler[3] = &unk_1008CDEA0;
  handler[4] = self;
  dispatch_source_set_event_handler(v12, handler);
  dispatch_resume(self->_overrunTimer);
}

@end