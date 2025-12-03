@interface KeychainItemUpgradeRequestServer
+ (id)server;
- (KeychainItemUpgradeRequestServer)initWithLockStateTracker:(id)tracker;
@end

@implementation KeychainItemUpgradeRequestServer

- (KeychainItemUpgradeRequestServer)initWithLockStateTracker:(id)tracker
{
  trackerCopy = tracker;
  v9.receiver = self;
  v9.super_class = KeychainItemUpgradeRequestServer;
  v5 = [(KeychainItemUpgradeRequestServer *)&v9 init];
  if (v5)
  {
    v6 = [[KeychainItemUpgradeRequestController alloc] initWithLockStateTracker:trackerCopy];
    controller = v5->_controller;
    v5->_controller = v6;
  }

  return v5;
}

+ (id)server
{
  if (qword_10039DDA0 != -1)
  {
    dispatch_once(&qword_10039DDA0, &stru_100335F60);
  }

  v3 = qword_10039DD98;

  return v3;
}

@end