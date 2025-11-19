@interface HRCBluetoothLESourceObserverClient
- (HRCBluetoothLESourceObserverClient)initWithRemoteObjectProxy:(id)a3 onQueue:(id)a4;
- (void)_updateProcessName:(id)a3;
- (void)dealloc;
- (void)handleSourceListUpdate:(id)a3;
- (void)updateProcessName:(id)a3;
@end

@implementation HRCBluetoothLESourceObserverClient

- (HRCBluetoothLESourceObserverClient)initWithRemoteObjectProxy:(id)a3 onQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000132C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "HRCBluetoothLESourceObserverClient init", buf, 2u);
  }

  v14.receiver = self;
  v14.super_class = HRCBluetoothLESourceObserverClient;
  v9 = [(HRCBluetoothLESourceObserverClient *)&v14 init];
  queue = v9->_queue;
  v9->_queue = v7;
  v11 = v7;

  remoteObjectProxy = v9->_remoteObjectProxy;
  v9->_remoteObjectProxy = v6;

  return v9;
}

- (void)dealloc
{
  v3 = sub_10000132C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    processName = self->_processName;
    *buf = 138543362;
    v7 = processName;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "HRCBluetoothLESourceObserverClient dealloc called for client : %{public}@", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = HRCBluetoothLESourceObserverClient;
  [(HRCBluetoothLESourceObserverClient *)&v5 dealloc];
}

- (void)handleSourceListUpdate:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = sub_10000132C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 count];
    processName = self->_processName;
    v8 = 134349314;
    v9 = v6;
    v10 = 2114;
    v11 = processName;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "source list with count : %{public}lu being sent to client with processName : %{public}@", &v8, 0x16u);
  }

  [(HRCFrontEndBluetoothLESourceObserverClient *)self->_remoteObjectProxy handleSourceListUpdate:v4];
}

- (void)updateProcessName:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100009DC8;
  v7[3] = &unk_100040A58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_updateProcessName:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  [(HRCBluetoothLESourceObserverClient *)self setProcessName:v5];

  v6 = sub_10000132C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    processName = self->_processName;
    v8 = 138543362;
    v9 = processName;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "HRCBluetoothLESourceObserverClient updated processName : %{public}@", &v8, 0xCu);
  }
}

@end