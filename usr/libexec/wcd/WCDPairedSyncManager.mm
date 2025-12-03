@interface WCDPairedSyncManager
- (BOOL)handlePotentialPairedSyncForComplicationsFailedWithIdentifier:(id)identifier error:(id)error;
- (NSString)state;
- (WCDPairedSyncManager)init;
- (void)handlePairedSyncForComplicationsAckWithIdentifier:(id)identifier success:(BOOL)success;
- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session;
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

  coordinator = [(WCDPairedSyncManager *)self coordinator];
  NSAppendPrintF();
  v6 = v5;

  identifiersToSyncSessions = [(WCDPairedSyncManager *)self identifiersToSyncSessions];
  NSAppendPrintF();
  v7 = v6;

  return v6;
}

- (void)handlePairedSyncForComplicationsAckWithIdentifier:(id)identifier success:(BOOL)success
{
  successCopy = success;
  identifierCopy = identifier;
  identifiersToSyncSessions = [(WCDPairedSyncManager *)self identifiersToSyncSessions];
  v8 = [identifiersToSyncSessions objectForKeyedSubscript:identifierCopy];

  identifiersToSyncSessions2 = wc_log();
  v10 = os_log_type_enabled(identifiersToSyncSessions2, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (successCopy)
    {
      if (v10)
      {
        v11 = 138543362;
        v12 = identifierCopy;
        _os_log_impl(&_mh_execute_header, identifiersToSyncSessions2, OS_LOG_TYPE_DEFAULT, "%{public}@ sync completed", &v11, 0xCu);
      }

      [v8 syncDidComplete];
    }

    else
    {
      if (v10)
      {
        v11 = 138543362;
        v12 = identifierCopy;
        _os_log_impl(&_mh_execute_header, identifiersToSyncSessions2, OS_LOG_TYPE_DEFAULT, "%{public}@ sync failed or got cancelled", &v11, 0xCu);
      }

      [v8 syncDidFailWithError:0];
    }

    identifiersToSyncSessions2 = [(WCDPairedSyncManager *)self identifiersToSyncSessions];
    [identifiersToSyncSessions2 removeObjectForKey:identifierCopy];
  }

  else if (v10)
  {
    v11 = 138543362;
    v12 = identifierCopy;
    _os_log_impl(&_mh_execute_header, identifiersToSyncSessions2, OS_LOG_TYPE_DEFAULT, "unknown sync session identifier %{public}@", &v11, 0xCu);
  }
}

- (BOOL)handlePotentialPairedSyncForComplicationsFailedWithIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  identifiersToSyncSessions = [(WCDPairedSyncManager *)self identifiersToSyncSessions];
  v9 = [identifiersToSyncSessions objectForKeyedSubscript:identifierCopy];

  if (v9)
  {
    v10 = wc_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ sync failed or got cancelled", &v12, 0xCu);
    }

    [v9 syncDidFailWithError:errorCopy];
  }

  return v9 != 0;
}

- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session
{
  sessionCopy = session;
  sessionIdentifier = [sessionCopy sessionIdentifier];
  uUIDString = [sessionIdentifier UUIDString];

  v8 = wc_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = uUIDString;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  identifiersToSyncSessions = [(WCDPairedSyncManager *)self identifiersToSyncSessions];
  [identifiersToSyncSessions setObject:sessionCopy forKeyedSubscript:uUIDString];

  v10 = [@"com.apple.pairedsync.watchconnectivity.complications" stringByAppendingFormat:@"-%@", uUIDString];
  [v10 UTF8String];
  v11 = os_transaction_create();
  [(WCDPairedSyncManager *)self setSyncTransaction:v11];

  v12 = +[WatchConnectivityDaemon sharedDaemon];
  [v12 sendPairedSyncForComplicationsStartedWithIdentifier:uUIDString];
}

@end