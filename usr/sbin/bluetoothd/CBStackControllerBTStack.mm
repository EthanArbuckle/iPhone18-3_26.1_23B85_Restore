@interface CBStackControllerBTStack
- (BOOL)_deleteDevice:(id)device error:(id *)error;
- (BOOL)_disconnectDevice:(id)device serviceFlags:(unsigned int)flags error:(id *)error;
- (BOOL)addDiscoverableController:(id)controller error:(id *)error;
- (BOOL)addPairingClient:(id)client error:(id *)error;
- (BOOL)connectDevice:(id)device connectionFlags:(unsigned int)flags serviceFlags:(unsigned int)serviceFlags error:(id *)error;
- (BOOL)deleteDevice:(id)device error:(id *)error;
- (BOOL)disconnectDevice:(id)device serviceFlags:(unsigned int)flags error:(id *)error;
- (BOOL)isDeviceConnected:(id)connected error:(id *)error;
- (BOOL)modifyDevice:(id)device btDevice:(void *)btDevice settings:(id)settings error:(id *)error;
- (BOOL)modifyDevice:(id)device error:(id *)error;
- (BOOL)modifyDevice:(id)device leDevice:(void *)leDevice settings:(id)settings error:(id *)error;
- (BOOL)modifyDevice:(id)device peerSourceDevice:(id)sourceDevice peerSourceState:(char)state requestFlags:(unsigned int)flags error:(id *)error;
- (BOOL)modifyDevice:(id)device settings:(id)settings error:(id *)error;
- (BOOL)pairingContinueWithPairingInfo:(id)info error:(id *)error;
- (BOOL)poweredOn;
- (BOOL)sendAudioAccessoryConfig:(id)config device:(id)device error:(id *)error;
- (BOOL)sendAudioAccessoryEventMessage:(id)message eventType:(unsigned __int8)type device:(id)device error:(id *)error;
- (BOOL)sendConversationDetectMessage:(id)message device:(id)device error:(id *)error;
- (BOOL)sendRelayMessageType:(unsigned __int8)type messageData:(id)data conduitDevice:(id)device destinationDevice:(id)destinationDevice error:(id *)error;
- (BOOL)sendSmartRoutingInformation:(id)information device:(id)device error:(id *)error;
- (BOOL)setLowPowerModeWithReason:(int)reason error:(id *)error;
- (BOOL)setPowerState:(int64_t)state error:(id *)error;
- (BOOL)updateControllerInfo:(id)info error:(id *)error;
- (CBControllerInfo)controllerInfo;
- (CBStackControllerBTStack)init;
- (id)_btUUIDWithID:(id)d error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (id)diagnosticControl:(id)control error:(id *)error;
- (id)getDevicesWithFlags:(unsigned int)flags error:(id *)error;
- (int)discoverableState;
- (int)inquiryState;
- (int64_t)powerState;
- (unsigned)softwareUpdateAdvertisingInstanceLimit;
- (void)_accessoryCommandStatusWithDevice:(id)device type:(int)type result:(unsigned __int16)result reason:(unsigned __int16)reason;
- (void)_accessoryReceivedRelayMessageType:(unsigned __int8)type messageData:(id)data conduitDevice:(id)device sourceDevice:(id)sourceDevice;
- (void)_btDeviceWithID:(id)d createIfNeeded:(BOOL)needed error:(id *)error;
- (void)_completePerformDeviceRequest:(id)request error:(id)error;
- (void)_connectDeviceCompleteRequest:(id)request error:(id)error;
- (void)_connectDeviceUpdateRequests:(id)requests btResult:(int)result;
- (void)_deleteAllDevices;
- (void)_disconnectAllDevicesWithServiceFlags:(unsigned int)flags;
- (void)_modifyDeviceCompleteRequest:(id)request error:(id)error;
- (void)_pairingAgentTearDown;
- (void)_pairingCompletedWithBTDevice:(void *)device result:(int)result;
- (void)_pairingPromptWithBTDevice:(void *)device pairingType:(int64_t)type pinString:(id)string flags:(unsigned int)flags;
- (void)_readRSSIWithConnectionHandle:(_OI_HCI_CONNECTION *)handle status:(int)status rssi:(char)rssi;
- (void)_readTxPowerWithFlags:(unsigned int)flags status:(int)status connectionHandle:(_OI_HCI_CONNECTION *)handle txPowerLevel:(char)level;
- (void)activate;
- (void)connectWithCBConnection:(id)connection completionHandler:(id)handler;
- (void)invalidate;
- (void)localDeviceEvent:(int)event;
- (void)modifyDevice:(id)device connectionPriorityDevices:(id)devices timeoutSeconds:(double)seconds completionHandler:(id)handler;
- (void)performDeviceRequest:(id)request device:(id)device completionHandler:(id)handler;
- (void)removeDiscoverableController:(id)controller;
- (void)removePairingClient:(id)client;
- (void)setLowPowerModeWithParams:(int)params params:(id)a4 completionHandler:(id)handler;
- (void)setLowPowerModeWithReason:(int)reason completionHandler:(id)handler;
- (void)setOfflineAdvertisingParams:(id)params;
@end

@implementation CBStackControllerBTStack

- (BOOL)poweredOn
{
  if (qword_100B512C8 != -1)
  {
    sub_10080EAFC();
  }

  return sub_10000EE78(off_100B512C0) == 1;
}

- (int64_t)powerState
{
  if (qword_100B512C8 != -1)
  {
    sub_10080EAFC();
  }

  v2 = sub_10000EE78(off_100B512C0);
  result = 4;
  if (v2 > 2)
  {
    if ((v2 - 3) < 2)
    {
      return result;
    }

    return 0;
  }

  if (!v2)
  {
    return result;
  }

  if (v2 != 1)
  {
    return 0;
  }

  if (qword_100B50AA0 != -1)
  {
    sub_10080EB10();
  }

  if (sub_10006DBF8(off_100B50A98))
  {
    return 10;
  }

  else
  {
    return 5;
  }
}

- (CBControllerInfo)controllerInfo
{
  v3 = objc_alloc_init(CBControllerInfo);
  if (qword_100B512B8 != -1)
  {
    sub_10080EA2C();
  }

  v4 = sub_10009BB10(qword_100B512B0);
  [v3 setAudioLinkQualityArray:v4];

  [v3 setBluetoothState:{-[CBStackControllerBTStack powerState](self, "powerState")}];
  v5 = sub_10000C7D0();
  v6 = *(v5 + 800);
  v7 = [NSString stringWithUTF8String:sub_10009B750(v5, v6)];
  [v3 setChipsetID:v7];

  [v3 setDiscoverableState:{-[CBStackControllerBTStack discoverableState](self, "discoverableState")}];
  if (v6)
  {
    __s1 = 0;
    v43 = 0;
    v44 = 0;
    v8 = sub_10009BD9C();
    (*(*v8 + 64))(v8, &__s1);
    v9 = HIBYTE(v44);
    if (v44 < 0)
    {
      v9 = v43;
    }

    if (!v9)
    {
      goto LABEL_12;
    }

    if (SHIBYTE(v44) < 0)
    {
      p_s1 = __s1;
      if (v43 == 43 && !memcmp(__s1, "No Bluetooth automatic firmware update file", 0x2BuLL))
      {
        goto LABEL_12;
      }
    }

    else
    {
      p_s1 = &__s1;
    }

    v11 = [NSString stringWithUTF8String:p_s1];
    [v3 setFirmwareName:v11];

LABEL_12:
    v12 = sub_10009BD9C();
    if ((*(*v12 + 80))(v12))
    {
      v13 = CBErrorF();
      [v3 setLastChipsetInitError:v13];
    }

    if (SHIBYTE(v44) < 0)
    {
      operator delete(__s1);
    }
  }

  if (qword_100B50AA0 != -1)
  {
    sub_10009AF30();
  }

  if (*(off_100B50A98 + 60) == 1)
  {
    WORD2(__s1) = 0;
    LODWORD(__s1) = 0;
    sub_10009BE34(off_100B50A98, &__s1);
    v14 = [[NSData alloc] initWithBytes:&__s1 length:6];
    [v3 setHardwareAddressData:v14];
  }

  fastLEConnectionInfoData = [(CBStackControllerBTStack *)self fastLEConnectionInfoData];
  [v3 setFastLEConnectionInfoData:fastLEConnectionInfoData];

  [v3 setFastLEConnectionInfoVersion:{-[CBStackControllerBTStack fastLEConnectionInfoVersion](self, "fastLEConnectionInfoVersion")}];
  v16 = sub_10009B9DC();
  v17 = 0;
  v18 = 4;
  v19 = 1;
  if (v16 > 5)
  {
    if (v16 <= 7)
    {
      if (v16 == 6)
      {
        v17 = 0;
        v19 = 0;
        v18 = 1;
        goto LABEL_33;
      }
    }

    else if (v16 != 8 && v16 != 9)
    {
      if (v16 == 11)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    v17 = 0;
    v19 = 0;
    v18 = 2;
    goto LABEL_33;
  }

  if ((v16 - 1) < 5)
  {
    v19 = 0;
    v18 = 3;
    v17 = 1;
    goto LABEL_33;
  }

  if (v16)
  {
LABEL_31:
    v17 = 0;
    v19 = 0;
    v18 = 0;
  }

LABEL_33:
  [v3 setHciTransportType:v18];
  [v3 setInquiryState:{-[CBStackControllerBTStack inquiryState](self, "inquiryState")}];
  v20 = sub_10000C7D0();
  [v3 setLeaVersion:sub_10009BF08(v20)];
  [v3 setLmpVersion:BYTE8(xmmword_100BCDFD8)];
  [v3 setProductID:sub_10009BAE4()];
  if (qword_100B50AC0 != -1)
  {
    sub_10080EA40();
  }

  [v3 setSupportedServices:sub_10009C474(off_100B50AB8)];
  [v3 setVendorID:sub_10009BB08()];
  [v3 setVendorIDSource:sub_10000C240()];
  if (!v6)
  {
    v22 = [NSString alloc];
    firmwareName = [v22 initWithFormat:@"v%u c%u", WORD5(xmmword_100BCDFD8), WORD3(xmmword_100BCDFD8)];
    [v3 setFirmwareVersion:firmwareName];
    goto LABEL_39;
  }

  if (v6 - 2000 <= 0x7CF)
  {
    firmwareName = [v3 firmwareName];
    [v3 setFirmwareVersion:firmwareName];
LABEL_39:

    goto LABEL_40;
  }

  if (v6 > 0x7CF)
  {
    v26 = v6 - 4000;
    if (v26 <= 0x7CF)
    {
      v27 = [NSString alloc];
      v28 = [v27 initWithFormat:@"HCI Revision:%04x, LMP Subrevision:%04x", WORD3(xmmword_100BCDFD8), WORD5(xmmword_100BCDFD8)];
      [v3 setFirmwareVersion:v28];

      if (v26 <= 0x3E7)
      {
        v29 = [NSString stringWithUTF8String:sub_10022EC10()];
        [v3 setFirmwareName:v29];

        [v3 setHciTransportType:4];
      }

      goto LABEL_40;
    }
  }

  else
  {
    v24 = sub_10000C798();
    if (((v17 | v19) & (*(*v24 + 416))(v24)) == 1)
    {
      v25 = [NSString alloc];
      firmwareName = [v25 initWithFormat:@"v%d c%u", BYTE10(xmmword_100BCDFD8), WORD3(xmmword_100BCDFD8)];
      [v3 setFirmwareVersion:firmwareName];
      goto LABEL_39;
    }
  }

  firmwareName2 = [v3 firmwareName];
  uTF8String = [firmwareName2 UTF8String];
  if (uTF8String)
  {
    v32 = uTF8String;
  }

  else
  {
    v32 = "";
  }

  while (1)
  {
    v33 = *v32;
    if (!*v32 || v33 == 95)
    {
      break;
    }

    ++v32;
  }

  v34 = 0;
  v35 = v33 == 95;
  v36 = v33 == 95;
  if (v35)
  {
    v37 = v32 + 1;
  }

  else
  {
    v37 = v32;
  }

  while (1)
  {
    v38 = v32[v36 + v34];
    if (!v32[v36 + v34] || v38 == 95)
    {
      break;
    }

    ++v34;
  }

  if (v34 && v38 == 95)
  {
    v39 = [[NSString alloc] initWithBytes:v37 length:v34 encoding:4];
    [v3 setFirmwareVersion:v39];
  }

  firmwareVersion = [v3 firmwareVersion];

  if (!firmwareVersion)
  {
    v41 = [NSString alloc];
    firmwareName = [v41 initWithFormat:@"v%u", WORD5(xmmword_100BCDFD8)];
    [v3 setFirmwareVersion:firmwareName];
    goto LABEL_39;
  }

LABEL_40:

  return v3;
}

- (int)inquiryState
{
  if (qword_100B508A0 != -1)
  {
    sub_10080EA68();
  }

  if (sub_10009BA5C())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int)discoverableState
{
  v3 = 0;
  if (qword_100B508A0 != -1)
  {
    sub_10080EA68();
  }

  sub_100061EC8(off_100B50898, &v3);
  if (v3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (CBStackControllerBTStack)init
{
  v8.receiver = self;
  v8.super_class = CBStackControllerBTStack;
  v2 = [(CBStackControllerBTStack *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_powerStateNotifyToken = -1;
    v4 = [CBUtil getBluetoothDebugSettingString:@"BluetoothCustomerLogging" InKey:@"PrivateDataLogging"];
    privateDataLoggingEnabled = v3->_privateDataLoggingEnabled;
    v3->_privateDataLoggingEnabled = v4;

    v3->_profileChangedToken = -1;
    v6 = v3;
  }

  return v3;
}

- (BOOL)addDiscoverableController:(id)controller error:(id *)error
{
  controllerCopy = controller;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100150B9C;
  v26[3] = &unk_100AE1120;
  v26[4] = &v27;
  v7 = objc_retainBlock(v26);
  v8 = [NSValue valueWithNonretainedObject:controllerCopy];
  v9 = [(NSMutableDictionary *)self->_discoverableSessionMap objectForKeyedSubscript:v8];

  if (!v9)
  {
    appID = [controllerCopy appID];
    if (!appID)
    {
      if (error)
      {
        CBErrorF();
        *error = v10 = 0;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_25;
    }

    v12 = [[NSString alloc] initWithFormat:@"%@-0x%08X", appID, objc_msgSend(controllerCopy, "clientID")];
    uTF8String = [v12 UTF8String];
    if (qword_100B50B88 != -1)
    {
      sub_10080EA7C();
    }

    v14 = qword_100B50B80;
    sub_100007E30(__p, uTF8String);
    v15 = sub_100044414(v14, __p);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 && v15 != -310000)
    {
      if (!error)
      {
        v10 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      if (qword_100B508A0 != -1)
      {
        sub_10080EAA4();
      }

      v16 = sub_100571C4C(off_100B50898, v28[3]);
      if (v16)
      {
        if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
        {
          v23 = v12;
          LogPrintF_safe();
        }

        if (qword_100B508A0 != -1)
        {
          sub_10080EAA4();
        }

        v17 = sub_100572080(off_100B50898, v16, 1);
        if (!v17 || v17 == -310000)
        {
          v18 = objc_alloc_init(CBStackDiscoverableSession);
          [(CBStackDiscoverableSession *)v18 setBtSessionHandle:v28[3]];
          discoverableSessionMap = self->_discoverableSessionMap;
          if (!discoverableSessionMap)
          {
            v20 = objc_alloc_init(NSMutableDictionary);
            v21 = self->_discoverableSessionMap;
            self->_discoverableSessionMap = v20;

            discoverableSessionMap = self->_discoverableSessionMap;
          }

          [(NSMutableDictionary *)discoverableSessionMap setObject:v18 forKeyedSubscript:v8, v23];
          v28[3] = 0;

          v10 = 1;
          goto LABEL_24;
        }

        if (!error)
        {
          goto LABEL_34;
        }
      }

      else if (!error)
      {
LABEL_34:
        v10 = 0;
        goto LABEL_24;
      }
    }

    CBErrorF();
    *error = v10 = 0;
LABEL_24:

LABEL_25:
    goto LABEL_26;
  }

  v10 = 1;
LABEL_26:

  (v7[2])(v7);
  _Block_object_dispose(&v27, 8);

  return v10;
}

- (void)removeDiscoverableController:(id)controller
{
  controllerCopy = controller;
  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    appID = [controllerCopy appID];
    clientID = [controllerCopy clientID];
    LogPrintF_safe();
  }

  v4 = [NSValue valueWithNonretainedObject:controllerCopy, appID, clientID];
  v5 = [(NSMutableDictionary *)self->_discoverableSessionMap objectForKeyedSubscript:v4];
  if (v5)
  {
    [(NSMutableDictionary *)self->_discoverableSessionMap setObject:0 forKeyedSubscript:v4];
    btSessionHandle = [v5 btSessionHandle];
    if (qword_100B50B88 != -1)
    {
      sub_10080EAE8();
    }

    sub_100079604(qword_100B50B80, btSessionHandle);
  }
}

- (unsigned)softwareUpdateAdvertisingInstanceLimit
{
  v2 = sub_10000C7D0();
  v3 = (*(*v2 + 3128))(v2);
  if (v3)
  {
    v4 = *(*sub_10000C7D0() + 3912);

    LOBYTE(v3) = v4();
  }

  return v3;
}

- (BOOL)setPowerState:(int64_t)state error:(id *)error
{
  if (state == 4)
  {
    if (qword_100B512C8 != -1)
    {
      sub_10080EAFC();
    }

    v8 = sub_10057A03C(off_100B512C0);
    if (v8)
    {
      v9 = v8 == -310000;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      LOBYTE(v6) = 1;
      return v6;
    }

    if (!error)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (state != 10)
  {
    if (state == 5)
    {
      if (qword_100B508A0 != -1)
      {
        sub_10080EA68();
      }

      sub_100574640(off_100B50898, 0, 0);
      if (qword_100B512C8 != -1)
      {
        sub_10080EAFC();
      }

      v5 = sub_100579C50(off_100B512C0);
      LOBYTE(v6) = 1;
      if (v5 && v5 != -310000)
      {
        if (error)
        {
          goto LABEL_32;
        }

LABEL_34:
        LOBYTE(v6) = 0;
        return v6;
      }

      return v6;
    }

    if (!error)
    {
      goto LABEL_34;
    }

LABEL_32:
    v10 = CBErrorF();
    v6 = v10;
    LOBYTE(v6) = 0;
    *error = v10;
    return v6;
  }

  if (qword_100B508A0 != -1)
  {
    sub_10080EA68();
  }

  sub_100574640(off_100B50898, 0, 1);
  if (qword_100B512C8 != -1)
  {
    sub_10080EAFC();
  }

  LODWORD(v6) = sub_10000EE78(off_100B512C0);
  if (v6 != 1)
  {
    if (qword_100B512C8 != -1)
    {
      sub_10080EAFC();
    }

    v7 = sub_100579C50(off_100B512C0);
    LOBYTE(v6) = 1;
    if (v7)
    {
      if (v7 != -310000)
      {
        if (error)
        {
          goto LABEL_32;
        }

        goto LABEL_34;
      }
    }
  }

  return v6;
}

- (void)setLowPowerModeWithParams:(int)params params:(id)a4 completionHandler:(id)handler
{
  v6 = *&params;
  v15 = a4;
  handlerCopy = handler;
  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    v11 = v6;
    v13 = v15;
    LogPrintF_safe();
  }

  if (v6 == 3)
  {
    if (qword_100B512D8 != -1)
    {
      sub_10080EB24();
    }

    v9 = sub_100311A24(off_100B512D0, 3, v15);
    if (v9)
    {
      v12 = v9;
      v10 = CBErrorF();
      if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        v14 = [v10 description];
        LogPrintF_safe();
      }

      handlerCopy[2](handlerCopy, v10);
    }

    else
    {
      if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        v11 = 0;
        LogPrintF_safe();
      }

      v10 = 0;
      if (([v15 configFlags] & 0x10) != 0)
      {
        [(CBStackControllerBTStack *)self setLowPowerModeWithReason:3 completionHandler:handlerCopy];
      }

      else
      {
        handlerCopy[2](handlerCopy, 0);
      }
    }
  }
}

- (void)setLowPowerModeWithReason:(int)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create("CBStackSetLowPowerMode", v7);

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100151370;
  block[3] = &unk_100AE2528;
  reasonCopy = reason;
  block[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  dispatch_async(v8, block);
}

- (BOOL)setLowPowerModeWithReason:(int)reason error:(id *)error
{
  v5 = *&reason;
  v6 = sub_1000B11F4();
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, 0);
  v8 = dispatch_time(0, 9000000000);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10015180C;
  handler[3] = &unk_100ADF8F8;
  handler[4] = v6;
  dispatch_source_set_event_handler(v7, handler);
  dispatch_activate(v7);
  v9 = sub_100017E6C();
  if (((*(*v9 + 96))(v9, v5) & 1) == 0)
  {
    if (error)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (qword_100B512D8 != -1)
  {
    sub_10080EB38();
  }

  sub_100309A18(off_100B512D0);
  if (qword_100B512D8 != -1)
  {
    sub_10080EB38();
  }

  v10 = sub_10030A8A0(off_100B512D0, v5);
  if (qword_100B512D8 != -1)
  {
    sub_10080EB38();
  }

  sub_100309B0C(off_100B512D0);
  if (v10)
  {
    v11 = (v10 + 310000);
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_1000B11F4() - v6;
  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    v20 = v12;
    LogPrintF_safe();
  }

  dispatch_source_cancel(v7);
  if (v12 >> 3 <= 0x464)
  {
    v22[0] = @"errorCode";
    v13 = [NSNumber numberWithInt:v11];
    v23[0] = v13;
    v22[1] = @"errorCount";
    v14 = [NSNumber numberWithInt:v11 != 0, v20];
    v23[1] = v14;
    v22[2] = @"timeToEnter";
    v15 = [NSNumber numberWithUnsignedLongLong:v12];
    v23[2] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];

    v17 = sub_10000F034();
    (*(*v17 + 224))(v17, v16);
  }

  if (v11)
  {
    if (error)
    {
LABEL_23:
      CBErrorF();
      *error = v18 = 0;
      goto LABEL_19;
    }

LABEL_24:
    v18 = 0;
    goto LABEL_19;
  }

  v18 = 1;
LABEL_19:

  return v18;
}

- (void)setOfflineAdvertisingParams:(id)params
{
  paramsCopy = params;
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("CBStackSetOfflineAdvertisingParams", v4);

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100151AAC;
  block[3] = &unk_100ADF820;
  v8 = paramsCopy;
  v6 = paramsCopy;
  dispatch_async(v5, block);
}

- (id)descriptionWithLevel:(int)level
{
  v72 = 0;
  powerState = [(CBStackControllerBTStack *)self powerState];
  if (powerState > 0xA)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_100AE2BC8[powerState];
  }

  discoverableState = [(CBStackControllerBTStack *)self discoverableState];
  if (discoverableState > 2)
  {
    v6 = "?";
  }

  else
  {
    v6 = off_100AE2BB0[discoverableState];
  }

  controllerInfo = [(CBStackControllerBTStack *)self controllerInfo];
  fastLEConnectionInfoVersion = [controllerInfo fastLEConnectionInfoVersion];
  stackControllerInfoCloudSyncStatus = self->_stackControllerInfoCloudSyncStatus;
  if (stackControllerInfoCloudSyncStatus > 3)
  {
    v10 = "?";
  }

  else
  {
    v10 = off_100AE2B90[stackControllerInfoCloudSyncStatus];
  }

  inquiryState = [(CBStackControllerBTStack *)self inquiryState];
  if (inquiryState > 2)
  {
    v12 = "?";
  }

  else
  {
    v12 = off_100AE2BB0[inquiryState];
  }

  if (self->_btSessionPtr)
  {
    v13 = "yes";
  }

  else
  {
    v13 = "no";
  }

  v45 = v12;
  v46 = v13;
  v41 = v4;
  NSAppendPrintF_safe();
  v14 = v72;

  v48 = self->_connectDeviceRequests;
  if ([(NSMutableSet *)v48 count:v41])
  {
    v71 = v14;
    NSAppendPrintF_safe();
    v15 = v14;

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = v48;
    v16 = [(NSMutableSet *)obj countByEnumeratingWithState:&v67 objects:v75 count:16];
    if (v16)
    {
      v17 = *v68;
      v18 = "";
      do
      {
        v19 = 0;
        v20 = v15;
        do
        {
          if (*v68 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v67 + 1) + 8 * v19);
          v66 = v20;
          connection = [v21 connection];
          [connection peerDevice];
          v43 = v42 = v18;
          NSAppendPrintF_safe();
          v15 = v20;

          v19 = v19 + 1;
          v18 = ", ";
          v20 = v15;
        }

        while (v16 != v19);
        v16 = [(NSMutableSet *)obj countByEnumeratingWithState:&v67 objects:v75 count:16, v42, v43];
        v18 = ", ";
      }

      while (v16);
    }

    v65 = v15;
    NSAppendPrintF_safe();
    v14 = v15;
  }

  v47 = self->_modifyDeviceRequests;
  if ([(NSMutableSet *)v47 count])
  {
    v64 = v14;
    NSAppendPrintF_safe();
    v23 = v14;

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v24 = v47;
    v25 = [(NSMutableSet *)v24 countByEnumeratingWithState:&v60 objects:v74 count:16];
    if (v25)
    {
      v26 = *v61;
      v27 = "";
      do
      {
        v28 = 0;
        v29 = v23;
        do
        {
          if (*v61 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v30 = *(*(&v60 + 1) + 8 * v28);
          v59 = v29;
          [v30 device];
          v43 = v42 = v27;
          NSAppendPrintF_safe();
          v23 = v29;

          v28 = v28 + 1;
          v27 = ", ";
          v29 = v23;
        }

        while (v25 != v28);
        v25 = [(NSMutableSet *)v24 countByEnumeratingWithState:&v60 objects:v74 count:16, v42, v43];
        v27 = ", ";
      }

      while (v25);
    }

    v58 = v23;
    NSAppendPrintF_safe();
    v14 = v23;
  }

  v50 = self->_performDeviceRequests;
  if ([(NSMutableSet *)v50 count])
  {
    v57 = v14;
    NSAppendPrintF_safe();
    v31 = v14;

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obja = v50;
    v32 = [(NSMutableSet *)obja countByEnumeratingWithState:&v53 objects:v73 count:16];
    if (v32)
    {
      v33 = *v54;
      v34 = "";
      do
      {
        v35 = 0;
        v36 = v31;
        do
        {
          if (*v54 != v33)
          {
            objc_enumerationMutation(obja);
          }

          v37 = *(*(&v53 + 1) + 8 * v35);
          device = [v37 device];
          [v37 request];
          v44 = v43 = device;
          v42 = v34;
          NSAppendPrintF_safe();
          v31 = v36;

          v35 = v35 + 1;
          v36 = v31;
          v34 = ", ";
        }

        while (v32 != v35);
        v32 = [(NSMutableSet *)obja countByEnumeratingWithState:&v53 objects:v73 count:16, v42, device, v44];
        v34 = ", ";
      }

      while (v32);
    }

    NSAppendPrintF_safe();
    v14 = v31;
  }

  v39 = v14;

  return v14;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  if (!dispatchQueue)
  {
    sub_10080EC14();
LABEL_31:
    sub_10080EAE8();
    goto LABEL_7;
  }

  dispatch_assert_queue_V2(dispatchQueue);
  objc_storeStrong(&qword_100B55358, self);
  v7 = sub_10000E92C();
  v8 = (*(*v7 + 160))(v7);
  p_btSessionHandle = &self->_btSessionHandle;
  btSessionHandle = self->_btSessionHandle;
  self->_logPrivateData = v8;
  if (btSessionHandle)
  {
    goto LABEL_20;
  }

  v4 = &off_100B51000;
  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080EBF8();
  }

  p_info = &OBJC_METACLASS___BTVCDevice.info;
  if (qword_100B50B88 != -1)
  {
    goto LABEL_31;
  }

LABEL_7:
  v10 = qword_100B50B80;
  sub_100007E30(__p, "CBDaemon");
  v11 = sub_100044414(v10, __p);
  v12 = v11;
  if (v18 < 0)
  {
    operator delete(__p[0]);
    if (!v12)
    {
      goto LABEL_16;
    }

LABEL_11:
    if (v12 != -310000)
    {
      v13 = *(v4 + 120);
      if (v13 <= 90 && (v13 != -1 || _LogCategory_Initialize()))
      {
        v15 = CUPrintErrorCode();
        LogPrintF_safe();
      }
    }

    goto LABEL_16;
  }

  if (v11)
  {
    goto LABEL_11;
  }

LABEL_16:
  if (*p_btSessionHandle)
  {
    if (p_info[369] != -1)
    {
      sub_10080EA7C();
    }

    self->_btSessionPtr = sub_1000117DC(qword_100B50B80, self->_btSessionHandle);
  }

LABEL_20:
  if (!self->_addedController)
  {
    os_unfair_lock_lock(&unk_100B55360);
    if (!qword_100B55368)
    {
      operator new();
    }

    sub_100152538(qword_100B55368, self);
    os_unfair_lock_unlock(&unk_100B55360);
    self->_addedController = 1;
  }

  if (self->_powerStateNotifyToken == -1)
  {
    notify_register_check("com.apple.bluetooth.state", &self->_powerStateNotifyToken);
    notify_set_state(self->_powerStateNotifyToken, [(CBStackControllerBTStack *)self powerState]);
    notify_post("com.apple.bluetooth.state");
  }

  if (self->_profileChangedToken == -1)
  {
    v14 = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1001526F8;
    handler[3] = &unk_100ADF848;
    handler[4] = self;
    notify_register_dispatch("com.apple.MCX._managementStatusChangedForDomains", &self->_profileChangedToken, v14, handler);
  }
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_addedController)
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080EC7C();
    }

    os_unfair_lock_lock(&unk_100B55360);
    if (qword_100B55368)
    {
      sub_100152CB8(qword_100B55368, self);
    }

    os_unfair_lock_unlock(&unk_100B55360);
    self->_addedController = 0;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  allObjects = [(NSMutableSet *)self->_connectDeviceRequests allObjects];
  v4 = [allObjects countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v4)
  {
    v5 = *v43;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v43 != v5)
        {
          objc_enumerationMutation(allObjects);
        }

        v7 = *(*(&v42 + 1) + 8 * i);
        v8 = CBErrorF();
        [(CBStackControllerBTStack *)self _connectDeviceCompleteRequest:v7 error:v8];
      }

      v4 = [allObjects countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v4);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  allObjects2 = [(NSMutableSet *)self->_modifyDeviceRequests allObjects];
  v10 = [allObjects2 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v10)
  {
    v11 = *v39;
    do
    {
      for (j = 0; j != v10; j = j + 1)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(allObjects2);
        }

        v13 = *(*(&v38 + 1) + 8 * j);
        v14 = CBErrorF();
        [(CBStackControllerBTStack *)self _modifyDeviceCompleteRequest:v13 error:v14];
      }

      v10 = [allObjects2 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v10);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  allObjects3 = [(NSMutableSet *)self->_performDeviceRequests allObjects];
  v16 = [allObjects3 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v16)
  {
    v17 = *v35;
    do
    {
      for (k = 0; k != v16; k = k + 1)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(allObjects3);
        }

        v19 = *(*(&v34 + 1) + 8 * k);
        v20 = CBErrorF();
        [(CBStackControllerBTStack *)self _completePerformDeviceRequest:v19 error:v20];
      }

      v16 = [allObjects3 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v16);
  }

  [(CBStackControllerBTStack *)self _pairingAgentTearDown];
  btSessionHandle = self->_btSessionHandle;
  if (btSessionHandle)
  {
    if (qword_100B50B88 != -1)
    {
      sub_10080EA7C();
    }

    v22 = sub_100079604(qword_100B50B80, btSessionHandle);
    if (v22 && v22 != -310000 && dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v33 = CUPrintErrorCode();
      LogPrintF_safe();
    }
  }

  powerStateNotifyToken = self->_powerStateNotifyToken;
  if (powerStateNotifyToken != -1)
  {
    notify_cancel(powerStateNotifyToken);
    self->_powerStateNotifyToken = -1;
  }

  profileChangedToken = self->_profileChangedToken;
  if (profileChangedToken != -1)
  {
    notify_cancel(profileChangedToken);
    self->_profileChangedToken = -1;
  }

  self->_btSessionHandle = 0;
  self->_btSessionPtr = 0;
  controllerDataChangedHandler = self->_controllerDataChangedHandler;
  self->_controllerDataChangedHandler = 0;

  discoverableStateChangedHandler = self->_discoverableStateChangedHandler;
  self->_discoverableStateChangedHandler = 0;

  inquiryStateChangedHandler = self->_inquiryStateChangedHandler;
  self->_inquiryStateChangedHandler = 0;

  v28 = objc_retainBlock(self->_invalidationHandler);
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  powerChangedHandler = self->_powerChangedHandler;
  self->_powerChangedHandler = 0;

  relayMessageHandler = self->_relayMessageHandler;
  self->_relayMessageHandler = 0;

  v32 = qword_100B55358;
  qword_100B55358 = 0;

  if (v28)
  {
    v28[2](v28);
  }
}

- (void)_accessoryCommandStatusWithDevice:(id)device type:(int)type result:(unsigned __int16)result reason:(unsigned __int16)reason
{
  resultCopy = result;
  reasonCopy = reason;
  deviceCopy = device;
  if (type == 1 && self->_addedController)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    allObjects = [(NSMutableSet *)self->_modifyDeviceRequests allObjects];
    v10 = [allObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(allObjects);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          device = [v13 device];
          v15 = [device isEquivalentToCBDevice:deviceCopy compareFlags:8];

          if (v15)
          {
            if (reasonCopy | resultCopy)
            {
              v17 = resultCopy;
              v18 = reasonCopy;
              v16 = CBErrorF();
            }

            else
            {
              v16 = 0;
            }

            [(CBStackControllerBTStack *)self _modifyDeviceCompleteRequest:v13 error:v16, v17, v18];
          }
        }

        v10 = [allObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }
  }
}

- (void)_accessoryReceivedRelayMessageType:(unsigned __int8)type messageData:(id)data conduitDevice:(id)device sourceDevice:(id)sourceDevice
{
  typeCopy = type;
  dataCopy = data;
  deviceCopy = device;
  sourceDeviceCopy = sourceDevice;
  if (self->_addedController)
  {
    v12 = objc_retainBlock(self->_relayMessageHandler);
    v13 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, deviceCopy, sourceDeviceCopy, typeCopy, dataCopy);
    }
  }
}

- (void)_btDeviceWithID:(id)d createIfNeeded:(BOOL)needed error:(id *)error
{
  neededCopy = needed;
  dCopy = d;
  if (dCopy)
  {
    v8 = [[NSUUID alloc] initWithUUIDString:dCopy];
    if (v8)
    {
      if (qword_100B508D0 != -1)
      {
        sub_10080EC98();
      }

      v9 = sub_100046458(off_100B508C8, v8, 0);
      if (v9)
      {
        if (qword_100B508F0 != -1)
        {
          sub_10080ECAC();
        }

        v10 = sub_1000504C8(off_100B508E8, v9, neededCopy);
        if (v10)
        {
          goto LABEL_15;
        }

        if (error)
        {
          goto LABEL_25;
        }

LABEL_26:
        v10 = 0;
        goto LABEL_15;
      }

      if (!error)
      {
        goto LABEL_26;
      }
    }

    else
    {
      [dCopy UTF8String];
      if (TextToHardwareAddress())
      {
        if (!error)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (qword_100B508F0 != -1)
        {
          sub_10080ECC0();
        }

        v10 = sub_1000504C8(off_100B508E8, 0, neededCopy);
        if (v10)
        {
          goto LABEL_15;
        }

        if (!error)
        {
          goto LABEL_26;
        }
      }
    }

LABEL_25:
    CBErrorF();
    *error = v10 = 0;
LABEL_15:

    goto LABEL_16;
  }

  if (error)
  {
    CBErrorF();
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_16:

  return v10;
}

- (id)_btUUIDWithID:(id)d error:(id *)error
{
  dCopy = d;
  v6 = [[NSUUID alloc] initWithUUIDString:dCopy];
  if (v6)
  {
    v7 = v6;
    goto LABEL_8;
  }

  [dCopy UTF8String];
  if (TextToHardwareAddress())
  {
    if (error)
    {
      v11 = CBErrorF();
      v7 = 0;
LABEL_15:
      *error = v11;
      goto LABEL_8;
    }

    v7 = 0;
  }

  else
  {
    v12[0] = 0;
    v12[1] = 0;
    if (qword_100B508D0 != -1)
    {
      sub_10080ECE8();
    }

    sub_1000498D4(off_100B508C8, 0, 0, 1u, 0, 0, v12);
    v8 = sub_10004DF60(v12);
    v7 = v8;
    if (v8)
    {
      v9 = v8;
      goto LABEL_8;
    }

    if (error)
    {
      v11 = CBErrorF();
      goto LABEL_15;
    }
  }

LABEL_8:

  return v7;
}

- (BOOL)connectDevice:(id)device connectionFlags:(unsigned int)flags serviceFlags:(unsigned int)serviceFlags error:(id *)error
{
  deviceCopy = device;
  if (qword_100B50AA0 != -1)
  {
    sub_10080EB10();
  }

  if (*(off_100B50A98 + 60))
  {
    identifier = [deviceCopy identifier];
    v12 = [(CBStackControllerBTStack *)self _btDeviceWithID:identifier createIfNeeded:(flags >> 5) & 1 error:error];
    v13 = v12;
    if (v12)
    {
      sub_100546F5C(v12, (flags & 4) != 0);
      if (qword_100B50950 != -1)
      {
        sub_10080ED10();
      }

      sub_10035BBE0(off_100B50948, v13, (flags & 4) != 0);
      if (flags)
      {
        sub_100546F14(v13, 1);
      }

      if ((flags & 8) != 0)
      {
        if (qword_100B50950 != -1)
        {
          sub_10080ED10();
        }

        sub_100338418(off_100B50948, v13, 1);
      }

      if ((flags & 0x10) != 0)
      {
        sub_100007E30(&__str, "");
        *(v13 + 1499) = 1;
        std::string::operator=((v13 + 1544), &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      if (qword_100B50AC0 != -1)
      {
        sub_10080EA40();
      }

      memset(&__str, 0, sizeof(__str));
      v14 = sub_10059234C(off_100B50AB8, v13, serviceFlags, &__str, 2);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (!v14)
      {
        v15 = 1;
LABEL_22:

        goto LABEL_23;
      }

      if (error)
      {
        CBErrorF();
        *error = v15 = 0;
        goto LABEL_22;
      }
    }

    v15 = 0;
    goto LABEL_22;
  }

  if (error)
  {
    CBErrorF();
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_23:

  return v15;
}

- (void)connectWithCBConnection:(id)connection completionHandler:(id)handler
{
  connectionCopy = connection;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_100042254;
  v44 = sub_1000425BC;
  v45 = 0;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100153E24;
  v37[3] = &unk_100AE2420;
  v39 = &v40;
  v7 = handlerCopy;
  v38 = v7;
  v32 = objc_retainBlock(v37);
  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    v30 = connectionCopy;
    LogPrintF_safe();
  }

  if (qword_100B50AA0 != -1)
  {
    sub_10009AF30();
  }

  if (*(off_100B50A98 + 60))
  {
    peerDevice = [connectionCopy peerDevice];
    identifier = [peerDevice identifier];

    if (identifier && (v10 = [connectionCopy serviceFlags]) != 0)
    {
      connectionFlags = [connectionCopy connectionFlags];
      v12 = v41;
      obj = v41[5];
      v13 = [(CBStackControllerBTStack *)self _btDeviceWithID:identifier createIfNeeded:(connectionFlags >> 5) & 1 error:&obj];
      objc_storeStrong(v12 + 5, obj);
      if (v13)
      {
        connectionFlags2 = [connectionCopy connectionFlags];
        v15 = connectionFlags2;
        v16 = (connectionFlags2 >> 2) & 1;
        sub_100546F5C(v13, (connectionFlags2 & 4) != 0);
        if (qword_100B50950 != -1)
        {
          sub_10080ED24();
        }

        sub_10035BBE0(off_100B50948, v13, v16);
        if (v15)
        {
          sub_100546F14(v13, 1);
        }

        if ((v15 & 8) != 0)
        {
          if (qword_100B50950 != -1)
          {
            sub_10080ED24();
          }

          sub_100338418(off_100B50948, v13, 1);
        }

        if ((v15 & 0x10) != 0)
        {
          sub_100007E30(&__str, "");
          v13[1499] = 1;
          std::string::operator=((v13 + 1544), &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        memset(&__str, 0, sizeof(__str));
        sub_100007E30(&__str, "Unknown");
        clientBundleID = [connectionCopy clientBundleID];
        v18 = [clientBundleID length];

        if (v18)
        {
          clientBundleID2 = [connectionCopy clientBundleID];
          sub_100007E30(&v34, [clientBundleID2 UTF8String]);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          __str = v34;
          *(&v34.__r_.__value_.__s + 23) = 0;
          v34.__r_.__value_.__s.__data_[0] = 0;
        }

        if ((v15 & 0x400) != 0 && sub_1000E2140(v13, 21))
        {
          sub_10054E1E8(v13, 0);
        }

        if (qword_100B50AC0 != -1)
        {
          sub_10080EA40();
        }

        v20 = sub_10059234C(off_100B50AB8, v13, v10, &__str, 2);
        if (v20 && v20 != -310000)
        {
          v29 = CBErrorF();
          v21 = v41[5];
          v41[5] = v29;
        }

        else
        {
          v21 = objc_alloc_init(CBStackConnectDeviceRequest);
          [(CBStackConnectDeviceRequest *)v21 setCompletionHandler:v7];
          [(CBStackConnectDeviceRequest *)v21 setConnection:connectionCopy];
          [(CBStackConnectDeviceRequest *)v21 setStartTicks:mach_absolute_time()];
          v22 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
          [(CBStackConnectDeviceRequest *)v21 setTimer:v22];
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_100153F18;
          handler[3] = &unk_100AE2550;
          handler[4] = v22;
          handler[5] = v21;
          handler[6] = self;
          dispatch_source_set_event_handler(v22, handler);
          [connectionCopy connectTimeoutSeconds];
          CUDispatchTimerSet();
          dispatch_activate(v22);
          connectDeviceRequests = self->_connectDeviceRequests;
          if (!connectDeviceRequests)
          {
            v24 = objc_alloc_init(NSMutableSet);
            v25 = self->_connectDeviceRequests;
            self->_connectDeviceRequests = v24;

            connectDeviceRequests = self->_connectDeviceRequests;
          }

          [(NSMutableSet *)connectDeviceRequests addObject:v21, v30];
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      v27 = CBErrorF();
      v28 = v41[5];
      v41[5] = v27;
    }
  }

  else
  {
    v26 = CBErrorF();
    identifier = v41[5];
    v41[5] = v26;
  }

  (v32[2])(v32);
  _Block_object_dispose(&v40, 8);
}

- (void)_connectDeviceCompleteRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    connection = [requestCopy connection];
    v8 = CUPrintNSError();
    mach_absolute_time();
    [requestCopy startTicks];
    v14 = v8;
    v15 = UpTicksToMilliseconds();
    v13 = connection;
    LogPrintF_safe();
  }

  timer = [requestCopy timer];
  v10 = requestCopy;
  if (timer)
  {
    dispatch_source_cancel(timer);
    [requestCopy setTimer:0];
    v10 = requestCopy;
  }

  completionHandler = [v10 completionHandler];
  v12 = completionHandler;
  if (completionHandler)
  {
    (*(completionHandler + 16))(completionHandler, errorCopy);
    [requestCopy setCompletionHandler:0];
  }

  [(NSMutableSet *)self->_connectDeviceRequests removeObject:requestCopy];
}

- (void)_connectDeviceUpdateRequests:(id)requests btResult:(int)result
{
  requestsCopy = requests;
  if (self->_addedController)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    [(NSMutableSet *)self->_connectDeviceRequests allObjects];
    obj = v16 = self;
    v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          connection = [v10 connection];
          peerDevice = [connection peerDevice];
          if ([peerDevice isEquivalentToCBDevice:requestsCopy compareFlags:8])
          {
            if (result)
            {
              v13 = CBErrorF();
              [(CBStackControllerBTStack *)v16 _connectDeviceCompleteRequest:v10 error:v13];
            }

            else
            {
              serviceFlags = [connection serviceFlags];
              supportedServices = [requestsCopy supportedServices];
              if ((supportedServices & serviceFlags & ~[requestsCopy connectedServices]) == 0)
              {
                [(CBStackControllerBTStack *)v16 _connectDeviceCompleteRequest:v10 error:0];
              }
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }
  }
}

- (id)diagnosticControl:(id)control error:(id *)error
{
  controlCopy = control;
  string = xpc_dictionary_get_string(controlCopy, "iStr");
  if (string)
  {
    v8 = string;
  }

  else
  {
    v8 = "";
  }

  if (!strcasecmp(v8, "aop-read-debug"))
  {
    v11 = CUXPCCreateCFObjectFromXPCObject();
    if (v11)
    {
      Int64Ranged = CFDictionaryGetInt64Ranged();
      if (qword_100B51098 != -1)
      {
        sub_10080ED60();
      }

      v43 = 0;
      v13 = sub_10048B078(qword_100B51090, Int64Ranged, &v43);
      v14 = v43;
      if (v13)
      {
        v10 = [NSString stringWithFormat:@"### AOPInterfaceManager::getInstance()->getReport() BTResult %d", v13];
      }

      else
      {
        v42 = 0;
        v16 = [NSJSONSerialization dataWithJSONObject:v14 options:0 error:&v42];
        v17 = v42;
        v18 = v17;
        if (v17)
        {
          v10 = [v17 description];
        }

        else
        {
          v10 = [[NSString alloc] initWithData:v16 encoding:4];
          if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }
        }
      }
    }

    else
    {
      v10 = @"### Convert params failed";
    }

    goto LABEL_65;
  }

  if (!strcasecmp(v8, "aop-write-debug"))
  {
    v15 = CUXPCCreateCFObjectFromXPCObject();
    if (v15)
    {
      if (qword_100B51098 != -1)
      {
        sub_10080ED60();
      }

      sub_10048A1BC(qword_100B51090, v15);
      v10 = &stru_100B0F9E0;
      goto LABEL_29;
    }

    goto LABEL_82;
  }

  if (!strcasecmp(v8, "coredump"))
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    if (qword_100B50AA0 != -1)
    {
      sub_10080EB10();
    }

    if (*(off_100B50A98 + 60))
    {
      v22 = off_100B50A98;
      sub_100007E30(&v41, "");
      sub_100007E30(&v39, "");
      sub_1005A24D4(v22, 3703, &v41, 0, 0, 0, &v39);
    }

    if (error)
    {
      CBErrorF();
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_65;
  }

  if (!strcasecmp(v8, "crash-FE"))
  {
    LOBYTE(v39) = 0;
    sub_1000216B4(&v39);
    sub_1000C52F4(4004);
LABEL_95:
    __break(1u);
    return result;
  }

  if (!strcasecmp(v8, "crash-RC"))
  {
    LOBYTE(v39) = 0;
    sub_1000216B4(&v39);
    sub_1001BAA68(4058, "Test Context");
  }

  if (!strcasecmp(v8, "crash-sim"))
  {
    _os_log_pack_size();
    __chkstk_darwin();
    __error();
    v20 = _os_log_pack_fill();
    *v20 = 136315138;
    *(v20 + 4) = v8;
    v21 = os_log_create("com.apple.bluetooth", "CBCrash");
    qword_100B55118 = os_log_pack_send_and_compose();
    os_fault_with_payload();

    goto LABEL_64;
  }

  if (!strcasecmp(v8, "crash"))
  {
    _os_log_pack_size();
    __chkstk_darwin();
    __error();
    v34 = _os_log_pack_fill();
    *v34 = 136315138;
    *(v34 + 4) = v8;
    os_log_create("com.apple.bluetooth", "CBCrash");
    qword_100B55118 = os_log_pack_send_and_compose();
    result = abort_with_payload();
    goto LABEL_95;
  }

  if (!strcasecmp(v8, "restart"))
  {
    v35 = sub_10000E92C();
    sub_100007E30(v38, "");
    sub_100693260(v35, 3602, v38, 1);
  }

  v9 = strcasecmp(v8, "HostAwakeVSC");
  if (!v9 || !strcasecmp(v8, "HostSleptVSC"))
  {
    v19 = sub_10000C7D0();
    (*(*v19 + 552))(v19, v9 == 0, 0);
LABEL_64:
    v10 = &stru_100B0F9E0;
    goto LABEL_65;
  }

  if (!stricmp_prefix())
  {
    v40 = 0;
    v39 = 0;
    if (stricmp_prefix())
    {
      RandomBytes();
    }

    else if (TextToHardwareAddress())
    {
      v10 = @"Bad Bluetooth address";
      goto LABEL_65;
    }

    v29 = sub_10000EE80();
    (*(*v29 + 144))(v29, v39 | (v40 << 32), 8206, @"Fake Accessory", @"Fake Version");
    goto LABEL_64;
  }

  if (!strcasecmp(v8, "gapa"))
  {
    v15 = CUXPCCreateCFObjectFromXPCObject();
    if (v15)
    {
      CFStringGetTypeID();
      v23 = CFDictionaryGetTypedValue();
      if (v23)
      {
        v24 = [(CBStackControllerBTStack *)self _btDeviceWithID:v23 error:0];
        if (v24)
        {
          v25 = CFDictionaryGetInt64Ranged();
          v26 = CFDictionaryGetInt64Ranged();
          sub_100540890(v24, v25, v26);
LABEL_77:
          v10 = &stru_100B0F9E0;
LABEL_78:

LABEL_29:
          goto LABEL_65;
        }

LABEL_87:
        v10 = @"### Device not found";
        goto LABEL_78;
      }

LABEL_86:
      v10 = @"### No device ID";
      goto LABEL_78;
    }

LABEL_82:
    v10 = @"### Convert params failed";
    goto LABEL_29;
  }

  if (!strcasecmp(v8, "mp-error"))
  {
    v15 = CUXPCCreateCFObjectFromXPCObject();
    if (v15)
    {
      CFStringGetTypeID();
      v23 = CFDictionaryGetTypedValue();
      if (v23)
      {
        v27 = [(CBStackControllerBTStack *)self _btDeviceWithID:v23 error:0];
        if (v27)
        {
          v28 = CFDictionaryGetInt64Ranged();
          if ((v28 - 8) < 0xFFFFFFF9)
          {
            v10 = @"### Invalid status";
            goto LABEL_78;
          }

          if (qword_100B50AB0 != -1)
          {
            sub_10080ED4C();
          }

          sub_10055B928(off_100B50AA8, v27, v28);
          goto LABEL_77;
        }

        goto LABEL_87;
      }

      goto LABEL_86;
    }

    goto LABEL_82;
  }

  if (!strcasecmp(v8, "mp-keys-reset"))
  {
    v15 = CUXPCCreateCFObjectFromXPCObject();
    if (v15)
    {
      CFStringGetTypeID();
      v23 = CFDictionaryGetTypedValue();
      if (v23)
      {
        v31 = [(CBStackControllerBTStack *)self _btDeviceWithID:v23 error:0];
        if (v31)
        {
          if (qword_100B50AB0 != -1)
          {
            sub_10080ED4C();
          }

          v32 = sub_100558DB8(off_100B50AA8, v31);
          if (!v32)
          {
            v10 = @"### Magic Paired Device not found";
            goto LABEL_78;
          }

          if (qword_100B50AB0 != -1)
          {
            sub_10080ED4C();
          }

          sub_10055ACB4(off_100B50AA8, v32);
          goto LABEL_77;
        }

        goto LABEL_87;
      }

      goto LABEL_86;
    }

    goto LABEL_82;
  }

  if (!stricmp_prefix())
  {
    v33 = sub_10000E92C();
    sub_100007E30(v36, "btutil manual stackshot");
    sub_100693FC4(v33, v36, 3172327085);
    if (v37 < 0)
    {
      operator delete(v36[0]);
    }

    goto LABEL_64;
  }

  v10 = NSPrintF_safe();
LABEL_65:

  return v10;
}

- (BOOL)disconnectDevice:(id)device serviceFlags:(unsigned int)flags error:(id *)error
{
  v6 = *&flags;
  deviceCopy = device;
  if (qword_100B50AA0 != -1)
  {
    sub_10080EB10();
  }

  if (*(off_100B50A98 + 60))
  {
    identifier = [deviceCopy identifier];
    v10 = identifier;
    if (identifier)
    {
      if ([identifier caseInsensitiveCompare:@"all"])
      {
        v11 = [(CBStackControllerBTStack *)self _disconnectDevice:deviceCopy serviceFlags:v6 error:error];
      }

      else
      {
        [(CBStackControllerBTStack *)self _disconnectAllDevicesWithServiceFlags:v6];
        v11 = 1;
      }
    }

    else if (error)
    {
      CBErrorF();
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else if (error)
  {
    CBErrorF();
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_disconnectAllDevicesWithServiceFlags:(unsigned int)flags
{
  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080ED74();
  }

  __p = 0;
  v23 = 0;
  v24 = 0;
  if (qword_100B508A0 != -1)
  {
    sub_10080EA68();
  }

  v4 = sub_1000AD9D8(off_100B50898, &__p);
  if (v4)
  {
    v5 = v4 == -310000;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    v16 = CUPrintErrorCode();
    LogPrintF_safe();
  }

  v6 = __p;
  v7 = v23;
  if (__p != v23)
  {
    do
    {
      v8 = *v6;
      if (qword_100B50AC0 != -1)
      {
        sub_10080EA40();
      }

      sub_100593A4C(off_100B50AB8, v8, flags);
      if (dword_100B511E0 < 31 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000E5A58(v8, v26);
        v9 = CUPrintErrorCode();
        LogPrintF_safe();

        if (v27 < 0)
        {
          operator delete(v26[0]);
        }
      }

      ++v6;
    }

    while (v6 != v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  if (qword_100B508B0 != -1)
  {
    sub_10080ED90();
  }

  v10 = sub_100029630(off_100B508A8);
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v11)
  {
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        if (qword_100B508B0 != -1)
        {
          sub_10080ED90();
        }

        v15 = off_100B508A8;
        sub_10004DFB4(v26, v14);
        sub_10074CD90(v15, v26, 2u);
        if (dword_100B511E0 < 31 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
        {
          v17 = CUPrintErrorCode();
          LogPrintF_safe();
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v11);
  }

  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }
}

- (BOOL)_disconnectDevice:(id)device serviceFlags:(unsigned int)flags error:(id *)error
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    v10 = [(CBStackControllerBTStack *)self _btDeviceWithID:identifier error:0];
    v11 = v10;
    if (v10 && sub_1000C0348(v10))
    {
      if (qword_100B50AC0 != -1)
      {
        sub_10080EC68();
      }

      v12 = sub_100593A4C(off_100B50AB8, v11, flags);
      if (v12)
      {
        v13 = v12 + 310000;
      }

      else
      {
        v13 = 0;
      }

      if (dword_100B511E0 < 31 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        CUPrintErrorCode();
        v29 = v28 = deviceCopy;
        LogPrintF_safe();
      }

      v14 = 1;
    }

    else
    {
      v14 = 0;
      v13 = 1;
    }

    v15 = [(CBStackControllerBTStack *)self _btUUIDWithID:identifier error:0, v28, v29];
    if (!v15)
    {
      goto LABEL_27;
    }

    if (qword_100B508B0 != -1)
    {
      sub_10080EC54();
    }

    v16 = off_100B508A8;
    sub_10004DFB4(v32, v15);
    if (sub_100050290(v16, v32))
    {
      if (qword_100B508B0 != -1)
      {
        sub_10080ED90();
      }

      v17 = off_100B508A8;
      sub_10004DFB4(v32, v15);
      v18 = sub_10074CD90(v17, v32, 2u);
      if (v18)
      {
        v19 = v18 + 310000;
      }

      else
      {
        v19 = 0;
      }

      if (dword_100B511E0 < 31 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        v30 = CUPrintErrorCode();
        LogPrintF_safe();
      }

      v21 = 1;
    }

    else
    {
LABEL_27:
      if (v11)
      {
        v20 = v14;
      }

      else
      {
        v20 = 1;
      }

      if ((v20 & 1) == 0)
      {
        v32[0] = 0;
        sub_1000216B4(v32);
        v22 = sub_10023BD60(v11 + 128);
        sub_100022214(v32);
        if (v22)
        {
          v23 = v22 + 330000;
        }

        else
        {
          v23 = 0;
        }

        if (dword_100B511E0 < 31 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
        {
          v31 = CUPrintErrorCode();
          LogPrintF_safe();
        }

        sub_10002249C(v32);
        if (v23)
        {
          goto LABEL_51;
        }

        goto LABEL_55;
      }

      if ((v14 & 1) == 0)
      {
LABEL_51:
        v25 = CBErrorF();
        LOBYTE(v23) = v25 != 0;
        if (error && v25)
        {
          v25 = v25;
          *error = v25;
          LOBYTE(v23) = 1;
        }

        goto LABEL_56;
      }

      v21 = 0;
      v19 = 1;
    }

    if (v13)
    {
      v24 = v14;
    }

    else
    {
      v24 = 0;
    }

    if (v24)
    {
      goto LABEL_51;
    }

    if (!v19)
    {
      v21 = 0;
    }

    if (v21 == 1)
    {
      goto LABEL_51;
    }

    LOBYTE(v23) = 0;
LABEL_55:
    v25 = 0;
LABEL_56:

    v26 = v23 ^ 1;
    goto LABEL_57;
  }

  if (error)
  {
    CBErrorF();
    *error = v26 = 0;
  }

  else
  {
    v26 = 0;
  }

LABEL_57:

  return v26;
}

- (BOOL)deleteDevice:(id)device error:(id *)error
{
  deviceCopy = device;
  if (qword_100B50AA0 != -1)
  {
    sub_10080EB10();
  }

  if (*(off_100B50A98 + 60))
  {
    identifier = [deviceCopy identifier];
    v8 = identifier;
    if (identifier)
    {
      if ([identifier caseInsensitiveCompare:@"all"])
      {
        v9 = [(CBStackControllerBTStack *)self _deleteDevice:deviceCopy error:error];
      }

      else
      {
        [(CBStackControllerBTStack *)self _deleteAllDevices];
        v9 = 1;
      }
    }

    else if (error)
    {
      CBErrorF();
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else if (error)
  {
    CBErrorF();
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_deleteAllDevices
{
  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080EDB8();
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  if (qword_100B508A0 != -1)
  {
    sub_10080EA68();
  }

  v2 = sub_10009E064(off_100B50898, &v25);
  if (v2)
  {
    v3 = v2 == -310000;
  }

  else
  {
    v3 = 1;
  }

  if (!v3 && dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    v13 = CUPrintErrorCode();
    LogPrintF_safe();
  }

  v4 = v25;
  v5 = v26;
  if (v25 != v26)
  {
    do
    {
      v6 = *v4;
      if (qword_100B50F88 != -1)
      {
        sub_10080EDD4();
      }

      sub_1006E0DBC(off_100B50F80, v6);
      if (dword_100B511E0 < 31 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000E5A58(v6, &__p);
        v7 = CUPrintErrorCode();
        LogPrintF_safe();

        if (SHIBYTE(v19) < 0)
        {
          operator delete(__p);
        }
      }

      ++v4;
    }

    while (v4 != v5);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  if (qword_100B508C0 != -1)
  {
    sub_10080EDFC();
  }

  obj = sub_10009DA04(off_100B508B8);
  v8 = [obj countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v8)
  {
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        __p = 0;
        p_p = &__p;
        v19 = 0x2020000000;
        v20 = 0;
        if (qword_100B508D0 != -1)
        {
          sub_10080ECE8();
        }

        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100155F44;
        v16[3] = &unk_100ADF8D8;
        v16[4] = &__p;
        if (sub_1000C320C(off_100B508C8, v11, v16) && (p_p[3] & 1) == 0)
        {
          if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }

          v12 = sub_100007EE8();
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_100155FD4;
          v15[3] = &unk_100ADF820;
          v15[4] = v11;
          sub_10000CA94(v12, v15);
        }

        _Block_object_dispose(&__p, 8);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v8);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }
}

- (BOOL)_deleteDevice:(id)device error:(id *)error
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    v8 = [(CBStackControllerBTStack *)self _btDeviceWithID:identifier error:0];
    if (!v8)
    {
      goto LABEL_14;
    }

    if (qword_100B50F88 != -1)
    {
      sub_10080EE38();
    }

    if (sub_1006E0D68(off_100B50F80, v8))
    {
      if (qword_100B50F88 != -1)
      {
        sub_10080EE38();
      }

      v9 = sub_1006E0DBC(off_100B50F80, v8);
      if (v9)
      {
        v10 = v9 + 310000;
      }

      else
      {
        v10 = 0;
      }

      if (dword_100B511E0 < 31 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        CUPrintErrorCode();
        v20 = v19 = deviceCopy;
        LogPrintF_safe();
      }

      v11 = 1;
    }

    else
    {
LABEL_14:
      v11 = 0;
      v10 = 1;
    }

    v12 = [(CBStackControllerBTStack *)self _btUUIDWithID:identifier error:0, v19, v20];
    if (!v12)
    {
      goto LABEL_24;
    }

    if (qword_100B508C0 != -1)
    {
      sub_10080EE24();
    }

    if (sub_10004EE74(off_100B508B8, v12))
    {
      if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      v13 = sub_100007EE8();
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10015634C;
      v21[3] = &unk_100ADF820;
      v21[4] = v12;
      sub_10000CA94(v13, v21);
    }

    else
    {
LABEL_24:
      if ((v11 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    if (v10)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    if (v14 != 1)
    {
      v16 = 0;
      v15 = 0;
LABEL_36:
      v17 = !v16;

      goto LABEL_37;
    }

LABEL_32:
    v15 = CBErrorF();
    v16 = v15 != 0;
    if (error && v15)
    {
      v15 = v15;
      *error = v15;
      v16 = 1;
    }

    goto LABEL_36;
  }

  if (error)
  {
    CBErrorF();
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_37:

  return v17;
}

- (id)getDevicesWithFlags:(unsigned int)flags error:(id *)error
{
  flagsCopy = flags;
  v56 = objc_alloc_init(NSMutableArray);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  if (qword_100B508C0 != -1)
  {
    sub_10080EE24();
  }

  v4 = sub_10009DA04(off_100B508B8);
  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v65 objects:v84 count:16];
  if (v5)
  {
    v59 = *v66;
    do
    {
      v6 = 0;
      do
      {
        if (*v66 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v65 + 1) + 8 * v6);
        v80 = 0;
        v81 = &v80;
        v82 = 0x2020000000;
        v83 = 0;
        __p.n128_u64[0] = 0;
        __p.n128_u64[1] = &__p;
        v76 = 0x3032000000;
        v77 = sub_100042254;
        v78 = sub_1000425BC;
        v79 = 0;
        if (qword_100B508D0 != -1)
        {
          sub_10080ECE8();
        }

        v64[0] = _NSConcreteStackBlock;
        v64[1] = 3221225472;
        v64[2] = sub_100156F0C;
        v64[3] = &unk_100AE2578;
        v64[4] = &v80;
        v64[5] = &__p;
        if (sub_1000C320C(off_100B508C8, v7, v64))
        {
          v8 = objc_alloc_init(CBDevice);
          uUIDString = [v7 UUIDString];
          [v8 setIdentifier:uUIDString];

          [v8 setName:*(__p.n128_u64[1] + 40)];
          v10 = v81[3];
          LOBYTE(v69) = BYTE5(v10);
          BYTE1(v69) = BYTE4(v10);
          BYTE2(v69) = BYTE3(v10);
          BYTE3(v69) = BYTE2(v10);
          BYTE4(v69) = BYTE1(v10);
          BYTE5(v69) = v10;
          v11 = [[NSData alloc] initWithBytes:&v69 length:6];
          [v8 setBtAddressData:v11];

          logPrivateData = self->_logPrivateData;
          internalFlags = [v8 internalFlags];
          if (logPrivateData)
          {
            v14 = 0x20000;
          }

          else
          {
            v14 = 0;
          }

          [v8 setInternalFlags:v14 | internalFlags];
          v15 = flagsCopy;
          if ((flagsCopy & 2) != 0)
          {
            if (qword_100B508D0 != -1)
            {
              sub_10080ECE8();
            }

            v16 = off_100B508C8;
            v17 = sub_1000AFA48(off_100B508C8, v7);
            if ([v17 length])
            {
              v18 = sub_1000DFED0(v16, v17);
              if (v18)
              {
                if (sub_1007908B4(v16, v18) == 2)
                {
                  uUIDString2 = [v18 UUIDString];
                  [v8 setFindMyCaseIdentifier:uUIDString2];
                }

                v20 = sub_100790774(v16, v18);
                v21 = v20;
                if (v20)
                {
                  uUIDString3 = [v20 UUIDString];
                  [v8 setFindMyGroupIdentifier:uUIDString3];
                }
              }
            }

            v15 = flagsCopy;
          }

          if (v15)
          {
            v74 = 0;
            memset(v73, 0, sizeof(v73));
            v71 = 0u;
            v72 = 0u;
            v70 = 0u;
            if (qword_100B508C0 != -1)
            {
              sub_10080EDFC();
            }

            sub_1007C5A1C(off_100B508B8, v7, &v70);
            v23 = v74;
            if ((v74 & 0x40) != 0)
            {
              v24 = [[NSData alloc] initWithBytes:&v73[8] length:16];
              [v8 setIrkData:v24];

              v23 = v74;
            }

            if (v23)
            {
              v27 = [NSData alloc];
              v26 = [v27 initWithBytes:&v70 length:v71];
              [v8 setLtkData:v26];
LABEL_35:
            }

            else if ((v23 & 8) != 0)
            {
              v25 = [NSData alloc];
              v26 = [v25 initWithBytes:&v71 + 12 length:BYTE12(v72)];
              [v8 setLtkData:v26];
              goto LABEL_35;
            }
          }

          [v56 addObject:v8];
        }

        _Block_object_dispose(&__p, 8);

        _Block_object_dispose(&v80, 8);
        v6 = v6 + 1;
      }

      while (v5 != v6);
      v4 = obj;
      v5 = [obj countByEnumeratingWithState:&v65 objects:v84 count:16];
    }

    while (v5);
  }

  v70 = 0uLL;
  *&v71 = 0;
  if (qword_100B508A0 != -1)
  {
    sub_10080EAA4();
  }

  v28 = sub_10009E064(off_100B50898, &v70);
  if (v28 && v28 != -310000 && dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    v54 = CUPrintErrorCode();
    LogPrintF_safe();
  }

  v29 = v70;
  if (v70 != *(&v70 + 1))
  {
    v30 = *(&v70 + 1);
    do
    {
      v31 = *v29;
      v62 = *(*v29 + 128);
      v63 = *(v31 + 132);
      v80 = 0;
      v81 = 0;
      if (qword_100B508D0 != -1)
      {
        sub_10080ECE8();
      }

      sub_1000498D4(off_100B508C8, (v62 << 40) | (BYTE1(v62) << 32) | (BYTE2(v62) << 24) | (HIBYTE(v62) << 16) | (v63 << 8) | HIBYTE(v63), 1u, 1u, 0, 0, &v80);
      v32 = sub_10004DF60(&v80);
      if (v32)
      {
        v60 = 0;
        v61 = 0;
        v33 = sub_1000C2364(v31, &v61 + 1, &v61, &v60 + 1, &v60);
        v34 = objc_alloc_init(CBDevice);
        [v34 setColorInfo:sub_1000C2398(v31)];
        uUIDString4 = [v32 UUIDString];
        [v34 setIdentifier:uUIDString4];

        sub_1000C23E0(v31, &__p);
        if (v76 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.n128_u64[0];
        }

        v37 = [NSString stringWithUTF8String:p_p, v54];
        [v34 setName:v37];

        if (SHIBYTE(v76) < 0)
        {
          operator delete(__p.n128_u64[0]);
        }

        if (v33)
        {
          v38 = HIDWORD(v60);
        }

        else
        {
          v38 = 0;
        }

        [v34 setProductID:v38];
        v39 = [[NSData alloc] initWithBytes:&v62 length:6];
        [v34 setBtAddressData:v39];

        LODWORD(v39) = self->_logPrivateData;
        internalFlags2 = [v34 internalFlags];
        if (v39)
        {
          v41 = 0x20000;
        }

        else
        {
          v41 = 0;
        }

        [v34 setInternalFlags:v41 | internalFlags2];
        if ((flagsCopy & 2) != 0)
        {
          __p = 0uLL;
          v76 = 0;
          sub_1000DFC04(v31, &__p);
          if (0xAAAAAAAAAAAAAAABLL * ((__p.n128_u64[1] - __p.n128_u64[0]) >> 3) < 4)
          {
            v43 = 0;
          }

          else
          {
            v42 = (__p.n128_u64[0] + 72);
            if (*(__p.n128_u64[0] + 95) < 0)
            {
              v42 = *v42;
            }

            v43 = [NSString stringWithUTF8String:v42];
          }

          if ([v43 length])
          {
            if (qword_100B508D0 != -1)
            {
              sub_10080ECE8();
            }

            v44 = off_100B508C8;
            v45 = sub_1000DFED0(off_100B508C8, v43);
            if (v45)
            {
              if (sub_1007908B4(v44, v45) == 2)
              {
                uUIDString5 = [v45 UUIDString];
                [v34 setFindMyCaseIdentifier:uUIDString5];
              }

              v47 = sub_100790774(v44, v45);
              v48 = v47;
              if (v47)
              {
                uUIDString6 = [v47 UUIDString];
                [v34 setFindMyGroupIdentifier:uUIDString6];
              }
            }
          }

          v69 = &__p;
          sub_1000161FC(&v69);
        }

        if (flagsCopy)
        {
          __p = 0uLL;
          LODWORD(v76) = 0;
          sub_1006D1B74(&__p);
          if (qword_100B512E8 != -1)
          {
            sub_10080EE4C();
          }

          if (!sub_1006E7E2C(off_100B512E0, v31, &__p))
          {
            v50 = [NSData alloc];
            v51 = nullsub_21(&__p);
            v52 = [v50 initWithBytes:v51 length:sub_1006D1C18()];
            [v34 setLinkKeyData:v52];
          }

          nullsub_21(&__p);
        }

        [v56 addObject:v34];
      }

      ++v29;
    }

    while (v29 != v30);
  }

  if (v70)
  {
    *(&v70 + 1) = v70;
    operator delete(v70);
  }

  return v56;
}

- (void)localDeviceEvent:(int)event
{
  if (!self->_addedController)
  {
    return;
  }

  if (event <= 5)
  {
    if (event)
    {
      if (event != 2)
      {
        return;
      }

      if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080EF94(self);
      }

      v4 = objc_retainBlock(self->_discoverableStateChangedHandler);
      if (!v4)
      {
        goto LABEL_16;
      }

LABEL_15:
      v4[2]();
LABEL_16:

      return;
    }

    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080EECC(self);
    }

    v6 = objc_retainBlock(self->_controllerDataChangedHandler);
    if (v6)
    {
      v6[2]();
    }

    v7 = objc_retainBlock(self->_discoverableStateChangedHandler);
    if (v7)
    {
      v7[2]();
    }

    v8 = objc_retainBlock(self->_inquiryStateChangedHandler);
    if (v8)
    {
      v8[2]();
    }

    v5 = objc_retainBlock(self->_powerChangedHandler);
    if (v5)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if ((event - 6) < 2)
    {
      if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080EF30(self);
      }

      v4 = objc_retainBlock(self->_inquiryStateChangedHandler);
      if (!v4)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (event != 10)
    {
      return;
    }

    if (qword_100B50AA0 != -1)
    {
      sub_10080EB10();
    }

    sub_10006DBF8(off_100B50A98);
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080EE74();
    }

    v5 = objc_retainBlock(self->_powerChangedHandler);
    if (v5)
    {
LABEL_38:
      v5[2]();
    }
  }

  notify_set_state(self->_powerStateNotifyToken, [(CBStackControllerBTStack *)self powerState]);

  notify_post("com.apple.bluetooth.state");
}

- (BOOL)modifyDevice:(id)device error:(id *)error
{
  deviceCopy = device;
  v7 = objc_alloc_init(CBDeviceSettings);
  [v7 setDoubleTapActionLeft:{objc_msgSend(deviceCopy, "doubleTapActionLeft")}];
  [v7 setDoubleTapActionRight:{objc_msgSend(deviceCopy, "doubleTapActionRight")}];
  [v7 setMicrophoneMode:{objc_msgSend(deviceCopy, "microphoneMode")}];
  [v7 setPlacementMode:{objc_msgSend(deviceCopy, "placementMode")}];
  [v7 setSmartRoutingMode:{objc_msgSend(deviceCopy, "smartRoutingMode")}];
  LOBYTE(error) = [(CBStackControllerBTStack *)self modifyDevice:deviceCopy settings:v7 error:error];

  return error;
}

- (void)modifyDevice:(id)device connectionPriorityDevices:(id)devices timeoutSeconds:(double)seconds completionHandler:(id)handler
{
  deviceCopy = device;
  devicesCopy = devices;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_100042254;
  v53 = sub_1000425BC;
  v54 = 0;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1001579C8;
  v46[3] = &unk_100AE2420;
  v48 = &v49;
  v9 = handlerCopy;
  v47 = v9;
  v35 = objc_retainBlock(v46);
  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    CUPrintNSObjectOneLine();
    v33 = v32 = deviceCopy;
    LogPrintF_safe();
  }

  identifier = [deviceCopy identifier];
  v11 = (v50 + 5);
  obj = v50[5];
  v12 = [(CBStackControllerBTStack *)self _btDeviceWithID:identifier error:&obj];
  objc_storeStrong(v11, obj);

  if (v12)
  {
    v13 = [devicesCopy count];
    v14 = v13;
    if (v13 >= 0x100)
    {
      v30 = CBErrorF();
      v15 = v50[5];
      v50[5] = v30;
    }

    else
    {
      v15 = objc_alloc_init(NSMutableData);
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v16 = devicesCopy;
      v17 = [(CBStackModifyDeviceRequest *)v16 countByEnumeratingWithState:&v41 objects:v55 count:16];
      if (v17)
      {
        v18 = *v42;
        while (2)
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v42 != v18)
            {
              objc_enumerationMutation(v16);
            }

            if (![*(*(&v41 + 1) + 8 * i) UTF8String] || (v40 = 0, v39 = 0, TextToHardwareAddress()))
            {
              v28 = CBErrorF();
              v29 = v50[5];
              v50[5] = v28;

              goto LABEL_23;
            }

            [v15 appendBytes:&v39 length:6];
          }

          v17 = [(CBStackModifyDeviceRequest *)v16 countByEnumeratingWithState:&v41 objects:v55 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      if (qword_100B50950 != -1)
      {
        sub_10080ED24();
      }

      v20 = off_100B50948;
      v21 = v15;
      v22 = sub_100335434(v20, v12, 1, [v15 bytes], v14);
      if (v22 && v22 != -310000)
      {
        v31 = CBErrorF();
        v16 = v50[5];
        v50[5] = v31;
      }

      else
      {
        v16 = objc_alloc_init(CBStackModifyDeviceRequest);
        [(CBStackModifyDeviceRequest *)v16 setCompletionHandler:v9];
        [(CBStackModifyDeviceRequest *)v16 setDevice:deviceCopy];
        v23 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
        [(CBStackModifyDeviceRequest *)v16 setTimer:v23];
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_100157ABC;
        handler[3] = &unk_100AE2550;
        handler[4] = v23;
        handler[5] = v16;
        handler[6] = self;
        dispatch_source_set_event_handler(v23, handler);
        CUDispatchTimerSet();
        dispatch_activate(v23);
        modifyDeviceRequests = self->_modifyDeviceRequests;
        if (!modifyDeviceRequests)
        {
          v25 = objc_alloc_init(NSMutableSet);
          v27 = self->_modifyDeviceRequests;
          p_modifyDeviceRequests = &self->_modifyDeviceRequests;
          *p_modifyDeviceRequests = v25;

          modifyDeviceRequests = *p_modifyDeviceRequests;
        }

        [(NSMutableSet *)modifyDeviceRequests addObject:v16];
      }

LABEL_23:
    }
  }

  (v35[2])(v35);

  _Block_object_dispose(&v49, 8);
}

- (BOOL)modifyDevice:(id)device peerSourceDevice:(id)sourceDevice peerSourceState:(char)state requestFlags:(unsigned int)flags error:(id *)error
{
  flagsCopy = flags;
  stateCopy = state;
  deviceCopy = device;
  sourceDeviceCopy = sourceDevice;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [deviceCopy identifier];
  v15 = [(CBStackControllerBTStack *)self _btDeviceWithID:identifier error:error];

  if (!v15)
  {
    v19 = 0;
    goto LABEL_9;
  }

  identifier2 = [sourceDeviceCopy identifier];
  v17 = identifier2;
  if (identifier2)
  {
    v23 = 0;
    v22 = 0;
    [identifier2 UTF8String];
    if (!TextToHardwareAddress())
    {
      if (qword_100B50950 != -1)
      {
        sub_10080ED24();
      }

      v18 = sub_100337B04(off_100B50948, v15, &v22, stateCopy, (flagsCopy & 0x10) != 0);
      v19 = 1;
      if (!v18 || v18 == -310000)
      {
        goto LABEL_8;
      }

      if (error)
      {
        v21 = CBErrorF();
        goto LABEL_17;
      }

LABEL_18:
      v19 = 0;
      goto LABEL_8;
    }

    if (!error)
    {
      goto LABEL_18;
    }
  }

  else if (!error)
  {
    goto LABEL_18;
  }

  v21 = CBErrorF();
LABEL_17:
  v19 = 0;
  *error = v21;
LABEL_8:

LABEL_9:
  return v19;
}

- (BOOL)modifyDevice:(id)device settings:(id)settings error:(id *)error
{
  deviceCopy = device;
  settingsCopy = settings;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    logPrivateData = self->_logPrivateData;
    internalFlags = [deviceCopy internalFlags];
    if (logPrivateData)
    {
      v13 = 0x20000;
    }

    else
    {
      v13 = 0;
    }

    [deviceCopy setInternalFlags:v13 | internalFlags];
    idsDeviceID = [deviceCopy idsDeviceID];
    if (idsDeviceID)
    {
      idsDeviceID2 = [deviceCopy idsDeviceID];
      v16 = [idsDeviceID2 length];

      if (v16)
      {
        v40 = 0;
        v41 = &v40;
        v42 = 0x3032000000;
        v43 = sub_100042254;
        v44 = sub_1000425BC;
        v45 = 0;
        if (qword_100B508D0 != -1)
        {
          sub_10080ECE8();
        }

        v17 = off_100B508C8;
        idsDeviceID3 = [deviceCopy idsDeviceID];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_100158248;
        v36[3] = &unk_100AE25A0;
        v36[4] = self;
        v37 = deviceCopy;
        v38 = settingsCopy;
        v39 = &v40;
        v19 = sub_10078E458(v17, idsDeviceID3, v36);

        if (v19)
        {
          v20 = v41[5];
          if (!v20)
          {
            v21 = 1;
LABEL_12:

LABEL_23:
            _Block_object_dispose(&v40, 8);

            goto LABEL_24;
          }

          if (error)
          {
            v27 = v20;
            goto LABEL_31;
          }
        }

        else if (error)
        {
          v27 = CBErrorF();
LABEL_31:
          v21 = 0;
          *error = v27;
          goto LABEL_12;
        }

        v21 = 0;
        goto LABEL_12;
      }
    }

    v22 = [(CBStackControllerBTStack *)self _btDeviceWithID:identifier error:0];
    if (v22)
    {
      v21 = [(CBStackControllerBTStack *)self modifyDevice:deviceCopy btDevice:v22 settings:settingsCopy error:error];
      goto LABEL_24;
    }

    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = sub_100042254;
    v44 = sub_1000425BC;
    v45 = 0;
    obj = 0;
    v23 = [(CBStackControllerBTStack *)self _btUUIDWithID:identifier error:&obj];
    objc_storeStrong(&v45, obj);
    if (!v23)
    {
      if (error)
      {
        v28 = v41[5];
        if (v28)
        {
          v21 = 0;
          *error = v28;
          goto LABEL_22;
        }

        v30 = CBErrorF();
        *error = v30;
      }

      v21 = 0;
      goto LABEL_22;
    }

    if (qword_100B508D0 != -1)
    {
      sub_10080ECE8();
    }

    v24 = off_100B508C8;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10015829C;
    v31[3] = &unk_100AE25A0;
    v31[4] = self;
    v32 = deviceCopy;
    v33 = settingsCopy;
    v34 = &v40;
    if (sub_1000C320C(v24, v23, v31))
    {
      v25 = v41[5];
      if (!v25)
      {
        v21 = 1;
LABEL_21:

LABEL_22:
        goto LABEL_23;
      }

      if (error)
      {
        v29 = v25;
        goto LABEL_41;
      }
    }

    else if (error)
    {
      v29 = CBErrorF();
LABEL_41:
      v21 = 0;
      *error = v29;
      goto LABEL_21;
    }

    v21 = 0;
    goto LABEL_21;
  }

  if (error)
  {
    CBErrorF();
    *error = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

LABEL_24:

  return v21;
}

- (BOOL)modifyDevice:(id)device btDevice:(void *)btDevice settings:(id)settings error:(id *)error
{
  deviceCopy = device;
  settingsCopy = settings;
  v150 = deviceCopy;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [deviceCopy identifier];
  if (!identifier)
  {
    if (error)
    {
      goto LABEL_360;
    }

    goto LABEL_361;
  }

  if (qword_100B508E0 != -1)
  {
    sub_10080EC2C();
  }

  v151 = off_100B508D8;
  aclLinkState = [settingsCopy aclLinkState];
  if (aclLinkState)
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      if (aclLinkState > 3)
      {
        v13 = "?";
      }

      else
      {
        v13 = off_100AE2C20[aclLinkState - 1];
      }

      v105 = identifier;
      v121 = v13;
      LogPrintF_safe();
    }

    sub_1005501A8(btDevice, [settingsCopy aclLinkState], 0);
  }

  aclPriority = [settingsCopy aclPriority];
  if (aclPriority)
  {
    v15 = sub_10000C7D0();
    if (((*(*v15 + 3240))(v15) & 1) == 0)
    {
      if (error)
      {
        goto LABEL_360;
      }

      goto LABEL_361;
    }

    if (dword_100B511E0 > 30 || dword_100B511E0 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_31;
    }

    if (aclPriority > 0x31u)
    {
      if (aclPriority == 50)
      {
        v16 = "Medium";
        goto LABEL_30;
      }

      if (aclPriority == 80)
      {
        v16 = "High";
        goto LABEL_30;
      }
    }

    else
    {
      if (aclPriority == 1)
      {
        v16 = "Default";
        goto LABEL_30;
      }

      if (aclPriority == 20)
      {
        v16 = "Low";
LABEL_30:
        v105 = identifier;
        v121 = v16;
        LogPrintF_safe();
LABEL_31:
        v17 = sub_10000C7D0();
        v18 = *(btDevice + 66);
        v19 = *(btDevice + 32);
        v20 = sub_1000DEB14(btDevice);
        v21 = (*(*v17 + 56))(v17, (v19 | (v18 << 32)) & 0xFFFFFFFFFFFFLL, v20, 32, aclPriority == 80, aclPriority == 80, 1, 1, v105, v121);
        if (v21 && v21 != -310000)
        {
          if (error)
          {
            goto LABEL_360;
          }

          goto LABEL_361;
        }

        goto LABEL_33;
      }
    }

    v16 = "?";
    goto LABEL_30;
  }

LABEL_33:
  adaptiveVolumeConfig = [settingsCopy adaptiveVolumeConfig];
  if (adaptiveVolumeConfig)
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      [v150 name];
      v121 = identifier;
      v105 = v137 = adaptiveVolumeConfig;
      LogPrintF_safe();
    }

    if (qword_100B50950 != -1)
    {
      sub_10080ED10();
    }

    v23 = sub_100331844(off_100B50948, btDevice, 38, adaptiveVolumeConfig, 2u);
    if (v23)
    {
      if (v23 != -310000)
      {
        if (error)
        {
          goto LABEL_360;
        }

        goto LABEL_361;
      }
    }
  }

  allowsAutoRoute = [settingsCopy allowsAutoRoute];
  if (allowsAutoRoute)
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v25 = "?";
      if (allowsAutoRoute == 1)
      {
        v25 = "Yes";
      }

      if (allowsAutoRoute == 2)
      {
        v25 = "No";
      }

      v106 = identifier;
      v122 = v25;
      LogPrintF_safe();
    }

    if (qword_100B50950 != -1)
    {
      sub_10080ED10();
    }

    v26 = sub_10035B9A8(off_100B50948, btDevice, allowsAutoRoute == 1);
    if (v26)
    {
      if (v26 != -310000)
      {
        if (error)
        {
          goto LABEL_360;
        }

        goto LABEL_361;
      }
    }
  }

  audioRouteHidden = [settingsCopy audioRouteHidden];
  if (audioRouteHidden)
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v28 = "?";
      if (audioRouteHidden == 1)
      {
        v28 = "Yes";
      }

      if (audioRouteHidden == 2)
      {
        v28 = "No";
      }

      v107 = identifier;
      v123 = v28;
      LogPrintF_safe();
    }

    if (qword_100B50950 != -1)
    {
      sub_10080ED10();
    }

    v29 = sub_10035BBE0(off_100B50948, btDevice, audioRouteHidden == 1);
    if (v29)
    {
      if (v29 != -310000)
      {
        if (error)
        {
          goto LABEL_360;
        }

        goto LABEL_361;
      }
    }
  }

  endCallConfig = [settingsCopy endCallConfig];
  muteControlConfig = [settingsCopy muteControlConfig];
  if (endCallConfig | muteControlConfig)
  {
    v32 = sub_1000E0734(btDevice) & 0xF0FF | ((endCallConfig & 0xF) << 8) | ((muteControlConfig & 0xF) << 16);
    if (qword_100B50950 != -1)
    {
      sub_10080ED10();
    }

    v33 = sub_100331844(off_100B50948, btDevice, 36, v32, 2u);
    if (v33)
    {
      if (v33 != -310000)
      {
        if (error)
        {
          goto LABEL_360;
        }

        goto LABEL_361;
      }
    }
  }

  conversationDetectConfig = [settingsCopy conversationDetectConfig];
  if (conversationDetectConfig)
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      [v150 name];
      v124 = identifier;
      v108 = v138 = conversationDetectConfig;
      LogPrintF_safe();
    }

    if (qword_100B50950 != -1)
    {
      sub_10080ED10();
    }

    v35 = sub_100331844(off_100B50948, btDevice, 40, conversationDetectConfig, 2u);
    if (v35)
    {
      if (v35 != -310000)
      {
        if (error)
        {
          goto LABEL_360;
        }

        goto LABEL_361;
      }
    }
  }

  clickHoldModeLeft = [settingsCopy clickHoldModeLeft];
  clickHoldModeRight = [settingsCopy clickHoldModeRight];
  if (clickHoldModeLeft | clickHoldModeRight)
  {
    v38 = sub_1000E06EC(btDevice);
    if (clickHoldModeLeft)
    {
      v39 = clickHoldModeLeft;
    }

    else
    {
      v39 = HIBYTE(v38);
    }

    if (!clickHoldModeRight)
    {
      LOBYTE(clickHoldModeRight) = v38;
    }

    if (dword_100B511E0 < 31 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      if (v39 > 7u)
      {
        v40 = @"?";
      }

      else
      {
        v40 = *(&off_100AE2C38 + v39);
      }

      if (clickHoldModeRight > 7u)
      {
        v41 = @"?";
      }

      else
      {
        v41 = *(&off_100AE2C38 + clickHoldModeRight);
      }

      v139 = v41;
      v146 = clickHoldModeRight | (v39 << 8);
      v109 = identifier;
      v125 = v40;
      LogPrintF_safe();
    }

    if (qword_100B50950 != -1)
    {
      sub_10080ED10();
    }

    v42 = sub_100331844(off_100B50948, btDevice, 22, clickHoldModeRight | (v39 << 8), 2u);
    if (v42)
    {
      if (v42 != -310000)
      {
        if (error)
        {
          goto LABEL_360;
        }

        goto LABEL_361;
      }
    }
  }

  crownRotationDirection = [settingsCopy crownRotationDirection];
  if (crownRotationDirection)
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v44 = @"?";
      if (crownRotationDirection == 1)
      {
        v44 = @"BackToFront";
      }

      if (crownRotationDirection == 2)
      {
        v44 = @"FrontToBack";
      }

      v110 = identifier;
      v126 = v44;
      LogPrintF_safe();
    }

    if (qword_100B50950 != -1)
    {
      sub_10080ED10();
    }

    v45 = sub_100331844(off_100B50948, btDevice, 28, crownRotationDirection, 2u);
    if (v45)
    {
      if (v45 != -310000)
      {
        if (error)
        {
          goto LABEL_360;
        }

        goto LABEL_361;
      }
    }
  }

  deviceFlagsMask = [settingsCopy deviceFlagsMask];
  deviceFlagsValue = [settingsCopy deviceFlagsValue];
  if ((deviceFlagsMask & 0x400000) != 0)
  {
    v48 = *(btDevice + 1500);
    v49 = *&deviceFlagsValue & 0x400000;
    if (v48 != (*&deviceFlagsValue & 0x400000uLL) >> 22)
    {
      if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        v50 = "no";
        if (v48)
        {
          v51 = "yes";
        }

        else
        {
          v51 = "no";
        }

        if (v49)
        {
          v50 = "yes";
        }

        v127 = v51;
        v140 = v50;
        v111 = identifier;
        LogPrintF_safe();
      }

      sub_10053914C(btDevice, v49 != 0);
    }
  }

  if ((deviceFlagsMask & 0x80000000) != 0)
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v52 = "yes";
      if (deviceFlagsValue >= 0)
      {
        v52 = "no";
      }

      v111 = identifier;
      v127 = v52;
      LogPrintF_safe();
    }

    if (qword_100B50950 != -1)
    {
      sub_10080ED10();
    }

    v53 = deviceFlagsValue < 0 ? 1 : 2;
    v54 = sub_100331844(off_100B50948, btDevice, 30, v53, 2u);
    if (v54)
    {
      if (v54 != -310000)
      {
        if (error)
        {
          goto LABEL_360;
        }

        goto LABEL_361;
      }
    }
  }

  v55 = sub_1000E3188(btDevice);
  doubleTapActionLeft = [settingsCopy doubleTapActionLeft];
  doubleTapActionRight = [settingsCopy doubleTapActionRight];
  v58 = doubleTapActionRight;
  v59 = HIBYTE(v55);
  if (doubleTapActionLeft > 2u)
  {
    if (doubleTapActionLeft == 3)
    {
      v60 = 2;
      goto LABEL_156;
    }

    if (doubleTapActionLeft != 4)
    {
      if (doubleTapActionLeft == 5)
      {
        v60 = 4;
        goto LABEL_156;
      }

      goto LABEL_153;
    }

    v60 = 3;
  }

  else
  {
    if (!doubleTapActionLeft)
    {
      v60 = HIBYTE(v55);
      goto LABEL_156;
    }

    if (doubleTapActionLeft != 1)
    {
      if (doubleTapActionLeft == 2)
      {
        v60 = 1;
        goto LABEL_156;
      }

LABEL_153:
      v60 = 0xFFFFLL;
      goto LABEL_156;
    }

    v60 = 0;
  }

LABEL_156:
  v61 = v55;
  v62 = 0xFFFFLL;
  if (doubleTapActionRight > 2u)
  {
    switch(doubleTapActionRight)
    {
      case 3u:
        v62 = 2;
        goto LABEL_169;
      case 4u:
        v62 = 3;
        goto LABEL_169;
      case 5u:
        v62 = 4;
        goto LABEL_169;
    }
  }

  else
  {
    if (!doubleTapActionRight)
    {
      v62 = v61;
      goto LABEL_169;
    }

    if (doubleTapActionRight == 1)
    {
      v62 = 0;
      goto LABEL_169;
    }

    if (doubleTapActionRight == 2)
    {
      v62 = 1;
LABEL_169:
      if (v60 == v59 && v62 == v61)
      {
        goto LABEL_184;
      }
    }
  }

  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    if (doubleTapActionLeft > 5)
    {
      v63 = "?";
    }

    else
    {
      v63 = off_100AE2C78[doubleTapActionLeft];
    }

    if (v58 > 5)
    {
      v64 = "?";
    }

    else
    {
      v64 = off_100AE2C78[v58];
    }

    v147 = v62;
    v148 = v64;
    v127 = v60;
    v140 = v63;
    v111 = identifier;
    LogPrintF_safe();
  }

  v65 = sub_1005190B8(v151, btDevice, v60, v62);
  if (v65 && v65 != -310000)
  {
    if (error)
    {
      goto LABEL_360;
    }

    goto LABEL_361;
  }

LABEL_184:
  listeningMode = [settingsCopy listeningMode];
  if (listeningMode && listeningMode != sub_1000E3284(btDevice))
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      if (listeningMode > 4)
      {
        v67 = "?";
      }

      else
      {
        v67 = off_100AE2CA8[listeningMode - 1];
      }

      v112 = identifier;
      v128 = v67;
      LogPrintF_safe();
    }

    if (qword_100B50950 != -1)
    {
      sub_10080ED10();
    }

    v68 = sub_100331844(off_100B50948, btDevice, 13, listeningMode, 2u);
    if (v68)
    {
      if (v68 != -310000)
      {
        if (error)
        {
          goto LABEL_360;
        }

        goto LABEL_361;
      }
    }
  }

  listeningModeConfigs = [settingsCopy listeningModeConfigs];
  if (listeningModeConfigs)
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      CUPrintFlags32();
      v129 = v113 = identifier;
      LogPrintF_safe();
    }

    if (qword_100B50950 != -1)
    {
      sub_10080ED10();
    }

    v70 = sub_100331844(off_100B50948, btDevice, 26, listeningModeConfigs, 2u);
    if (v70)
    {
      if (v70 != -310000)
      {
        if (error)
        {
          goto LABEL_360;
        }

        goto LABEL_361;
      }
    }
  }

  microphoneMode = [settingsCopy microphoneMode];
  v72 = microphoneMode;
  if (microphoneMode)
  {
    v73 = microphoneMode == 3 ? 1 : 2 * (microphoneMode == 2);
    if (v73 != sub_1000E3314(btDevice))
    {
      if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        if (v72 > 3)
        {
          v74 = "?";
        }

        else
        {
          v74 = off_100AE2CC8[v72 - 1];
        }

        v130 = v73;
        v141 = v74;
        v114 = identifier;
        LogPrintF_safe();
      }

      v75 = sub_100518FFC(v151, btDevice, v73);
      if (v75)
      {
        if (v75 != -310000)
        {
          if (error)
          {
LABEL_360:
            CBErrorF();
            *error = v101 = 0;
            goto LABEL_324;
          }

LABEL_361:
          v101 = 0;
          goto LABEL_324;
        }
      }
    }
  }

  name = [settingsCopy name];
  if (![name length])
  {
    goto LABEL_241;
  }

  sub_1000C23E0(btDevice, __p);
  if (v155 >= 0)
  {
    v77 = __p;
  }

  else
  {
    v77 = __p[0];
  }

  v78 = [NSString stringWithUTF8String:v77];
  if (v155 < 0)
  {
    operator delete(__p[0]);
  }

  v79 = name;
  v80 = v78;
  v81 = v80;
  if (v79 != v80)
  {
    if ((v79 != 0) != (v80 == 0))
    {
      v82 = [v79 isEqual:v80];

      if (v82)
      {
        goto LABEL_240;
      }
    }

    else
    {
    }

    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v131 = v81;
      v142 = v79;
      v115 = identifier;
      LogPrintF_safe();
    }

    sub_100007E30(__p, [v79 UTF8String]);
    sub_100538D30(btDevice, __p, 1);
    if (v155 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_240;
  }

LABEL_240:
LABEL_241:
  placementMode = [settingsCopy placementMode];
  if (placementMode && (placementMode == 1) != sub_1000E356C(btDevice))
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v84 = "no";
      if (placementMode == 1)
      {
        v84 = "yes";
      }

      v116 = identifier;
      v132 = v84;
      LogPrintF_safe();
    }

    v85 = sub_100519DD4(v151, btDevice, placementMode == 1);
    if (v85)
    {
      if (v85 != -310000)
      {
        if (error)
        {
          v104 = CBErrorF();
          goto LABEL_364;
        }

        goto LABEL_367;
      }
    }
  }

  relinquishAudioRoute = [settingsCopy relinquishAudioRoute];
  if (relinquishAudioRoute)
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v87 = "?";
      if (relinquishAudioRoute == 1)
      {
        v87 = "Yes";
      }

      v88 = "false";
      if (relinquishAudioRoute != 1)
      {
        v88 = "true";
      }

      if (relinquishAudioRoute == 2)
      {
        v87 = "No";
      }

      v133 = v87;
      v143 = v88;
      v117 = identifier;
      LogPrintF_safe();
    }

    if (relinquishAudioRoute == 1)
    {
      if (qword_100B50950 != -1)
      {
        sub_10080ED24();
      }

      v89 = sub_100349058(off_100B50948, btDevice, 1);
      if (!v89)
      {
        goto LABEL_276;
      }
    }

    else
    {
      if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      if (qword_100B50950 != -1)
      {
        sub_10080ED24();
      }

      v90 = off_100B50948;
      sub_1000BE6F8(btDevice + 128, v152);
      v91 = sub_1003347E8(v90, v152, 1);
      v89 = v91;
      if (v153 < 0)
      {
        operator delete(v152[0]);
        if (!v89)
        {
          goto LABEL_276;
        }
      }

      else if (!v91)
      {
        goto LABEL_276;
      }
    }

    if (v89 != -310000)
    {
      if (!error)
      {
        goto LABEL_367;
      }

LABEL_356:
      v104 = CBErrorF();
LABEL_364:
      v101 = 0;
      *error = v104;
      goto LABEL_323;
    }
  }

LABEL_276:
  selectiveSpeechListeningConfig = [settingsCopy selectiveSpeechListeningConfig];
  if (selectiveSpeechListeningConfig)
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      [v150 name];
      v134 = identifier;
      v118 = v144 = selectiveSpeechListeningConfig;
      LogPrintF_safe();
    }

    if (qword_100B50950 != -1)
    {
      sub_10080ED24();
    }

    v93 = sub_100331844(off_100B50948, btDevice, 41, selectiveSpeechListeningConfig, 2u);
    if (v93)
    {
      if (v93 != -310000)
      {
        if (!error)
        {
          goto LABEL_367;
        }

        goto LABEL_356;
      }
    }
  }

  smartRoutingMode = [settingsCopy smartRoutingMode];
  if (smartRoutingMode == 1)
  {
    v95 = 1;
  }

  else
  {
    v95 = 2 * (smartRoutingMode == 2);
  }

  if (v95 && v95 != sub_1000E5DB8(btDevice))
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      if (smartRoutingMode > 2)
      {
        v96 = "?";
      }

      else
      {
        v96 = off_100AE2CE0[smartRoutingMode];
      }

      v135 = v95;
      v145 = v96;
      v119 = identifier;
      LogPrintF_safe();
    }

    sub_100546280(btDevice, v95);
  }

  spatialAudioAllowed = [settingsCopy spatialAudioAllowed];
  if (spatialAudioAllowed)
  {
    LODWORD(__p[0]) = 0;
    if (qword_100B508F0 != -1)
    {
      sub_10080ECC0();
    }

    sub_10056C0AC(off_100B508E8, btDevice, __p);
    if (SLOBYTE(__p[0]) != spatialAudioAllowed)
    {
      if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        v98 = "?";
        if (spatialAudioAllowed == 1)
        {
          v98 = "Yes";
        }

        if (spatialAudioAllowed == 2)
        {
          v98 = "No";
        }

        v120 = identifier;
        v136 = v98;
        LogPrintF_safe();
      }

      v99 = sub_100519550(v151, btDevice, spatialAudioAllowed);
      if (v99)
      {
        if (v99 != -310000)
        {
          if (error)
          {
            *error = CBErrorF();
          }

          goto LABEL_367;
        }
      }
    }
  }

  spatialAudioMode = [settingsCopy spatialAudioMode];
  if (spatialAudioMode != 255)
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v102 = sub_100519AF8(v151, btDevice, @"global", spatialAudioMode, -1);
    v101 = 1;
    if (!v102 || v102 == -310000)
    {
      goto LABEL_323;
    }

    if (error)
    {
      goto LABEL_356;
    }

LABEL_367:
    v101 = 0;
    goto LABEL_323;
  }

  v101 = 1;
LABEL_323:

LABEL_324:
  return v101;
}

- (BOOL)modifyDevice:(id)device leDevice:(void *)leDevice settings:(id)settings error:(id *)error
{
  deviceCopy = device;
  settingsCopy = settings;
  v54 = settingsCopy;
  name = [settingsCopy name];
  if (!name)
  {
    goto LABEL_24;
  }

  btSessionPtr = self->_btSessionPtr;
  if (btSessionPtr)
  {
    if (*(leDevice + 127) < 0)
    {
      sub_100008904(&__dst, *(leDevice + 13), *(leDevice + 14));
    }

    else
    {
      __dst = *(leDevice + 104);
      v66 = *(leDevice + 15);
    }

    if (v66 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    v14 = [NSString stringWithUTF8String:p_dst];
    if (SHIBYTE(v66) < 0)
    {
      operator delete(__dst);
    }

    v15 = name;
    v16 = v14;
    v17 = v16;
    if (v15 == v16)
    {
    }

    else
    {
      if (v16)
      {
        v18 = [v15 isEqual:v16];

        if (v18)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }

      v19 = *leDevice;
      if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        [v19 UUIDString];
        v47 = v17;
        v45 = v49 = v15;
        LogPrintF_safe();
      }

      v20 = sub_100007EE8();
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_10015A22C;
      v64[3] = &unk_100AE25C8;
      v64[4] = v15;
      v64[5] = v19;
      v64[6] = btSessionPtr;
      sub_10000CA94(v20, v64);
      v15 = v19;
    }

LABEL_23:
    settingsCopy = v54;
LABEL_24:
    v21 = [deviceCopy internalFlags] & 0x400;
    if (dword_100B511E0 <= 40 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      identifier = [deviceCopy identifier];
      v23 = *leDevice;
      controllerInfo = [deviceCopy controllerInfo];
      v25 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [controllerInfo fastLEConnectionInfoVersion]);
      controllerInfo2 = [deviceCopy controllerInfo];
      fastLEConnectionInfoData = [controllerInfo2 fastLEConnectionInfoData];
      controllerInfo3 = [deviceCopy controllerInfo];
      v52 = fastLEConnectionInfoData;
      fastLEConnectionAllowed = [controllerInfo3 fastLEConnectionAllowed];
      v50 = v23;
      v51 = v25;
      v46 = v21 >> 10;
      v48 = identifier;
      LogPrintF_safe();

      settingsCopy = v54;
    }

    v29 = *leDevice;
    if (v21)
    {
      controllerInfo4 = [deviceCopy controllerInfo];
      fastLEConnectionInfoVersion = [controllerInfo4 fastLEConnectionInfoVersion];

      controllerInfo5 = [deviceCopy controllerInfo];
      fastLEConnectionInfoData2 = [controllerInfo5 fastLEConnectionInfoData];

      v34 = sub_100007EE8();
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_10015A3E4;
      v59[3] = &unk_100AE1600;
      v60 = v29;
      v63 = fastLEConnectionInfoVersion;
      v35 = fastLEConnectionInfoData2;
      v61 = v35;
      v62 = deviceCopy;
      sub_10000CA94(v34, v59);
    }

    model = [deviceCopy model];
    if (model)
    {
      model2 = [deviceCopy model];
      v38 = [model2 length];

      if (v38)
      {
        model3 = [deviceCopy model];
        v40 = sub_100007EE8();
        v56[0] = _NSConcreteStackBlock;
        v56[1] = 3221225472;
        v56[2] = sub_10015A4AC;
        v56[3] = &unk_100AE0B60;
        v57 = v29;
        v58 = model3;
        v41 = model3;
        sub_10000CA94(v40, v56);
      }
    }

    v42 = 1;
    goto LABEL_34;
  }

  if (error)
  {
    v43 = name;
    CBErrorF();
    *error = v42 = 0;
    goto LABEL_35;
  }

  v42 = 0;
LABEL_34:
  v43 = name;
LABEL_35:

  return v42;
}

- (void)_modifyDeviceCompleteRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    device = [requestCopy device];
    CUPrintNSError();
    v13 = v12 = device;
    LogPrintF_safe();
  }

  timer = [requestCopy timer];
  v9 = requestCopy;
  if (timer)
  {
    dispatch_source_cancel(timer);
    [requestCopy setTimer:0];
    v9 = requestCopy;
  }

  completionHandler = [v9 completionHandler];
  v11 = completionHandler;
  if (completionHandler)
  {
    (*(completionHandler + 16))(completionHandler, errorCopy);
    [requestCopy setCompletionHandler:0];
  }

  [(NSMutableSet *)self->_modifyDeviceRequests removeObject:requestCopy];
}

- (void)performDeviceRequest:(id)request device:(id)device completionHandler:(id)handler
{
  requestCopy = request;
  deviceCopy = device;
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = sub_100042254;
  v87 = sub_1000425BC;
  v88 = 0;
  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = sub_10015B52C;
  v80[3] = &unk_100AE2420;
  v82 = &v83;
  handlerCopy = handler;
  v81 = handlerCopy;
  v57 = objc_retainBlock(v80);
  if (qword_100B50AA0 != -1)
  {
    sub_10009AF30();
  }

  if ((*(off_100B50A98 + 60) & 1) == 0)
  {
    v44 = CBErrorF();
    v62 = v84[5];
    v84[5] = v44;

    goto LABEL_99;
  }

  identifier = [deviceCopy identifier];
  if (!identifier)
  {
    v45 = CBErrorF();
    v46 = v84[5];
    v84[5] = v45;

    goto LABEL_98;
  }

  v79 = 0;
  v78 = 0;
  v59 = [[NSUUID alloc] initWithUUIDString:identifier];
  if (!v59)
  {
    v8 = identifier;
    [identifier UTF8String];
    if (!TextToHardwareAddress())
    {
      goto LABEL_11;
    }

LABEL_111:
    v49 = CBErrorF();
    v68 = v84[5];
    v84[5] = v49;

    goto LABEL_97;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10080ECE8();
  }

  v7 = sub_100046458(off_100B508C8, v59, 0);
  if (!v7)
  {
    goto LABEL_111;
  }

  LOBYTE(v78) = BYTE5(v7);
  BYTE1(v78) = BYTE4(v7);
  BYTE2(v78) = BYTE3(v7);
  HIBYTE(v78) = BYTE2(v7);
  LOBYTE(v79) = BYTE1(v7);
  HIBYTE(v79) = v7;
LABEL_11:
  if (dword_100B511E0 <= 20 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    v55 = deviceCopy;
    v56 = requestCopy;
    LogPrintF_safe();
  }

  v67 = objc_alloc_init(CBDeviceResponse);
  requestFlags = [requestCopy requestFlags];
  if ((requestFlags & 0x28) != 0)
  {
    LOBYTE(v89) = 0;
    sub_1000216B4(&v89);
    v9 = sub_100255934(&v78);
    v64 = v9;
    if (!v9)
    {
      v47 = CBErrorF();
      v48 = v84[5];
      v84[5] = v47;

LABEL_114:
      v52 = &v89;
      goto LABEL_115;
    }

    [v67 setConnectionHandle:sub_100255698(v9)];
    sub_10002249C(&v89);
    v66 = 8;
  }

  else
  {
    v64 = 0;
    v66 = 0;
  }

  if ((requestFlags & 0x40) != 0)
  {
    v94[0] = 0;
    v94[1] = 0;
    if (qword_100B508D0 != -1)
    {
      sub_10080ECE8();
    }

    sub_1000CC438(off_100B508C8, &v78, v94);
    v10 = sub_10004DF60(v94);
    if (!v10)
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      if (qword_100B508C0 != -1)
      {
        sub_10080EDFC();
      }

      v11 = sub_10009DA04(off_100B508B8);
      v12 = [v11 countByEnumeratingWithState:&v74 objects:v93 count:16];
      if (!v12)
      {
LABEL_39:

        goto LABEL_40;
      }

      v13 = *v75;
LABEL_27:
      v14 = 0;
      while (1)
      {
        if (*v75 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v74 + 1) + 8 * v14);
        v89 = 0;
        v90 = &v89;
        v91 = 0x2020000000;
        v92 = 0;
        if (qword_100B508D0 != -1)
        {
          sub_10080ECE8();
        }

        v73[0] = _NSConcreteStackBlock;
        v73[1] = 3221225472;
        v73[2] = sub_10015B624;
        v73[3] = &unk_100ADF8D8;
        v73[4] = &v89;
        sub_1000C320C(off_100B508C8, v15, v73);
        v16 = v90[3];
        if (v16)
        {
          LOBYTE(v71) = WORD2(v90[3]) >> 8;
          BYTE1(v71) = BYTE4(v16);
          BYTE2(v71) = BYTE3(v16);
          HIBYTE(v71) = BYTE2(v16);
          LOBYTE(v72) = BYTE1(v16);
          HIBYTE(v72) = v16;
          if (v71 == v78 && v72 == v79)
          {
            break;
          }
        }

        _Block_object_dispose(&v89, 8);
        if (v12 == ++v14)
        {
          v12 = [v11 countByEnumeratingWithState:&v74 objects:v93 count:16];
          if (v12)
          {
            goto LABEL_27;
          }

          goto LABEL_39;
        }
      }

      v10 = v15;
      _Block_object_dispose(&v89, 8);

      if (!v10)
      {
        goto LABEL_40;
      }
    }

    uUIDString = [v10 UUIDString];
    [v67 setIdentifier:uUIDString];

    v66 |= 0x40u;
  }

  if (requestFlags)
  {
    LOBYTE(v89) = 0;
    v21 = sub_10000C7D0();
    if ((*(*v21 + 304))(v21, &v78, &v89))
    {
      LOBYTE(v94[0]) = 0;
      sub_1000216B4(v94);
      v22 = sub_100255934(&v78);
      if (!v22 || (v23 = sub_10024DE3C(sub_10015B638), v64 = v22, v23) && v23 != -330000)
      {
        v50 = CBErrorF();
        v51 = v84[5];
        v84[5] = v50;

        v52 = v94;
LABEL_115:
        sub_10002249C(v52);
        goto LABEL_96;
      }

      sub_10002249C(v94);
    }

    else
    {
      [v67 setRssi:v89];
      v66 |= 1u;
    }
  }

  if ((requestFlags & 6) != 0)
  {
    LOBYTE(v89) = 0;
    sub_1000216B4(&v89);
    v64 = sub_100255934(&v78);
    if (!v64)
    {
      goto LABEL_113;
    }

    if ((requestFlags & 2) != 0)
    {
      v29 = sub_10024E134(sub_10015B70C, v64, 0, v24, v25, v26, v27, v28);
      if (v29)
      {
        if (v29 != -330000)
        {
          goto LABEL_113;
        }
      }
    }

    if ((requestFlags & 4) != 0)
    {
      v30 = sub_10024E134(sub_10015B7E0, v64, 1, v24, v25, v26, v27, v28);
      if (v30)
      {
        if (v30 != -330000)
        {
          goto LABEL_113;
        }
      }
    }

    sub_10002249C(&v89);
  }

  if ((requestFlags & 0x20) != 0)
  {
    LODWORD(v90) = 0;
    v89 = 0;
    LOBYTE(v94[0]) = 0;
    v31 = sub_10000C7D0();
    v32 = (*(*v31 + 1984))(v31, [v67 connectionHandle], &v89, v94, 1);
    if (v32 && v32 != -310000 || LOBYTE(v94[0]) != 12)
    {
      goto LABEL_40;
    }

    [v67 setCurrentPCAP:SBYTE4(v89)];
    [v67 setCore0TargetPower:SBYTE2(v90)];
    [v67 setCore1TargetPower:SBYTE3(v90)];
    v66 |= 0x20u;
  }

  if ((requestFlags & 0x80) != 0)
  {
    if (qword_100B51308 != -1)
    {
      sub_10080F048();
    }

    v33 = sub_1004B22F4(qword_100B51300, &v78, 5, 1u);
    if (v33 && v33 != -310000)
    {
      goto LABEL_40;
    }

    v66 |= 0x80u;
  }

  if ((requestFlags & 0x100) == 0)
  {
LABEL_76:
    if ((requestFlags & 0x200) == 0)
    {
LABEL_79:
      if ((requestFlags & 0x400) == 0)
      {
        v36 = v66;
        goto LABEL_87;
      }

      LOBYTE(v89) = 0;
      sub_1000216B4(&v89);
      v64 = sub_100255934(&v78);
      if (v64)
      {
        v37 = sub_10000C7D0();
        if ((*(*v37 + 2872))(v37))
        {
          if (*(v64 + 291) <= 1u)
          {
            v38 = 1;
          }

          else
          {
            v38 = *(v64 + 291);
          }

          [v67 setBtBand:{v38, v55}];
          v36 = v66 | 0x400;
          sub_10002249C(&v89);
LABEL_87:
          if ((requestFlags & ~v36) != 0)
          {
            v39 = objc_alloc_init(CBStackPerformDeviceRequest);
            [(CBStackPerformDeviceRequest *)v39 setDevice:deviceCopy];
            [(CBStackPerformDeviceRequest *)v39 setCompletedFlags:v36];
            [(CBStackPerformDeviceRequest *)v39 setCompletionHandler:handlerCopy];
            [(CBStackPerformDeviceRequest *)v39 setConnectionHandle:v64];
            [(CBStackPerformDeviceRequest *)v39 setRequest:requestCopy];
            [(CBStackPerformDeviceRequest *)v39 setResponse:v67];
            v40 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
            [(CBStackPerformDeviceRequest *)v39 setTimer:v40];
            handler[0] = _NSConcreteStackBlock;
            handler[1] = 3221225472;
            handler[2] = sub_10015B8B4;
            handler[3] = &unk_100AE2550;
            handler[4] = v40;
            handler[5] = v39;
            handler[6] = self;
            dispatch_source_set_event_handler(v40, handler);
            [requestCopy timeoutSeconds];
            CUDispatchTimerSet();
            dispatch_activate(v40);
            performDeviceRequests = self->_performDeviceRequests;
            if (!performDeviceRequests)
            {
              v42 = objc_alloc_init(NSMutableSet);
              v43 = self->_performDeviceRequests;
              self->_performDeviceRequests = v42;

              performDeviceRequests = self->_performDeviceRequests;
            }

            [(NSMutableSet *)performDeviceRequests addObject:v39, v55];
          }

          else
          {
            if (dword_100B511E0 <= 20 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe();
            }

            (*(handlerCopy + 2))(handlerCopy, v67, 0);
          }

          goto LABEL_96;
        }
      }

      goto LABEL_113;
    }

    LOBYTE(v89) = 0;
    sub_1000216B4(&v89);
    v35 = sub_1000E1FE8(&v78);
    if (v35)
    {
      [v67 setSniffInterval:625 * *(v35 + 136)];
      v66 |= 0x200u;
      sub_10002249C(&v89);
      goto LABEL_79;
    }

LABEL_113:
    v53 = CBErrorF();
    v54 = v84[5];
    v84[5] = v53;

    goto LABEL_114;
  }

  if (qword_100B51308 != -1)
  {
    sub_10080F048();
  }

  v34 = sub_1004B22F4(qword_100B51300, &v78, 6, 1u);
  if (!v34 || v34 == -310000)
  {
    v66 |= 0x100u;
    goto LABEL_76;
  }

LABEL_40:
  v18 = CBErrorF();
  v19 = v84[5];
  v84[5] = v18;

LABEL_96:
LABEL_97:

LABEL_98:
LABEL_99:
  (v57[2])(v57);

  _Block_object_dispose(&v83, 8);
}

- (void)_completePerformDeviceRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  if (dword_100B511E0 <= 20 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    device = [requestCopy device];
    request = [requestCopy request];
    CUPrintNSError();
    v15 = v14 = request;
    v13 = device;
    LogPrintF_safe();
  }

  timer = [requestCopy timer];
  v10 = requestCopy;
  if (timer)
  {
    dispatch_source_cancel(timer);
    [requestCopy setTimer:0];
    v10 = requestCopy;
  }

  completionHandler = [v10 completionHandler];
  if (completionHandler)
  {
    if (errorCopy)
    {
      response = 0;
    }

    else
    {
      response = [requestCopy response];
    }

    (completionHandler)[2](completionHandler, response, errorCopy);
    if (!errorCopy)
    {
    }

    [requestCopy setCompletionHandler:0];
  }

  [(NSMutableSet *)self->_performDeviceRequests removeObject:requestCopy];
}

- (void)_readRSSIWithConnectionHandle:(_OI_HCI_CONNECTION *)handle status:(int)status rssi:(char)rssi
{
  HIDWORD(v18) = rssi;
  if (dword_100B511E0 <= 20 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080F070(HIDWORD(v18), self);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  allObjects = [(NSMutableSet *)self->_performDeviceRequests allObjects];
  v8 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = *v21;
    v10 = status + 330000;
    if (!status)
    {
      v10 = -6700;
    }

    LODWORD(v18) = v10;
    if (HIDWORD(v18))
    {
      v11 = status != 0;
    }

    else
    {
      v11 = 1;
    }

    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(allObjects);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([v13 connectionHandle] == handle)
        {
          request = [v13 request];
          requestFlags = [request requestFlags];

          if (requestFlags)
          {
            if (v11)
            {
              response = CBErrorF();
              [(CBStackControllerBTStack *)self _completePerformDeviceRequest:v13 error:response];
            }

            else
            {
              response = [v13 response];
              [response setRssi:HIDWORD(v18)];
              v17 = [v13 completedFlags] | 1;
              [v13 setCompletedFlags:v17];
              if ((requestFlags & ~v17) == 0)
              {
                [(CBStackControllerBTStack *)self _completePerformDeviceRequest:v13 error:0];
              }
            }
          }
        }
      }

      v8 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }
}

- (void)_readTxPowerWithFlags:(unsigned int)flags status:(int)status connectionHandle:(_OI_HCI_CONNECTION *)handle txPowerLevel:(char)level
{
  levelCopy = level;
  v7 = *&status;
  if (dword_100B511E0 <= 20 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    v8 = CUPrintFlags32();
    v21 = levelCopy;
    v22 = [(NSMutableSet *)self->_performDeviceRequests count];
    v19 = v8;
    v20 = v7;
    LogPrintF_safe();
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [(NSMutableSet *)self->_performDeviceRequests allObjects:v19];
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        if ([v13 connectionHandle] == handle)
        {
          request = [v13 request];
          requestFlags = [request requestFlags];

          if ((requestFlags & flags) != 0)
          {
            if (v7)
            {
              v16 = CBErrorF();
              [(CBStackControllerBTStack *)self _completePerformDeviceRequest:v13 error:v16];
            }

            else
            {
              response = [v13 response];
              v16 = response;
              if ((flags & 2) != 0)
              {
                [response setTxPower:levelCopy];
              }

              if ((flags & 4) != 0)
              {
                [v16 setTxPowerMax:levelCopy];
              }

              v18 = [v13 completedFlags] | flags;
              [v13 setCompletedFlags:v18];
              if ((requestFlags & ~v18) == 0)
              {
                [(CBStackControllerBTStack *)self _completePerformDeviceRequest:v13 error:0];
              }
            }
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }
}

- (BOOL)sendRelayMessageType:(unsigned __int8)type messageData:(id)data conduitDevice:(id)device destinationDevice:(id)destinationDevice error:(id *)error
{
  typeCopy = type;
  dataCopy = data;
  deviceCopy = device;
  destinationDeviceCopy = destinationDevice;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [deviceCopy identifier];
  v16 = [(CBStackControllerBTStack *)self _btDeviceWithID:identifier error:error];

  if (!v16)
  {
    v22 = 0;
    goto LABEL_10;
  }

  identifier2 = [destinationDeviceCopy identifier];
  v18 = identifier2;
  if (identifier2)
  {
    v26 = 0;
    v25 = 0;
    [identifier2 UTF8String];
    if (TextToHardwareAddress())
    {
      if (!error)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v19 = [dataCopy length];
      v20 = v19;
      if (v19 < 0x3E7)
      {
        if (qword_100B50950 != -1)
        {
          sub_10080ED24();
        }

        v21 = sub_100335068(off_100B50948, v16, &v25, typeCopy, v20, [dataCopy bytes]);
        v22 = 1;
        if (!v21 || v21 == -310000)
        {
          goto LABEL_9;
        }

        if (error)
        {
          v24 = CBErrorF();
          goto LABEL_20;
        }

LABEL_21:
        v22 = 0;
        goto LABEL_9;
      }

      if (!error)
      {
        goto LABEL_21;
      }
    }
  }

  else if (!error)
  {
    goto LABEL_21;
  }

  v24 = CBErrorF();
LABEL_20:
  v22 = 0;
  *error = v24;
LABEL_9:

LABEL_10:
  return v22;
}

- (BOOL)sendSmartRoutingInformation:(id)information device:(id)device error:(id *)error
{
  informationCopy = information;
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (!identifier)
  {
    if (error)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v11 = [(CBStackControllerBTStack *)self _btDeviceWithID:identifier error:0];
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = [informationCopy length];
  if (v12 >= 0x3E7)
  {
    if (error)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  if (qword_100B50950 != -1)
  {
    sub_10080ED10();
  }

  v13 = sub_10033F444(off_100B50948, v11, [informationCopy bytes], v12);
  LOBYTE(v11) = 1;
  if (v13 && v13 != -310000)
  {
    if (error)
    {
LABEL_18:
      CBErrorF();
      *error = LOBYTE(v11) = 0;
      goto LABEL_12;
    }

LABEL_19:
    LOBYTE(v11) = 0;
  }

LABEL_12:

  return v11;
}

- (BOOL)sendConversationDetectMessage:(id)message device:(id)device error:(id *)error
{
  messageCopy = message;
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (!identifier)
  {
    if (error)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v11 = [(CBStackControllerBTStack *)self _btDeviceWithID:identifier error:0];
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = [messageCopy length];
  if (v12 >= 0x3E7)
  {
    if (error)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  if (qword_100B50950 != -1)
  {
    sub_10080ED10();
  }

  v13 = sub_10033F61C(off_100B50948, v11, [messageCopy bytes], v12);
  LOBYTE(v11) = 1;
  if (v13 && v13 != -310000)
  {
    if (error)
    {
LABEL_18:
      CBErrorF();
      *error = LOBYTE(v11) = 0;
      goto LABEL_12;
    }

LABEL_19:
    LOBYTE(v11) = 0;
  }

LABEL_12:

  return v11;
}

- (BOOL)sendAudioAccessoryConfig:(id)config device:(id)device error:(id *)error
{
  configCopy = config;
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    v11 = [(CBStackControllerBTStack *)self _btDeviceWithID:identifier error:0];
    if (v11)
    {
      errorCopy = error;
      v56 = 0;
      v12 = [[AudioAccessoryDeviceConfig alloc] initWithXPCObject:configCopy error:&v56];
      v13 = v56;
      if (v13)
      {
        if (errorCopy)
        {
LABEL_157:
          CBErrorF();
          *errorCopy = LOBYTE(v11) = 0;
LABEL_150:

          goto LABEL_151;
        }

LABEL_158:
        LOBYTE(v11) = 0;
        goto LABEL_150;
      }

      if ([(AudioAccessoryDeviceConfig *)v12 allowOffListeningMode])
      {
        if ([(AudioAccessoryDeviceConfig *)v12 allowOffListeningMode]== 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }

        if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
        {
          v33 = identifier;
          v44 = v14;
          LogPrintF_safe();
        }

        if (qword_100B50950 != -1)
        {
          sub_10080ED24();
        }

        v15 = sub_100331844(off_100B50948, v11, 52, v14, 2u);
      }

      else
      {
        v15 = 0;
      }

      if (_os_feature_enabled_impl() && [(AudioAccessoryDeviceConfig *)v12 allowTemporaryManagedPairing])
      {
        if ([(AudioAccessoryDeviceConfig *)v12 allowTemporaryManagedPairing]== 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
        {
          v33 = identifier;
          v44 = v16;
          LogPrintF_safe();
        }

        if (qword_100B50950 != -1)
        {
          sub_10080ED24();
        }

        v15 = sub_100331844(off_100B50948, v11, 58, v16, 2u);
      }

      if ([(AudioAccessoryDeviceConfig *)v12 autoANCStrength:v33])
      {
        v17 = [(AudioAccessoryDeviceConfig *)v12 autoANCStrength]- 1000;
        if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
        {
          v34 = identifier;
          v45 = v17;
          LogPrintF_safe();
        }

        if (qword_100B50950 != -1)
        {
          sub_10080ED24();
        }

        v15 = sub_100331844(off_100B50948, v11, 46, v17, 2u);
      }

      if ([(AudioAccessoryDeviceConfig *)v12 enableSiriMultitone:v34])
      {
        if ([(AudioAccessoryDeviceConfig *)v12 enableSiriMultitone]== 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
        {
          v35 = identifier;
          v46 = v18;
          LogPrintF_safe();
        }

        if (qword_100B50950 != -1)
        {
          sub_10080ED24();
        }

        v15 = sub_100331844(off_100B50948, v11, 50, v18, 2u);
      }

      if ([(AudioAccessoryDeviceConfig *)v12 enableSleepDetection:v35])
      {
        if ([(AudioAccessoryDeviceConfig *)v12 enableSleepDetection]== 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
        {
          v36 = identifier;
          v47 = v19;
          LogPrintF_safe();
        }

        if (qword_100B50950 != -1)
        {
          sub_10080ED24();
        }

        v15 = sub_100331844(off_100B50948, v11, 53, v19, 2u);
      }

      if ([(AudioAccessoryDeviceConfig *)v12 enableHearingAidGainSwipe:v36])
      {
        if ([(AudioAccessoryDeviceConfig *)v12 enableHearingAidGainSwipe]== 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
        {
          v37 = identifier;
          v48 = v20;
          LogPrintF_safe();
        }

        if (qword_100B50950 != -1)
        {
          sub_10080ED24();
        }

        v15 = sub_100331844(off_100B50948, v11, 47, v20, 2u);
      }

      if ([(AudioAccessoryDeviceConfig *)v12 enableHearingAssist:v37])
      {
        if ([(AudioAccessoryDeviceConfig *)v12 enableHearingAssist]== 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
        {
          v38 = identifier;
          v49 = v21;
          LogPrintF_safe();
        }

        if (qword_100B50950 != -1)
        {
          sub_10080ED24();
        }

        v15 = sub_100331844(off_100B50948, v11, 51, v21, 2u);
      }

      if ([(AudioAccessoryDeviceConfig *)v12 hearingAidToggle:v38]&& ![(AudioAccessoryDeviceConfig *)v12 hearingAidEnrolled])
      {
        hearingAidToggle = [(AudioAccessoryDeviceConfig *)v12 hearingAidToggle];
        v25 = sub_10054FBB0(v11);
        if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
        {
          v39 = identifier;
          hearingAidToggle2 = [(AudioAccessoryDeviceConfig *)v12 hearingAidToggle];
          LogPrintF_safe();
        }

        v26 = v25 | (hearingAidToggle << 8);
        if (qword_100B50950 == -1)
        {
          goto LABEL_95;
        }
      }

      else
      {
        if ([(AudioAccessoryDeviceConfig *)v12 hearingAidToggle]|| ![(AudioAccessoryDeviceConfig *)v12 hearingAidEnrolled])
        {
LABEL_96:
          if ([(AudioAccessoryDeviceConfig *)v12 enableHearingProtectionPPE:v39])
          {
            if ([(AudioAccessoryDeviceConfig *)v12 enableHearingProtectionPPE]== 1)
            {
              v27 = 1;
            }

            else
            {
              v27 = 2;
            }

            if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
            {
              v40 = identifier;
              v51 = v27;
              LogPrintF_safe();
            }

            if (qword_100B50950 != -1)
            {
              sub_10080ED24();
            }

            v15 = sub_100331844(off_100B50948, v11, 55, v27, 2u);
          }

          if ([(AudioAccessoryDeviceConfig *)v12 enableHeartRateMonitor:v40])
          {
            if ([(AudioAccessoryDeviceConfig *)v12 enableHeartRateMonitor]== 1)
            {
              v28 = 1;
            }

            else
            {
              v28 = 2;
            }

            if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
            {
              v41 = identifier;
              v52 = v28;
              LogPrintF_safe();
            }

            if (qword_100B50950 != -1)
            {
              sub_10080ED24();
            }

            v15 = sub_100331844(off_100B50948, v11, 48, v28, 2u);
          }

          if ([(AudioAccessoryDeviceConfig *)v12 enableDynamicEndOfCharge:v41])
          {
            if ([(AudioAccessoryDeviceConfig *)v12 enableDynamicEndOfCharge]== 1)
            {
              v29 = 1;
            }

            else
            {
              v29 = 2;
            }

            if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
            {
              v42 = identifier;
              v53 = v29;
              LogPrintF_safe();
            }

            if (qword_100B50950 != -1)
            {
              sub_10080ED24();
            }

            v15 = sub_100331844(off_100B50948, v11, 59, v29, 2u);
          }

          if ([(AudioAccessoryDeviceConfig *)v12 hearingAidV2SourceRegionSupport:v42])
          {
            if ([(AudioAccessoryDeviceConfig *)v12 hearingAidV2SourceRegionSupport]== 1)
            {
              v30 = 1;
            }

            else
            {
              v30 = 2;
            }

            if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
            {
              v43 = identifier;
              v54 = v30;
              LogPrintF_safe();
            }

            if (qword_100B50950 != -1)
            {
              sub_10080ED24();
            }

            v15 = sub_100331844(off_100B50948, v11, 61, v30, 2u);
          }

          if ([(AudioAccessoryDeviceConfig *)v12 rawGesturesConfiguration:v43])
          {
            v31 = [(AudioAccessoryDeviceConfig *)v12 rawGesturesConfiguration]& 0xFFFF7FFF;
            if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe();
            }

            if (qword_100B50950 != -1)
            {
              sub_10080ED24();
            }

            v15 = sub_100331844(off_100B50948, v11, 57, v31, 2u);
          }

          LOBYTE(v11) = 1;
          if (!v15 || v15 == -310000)
          {
            goto LABEL_150;
          }

          if (errorCopy)
          {
            goto LABEL_157;
          }

          goto LABEL_158;
        }

        v22 = sub_10054FC88(v11);
        hearingAidEnrolled = [(AudioAccessoryDeviceConfig *)v12 hearingAidEnrolled];
        if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
        {
          v39 = identifier;
          hearingAidToggle2 = [(AudioAccessoryDeviceConfig *)v12 hearingAidEnrolled];
          LogPrintF_safe();
        }

        v26 = hearingAidEnrolled | (v22 << 8);
        if (qword_100B50950 == -1)
        {
LABEL_95:
          v15 = sub_100331844(off_100B50948, v11, 44, v26, 2u);
          goto LABEL_96;
        }
      }

      sub_10080ED24();
      goto LABEL_95;
    }
  }

  else if (error)
  {
    CBErrorF();
    *error = LOBYTE(v11) = 0;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

LABEL_151:

  return v11;
}

- (BOOL)sendAudioAccessoryEventMessage:(id)message eventType:(unsigned __int8)type device:(id)device error:(id *)error
{
  typeCopy = type;
  messageCopy = message;
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (!identifier)
  {
    if (!error)
    {
      goto LABEL_53;
    }

LABEL_51:
    v17 = CBErrorF();
    goto LABEL_47;
  }

  v13 = [(CBStackControllerBTStack *)self _btDeviceWithID:identifier error:0];
  if (!v13)
  {
    goto LABEL_44;
  }

  v14 = [messageCopy length];
  if (v14 >= 0x3E7)
  {
    if (!error)
    {
      goto LABEL_53;
    }

    goto LABEL_51;
  }

  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  if (typeCopy > 5)
  {
    if (typeCopy > 11)
    {
      if (typeCopy == 12)
      {
        if (qword_100B50950 != -1)
        {
          sub_10080ED10();
        }

        v15 = sub_100340694(off_100B50948, v13, [messageCopy bytes], v14);
        goto LABEL_42;
      }

      if (typeCopy == 13)
      {
        if (qword_100B50950 != -1)
        {
          sub_10080ED10();
        }

        v15 = sub_10034086C(off_100B50948, v13, [messageCopy bytes], v14);
        goto LABEL_42;
      }
    }

    else
    {
      if (typeCopy == 6)
      {
        if (qword_100B50950 != -1)
        {
          sub_10080ED10();
        }

        v15 = sub_1003384F8(off_100B50948, v13);
        goto LABEL_42;
      }

      if (typeCopy == 8)
      {
        if (qword_100B50950 != -1)
        {
          sub_10080ED10();
        }

        v15 = sub_10033F7F4(off_100B50948, v13, [messageCopy bytes], v14);
        goto LABEL_42;
      }
    }

LABEL_45:
    if (error)
    {
      sub_10015D610(typeCopy);
      v17 = CBErrorF();
LABEL_47:
      LOBYTE(v13) = 0;
      *error = v17;
      goto LABEL_44;
    }

LABEL_53:
    LOBYTE(v13) = 0;
    goto LABEL_44;
  }

  if (typeCopy > 3)
  {
    if (typeCopy == 4)
    {
      if (qword_100B50950 != -1)
      {
        sub_10080ED10();
      }

      v15 = sub_10033FBB0(off_100B50948, v13, v14, [messageCopy bytes]);
    }

    else
    {
      if (qword_100B50950 != -1)
      {
        sub_10080ED10();
      }

      v15 = sub_10033FFAC(off_100B50948, v13, v14, [messageCopy bytes]);
    }
  }

  else
  {
    if (typeCopy != 2)
    {
      if (typeCopy == 3)
      {
        if (qword_100B50950 != -1)
        {
          sub_10080ED10();
        }

        v15 = sub_10033F444(off_100B50948, v13, [messageCopy bytes], v14);
        goto LABEL_42;
      }

      goto LABEL_45;
    }

    if (qword_100B50950 != -1)
    {
      sub_10080ED10();
    }

    v15 = sub_10033F61C(off_100B50948, v13, [messageCopy bytes], v14);
  }

LABEL_42:
  LOBYTE(v13) = 1;
  if (v15 && v15 != -310000)
  {
    if (!error)
    {
      goto LABEL_53;
    }

    goto LABEL_51;
  }

LABEL_44:

  return v13;
}

- (BOOL)updateControllerInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v7 = infoCopy;
  if (infoCopy)
  {
    self->_stackControllerInfoCloudSyncStatus = [infoCopy cloudSyncStatus];
  }

  else if (error)
  {
    *error = CBErrorF();
  }

  return v7 != 0;
}

- (BOOL)isDeviceConnected:(id)connected error:(id *)error
{
  identifier = [connected identifier];
  if (identifier)
  {
    v7 = [(CBStackControllerBTStack *)self _btUUIDWithID:identifier error:0];
    if (qword_100B508B0 != -1)
    {
      sub_10080EC54();
    }

    v8 = off_100B508A8;
    sub_10004DFB4(v11, v7);
    v9 = sub_100050290(v8, v11);
  }

  else if (error)
  {
    CBErrorF();
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_pairingAgentTearDown
{
  pairingAgentHandle = self->_pairingAgentHandle;
  self->_pairingAgentHandle = 0;
  pairingAgentStarted = self->_pairingAgentStarted;
  self->_pairingAgentStarted = 0;
  pairingClients = self->_pairingClients;
  self->_pairingClients = 0;

  if (pairingAgentHandle)
  {
    if (qword_100B50F88 != -1)
    {
      sub_10080EE38();
    }

    v5 = sub_1006DB834(off_100B50F80, pairingAgentHandle);
    if (v5)
    {
      if (pairingAgentStarted)
      {
        v6 = sub_1006D703C(v5, pairingAgentHandle);
        if (!v6 || v6 == -310000)
        {
          if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
          {
            sub_10080F0D0();
          }
        }

        else if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
        {
          v8 = CUPrintErrorCode();
          LogPrintF_safe();
        }
      }

      if (qword_100B50F88 != -1)
      {
        sub_10080EE38();
      }

      v7 = off_100B50F80;

      sub_1006DB54C(v7, pairingAgentHandle);
    }

    else
    {
      sub_10080F0EC();
    }
  }
}

- (BOOL)addPairingClient:(id)client error:(id *)error
{
  clientCopy = client;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  pairingClients = self->_pairingClients;
  if (!pairingClients)
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = self->_pairingClients;
    self->_pairingClients = v8;

    pairingClients = self->_pairingClients;
  }

  [(CBPairable *)pairingClients addObject:clientCopy];
  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    [(CBPairable *)self->_pairingClients count];
    LogPrintF_safe();
  }

  if (!self->_pairingAgentHandle)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_100042254;
    v28 = sub_1000425BC;
    v29 = 0;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10015DCD4;
    v23[3] = &unk_100AE25F0;
    v23[4] = &v24;
    v23[5] = error;
    v11 = objc_retainBlock(v23);
    if (self->_btSessionHandle)
    {
      v22 = 0;
      if (qword_100B50F88 != -1)
      {
        sub_10080EDD4();
      }

      v12 = sub_1006DB230(off_100B50F80, self->_btSessionHandle, &v22, &self->_pairingAgentHandle);
      if ((!v12 || v12 == -310000) && v22)
      {
        v21[0] = *off_100AE2610;
        v21[1] = *off_100AE2620;
        v21[2] = *off_100AE2630;
        sub_1006D71EC(v22, self->_pairingAgentHandle, v21, self);
        v13 = sub_1006D7488(v22, self->_pairingAgentHandle);
        v15 = v13 == 0;
        v14 = v13 + 310000;
        v15 = v15 || v14 == 0;
        v10 = v15;
        if (v15)
        {
          self->_pairingAgentStarted = 1;
          if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }
        }

        else
        {
          v19 = CBErrorF();
          v20 = v25[5];
          v25[5] = v19;
        }

        goto LABEL_27;
      }

      v17 = CBErrorF();
    }

    else
    {
      v17 = CBErrorF();
    }

    v18 = v25[5];
    v25[5] = v17;

    v10 = 0;
LABEL_27:
    (v11[2])(v11);

    _Block_object_dispose(&v24, 8);
    goto LABEL_28;
  }

  v10 = 1;
LABEL_28:

  return v10;
}

- (void)removePairingClient:(id)client
{
  clientCopy = client;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(CBPairable *)self->_pairingClients removeObject:clientCopy];
  v4 = [(CBPairable *)self->_pairingClients count];
  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  if (!v4)
  {
    [(CBStackControllerBTStack *)self _pairingAgentTearDown];
  }
}

- (BOOL)pairingContinueWithPairingInfo:(id)info error:(id *)error
{
  infoCopy = info;
  device = [infoCopy device];
  v8 = device;
  if (device)
  {
    identifier = [device identifier];
    v10 = [(CBStackControllerBTStack *)self _btDeviceWithID:identifier error:error];
    if (!v10)
    {
LABEL_20:

      goto LABEL_21;
    }

    if (self->_pairingAgentHandle)
    {
      if (qword_100B50F88 != -1)
      {
        sub_10080EE38();
      }

      v11 = sub_1006DB834(off_100B50F80, self->_pairingAgentHandle);
      if (v11)
      {
        error = [infoCopy error];
        if (!error)
        {
          v16 = [infoCopy pin];
          uTF8String = [v16 UTF8String];

          if (uTF8String)
          {
            sub_1006E5ED8(v19, uTF8String);
            sub_1006D8AA8(v11, v10);
          }
        }

        if ([error code] == -6723)
        {
          v13 = sub_1006D8A50(v11);
          LOBYTE(v10) = 1;
          if (!v13 || v13 == -310000)
          {
            goto LABEL_19;
          }

          if (error)
          {
            goto LABEL_12;
          }
        }

        else
        {
          error2 = [infoCopy error];
          v15 = sub_1006D8CE8(v11, v10, error2 != 0);

          LOBYTE(v10) = 1;
          if (!v15 || v15 == -310000)
          {
            goto LABEL_19;
          }

          if (error)
          {
LABEL_12:
            CBErrorF();
            *error = LOBYTE(v10) = 0;
LABEL_19:

            goto LABEL_20;
          }
        }

        LOBYTE(v10) = 0;
        goto LABEL_19;
      }

      if (error)
      {
LABEL_27:
        CBErrorF();
        *error = LOBYTE(v10) = 0;
        goto LABEL_20;
      }
    }

    else if (error)
    {
      goto LABEL_27;
    }

    LOBYTE(v10) = 0;
    goto LABEL_20;
  }

  if (error)
  {
    CBErrorF();
    *error = LOBYTE(v10) = 0;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

LABEL_21:

  return v10;
}

- (void)_pairingCompletedWithBTDevice:(void *)device result:(int)result
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = self->_pairingClients;
  v7 = [(CBPairable *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        pairingCompletedHandler = [v11 pairingCompletedHandler];
        if (pairingCompletedHandler)
        {
          dispatchQueue = [v11 dispatchQueue];
          dispatch_assert_queue_V2(dispatchQueue);

          if (!v8)
          {
            v14 = [CBDevice alloc];
            v21 = 0;
            v8 = [v14 initWithBTStackDevice:device error:&v21];
            v15 = v21;
            v16 = v15;
            if (!v8)
            {
              if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
              {
                sub_1000E5A58(device, &__p);
                v18 = CUPrintNSError();
                LogPrintF_safe();

                if (v20 < 0)
                {
                  operator delete(__p);
                }
              }

              goto LABEL_23;
            }
          }

          if (result)
          {
            v17 = CBErrorF();
          }

          else
          {
            v17 = 0;
          }

          (pairingCompletedHandler)[2](pairingCompletedHandler, v8, v17);
        }
      }

      v7 = [(CBPairable *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_23:
    v8 = 0;
  }
}

- (void)_pairingPromptWithBTDevice:(void *)device pairingType:(int64_t)type pinString:(id)string flags:(unsigned int)flags
{
  v6 = *&flags;
  stringCopy = string;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_pairingClients;
  v10 = [(CBPairable *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = 0;
    v12 = *v28;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        pairingPromptHandler = [v14 pairingPromptHandler];
        if (pairingPromptHandler)
        {
          dispatchQueue = [v14 dispatchQueue];
          dispatch_assert_queue_V2(dispatchQueue);

          if (!v11)
          {
            v17 = [CBDevice alloc];
            v26 = 0;
            v11 = [v17 initWithBTStackDevice:device error:&v26];
            v18 = v26;
            v19 = v18;
            if (!v11)
            {
              if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
              {
                sub_1000E5A58(device, &__p);
                v21 = CUPrintNSError();
                LogPrintF_safe();

                if (v25 < 0)
                {
                  operator delete(__p);
                }
              }

              goto LABEL_20;
            }
          }

          v20 = objc_alloc_init(CBPairingInfo);
          [v20 setDevice:v11];
          [v20 setFlags:v6];
          [v20 setPairingType:type];
          [v20 setPin:stringCopy];
          (pairingPromptHandler)[2](pairingPromptHandler, v20);
        }
      }

      v10 = [(CBPairable *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_20:
    v11 = 0;
  }
}

@end