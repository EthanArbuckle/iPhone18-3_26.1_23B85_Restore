@interface SDAutoUnlockPeer
+ (id)stringFromState:(unint64_t)state;
- (SDAutoUnlockPeer)initWithDeviceID:(id)d;
- (id)description;
- (void)handleDeviceUnlocked;
- (void)handlePairedSuccessfully;
- (void)handleRegistrationBegan;
- (void)handleRegistrationCompletedSuccessfully:(BOOL)successfully;
@end

@implementation SDAutoUnlockPeer

- (SDAutoUnlockPeer)initWithDeviceID:(id)d
{
  v8.receiver = self;
  v8.super_class = SDAutoUnlockPeer;
  dCopy = d;
  v4 = [(SDAutoUnlockPeer *)&v8 init];
  v5 = [dCopy copy];

  deviceID = v4->_deviceID;
  v4->_deviceID = v5;

  v4->_state = 0;
  return v4;
}

- (id)description
{
  deviceID = [(SDAutoUnlockPeer *)self deviceID];
  v4 = [objc_opt_class() stringFromState:{-[SDAutoUnlockPeer state](self, "state")}];
  v5 = [NSString stringWithFormat:@"<SDAutoUnlockPeer: %p, deviceID = %@, state = %@>", self, deviceID, v4];

  return v5;
}

- (void)handlePairedSuccessfully
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    deviceID = [(SDAutoUnlockPeer *)self deviceID];
    v5 = 138412290;
    v6 = deviceID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Pairing has armed: %@", &v5, 0xCu);
  }

  [(SDAutoUnlockPeer *)self setState:3];
}

- (void)handleRegistrationBegan
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    deviceID = [(SDAutoUnlockPeer *)self deviceID];
    v5 = 138412290;
    v6 = deviceID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Beginning registration for deviceID: %@", &v5, 0xCu);
  }

  [(SDAutoUnlockPeer *)self setState:1];
}

- (void)handleRegistrationCompletedSuccessfully:(BOOL)successfully
{
  if (successfully)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [(SDAutoUnlockPeer *)self setState:v3];
}

- (void)handleDeviceUnlocked
{
  if ([(SDAutoUnlockPeer *)self state]== 2)
  {
    v3 = auto_unlock_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      deviceID = [(SDAutoUnlockPeer *)self deviceID];
      v8 = 138412290;
      v9 = deviceID;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unlock has armed: %@", &v8, 0xCu);
    }

    [(SDAutoUnlockPeer *)self setState:3];
  }

  else if ([(SDAutoUnlockPeer *)self state]!= 3)
  {
    v5 = auto_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      deviceID2 = [(SDAutoUnlockPeer *)self deviceID];
      v7 = [objc_opt_class() stringFromState:{-[SDAutoUnlockPeer state](self, "state")}];
      v8 = 138412546;
      v9 = deviceID2;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unlock did not arm %@ current state is %@", &v8, 0x16u);
    }
  }
}

+ (id)stringFromState:(unint64_t)state
{
  if (state > 4)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1008D0B18 + state);
  }
}

@end