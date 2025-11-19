@interface DABluetoothPairingManager
- (DABluetoothPairingManager)init;
- (id)_getNextTask;
- (id)getCurrentTaskBluetoothIdentifier;
- (void)_reportEvent:(int64_t)a3 error:(id)a4 endCurrentTask:(BOOL)a5;
- (void)_reportFailure:(id)a3;
- (void)_runNextTask;
- (void)cancelAll;
- (void)cancelCurrentTask;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)forgetBluetoothDevice:(id)a3 completion:(id)a4;
- (void)invalidate;
- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4;
- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5;
- (void)pairingAgent:(id)a3 peerDidRequestPairing:(id)a4 type:(int64_t)a5 passkey:(id)a6;
- (void)pairingAgent:(id)a3 peerDidUnpair:(id)a4;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)persistBluetoothDevice:(id)a3 pairingRequired:(BOOL)a4 pairWithCTKD:(BOOL)a5 displayName:(id)a6 taskTimeout:(id)a7 appConfirmsAuth:(BOOL)a8 supportsHID:(BOOL)a9 completion:(id)a10;
@end

@implementation DABluetoothPairingManager

- (DABluetoothPairingManager)init
{
  v11.receiver = self;
  v11.super_class = DABluetoothPairingManager;
  v2 = [(DABluetoothPairingManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = 0;

    cbCentralManager = v3->_cbCentralManager;
    v3->_cbCentralManager = 0;

    cbPairingAgent = v3->_cbPairingAgent;
    v3->_cbPairingAgent = 0;

    v3->_currentTaskEndEvent = 0;
    v7 = objc_opt_new();
    taskList = v3->_taskList;
    v3->_taskList = v7;

    *&v3->_cbPowerOn = 0;
    v3->_taskTimeoutSeconds = 30.0;
    v9 = v3;
  }

  return v3;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C0F4;
  block[3] = &unk_100058B58;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)persistBluetoothDevice:(id)a3 pairingRequired:(BOOL)a4 pairWithCTKD:(BOOL)a5 displayName:(id)a6 taskTimeout:(id)a7 appConfirmsAuth:(BOOL)a8 supportsHID:(BOOL)a9 completion:(id)a10
{
  v16 = a3;
  v17 = a6;
  v18 = a7;
  v19 = a10;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100036810();
  }

  v20 = objc_retainBlock(v19);
  v21 = v16;
  v22 = v17;
  v23 = v18;
  bluetoothUUID = self->_bluetoothUUID;
  self->_bluetoothUUID = v21;

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10002C2DC;
    v26[3] = &unk_100059980;
    v26[4] = self;
    v26[5] = v21;
    v26[7] = v23;
    v26[8] = v20;
    v27 = a4;
    v28 = a5;
    v26[6] = v22;
    v29 = a8;
    v30 = a9;
    dispatch_async(dispatchQueue, v26);
  }

  else
  {
    sub_100036850();
  }
}

- (void)forgetBluetoothDevice:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    cbCentralManager = self->_cbCentralManager;
    LogPrintF();
  }

  v8 = objc_retainBlock(v7);
  v9 = v6;
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002C46C;
    block[3] = &unk_1000599A8;
    block[4] = self;
    block[5] = v9;
    block[6] = v8;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    sub_1000368B0();
  }
}

- (void)cancelCurrentTask
{
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100036910(self);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C584;
  block[3] = &unk_100058B58;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)cancelAll
{
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000369BC(self);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C7E8;
  block[3] = &unk_100058B58;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (id)getCurrentTaskBluetoothIdentifier
{
  currentTask = self->_currentTask;
  if (currentTask)
  {
    currentTask = [currentTask bluetoothUUID];
    v2 = vars8;
  }

  return currentTask;
}

- (void)_runNextTask
{
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100036A4C(self);
  }

  p_currentTask = &self->_currentTask;
  if (self->_currentTask)
  {
    sub_100036A90(&self->_currentTask);
    return;
  }

  if (self->_cbCentralManager)
  {
    if (!self->_cbPowerOn)
    {
      return;
    }

    if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100036B14();
    }

    if ([(NSMutableArray *)self->_taskList count])
    {
      if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
      {
        sub_100036B30(&self->_taskList);
      }

      v4 = [(DABluetoothPairingManager *)self _getNextTask];
      currentTask = self->_currentTask;
      self->_currentTask = v4;

      self->_currentTaskEndEvent = 0;
      v6 = self->_currentTask;
      v7 = [(DABluetoothTask *)v6 taskTimeout];
      v8 = [v7 integerValue];
      dispatchQueue = self->_dispatchQueue;
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10002CF98;
      v33[3] = &unk_100058B58;
      v33[4] = self;
      [(DABluetoothTask *)v6 setTimerTimeout:dispatchQueue queue:v33 handler:v8];

      cbCentralManager = self->_cbCentralManager;
      v11 = [(DABluetoothTask *)self->_currentTask bluetoothUUID];
      v34 = v11;
      v12 = [NSArray arrayWithObjects:&v34 count:1];
      v13 = [(CBCentralManager *)cbCentralManager retrievePeripheralsWithIdentifiers:v12];

      if (!v13 || [v13 count] != 1)
      {
        if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
        {
          sub_100036C78(&self->_currentTask);
        }

        v24 = [(DABluetoothTask *)self->_currentTask bluetoothUUID];
        v30 = self->_currentTask;
        v25 = DAErrorF();
        [(DABluetoothPairingManager *)self _reportFailure:v25, v24, v30];

        goto LABEL_35;
      }

      v14 = [v13 objectAtIndexedSubscript:0];
      cbPeripheral = self->_cbPeripheral;
      self->_cbPeripheral = v14;

      v16 = [(DABluetoothTask *)self->_currentTask btOperation];
      switch(v16)
      {
        case 10:
          goto LABEL_70;
        case 30:
          if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
          {
            sub_100036B70(&self->_cbPeripheral);
          }

          [(CBPairingAgent *)self->_cbPairingAgent unpairPeer:self->_cbPeripheral];
          break;
        case 20:
LABEL_70:
          if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
          {
            sub_100036BB0(&self->_cbPeripheral);
          }

          if ([(CBPairingAgent *)self->_cbPairingAgent isPeerPaired:self->_cbPeripheral])
          {
            if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
            {
              sub_100036BF0(&self->_cbPeripheral);
            }

            [(DABluetoothPairingManager *)self pairingAgent:self->_cbPairingAgent peerDidCompletePairing:self->_cbPeripheral];
          }

          else
          {
            if ([(DABluetoothTask *)*p_currentTask supportsHID]&& ([(CBPairingAgent *)self->_cbPairingAgent isPeerPaired:self->_cbPeripheral]& 1) == 0)
            {
              [(CBPeripheral *)self->_cbPeripheral tag:@"ASK_ALLOW_HID"];
            }

            [(CBCentralManager *)self->_cbCentralManager connectPeripheral:self->_cbPeripheral options:0];
          }

          break;
        default:
          if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
          {
            sub_100036C30(&self->_currentTask);
          }

          v29 = [(DABluetoothTask *)self->_currentTask bluetoothUUID];
          v32 = self->_currentTask;
          v28 = DAErrorF();

          [(DABluetoothPairingManager *)self _reportFailure:v28, v29, v32];
          break;
      }

LABEL_35:

      return;
    }

    if (*p_currentTask)
    {
      v26 = [(DABluetoothTask *)*p_currentTask bluetoothUUID];
      v31 = self->_currentTask;
      v27 = DAErrorF();
      [(DABluetoothPairingManager *)self _reportFailure:v27, v26, v31];
    }

    if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100036CD4();
    }

    [(DABluetoothPairingManager *)self cancelAll];
  }

  else
  {
    if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100036CF0();
    }

    v17 = [CBCentralManager alloc];
    v18 = self->_dispatchQueue;
    v35 = CBManagerNeedsRestrictedStateOperation;
    v36 = &__kCFBooleanTrue;
    v19 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v20 = [v17 initWithDelegate:self queue:v18 options:v19];
    v21 = self->_cbCentralManager;
    self->_cbCentralManager = v20;

    v22 = [(CBCentralManager *)self->_cbCentralManager sharedPairingAgent];
    cbPairingAgent = self->_cbPairingAgent;
    self->_cbPairingAgent = v22;

    [(CBPairingAgent *)self->_cbPairingAgent setDelegate:self];
  }
}

- (void)_reportEvent:(int64_t)a3 error:(id)a4 endCurrentTask:(BOOL)a5
{
  v5 = a5;
  v27 = a4;
  if (dword_1000607A0 > 50 || dword_1000607A0 == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_33;
  }

  if (a3 <= 19)
  {
    if (a3)
    {
      v8 = v27;
      if (a3 == 10)
      {
        v9 = @"DABluetoothEventAccessoryConnected";
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v9 = @"DABluetoothEventUnknown";
LABEL_16:
    v8 = v27;
    goto LABEL_18;
  }

  if (a3 == 20)
  {
    v9 = @"DABluetoothEventCompleted";
    goto LABEL_16;
  }

  if (a3 == 30)
  {
    v9 = @"DABluetoothEventFailed";
    goto LABEL_16;
  }

  v8 = v27;
  if (a3 == 40)
  {
    v9 = @"DABluetoothEventPairingRequested";
    goto LABEL_18;
  }

LABEL_17:
  v9 = @"?";
LABEL_18:
  currentTaskEndEvent = self->_currentTaskEndEvent;
  if (currentTaskEndEvent <= 19)
  {
    if (!currentTaskEndEvent)
    {
      v11 = @"DABluetoothEventUnknown";
      goto LABEL_30;
    }

    if (currentTaskEndEvent == 10)
    {
      v11 = @"DABluetoothEventAccessoryConnected";
      goto LABEL_30;
    }

LABEL_29:
    v11 = @"?";
    goto LABEL_30;
  }

  if (currentTaskEndEvent == 20)
  {
    v11 = @"DABluetoothEventCompleted";
    goto LABEL_30;
  }

  if (currentTaskEndEvent == 30)
  {
    v11 = @"DABluetoothEventFailed";
    goto LABEL_30;
  }

  if (currentTaskEndEvent != 40)
  {
    goto LABEL_29;
  }

  v11 = @"DABluetoothEventPairingRequested";
LABEL_30:
  v12 = "no";
  if (v5)
  {
    v12 = "yes";
  }

  v25 = v12;
  currentTask = self->_currentTask;
  v23 = v11;
  v24 = v8;
  v22 = v9;
  LogPrintF();
LABEL_33:
  if (!self->_currentTaskEndEvent)
  {
    v13 = self->_currentTask;
    if (v13)
    {
      v14 = [(DABluetoothTask *)v13 pairedCTKD];
      v15 = [(CBPeripheral *)self->_cbPeripheral identifier];
      v16 = [[DABluetoothPairingInfo alloc] initWithBluetoothIdentifier:v15 pairedCTKD:v14 appConfirmsAuth:-[DABluetoothTask appConfirmsAuth](self->_currentTask pairingRequired:{"appConfirmsAuth", v22, v23, v24, v25, currentTask), -[DABluetoothTask btOperation](self->_currentTask, "btOperation") == 10}];
      if (!v27)
      {
        cbPeripheral = self->_cbPeripheral;
        v18 = [(DABluetoothTask *)self->_currentTask displayName];
        [(CBPeripheral *)cbPeripheral setCustomProperty:@"ASK_DISPLAY_NAME" value:v18];
      }

      v19 = [(DABluetoothTask *)self->_currentTask eventHandler];
      (v19)[2](v19, a3, v16, v27);
    }
  }

  if (v5)
  {
    self->_busy = [(NSMutableArray *)self->_taskList count]!= 0;
    [(DABluetoothTask *)self->_currentTask cancelTimer];
    v20 = self->_cbPeripheral;
    self->_cbPeripheral = 0;
    self->_currentTaskEndEvent = a3;

    v21 = self->_currentTask;
    self->_currentTask = 0;

    [(DABluetoothPairingManager *)self _runNextTask];
  }
}

- (void)_reportFailure:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (dword_1000607A0 <= 50)
  {
    if (dword_1000607A0 != -1 || (v5 = _LogCategory_Initialize(), v4 = v8, v5))
    {
      currentTask = self->_currentTask;
      v7 = v4;
      LogPrintF();
      v4 = v8;
    }
  }

  [(DABluetoothPairingManager *)self _reportEvent:30 error:v4 endCurrentTask:1, currentTask, v7];
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v5 = self->_cbCentralManager;
  v4 = [(CBCentralManager *)v5 state]== 5 || [(CBCentralManager *)v5 state]== 10;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100036D28();
  }

  self->_cbPowerOn = v4;
  [(DABluetoothPairingManager *)self _runNextTask];
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    v18 = v7;
    currentTask = self->_currentTask;
    v17 = v6;
    LogPrintF();
  }

  if (!v7 && self->_currentTask && ([v6 identifier], v8 = objc_claimAutoreleasedReturnValue(), -[DABluetoothTask bluetoothUUID](self->_currentTask, "bluetoothUUID"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, v10))
  {
    mitmPairing = self->_mitmPairing;
    v12 = [(DABluetoothTask *)self->_currentTask pairCTKD];
    v21[0] = CBPairingOptionsUseMITMAuthentication;
    v13 = [NSNumber numberWithBool:mitmPairing];
    v21[1] = @"kCBMsgArgPairingOptionsDisableCTKD";
    v22[0] = v13;
    v14 = [NSNumber numberWithInt:v12 ^ 1];
    v22[1] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];

    if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
    {
      v17 = v6;
      v18 = v15;
      LogPrintF();
    }

    [(CBPairingAgent *)self->_cbPairingAgent pairPeer:v6 options:v15, v17, v18, currentTask];
  }

  else
  {
    if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
    {
      v17 = v7;
      v18 = v6;
      LogPrintF();
    }

    v15 = [v6 identifier];
    v19 = self->_currentTask;
    v16 = DAErrorF();
    [(DABluetoothPairingManager *)self _reportFailure:v16, v15, v19];
  }
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v20 = a3;
  v6 = a4;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    v17 = v6;
    currentTask = self->_currentTask;
    LogPrintF();
  }

  if (!self->_currentTask || ([v6 identifier], v7 = objc_claimAutoreleasedReturnValue(), -[DABluetoothTask bluetoothUUID](self->_currentTask, "bluetoothUUID"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, v7, !v9))
  {
    if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100036DE8();
    }

    goto LABEL_16;
  }

  v10 = [(DABluetoothTask *)self->_currentTask btOperation];
  v11 = self->_currentTask;
  if (v10 != 10)
  {
    if ([(DABluetoothTask *)v11 btOperation]== 20)
    {
      [(CBPeripheral *)self->_cbPeripheral tag:@"DA_ASK_RETAIN_DEVICE"];
      v14 = [(DABluetoothTask *)self->_currentTask appConfirmsAuth]^ 1;
      v12 = self;
      v13 = 20;
LABEL_22:
      [(DABluetoothPairingManager *)v12 _reportEvent:v13 error:0 endCurrentTask:v14, v17, currentTask];
      goto LABEL_17;
    }

    if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100036D68();
    }

LABEL_16:
    v15 = [v6 identifier];
    v19 = self->_currentTask;
    v16 = DAErrorF();
    [(DABluetoothPairingManager *)self _reportFailure:v16, v15, v19];

    goto LABEL_17;
  }

  if ([(DABluetoothTask *)v11 appConfirmsAuth])
  {
    if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100036DA8();
    }

    v12 = self;
    v13 = 10;
    v14 = 0;
    goto LABEL_22;
  }

  [v6 setDelegate:self];
  [v6 discoverServices:0];
LABEL_17:
}

- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    v13 = v9;
    currentTask = self->_currentTask;
    v12 = v8;
    LogPrintF();
  }

  [(CBPeripheral *)self->_cbPeripheral untag:@"DA_ASK_RETAIN_DEVICE", v12, v13, currentTask];
  v10 = [v8 identifier];
  v14 = self->_currentTask;
  v11 = DAErrorF();
  [(DABluetoothPairingManager *)self _reportFailure:v11, v10, v14];
}

- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4
{
  v15 = a3;
  v6 = a4;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    v12 = v6;
    currentTask = self->_currentTask;
    LogPrintF();
  }

  if (self->_currentTask)
  {
    v7 = [v6 identifier];
    v8 = [(DABluetoothTask *)self->_currentTask bluetoothUUID];
    v9 = [v7 isEqual:v8];

    if (v9)
    {
      if ([(DABluetoothTask *)self->_currentTask supportsHID]&& ([(CBPeripheral *)self->_cbPeripheral hasTag:@"_HID_DEVICE_"]& 1) == 0)
      {
        [(CBPairingAgent *)self->_cbPairingAgent unpairPeer:self->_cbPeripheral];
        v10 = [v6 identifier];
        v14 = self->_currentTask;
        v11 = DAErrorF();
        [(DABluetoothPairingManager *)self _reportFailure:v11, v10, v14];
      }

      [(CBPeripheral *)self->_cbPeripheral tag:@"DA_ASK_RETAIN_DEVICE", v12, currentTask];
      if ([(DABluetoothTask *)self->_currentTask pairCTKD]&& [(CBPeripheral *)self->_cbPeripheral hasTag:@"_CTKD_"])
      {
        if (self->_blockIncomingClassicCnx)
        {
          [(CBPeripheral *)self->_cbPeripheral tag:@"_DENY_INCOMING_CLASSIC_CONNECTION_"];
        }

        [(DABluetoothTask *)self->_currentTask setPairedCTKD:1];
      }

      [(DABluetoothPairingManager *)self _reportEvent:20 error:0 endCurrentTask:[(DABluetoothTask *)self->_currentTask appConfirmsAuth]^ 1];
    }
  }
}

- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100036E28(v9, self);
  }

  if (self->_currentTask)
  {
    v10 = [v8 identifier];
    v11 = [(DABluetoothTask *)self->_currentTask bluetoothUUID];
    v12 = [v10 isEqual:v11];

    if (v12)
    {
      [v8 untag:@"DA_ASK_RETAIN_DEVICE"];
      v13 = [v8 identifier];
      currentTask = self->_currentTask;
      v14 = DAErrorF();
      [(DABluetoothPairingManager *)self _reportFailure:v14, v13, currentTask, v9];
    }
  }
}

- (void)pairingAgent:(id)a3 peerDidUnpair:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    currentTask = self->_currentTask;
    LogPrintF();
  }

  if (self->_currentTask)
  {
    v7 = [v6 identifier];
    v8 = [(DABluetoothTask *)self->_currentTask bluetoothUUID];
    v9 = [v7 isEqual:v8];

    if (v9)
    {
      [(DABluetoothPairingManager *)self _reportEvent:20 error:0 endCurrentTask:1];
    }
  }
}

- (void)pairingAgent:(id)a3 peerDidRequestPairing:(id)a4 type:(int64_t)a5 passkey:(id)a6
{
  v30 = a3;
  v10 = a4;
  v11 = a6;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    v26 = v11;
    currentTask = self->_currentTask;
    v24 = v10;
    v25 = a5;
    LogPrintF();
  }

  if (self->_currentTask)
  {
    v12 = [v10 identifier];
    v13 = [(DABluetoothTask *)self->_currentTask bluetoothUUID];
    v14 = [v12 isEqual:v13];

    if (v14)
    {
      if (a5 > 1)
      {
        if (a5 == 4)
        {
          v15 = 0;
          v16 = 40;
          goto LABEL_17;
        }

        if (a5 == 2)
        {
          v15 = 0;
          v16 = 30;
          goto LABEL_17;
        }
      }

      else
      {
        if (!a5)
        {
          v15 = 0;
          v16 = 10;
          goto LABEL_17;
        }

        if (a5 == 1)
        {
          v15 = 0;
          v16 = 20;
LABEL_17:
          v17 = v11;
          if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
          {
            sub_100036E9C();
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else if (v15)
          {
LABEL_21:
            v18 = [v10 identifier];
            v27 = self->_currentTask;
            v19 = DAErrorF();
            [(DABluetoothPairingManager *)self _reportEvent:30 error:v19 endCurrentTask:1, v18, a5, v27];
LABEL_26:

            goto LABEL_27;
          }

          v20 = [DABluetoothPairingInfo alloc];
          v21 = [v10 identifier];
          v18 = [v20 initWithBluetoothIdentifier:v21 pairingType:v16];

          if (v18)
          {
            [v18 setPasskey:v17];
            v19 = [(DABluetoothTask *)self->_currentTask eventHandler];
            (v19)[2](v19, 40, v18, 0);
          }

          else
          {
            v19 = [(DABluetoothTask *)self->_currentTask eventHandler];
            v22 = [v10 identifier];
            v28 = self->_currentTask;
            v23 = DAErrorF();
            (v19)[2](v19, 30, 0, v23);
          }

          goto LABEL_26;
        }
      }

      v16 = 0;
      v15 = 1;
      goto LABEL_17;
    }
  }

LABEL_27:
}

- (id)_getNextTask
{
  if ([(NSMutableArray *)self->_taskList count])
  {
    v3 = [(NSMutableArray *)self->_taskList objectAtIndexedSubscript:0];
    [(NSMutableArray *)self->_taskList removeObjectAtIndex:0];
    if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
    {
      taskList = self->_taskList;
      LogPrintF();
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end