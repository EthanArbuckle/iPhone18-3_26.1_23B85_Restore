@interface WiFiSoftErrorManager
- (BOOL)askToLaunchSlowWiFiRadar:(__CFString *)a3;
- (BOOL)askToLaunchTapToRadar:(int)a3;
- (BOOL)askToLaunchTriggerDisconnectRadar:(__CFString *)a3;
- (BOOL)askToLaunchUserDisconnectRadar;
- (BOOL)getReachabilityStatus;
- (BOOL)isEventMitigationEnabled:(int)a3;
- (BOOL)isLQAIndicatingTxStall;
- (BOOL)isTxStalled:(unsigned int *)a3 rateType:(unsigned __int8)a4 size:(unsigned int)a5;
- (BOOL)supressEventDetectionProcesssing:(int)a3 deviceContext:(void *)a4;
- (BOOL)supressTapToRadar:(int)a3 deviceContext:(void *)a4;
- (BOOL)wifiSoftErrorTxDataStallProcessHistory:(__CFDictionary *)a3;
- (WiFiSoftErrorManager)initWithWiFiManager:(__WiFiManager *)a3 queue:(id)a4;
- (id)copySoftErrorEventDescription:(int)a3;
- (id)fetchSoftErrorContext:(void *)a3 softErrorType:(int)a4;
- (void)WiFiSoftErrorDriverAvailableEventhandler;
- (void)WiFiSoftErrorDriverLinkupEventhandler;
- (void)WiFiSoftErrorManagerLQMEventHandler:(id)a3;
- (void)initErrorArray:(int)a3;
- (void)initEventMitigation;
- (void)populateTxFailHistory:(__CFArray *)a3 failureHistoryArray:(unsigned int *)a4 historyArraySz:(unsigned int)a5;
- (void)purgeOutdatedEvents:(id)a3 currTime:(double)a4;
- (void)updateReportingPreference;
- (void)wifiSoftErrorAwdlEventNotificationHandler:(void *)a3 eventData:(void *)a4;
- (void)wifiSoftErrorRxDataStallEventHandler:(void *)a3 eventData:(void *)a4;
- (void)wifiSoftErrorSlowWiFiEventHandler:(void *)a3 eventData:(void *)a4;
- (void)wifiSoftErrorTxDataStallEventHandler:(void *)a3 eventData:(void *)a4;
- (void)wifiSoftErrorUserConfirmationFlagSetting:(int)a3 forError:(int)a4 withDeviceContext:(void *)a5;
- (void)wifiSoftErrorWiFiAutoJoinEventHandler:(void *)a3;
- (void)wifiSoftErrorWiFiScanEventHandler:(void *)a3;
- (void)wifiSoftErrorWiFiToggleEventHandler:(int)a3 deviceContext:(void *)a4;
- (void)wifiSoftErrorsInProcessStateSet:(int)a3;
- (void)wifiSoftErrorsInProcessStateUnset:(int)a3;
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

- (void)initErrorArray:(int)a3
{
  v5 = objc_alloc_init(NSMutableArray);
  v9 = v5;
  if (v5)
  {
    v6 = v5;
    if (a3 <= 3)
    {
      if (a3 == 1)
      {
        p_wifiToggleErrors = &self->_wifiToggleErrors;
        goto LABEL_13;
      }

      if (a3 == 2)
      {
        p_wifiToggleErrors = &self->_noNetworkFoundErrors;
        goto LABEL_13;
      }
    }

    else
    {
      switch(a3)
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

- (void)wifiSoftErrorsInProcessStateSet:(int)a3
{
  if (a3 >= 0x400)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s:Invalid Soft Error", "-[WiFiSoftErrorManager wifiSoftErrorsInProcessStateSet:]", v5}];
    }
  }

  else
  {
    self->_softErrorInProcessFlags |= a3;
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: softErrorsInProcessFlags:0x%0x", "-[WiFiSoftErrorManager wifiSoftErrorsInProcessStateSet:]", self->_softErrorInProcessFlags}];
    }
  }

  objc_autoreleasePoolPop(v4);
}

- (void)wifiSoftErrorsInProcessStateUnset:(int)a3
{
  if (a3 >= 0x400)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s:Invalid Soft Error", "-[WiFiSoftErrorManager wifiSoftErrorsInProcessStateUnset:]", v5}];
    }
  }

  else
  {
    self->_softErrorInProcessFlags &= ~a3;
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: softErrorsInProcessFlags:0x%0x", "-[WiFiSoftErrorManager wifiSoftErrorsInProcessStateUnset:]", self->_softErrorInProcessFlags}];
    }
  }

  objc_autoreleasePoolPop(v4);
}

- (id)fetchSoftErrorContext:(void *)a3 softErrorType:(int)a4
{
  if (!a3)
  {
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Null deviceContext", "-[WiFiSoftErrorManager fetchSoftErrorContext:softErrorType:]"}];
    }

    goto LABEL_25;
  }

  if (a4 <= 3)
  {
    if (a4 == 1)
    {
      v7 = 40;
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_23;
      }

      v7 = 48;
    }
  }

  else
  {
    switch(a4)
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

      if (a4 == 1)
      {
        manager = self->_manager;
      }

      else
      {
        manager = self->_deviceManager;
      }

      if (manager == a3)
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

- (void)wifiSoftErrorWiFiToggleEventHandler:(int)a3 deviceContext:(void *)a4
{
  Current = CFAbsoluteTimeGetCurrent();
  if (self->_wifiToggleErrors)
  {
    v21 = [(WiFiSoftErrorManager *)self fetchSoftErrorContext:a4 softErrorType:1];
    if (v21)
    {
      goto LABEL_8;
    }

    v21 = [[WiFiSoftErrorContext alloc] initWithErrorType:1 deviceContext:a4];
    if (!v21)
    {
      sub_10013A28C();
LABEL_43:
      v8 = 0;
      v10 = 0;
      v11 = 0;
      v9 = 0;
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

    v21 = [[WiFiSoftErrorContext alloc] initWithErrorType:1 deviceContext:a4];
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
    v9 = 0;
    goto LABEL_29;
  }

  v9 = [(WiFiSoftErrorContext *)v21 fetchSoftErrorContextData];
  if (!v9)
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

  if ((a3 & 0xFFFFFFF7) == 0)
  {
    [v8 setObject:v10 forKey:@"WiFiOFFEvent"];
    [v9 addObject:v8];
LABEL_28:
    v11 = 0;
    goto LABEL_29;
  }

  if (a3 != 7 && a3 != 1)
  {
    goto LABEL_28;
  }

  [v8 setObject:v10 forKey:@"WiFiONEvent"];
  [v9 addObject:v8];
  v11 = [v9 count];
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
      v15 = [v9 objectAtIndex:v14];
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
      [(WiFiSoftErrorManager *)self WiFiSoftErrorReporting:1 deviceContext:a4 displayString:0];
      [(WiFiSoftErrorManager *)self wifiSoftErrorMitigation:1 mitigationContext:a4];
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

- (void)wifiSoftErrorWiFiScanEventHandler:(void *)a3
{
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Received zero scan results Event", "-[WiFiSoftErrorManager wifiSoftErrorWiFiScanEventHandler:]"}];
  }

  objc_autoreleasePoolPop(v5);
  if (self->_noNetworkFoundErrors)
  {
    v6 = [(WiFiSoftErrorManager *)self fetchSoftErrorContext:a3 softErrorType:2];
    if (v6)
    {
      goto LABEL_13;
    }

    v7 = [[WiFiSoftErrorContext alloc] initWithErrorType:2 deviceContext:a3];
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

    v8 = [[WiFiSoftErrorContext alloc] initWithErrorType:2 deviceContext:a3];
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
  v21 = [v6 fetchSoftErrorContextData];
  v10 = objc_autoreleasePoolPush();
  if (!v21)
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
    [off_100298C40 WFLog:3 message:{"%s: noNetworksEventsArray:%@", "-[WiFiSoftErrorManager wifiSoftErrorWiFiScanEventHandler:]", v21}];
  }

  objc_autoreleasePoolPop(v10);
  Current = CFAbsoluteTimeGetCurrent();
  if ([v21 count] > 2)
  {
    v14 = [v21 objectAtIndex:0];
    if (v14)
    {
      v15 = v14;
      [v14 doubleValue];
      if (Current - v16 < 60.0)
      {
        [v21 removeAllObjects];
        v17 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s:(Soft Error):No Networks Found Detected !", "-[WiFiSoftErrorManager wifiSoftErrorWiFiScanEventHandler:]"}];
        }

        objc_autoreleasePoolPop(v17);
        [v20 setErrorState:2];
        [(WiFiSoftErrorManager *)self wifiSoftErrorsInProcessStateSet:2];
        [(WiFiSoftErrorManager *)self WiFiSoftErrorReporting:2 deviceContext:a3 displayString:0];
        [(WiFiSoftErrorManager *)self wifiSoftErrorMitigation:2 mitigationContext:a3];
        [v21 removeAllObjects];
        [(NSMutableArray *)self->_noNetworkFoundErrors removeObject:v20];

        v18 = v21;
        goto LABEL_27;
      }

      [v21 removeObjectAtIndex:0];
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
  [v21 addObject:v13];

LABEL_26:
  v18 = v20;
LABEL_27:
}

- (void)wifiSoftErrorWiFiAutoJoinEventHandler:(void *)a3
{
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Received delayed AutoJoin", "-[WiFiSoftErrorManager wifiSoftErrorWiFiAutoJoinEventHandler:]"}];
  }

  objc_autoreleasePoolPop(v5);
  if (self->_autoJoinDelayErrors)
  {
    v6 = [(WiFiSoftErrorManager *)self fetchSoftErrorContext:a3 softErrorType:4];
    if (v6)
    {
      goto LABEL_10;
    }

    v7 = [[WiFiSoftErrorContext alloc] initWithErrorType:4 deviceContext:a3];
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

    v7 = [[WiFiSoftErrorContext alloc] initWithErrorType:4 deviceContext:a3];
    if (!v7)
    {
      goto LABEL_39;
    }
  }

  v6 = v7;
  [(NSMutableArray *)self->_autoJoinDelayErrors addObject:v7];
LABEL_10:
  v8 = [v6 fetchSoftErrorContextData];
  v9 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: slowAutoJoinEventsArray:%@", "-[WiFiSoftErrorManager wifiSoftErrorWiFiAutoJoinEventHandler:]", v8}];
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
  [v8 addObject:v11];
  if ([v8 count] == 10)
  {
    [v8 replaceObjectsInRange:0 withObjectsFromArray:9 range:{v8, 1, 9}];
  }

  v13 = [(WiFiSoftErrorManager *)self fetchSoftErrorContext:a3 softErrorType:1];
  v26 = v13;
  if (v13)
  {
    v14 = [v13 fetchSoftErrorContextData];
    v15 = v14;
    if (v14 && [v14 count])
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
  [(WiFiSoftErrorManager *)self WiFiSoftErrorReporting:4 deviceContext:a3 displayString:0];
  [(WiFiSoftErrorManager *)self wifiSoftErrorMitigation:4 mitigationContext:a3];
LABEL_34:
}

- (void)wifiSoftErrorRxDataStallEventHandler:(void *)a3 eventData:(void *)a4
{
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Received Rx-Data -Stall Event", "-[WiFiSoftErrorManager wifiSoftErrorRxDataStallEventHandler:eventData:]"}];
  }

  objc_autoreleasePoolPop(v7);
  if (!a3 || !a4)
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

    v9 = [[WiFiSoftErrorContext alloc] initWithErrorType:16 deviceContext:a3];
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

  v8 = [(WiFiSoftErrorManager *)self fetchSoftErrorContext:a3 softErrorType:16];
  if (!v8)
  {
    v9 = [[WiFiSoftErrorContext alloc] initWithErrorType:16 deviceContext:a3];
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
  v10 = [v8 fetchSoftErrorContextData];
  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: rxDataStallEventsArray:%@", "-[WiFiSoftErrorManager wifiSoftErrorRxDataStallEventHandler:eventData:]", v10}];
  }

  objc_autoreleasePoolPop(v11);
  v12 = *a4;
  v13 = [(WiFiSoftErrorManager *)self getReachabilityStatus];
  v14 = objc_autoreleasePoolPush();
  if (v13)
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
    [v10 addObject:v16];
    if ([v10 count] == 20)
    {
      [v10 replaceObjectsInRange:0 withObjectsFromArray:19 range:{v10, 1, 19}];
    }

    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s:(Soft Error):RX-Data Stall Error Detected !", "-[WiFiSoftErrorManager wifiSoftErrorRxDataStallEventHandler:eventData:]"}];
    }

    objc_autoreleasePoolPop(v18);
    [v20 setErrorState:2];
    [(WiFiSoftErrorManager *)self wifiSoftErrorsInProcessStateSet:16];
    [(WiFiSoftErrorManager *)self WiFiSoftErrorReporting:16 deviceContext:a3 displayString:0];
    [(WiFiSoftErrorManager *)self wifiSoftErrorMitigation:16 mitigationContext:a3];
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

- (void)wifiSoftErrorTxDataStallEventHandler:(void *)a3 eventData:(void *)a4
{
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Received Tx-Data Stall Event", "-[WiFiSoftErrorManager wifiSoftErrorTxDataStallEventHandler:eventData:]"}];
  }

  objc_autoreleasePoolPop(v7);
  if (!a3 || !a4)
  {
    sub_10013AB9C();
    goto LABEL_46;
  }

  if (!self->_txDataStallErrors)
  {
    [(WiFiSoftErrorManager *)self initErrorArray:8];
    if (self->_txDataStallErrors)
    {
      v9 = [[WiFiSoftErrorContext alloc] initWithErrorType:8 deviceContext:a3];
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
    v10 = 0;
    goto LABEL_37;
  }

  v8 = [(WiFiSoftErrorManager *)self fetchSoftErrorContext:a3 softErrorType:8];
  if (v8)
  {
    goto LABEL_12;
  }

  v9 = [[WiFiSoftErrorContext alloc] initWithErrorType:8 deviceContext:a3];
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
  v10 = [v8 fetchSoftErrorContextData];
  if (![(WiFiSoftErrorManager *)self wifiSoftErrorTxDataStallProcessHistory:a4])
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
  [v10 addObject:v13];
  if ([v10 count])
  {
    [(WiFiSoftErrorManager *)self purgeOutdatedEvents:v10 currTime:Current];
  }

  v15 = [v10 count];
  if (v15 < 2)
  {
    v16 = v14;
    goto LABEL_41;
  }

  if (v15 >= 0x15)
  {
    [v10 removeObjectsInRange:{1, (v15 - 20)}];
  }

  v16 = [v10 objectAtIndex:0];

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
        v19 = [(WiFiSoftErrorManager *)self getReachabilityStatus];
        v18 = objc_autoreleasePoolPush();
        if (v19)
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
      [(WiFiSoftErrorManager *)self WiFiSoftErrorReporting:8 deviceContext:a3 displayString:0];
      [(WiFiSoftErrorManager *)self wifiSoftErrorMitigation:8 mitigationContext:a3];
LABEL_36:
      [v10 removeAllObjects];
      [(NSMutableArray *)self->_txDataStallErrors removeObject:v22];

LABEL_37:
      v22 = 0;
    }
  }

LABEL_41:
}

- (void)wifiSoftErrorAwdlEventNotificationHandler:(void *)a3 eventData:(void *)a4
{
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    if (a4)
    {
      v8 = *a4;
    }

    else
    {
      v8 = 0;
    }

    [off_100298C40 WFLog:3 message:{"%s: SoftError eventType is %u \n", "-[WiFiSoftErrorManager wifiSoftErrorAwdlEventNotificationHandler:eventData:]", v8}];
  }

  objc_autoreleasePoolPop(v7);

  [(WiFiSoftErrorManager *)self WiFiSoftErrorReporting:256 deviceContext:a3 displayString:0];
}

- (void)wifiSoftErrorSlowWiFiEventHandler:(void *)a3 eventData:(void *)a4
{
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Slow WiFi event occured\n", "-[WiFiSoftErrorManager wifiSoftErrorSlowWiFiEventHandler:eventData:]"}];
  }

  objc_autoreleasePoolPop(v7);
  v8 = sub_1000102AC(a3, a4);
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
      [(WiFiSoftErrorManager *)self WiFiSoftErrorReporting:512 deviceContext:a3 displayString:v12];
      CFRelease(v9);
    }

    CFRelease(v12);
  }
}

- (void)WiFiSoftErrorManagerLQMEventHandler:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:@"RSSI"];
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

- (void)wifiSoftErrorUserConfirmationFlagSetting:(int)a3 forError:(int)a4 withDeviceContext:(void *)a5
{
  self->_errorCounters.lastSoftErrorUserFeedbk = a3;
  if (a3 != -1 && a4 == 512)
  {
    sub_1000D79C8(a5, a3 == 1);
  }
}

- (BOOL)wifiSoftErrorTxDataStallProcessHistory:(__CFDictionary *)a3
{
  valuePtr = 0;
  v16 = 0;
  value = 0;
  memset(v23, 0, 48);
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  if (a3)
  {
    if (CFDictionaryGetValueIfPresent(a3, @"TX_FAILURE_PHYRATE_SERIES_COUNT", &value) && value)
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
    if (CFDictionaryGetValueIfPresent(a3, @"TX_FAILURE_PHYRATE_SERIES_LEGACY_RATES", &v16) && v16)
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
    if (CFDictionaryGetValueIfPresent(a3, @"TX_FAILURE_PHYRATE_SERIES_11N_1SS", &v16) && v16)
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

    if (CFDictionaryGetValueIfPresent(a3, @"TX_FAILURE_PHYRATE_SERIES_11N_2SS", &v16) && v16)
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

    if (CFDictionaryGetValueIfPresent(a3, @"TX_FAILURE_PHYRATE_SERIES_11AC_1SS", &v16) && v16)
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

    if (CFDictionaryGetValueIfPresent(a3, @"TX_FAILURE_PHYRATE_SERIES_11AC_2SS", &v16) && v16)
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

- (BOOL)isTxStalled:(unsigned int *)a3 rateType:(unsigned __int8)a4 size:(unsigned int)a5
{
  if (a3 && a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = a3[v5];
      if (v5 >= 9)
      {
        v9 = 0;
      }

      else
      {
        v9 = a3[v5];
      }

      if (v5)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a3;
      }

      if (a4)
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

    while (a5 != v5);
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

- (void)populateTxFailHistory:(__CFArray *)a3 failureHistoryArray:(unsigned int *)a4 historyArraySz:(unsigned int)a5
{
  if (CFArrayGetCount(a3) >= a5)
  {
    Count = a5;
  }

  else
  {
    Count = CFArrayGetCount(a3);
  }

  if (a3 && a4 && a5)
  {
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
        if (ValueAtIndex)
        {
          CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, a4);
        }

        ++a4;
      }
    }
  }

  else
  {
    sub_10013ADC4();
  }
}

- (BOOL)askToLaunchTapToRadar:(int)a3
{
  v10 = 0;
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  if (Mutable)
  {
    v5 = Mutable;
    if (a3 == 4)
    {
      v6 = @"Did you manually disconnect from this network?";
    }

    else
    {
      v6 = @"Seeing WiFi Problems?";
    }

    if (a3 == 4)
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

- (BOOL)askToLaunchTriggerDisconnectRadar:(__CFString *)a3
{
  v4 = 0;
  CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, a3, @"If WiFi was usable, please file radar", @"Dismiss", @"Radar", 0, &v4);
  return (v4 & 3) != 0;
}

- (BOOL)askToLaunchSlowWiFiRadar:(__CFString *)a3
{
  v4 = 0;
  CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, @"[Internal Only]", a3, @"Slow, File Radar", @"Not Slow", 0, &v4);
  return (v4 & 3) == 0;
}

- (BOOL)askToLaunchUserDisconnectRadar
{
  v3 = 0;
  CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, @"User Disconnected from WiFi", @"Seeing WiFi problems?", @"Dismiss", @"Radar", 0, &v3);
  return (v3 & 3) != 0;
}

- (void)purgeOutdatedEvents:(id)a3 currTime:(double)a4
{
  v14 = a3;
  if (v14)
  {
    v5 = +[NSMutableIndexSet indexSet];
    if (v5)
    {
      v6 = v5;
      v7 = [v14 count];
      if (v7)
      {
        v8 = v7;
        for (i = 0; i != v8; ++i)
        {
          v10 = [v14 objectAtIndex:i];
          v11 = v10;
          if (v10)
          {
            [v10 doubleValue];
            if (v12 != 0.0 && a4 - v12 > 15.0)
            {
              [v6 addIndex:i];
            }
          }
        }
      }

      [v14 removeObjectsAtIndexes:v6];
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

- (BOOL)supressTapToRadar:(int)a3 deviceContext:(void *)a4
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
    if (a3 > 15)
    {
      if (a3 != 16)
      {
        return a3 == 512;
      }
    }

    else if (a3 != 4 && a3 != 8)
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

- (BOOL)supressEventDetectionProcesssing:(int)a3 deviceContext:(void *)a4
{
  if ((a3 & 0xFFFFFFFE) != 4)
  {
    return 0;
  }

  if (a4)
  {
    return sub_1000D5998(a4) < -70;
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

- (BOOL)isEventMitigationEnabled:(int)a3
{
  v5 = [(WiFiSoftErrorManager *)self softErrorTypeIndex:?];
  if (v5 >= 7)
  {
    sub_10013B314();
    return 0;
  }

  if (a3 == 8)
  {
    return 1;
  }

  if (a3 != 2)
  {
    return 0;
  }

  return self->_mitigationInfo.mitigationAllowedFlag[v5];
}

- (id)copySoftErrorEventDescription:(int)a3
{
  if (a3 > 0x12)
  {
    return 0;
  }

  else
  {
    return off_10025EC08[a3];
  }
}

- (WiFiSoftErrorManager)initWithWiFiManager:(__WiFiManager *)a3 queue:(id)a4
{
  v7 = a4;
  if (objc_opt_class())
  {
    v16.receiver = self;
    v16.super_class = WiFiSoftErrorManager;
    v8 = [(WiFiSoftErrorManager *)&v16 init];
    if (v8)
    {
      self = v8;
      v8->_manager = a3;
      v8->_softErrorInProcessFlags = 0;
      v8->_lastReportedSoftErrorTs = 0.0;
      objc_storeStrong(&v8->_queue, a4);
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