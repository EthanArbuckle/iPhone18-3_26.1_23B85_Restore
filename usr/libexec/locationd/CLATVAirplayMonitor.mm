@interface CLATVAirplayMonitor
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (CLATVAirplayMonitor)init;
- (void)addClient:(id)client;
- (void)airPlaySolo:(id)solo failedToStartScanningWithError:(id)error;
- (void)airPlaySolo:(id)solo foundDevice:(id)device withData:(id)data;
- (void)airPlaySoloDidUpdateState:(id)state;
- (void)airPlaySoloStartedScanning:(id)scanning;
- (void)airPlaySoloStoppedScanning:(id)scanning;
- (void)beginService;
- (void)beginServiceWithAirPlaySolo:(id)solo;
- (void)dealloc;
- (void)endService;
- (void)getPowerWithCompletion:(id)completion;
- (void)releaseData;
- (void)removeClient:(id)client;
- (void)sendBufferedScanNotifications;
- (void)startMonitoringDevicesForClient:(id)client;
- (void)startScan;
- (void)stopMonitoringDevicesForClient:(id)client;
- (void)stopScan;
- (void)withClients:(id)clients;
@end

@implementation CLATVAirplayMonitor

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  v5 = index + 1;
  if (index + 1 < [blocked count])
  {
    [objc_msgSend(blocked objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", blocked, v5}];
  }
}

+ (id)getSilo
{
  if (qword_10265AC28 != -1)
  {
    sub_10195A1E8();
  }

  return qword_10265AC20;
}

- (void)beginService
{
  [-[CLATVAirplayMonitor universe](self "universe")];
  v3 = [[WPAirPlaySolo alloc] initWithDelegate:self queue:{objc_msgSend(objc_msgSend(-[CLATVAirplayMonitor universe](self, "universe"), "silo"), "queue")}];

  [(CLATVAirplayMonitor *)self beginServiceWithAirPlaySolo:v3];
}

- (void)beginServiceWithAirPlaySolo:(id)solo
{
  [-[CLATVAirplayMonitor universe](self "universe")];
  [(CLATVAirplayMonitor *)self setClients:+[NSMutableSet set]];
  [(CLATVAirplayMonitor *)self setAirplaySolo:solo];
  [(CLATVAirplayMonitor *)self setPower:[(WPAirPlaySolo *)[(CLATVAirplayMonitor *)self airplaySolo] state]== 3];
  -[CLATVAirplayMonitor setScanDeliveryDelayTimer:](self, "setScanDeliveryDelayTimer:", [objc_msgSend(-[CLATVAirplayMonitor universe](self "universe")]);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10085A904;
  v5[3] = &unk_102447418;
  v5[4] = self;
  [(CLTimer *)[(CLATVAirplayMonitor *)self scanDeliveryDelayTimer] setHandler:v5];
  [(CLATVAirplayMonitor *)self setBufferedDevices:+[NSMutableArray array]];
}

- (void)endService
{
  [-[CLATVAirplayMonitor universe](self "universe")];

  [(CLATVAirplayMonitor *)self releaseData];
}

- (void)releaseData
{
  [(CLATVAirplayMonitor *)self setClients:0];
  [(WPAirPlaySolo *)[(CLATVAirplayMonitor *)self airplaySolo] invalidate];
  [(CLATVAirplayMonitor *)self setAirplaySolo:0];
  [(CLTimer *)[(CLATVAirplayMonitor *)self scanDeliveryDelayTimer] invalidate];
  [(CLATVAirplayMonitor *)self setScanDeliveryDelayTimer:0];

  [(CLATVAirplayMonitor *)self setBufferedDevices:0];
}

- (void)dealloc
{
  [(CLATVAirplayMonitor *)self releaseData];
  v3.receiver = self;
  v3.super_class = CLATVAirplayMonitor;
  [(CLATVAirplayMonitor *)&v3 dealloc];
}

- (void)addClient:(id)client
{
  [-[CLATVAirplayMonitor universe](self "universe")];
  clients = [(CLATVAirplayMonitor *)self clients];

  [(NSMutableSet *)clients addObject:client];
}

- (void)removeClient:(id)client
{
  [-[CLATVAirplayMonitor universe](self "universe")];
  clients = [(CLATVAirplayMonitor *)self clients];

  [(NSMutableSet *)clients removeObject:client];
}

- (void)startMonitoringDevicesForClient:(id)client
{
  [-[CLATVAirplayMonitor universe](self "universe")];

  [(CLATVAirplayMonitor *)self addClient:client];
}

- (void)stopMonitoringDevicesForClient:(id)client
{
  [-[CLATVAirplayMonitor universe](self "universe")];
  if ([(NSMutableSet *)[(CLATVAirplayMonitor *)self clients] count]== 1)
  {
    [(CLATVAirplayMonitor *)self stopScan];
  }

  [(CLATVAirplayMonitor *)self removeClient:client];
}

- (void)getPowerWithCompletion:(id)completion
{
  power = [(CLATVAirplayMonitor *)self power];
  v5 = *(completion + 2);

  v5(completion, power);
}

- (CLATVAirplayMonitor)init
{
  v3.receiver = self;
  v3.super_class = CLATVAirplayMonitor;
  return [(CLATVAirplayMonitor *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLATVAirplayMonitorServiceProtocol outboundProtocol:&OBJC_PROTOCOL___CLATVAirplayMonitorClientProtocol];
}

- (void)withClients:(id)clients
{
  [-[CLATVAirplayMonitor universe](self "universe")];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  clients = self->_clients;
  v6 = [(NSMutableSet *)clients countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(clients);
        }

        (*(clients + 2))(clients, *(*(&v10 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)clients countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)startScan
{
  [-[CLATVAirplayMonitor universe](self "universe")];
  if ([(NSMutableSet *)[(CLATVAirplayMonitor *)self clients] count])
  {
    if ([(CLATVAirplayMonitor *)self power])
    {
      [(WPAirPlaySolo *)[(CLATVAirplayMonitor *)self airplaySolo] startConnectionlessScanningWithData:&off_102553BE8];
      v3 = (*&qword_10265AC18 + j__CFAbsoluteTimeGetCurrent_2() * 1000.0) / 1000.0;
      scanDeliveryDelayTimer = [(CLATVAirplayMonitor *)self scanDeliveryDelayTimer];

      [(CLTimer *)scanDeliveryDelayTimer setNextFireTime:v3];
    }

    else
    {
      if (qword_1025D4870 != -1)
      {
        sub_10195A1FC();
      }

      v6 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        *v7 = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Bluetooth is OFF, ignoring request to scan", v7, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10195A210();
      }
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_10195A1FC();
    }

    v5 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#Warning Got a request for a scan but no one is interested. Ignoring", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195A2EC();
    }
  }
}

- (void)stopScan
{
  [(WPAirPlaySolo *)[(CLATVAirplayMonitor *)self airplaySolo] stopConnectionlessScanningWithData:&off_102553BE8];
  scanDeliveryDelayTimer = [(CLATVAirplayMonitor *)self scanDeliveryDelayTimer];

  [(CLTimer *)scanDeliveryDelayTimer setNextFireDelay:1.79769313e308];
}

- (void)sendBufferedScanNotifications
{
  [-[CLATVAirplayMonitor universe](self "universe")];
  if ([(NSMutableArray *)[(CLATVAirplayMonitor *)self bufferedDevices] count])
  {
    v3 = [(NSMutableArray *)[(CLATVAirplayMonitor *)self bufferedDevices] copy];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10085AFD0;
    v4[3] = &unk_102477898;
    v4[4] = self;
    v4[5] = v3;
    [(CLATVAirplayMonitor *)self withClients:v4];

    [(NSMutableArray *)[(CLATVAirplayMonitor *)self bufferedDevices] removeAllObjects];
  }
}

- (void)airPlaySoloDidUpdateState:(id)state
{
  v4 = [state state] == 3;

  [(CLATVAirplayMonitor *)self setPower:v4];
}

- (void)airPlaySolo:(id)solo foundDevice:(id)device withData:(id)data
{
  if (qword_1025D4870 != -1)
  {
    sub_10195A1FC();
  }

  if (!os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_7;
  }

  v8 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    v19 = 136380931;
    v20 = [objc_msgSend(device "UUIDString")];
    v21 = 2081;
    v22 = [objc_msgSend(data "description")];
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Found device %{private}s withData: %{private}s", &v19, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195A3C8(device, data);
    if (device)
    {
      goto LABEL_8;
    }
  }

  else
  {
LABEL_7:
    if (device)
    {
LABEL_8:
      v9 = [data objectForKeyedSubscript:WPPuckTypeAirPlaySoloAdvertisingData];
      if (v9 && (v10 = v9, [v9 length]))
      {
        if ([v10 length] > 5)
        {
          v13 = *([v10 bytes] + 2);
          v14 = [data objectForKeyedSubscript:WPPuckTypeAirPlaySoloRSSI];
          if (v14)
          {
            intValue = [v14 intValue];
          }

          else
          {
            intValue = 0;
          }

          v16 = [data objectForKeyedSubscript:WPPuckTypeAirPlaySoloAdvertisingChannel];
          if (v16)
          {
            intValue2 = [v16 intValue];
          }

          else
          {
            intValue2 = 0xFFFFFFFFLL;
          }

          [(NSMutableArray *)[(CLATVAirplayMonitor *)self bufferedDevices] addObject:[[CLATVAirplayDevice alloc] initWithTimestamp:intValue RSSI:device uuid:v13 ipv4:intValue2 channel:j__CFAbsoluteTimeGetCurrent_2()]];
        }

        else
        {
          if (qword_1025D4870 != -1)
          {
            sub_10195A50C();
          }

          v11 = qword_1025D4878;
          if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v19) = 0;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "Not enough data provided for advertisement data. Ignoring", &v19, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10195A534();
          }
        }
      }

      else
      {
        if (qword_1025D4870 != -1)
        {
          sub_10195A50C();
        }

        v12 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v19) = 0;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "No IP address provided. Ignoring device", &v19, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10195A610();
        }
      }

      return;
    }
  }

  if (qword_1025D4870 != -1)
  {
    sub_10195A50C();
  }

  v18 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v19) = 0;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "Found a device but its UUID is nil", &v19, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195A6EC();
  }
}

- (void)airPlaySoloStartedScanning:(id)scanning
{
  if (qword_1025D4870 != -1)
  {
    sub_10195A1FC();
  }

  v3 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "AirPlaySolo started scanning", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195A7C8();
  }
}

- (void)airPlaySoloStoppedScanning:(id)scanning
{
  if (qword_1025D4870 != -1)
  {
    sub_10195A1FC();
  }

  v3 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "AirPlaySolo stopped scanning", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195A8A4();
  }
}

- (void)airPlaySolo:(id)solo failedToStartScanningWithError:(id)error
{
  if (qword_1025D4870 != -1)
  {
    sub_10195A1FC();
  }

  v5 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
  {
    v6 = 138543362;
    v7 = [error description];
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Failed to start AirPlaySolo scanning. %{public}@", &v6, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_10195A980(error);
  }
}

@end