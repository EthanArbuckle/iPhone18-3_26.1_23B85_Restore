@interface MigrationBroadcaster
+ (id)sharedInstance;
- (MigrationBroadcaster)init;
- (id)getRefactoredServiceUUID;
- (void)peripheralManagerDidUpdateState:(id)state;
- (void)setIdentifier:(id)identifier;
- (void)setMigrationPercentage:(unsigned __int16)percentage minsRemaining:(unsigned __int16)remaining didFinish:(BOOL)finish;
- (void)startAdvertising:(id)advertising;
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

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  obj = self;
  objc_sync_enter(obj);
  identifier = obj->_identifier;
  obj->_identifier = identifierCopy;

  objc_sync_exit(obj);
}

- (void)setMigrationPercentage:(unsigned __int16)percentage minsRemaining:(unsigned __int16)remaining didFinish:(BOOL)finish
{
  obj = self;
  objc_sync_enter(obj);
  obj->_percentage = percentage;
  obj->_minutes = remaining;
  obj->_didFinish = finish;
  obj->_needUpdate = 1;
  objc_sync_exit(obj);
}

- (id)getRefactoredServiceUUID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_needUpdate = 0;
  v3 = [NSString stringWithFormat:@"%@-%04X-%02X%02X-%04X-%@", @"B323B328", 0xFFFFLL, selfCopy->_didFinish, selfCopy->_percentage, selfCopy->_minutes, selfCopy->_identifier];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)startAdvertising:(id)advertising
{
  advertisingCopy = advertising;
  [(MigrationBroadcaster *)self stopAdvertising];
  broadcastQ = self->_broadcastQ;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001734;
  v7[3] = &unk_1000208D0;
  v7[4] = self;
  v8 = advertisingCopy;
  v6 = advertisingCopy;
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

- (void)peripheralManagerDidUpdateState:(id)state
{
  if ([state state] == 5)
  {
    v4 = [NSString stringWithFormat:@"Bluetooth is ON."];
    logger = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "%{public}@", &v7, 0xCu);
    }

    v6 = 1;
  }

  else
  {
    v4 = [NSString stringWithFormat:@"Bluetooth is OFF or unavailable."];
    logger = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      sub_100012C38(v4, logger);
    }

    v6 = 0;
  }

  self->_bluetoothOn = v6;
}

@end