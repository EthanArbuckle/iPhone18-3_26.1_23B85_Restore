@interface EPCheckBluetoothForIRK
- (EPCheckBluetoothForIRK)initWithBTUUID:(id)a3 completion:(id)a4;
- (void)callCompletionWithAvailability:(unint64_t)a3;
- (void)checkForIRK;
- (void)startTimeout;
@end

@implementation EPCheckBluetoothForIRK

- (EPCheckBluetoothForIRK)initWithBTUUID:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(EPCheckBluetoothForIRK *)self init];
  if (v9)
  {
    v10 = nr_daemon_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = nr_daemon_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v7 UUIDString];
        v21 = 136315394;
        v22 = "[EPCheckBluetoothForIRK initWithBTUUID:completion:]";
        v23 = 2114;
        v24 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: %{public}@", &v21, 0x16u);
      }
    }

    objc_storeStrong(&v9->_bluetoothUUID, a3);
    v14 = objc_retainBlock(v8);
    completion = v9->_completion;
    v9->_completion = v14;

    [(EPCheckBluetoothForIRK *)v9 startTimeout];
    v16 = +[EPFactory sharedFactory];
    v17 = [v16 centralManagerManager];
    v18 = [v17 newManagerWithDelegate:v9];
    manager = v9->_manager;
    v9->_manager = v18;

    objc_storeStrong(&v9->_circularReference, v9);
  }

  return v9;
}

- (void)startTimeout
{
  v3 = +[NRQueue registryDaemonQueue];
  v4 = [v3 queue];
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v4);

  v6 = dispatch_time(0, 2000000000);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000777E8;
  handler[3] = &unk_100175660;
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);
  timer = self->_timer;
  self->_timer = v5;
  v8 = v5;

  dispatch_resume(v8);
}

- (void)callCompletionWithAvailability:(unint64_t)a3
{
  v5 = [(EPCentralManager *)self->_manager manager];
  [v5 stopScan];

  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v7 = self->_timer;
    self->_timer = 0;
  }

  if (self->_completion)
  {
    v8 = nr_daemon_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(NSUUID *)self->_bluetoothUUID UUIDString];
        v14 = 136315650;
        v15 = "[EPCheckBluetoothForIRK callCompletionWithAvailability:]";
        v16 = 2114;
        v17 = v11;
        v18 = 2048;
        v19 = a3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: %{public}@ calling completion block with %ld", &v14, 0x20u);
      }
    }

    (*(self->_completion + 2))();
    completion = self->_completion;
    self->_completion = 0;
  }

  circularReference = self->_circularReference;
  self->_circularReference = 0;
}

- (void)checkForIRK
{
  if (!self->_completion)
  {
    return;
  }

  v2 = self;
  if (!self->_timer)
  {
    v9 = 3;
LABEL_14:

    [(EPCheckBluetoothForIRK *)self callCompletionWithAvailability:v9];
    return;
  }

  v3 = [(EPCentralManager *)self->_manager manager];
  v4 = [v3 state];

  if (!v4)
  {
    return;
  }

  if (v4 != 10 && v4 != 5)
  {
    if ((v4 - 3) > 1)
    {
      if (v4 != 2)
      {
        return;
      }

      self = v2;
      v9 = 0;
    }

    else
    {
      self = v2;
      v9 = 2;
    }

    goto LABEL_14;
  }

  if (v2->_scanning)
  {
    v6 = [(EPCentralManager *)v2->_manager manager];
    bluetoothUUID = v2->_bluetoothUUID;
    v7 = [NSArray arrayWithObjects:&bluetoothUUID count:1];
    v8 = [v6 retrievePeripheralsWithIdentifiers:v7];

    if ([v8 count])
    {
      [(EPCheckBluetoothForIRK *)v2 callCompletionWithAvailability:4];
    }
  }

  else
  {
    v2->_scanning = 1;
    v18[0] = CBCentralManagerScanOptionAllowDuplicatesKey;
    v18[1] = CBManagerIsPrivilegedDaemonKey;
    v19[0] = &__kCFBooleanTrue;
    v19[1] = &__kCFBooleanTrue;
    v18[2] = CBCentralManagerScanOptionPeersKey;
    v17 = v2->_bluetoothUUID;
    v10 = [NSArray arrayWithObjects:&v17 count:1];
    v18[3] = CBCentralManagerScanOptionReloadMigratableItems;
    v19[2] = v10;
    v19[3] = &__kCFBooleanTrue;
    v11 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:4];

    v12 = [(EPCentralManager *)v2->_manager manager];
    v13 = [CBUUID UUIDWithString:@"9AA4730F-B25C-4CC3-B821-C931559FC196"];
    v16 = v13;
    v14 = [NSArray arrayWithObjects:&v16 count:1];
    [v12 scanForPeripheralsWithServices:v14 options:v11];
  }
}

@end