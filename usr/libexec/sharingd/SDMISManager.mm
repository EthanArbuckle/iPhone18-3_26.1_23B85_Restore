@interface SDMISManager
+ (id)sharedManager;
- (BOOL)hostIsOnlyUSBEthernet;
- (SDMISManager)init;
- (SDMISManagerDelegate)delegate;
- (int64_t)connectedHosts;
- (int64_t)readConnectHosts;
- (void)attachMIS;
- (void)dealloc;
- (void)detachMIS;
- (void)getState:(int *)a3 andReason:(int *)a4;
- (void)handleMISStateChanged;
- (void)readMISState:(int *)a3 andReason:(int *)a4;
- (void)setState:(int)a3;
- (void)stopService;
@end

@implementation SDMISManager

+ (id)sharedManager
{
  if (qword_100989A08 != -1)
  {
    sub_100057B08();
  }

  v3 = qword_100989A00;

  return v3;
}

- (SDMISManager)init
{
  v9.receiver = self;
  v9.super_class = SDMISManager;
  v2 = [(SDMISManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    authTimer = v2->_authTimer;
    v2->_attachCount = 0;
    v2->_authTimer = 0;
    v2->_netClient = 0;
    *&v2->_state = 1020;
    v2->_needStateUpdate = 1;

    v8.version = 0;
    memset(&v8.retain, 0, 24);
    v8.info = v3;
    v5 = SCDynamicStoreCreate(0, @"com.apple.wirelessmodemsettings.MISManager", sub_100057128, &v8);
    v3->_scDynamicStore = v5;
    if (v5)
    {
      SCDynamicStoreAddWatchedKey();
      v3->_scRunLoopSource = SCDynamicStoreCreateRunLoopSource(0, v3->_scDynamicStore, 0);
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, v3->_scRunLoopSource, kCFRunLoopCommonModes);
    }
  }

  return v3;
}

- (void)dealloc
{
  self->_attachCount = 0;
  [(SDMISManager *)self detachMIS];
  if (self->_scDynamicStore)
  {
    SCDynamicStoreRemoveWatchedKey();
    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveSource(Current, self->_scRunLoopSource, kCFRunLoopCommonModes);
    CFRelease(self->_scDynamicStore);
  }

  v4.receiver = self;
  v4.super_class = SDMISManager;
  [(SDMISManager *)&v4 dealloc];
}

- (void)attachMIS
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_netClient)
  {
    v3 = &_dispatch_main_q;
    v2->_netClient = _NETRBClientCreate();

    v4 = tethering_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      netClient = v2->_netClient;
      v6 = 138412290;
      v7 = netClient;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Created NETRB client = %@", &v6, 0xCu);
    }
  }

  ++v2->_attachCount;
  objc_sync_exit(v2);
}

- (void)detachMIS
{
  v2 = self;
  objc_sync_enter(v2);
  attachCount = v2->_attachCount;
  v2->_attachCount = attachCount - 1;
  if (v2->_netClient)
  {
    v4 = attachCount <= 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    _NETRBClientDestroy();
    v2->_netClient = 0;
    v2->_attachCount = 0;
    v5 = tethering_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Destroyed NETRB client", v6, 2u);
    }
  }

  objc_sync_exit(v2);
}

- (void)stopService
{
  if (self->_netClient)
  {
    _NETRBClientStopService();
    v2 = tethering_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stopping Auth", v3, 2u);
    }
  }
}

- (void)setState:(int)a3
{
  [(SDMISManager *)self attachMIS];
  if (self->_netClient)
  {
    _NETRBClientSetGlobalServiceState();
    v5 = tethering_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting state = %d", v6, 8u);
    }
  }

  [(SDMISManager *)self detachMIS];
}

- (void)getState:(int *)a3 andReason:(int *)a4
{
  if (self->_needStateUpdate)
  {
    [(SDMISManager *)self readMISState:&self->_state andReason:&self->_reason];
    self->_needStateUpdate = 0;
  }

  if (a3)
  {
    *a3 = self->_state;
  }

  if (a4)
  {
    *a4 = self->_reason;
  }

  v7 = tethering_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    state = self->_state;
    reason = self->_reason;
    v10[0] = 67109376;
    v10[1] = state;
    v11 = 1024;
    v12 = reason;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "state = %d, reason = %d", v10, 0xEu);
  }
}

- (int64_t)connectedHosts
{
  if (!self->_needStateUpdate)
  {
    return self->_connectedHosts;
  }

  result = [(SDMISManager *)self readConnectHosts];
  self->_connectedHosts = result;
  return result;
}

- (BOOL)hostIsOnlyUSBEthernet
{
  if ([(SDMISManager *)self connectedHosts]!= 1)
  {
    return 0;
  }

  v3 = SCDynamicStoreCopyValue(self->_scDynamicStore, @"com.apple.MobileInternetSharing");
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"Hosts"];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectForKeyedSubscript:@"Type"];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 objectForKeyedSubscript:@"USB-Ethernet"];
        v10 = [v9 integerValue] == 1;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)readMISState:(int *)a3 andReason:(int *)a4
{
  state = self->_state;
  reason = self->_reason;
  v8 = SCDynamicStoreCopyValue(self->_scDynamicStore, @"com.apple.MobileInternetSharing");
  v11 = v8;
  if (v8)
  {
    v9 = [v8 objectForKeyedSubscript:@"State"];
    state = [v9 intValue];

    v10 = [v11 objectForKeyedSubscript:@"Reason"];
    reason = [v10 intValue];
  }

  if (a3)
  {
    *a3 = state;
  }

  if (a4)
  {
    *a4 = reason;
  }
}

- (int64_t)readConnectHosts
{
  connectedHosts = self->_connectedHosts;
  v3 = SCDynamicStoreCopyValue(self->_scDynamicStore, @"com.apple.MobileInternetSharing");
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"Hosts"];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectForKeyedSubscript:@"Current"];
      connectedHosts = [v7 integerValue];
    }
  }

  v8 = tethering_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = connectedHosts;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Connected Hosts = %d", v10, 8u);
  }

  return connectedHosts;
}

- (void)handleMISStateChanged
{
  v12 = 0;
  v3 = [(SDMISManager *)self readConnectHosts];
  [(SDMISManager *)self readMISState:&v12 + 4 andReason:&v12];
  v4 = v12;
  if (v12 == __PAIR64__(self->_state, self->_reason) && v3 == self->_connectedHosts)
  {
    v5 = tethering_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "No state change not notifying";
      v7 = v5;
      v8 = 2;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }

  else
  {
    self->_state = HIDWORD(v12);
    self->_reason = v4;
    self->_connectedHosts = v3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained misStateChanged:self];

    v5 = tethering_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      state = self->_state;
      reason = self->_reason;
      *buf = 67109376;
      v14 = state;
      v15 = 1024;
      v16 = reason;
      v6 = "Update MIS state = %d for reason = %d";
      v7 = v5;
      v8 = 14;
      goto LABEL_7;
    }
  }
}

- (SDMISManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end