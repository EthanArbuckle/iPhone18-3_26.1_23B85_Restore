@interface SDAutoUnlockProxySession
- (SDAutoUnlockProxySession)initWithDevice:(id)a3 sessionID:(id)a4 bleDevice:(id)a5;
- (id)results;
- (void)_start;
- (void)addObservers;
- (void)deviceConnected:(id)a3;
- (void)handleFoundBLEDevice:(id)a3;
- (void)invalidate;
- (void)notifyDelegateWithError:(id)a3;
- (void)removeObservers;
- (void)sendProxyTrigger;
- (void)start;
@end

@implementation SDAutoUnlockProxySession

- (SDAutoUnlockProxySession)initWithDevice:(id)a3 sessionID:(id)a4 bleDevice:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = SDAutoUnlockProxySession;
  v10 = [(SDAutoUnlockPairingSession *)&v13 initWithDevice:a3 sessionID:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_bleDevice, a5);
    [(SDAutoUnlockProxySession *)v11 addObservers];
  }

  return v11;
}

- (void)start
{
  v3 = [(SDAutoUnlockPairingSession *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001197C0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_start
{
  [(SDAutoUnlockProxySession *)self setActiveConnection:1];
  v3 = +[SDNearbyAgent sharedNearbyAgent];
  v4 = [(SDAutoUnlockProxySession *)self bleDevice];
  [v3 startUnlockBLEConnectionWithDevice:v4 encrypted:1];

  [(SDAutoUnlockProxySession *)self setState:1];

  [(SDAutoUnlockProxySession *)self sendProxyTrigger];
}

- (void)invalidate
{
  if (![(SDAutoUnlockProxySession *)self invalidated])
  {
    [(SDAutoUnlockProxySession *)self setInvalidated:1];
    v5.receiver = self;
    v5.super_class = SDAutoUnlockProxySession;
    [(SDAutoUnlockPairingSession *)&v5 invalidate];
    [(SDAutoUnlockProxySession *)self removeObservers];
    if ([(SDAutoUnlockProxySession *)self activeConnection])
    {
      v3 = +[SDNearbyAgent sharedNearbyAgent];
      v4 = [(SDAutoUnlockProxySession *)self bleDevice];
      [v3 stopUnlockBLEConnectionWithDevice:v4];
    }
  }
}

- (void)addObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"deviceConnected:" name:SFBluetoothNotificationNameConnected object:0];
}

- (void)removeObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (id)results
{
  v3 = objc_opt_new();
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:SDAutoUnlockManagerMetricUsingProxyDeviceKey];
  v4 = [(SDAutoUnlockProxySession *)self model];
  [v3 setObject:v4 forKeyedSubscript:SDAutoUnlockManagerMetricProxyDeviceModelKey];

  if ([(SDAutoUnlockProxySession *)self proxyRSSI])
  {
    v5 = [NSNumber numberWithInt:[(SDAutoUnlockProxySession *)self proxyRSSI]];
    [v3 setObject:v5 forKeyedSubscript:SDAutoUnlockManagerMetricProxyDeviceRSSIKey];
  }

  [(SDAutoUnlockProxySession *)self proxyDiscoveryTime];
  if (v6 != 0.0)
  {
    [(SDAutoUnlockProxySession *)self proxyDiscoveryTime];
    v7 = [NSNumber numberWithDouble:?];
    [v3 setObject:v7 forKeyedSubscript:SDAutoUnlockManagerMetricBluetoothProxyDeviceDiscoveryKey];
  }

  return v3;
}

- (void)deviceConnected:(id)a3
{
  v10 = [a3 userInfo];
  v4 = [v10 objectForKeyedSubscript:SFBluetoothNotificationKeyPeerDevice];
  v5 = [v4 identifier];
  v6 = [(SDAutoUnlockProxySession *)self bleDevice];
  v7 = [v6 identifier];
  v8 = [v5 isEqual:v7];

  if (v8)
  {
    v9 = [v10 objectForKeyedSubscript:SFBluetoothNotificationKeyConnectTime];
    [v9 doubleValue];
    [(SDAutoUnlockProxySession *)self setConnectionTime:?];

    if ([(SDAutoUnlockProxySession *)self state]== 1)
    {
      [(SDAutoUnlockProxySession *)self setState:2];
    }
  }
}

- (void)handleFoundBLEDevice:(id)a3
{
  v4 = a3;
  -[SDAutoUnlockProxySession setProxyRSSI:](self, "setProxyRSSI:", [v4 rssi]);
  v5 = +[NSDate date];
  v6 = [(SDAutoUnlockProxySession *)self startDate];
  [v5 timeIntervalSinceDate:v6];
  [(SDAutoUnlockProxySession *)self setProxyDiscoveryTime:?];

  if (sub_1001116DC(v4))
  {
    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Proxy available for unlock", v13, 2u);
    }

    v8 = [(SDAutoUnlockPairingSession *)self delegate];
    [(__CFString *)v8 sessionDidStartConnection:self];
  }

  else
  {
    if (sub_10011170C(v4))
    {
      v8 = SFLocalizedStringForKey();
      v9 = 135;
    }

    else
    {
      v8 = @"Watch Not On Wrist";
      v9 = 144;
    }

    v10 = SFAutoUnlockErrorDomain;
    v14 = NSLocalizedDescriptionKey;
    v15 = v8;
    v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v12 = [NSError errorWithDomain:v10 code:v9 userInfo:v11];
    [(SDAutoUnlockProxySession *)self notifyDelegateWithError:v12];
  }
}

- (void)notifyDelegateWithError:(id)a3
{
  v7 = a3;
  if (![(SDAutoUnlockProxySession *)self notified])
  {
    v4 = [(SDAutoUnlockPairingSession *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(SDAutoUnlockPairingSession *)self delegate];
      [v6 session:self didCompleteWithError:v7];

      [(SDAutoUnlockProxySession *)self setNotified:1];
    }
  }
}

- (void)sendProxyTrigger
{
  v3 = objc_opt_new();
  [v3 setVersion:1];
  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending SDAutoUnlockMessageTypeProxyTrigger", buf, 2u);
  }

  v5 = [v3 data];
  v6 = [(SDAutoUnlockPairingSession *)self wrapPayload:v5 withType:307];

  v7 = +[SDNearbyAgent sharedNearbyAgent];
  v8 = [(SDAutoUnlockProxySession *)self bleDevice];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100119FF0;
  v9[3] = &unk_1008CDF90;
  v9[4] = self;
  [v7 sendUnlockData:v6 toBLEDevice:v8 completion:v9];

  [(SDAutoUnlockPairingSession *)self restartResponseTimer:sub_1001F0530(35)];
}

@end