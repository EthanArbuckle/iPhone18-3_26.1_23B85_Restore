@interface HRCBluetoothLESourceObserverClient
- (HRCBluetoothLESourceObserverClient)initWithRemoteObjectProxy:(id)proxy onQueue:(id)queue;
- (void)_updateProcessName:(id)name;
- (void)dealloc;
- (void)handleSourceListUpdate:(id)update;
- (void)updateProcessName:(id)name;
@end

@implementation HRCBluetoothLESourceObserverClient

- (HRCBluetoothLESourceObserverClient)initWithRemoteObjectProxy:(id)proxy onQueue:(id)queue
{
  proxyCopy = proxy;
  queueCopy = queue;
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
  v9->_queue = queueCopy;
  v11 = queueCopy;

  remoteObjectProxy = v9->_remoteObjectProxy;
  v9->_remoteObjectProxy = proxyCopy;

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

- (void)handleSourceListUpdate:(id)update
{
  updateCopy = update;
  dispatch_assert_queue_V2(self->_queue);
  v5 = sub_10000132C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [updateCopy count];
    processName = self->_processName;
    v8 = 134349314;
    v9 = v6;
    v10 = 2114;
    v11 = processName;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "source list with count : %{public}lu being sent to client with processName : %{public}@", &v8, 0x16u);
  }

  [(HRCFrontEndBluetoothLESourceObserverClient *)self->_remoteObjectProxy handleSourceListUpdate:updateCopy];
}

- (void)updateProcessName:(id)name
{
  nameCopy = name;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100009DC8;
  v7[3] = &unk_100040A58;
  v7[4] = self;
  v8 = nameCopy;
  v6 = nameCopy;
  dispatch_async(queue, v7);
}

- (void)_updateProcessName:(id)name
{
  queue = self->_queue;
  nameCopy = name;
  dispatch_assert_queue_V2(queue);
  [(HRCBluetoothLESourceObserverClient *)self setProcessName:nameCopy];

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