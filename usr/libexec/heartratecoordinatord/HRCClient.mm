@interface HRCClient
- (HRCClient)initWithDelegate:(id)a3 remoteObjectProxy:(id)a4 onQueue:(id)a5;
- (HRCClientDelegate)delegate;
- (void)_handleHeartRate:(id)a3;
- (void)_requestStreamingMode:(unint64_t)a3;
- (void)_setUserWorkoutActivityType:(unint64_t)a3 locationType:(int64_t)a4;
- (void)_updateProcessName:(id)a3;
- (void)dealloc;
- (void)handleHeartRate:(id)a3;
- (void)reportClientSnapshot;
- (void)requestOpportunisticUpdates:(BOOL)a3;
- (void)requestStreamingMode:(unint64_t)a3;
- (void)setUserWorkoutActivityType:(unint64_t)a3 locationType:(int64_t)a4;
- (void)updateProcessName:(id)a3;
@end

@implementation HRCClient

- (HRCClient)initWithDelegate:(id)a3 remoteObjectProxy:(id)a4 onQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = HRCClient;
  v11 = [(HRCClient *)&v15 init];
  objc_storeWeak(&v11->_delegate, v8);
  objc_storeStrong(&v11->_queue, a5);
  objc_storeStrong(&v11->_remoteObjectProxy, a4);
  v12 = +[NSUUID UUID];
  clientIdentifier = v11->_clientIdentifier;
  v11->_clientIdentifier = v12;

  return v11;
}

- (void)dealloc
{
  [(HRCClient *)self reportClientConnectionUpdate:0];
  v3 = sub_10000132C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    processName = self->_processName;
    *buf = 138543362;
    v7 = processName;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HRCClient dealloc called for client : %{public}@", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = HRCClient;
  [(HRCClient *)&v5 dealloc];
}

- (void)requestOpportunisticUpdates:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000102B8;
  v4[3] = &unk_100040868;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (void)requestStreamingMode:(unint64_t)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001033C;
  v4[3] = &unk_100040840;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)updateProcessName:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000103E0;
  v7[3] = &unk_100040BC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)setUserWorkoutActivityType:(unint64_t)a3 locationType:(int64_t)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010464;
  block[3] = &unk_100040BF0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(queue, block);
}

- (void)handleHeartRate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001050C;
  v7[3] = &unk_100040BC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_requestStreamingMode:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = sub_10000132C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HRCClient *)self processName];
    clientIdentifier = self->_clientIdentifier;
    v9 = 138543874;
    v10 = v6;
    v11 = 2114;
    v12 = clientIdentifier;
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ with uuid : %{public}@ requested streaming mode : %lu", &v9, 0x20u);
  }

  [(HRCClient *)self setStreamingMode:a3];
  [(HRCClient *)self reportClientSnapshot];
  v8 = [(HRCClient *)self delegate];
  [v8 clientStreamingModeRequestUpdated];
}

- (void)_updateProcessName:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  [(HRCClient *)self setProcessName:v4];
  v5 = sub_10000132C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    processName = self->_processName;
    v7 = 138543362;
    v8 = processName;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client updated processName : %{public}@", &v7, 0xCu);
  }

  [(HRCClient *)self reportClientConnectionUpdate:1];
}

- (void)_setUserWorkoutActivityType:(unint64_t)a3 locationType:(int64_t)a4
{
  dispatch_assert_queue_V2(self->_queue);
  v7 = sub_10000132C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    processName = self->_processName;
    clientIdentifier = self->_clientIdentifier;
    v11 = 138544130;
    v12 = processName;
    v13 = 2114;
    v14 = clientIdentifier;
    v15 = 2048;
    v16 = a3;
    v17 = 2048;
    v18 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ with uuid : %{public}@ updated workoutActivityType : %lu, locationType : %lu", &v11, 0x2Au);
  }

  v10 = [(HRCClient *)self delegate];
  [v10 clientUpdatedWorkoutActivityType:a3 withLocationType:a4 client:self];
}

- (void)_handleHeartRate:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = sub_10000132C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(HRCClient *)self processName];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "received heart rate data to be sent to %{public}@ process", &v7, 0xCu);
  }

  [(HRCFrontEndClient *)self->_remoteObjectProxy handleHeartRateData:v4];
}

- (void)reportClientSnapshot
{
  v19[0] = @"process-name";
  v3 = [(HRCClient *)self processName];
  v20[0] = v3;
  v19[1] = @"connection-identifier";
  v4 = [(NSUUID *)self->_clientIdentifier UUIDString];
  v20[1] = v4;
  v19[2] = @"streaming-mode";
  v5 = [NSNumber numberWithUnsignedInteger:[(HRCClient *)self streamingMode]];
  v20[2] = v5;
  v19[3] = @"opportunistic-mode";
  v6 = [NSNumber numberWithBool:[(HRCClient *)self opportunisticMode]];
  v20[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];

  v8 = sub_10000132C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(HRCClient *)self processName];
    v10 = [(NSUUID *)self->_clientIdentifier UUIDString];
    v11 = 138544130;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    v15 = 2050;
    v16 = [(HRCClient *)self streamingMode];
    v17 = 1026;
    v18 = [(HRCClient *)self opportunisticMode];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "power telemetry :: client snapshot with name : %{public}@ , uuid : %{public}@, streaming-mode : %{public}lu , opportunistic-mode : %{public}d", &v11, 0x26u);
  }

  if (qword_1000488D8 != -1)
  {
    sub_10001104C();
  }

  PPSSendTelemetry();
}

- (HRCClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end