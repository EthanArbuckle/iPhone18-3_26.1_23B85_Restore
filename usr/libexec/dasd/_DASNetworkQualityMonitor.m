@interface _DASNetworkQualityMonitor
+ (id)monitorForInterface:(int64_t)a3 interfaceSubtype:(int64_t)a4 onChange:(id)a5;
- (_DASNetworkQualityMonitor)initWithInterface:(int64_t)a3 interfaceSubtype:(int64_t)a4 onChange:(id)a5;
- (void)didStartTrackingNOI:(id)a3;
- (void)didStopTrackingAllNOIs:(id)a3;
- (void)didStopTrackingNOI:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation _DASNetworkQualityMonitor

- (_DASNetworkQualityMonitor)initWithInterface:(int64_t)a3 interfaceSubtype:(int64_t)a4 onChange:(id)a5
{
  v8 = a5;
  v17.receiver = self;
  v17.super_class = _DASNetworkQualityMonitor;
  v9 = [(_DASNetworkQualityMonitor *)&v17 init];
  if (v9)
  {
    v10 = dispatch_queue_create("com.apple.duetknowledgecollector.networkQualityMonitorQueue", 0);
    noiManagerQueue = v9->_noiManagerQueue;
    v9->_noiManagerQueue = v10;

    v12 = objc_alloc_init(NWNetworkOfInterestManager);
    noiManager = v9->_noiManager;
    v9->_noiManager = v12;

    [(NWNetworkOfInterestManager *)v9->_noiManager setQueue:v9->_noiManagerQueue];
    [(NWNetworkOfInterestManager *)v9->_noiManager setDelegate:v9];
    if (a4)
    {
      v9->_interfaceSubtype = a4;
      [(NWNetworkOfInterestManager *)v9->_noiManager trackNOIAnyForInterfaceSubtype:a4 options:0];
    }

    else
    {
      v9->_interface = a3;
      [(NWNetworkOfInterestManager *)v9->_noiManager trackNOIAnyForInterfaceType:a3 options:0];
    }

    v14 = objc_retainBlock(v8);
    callback = v9->_callback;
    v9->_callback = v14;
  }

  return v9;
}

+ (id)monitorForInterface:(int64_t)a3 interfaceSubtype:(int64_t)a4 onChange:(id)a5
{
  v7 = a5;
  v8 = [objc_alloc(objc_opt_class()) initWithInterface:a3 interfaceSubtype:a4 onChange:v7];

  return v8;
}

- (void)didStartTrackingNOI:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (!self->_noi)
  {
    if ([v5 interface] == self->_interface || objc_msgSend(v6, "interfaceSubtype") == self->_interfaceSubtype)
    {
      objc_storeStrong(&self->_noi, a3);
      v7 = [_DASDaemonLogger logForCategory:@"nw"];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        noi = self->_noi;
        v14 = 138412546;
        v15 = noi;
        v16 = 2048;
        v17 = [(NWNetworkOfInterest *)noi linkQuality];
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Saving noi: %@ (%ld)", &v14, 0x16u);
      }

      [(NWNetworkOfInterest *)self->_noi addObserver:self forKeyPath:@"linkQuality" options:1 context:0];
    }

    else
    {
      v9 = [_DASDaemonLogger logForCategory:@"nw"];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v6 interface];
        v11 = [v6 interfaceSubtype];
        interface = self->_interface;
        interfaceSubtype = self->_interfaceSubtype;
        v14 = 134218752;
        v15 = v10;
        v16 = 2048;
        v17 = v11;
        v18 = 2048;
        v19 = interface;
        v20 = 2048;
        v21 = interfaceSubtype;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Interface and subtype (%ld, %ld) do not match expected (%ld, %ld)", &v14, 0x2Au);
      }
    }
  }
}

- (void)didStopTrackingNOI:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:self->_noi])
  {
    [(NWNetworkOfInterest *)self->_noi removeObserver:self forKeyPath:@"linkQuality"];
    noi = self->_noi;
    self->_noi = 0;
  }

  else
  {
    v6 = [_DASDaemonLogger logForCategory:@"nw"];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Stopped tracking noi %@", &v7, 0xCu);
    }
  }
}

- (void)didStopTrackingAllNOIs:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(_DASNetworkQualityMonitor *)self didStopTrackingNOI:*(*(&v11 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  interface = self->_interface;
  noiManager = self->_noiManager;
  if (interface)
  {
    [(NWNetworkOfInterestManager *)noiManager trackNOIAnyForInterfaceType:interface options:0];
  }

  else
  {
    [(NWNetworkOfInterestManager *)noiManager trackNOIAnyForInterfaceSubtype:self->_interfaceSubtype options:0];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a4;
  v8 = [v7 isEqual:self->_noi];
  v9 = [_DASDaemonLogger logForCategory:@"nw"];
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [NSNumber numberWithInteger:[(NWNetworkOfInterest *)self->_noi interface]];
      v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 interfaceSubtype]);
      v13 = [NSNumber numberWithInteger:[(NWNetworkOfInterest *)self->_noi linkQuality]];
      v14 = 138412802;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Link Quality for %@/%@ is now %@", &v14, 0x20u);
    }

    (*(self->_callback + 2))();
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Unexpected noi %@", &v14, 0xCu);
    }
  }
}

@end