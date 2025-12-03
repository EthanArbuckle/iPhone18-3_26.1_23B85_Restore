@interface SAPersistentConnectionMonitor
- (BOOL)getReachability;
- (SAPersistentConnectionMonitor)initWithQueue:(id)queue forNetwork:(int)network;
- (void)interfaceReachabilityChanged:(id)changed;
@end

@implementation SAPersistentConnectionMonitor

- (SAPersistentConnectionMonitor)initWithQueue:(id)queue forNetwork:(int)network
{
  queueCopy = queue;
  if (!network)
  {
    v7 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
    [v7 addDelegate:self queue:queueCopy];
    goto LABEL_5;
  }

  if (network == 1)
  {
    v7 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
    [v7 addDelegate:self queue:queueCopy];
LABEL_5:

    goto LABEL_8;
  }

  v8 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v10[0] = 68289026;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#saNwReachMonitor,init,invalid type}", v10, 0x12u);
  }

LABEL_8:
  self->nwType = network;

  return self;
}

- (void)interfaceReachabilityChanged:(id)changed
{
  changedCopy = changed;
  v5 = objc_autoreleasePoolPush();
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    isInternetReachable = [changedCopy isInternetReachable];
    nwType = self->nwType;
    *buf = 68289538;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 1026;
    v21 = isInternetReachable;
    v22 = 1026;
    v23 = nwType;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saNwReachMonitor,interfaceReachabilityChanged, reachable:%{public}d, type:%{public}d}", buf, 0x1Eu);
  }

  reachabilityInstance = self->reachabilityInstance;
  if (reachabilityInstance)
  {
    isInternetReachable2 = [changedCopy isInternetReachable];
    v15 = isInternetReachable2;
    v11 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(reachabilityInstance + 30);
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 1026;
      v21 = v12;
      v22 = 1026;
      v23 = isInternetReachable2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saNwReachMonitor,onNetworkReachabilityChanged, type:%{public}d, isConnected:%{public}hhd}", buf, 0x1Eu);
    }

    v13 = sub_100042820();
    v14 = 0.0;
    if (*(v13 + 10) != 0.0)
    {
      v14 = 1.0;
    }

    sub_100092E8C(reachabilityInstance + 48, &v15, v14);
  }

  objc_autoreleasePoolPop(v5);
}

- (BOOL)getReachability
{
  nwType = self->nwType;
  if (nwType)
  {
    if (nwType != 1)
    {
      return 0;
    }

    v3 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
    isInternetReachable = [v3 isInternetReachable];
  }

  else
  {
    v3 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
    isInternetReachable = [v3 isInternetReachable];
  }

  v5 = isInternetReachable;

  return v5;
}

@end