@interface WCDPairedSyncManager
- (BOOL)handlePotentialPairedSyncForComplicationsFailedWithIdentifier:(id)a3 error:(id)a4;
- (NSString)state;
- (WCDPairedSyncManager)init;
- (void)handlePairedSyncForComplicationsAckWithIdentifier:(id)a3 success:(BOOL)a4;
- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4;
@end

@implementation WCDPairedSyncManager

- (WCDPairedSyncManager)init
{
  v8.receiver = self;
  v8.super_class = WCDPairedSyncManager;
  v2 = [(WCDPairedSyncManager *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    identifiersToSyncSessions = v2->_identifiersToSyncSessions;
    v2->_identifiersToSyncSessions = v3;

    v5 = [(objc_class *)off_1000549D0() syncCoordinatorWithServiceName:@"com.apple.pairedsync.watchconnectivity.complications"];
    coordinator = v2->_coordinator;
    v2->_coordinator = v5;

    [(PSYSyncCoordinator *)v2->_coordinator setDelegate:v2];
  }

  return v2;
}

- (NSString)state
{
  v3 = objc_opt_class();
  v9 = NSStringFromClass(v3);
  NSAppendPrintF();
  v4 = 0;

  NSAppendPrintF();
  v5 = v4;

  v10 = [(WCDPairedSyncManager *)self coordinator];
  NSAppendPrintF();
  v6 = v5;

  v11 = [(WCDPairedSyncManager *)self identifiersToSyncSessions];
  NSAppendPrintF();
  v7 = v6;

  return v6;
}

- (void)handlePairedSyncForComplicationsAckWithIdentifier:(id)a3 success:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(WCDPairedSyncManager *)self identifiersToSyncSessions];
  v8 = [v7 objectForKeyedSubscript:v6];

  v9 = wc_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v4)
    {
      if (v10)
      {
        v11 = 138543362;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ sync completed", &v11, 0xCu);
      }

      [v8 syncDidComplete];
    }

    else
    {
      if (v10)
      {
        v11 = 138543362;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ sync failed or got cancelled", &v11, 0xCu);
      }

      [v8 syncDidFailWithError:0];
    }

    v9 = [(WCDPairedSyncManager *)self identifiersToSyncSessions];
    [v9 removeObjectForKey:v6];
  }

  else if (v10)
  {
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "unknown sync session identifier %{public}@", &v11, 0xCu);
  }
}

- (BOOL)handlePotentialPairedSyncForComplicationsFailedWithIdentifier:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WCDPairedSyncManager *)self identifiersToSyncSessions];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9)
  {
    v10 = wc_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ sync failed or got cancelled", &v12, 0xCu);
    }

    [v9 syncDidFailWithError:v7];
  }

  return v9 != 0;
}

- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4
{
  v5 = a4;
  v6 = [v5 sessionIdentifier];
  v7 = [v6 UUIDString];

  v8 = wc_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v9 = [(WCDPairedSyncManager *)self identifiersToSyncSessions];
  [v9 setObject:v5 forKeyedSubscript:v7];

  v10 = [@"com.apple.pairedsync.watchconnectivity.complications" stringByAppendingFormat:@"-%@", v7];
  [v10 UTF8String];
  v11 = os_transaction_create();
  [(WCDPairedSyncManager *)self setSyncTransaction:v11];

  v12 = +[WatchConnectivityDaemon sharedDaemon];
  [v12 sendPairedSyncForComplicationsStartedWithIdentifier:v7];
}

@end