@interface SDAirDropServer
- (NSString)description;
- (SDAirDropServer)init;
- (SDAirDropServerDelegate)delegate;
- (id)sslSettings;
- (void)_createOSTransactionIfNeeded;
- (void)activate;
- (void)addObservers;
- (void)airDropStatusChanged:(id)a3;
- (void)airDropUnpublished:(id)a3;
- (void)appleIDAccountInfoChanged:(id)a3;
- (void)appleIDChanged:(id)a3;
- (void)awdl:(id)a3 failedToStartScanningWithError:(id)a4;
- (void)awdl:(id)a3 foundDevice:(id)a4 rssi:(id)a5;
- (void)awdlDidUpdateState:(id)a3;
- (void)awdlTimeoutFired:(id)a3;
- (void)consoleUserChanged:(id)a3;
- (void)dealloc;
- (void)didCloseConnection:(_CFHTTPServerConnection *)a3;
- (void)didOpenConnection:(_CFHTTPServerConnection *)a3;
- (void)didReceiveError:(__CFError *)a3;
- (void)discoverableModeChanged:(id)a3;
- (void)finderAirDropEnabled:(id)a3;
- (void)foundDevice:(id)a3;
- (void)handleFoundHashes:(id)a3 rssi:(id)a4;
- (void)handleTerminalCallBack;
- (void)invalidate;
- (void)invalidateTimers;
- (void)keyBagFirstUnlock:(id)a3;
- (void)logDiscoveryWithHash:(id)a3 rssi:(id)a4;
- (void)notifyClient:(int64_t)a3 withResults:(id)a4;
- (void)publishedInfoChanged:(id)a3;
- (void)removeObservers;
- (void)screenStateChange:(id)a3;
- (void)start;
- (void)startHTTPServer:(unsigned __int16)a3;
- (void)startProximityScanner;
- (void)startServer;
- (void)startTimers;
- (void)stop;
- (void)stopProximityScanner;
- (void)stopScanningAndStartServer;
- (void)systemHasPoweredOn:(id)a3;
- (void)systemWillSleep:(id)a3;
- (void)updateServerState;
@end

@implementation SDAirDropServer

- (SDAirDropServer)init
{
  v24.receiver = self;
  v24.super_class = SDAirDropServer;
  v2 = [(SDAirDropServer *)&v24 init];
  v3 = v2;
  if (v2)
  {
    v2->_identity = 0;
    v2->_server = 0;
    v2->_startTime = 0.0;
    proximity = v2->_proximity;
    v2->_proximity = 0;

    awdlTimer = v3->_awdlTimer;
    v3->_awdlTimer = 0;

    publisher = v3->_publisher;
    v3->_publisher = 0;

    coalescer = v3->_coalescer;
    v3->_coalescer = 0;

    portNumber = v3->_portNumber;
    v3->_portNumber = 0;

    information = v3->_information;
    v3->_information = 0;

    transaction = v3->_transaction;
    v3->_transaction = 0;

    v3->_contactsOnly = 0;
    bluetoothTimer = v3->_bluetoothTimer;
    v3->_bluetoothTimer = 0;

    objc_storeStrong(&v3->_queue, &_dispatch_main_q);
    v12 = objc_opt_new();
    discoveredHashes = v3->_discoveredHashes;
    v3->_discoveredHashes = v12;

    v14 = objc_opt_new();
    properties = v3->_properties;
    v3->_properties = v14;

    v16 = +[SDStatusMonitor sharedMonitor];
    monitor = v3->_monitor;
    v3->_monitor = v16;

    v3->_screenOn = [(SDStatusMonitor *)v3->_monitor screenOn];
    v18 = [(SDStatusMonitor *)v3->_monitor discoverableMode];
    discoverableMode = v3->_discoverableMode;
    v3->_discoverableMode = v18;

    v3->_connections = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    scanningIdentifier = v3->_scanningIdentifier;
    v3->_scanningIdentifier = 0;

    v21 = airdrop_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23[0] = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "AirDrop server initialized", v23, 2u);
    }
  }

  return v3;
}

- (void)dealloc
{
  CFRelease(self->_connections);
  identity = self->_identity;
  if (identity)
  {
    CFRelease(identity);
  }

  v4.receiver = self;
  v4.super_class = SDAirDropServer;
  [(SDAirDropServer *)&v4 dealloc];
}

- (void)handleTerminalCallBack
{
  v3 = airdrop_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AirDrop server invalidation complete", buf, 2u);
  }

  server = self->_server;
  if (server)
  {
    CFRelease(server);
    self->_server = 0;
  }

  portNumber = self->_portNumber;
  self->_portNumber = 0;

  if (self->_publisher)
  {
    sub_100086D20(@"BonjourAdvertise", @"Stop", self->_clientBundleID, self->_clientPid);
    [(SDAirDropPublisher *)self->_publisher setDelegate:0];
    [(SDAirDropPublisher *)self->_publisher invalidate];
    publisher = self->_publisher;
    self->_publisher = 0;
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FB830;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)startTimers
{
  if (!CFDictionaryGetCount(self->_connections))
  {
    v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"awdlTimeoutFired:" selector:0 userInfo:0 repeats:20.0];
    awdlTimer = self->_awdlTimer;
    self->_awdlTimer = v3;

    v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"bluetoothTimeoutFired:" selector:0 userInfo:0 repeats:15.0];
    bluetoothTimer = self->_bluetoothTimer;
    self->_bluetoothTimer = v5;
  }
}

- (void)invalidateTimers
{
  awdlTimer = self->_awdlTimer;
  if (awdlTimer)
  {
    [(NSTimer *)awdlTimer invalidate];
    v4 = self->_awdlTimer;
    self->_awdlTimer = 0;
  }

  bluetoothTimer = self->_bluetoothTimer;
  if (bluetoothTimer)
  {
    [(NSTimer *)bluetoothTimer invalidate];
    v6 = self->_bluetoothTimer;
    self->_bluetoothTimer = 0;
  }
}

- (void)didOpenConnection:(_CFHTTPServerConnection *)a3
{
  v5 = airdrop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "New AirDrop connection %p", &v11, 0xCu);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v7 = kSFOperationContactsOnlyKey;
  v8 = [NSNumber numberWithBool:self->_contactsOnly];
  CFDictionarySetValue(Mutable, v7, v8);

  CFDictionarySetValue(Mutable, kSFOperationHTTPServerConnectionKey, a3);
  CFDictionarySetValue(self->_connections, a3, a3);
  v9 = [(SDStatusMonitor *)self->_monitor finderServer];
  v10 = v9;
  if (!v9)
  {
    v9 = self;
  }

  [v9 notifyClient:1 withResults:Mutable];
  [(SDAirDropServer *)self invalidateTimers];
  CFRelease(Mutable);
}

- (void)didCloseConnection:(_CFHTTPServerConnection *)a3
{
  v5 = airdrop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Closed AirDrop connection %p", &v10, 0xCu);
  }

  v6 = sub_100090098(a3);
  v7 = v6;
  if (v6)
  {
    [v6 didCloseConnection];
  }

  CFDictionaryRemoveValue(self->_connections, a3);
  if (!-[SDStatusMonitor showMeInWormhole](self->_monitor, "showMeInWormhole") || (+[SDServerBrowser sharedBrowser](SDServerBrowser, "sharedBrowser"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isAirDropEnabled], v8, (v9 & 1) == 0))
  {
    [(SDAirDropServer *)self startTimers];
  }
}

- (void)didReceiveError:(__CFError *)a3
{
  v5 = airdrop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000FE6E8();
  }

  [(SDAirDropServer *)self handleTerminalCallBack];
  Domain = CFErrorGetDomain(a3);
  v7 = CFEqual(Domain, _kCFHTTPServerErrorDomain);
  Code = CFErrorGetCode(a3);
  if ((v7 && Code == 1002 || CFErrorGetCode(a3) == 48) && [(NSNumber *)self->_portNumber isEqual:&off_10090BB08])
  {
    v9 = airdrop_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Trying again with random port number", v11, 2u);
    }

    [(SDAirDropServer *)self startHTTPServer:0];
  }

  else
  {
    v12 = kSFOperationErrorKey;
    v13 = a3;
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [(SDAirDropServer *)self notifyClient:10 withResults:v10];
  }
}

- (void)publishedInfoChanged:(id)a3
{
  v4 = a3;
  if (self->_startTime != 0.0)
  {
    v12 = v4;
    if ([v4 count])
    {
      [(NSMutableDictionary *)self->_properties removeAllObjects];
      [(NSMutableDictionary *)self->_properties addEntriesFromDictionary:v12];
    }

    [(NSMutableDictionary *)self->_properties setObject:&__kCFBooleanFalse forKeyedSubscript:kSFOperationLegacyDeviceKey];
    v5 = [NSNumber numberWithBool:[(SDStatusMonitor *)self->_monitor wirelessCarPlay]];
    [(NSMutableDictionary *)self->_properties setObject:v5 forKeyedSubscript:kSFOperationWirelessCarPlayKey];

    v6 = [NSNumber numberWithBool:[(SDStatusMonitor *)self->_monitor wirelessEnabled]];
    [(NSMutableDictionary *)self->_properties setObject:v6 forKeyedSubscript:kSFOperationWirelessEnabledKey];

    v7 = [NSNumber numberWithBool:[(SDStatusMonitor *)self->_monitor bluetoothEnabled]];
    [(NSMutableDictionary *)self->_properties setObject:v7 forKeyedSubscript:kSFOperationBluetoothEnabledKey];

    v8 = [NSNumber numberWithBool:[(SDStatusMonitor *)self->_monitor airplaneModeEnabled]];
    [(NSMutableDictionary *)self->_properties setObject:v8 forKeyedSubscript:kSFOperationAirplaneModeEnabledKey];

    v9 = [NSNumber numberWithUnsignedInteger:[(SDStatusMonitor *)self->_monitor ultraWideBandState]];
    [(NSMutableDictionary *)self->_properties setObject:v9 forKeyedSubscript:kSFOperationUltraWideBandEnabledKey];

    v10 = [NSNumber numberWithBool:[(SDStatusMonitor *)self->_monitor computerToComputer]];
    [(NSMutableDictionary *)self->_properties setObject:v10 forKeyedSubscript:kSFOperationComputerToComputerKey];

    v11 = [NSNumber numberWithBool:[(SDStatusMonitor *)self->_monitor wirelessAccessPoint]];
    [(NSMutableDictionary *)self->_properties setObject:v11 forKeyedSubscript:kSFOperationWirelessAccessPointKey];

    [(SDAirDropServer *)self notifyClient:12 withResults:self->_properties];
    v4 = v12;
  }
}

- (void)awdlTimeoutFired:(id)a3
{
  v4 = airdrop_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AirDrop server idle timeout", v5, 2u);
  }

  [(SDAirDropServer *)self stop];
  [(SDAirDropServer *)self updateServerState];
}

- (void)airDropStatusChanged:(id)a3
{
  if (![(SDAirDropServer *)self thisIsTheFinder]&& [(SDStatusMonitor *)self->_monitor showMeInWormhole])
  {
    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AirDrop status changed", v5, 2u);
    }

    [(CUCoalescer *)self->_coalescer trigger];
  }
}

- (void)appleIDAccountInfoChanged:(id)a3
{
  if (![(SDAirDropServer *)self thisIsTheFinder])
  {
    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Apple ID account info changed", v5, 2u);
    }

    [(CUCoalescer *)self->_coalescer trigger];
  }
}

- (void)appleIDChanged:(id)a3
{
  if (![(SDAirDropServer *)self thisIsTheFinder])
  {
    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Apple ID account changed", v5, 2u);
    }

    [(CUCoalescer *)self->_coalescer trigger];
  }
}

- (void)systemWillSleep:(id)a3
{
  if (![(SDAirDropServer *)self thisIsTheFinder]&& self->_startTime != 0.0)
  {
    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = getuid();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping AirDrop server for user %d on sleep", v5, 8u);
    }

    [(SDAirDropServer *)self stop];
  }
}

- (void)systemHasPoweredOn:(id)a3
{
  if (![(SDAirDropServer *)self thisIsTheFinder]&& self->_startTime == 0.0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v5 = WeakRetained;
      v6 = [(SDStatusMonitor *)self->_monitor currentConsoleUser];

      if (v6)
      {
        v7 = airdrop_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8[0] = 67109120;
          v8[1] = getuid();
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting AirDrop server for user %d on wake", v8, 8u);
        }

        [(SDAirDropServer *)self start];
      }
    }
  }
}

- (void)consoleUserChanged:(id)a3
{
  if (![(SDAirDropServer *)self thisIsTheFinder])
  {
    v4 = [(SDStatusMonitor *)self->_monitor currentConsoleUser];
    startTime = self->_startTime;
    if (v4)
    {
      if (startTime == 0.0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);

        if (WeakRetained)
        {
          v7 = airdrop_log();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v9 = 67109120;
            v10 = getuid();
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting AirDrop server for user %d on login", &v9, 8u);
          }

          [(SDAirDropServer *)self start];
        }
      }
    }

    else if (startTime != 0.0)
    {
      v8 = airdrop_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 67109120;
        v10 = getuid();
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Stopping AirDrop server for user %d on logout", &v9, 8u);
      }

      [(SDAirDropServer *)self stop];
    }
  }
}

- (void)finderAirDropEnabled:(id)a3
{
  if (![(SDAirDropServer *)self thisIsTheFinder])
  {
    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(SDStatusMonitor *)self->_monitor finderAirDropEnabled];
      v6 = @"exited";
      if (v5)
      {
        v6 = @"entered";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Finder %@ AirDrop", &v7, 0xCu);
    }

    [(CUCoalescer *)self->_coalescer trigger];
  }
}

- (void)discoverableModeChanged:(id)a3
{
  if (![(SDAirDropServer *)self thisIsTheFinder])
  {
    v4 = [(SDStatusMonitor *)self->_monitor discoverableMode];
    discoverableMode = self->_discoverableMode;
    self->_discoverableMode = v4;

    v6 = airdrop_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_discoverableMode;
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Discoverable mode changed to %@", &v8, 0xCu);
    }

    [(SDAirDropServer *)self stop];
    [(SDAirDropServer *)self updateServerState];
  }
}

- (void)keyBagFirstUnlock:(id)a3
{
  v4 = airdrop_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Device first unlock", v5, 2u);
  }

  [(SDAirDropServer *)self updateServerState];
}

- (void)screenStateChange:(id)a3
{
  if (![(SDAirDropServer *)self thisIsTheFinder])
  {
    screenOn = self->_screenOn;
    if (screenOn != [(SDStatusMonitor *)self->_monitor screenOn])
    {
      self->_screenOn = [(SDStatusMonitor *)self->_monitor screenOn];
      v5 = airdrop_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        if (self->_screenOn)
        {
          v6 = @"on";
        }

        else
        {
          v6 = @"off";
        }

        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Screen turned %@", &v7, 0xCu);
      }

      [(SDAirDropServer *)self updateServerState];
    }
  }
}

- (void)stopScanningAndStartServer
{
  [(SDAirDropServer *)self stopProximityScanner];
  [(SDAirDropServer *)self invalidateTimers];
  [(SDAirDropServer *)self startTimers];

  [(SDAirDropServer *)self startServer];
}

- (void)handleFoundHashes:(id)a3 rssi:(id)a4
{
  v6 = a3;
  [(SDAirDropServer *)self logDiscoveryWithHash:v6 rssi:a4];
  if ([(SDAirDropServer *)self discoverableByEveryone])
  {
    v7 = airdrop_log();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:

      [(SDAirDropServer *)self stopScanningAndStartServer];
      goto LABEL_13;
    }

    LOWORD(v13) = 0;
    v8 = "In Everyone mode, start server";
    v9 = v7;
    v10 = 2;
LABEL_4:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
    goto LABEL_5;
  }

  if (![(SDAirDropServer *)self discoverableByContactsOnly])
  {
    goto LABEL_13;
  }

  v11 = [(SDStatusMonitor *)self->_monitor contactsContainsShortHashes:v6];
  v7 = airdrop_log();
  v12 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (!v12)
    {
      goto LABEL_5;
    }

    v13 = 138412290;
    v14 = v6;
    v8 = "Hashes %@ exist in contacts, start server";
    v9 = v7;
    v10 = 12;
    goto LABEL_4;
  }

  if (v12)
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Hashes %@ not recognized", &v13, 0xCu);
  }

LABEL_13:
}

- (void)logDiscoveryWithHash:(id)a3 rssi:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableSet *)self->_discoveredHashes containsObject:v6];
  v9 = airdrop_log();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1000FE75C(v6, v7, v10);
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BTLE discovered hashes %@ rssi %@", &v11, 0x16u);
    }

    [(NSMutableSet *)self->_discoveredHashes addObject:v6];
  }
}

- (void)awdl:(id)a3 foundDevice:(id)a4 rssi:(id)a5
{
  v7 = a5;
  v8 = [a4 subdataWithRange:{1, 8}];
  [(SDAirDropServer *)self handleFoundHashes:v8 rssi:v7];
}

- (void)awdlDidUpdateState:(id)a3
{
  v3 = a3;
  v4 = [v3 state];
  if (v4 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&off_1008D04E0 + v4);
  }

  v6 = airdrop_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BTLE scanner %@", &v7, 0xCu);
  }

  if ([v3 state] == 3)
  {
    [v3 startConnectionlessAWDLServiceScanning];
  }
}

- (void)awdl:(id)a3 failedToStartScanningWithError:(id)a4
{
  v4 = a4;
  v5 = airdrop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000FE7E4();
  }
}

- (void)updateServerState
{
  if ([(SDAirDropServer *)self thisIsTheFinder])
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v4 = [(SDStatusMonitor *)self->_monitor currentConsoleUser];
    v5 = [(SDStatusMonitor *)self->_monitor deviceWasUnlockedOnce];
    v6 = [(SDAirDropServer *)self discoverableByContactsOnly];
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = [(SDAirDropServer *)self discoverableByEveryone];
    }

    if (v4 & v7) == 1 && (self->_screenOn & v5)
    {
      [(SDAirDropServer *)self _createOSTransactionIfNeeded];
      self->_contactsOnly = v6;
      if ([(SDStatusMonitor *)self->_monitor enableDemoMode])
      {
LABEL_12:
        v9 = airdrop_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v16) = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Auto-trigger server", &v16, 2u);
        }

        [(SDAirDropServer *)self startServer];
        return;
      }

      if ([(SDStatusMonitor *)self->_monitor showMeInWormhole])
      {
        v12 = +[SDServerBrowser sharedBrowser];
        if ([v12 isAirDropEnabled])
        {

          goto LABEL_12;
        }

        IsVirtualMachine = SFDeviceIsVirtualMachine();

        if (IsVirtualMachine)
        {
          goto LABEL_12;
        }
      }

      else if (SFDeviceIsVirtualMachine())
      {
        goto LABEL_12;
      }

      [(SDAirDropServer *)self startProximityScanner];
      v14 = airdrop_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if (self->_contactsOnly)
        {
          v15 = @"Contacts Only";
        }

        else
        {
          v15 = @"Everyone";
        }

        v16 = 138412290;
        *v17 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Scanning mode %@", &v16, 0xCu);
      }
    }

    else
    {
      v10 = airdrop_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        screenOn = self->_screenOn;
        v16 = 67109888;
        *v17 = v4;
        *&v17[4] = 1024;
        *&v17[6] = v7;
        v18 = 1024;
        v19 = screenOn;
        v20 = 1024;
        v21 = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Scanning mode off: console=%d, discoverable=%d, screenOn=%d, unlockedOnce=%d", &v16, 0x1Au);
      }

      [(SDAirDropServer *)self stop];
    }
  }

  else
  {
    v8 = airdrop_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000FE858();
    }
  }
}

- (void)airDropUnpublished:(id)a3
{
  v4 = [a3 object];
  if (v4 != self && !self->_server)
  {
    v9 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = WeakRetained;
    if (WeakRetained && self->_screenOn)
    {
      v7 = [(SDStatusMonitor *)self->_monitor currentConsoleUser];

      if (v7)
      {
        queue = self->_queue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000FD07C;
        block[3] = &unk_1008CDEA0;
        block[4] = self;
        dispatch_async(queue, block);
      }

      return;
    }

    v4 = v9;
  }
}

- (void)addObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"keyBagFirstUnlock:" name:@"com.apple.sharingd.KeyBagFirstUnlock" object:0];
  [v3 addObserver:self selector:"wirelessChanged:" name:@"com.apple.sharingd.WirelessCarPlayChanged" object:0];
  [v3 addObserver:self selector:"appleIDAccountInfoChanged:" name:@"com.apple.sharingd.AppleIDAccountInfoChanged" object:0];
  [v3 addObserver:self selector:"appleIDChanged:" name:@"com.apple.sharingd.AppleIDChanged" object:0];
  [v3 addObserver:self selector:"airDropUnpublished:" name:@"com.apple.sharingd.AirDropUnpublished" object:0];
  [v3 addObserver:self selector:"airDropStatusChanged:" name:@"com.apple.sharingd.AirDropStatusChanged" object:0];
  [v3 addObserver:self selector:"wirelessChanged:" name:@"com.apple.sharingd.WirelessModeChanged" object:0];
  [v3 addObserver:self selector:"wirelessChanged:" name:@"com.apple.sharingd.WirelessPowerChanged" object:0];
  [v3 addObserver:self selector:"screenStateChange:" name:@"com.apple.sharingd.ScreenStateChanged" object:0];
  [v3 addObserver:self selector:"bluetoothChanged:" name:@"com.apple.sharingd.BluetoothPowerChanged" object:0];
  [v3 addObserver:self selector:"discoverableModeChanged:" name:@"com.apple.sharingd.DiscoverableModeChanged" object:0];
}

- (void)removeObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)notifyClient:(int64_t)a3 withResults:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained airDropServer:self event:a3 withResults:v6];
}

- (id)sslSettings
{
  if ([(SDStatusMonitor *)self->_monitor disableTLS])
  {
    v3 = 0;
  }

  else
  {
    v3 = objc_opt_new();
    v4 = objc_opt_new();
    [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:_kCFStreamSSLShouldSetPeerID];
    [v3 setObject:v4 forKeyedSubscript:_kCFHTTPServerStreamSSLSettings];
    if (self->_identity)
    {
      v5 = [(SDStatusMonitor *)self->_monitor copyMyAppleIDIntermediateCertificate];
      if (v5)
      {
        v6 = v5;
        v12[0] = self->_identity;
        v12[1] = v5;
        v7 = [NSArray arrayWithObjects:v12 count:2];
        [v3 setObject:v7 forKeyedSubscript:_kCFHTTPServerServerTrustChain];

        CFRelease(v6);
      }

      else
      {
        v9 = airdrop_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1000FE894();
        }
      }
    }

    else
    {
      v8 = airdrop_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AirDrop using self-signed certificate", v11, 2u);
      }

      [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:_kCFHTTPServerAllowAnonymousServer];
    }

    [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:_kCFHTTPServerRequireClientCertificate];
  }

  return v3;
}

- (void)startHTTPServer:(unsigned __int16)a3
{
  if (!self->_server && self->_startTime != 0.0)
  {
    Service = _CFHTTPServerCreateService();
    self->_server = Service;
    if (Service)
    {
      [(SDAirDropServer *)self sslSettings:1];
      _CFHTTPServerSetProperty();
      server = self->_server;
      _CFHTTPServerSetProperty();
      v6 = self->_server;
      _CFHTTPServerSetProperty();
      if (!sub_1001F2594() && ![(SDStatusMonitor *)self->_monitor enableDemoMode]|| SFDeviceIsVirtualMachine())
      {
        v7 = [(SDStatusMonitor *)self->_monitor registerAllInterfaces];
        v8 = &_kCFHTTPServerAllInterfacesIdentifier;
        if (!v7)
        {
          v8 = &off_1008CE598;
        }

        v9 = *v8;
        v10 = self->_server;
        _CFHTTPServerSetProperty();
      }

      v11 = self->_server;
      _CFHTTPServerSetProperty();
      v12 = self->_server;
      CFRunLoopGetMain();
      _CFHTTPServerScheduleWithRunLoopAndMode();
      v13 = self->_server;
      v14 = _CFHTTPServerCopyProperty();
      portNumber = self->_portNumber;
      self->_portNumber = v14;

      v16 = self->_portNumber;
      v17 = airdrop_log();
      v18 = v17;
      if (v16)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = self->_portNumber;
          *buf = 138412290;
          v25 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "AirDrop server scheduled on port %@", buf, 0xCu);
        }

        sub_100086D20(@"BonjourAdvertise", @"Start", self->_clientBundleID, self->_clientPid);
        v20 = [[SDAirDropPublisher alloc] initWithPort:self->_portNumber identity:self->_identity];
        publisher = self->_publisher;
        self->_publisher = v20;

        [(SDAirDropPublisher *)self->_publisher setDelegate:self];
        [(SDAirDropPublisher *)self->_publisher start];
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1000FE8D0();
        }
      }
    }

    else
    {
      v22 = airdrop_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000FE90C();
      }
    }
  }
}

- (void)startProximityScanner
{
  v3 = +[SFAirDropUserDefaults_objc askToAirdropEnabled];
  if ((!v3 || self->_scanningIdentifier) && self->_proximity || CFDictionaryGetCount(self->_connections))
  {
    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_scanningIdentifier != 0;
      Count = CFDictionaryGetCount(self->_connections);
      *buf = 67109376;
      v16 = v5;
      v17 = 2048;
      v18 = Count;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BTLE scanning not starting: scanningIdentifier=%d, count=%ld", buf, 0x12u);
    }

    goto LABEL_7;
  }

  v7 = airdrop_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BTLE scanning started", buf, 2u);
  }

  sub_100086D20(@"BluetoothScanning", @"Start", self->_clientBundleID, self->_clientPid);
  if (v3)
  {
    v8 = +[NSUUID UUID];
    scanningIdentifier = self->_scanningIdentifier;
    self->_scanningIdentifier = v8;

    v4 = +[_TtC16DaemoniOSLibrary22SDAirDropBLEController shared];
    v10 = self->_scanningIdentifier;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000FDA40;
    v14[3] = &unk_1008D04C0;
    v14[4] = self;
    [v4 startScanningWithIdentifier:v10 deviceUpdatesHandler:v14];
LABEL_7:

    return;
  }

  v11 = [[WPAWDL alloc] initWithDelegate:self queue:self->_queue];
  proximity = self->_proximity;
  self->_proximity = v11;

  v13 = self->_proximity;
  if (v13 && [(WPAWDL *)v13 state]== 3)
  {
    [(WPAWDL *)self->_proximity startConnectionlessAWDLServiceScanning];
  }
}

- (void)stopProximityScanner
{
  v3 = +[SFAirDropUserDefaults_objc askToAirdropEnabled];
  if (v3 && self->_scanningIdentifier || self->_proximity)
  {
    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BTLE scanning stopped", v8, 2u);
    }

    sub_100086D20(@"BluetoothScanning", @"Stop", self->_clientBundleID, self->_clientPid);
    if (v3)
    {
      v5 = +[_TtC16DaemoniOSLibrary22SDAirDropBLEController shared];
      p_scanningIdentifier = &self->_scanningIdentifier;
      [v5 stopScanningWithIdentifier:self->_scanningIdentifier];
    }

    else
    {
      p_scanningIdentifier = &self->_proximity;
      [(WPAWDL *)self->_proximity stopConnectionlessAWDLServiceScanning];
      [(WPAWDL *)self->_proximity invalidate];
    }

    v7 = *p_scanningIdentifier;
    *p_scanningIdentifier = 0;

    [(NSMutableSet *)self->_discoveredHashes removeAllObjects];
  }
}

- (void)foundDevice:(id)a3
{
  v4 = a3;
  LOBYTE(v8) = [v4 airdropHash1] >> 8;
  BYTE1(v8) = [v4 airdropHash1];
  BYTE2(v8) = [v4 airdropHash2] >> 8;
  BYTE3(v8) = [v4 airdropHash2];
  BYTE4(v8) = [v4 airdropHash3] >> 8;
  BYTE5(v8) = [v4 airdropHash3];
  BYTE6(v8) = [v4 airdropHash4] >> 8;
  HIBYTE(v8) = [v4 airdropHash4];
  v5 = [NSData dataWithBytes:&v8 length:8];
  v6 = [v4 bleRSSI];

  v7 = [NSNumber numberWithInt:v6];
  [(SDAirDropServer *)self handleFoundHashes:v5 rssi:v7];
}

- (void)startServer
{
  if (!self->_server)
  {
    block[7] = v2;
    block[8] = v3;
    if (self->_startTime == 0.0)
    {
      if (![(SDStatusMonitor *)self->_monitor disableTLS])
      {
        identity = self->_identity;
        if (identity)
        {
          CFRelease(identity);
        }

        self->_identity = [(SDStatusMonitor *)self->_monitor copyMyAppleIDSecIdentity];
      }

      self->_startTime = CFAbsoluteTimeGetCurrent();
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000FDD60;
      block[3] = &unk_1008CDEA0;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }
}

- (void)start
{
  if ([(SDAirDropServer *)self thisIsTheFinder])
  {
    [(SDAirDropServer *)self _createOSTransactionIfNeeded];
    [(SDStatusMonitor *)self->_monitor setFinderServer:self];
    v3 = objc_alloc_init(SDAirDropInformation);
    information = self->_information;
    self->_information = v3;

    [(SDAirDropInformation *)self->_information setDelegate:self];
    v5 = self->_information;

    [(SDAirDropInformation *)v5 start];
  }

  else
  {
    v6 = airdrop_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AirDrop server started", buf, 2u);
    }

    if (dword_1009A0610)
    {
      v7 = sub_1001F0530(2.0);
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000FDF18;
      block[3] = &unk_1008CDEA0;
      block[4] = self;
      dispatch_after(v7, queue, block);
    }

    else
    {
      v9 = self->_queue;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000FDF20;
      v10[3] = &unk_1008CDEA0;
      v10[4] = self;
      dispatch_async(v9, v10);
    }
  }
}

- (void)stop
{
  if ([(SDAirDropServer *)self thisIsTheFinder])
  {
    [(SDStatusMonitor *)self->_monitor setFinderServer:0];
    [(SDAirDropInformation *)self->_information setDelegate:0];
    [(SDAirDropInformation *)self->_information stop];
    information = self->_information;
    self->_information = 0;
  }

  else
  {
    if (self->_startTime != 0.0)
    {
      Current = CFAbsoluteTimeGetCurrent();
      sub_100086374(Current - self->_startTime);
      self->_startTime = 0.0;
    }

    if (self->_server)
    {
      v5 = airdrop_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Invalidating AirDrop server", v8, 2u);
      }

      server = self->_server;
      _CFHTTPServerInvalidate();
    }

    [(SDAirDropServer *)self stopProximityScanner];
    [(SDAirDropServer *)self invalidateTimers];
  }

  transaction = self->_transaction;
  self->_transaction = 0;
}

- (void)activate
{
  if (!self->_coalescer)
  {
    v8[9] = v2;
    v8[10] = v3;
    v5 = self;
    v6 = objc_opt_new();
    coalescer = self->_coalescer;
    self->_coalescer = v6;

    [(CUCoalescer *)self->_coalescer setDispatchQueue:v5->_queue];
    [(CUCoalescer *)self->_coalescer setMaxDelay:0.4];
    [(CUCoalescer *)self->_coalescer setMinDelay:0.3];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000FE110;
    v8[3] = &unk_1008CDEA0;
    v8[4] = v5;
    [(CUCoalescer *)self->_coalescer setActionHandler:v8];
    [(SDAirDropServer *)v5 addObservers];
    [(SDAirDropServer *)v5 start];
  }
}

- (void)invalidate
{
  if (self->_transaction)
  {
    [(SDAirDropServer *)self stop];
    [(SDAirDropServer *)self removeObservers];
    [(CUCoalescer *)self->_coalescer invalidate];
    transaction = self->_transaction;
    self->_transaction = 0;
  }
}

- (NSString)description
{
  NSAppendPrintF();
  v34 = 0;
  NSAppendPrintF();
  v3 = v34;

  discoverableMode = self->_discoverableMode;
  NSAppendPrintF();
  v4 = v3;

  self->_screenOn;
  NSAppendPrintF();
  v5 = v4;

  if (self->_contactsOnly)
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  v26 = v6;
  NSAppendPrintF();
  v7 = v5;

  if ([(SDAirDropServer *)self discoverableByEveryone])
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  v27 = v8;
  NSAppendPrintF();
  v9 = v7;

  [(SDStatusMonitor *)self->_monitor deviceWasUnlockedOnce];
  NSAppendPrintF();
  v10 = v9;

  portNumber = self->_portNumber;
  NSAppendPrintF();
  v11 = v10;

  if (self->_proximity)
  {
    v12 = "yes";
  }

  else
  {
    v12 = "no";
  }

  v29 = v12;
  NSAppendPrintF();
  v13 = v11;

  proximity = self->_proximity;
  if (proximity)
  {
    v15 = [(WPAWDL *)proximity state];
    v16 = v15 > 5 ? "?" : off_1008D0500[v15];
    v30 = v16;
    NSAppendPrintF();
    v17 = v13;

    v31 = [(NSMutableSet *)self->_discoveredHashes count];
    NSAppendPrintF();
    v13 = v17;

    if ([(NSMutableSet *)self->_discoveredHashes count])
    {
      v18 = [(NSMutableSet *)self->_discoveredHashes allObjects];
      v32 = [v18 componentsJoinedByString:{@", "}];
      NSAppendPrintF();
      v19 = v13;

      v13 = v19;
    }
  }

  self->_server;
  NSAppendPrintF();
  v20 = v13;

  if (self->_server)
  {
    v33 = (CFAbsoluteTimeGetCurrent() - self->_startTime);
    NSAppendPrintF();
    v21 = v20;

    v20 = v21;
  }

  connections = self->_connections;
  if (connections && CFDictionaryGetCount(connections))
  {
    CFDictionaryGetCount(self->_connections);
    NSAppendPrintF();
    v23 = v20;

    v20 = v23;
  }

  return v20;
}

- (void)_createOSTransactionIfNeeded
{
  if (!self->_transaction)
  {
    v4 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v4;
  }
}

- (SDAirDropServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end