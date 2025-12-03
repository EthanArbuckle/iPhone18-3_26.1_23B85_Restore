@interface SDAutoUnlockProxySession
- (SDAutoUnlockProxySession)initWithDevice:(id)device sessionID:(id)d bleDevice:(id)bleDevice;
- (id)results;
- (void)_start;
- (void)addObservers;
- (void)deviceConnected:(id)connected;
- (void)handleFoundBLEDevice:(id)device;
- (void)invalidate;
- (void)notifyDelegateWithError:(id)error;
- (void)removeObservers;
- (void)sendProxyTrigger;
- (void)start;
@end

@implementation SDAutoUnlockProxySession

- (SDAutoUnlockProxySession)initWithDevice:(id)device sessionID:(id)d bleDevice:(id)bleDevice
{
  bleDeviceCopy = bleDevice;
  v13.receiver = self;
  v13.super_class = SDAutoUnlockProxySession;
  v10 = [(SDAutoUnlockPairingSession *)&v13 initWithDevice:device sessionID:d];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_bleDevice, bleDevice);
    [(SDAutoUnlockProxySession *)v11 addObservers];
  }

  return v11;
}

- (void)start
{
  sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001197C0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(sessionQueue, block);
}

- (void)_start
{
  [(SDAutoUnlockProxySession *)self setActiveConnection:1];
  v3 = +[SDNearbyAgent sharedNearbyAgent];
  bleDevice = [(SDAutoUnlockProxySession *)self bleDevice];
  [v3 startUnlockBLEConnectionWithDevice:bleDevice encrypted:1];

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
      bleDevice = [(SDAutoUnlockProxySession *)self bleDevice];
      [v3 stopUnlockBLEConnectionWithDevice:bleDevice];
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
  model = [(SDAutoUnlockProxySession *)self model];
  [v3 setObject:model forKeyedSubscript:SDAutoUnlockManagerMetricProxyDeviceModelKey];

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

- (void)deviceConnected:(id)connected
{
  userInfo = [connected userInfo];
  v4 = [userInfo objectForKeyedSubscript:SFBluetoothNotificationKeyPeerDevice];
  identifier = [v4 identifier];
  bleDevice = [(SDAutoUnlockProxySession *)self bleDevice];
  identifier2 = [bleDevice identifier];
  v8 = [identifier isEqual:identifier2];

  if (v8)
  {
    v9 = [userInfo objectForKeyedSubscript:SFBluetoothNotificationKeyConnectTime];
    [v9 doubleValue];
    [(SDAutoUnlockProxySession *)self setConnectionTime:?];

    if ([(SDAutoUnlockProxySession *)self state]== 1)
    {
      [(SDAutoUnlockProxySession *)self setState:2];
    }
  }
}

- (void)handleFoundBLEDevice:(id)device
{
  deviceCopy = device;
  -[SDAutoUnlockProxySession setProxyRSSI:](self, "setProxyRSSI:", [deviceCopy rssi]);
  v5 = +[NSDate date];
  startDate = [(SDAutoUnlockProxySession *)self startDate];
  [v5 timeIntervalSinceDate:startDate];
  [(SDAutoUnlockProxySession *)self setProxyDiscoveryTime:?];

  if (sub_1001116DC(deviceCopy))
  {
    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Proxy available for unlock", v13, 2u);
    }

    delegate = [(SDAutoUnlockPairingSession *)self delegate];
    [(__CFString *)delegate sessionDidStartConnection:self];
  }

  else
  {
    if (sub_10011170C(deviceCopy))
    {
      delegate = SFLocalizedStringForKey();
      v9 = 135;
    }

    else
    {
      delegate = @"Watch Not On Wrist";
      v9 = 144;
    }

    v10 = SFAutoUnlockErrorDomain;
    v14 = NSLocalizedDescriptionKey;
    v15 = delegate;
    v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v12 = [NSError errorWithDomain:v10 code:v9 userInfo:v11];
    [(SDAutoUnlockProxySession *)self notifyDelegateWithError:v12];
  }
}

- (void)notifyDelegateWithError:(id)error
{
  errorCopy = error;
  if (![(SDAutoUnlockProxySession *)self notified])
  {
    delegate = [(SDAutoUnlockPairingSession *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(SDAutoUnlockPairingSession *)self delegate];
      [delegate2 session:self didCompleteWithError:errorCopy];

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

  data = [v3 data];
  v6 = [(SDAutoUnlockPairingSession *)self wrapPayload:data withType:307];

  v7 = +[SDNearbyAgent sharedNearbyAgent];
  bleDevice = [(SDAutoUnlockProxySession *)self bleDevice];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100119FF0;
  v9[3] = &unk_1008CDF90;
  v9[4] = self;
  [v7 sendUnlockData:v6 toBLEDevice:bleDevice completion:v9];

  [(SDAutoUnlockPairingSession *)self restartResponseTimer:sub_1001F0530(35)];
}

@end