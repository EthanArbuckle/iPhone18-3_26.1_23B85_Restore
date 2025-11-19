@interface SAPersistentConnectionMonitor
- (BOOL)getReachability;
- (SAPersistentConnectionMonitor)initWithQueue:(id)a3 forNetwork:(int)a4;
- (void)interfaceReachabilityChanged:(id)a3;
@end

@implementation SAPersistentConnectionMonitor

- (SAPersistentConnectionMonitor)initWithQueue:(id)a3 forNetwork:(int)a4
{
  v6 = a3;
  if (!a4)
  {
    v7 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
    [v7 addDelegate:self queue:v6];
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v7 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
    [v7 addDelegate:self queue:v6];
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
  self->nwType = a4;

  return self;
}

- (void)interfaceReachabilityChanged:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 isInternetReachable];
    nwType = self->nwType;
    *buf = 68289538;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 1026;
    v21 = v7;
    v22 = 1026;
    v23 = nwType;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saNwReachMonitor,interfaceReachabilityChanged, reachable:%{public}d, type:%{public}d}", buf, 0x1Eu);
  }

  reachabilityInstance = self->reachabilityInstance;
  if (reachabilityInstance)
  {
    v10 = [v4 isInternetReachable];
    v15 = v10;
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
      v23 = v10;
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
    v4 = [v3 isInternetReachable];
  }

  else
  {
    v3 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
    v4 = [v3 isInternetReachable];
  }

  v5 = v4;

  return v5;
}

@end