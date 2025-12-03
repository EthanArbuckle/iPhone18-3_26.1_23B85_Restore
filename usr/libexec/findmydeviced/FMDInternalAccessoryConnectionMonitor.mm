@interface FMDInternalAccessoryConnectionMonitor
+ (id)sharedMonitor;
- (void)accessoryDidDisconnect:(id)disconnect;
- (void)accessoryDidUpdate:(id)update;
@end

@implementation FMDInternalAccessoryConnectionMonitor

+ (id)sharedMonitor
{
  if (qword_100314A30 != -1)
  {
    sub_10022F6AC();
  }

  v3 = qword_100314A28;

  return v3;
}

- (void)accessoryDidUpdate:(id)update
{
  updateCopy = update;
  v8 = objc_alloc_init(FMAlert);
  [v8 setMsgTitle:@"Accessory connected"];
  name = [updateCopy name];

  v5 = +[NSDate date];
  v6 = [NSString stringWithFormat:@"'%@' connected at %@", name, v5];
  [v8 setMsgText:v6];

  [v8 setDefaultButtonTitle:@"OK"];
  [v8 setShowMsgInLockScreen:1];
  [v8 setDismissMsgOnUnlock:1];
  v7 = +[FMAlertManager sharedInstance];
  [v7 activateAlert:v8];
}

- (void)accessoryDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v8 = objc_alloc_init(FMAlert);
  [v8 setMsgTitle:@"Accessory disconnected"];
  name = [disconnectCopy name];

  v5 = +[NSDate date];
  v6 = [NSString stringWithFormat:@"'%@' disconnected at %@", name, v5];
  [v8 setMsgText:v6];

  [v8 setDefaultButtonTitle:@"OK"];
  [v8 setShowMsgInLockScreen:1];
  [v8 setDismissMsgOnUnlock:1];
  v7 = +[FMAlertManager sharedInstance];
  [v7 activateAlert:v8];
}

@end