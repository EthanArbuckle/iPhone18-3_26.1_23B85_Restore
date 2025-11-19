@interface MSDPairedDeviceProxy
- (MSDPairedDeviceProxy)init;
- (NSString)lastSeenDate;
- (void)bootstrap;
- (void)handleDeviceDidBeginPairingNotification:(id)a3;
- (void)handleDeviceDidBeginUnpairingNotification:(id)a3;
- (void)handleDeviceDidPairNotification:(id)a3;
- (void)handleDeviceDidUnpairNotification:(id)a3;
- (void)savePairedDeviceLastSeenDate:(id)a3;
- (void)updatePairedDeviceInfo;
@end

@implementation MSDPairedDeviceProxy

- (MSDPairedDeviceProxy)init
{
  v17.receiver = self;
  v17.super_class = MSDPairedDeviceProxy;
  v2 = [(MSDPairedDeviceProxy *)&v17 init];
  if (v2)
  {
    v3 = +[NRPairedDeviceRegistry sharedInstance];
    [(MSDPairedDeviceProxy *)v2 setDeviceRegistry:v3];

    v4 = +[NSNotificationCenter defaultCenter];
    v5 = NRPairedDeviceRegistryRemoteUnpairingDidBeginNotification;
    v6 = [(MSDPairedDeviceProxy *)v2 deviceRegistry];
    [v4 addObserver:v2 selector:"handleDeviceDidBeginUnpairingNotification:" name:v5 object:v6];

    v7 = +[NSNotificationCenter defaultCenter];
    v8 = NRPairedDeviceRegistryDeviceDidUnpairNotification;
    v9 = [(MSDPairedDeviceProxy *)v2 deviceRegistry];
    [v7 addObserver:v2 selector:"handleDeviceDidUnpairNotification:" name:v8 object:v9];

    v10 = +[NSNotificationCenter defaultCenter];
    v11 = NRPairedDeviceRegistryDeviceDidBeginPairingNotification;
    v12 = [(MSDPairedDeviceProxy *)v2 deviceRegistry];
    [v10 addObserver:v2 selector:"handleDeviceDidBeginPairingNotification:" name:v11 object:v12];

    v13 = +[NSNotificationCenter defaultCenter];
    v14 = NRPairedDeviceRegistryDeviceDidPairNotification;
    v15 = [(MSDPairedDeviceProxy *)v2 deviceRegistry];
    [v13 addObserver:v2 selector:"handleDeviceDidPairNotification:" name:v14 object:v15];

    [(MSDPairedDeviceProxy *)v2 updatePairedDeviceInfo];
  }

  return v2;
}

- (void)bootstrap
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = NSClassFromObject();
    v3 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Bootstrapping %{public}@...", &v4, 0xCu);
  }
}

- (void)updatePairedDeviceInfo
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(MSDPairedDeviceProxy *)obj deviceRegistry];
  v3 = [v2 getActivePairedDevice];
  [(MSDPairedDeviceProxy *)obj setDevice:v3];

  v4 = [(MSDPairedDeviceProxy *)obj device];

  if (v4)
  {
    [(MSDPairedDeviceProxy *)obj setPaired:1];
    v5 = [(MSDPairedDeviceProxy *)obj device];
    v6 = [v5 valueForProperty:NRDevicePropertyUDID];
    [(MSDPairedDeviceProxy *)obj setUdid:v6];

    [(MSDPairedDeviceProxy *)obj setReachable:1];
  }

  else
  {
    [(MSDPairedDeviceProxy *)obj setPaired:0];
    [(MSDPairedDeviceProxy *)obj setUdid:0];
    [(MSDPairedDeviceProxy *)obj setReachable:0];
    [(MSDPairedDeviceProxy *)obj savePairedDeviceLastSeenDate:0];
  }

  objc_sync_exit(obj);
}

- (void)handleDeviceDidBeginPairingNotification:(id)a3
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[MSDPairedDeviceProxy handleDeviceDidBeginPairingNotification:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s entered!", &v5, 0xCu);
  }

  v4 = +[MSDProgressUpdater sharedInstance];
  [v4 updateStage:30];
}

- (void)handleDeviceDidPairNotification:(id)a3
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDPairedDeviceProxy handleDeviceDidPairNotification:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s entered!", &v6, 0xCu);
  }

  [(MSDPairedDeviceProxy *)self updatePairedDeviceInfo];
  v5 = +[MSDMailProcessor sharedInstance];
  [v5 sendImmediateDeviceInfoPing];
}

- (void)handleDeviceDidBeginUnpairingNotification:(id)a3
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[MSDPairedDeviceProxy handleDeviceDidBeginUnpairingNotification:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s entered!", &v5, 0xCu);
  }

  v4 = +[MSDProgressUpdater sharedInstance];
  [v4 updateStage:31];
}

- (void)handleDeviceDidUnpairNotification:(id)a3
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[MSDPairedDeviceProxy handleDeviceDidUnpairNotification:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s entered!", &v7, 0xCu);
  }

  [(MSDPairedDeviceProxy *)self updatePairedDeviceInfo];
  v5 = +[MSDProgressUpdater sharedInstance];
  [v5 updateStage:100];

  v6 = +[MSDMailProcessor sharedInstance];
  [v6 sendImmediateDeviceInfoPing];
}

- (NSString)lastSeenDate
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"PairedDeviceLastSeenDate"];

  return v3;
}

- (void)savePairedDeviceLastSeenDate:(id)a3
{
  v5 = a3;
  v3 = +[MSDPreferencesFile sharedInstance];
  v4 = v3;
  if (v5)
  {
    [v3 setObject:v5 forKey:@"PairedDeviceLastSeenDate"];
  }

  else
  {
    [v3 removeObjectForKey:@"PairedDeviceLastSeenDate"];
  }
}

@end