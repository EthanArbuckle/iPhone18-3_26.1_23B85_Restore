@interface CLMiLoPedestrianFenceClient
- (id)initInUniverse:(id)a3 andIdentifier:(id)a4 andRadiusInMeters:(float)a5 andCallback:(id)a6 andStatusCallback:(id)a7 andErrorCallback:(id)a8;
- (void)clearFence;
- (void)dealloc;
- (void)didExitFence:(id)a3;
- (void)didFailWithError:(int64_t)a3;
- (void)endSession;
- (void)sessionStatusReport:(id)a3;
- (void)setFence;
- (void)startSession;
@end

@implementation CLMiLoPedestrianFenceClient

- (id)initInUniverse:(id)a3 andIdentifier:(id)a4 andRadiusInMeters:(float)a5 andCallback:(id)a6 andStatusCallback:(id)a7 andErrorCallback:(id)a8
{
  v17.receiver = self;
  v17.super_class = CLMiLoPedestrianFenceClient;
  v14 = [(CLMiLoPedestrianFenceClient *)&v17 init];
  if (v14)
  {
    v14->_universe = a3;
    v14->_delegateQueue = [objc_msgSend(a3 "silo")];
    v14->_onMotionMeasurements = [a6 copy];
    v14->_onStatusReport = [a7 copy];
    v14->_onErrorIndication = [a8 copy];
    v15 = [-[CLIntersiloUniverse vendor](v14->_universe "vendor")];
    v14->_pedestrianFenceManager = v15;
    [(CLPedestrianFenceServiceProtocol *)v15 registerDelegate:v14 inSilo:[(CLIntersiloUniverse *)v14->_universe silo]];
    [(CLPedestrianFenceServiceProtocol *)v14->_pedestrianFenceManager setDelegateEntityName:"CLMiLoPedestrianFenceClient"];
    v14->_sessionActive = 0;
    v14->_fenceActive = 0;
    v14->_fenceIdStr = a4;
    v14->_valid = 1;
    v14->_radius = a5;
  }

  return v14;
}

- (void)dealloc
{
  [(CLPedestrianFenceServiceProtocol *)self->_pedestrianFenceManager endSessionForClient:self];

  v3.receiver = self;
  v3.super_class = CLMiLoPedestrianFenceClient;
  [(CLMiLoPedestrianFenceClient *)&v3 dealloc];
}

- (void)setFence
{
  sub_10000EC00(&__p, "");
  delegateQueue = self->_delegateQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003CCF28;
  v4[3] = &unk_102447418;
  v4[4] = self;
  dispatch_async(delegateQueue, v4);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

- (void)clearFence
{
  delegateQueue = self->_delegateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003CD250;
  block[3] = &unk_102447418;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

- (void)startSession
{
  delegateQueue = self->_delegateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003CD3EC;
  block[3] = &unk_102447418;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

- (void)endSession
{
  delegateQueue = self->_delegateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003CD554;
  block[3] = &unk_102447418;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

- (void)didExitFence:(id)a3
{
  if ([a3 isEqualToString:self->_fenceIdStr])
  {
    self->_fenceActive = 0;
    delegateQueue = self->_delegateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003CD828;
    block[3] = &unk_102447418;
    block[4] = self;
    dispatch_async(delegateQueue, block);
  }

  else
  {
    if (qword_1025D46D0 != -1)
    {
      sub_101872B84();
    }

    v6 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289283;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2081;
      v15 = [a3 UTF8String];
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Got fence exit notification for an unknown fence, fenceId:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1025D46D0 != -1)
      {
        sub_101872B98();
      }
    }

    v7 = qword_1025D46D8;
    if (os_signpost_enabled(qword_1025D46D8))
    {
      v8 = [a3 UTF8String];
      *buf = 68289283;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2081;
      v15 = v8;
      _os_signpost_emit_with_name_impl(dword_100000000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Got fence exit notification for an unknown fence", "{msg%{public}.0s:Got fence exit notification for an unknown fence, fenceId:%{private, location:escape_only}s}", buf, 0x1Cu);
    }
  }
}

- (void)didFailWithError:(int64_t)a3
{
  if (qword_1025D46D0 != -1)
  {
    sub_101872B84();
  }

  v5 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289283;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2049;
    v14 = a3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Got Failure notification from Pedestrian Fence Manager with, Error Code:%{private}ld}", buf, 0x1Cu);
    if (qword_1025D46D0 != -1)
    {
      sub_101872B98();
    }
  }

  v6 = qword_1025D46D8;
  if (os_signpost_enabled(qword_1025D46D8))
  {
    *buf = 68289283;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2049;
    v14 = a3;
    _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Got Failure notification from Pedestrian Fence Manager with", "{msg%{public}.0s:Got Failure notification from Pedestrian Fence Manager with, Error Code:%{private}ld}", buf, 0x1Cu);
  }

  delegateQueue = self->_delegateQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003CDB4C;
  v8[3] = &unk_102449BC0;
  v8[4] = self;
  v8[5] = a3;
  dispatch_async(delegateQueue, v8);
}

- (void)sessionStatusReport:(id)a3
{
  if (qword_1025D46D0 != -1)
  {
    sub_101872B84();
  }

  v5 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2113;
    v14 = a3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMiLoPedestrianFenceClient: Received status report, Status Report:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  if (self->_fenceActive)
  {
    delegateQueue = self->_delegateQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1003CDD18;
    v8[3] = &unk_1024473F0;
    v8[4] = self;
    v8[5] = a3;
    dispatch_async(delegateQueue, v8);
  }

  else
  {
    if (qword_1025D46D0 != -1)
    {
      sub_101872B98();
    }

    v7 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "Got status report when we didn't have an active fence -- ignoring notification", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101872E80();
    }
  }
}

@end