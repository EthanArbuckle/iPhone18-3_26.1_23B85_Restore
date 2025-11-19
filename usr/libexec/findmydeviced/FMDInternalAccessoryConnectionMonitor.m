@interface FMDInternalAccessoryConnectionMonitor
+ (id)sharedMonitor;
- (void)accessoryDidDisconnect:(id)a3;
- (void)accessoryDidUpdate:(id)a3;
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

- (void)accessoryDidUpdate:(id)a3
{
  v3 = a3;
  v8 = objc_alloc_init(FMAlert);
  [v8 setMsgTitle:@"Accessory connected"];
  v4 = [v3 name];

  v5 = +[NSDate date];
  v6 = [NSString stringWithFormat:@"'%@' connected at %@", v4, v5];
  [v8 setMsgText:v6];

  [v8 setDefaultButtonTitle:@"OK"];
  [v8 setShowMsgInLockScreen:1];
  [v8 setDismissMsgOnUnlock:1];
  v7 = +[FMAlertManager sharedInstance];
  [v7 activateAlert:v8];
}

- (void)accessoryDidDisconnect:(id)a3
{
  v3 = a3;
  v8 = objc_alloc_init(FMAlert);
  [v8 setMsgTitle:@"Accessory disconnected"];
  v4 = [v3 name];

  v5 = +[NSDate date];
  v6 = [NSString stringWithFormat:@"'%@' disconnected at %@", v4, v5];
  [v8 setMsgText:v6];

  [v8 setDefaultButtonTitle:@"OK"];
  [v8 setShowMsgInLockScreen:1];
  [v8 setDismissMsgOnUnlock:1];
  v7 = +[FMAlertManager sharedInstance];
  [v7 activateAlert:v8];
}

@end