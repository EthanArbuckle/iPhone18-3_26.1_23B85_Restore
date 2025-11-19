@interface NRAutoLinkUpgradeMonitor
- (id)description;
- (void)armAggregateStatsTimerSource;
- (void)armWiFiAdviceMonitorTimerSource;
- (void)dealloc;
- (void)invalidateAggregateStatsTimerSource;
- (void)invalidateWiFiAdviceMonitorTimerSource;
- (void)reportEvent:(unsigned int)a3 details:(id)a4;
@end

@implementation NRAutoLinkUpgradeMonitor

- (void)reportEvent:(unsigned int)a3 details:(id)a4
{
  if (self)
  {
    nrUUID = self->_nrUUID;
  }

  else
  {
    nrUUID = 0;
  }

  v8 = nrUUID;
  v9 = a4;
  v10 = [(NRAutoLinkUpgradeMonitor *)self description];
  sub_1000059A8(v8, a3, v10, v9);
}

- (void)invalidateAggregateStatsTimerSource
{
  aggregateStatsTimerSource = self->_aggregateStatsTimerSource;
  if (aggregateStatsTimerSource)
  {
    dispatch_source_cancel(aggregateStatsTimerSource);
    v4 = self->_aggregateStatsTimerSource;
    self->_aggregateStatsTimerSource = 0;
  }
}

- (void)armAggregateStatsTimerSource
{
  if (!self->_aggregateStatsTimerSource)
  {
    v13[5] = v2;
    v13[6] = v3;
    v5 = [(NRAutoLinkUpgradeMonitor *)self queue];
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v5);

    dispatch_source_set_timer(v6, 0x8000000000000000, 0x13A52453C000uLL, 0x12A05F200uLL);
    objc_initWeak(v13, self);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100079348;
    handler[3] = &unk_1001FD0D8;
    objc_copyWeak(&v12, v13);
    v7 = v6;
    v11 = v7;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(v7);
    aggregateStatsTimerSource = self->_aggregateStatsTimerSource;
    self->_aggregateStatsTimerSource = v7;
    v9 = v7;

    objc_destroyWeak(&v12);
    objc_destroyWeak(v13);
  }
}

- (void)invalidateWiFiAdviceMonitorTimerSource
{
  wifiAdviceMonitorTimerSource = self->_wifiAdviceMonitorTimerSource;
  if (wifiAdviceMonitorTimerSource)
  {
    dispatch_source_cancel(wifiAdviceMonitorTimerSource);
    v4 = self->_wifiAdviceMonitorTimerSource;
    self->_wifiAdviceMonitorTimerSource = 0;
  }
}

- (void)armWiFiAdviceMonitorTimerSource
{
  if (!self->_wifiAdviceMonitorTimerSource)
  {
    v14[5] = v2;
    v14[6] = v3;
    v5 = [(NRAutoLinkUpgradeMonitor *)self queue];
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v5);

    v7 = dispatch_time(0, 1800000000000);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);
    objc_initWeak(v14, self);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100079714;
    handler[3] = &unk_1001FD0D8;
    objc_copyWeak(&v13, v14);
    v8 = v6;
    v12 = v8;
    dispatch_source_set_event_handler(v8, handler);
    dispatch_resume(v8);
    wifiAdviceMonitorTimerSource = self->_wifiAdviceMonitorTimerSource;
    self->_wifiAdviceMonitorTimerSource = v8;
    v10 = v8;

    objc_destroyWeak(&v13);
    objc_destroyWeak(v14);
  }
}

- (void)dealloc
{
  if (self)
  {
    nrUUID = self->_nrUUID;
  }

  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    if (self)
    {
      v6 = self->_nrUUID;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = _NRCopyLogObjectForNRUUID();
    v11 = 397;
    v12 = self;
    v9 = "";
    v10 = "[NRAutoLinkUpgradeMonitor dealloc]";
    _NRLogWithArgs();
  }

  if (self && ![(NRAutoLinkUpgradeMonitor *)self cancelled])
  {
    [(NRAutoLinkUpgradeMonitor *)self setCancelled:1];
    [(NRAutoLinkUpgradeMonitor *)self setUpdateBlock:0];
    [(NRAutoLinkUpgradeMonitor *)self invalidateAggregateStatsTimerSource];
    [(NRAutoLinkUpgradeMonitor *)self reportEvent:30003];
  }

  v13.receiver = self;
  v13.super_class = NRAutoLinkUpgradeMonitor;
  [(NRAutoLinkUpgradeMonitor *)&v13 dealloc:v9];
}

- (id)description
{
  v3 = [NSString alloc];
  identifier = self->_identifier;
  v5 = [(NRAutoLinkUpgradeMonitor *)self started];
  totalReceivedUpdates = self->_totalReceivedUpdates;
  v7 = [(NRAutoLinkUpgradeMonitor *)self lastReceivedAdvice];
  if (v7 <= 1)
  {
    if (!v7)
    {
      v8 = @"None";
      goto LABEL_13;
    }

    if (v7 == 1)
    {
      v8 = @"BluetoothDefault";
      goto LABEL_13;
    }
  }

  else
  {
    switch(v7)
    {
      case 2:
        v8 = @"BluetoothClassic";
        goto LABEL_13;
      case 4:
        v8 = @"WiFi";
        goto LABEL_13;
      case 128:
        v8 = @"NoUpgrade";
        goto LABEL_13;
    }
  }

  v8 = [[NSString alloc] initWithFormat:@"Unknown(%llu)", v7];
LABEL_13:
  v9 = "Not-";
  if (v5)
  {
    v9 = "";
  }

  v10 = [v3 initWithFormat:@"[%llu %sMonitoring %llu %@]", identifier, v9, totalReceivedUpdates, v8];

  return v10;
}

@end