@interface WiFiSoftErrorManager
- (BOOL)askToLaunchSlowWiFiRadar:(__CFString *)radar;
- (BOOL)askToLaunchTapToRadar:(int)radar;
- (BOOL)askToLaunchTriggerDisconnectRadar:(__CFString *)radar;
- (BOOL)askToLaunchUserDisconnectRadar;
- (BOOL)getReachabilityStatus;
- (BOOL)isEventMitigationEnabled:(int)enabled;
- (BOOL)isLQAIndicatingTxStall;
- (BOOL)isTxStalled:(unsigned int *)stalled rateType:(unsigned __int8)type size:(unsigned int)size;
- (BOOL)supressEventDetectionProcesssing:(int)processsing deviceContext:(void *)context;
- (BOOL)supressTapToRadar:(int)radar deviceContext:(void *)context;
- (BOOL)wifiSoftErrorTxDataStallProcessHistory:(__CFDictionary *)history;
- (WiFiSoftErrorManager)initWithWiFiManager:(__WiFiManager *)manager queue:(id)queue;
- (id)copySoftErrorEventDescription:(int)description;
- (id)fetchSoftErrorContext:(void *)context softErrorType:(int)type;
- (void)WiFiSoftErrorDriverAvailableEventhandler;
- (void)WiFiSoftErrorDriverLinkupEventhandler;
- (void)WiFiSoftErrorManagerLQMEventHandler:(id)handler;
- (void)initErrorArray:(int)array;
- (void)initEventMitigation;
- (void)populateTxFailHistory:(__CFArray *)history failureHistoryArray:(unsigned int *)array historyArraySz:(unsigned int)sz;
- (void)purgeOutdatedEvents:(id)events currTime:(double)time;
- (void)updateReportingPreference;
- (void)wifiSoftErrorAwdlEventNotificationHandler:(void *)handler eventData:(void *)data;
- (void)wifiSoftErrorRxDataStallEventHandler:(void *)handler eventData:(void *)data;
- (void)wifiSoftErrorSlowWiFiEventHandler:(void *)handler eventData:(void *)data;
- (void)wifiSoftErrorTxDataStallEventHandler:(void *)handler eventData:(void *)data;
- (void)wifiSoftErrorUserConfirmationFlagSetting:(int)setting forError:(int)error withDeviceContext:(void *)context;
- (void)wifiSoftErrorWiFiAutoJoinEventHandler:(void *)handler;
- (void)wifiSoftErrorWiFiScanEventHandler:(void *)handler;
- (void)wifiSoftErrorWiFiToggleEventHandler:(int)handler deviceContext:(void *)context;
- (void)wifiSoftErrorsInProcessStateSet:(int)set;
- (void)wifiSoftErrorsInProcessStateUnset:(int)unset;
@end

@implementation WiFiSoftErrorManager

- (void)updateReportingPreference
{
  self->_isReportingDisabled = sub_100018E08(self->_manager, &self->_reportingTimeout);
  if (self->_reportingTimeout == 0.0)
  {
    self->_reportingTimeout = 3600.0;
  }
}

- (void)initErrorArray:(int)array
{
  v5 = objc_alloc_init(NSMutableArray);
  v9 = v5;
  if (v5)
  {
    v6 = v5;
    if (array <= 3)
    {
      if (array == 1)
      {
        p_wifiToggleErrors = &self->_wifiToggleErrors;
        goto LABEL_13;
      }

      if (array == 2)
      {
        p_wifiToggleErrors = &self->_noNetworkFoundErrors;
        goto LABEL_13;
      }
    }

    else
    {
      switch(array)
      {
        case 4:
          p_wifiToggleErrors = &self->_autoJoinDelayErrors;
          goto LABEL_13;
        case 8:
          p_wifiToggleErrors = &self->_txDataStallErrors;
          goto LABEL_13;
        case 16:
          p_wifiToggleErrors = &self->_rxDataStallErrors;
LABEL_13:
          objc_storeStrong(p_wifiToggleErrors, v6);
          goto LABEL_14;
      }
    }

    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Invalid Soft-Error", "-[WiFiSoftErrorManager initErrorArray:]"}];
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    sub_10013A1B4();
  }

LABEL_14:
}

- (void)wifiSoftErrorsInProcessStateSet:(int)set
{
  if (set >= 0x400)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s:Invalid Soft Error", "-[WiFiSoftErrorManager wifiSoftErrorsInProcessStateSet:]", v5}];
    }
  }

  else
  {
    self->_softErrorInProcessFlags |= set;
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: softErrorsInProcessFlags:0x%0x", "-[WiFiSoftErrorManager wifiSoftErrorsInProcessStateSet:]", self->_softErrorInProcessFlags}];
    }
  }

  objc_autoreleasePoolPop(v4);
}

- (void)wifiSoftErrorsInProcessStateUnset:(int)unset
{
  if (unset >= 0x400)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s:Invalid Soft Error", "-[WiFiSoftErrorManager wifiSoftErrorsInProcessStateUnset:]", v5}];
    }
  }

  else
  {
    self->_softErrorInProcessFlags &= ~unset;
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: softErrorsInProcessFlags:0x%0x", "-[WiFiSoftErrorManager wifiSoftErrorsInProcessStateUnset:]", self->_softErrorInProcessFlags}];
    }
  }

  objc_autoreleasePoolPop(v4);
}

- (id)fetchSoftErrorContext:(void *)context softErrorType:(int)type
{
  if (!context)
  {
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Null deviceContext", "-[WiFiSoftErrorManager fetchSoftErrorContext:softErrorType:]"}];
    }

    goto LABEL_25;
  }

  if (type <= 3)
  {
    if (type == 1)
    {
      v7 = 40;
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_23;
      }

      v7 = 48;
    }
  }

  else
  {
    switch(type)
    {
      case 4:
        v7 = 56;
        break;
      case 8:
        v7 = 64;
        break;
      case 16:
        v7 = 72;
        break;
      default:
        goto LABEL_23;
    }
  }

  v8 = *(&self->super.isa + v7);
  if (!v8)
  {
LABEL_23:
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: errorListArray is NULL! ", "-[WiFiSoftErrorManager fetchSoftErrorContext:softErrorType:]"}];
    }

LABEL_25:
    objc_autoreleasePoolPop(v14);
    v11 = 0;
    v9 = 0;
    goto LABEL_26;
  }

  v9 = v8;
  if ([v8 count])
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = v11;
      v11 = [v9 objectAtIndex:v10];

      if (type == 1)
      {
        manager = self->_manager;
      }

      else
      {
        manager = self->_deviceManager;
      }

      if (manager == context)
      {
        break;
      }

      ++v10;
    }

    while (v10 < [v9 count]);
  }

  else
  {
    v11 = 0;
  }

LABEL_26:

  return v11;
}

- (void)wifiSoftErrorWiFiToggleEventHandler:(int)handler deviceContext:(void *)context
{
  Current = CFAbsoluteTimeGetCurrent();
  if (self->_wifiToggleErrors)
  {
    v21 = [(WiFiSoftErrorManager *)self fetchSoftErrorContext:context softErrorType:1];
    if (v21)
    {
      goto LABEL_8;
    }

    v21 = [[WiFiSoftErrorContext alloc] initWithErrorType:1 deviceContext:context];
    if (!v21)
    {
      sub_10013A28C();
LABEL_43:
      v8 = 0;
      v10 = 0;
      v11 = 0;
      fetchSoftErrorContextData = 0;
LABEL_36:
      v21 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    [(WiFiSoftErrorManager *)self initErrorArray:1];
    if (!self->_wifiToggleErrors)
    {
      sub_10013A524();
      goto LABEL_43;
    }

    v21 = [[WiFiSoftErrorContext alloc] initWithErrorType:1 deviceContext:context];
    if (!v21)
    {
      sub_10013A4B8();
      goto LABEL_43;
    }
  }

  [(NSMutableArray *)self->_wifiToggleErrors addObject:v21];
LABEL_8:
  v8 = objc_alloc_init(NSMutableDictionary);
  if (!v8)
  {
    sub_10013A44C();
    v10 = 0;
    v11 = 0;
    fetchSoftErrorContextData = 0;
    goto LABEL_29;
  }

  fetchSoftErrorContextData = [(WiFiSoftErrorContext *)v21 fetchSoftErrorContextData];
  if (!fetchSoftErrorContextData)
  {
    sub_10013A3E0();
    v10 = 0;
    goto LABEL_28;
  }

  v10 = [[NSNumber alloc] initWithDouble:Current];
  if (!v10)
  {
    sub_10013A374();
    goto LABEL_28;
  }

  if ((handler & 0xFFFFFFF7) == 0)
  {
    [v8 setObject:v10 forKey:@"WiFiOFFEvent"];
    [fetchSoftErrorContextData addObject:v8];
LABEL_28:
    v11 = 0;
    goto LABEL_29;
  }

  if (handler != 7 && handler != 1)
  {
    goto LABEL_28;
  }

  [v8 setObject:v10 forKey:@"WiFiONEvent"];
  [fetchSoftErrorContextData addObject:v8];
  v11 = [fetchSoftErrorContextData count];
  v12 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: wifiToggleEventsArray:eventsCount:%u", "-[WiFiSoftErrorManager wifiSoftErrorWiFiToggleEventHandler:deviceContext:]", v11}];
  }

  objc_autoreleasePoolPop(v12);
  if (v11)
  {
    v13 = 0;
    v14 = v11 - 1;
    while (1)
    {
      v15 = [fetchSoftErrorContextData objectAtIndex:v14];
      v16 = v15;
      if (!v15)
      {
        sub_10013A2F8(0, v14);
        goto LABEL_28;
      }

      v11 = [v15 objectForKey:@"WiFiOFFEvent"];

      if (v11)
      {
        break;
      }

      v13 = --v14 == -1;
      if (v14 == -1)
      {
        v11 = 0;
        break;
      }
    }

    if (v13)
    {
      goto LABEL_29;
    }

    [v11 doubleValue];
    v18 = Current - v17;
    if (v18 < 3.0)
    {
      [(WiFiSoftErrorContext *)v21 setErrorState:2];
      v20 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s:(Soft Error):WiFi Toggle Error Detected !", "-[WiFiSoftErrorManager wifiSoftErrorWiFiToggleEventHandler:deviceContext:]"}];
      }

      objc_autoreleasePoolPop(v20);
      [(WiFiSoftErrorManager *)self wifiSoftErrorsInProcessStateSet:1];
      [(WiFiSoftErrorManager *)self WiFiSoftErrorReporting:1 deviceContext:context displayString:0];
      [(WiFiSoftErrorManager *)self wifiSoftErrorMitigation:1 mitigationContext:context];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Not a WiFi-Toggle: TimeDelta:%f", "-[WiFiSoftErrorManager wifiSoftErrorWiFiToggleEventHandler:deviceContext:]", *&v18}];
      }

      objc_autoreleasePoolPop(v19);
    }

    [(NSMutableArray *)self->_wifiToggleErrors removeObject:v21];

    goto LABEL_36;
  }

LABEL_29:
}

- (void)wifiSoftErrorWiFiScanEventHandler:(void *)handler
{
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Received zero scan results Event", "-[WiFiSoftErrorManager wifiSoftErrorWiFiScanEventHandler:]"}];
  }

  objc_autoreleasePoolPop(v5);
  if (self->_noNetworkFoundErrors)
  {
    v6 = [(WiFiSoftErrorManager *)self fetchSoftErrorContext:handler softErrorType:2];
    if (v6)
    {
      goto LABEL_13;
    }

    v7 = [[WiFiSoftErrorContext alloc] initWithErrorType:2 deviceContext:handler];
    if (!v7)
    {
      sub_10013A590();
      return;
    }

    v19 = v7;
    [(NSMutableArray *)self->_noNetworkFoundErrors addObject:v7];
  }

  else
  {
    [(WiFiSoftErrorManager *)self initErrorArray:2];
    if (!self->_noNetworkFoundErrors)
    {
      sub_10013A6E0();
      return;
    }

    v8 = [[WiFiSoftErrorContext alloc] initWithErrorType:2 deviceContext:handler];
    if (!v8)
    {
      sub_10013A674();
      return;
    }

    v19 = v8;
    [(NSMutableArray *)self->_noNetworkFoundErrors addObject:v8];
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: noNetworksErrorList:%@", "-[WiFiSoftErrorManager wifiSoftErrorWiFiScanEventHandler:]", self->_noNetworkFoundErrors}];
    }

    objc_autoreleasePoolPop(v9);
  }

  v6 = v19;
LABEL_13:
  v20 = v6;
  fetchSoftErrorContextData = [v6 fetchSoftErrorContextData];
  v10 = objc_autoreleasePoolPush();
  if (!fetchSoftErrorContextData)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: noNetworksEventsArray is NULL", "-[WiFiSoftErrorManager wifiSoftErrorWiFiScanEventHandler:]"}];
    }

    objc_autoreleasePoolPop(v10);
    goto LABEL_26;
  }

  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: noNetworksEventsArray:%@", "-[WiFiSoftErrorManager wifiSoftErrorWiFiScanEventHandler:]", fetchSoftErrorContextData}];
  }

  objc_autoreleasePoolPop(v10);
  Current = CFAbsoluteTimeGetCurrent();
  if ([fetchSoftErrorContextData count] > 2)
  {
    v14 = [fetchSoftErrorContextData objectAtIndex:0];
    if (v14)
    {
      v15 = v14;
      [v14 doubleValue];
      if (Current - v16 < 60.0)
      {
        [fetchSoftErrorContextData removeAllObjects];
        v17 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s:(Soft Error):No Networks Found Detected !", "-[WiFiSoftErrorManager wifiSoftErrorWiFiScanEventHandler:]"}];
        }

        objc_autoreleasePoolPop(v17);
        [v20 setErrorState:2];
        [(WiFiSoftErrorManager *)self wifiSoftErrorsInProcessStateSet:2];
        [(WiFiSoftErrorManager *)self WiFiSoftErrorReporting:2 deviceContext:handler displayString:0];
        [(WiFiSoftErrorManager *)self wifiSoftErrorMitigation:2 mitigationContext:handler];
        [fetchSoftErrorContextData removeAllObjects];
        [(NSMutableArray *)self->_noNetworkFoundErrors removeObject:v20];

        v18 = fetchSoftErrorContextData;
        goto LABEL_27;
      }

      [fetchSoftErrorContextData removeObjectAtIndex:0];
      v13 = [[NSNumber alloc] initWithDouble:Current];

      if (v13)
      {
        goto LABEL_25;
      }
    }

LABEL_37:
    sub_10013A5FC();
    return;
  }

  v12 = [[NSNumber alloc] initWithDouble:Current];
  if (!v12)
  {
    goto LABEL_37;
  }

  v13 = v12;
LABEL_25:
  [fetchSoftErrorContextData addObject:v13];

LABEL_26:
  v18 = v20;
LABEL_27:
}

- (void)wifiSoftErrorWiFiAutoJoinEventHandler:(void *)handler
{
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Received delayed AutoJoin", "-[WiFiSoftErrorManager wifiSoftErrorWiFiAutoJoinEventHandler:]"}];
  }

  objc_autoreleasePoolPop(v5);
  if (self->_autoJoinDelayErrors)
  {
    v6 = [(WiFiSoftErrorManager *)self fetchSoftErrorContext:handler softErrorType:4];
    if (v6)
    {
      goto LABEL_10;
    }

    v7 = [[WiFiSoftErrorContext alloc] initWithErrorType:4 deviceContext:handler];
    if (!v7)
    {
LABEL_39:
      sub_10013A74C();
      return;
    }
  }

  else
  {
    [(WiFiSoftErrorManager *)self initErrorArray:4];
    if (!self->_autoJoinDelayErrors)
    {
      sub_10013A830();
      return;
    }

    v7 = [[WiFiSoftErrorContext alloc] initWithErrorType:4 deviceContext:handler];
    if (!v7)
    {
      goto LABEL_39;
    }
  }

  v6 = v7;
  [(NSMutableArray *)self->_autoJoinDelayErrors addObject:v7];
LABEL_10:
  fetchSoftErrorContextData = [v6 fetchSoftErrorContextData];
  v9 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: slowAutoJoinEventsArray:%@", "-[WiFiSoftErrorManager wifiSoftErrorWiFiAutoJoinEventHandler:]", fetchSoftErrorContextData}];
  }

  objc_autoreleasePoolPop(v9);
  Current = CFAbsoluteTimeGetCurrent();
  [v6 setDetectionTime:?];
  v11 = [[NSNumber alloc] initWithDouble:Current];
  if (!v11)
  {
    sub_10013A7B8();
    return;
  }

  v12 = v11;
  [fetchSoftErrorContextData addObject:v11];
  if ([fetchSoftErrorContextData count] == 10)
  {
    [fetchSoftErrorContextData replaceObjectsInRange:0 withObjectsFromArray:9 range:{fetchSoftErrorContextData, 1, 9}];
  }

  v13 = [(WiFiSoftErrorManager *)self fetchSoftErrorContext:handler softErrorType:1];
  v26 = v13;
  if (v13)
  {
    fetchSoftErrorContextData2 = [v13 fetchSoftErrorContextData];
    v15 = fetchSoftErrorContextData2;
    if (fetchSoftErrorContextData2 && [fetchSoftErrorContextData2 count])
    {
      v16 = [v15 count];
      if (v16 - 1 < 0)
      {
        v21 = 0;
      }

      else
      {
        v17 = v16;
        while (1)
        {
          v18 = [v15 objectAtIndex:--v17];
          v19 = v18;
          if (v18)
          {
            v20 = [v18 objectForKey:@"WiFiONEvent"];
            if (v20)
            {
              break;
            }
          }

          if (v17 <= 0)
          {
            v21 = 0;
            goto LABEL_30;
          }
        }

        v21 = v20;

        v22 = CFAbsoluteTimeGetCurrent();
        [v21 doubleValue];
        if (v22 - v23 < 3.0)
        {
          v24 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: device was just powered on - skipping delayed auto-join detection", "-[WiFiSoftErrorManager wifiSoftErrorWiFiAutoJoinEventHandler:]"}];
          }

          objc_autoreleasePoolPop(v24);

          goto LABEL_34;
        }
      }

LABEL_30:
    }
  }

  else
  {
    v15 = 0;
  }

  v25 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s:(Soft Error):Slow AutoJoin Error Detected !", "-[WiFiSoftErrorManager wifiSoftErrorWiFiAutoJoinEventHandler:]"}];
  }

  objc_autoreleasePoolPop(v25);
  [v6 setErrorState:2];
  [(WiFiSoftErrorManager *)self wifiSoftErrorsInProcessStateSet:4];
  [(WiFiSoftErrorManager *)self WiFiSoftErrorReporting:4 deviceContext:handler displayString:0];
  [(WiFiSoftErrorManager *)self wifiSoftErrorMitigation:4 mitigationContext:handler];
LABEL_34:
}

- (void)wifiSoftErrorRxDataStallEventHandler:(void *)handler eventData:(void *)data
{
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Received Rx-Data -Stall Event", "-[WiFiSoftErrorManager wifiSoftErrorRxDataStallEventHandler:eventData:]"}];
  }

  objc_autoreleasePoolPop(v7);
  if (!handler || !data)
  {
    sub_10013A9EC();
    return;
  }

  if (!self->_rxDataStallErrors)
  {
    [(WiFiSoftErrorManager *)self initErrorArray:16];
    if (!self->_rxDataStallErrors)
    {
      sub_10013A980();
      return;
    }

    v9 = [[WiFiSoftErrorContext alloc] initWithErrorType:16 deviceContext:handler];
    if (!v9)
    {
      goto LABEL_32;
    }

LABEL_11:
    v19 = v9;
    [(NSMutableArray *)self->_rxDataStallErrors addObject:v9];
    v8 = v19;
    goto LABEL_12;
  }

  v8 = [(WiFiSoftErrorManager *)self fetchSoftErrorContext:handler softErrorType:16];
  if (!v8)
  {
    v9 = [[WiFiSoftErrorContext alloc] initWithErrorType:16 deviceContext:handler];
    if (!v9)
    {
LABEL_32:
      sub_10013A89C();
      return;
    }

    goto LABEL_11;
  }

LABEL_12:
  v20 = v8;
  fetchSoftErrorContextData = [v8 fetchSoftErrorContextData];
  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: rxDataStallEventsArray:%@", "-[WiFiSoftErrorManager wifiSoftErrorRxDataStallEventHandler:eventData:]", fetchSoftErrorContextData}];
  }

  objc_autoreleasePoolPop(v11);
  v12 = *data;
  getReachabilityStatus = [(WiFiSoftErrorManager *)self getReachabilityStatus];
  v14 = objc_autoreleasePoolPush();
  if (getReachabilityStatus)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Rx-Stall with errorCode:%lluu", "-[WiFiSoftErrorManager wifiSoftErrorRxDataStallEventHandler:eventData:]", v12}];
    }

    objc_autoreleasePoolPop(v14);
    Current = CFAbsoluteTimeGetCurrent();
    [v20 setDetectionTime:?];
    v16 = [[NSNumber alloc] initWithDouble:Current];
    if (!v16)
    {
      sub_10013A908();
      return;
    }

    v17 = v16;
    [fetchSoftErrorContextData addObject:v16];
    if ([fetchSoftErrorContextData count] == 20)
    {
      [fetchSoftErrorContextData replaceObjectsInRange:0 withObjectsFromArray:19 range:{fetchSoftErrorContextData, 1, 19}];
    }

    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s:(Soft Error):RX-Data Stall Error Detected !", "-[WiFiSoftErrorManager wifiSoftErrorRxDataStallEventHandler:eventData:]"}];
    }

    objc_autoreleasePoolPop(v18);
    [v20 setErrorState:2];
    [(WiFiSoftErrorManager *)self wifiSoftErrorsInProcessStateSet:16];
    [(WiFiSoftErrorManager *)self WiFiSoftErrorReporting:16 deviceContext:handler displayString:0];
    [(WiFiSoftErrorManager *)self wifiSoftErrorMitigation:16 mitigationContext:handler];
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Not a Rx-Stall", "-[WiFiSoftErrorManager wifiSoftErrorRxDataStallEventHandler:eventData:]"}];
    }

    objc_autoreleasePoolPop(v14);
  }
}

- (void)wifiSoftErrorTxDataStallEventHandler:(void *)handler eventData:(void *)data
{
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Received Tx-Data Stall Event", "-[WiFiSoftErrorManager wifiSoftErrorTxDataStallEventHandler:eventData:]"}];
  }

  objc_autoreleasePoolPop(v7);
  if (!handler || !data)
  {
    sub_10013AB9C();
    goto LABEL_46;
  }

  if (!self->_txDataStallErrors)
  {
    [(WiFiSoftErrorManager *)self initErrorArray:8];
    if (self->_txDataStallErrors)
    {
      v9 = [[WiFiSoftErrorContext alloc] initWithErrorType:8 deviceContext:handler];
      if (!v9)
      {
LABEL_45:
        sub_10013AA58();
        goto LABEL_46;
      }

      goto LABEL_11;
    }

    sub_10013AB30();
LABEL_46:
    v16 = 0;
    fetchSoftErrorContextData = 0;
    goto LABEL_37;
  }

  v8 = [(WiFiSoftErrorManager *)self fetchSoftErrorContext:handler softErrorType:8];
  if (v8)
  {
    goto LABEL_12;
  }

  v9 = [[WiFiSoftErrorContext alloc] initWithErrorType:8 deviceContext:handler];
  if (!v9)
  {
    goto LABEL_45;
  }

LABEL_11:
  v21 = v9;
  [(NSMutableArray *)self->_txDataStallErrors addObject:v9];
  v8 = v21;
LABEL_12:
  v22 = v8;
  fetchSoftErrorContextData = [v8 fetchSoftErrorContextData];
  if (![(WiFiSoftErrorManager *)self wifiSoftErrorTxDataStallProcessHistory:data])
  {
LABEL_40:
    v16 = 0;
    goto LABEL_41;
  }

  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s:Tx-Stall Instance Detected", "-[WiFiSoftErrorManager wifiSoftErrorTxDataStallEventHandler:eventData:]"}];
  }

  objc_autoreleasePoolPop(v11);
  Current = CFAbsoluteTimeGetCurrent();
  [v22 setDetectionTime:?];
  v13 = [[NSNumber alloc] initWithDouble:Current];
  if (!v13)
  {
    sub_10013AAC4();
    goto LABEL_40;
  }

  v14 = v13;
  [fetchSoftErrorContextData addObject:v13];
  if ([fetchSoftErrorContextData count])
  {
    [(WiFiSoftErrorManager *)self purgeOutdatedEvents:fetchSoftErrorContextData currTime:Current];
  }

  v15 = [fetchSoftErrorContextData count];
  if (v15 < 2)
  {
    v16 = v14;
    goto LABEL_41;
  }

  if (v15 >= 0x15)
  {
    [fetchSoftErrorContextData removeObjectsInRange:{1, (v15 - 20)}];
  }

  v16 = [fetchSoftErrorContextData objectAtIndex:0];

  if (v16)
  {
    [v16 doubleValue];
    if (Current - v17 >= 10.0)
    {
      if ([(WiFiSoftErrorManager *)self isLQAIndicatingTxStall])
      {
        v18 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: TxStall Detected due to high TxPER(as per LQM)", "-[WiFiSoftErrorManager wifiSoftErrorTxDataStallEventHandler:eventData:]"}];
        }
      }

      else
      {
        getReachabilityStatus = [(WiFiSoftErrorManager *)self getReachabilityStatus];
        v18 = objc_autoreleasePoolPush();
        if (getReachabilityStatus)
        {
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: txStall NOT detected", "-[WiFiSoftErrorManager wifiSoftErrorTxDataStallEventHandler:eventData:]"}];
          }

          objc_autoreleasePoolPop(v18);
          goto LABEL_36;
        }

        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: TxStall Detected due to Reachability Failure", "-[WiFiSoftErrorManager wifiSoftErrorTxDataStallEventHandler:eventData:]"}];
        }
      }

      objc_autoreleasePoolPop(v18);
      v20 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s:(Soft Error):TX-Data Stall Error Detected !", "-[WiFiSoftErrorManager wifiSoftErrorTxDataStallEventHandler:eventData:]"}];
      }

      objc_autoreleasePoolPop(v20);
      [v22 setErrorState:2];
      [(WiFiSoftErrorManager *)self wifiSoftErrorsInProcessStateSet:8];
      [(WiFiSoftErrorManager *)self WiFiSoftErrorReporting:8 deviceContext:handler displayString:0];
      [(WiFiSoftErrorManager *)self wifiSoftErrorMitigation:8 mitigationContext:handler];
LABEL_36:
      [fetchSoftErrorContextData removeAllObjects];
      [(NSMutableArray *)self->_txDataStallErrors removeObject:v22];

LABEL_37:
      v22 = 0;
    }
  }

LABEL_41:
}

- (void)wifiSoftErrorAwdlEventNotificationHandler:(void *)handler eventData:(void *)data
{
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    if (data)
    {
      v8 = *data;
    }

    else
    {
      v8 = 0;
    }

    [off_100298C40 WFLog:3 message:{"%s: SoftError eventType is %u \n", "-[WiFiSoftErrorManager wifiSoftErrorAwdlEventNotificationHandler:eventData:]", v8}];
  }

  objc_autoreleasePoolPop(v7);

  [(WiFiSoftErrorManager *)self WiFiSoftErrorReporting:256 deviceContext:handler displayString:0];
}

- (void)wifiSoftErrorSlowWiFiEventHandler:(void *)handler eventData:(void *)data
{
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Slow WiFi event occured\n", "-[WiFiSoftErrorManager wifiSoftErrorSlowWiFiEventHandler:eventData:]"}];
  }

  objc_autoreleasePoolPop(v7);
  v8 = sub_1000102AC(handler, data);
  if (v8)
  {
    v9 = v8;
    v10 = sub_10000A878(v8);
    Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
    v12 = Mutable;
    if (Mutable)
    {
      v13 = v10 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      CFRelease(v9);
      if (!v12)
      {
        return;
      }
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"A slow Wi-Fi connection to “%@“ has been detected. Your response will be used to help tune our detection algorithm.", v10);
      [(WiFiSoftErrorManager *)self WiFiSoftErrorReporting:512 deviceContext:handler displayString:v12];
      CFRelease(v9);
    }

    CFRelease(v12);
  }
}

- (void)WiFiSoftErrorManagerLQMEventHandler:(id)handler
{
  handlerCopy = handler;
  v11 = handlerCopy;
  if (handlerCopy)
  {
    v5 = [handlerCopy objectForKeyedSubscript:@"RSSI"];
    self->_primaryInterfaceRssi = [v5 integerValue];

    v6 = [v11 objectForKeyedSubscript:@"CCA"];
    self->_primaryInterfaceCca = [v6 integerValue];

    v7 = [v11 objectForKeyedSubscript:@"SNR"];
    self->_primaryInterfaceSnr = [v7 integerValue];

    v8 = [v11 objectForKeyedSubscript:@"TXFRAMES"];
    self->_primaryInterfaceTxFrms[self->_primaryInterfaceStatsHistoryIdx] = [v8 unsignedIntValue];

    v9 = [v11 objectForKeyedSubscript:@"TXFAIL"];
    self->_primaryInterfaceTxFail[self->_primaryInterfaceStatsHistoryIdx] = [v9 unsignedIntValue];

    v10 = [v11 objectForKeyedSubscript:@"RXFRAMES"];
    self->_primaryInterfaceRxFrms[self->_primaryInterfaceStatsHistoryIdx] = [v10 unsignedIntValue];

    self->_primaryInterfaceStatsHistoryIdx = (self->_primaryInterfaceStatsHistoryIdx + 1) % 5u;
  }

  else
  {
    sub_10013AC08();
  }
}

- (void)WiFiSoftErrorDriverAvailableEventhandler
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Handle DriverAvailable Event: inProcessFlags:0x%0x", "-[WiFiSoftErrorManager WiFiSoftErrorDriverAvailableEventhandler]", self->_softErrorInProcessFlags}];
  }

  objc_autoreleasePoolPop(v3);
  if ((self->_softErrorInProcessFlags & 2) != 0)
  {

    [(WiFiSoftErrorManager *)self wifiSoftErrorsInProcessStateUnset:2];
  }

  else
  {
    self->_softErrorInProcessFlags = 0;
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: DriverAvailbale event received when not expected.Clearing inProcess State", "-[WiFiSoftErrorManager WiFiSoftErrorDriverAvailableEventhandler]"}];
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)WiFiSoftErrorDriverLinkupEventhandler
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Handle Linkup/Roam Event:inProcessFlags:0x%0x", "-[WiFiSoftErrorManager WiFiSoftErrorDriverLinkupEventhandler]", self->_softErrorInProcessFlags}];
  }

  objc_autoreleasePoolPop(v3);
  if ((self->_softErrorInProcessFlags & 8) != 0)
  {

    [(WiFiSoftErrorManager *)self wifiSoftErrorsInProcessStateUnset:8];
  }
}

- (void)wifiSoftErrorUserConfirmationFlagSetting:(int)setting forError:(int)error withDeviceContext:(void *)context
{
  self->_errorCounters.lastSoftErrorUserFeedbk = setting;
  if (setting != -1 && error == 512)
  {
    sub_1000D79C8(context, setting == 1);
  }
}

- (BOOL)wifiSoftErrorTxDataStallProcessHistory:(__CFDictionary *)history
{
  valuePtr = 0;
  v16 = 0;
  value = 0;
  memset(v23, 0, 48);
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  if (history)
  {
    if (CFDictionaryGetValueIfPresent(history, @"TX_FAILURE_PHYRATE_SERIES_COUNT", &value) && value)
    {
      CFNumberGetValue(value, kCFNumberIntType, &valuePtr);
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Number of RateSeries Present:%u", "-[WiFiSoftErrorManager wifiSoftErrorTxDataStallProcessHistory:]", valuePtr}];
      }

      objc_autoreleasePoolPop(v5);
    }

    v6 = 0;
    if (CFDictionaryGetValueIfPresent(history, @"TX_FAILURE_PHYRATE_SERIES_LEGACY_RATES", &v16) && v16)
    {
      [(WiFiSoftErrorManager *)self populateTxFailHistory:v16 failureHistoryArray:v23 historyArraySz:12];
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Legacy Rates TxFail History RateSeries:%@", "-[WiFiSoftErrorManager wifiSoftErrorTxDataStallProcessHistory:]", v16}];
      }

      objc_autoreleasePoolPop(v7);
      v6 = v23;
    }

    v8 = 0;
    if (CFDictionaryGetValueIfPresent(history, @"TX_FAILURE_PHYRATE_SERIES_11N_1SS", &v16) && v16)
    {
      [(WiFiSoftErrorManager *)self populateTxFailHistory:v16 failureHistoryArray:v22 historyArraySz:12];
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: 11n 1SS Rates TxFail History RateSeries:%@", "-[WiFiSoftErrorManager wifiSoftErrorTxDataStallProcessHistory:]", v16}];
      }

      objc_autoreleasePoolPop(v9);
      v6 = v22;
      v8 = 1;
    }

    if (CFDictionaryGetValueIfPresent(history, @"TX_FAILURE_PHYRATE_SERIES_11N_2SS", &v16) && v16)
    {
      [(WiFiSoftErrorManager *)self populateTxFailHistory:v16 failureHistoryArray:v21 historyArraySz:12];
      v10 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: 11N 2SS Rates TxFail History RateSeries:%@", "-[WiFiSoftErrorManager wifiSoftErrorTxDataStallProcessHistory:]", v16}];
      }

      objc_autoreleasePoolPop(v10);
      v6 = v21;
      v8 = 1;
    }

    if (CFDictionaryGetValueIfPresent(history, @"TX_FAILURE_PHYRATE_SERIES_11AC_1SS", &v16) && v16)
    {
      [(WiFiSoftErrorManager *)self populateTxFailHistory:v16 failureHistoryArray:v20 historyArraySz:12];
      v11 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: 11AC 1SS Rates TxFail History RateSeries:%@", "-[WiFiSoftErrorManager wifiSoftErrorTxDataStallProcessHistory:]", v16}];
      }

      objc_autoreleasePoolPop(v11);
      v6 = v20;
      v8 = 1;
    }

    if (CFDictionaryGetValueIfPresent(history, @"TX_FAILURE_PHYRATE_SERIES_11AC_2SS", &v16) && v16)
    {
      [(WiFiSoftErrorManager *)self populateTxFailHistory:v16 failureHistoryArray:v19 historyArraySz:12];
      v12 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: 11AC 2SS Rates TxFail History RateSeries:%@", "-[WiFiSoftErrorManager wifiSoftErrorTxDataStallProcessHistory:]", v16}];
      }

      objc_autoreleasePoolPop(v12);
      v6 = v19;
      v8 = 1;
    }

    v13 = [(WiFiSoftErrorManager *)self isTxStalled:v6 rateType:v8 size:12];
    if (v13)
    {
      v14 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Possible Tx-Stall", "-[WiFiSoftErrorManager wifiSoftErrorTxDataStallProcessHistory:]"}];
      }

      objc_autoreleasePoolPop(v14);
      LOBYTE(v13) = 1;
    }
  }

  else
  {
    sub_10013ACEC();
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (BOOL)isTxStalled:(unsigned int *)stalled rateType:(unsigned __int8)type size:(unsigned int)size
{
  if (stalled && size)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = stalled[v5];
      if (v5 >= 9)
      {
        v9 = 0;
      }

      else
      {
        v9 = stalled[v5];
      }

      if (v5)
      {
        v10 = 0;
      }

      else
      {
        v10 = *stalled;
      }

      if (type)
      {
        v9 = v10;
      }

      v11 = v9 + v6;
      if (v8)
      {
        v7 += v8;
        v6 = v11;
      }

      ++v5;
    }

    while (size != v5);
    if (v7)
    {
      v12 = (v6 / v7);
    }

    else
    {
      v12 = 0.0;
    }

    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: failureRatio:%f", "-[WiFiSoftErrorManager isTxStalled:rateType:size:]", *&v12}];
    }

    objc_autoreleasePoolPop(v13);
    if (v12 > 0.7)
    {
      return 1;
    }
  }

  else
  {
    sub_10013AD58();
  }

  return 0;
}

- (void)populateTxFailHistory:(__CFArray *)history failureHistoryArray:(unsigned int *)array historyArraySz:(unsigned int)sz
{
  if (CFArrayGetCount(history) >= sz)
  {
    Count = sz;
  }

  else
  {
    Count = CFArrayGetCount(history);
  }

  if (history && array && sz)
  {
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(history, i);
        if (ValueAtIndex)
        {
          CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, array);
        }

        ++array;
      }
    }
  }

  else
  {
    sub_10013ADC4();
  }
}

- (BOOL)askToLaunchTapToRadar:(int)radar
{
  v10 = 0;
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  if (Mutable)
  {
    v5 = Mutable;
    if (radar == 4)
    {
      v6 = @"Did you manually disconnect from this network?";
    }

    else
    {
      v6 = @"Seeing WiFi Problems?";
    }

    if (radar == 4)
    {
      v7 = @"If not, please file a radar.";
    }

    else
    {
      v7 = @"File a radar now?";
    }

    CFStringAppend(Mutable, v6);
    CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, v5, v7, @"Dismiss", @"Radar", 0, &v10);
    v8 = (v10 & 3) != 0;
    CFRelease(v5);
  }

  else
  {
    sub_10013AE30();
    return 1;
  }

  return v8;
}

- (BOOL)askToLaunchTriggerDisconnectRadar:(__CFString *)radar
{
  v4 = 0;
  CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, radar, @"If WiFi was usable, please file radar", @"Dismiss", @"Radar", 0, &v4);
  return (v4 & 3) != 0;
}

- (BOOL)askToLaunchSlowWiFiRadar:(__CFString *)radar
{
  v4 = 0;
  CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, @"[Internal Only]", radar, @"Slow, File Radar", @"Not Slow", 0, &v4);
  return (v4 & 3) == 0;
}

- (BOOL)askToLaunchUserDisconnectRadar
{
  v3 = 0;
  CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, @"User Disconnected from WiFi", @"Seeing WiFi problems?", @"Dismiss", @"Radar", 0, &v3);
  return (v3 & 3) != 0;
}

- (void)purgeOutdatedEvents:(id)events currTime:(double)time
{
  eventsCopy = events;
  if (eventsCopy)
  {
    v5 = +[NSMutableIndexSet indexSet];
    if (v5)
    {
      v6 = v5;
      v7 = [eventsCopy count];
      if (v7)
      {
        v8 = v7;
        for (i = 0; i != v8; ++i)
        {
          v10 = [eventsCopy objectAtIndex:i];
          v11 = v10;
          if (v10)
          {
            [v10 doubleValue];
            if (v12 != 0.0 && time - v12 > 15.0)
            {
              [v6 addIndex:i];
            }
          }
        }
      }

      [eventsCopy removeObjectsAtIndexes:v6];
    }

    else
    {
      sub_10013B08C();
    }
  }

  else
  {
    sub_10013B0F8();
  }
}

- (BOOL)isLQAIndicatingTxStall
{
  v2 = self->_primaryInterfaceStatsHistoryIdx + 4;
  v3 = v2 - 5 * ((13108 * v2) >> 16);
  v4 = self + 4 * (v2 - 5 * ((13108 * v2) >> 16));
  v5 = *(v4 + 81);
  v6 = *(v4 + 76);
  v7 = 0.0;
  if (v6)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v7 = (v6 / v5);
  }

  v9 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: lastLqaStatsRdIdx:%u lastSampleStats txFrms:%u txFails:%u txPer:%f", "-[WiFiSoftErrorManager isLQAIndicatingTxStall]", v3, v5, v6, *&v7}];
  }

  objc_autoreleasePoolPop(v9);
  return v7 > 0.5;
}

- (BOOL)getReachabilityStatus
{
  flags = 0;
  *&address.sa_data[6] = 0;
  *&address.sa_len = 528;
  v2 = SCNetworkReachabilityCreateWithAddress(kCFAllocatorDefault, &address);
  if (SCNetworkReachabilityGetFlags(v2, &flags))
  {
    v3 = flags == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (!v3)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: NetworkReachabilityFlags :0x%0x", "-[WiFiSoftErrorManager getReachabilityStatus]", flags}];
    }

    objc_autoreleasePoolPop(v5);
  }

  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v7 = "NO";
    if (v4)
    {
      v7 = "YES";
    }

    [off_100298C40 WFLog:3 message:{"%s: Internet Reachability Status :%s", "-[WiFiSoftErrorManager getReachabilityStatus]", v7}];
  }

  objc_autoreleasePoolPop(v6);
  if (v2)
  {
    CFRelease(v2);
  }

  return v4;
}

- (BOOL)supressTapToRadar:(int)radar deviceContext:(void *)context
{
  v10 = 0;
  if (sub_10007B118(self->_manager) == 1)
  {
    v11 = -21846;
    v6 = sub_10008708C(self->_manager, &v11, &v10);
    v7 = objc_autoreleasePoolPush();
    if (v6)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Failed to get motion state", "-[WiFiSoftErrorManager supressTapToRadar:deviceContext:]", v9, v10}];
      }
    }

    else if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Motion state is:%u", "-[WiFiSoftErrorManager supressTapToRadar:deviceContext:]", v11, v10}];
    }

    objc_autoreleasePoolPop(v7);
    if (radar > 15)
    {
      if (radar != 16)
      {
        return radar == 512;
      }
    }

    else if (radar != 4 && radar != 8)
    {
      return 0;
    }
  }

  else
  {
    sub_10013B164();
  }

  return 1;
}

- (BOOL)supressEventDetectionProcesssing:(int)processsing deviceContext:(void *)context
{
  if ((processsing & 0xFFFFFFFE) != 4)
  {
    return 0;
  }

  if (context)
  {
    return sub_1000D5998(context) < -70;
  }

  sub_10013B1D0();
  return 0;
}

- (void)initEventMitigation
{
  *&self->_mitigationInfo.lastMitigationTime[4] = 0u;
  *&self->_mitigationInfo.lastMitigationTime[6] = 0u;
  *self->_mitigationInfo.lastMitigationTime = 0u;
  *&self->_mitigationInfo.lastMitigationTime[2] = 0u;
  *self->_mitigationInfo.mitigationAttemptCount = 0u;
  *&self->_mitigationInfo.mitigationAttemptCount[4] = 0u;
  [(WiFiSoftErrorManager *)self enableSoftErrorMitigation:2];

  [(WiFiSoftErrorManager *)self enableSoftErrorMitigation:8];
}

- (BOOL)isEventMitigationEnabled:(int)enabled
{
  v5 = [(WiFiSoftErrorManager *)self softErrorTypeIndex:?];
  if (v5 >= 7)
  {
    sub_10013B314();
    return 0;
  }

  if (enabled == 8)
  {
    return 1;
  }

  if (enabled != 2)
  {
    return 0;
  }

  return self->_mitigationInfo.mitigationAllowedFlag[v5];
}

- (id)copySoftErrorEventDescription:(int)description
{
  if (description > 0x12)
  {
    return 0;
  }

  else
  {
    return off_10025EC08[description];
  }
}

- (WiFiSoftErrorManager)initWithWiFiManager:(__WiFiManager *)manager queue:(id)queue
{
  queueCopy = queue;
  if (objc_opt_class())
  {
    v16.receiver = self;
    v16.super_class = WiFiSoftErrorManager;
    v8 = [(WiFiSoftErrorManager *)&v16 init];
    if (v8)
    {
      self = v8;
      v8->_manager = manager;
      v8->_softErrorInProcessFlags = 0;
      v8->_lastReportedSoftErrorTs = 0.0;
      objc_storeStrong(&v8->_queue, queue);
      *&self->_errorCounters.slowWiFiUserConfirmCount = 0;
      *&self->_errorCounters.triggerDisconnectUserConfirmCount = 0u;
      *&self->_errorCounters.noNetworksFoundErrorUserConfirmCount = 0u;
      *&self->_errorCounters.rxDataStallErrorCount = 0u;
      *&self->_errorCounters.wifiToggleErrorCount = 0u;
      [(WiFiSoftErrorManager *)self initEventMitigation];
      wifiToggleErrors = self->_wifiToggleErrors;
      self->_wifiToggleErrors = 0;

      noNetworkFoundErrors = self->_noNetworkFoundErrors;
      self->_noNetworkFoundErrors = 0;

      autoJoinDelayErrors = self->_autoJoinDelayErrors;
      self->_autoJoinDelayErrors = 0;

      txDataStallErrors = self->_txDataStallErrors;
      self->_txDataStallErrors = 0;

      rxDataStallErrors = self->_rxDataStallErrors;
      self->_rxDataStallErrors = 0;

      self->_isInternalBuild = MGGetBoolAnswer();
      self->_isReportingDisabled = 0;
      self->_reportingTimeout = 3600.0;
      *self->_primaryInterfaceTxFail = 0;
      *&self->_primaryInterfaceTxFail[2] = 0;
      self->_primaryInterfaceTxFail[4] = 0;
      *&self->_primaryInterfaceTxFrms[2] = 0;
      *self->_primaryInterfaceTxFrms = 0;
      self->_primaryInterfaceTxFrms[4] = 0;
      *self->_primaryInterfaceRxFrms = 0;
      *&self->_primaryInterfaceRxFrms[2] = 0;
      self->_primaryInterfaceRxFrms[4] = 0;
      self->_primaryInterfaceStatsHistoryIdx = 0;
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: failed in super-init", "-[WiFiSoftErrorManager initWithWiFiManager:queue:]"}];
      }

      objc_autoreleasePoolPop(v15);
      self = 0;
    }
  }

  return self;
}

@end