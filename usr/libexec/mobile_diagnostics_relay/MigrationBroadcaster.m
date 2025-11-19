@interface MigrationBroadcaster
+ (id)sharedInstance;
- (MigrationBroadcaster)init;
- (id)getRefactoredServiceUUID;
- (void)peripheralManagerDidUpdateState:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setMigrationPercentage:(unsigned __int16)a3 minsRemaining:(unsigned __int16)a4 didFinish:(BOOL)a5;
- (void)startAdvertising:(id)a3;
- (void)stopAdvertising;
- (void)updateAdvertising;
@end

@implementation MigrationBroadcaster

- (MigrationBroadcaster)init
{
  v9.receiver = self;
  v9.super_class = MigrationBroadcaster;
  v2 = [(MDRBaseObject *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.MDR.btbroadcastQ", v3);
    broadcastQ = v2->_broadcastQ;
    v2->_broadcastQ = v4;

    v2->_bluetoothOn = 0;
    identifier = v2->_identifier;
    v2->_identifier = 0;

    v2->_percentage = 0;
    v2->_minutes = -1;
    v2->_didFinish = 0;
    v7 = [[CBPeripheralManager alloc] initWithDelegate:v2 queue:0];
    [(MigrationBroadcaster *)v2 setPeripheralManager:v7];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_1000264A0 != -1)
  {
    sub_100012C24();
  }

  v3 = qword_100026498;

  return v3;
}

- (void)setIdentifier:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  identifier = obj->_identifier;
  obj->_identifier = v4;

  objc_sync_exit(obj);
}

- (void)setMigrationPercentage:(unsigned __int16)a3 minsRemaining:(unsigned __int16)a4 didFinish:(BOOL)a5
{
  obj = self;
  objc_sync_enter(obj);
  obj->_percentage = a3;
  obj->_minutes = a4;
  obj->_didFinish = a5;
  obj->_needUpdate = 1;
  objc_sync_exit(obj);
}

- (id)getRefactoredServiceUUID
{
  v2 = self;
  objc_sync_enter(v2);
  v2->_needUpdate = 0;
  v3 = [NSString stringWithFormat:@"%@-%04X-%02X%02X-%04X-%@", @"B323B328", 0xFFFFLL, v2->_didFinish, v2->_percentage, v2->_minutes, v2->_identifier];
  objc_sync_exit(v2);

  return v3;
}

- (void)startAdvertising:(id)a3
{
  v4 = a3;
  [(MigrationBroadcaster *)self stopAdvertising];
  broadcastQ = self->_broadcastQ;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001734;
  v7[3] = &unk_1000208D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(broadcastQ, v7);
}

- (void)stopAdvertising
{
  broadcastQ = self->_broadcastQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001A2C;
  block[3] = &unk_1000208A8;
  block[4] = self;
  dispatch_async(broadcastQ, block);
}

- (void)updateAdvertising
{
  [(MigrationBroadcaster *)self stopAdvertising];
  broadcastQ = self->_broadcastQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001BBC;
  block[3] = &unk_1000208A8;
  block[4] = self;
  dispatch_async(broadcastQ, block);
}

- (void)peripheralManagerDidUpdateState:(id)a3
{
  if ([a3 state] == 5)
  {
    v4 = [NSString stringWithFormat:@"Bluetooth is ON."];
    v5 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", &v7, 0xCu);
    }

    v6 = 1;
  }

  else
  {
    v4 = [NSString stringWithFormat:@"Bluetooth is OFF or unavailable."];
    v5 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100012C38(v4, v5);
    }

    v6 = 0;
  }

  self->_bluetoothOn = v6;
}

@end