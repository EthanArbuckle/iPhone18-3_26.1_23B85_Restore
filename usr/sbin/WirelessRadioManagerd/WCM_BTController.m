@interface WCM_BTController
- (BOOL)getOverLEDeviceSingleConnection;
- (WCM_BTController)init;
- (unint64_t)getNum2GHzAclA2DPDevices;
- (void)clearAoSDeviceCounts;
- (void)countBTConnections;
- (void)dealloc;
- (void)handleAADeviceFound:(id)a3;
- (void)handleAADeviceLost:(id)a3;
- (void)handleAudioConfig:(id)a3;
- (void)handleCBDeviceFound:(id)a3;
- (void)handleCBDeviceLost:(id)a3;
- (void)handleLeAdvePaState:(id)a3;
- (void)handleLocalDeviceState:(id)a3;
- (void)handlePowerState:(BOOL)a3;
- (void)printBTConnections;
- (void)syncAllBTConnections:(id)a3 shouldAdd:(BOOL)a4;
- (void)updateThreadRadioStatus:(BOOL)a3;
@end

@implementation WCM_BTController

- (unint64_t)getNum2GHzAclA2DPDevices
{
  if (*(&self->numLLADevice + 4) || *(&self->num2GHzAoSUniAudioDevice + 4))
  {
    return 0;
  }

  else
  {
    return *(&self->numeSCODevice + 4);
  }
}

- (WCM_BTController)init
{
  v13.receiver = self;
  v13.super_class = WCM_BTController;
  v2 = [(WCM_Controller *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2[44] = 0;
    v2[45] = 0;
    *(v2 + 28) = dispatch_queue_create("com.apple.WirelessRadioManager.BTCtl", 0);
    v4 = objc_alloc_init(CBDiscovery);
    *(v3 + 36) = v4;
    [v4 setDiscoveryFlags:0x80000200000];
    [*(v3 + 36) setDispatchQueue:*(v3 + 28)];
    *(v3 + 12) = 0;
    *(v3 + 156) = objc_alloc_init(NSMutableArray);
    *(v3 + 164) = objc_alloc_init(NSMutableArray);
    *(v3 + 52) = 0;
    *(v3 + 60) = 0;
    *(v3 + 68) = 0;
    *(v3 + 76) = 0;
    *(v3 + 84) = 0;
    *(v3 + 92) = 0;
    *(v3 + 100) = 0;
    *(v3 + 108) = 0;
    *(v3 + 116) = 0;
    qword_1002B7CB8 = 0;
    qword_1002B7CB0 = 0;
    *(v3 + 124) = 0;
    *(v3 + 132) = 0;
    *(v3 + 140) = 0;
    *(v3 + 148) = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10009DF44;
    v12[3] = &unk_10023FF90;
    v12[4] = v3;
    [*(v3 + 36) setDeviceFoundHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10009DF50;
    v11[3] = &unk_10023FF90;
    v11[4] = v3;
    [*(v3 + 36) setDeviceLostHandler:v11];
    [*(v3 + 36) activateWithCompletion:&stru_10023FFD0];
    if (objc_opt_class())
    {
      *(v3 + 172) = objc_alloc_init(NSString);
      v5 = objc_alloc_init(AADeviceManager);
      *(v3 + 20) = v5;
      [v5 setDispatchQueue:*(v3 + 28)];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10009DF9C;
      v10[3] = &unk_10023FFF8;
      v10[4] = v3;
      [*(v3 + 20) setDeviceFoundHandler:v10];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10009DFA8;
      v9[3] = &unk_10023FFF8;
      v9[4] = v3;
      [*(v3 + 20) setDeviceLostHandler:v9];
      v6 = *(v3 + 20);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10009DFB4;
      v8[3] = &unk_100240040;
      v8[4] = v3;
      [v6 activateWithCompletion:v8];
    }
  }

  [WCM_Logging logLevel:2 message:@"BTController Init"];
  return v3;
}

- (void)dealloc
{
  [WCM_Logging logLevel:2 message:@"BTController Dealloc"];
  [(NSMutableArray *)[(WCM_BTController *)self btConnections] removeAllObjects];

  [(NSMutableArray *)[(WCM_BTController *)self allBTConnections] removeAllObjects];
  [*(&self->mBTCtlQueue + 4) invalidate];

  [*(&self->super.mProcessId + 1) invalidate];
  v3 = *(&self->deviceManager + 4);
  if (v3)
  {
    dispatch_release(v3);
    *(&self->deviceManager + 4) = 0;
  }

  if (qword_1002B7CB8)
  {
    xpc_release(qword_1002B7CB8);
  }

  if (qword_1002B7CB0)
  {
    xpc_release(qword_1002B7CB0);
  }

  v4.receiver = self;
  v4.super_class = WCM_BTController;
  [(WCM_Controller *)&v4 dealloc];
}

- (void)handleLocalDeviceState:(id)a3
{
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (value)
  {
    uint64 = xpc_dictionary_get_uint64(value, "kWCMBTLocalDeviceState");
    [WCM_Logging logLevel:5 message:@"BT powerState(%d -> %d)", [(WCM_BTController *)self powerState], uint64 != 0];
    if (uint64 != [(WCM_BTController *)self powerState])
    {
      [(WCM_BTController *)self handlePowerState:uint64 != 0];
      v6 = +[WCM_PolicyManager singleton];

      [v6 updateControllerState:506];
    }
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"Error Getting Args"];
  }
}

- (void)handleLeAdvePaState:(id)a3
{
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (value)
  {
    int64 = xpc_dictionary_get_int64(value, "kWCMBTLeADVePAStateChange");
    if (int64 != [(WCM_BTController *)self leADVePAState])
    {
      [(WCM_BTController *)self setLeADVePAState:int64 != 0];
      [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    }

    [WCM_Logging logLevel:2 message:@"BT le Advertisement ePA state %d", int64 != 0];
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"Error Getting Args"];
  }
}

- (void)handleAudioConfig:(id)a3
{
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kWCMBTAudioConfiguration_Type");
  v7 = xpc_dictionary_get_uint64(value, "kWCMBTAudioConfiguration_PacketType");
  v8 = xpc_dictionary_get_uint64(value, "kWCMBTAudioConfiguration_ConnectionState");
  v9 = xpc_dictionary_get_uint64(value, "kWCMBTAudioConfiguration_Role");
  v10 = qword_1002B7CB8;
  if (!qword_1002B7CB8)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    qword_1002B7CB8 = v10;
  }

  if (xpc_equal(v10, a3))
  {
    [WCM_Logging logLevel:2 message:@"HandleAudioConfig: Discard the same message %@", qword_1002B7CB8];
    return;
  }

  if (qword_1002B7CB8)
  {
    xpc_release(qword_1002B7CB8);
  }

  qword_1002B7CB8 = xpc_copy(a3);
  if (uint64 > 2)
  {
    if (uint64 == 3)
    {
      [(WCM_BTController *)self setAudioType:5];
      v19 = *(&self->numGameCtrlDev10ms + 4);
      if (v8)
      {
        v20 = v19 + 1;
        *(&self->numGameCtrlDev10ms + 4) = v20;
        [WCM_Logging logLevel:2 message:@"HandleAudioConfig: Received LEA connection increase with count %lu", v20];
      }

      else if (v19)
      {
        v24 = v19 - 1;
        *(&self->numGameCtrlDev10ms + 4) = v24;
        [WCM_Logging logLevel:2 message:@"HandleAudioConfig: Received LEA connection drop with count %lu", v24];
      }

      goto LABEL_41;
    }

    if (uint64 == 4)
    {
      if (v7 == 2)
      {
        v25 = *(&self->numLEDevice + 4);
        if (v25)
        {
          v26 = v25 - 1;
          *(&self->numLEDevice + 4) = v26;
          [WCM_Logging logLevel:2 message:@"HandleAudioConfig: Received LLA connection drop with count %lu", v26];
        }
      }

      else if (v7 == 1)
      {
        v14 = *(&self->numLEDevice + 4) + 1;
        *(&self->numLEDevice + 4) = v14;
        [WCM_Logging logLevel:2 message:@"HandleAudioConfig: Received LLA connection increase with count %lu", v14];
      }

      else
      {
        [WCM_Logging logLevel:2 message:@"HandleAudioConfig: Incorrect LLA pktType state received %llu", v7];
      }

      goto LABEL_41;
    }

    goto LABEL_17;
  }

  if (uint64 == 1)
  {
    [(WCM_BTController *)self setAudioType:3];
    if (v7)
    {
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        [(WCM_BTController *)self setAudioType:2];
        v17 = *(&self->numSCODevice + 4);
        if (v8)
        {
          v18 = v17 + 1;
          *(&self->numSCODevice + 4) = v18;
          [WCM_Logging logLevel:2 message:@"HandleAudioConfig : Received eSCO connection increase with count %lu", v18];
        }

        else if (v17)
        {
          v28 = v17 - 1;
          *(&self->numSCODevice + 4) = v28;
          [WCM_Logging logLevel:2 message:@"HandleAudioConfig : Received eSCO connection drop with count %lu", v28];
        }
      }
    }

    else
    {
      [(WCM_BTController *)self setAudioType:1];
      v22 = *&self->_audioType;
      if (v8)
      {
        v23 = v22 + 1;
        *&self->_audioType = v23;
        [WCM_Logging logLevel:2 message:@"HandleAudioConfig: Received SCO connection increase with count %lu", v23];
      }

      else if (v22)
      {
        v27 = v22 - 1;
        *&self->_audioType = v27;
        [WCM_Logging logLevel:2 message:@"HandleAudioConfig: Received SCO connection drop with count %lu", v27];
      }
    }

    goto LABEL_41;
  }

  if (uint64 != 2)
  {
LABEL_17:
    if (!v8)
    {
      [(WCM_BTController *)self setAudioType:0];
    }

    [WCM_Logging logLevel:2 message:@"Audio config: role(%llu) state(%llu) type(%llu) pktType(%llu) audioType(%d) coexAudioStateChange(%d)", v9, v8, uint64, v7, [(WCM_BTController *)self audioType], 0];
    v15 = +[WCM_PolicyManager singleton];
    v16 = 501;
    goto LABEL_42;
  }

  [(WCM_BTController *)self setAudioType:4];
  v11 = *(&self->numeSCODevice + 4);
  if (v8)
  {
    v12 = @"HandleAudioConfig : Received A2DP connection increase with count %lu";
    v13 = 1;
LABEL_28:
    v21 = v11 + v13;
    *(&self->numeSCODevice + 4) = v21;
    [WCM_Logging logLevel:2 message:v12, v21];
    goto LABEL_29;
  }

  if (v11)
  {
    v12 = @"HandleAudioConfig : Received A2DP connection drop with count %lu";
    v13 = -1;
    goto LABEL_28;
  }

LABEL_29:
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
LABEL_41:
  [WCM_Logging logLevel:2 message:@"Audio config: role(%llu) state(%llu) type(%llu) pktType(%llu) audioType(%d) coexAudioStateChange(%d)", v9, v8, uint64, v7, [(WCM_BTController *)self audioType], 1];
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  [(WCM_BTController *)self printBTConnections];
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v15 = +[WCM_PolicyManager singleton];
  v16 = 1300;
LABEL_42:

  [v15 updateControllerState:v16];
}

- (void)handlePowerState:(BOOL)a3
{
  v3 = *(&self->deviceManager + 4);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009EA10;
  v4[3] = &unk_10023E008;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(v3, v4);
}

- (void)syncAllBTConnections:(id)a3 shouldAdd:(BOOL)a4
{
  v4 = a4;
  v7 = [(WCM_BTController *)self allBTConnections];
  objc_sync_enter(v7);
  if (v4)
  {
    if (([(NSMutableArray *)[(WCM_BTController *)self allBTConnections] containsObject:a3]& 1) == 0)
    {
      [(NSMutableArray *)[(WCM_BTController *)self allBTConnections] addObject:a3];
    }
  }

  else if ([(NSMutableArray *)[(WCM_BTController *)self allBTConnections] containsObject:a3])
  {
    [(NSMutableArray *)[(WCM_BTController *)self allBTConnections] removeObject:a3];
  }

  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];

  objc_sync_exit(v7);
}

- (void)handleCBDeviceFound:(id)a3
{
  if ((([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] & 1) != 0 || objc_msgSend(objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager, "singleton"), "activeCoexFeatures"), "containsObject:", @"hpcellularstatemonitorsupport")) && objc_msgSend(a3, "connectedServices"))
  {
    [a3 btAddressData];
    [(WCM_BTController *)self syncAllBTConnections:CUPrintNSDataAddress() shouldAdd:1];
  }

  if (([a3 connectedServices] & 0x20) != 0 || (objc_msgSend(a3, "connectedServices") & 0x400000) != 0)
  {
    v5 = [WCM_BTConnection alloc];
    [(WCM_BTConnection *)v5 initWithCBDevice:a3];
    v6 = [(WCM_BTController *)self btConnections];
    objc_sync_enter(v6);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(WCM_BTController *)self btConnections];
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = *v13;
LABEL_9:
      v10 = 0;
      while (1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if ([-[WCM_BTConnection getAddress](v5 "getAddress")])
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v8)
          {
            goto LABEL_9;
          }

          goto LABEL_15;
        }
      }

      if ([(WCM_BTConnection *)v5 isEqual:v11])
      {
        goto LABEL_19;
      }

      [(NSMutableArray *)[(WCM_BTController *)self btConnections] removeObject:v11];
      [(NSMutableArray *)[(WCM_BTController *)self btConnections] addObject:v5];
      [WCM_Logging logLevel:2 message:@"Updated BT connection with info %@", [(WCM_BTConnection *)v5 description]];
    }

    else
    {
LABEL_15:
      [(NSMutableArray *)[(WCM_BTController *)self btConnections] addObject:v5];
      [WCM_Logging logLevel:2 message:@"Added new BT connection with info %@", [(WCM_BTConnection *)v5 description]];
    }

    [(WCM_BTController *)self countBTConnections];
    [(WCM_BTController *)self printBTConnections];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
LABEL_19:
    objc_sync_exit(v6);
  }
}

- (void)handleCBDeviceLost:(id)a3
{
  [a3 btAddressData];
  v4 = CUPrintNSDataAddress();
  if (v4)
  {
    v5 = v4;
    if (([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] & 1) != 0 || objc_msgSend(objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager, "singleton"), "activeCoexFeatures"), "containsObject:", @"hpcellularstatemonitorsupport"))
    {
      [(WCM_BTController *)self syncAllBTConnections:v5 shouldAdd:0];
    }

    v6 = [(WCM_BTController *)self btConnections];
    objc_sync_enter(v6);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(WCM_BTController *)self btConnections];
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = *v13;
LABEL_7:
      v10 = 0;
      while (1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (![v11 getAddress])
        {
          break;
        }

        if ([v5 isEqualToString:{objc_msgSend(v11, "getAddress")}])
        {
          +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 2, @"Removing connection with info %@", [v11 description]);
          [(NSMutableArray *)[(WCM_BTController *)self btConnections] removeObject:v11];
          objc_sync_exit(v6);
          [(WCM_BTController *)self countBTConnections];
          [(WCM_BTController *)self printBTConnections];
          [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
          [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
          [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
          return;
        }

        if (v8 == ++v10)
        {
          v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v8)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }

    objc_sync_exit(v6);
    [WCM_Logging logLevel:3 message:@"Removing connection with address %@ did not exist", v5];
  }
}

- (void)countBTConnections
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(WCM_BTController *)self btConnections];
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v2);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 getActiveService] == 1 || objc_msgSend(v11, "getActiveService") == 2)
        {
          if ([v11 getInterval] == 7500)
          {
            ++v7;
          }

          if ([v11 getInterval] == 10000)
          {
            ++v8;
          }

          if ([v11 getActiveService] == 1)
          {
            ++v5;
          }

          if ([v11 getActiveService] == 2)
          {
            ++v6;
          }
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  [(WCM_BTController *)self setNumHIDDevice:v5];
  [(WCM_BTController *)self setNumLEDevice:v6];
  [(WCM_BTController *)self setNumGameCtrlDev75ms:v7];
  [(WCM_BTController *)self setNumGameCtrlDev10ms:v8];
}

- (void)handleAADeviceFound:(id)a3
{
  v5 = -[NSString isEqualToString:](-[WCM_BTController AoSDeviceID](self, "AoSDeviceID"), "isEqualToString:", [a3 identifier]);
  v6 = [a3 streamStateAoS];
  if ((v5 & 1) == 0)
  {
    if (v6 != 2)
    {
      v15 = [a3 streamStateAoS];
      if (v15 != 3)
      {
        return;
      }

      v16 = [a3 frequencyBand];
      if (v16 == 2)
      {
        v17 = @"BTController: New 5GHz Bi-Dir AoS session started";
      }

      else
      {
        v17 = @"BTController: New 2GHz Bi-Dir AoS session started";
      }

      if (v16 == 2)
      {
        v18 = &OBJC_IVAR___WCM_BTController_num5GHzAoSBiAudioDevice;
      }

      else
      {
        v18 = &OBJC_IVAR___WCM_BTController_num2GHzAoSBiAudioDevice;
      }

      [WCM_Logging logLevel:2 message:v17];
      *(&self->super.super.isa + *v18) = 1;
      -[WCM_BTController setAoSDeviceID:](self, "setAoSDeviceID:", [a3 identifier]);
      goto LABEL_42;
    }

    v9 = [a3 frequencyBand];
    if (v9 == 2)
    {
      v10 = @"BTController: New 5GHz Uni-Dir AoS session started";
    }

    else
    {
      v10 = @"BTController: New 2GHz Uni-Dir AoS session started";
    }

    if (v9 == 2)
    {
      v11 = &OBJC_IVAR___WCM_BTController_num5GHzAoSUniAudioDevice;
    }

    else
    {
      v11 = &OBJC_IVAR___WCM_BTController_num2GHzAoSUniAudioDevice;
    }

    [WCM_Logging logLevel:2 message:v10];
    *(&self->super.super.isa + *v11) = 1;
    -[WCM_BTController setAoSDeviceID:](self, "setAoSDeviceID:", [a3 identifier]);
LABEL_39:
    v21 = self;
    v22 = 6;
LABEL_43:
    [(WCM_BTController *)v21 setAudioType:v22];
    goto LABEL_44;
  }

  if (v6 == 2)
  {
    if ([a3 frequencyBand] == 2)
    {
      v7 = &self->num2GHzAoSUniAudioDevice + 4;
      if (!*(&self->num2GHzAoSUniAudioDevice + 4))
      {
        v8 = @"BTController: Updating link to 5GHz AoS Uni-Dir";
LABEL_38:
        [(WCM_BTController *)self clearAoSDeviceCounts];
        *v7 = 1;
        [WCM_Logging logLevel:2 message:v8];
        goto LABEL_39;
      }
    }

    else
    {
      v7 = &self->numLLADevice + 4;
      if (!*(&self->numLLADevice + 4))
      {
        v8 = @"BTController: Updating link to 2GHz AoS Uni-Dir";
        goto LABEL_38;
      }
    }

    v19 = self;
    v20 = 6;
    goto LABEL_34;
  }

  v12 = [a3 streamStateAoS];
  if (v12 != 3)
  {
    [(WCM_BTController *)self setAoSDeviceID:&stru_100255120];
    [(WCM_BTController *)self clearAoSDeviceCounts];
    [(WCM_BTController *)self setAudioType:0];
    [WCM_Logging logLevel:2 message:@"BTController: Dropping AoS Link"];
LABEL_44:
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    [(WCM_BTController *)self printBTConnections];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    v23 = +[WCM_PolicyManager singleton];

    [v23 updateControllerState:1300];
    return;
  }

  if ([a3 frequencyBand] == 2)
  {
    v13 = &self->num2GHzAoSBiAudioDevice + 4;
    if (!*(&self->num2GHzAoSBiAudioDevice + 4))
    {
      v14 = @"BTController: Updating link to 5GHz AoS Bi-Dir";
LABEL_41:
      [(WCM_BTController *)self clearAoSDeviceCounts];
      *v13 = 1;
      [WCM_Logging logLevel:2 message:v14];
LABEL_42:
      v21 = self;
      v22 = 7;
      goto LABEL_43;
    }
  }

  else
  {
    v13 = &self->num5GHzAoSUniAudioDevice + 4;
    if (!*(&self->num5GHzAoSUniAudioDevice + 4))
    {
      v14 = @"BTController: Updating link to 2GHz AoS Bi-Dir";
      goto LABEL_41;
    }
  }

  v19 = self;
  v20 = 7;
LABEL_34:

  [(WCM_BTController *)v19 setAudioType:v20];
}

- (void)handleAADeviceLost:(id)a3
{
  if (-[NSString isEqualToString:](-[WCM_BTController AoSDeviceID](self, "AoSDeviceID"), "isEqualToString:", [a3 identifier]))
  {
    [(WCM_BTController *)self setAoSDeviceID:&stru_100255120];
    [(WCM_BTController *)self clearAoSDeviceCounts];
    [WCM_Logging logLevel:2 message:@"AudioAccessory Device Lost"];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    [(WCM_BTController *)self printBTConnections];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    v4 = +[WCM_PolicyManager singleton];

    [v4 updateControllerState:1300];
  }
}

- (void)printBTConnections
{
  v3 = *&self->_audioType;
  v4 = *(&self->numSCODevice + 4);
  v5 = [(WCM_BTController *)self getNum2GHzAclA2DPDevices];
  v6 = *(&self->num2GHzAoSUniAudioDevice + 4);
  [WCM_Logging logLevel:2 message:@"BT Connections: SCO:%lu eSCO:%lu ACL-A2DP:%lu HID:%lu LE:%lu LEA:%lu 2GAoSUni:%lu 2GAoSBi:%lu 5GAoSUni:%lu 5GAoSBi:%lu", v3, v4, v5, *(&self->numA2DPDevice + 4), *(&self->numLEADevice + 4), *(&self->numGameCtrlDev10ms + 4), *(&self->numLLADevice + 4), *(&self->num5GHzAoSUniAudioDevice + 4), v6, *(&self->num2GHzAoSBiAudioDevice + 4)];
}

- (void)clearAoSDeviceCounts
{
  *(&self->numLLADevice + 4) = 0;
  *(&self->num2GHzAoSUniAudioDevice + 4) = 0;
  *(&self->num5GHzAoSUniAudioDevice + 4) = 0;
  *(&self->num2GHzAoSBiAudioDevice + 4) = 0;
}

- (BOOL)getOverLEDeviceSingleConnection
{
  if (*(&self->numLEADevice + 4) > 1)
  {
    return 1;
  }

  v3 = *(&self->numGameCtrlDev10ms + 4) + *(&self->numA2DPDevice + 4);
  return [(WCM_BTController *)self getNum2GHzAclA2DPDevices]+ *&self->_audioType + v3 + *(&self->numSCODevice + 4) + *(&self->numLLADevice + 4) + *(&self->num5GHzAoSUniAudioDevice + 4) != 0;
}

- (void)updateThreadRadioStatus:(BOOL)a3
{
  v4 = xpc_BOOL_create(a3);
  [WCM_Logging logLevel:2 message:@"WCMBTSetThreadRadioStatus: %@", v4];
  [(WCM_Controller *)self sendMessage:1447 withArgs:v4];

  xpc_release(v4);
}

@end