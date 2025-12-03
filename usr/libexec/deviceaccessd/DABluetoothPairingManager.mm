@interface DABluetoothPairingManager
- (DABluetoothPairingManager)init;
- (id)_getNextTask;
- (id)getCurrentTaskBluetoothIdentifier;
- (void)_reportEvent:(int64_t)event error:(id)error endCurrentTask:(BOOL)task;
- (void)_reportFailure:(id)failure;
- (void)_runNextTask;
- (void)cancelAll;
- (void)cancelCurrentTask;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)forgetBluetoothDevice:(id)device completion:(id)completion;
- (void)invalidate;
- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing;
- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error;
- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey;
- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)persistBluetoothDevice:(id)device pairingRequired:(BOOL)required pairWithCTKD:(BOOL)d displayName:(id)name taskTimeout:(id)timeout appConfirmsAuth:(BOOL)auth supportsHID:(BOOL)iD completion:(id)self0;
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

- (void)persistBluetoothDevice:(id)device pairingRequired:(BOOL)required pairWithCTKD:(BOOL)d displayName:(id)name taskTimeout:(id)timeout appConfirmsAuth:(BOOL)auth supportsHID:(BOOL)iD completion:(id)self0
{
  deviceCopy = device;
  nameCopy = name;
  timeoutCopy = timeout;
  completionCopy = completion;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100036810();
  }

  v20 = objc_retainBlock(completionCopy);
  v21 = deviceCopy;
  v22 = nameCopy;
  v23 = timeoutCopy;
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
    requiredCopy = required;
    dCopy = d;
    v26[6] = v22;
    authCopy = auth;
    iDCopy = iD;
    dispatch_async(dispatchQueue, v26);
  }

  else
  {
    sub_100036850();
  }
}

- (void)forgetBluetoothDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    cbCentralManager = self->_cbCentralManager;
    LogPrintF();
  }

  v8 = objc_retainBlock(completionCopy);
  v9 = deviceCopy;
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

      _getNextTask = [(DABluetoothPairingManager *)self _getNextTask];
      currentTask = self->_currentTask;
      self->_currentTask = _getNextTask;

      self->_currentTaskEndEvent = 0;
      v6 = self->_currentTask;
      taskTimeout = [(DABluetoothTask *)v6 taskTimeout];
      integerValue = [taskTimeout integerValue];
      dispatchQueue = self->_dispatchQueue;
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10002CF98;
      v33[3] = &unk_100058B58;
      v33[4] = self;
      [(DABluetoothTask *)v6 setTimerTimeout:dispatchQueue queue:v33 handler:integerValue];

      cbCentralManager = self->_cbCentralManager;
      bluetoothUUID = [(DABluetoothTask *)self->_currentTask bluetoothUUID];
      v34 = bluetoothUUID;
      v12 = [NSArray arrayWithObjects:&v34 count:1];
      v13 = [(CBCentralManager *)cbCentralManager retrievePeripheralsWithIdentifiers:v12];

      if (!v13 || [v13 count] != 1)
      {
        if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
        {
          sub_100036C78(&self->_currentTask);
        }

        bluetoothUUID2 = [(DABluetoothTask *)self->_currentTask bluetoothUUID];
        v30 = self->_currentTask;
        v25 = DAErrorF();
        [(DABluetoothPairingManager *)self _reportFailure:v25, bluetoothUUID2, v30];

        goto LABEL_35;
      }

      v14 = [v13 objectAtIndexedSubscript:0];
      cbPeripheral = self->_cbPeripheral;
      self->_cbPeripheral = v14;

      btOperation = [(DABluetoothTask *)self->_currentTask btOperation];
      switch(btOperation)
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

          bluetoothUUID3 = [(DABluetoothTask *)self->_currentTask bluetoothUUID];
          v32 = self->_currentTask;
          v28 = DAErrorF();

          [(DABluetoothPairingManager *)self _reportFailure:v28, bluetoothUUID3, v32];
          break;
      }

LABEL_35:

      return;
    }

    if (*p_currentTask)
    {
      bluetoothUUID4 = [(DABluetoothTask *)*p_currentTask bluetoothUUID];
      v31 = self->_currentTask;
      v27 = DAErrorF();
      [(DABluetoothPairingManager *)self _reportFailure:v27, bluetoothUUID4, v31];
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

    sharedPairingAgent = [(CBCentralManager *)self->_cbCentralManager sharedPairingAgent];
    cbPairingAgent = self->_cbPairingAgent;
    self->_cbPairingAgent = sharedPairingAgent;

    [(CBPairingAgent *)self->_cbPairingAgent setDelegate:self];
  }
}

- (void)_reportEvent:(int64_t)event error:(id)error endCurrentTask:(BOOL)task
{
  taskCopy = task;
  errorCopy = error;
  if (dword_1000607A0 > 50 || dword_1000607A0 == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_33;
  }

  if (event <= 19)
  {
    if (event)
    {
      v8 = errorCopy;
      if (event == 10)
      {
        v9 = @"DABluetoothEventAccessoryConnected";
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v9 = @"DABluetoothEventUnknown";
LABEL_16:
    v8 = errorCopy;
    goto LABEL_18;
  }

  if (event == 20)
  {
    v9 = @"DABluetoothEventCompleted";
    goto LABEL_16;
  }

  if (event == 30)
  {
    v9 = @"DABluetoothEventFailed";
    goto LABEL_16;
  }

  v8 = errorCopy;
  if (event == 40)
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
  if (taskCopy)
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
      pairedCTKD = [(DABluetoothTask *)v13 pairedCTKD];
      identifier = [(CBPeripheral *)self->_cbPeripheral identifier];
      v16 = [[DABluetoothPairingInfo alloc] initWithBluetoothIdentifier:identifier pairedCTKD:pairedCTKD appConfirmsAuth:-[DABluetoothTask appConfirmsAuth](self->_currentTask pairingRequired:{"appConfirmsAuth", v22, v23, v24, v25, currentTask), -[DABluetoothTask btOperation](self->_currentTask, "btOperation") == 10}];
      if (!errorCopy)
      {
        cbPeripheral = self->_cbPeripheral;
        displayName = [(DABluetoothTask *)self->_currentTask displayName];
        [(CBPeripheral *)cbPeripheral setCustomProperty:@"ASK_DISPLAY_NAME" value:displayName];
      }

      eventHandler = [(DABluetoothTask *)self->_currentTask eventHandler];
      (eventHandler)[2](eventHandler, event, v16, errorCopy);
    }
  }

  if (taskCopy)
  {
    self->_busy = [(NSMutableArray *)self->_taskList count]!= 0;
    [(DABluetoothTask *)self->_currentTask cancelTimer];
    v20 = self->_cbPeripheral;
    self->_cbPeripheral = 0;
    self->_currentTaskEndEvent = event;

    v21 = self->_currentTask;
    self->_currentTask = 0;

    [(DABluetoothPairingManager *)self _runNextTask];
  }
}

- (void)_reportFailure:(id)failure
{
  failureCopy = failure;
  v8 = failureCopy;
  if (dword_1000607A0 <= 50)
  {
    if (dword_1000607A0 != -1 || (v5 = _LogCategory_Initialize(), failureCopy = v8, v5))
    {
      currentTask = self->_currentTask;
      v7 = failureCopy;
      LogPrintF();
      failureCopy = v8;
    }
  }

  [(DABluetoothPairingManager *)self _reportEvent:30 error:failureCopy endCurrentTask:1, currentTask, v7];
}

- (void)centralManagerDidUpdateState:(id)state
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

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  peripheralCopy = peripheral;
  servicesCopy = services;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    v18 = servicesCopy;
    currentTask = self->_currentTask;
    v17 = peripheralCopy;
    LogPrintF();
  }

  if (!servicesCopy && self->_currentTask && ([peripheralCopy identifier], v8 = objc_claimAutoreleasedReturnValue(), -[DABluetoothTask bluetoothUUID](self->_currentTask, "bluetoothUUID"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, v10))
  {
    mitmPairing = self->_mitmPairing;
    pairCTKD = [(DABluetoothTask *)self->_currentTask pairCTKD];
    v21[0] = CBPairingOptionsUseMITMAuthentication;
    v13 = [NSNumber numberWithBool:mitmPairing];
    v21[1] = @"kCBMsgArgPairingOptionsDisableCTKD";
    v22[0] = v13;
    v14 = [NSNumber numberWithInt:pairCTKD ^ 1];
    v22[1] = v14;
    identifier = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];

    if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
    {
      v17 = peripheralCopy;
      v18 = identifier;
      LogPrintF();
    }

    [(CBPairingAgent *)self->_cbPairingAgent pairPeer:peripheralCopy options:identifier, v17, v18, currentTask];
  }

  else
  {
    if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
    {
      v17 = servicesCopy;
      v18 = peripheralCopy;
      LogPrintF();
    }

    identifier = [peripheralCopy identifier];
    v19 = self->_currentTask;
    v16 = DAErrorF();
    [(DABluetoothPairingManager *)self _reportFailure:v16, identifier, v19];
  }
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    v17 = peripheralCopy;
    currentTask = self->_currentTask;
    LogPrintF();
  }

  if (!self->_currentTask || ([peripheralCopy identifier], v7 = objc_claimAutoreleasedReturnValue(), -[DABluetoothTask bluetoothUUID](self->_currentTask, "bluetoothUUID"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, v7, !v9))
  {
    if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100036DE8();
    }

    goto LABEL_16;
  }

  btOperation = [(DABluetoothTask *)self->_currentTask btOperation];
  v11 = self->_currentTask;
  if (btOperation != 10)
  {
    if ([(DABluetoothTask *)v11 btOperation]== 20)
    {
      [(CBPeripheral *)self->_cbPeripheral tag:@"DA_ASK_RETAIN_DEVICE"];
      v14 = [(DABluetoothTask *)self->_currentTask appConfirmsAuth]^ 1;
      selfCopy2 = self;
      v13 = 20;
LABEL_22:
      [(DABluetoothPairingManager *)selfCopy2 _reportEvent:v13 error:0 endCurrentTask:v14, v17, currentTask];
      goto LABEL_17;
    }

    if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100036D68();
    }

LABEL_16:
    identifier = [peripheralCopy identifier];
    v19 = self->_currentTask;
    v16 = DAErrorF();
    [(DABluetoothPairingManager *)self _reportFailure:v16, identifier, v19];

    goto LABEL_17;
  }

  if ([(DABluetoothTask *)v11 appConfirmsAuth])
  {
    if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100036DA8();
    }

    selfCopy2 = self;
    v13 = 10;
    v14 = 0;
    goto LABEL_22;
  }

  [peripheralCopy setDelegate:self];
  [peripheralCopy discoverServices:0];
LABEL_17:
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  errorCopy = error;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    v13 = errorCopy;
    currentTask = self->_currentTask;
    v12 = peripheralCopy;
    LogPrintF();
  }

  [(CBPeripheral *)self->_cbPeripheral untag:@"DA_ASK_RETAIN_DEVICE", v12, v13, currentTask];
  identifier = [peripheralCopy identifier];
  v14 = self->_currentTask;
  v11 = DAErrorF();
  [(DABluetoothPairingManager *)self _reportFailure:v11, identifier, v14];
}

- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing
{
  agentCopy = agent;
  pairingCopy = pairing;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    v12 = pairingCopy;
    currentTask = self->_currentTask;
    LogPrintF();
  }

  if (self->_currentTask)
  {
    identifier = [pairingCopy identifier];
    bluetoothUUID = [(DABluetoothTask *)self->_currentTask bluetoothUUID];
    v9 = [identifier isEqual:bluetoothUUID];

    if (v9)
    {
      if ([(DABluetoothTask *)self->_currentTask supportsHID]&& ([(CBPeripheral *)self->_cbPeripheral hasTag:@"_HID_DEVICE_"]& 1) == 0)
      {
        [(CBPairingAgent *)self->_cbPairingAgent unpairPeer:self->_cbPeripheral];
        identifier2 = [pairingCopy identifier];
        v14 = self->_currentTask;
        v11 = DAErrorF();
        [(DABluetoothPairingManager *)self _reportFailure:v11, identifier2, v14];
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

- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error
{
  agentCopy = agent;
  pairingCopy = pairing;
  errorCopy = error;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100036E28(errorCopy, self);
  }

  if (self->_currentTask)
  {
    identifier = [pairingCopy identifier];
    bluetoothUUID = [(DABluetoothTask *)self->_currentTask bluetoothUUID];
    v12 = [identifier isEqual:bluetoothUUID];

    if (v12)
    {
      [pairingCopy untag:@"DA_ASK_RETAIN_DEVICE"];
      identifier2 = [pairingCopy identifier];
      currentTask = self->_currentTask;
      v14 = DAErrorF();
      [(DABluetoothPairingManager *)self _reportFailure:v14, identifier2, currentTask, errorCopy];
    }
  }
}

- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair
{
  agentCopy = agent;
  unpairCopy = unpair;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    currentTask = self->_currentTask;
    LogPrintF();
  }

  if (self->_currentTask)
  {
    identifier = [unpairCopy identifier];
    bluetoothUUID = [(DABluetoothTask *)self->_currentTask bluetoothUUID];
    v9 = [identifier isEqual:bluetoothUUID];

    if (v9)
    {
      [(DABluetoothPairingManager *)self _reportEvent:20 error:0 endCurrentTask:1];
    }
  }
}

- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey
{
  agentCopy = agent;
  pairingCopy = pairing;
  passkeyCopy = passkey;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    v26 = passkeyCopy;
    currentTask = self->_currentTask;
    v24 = pairingCopy;
    typeCopy = type;
    LogPrintF();
  }

  if (self->_currentTask)
  {
    identifier = [pairingCopy identifier];
    bluetoothUUID = [(DABluetoothTask *)self->_currentTask bluetoothUUID];
    v14 = [identifier isEqual:bluetoothUUID];

    if (v14)
    {
      if (type > 1)
      {
        if (type == 4)
        {
          v15 = 0;
          v16 = 40;
          goto LABEL_17;
        }

        if (type == 2)
        {
          v15 = 0;
          v16 = 30;
          goto LABEL_17;
        }
      }

      else
      {
        if (!type)
        {
          v15 = 0;
          v16 = 10;
          goto LABEL_17;
        }

        if (type == 1)
        {
          v15 = 0;
          v16 = 20;
LABEL_17:
          v17 = passkeyCopy;
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
            identifier2 = [pairingCopy identifier];
            v27 = self->_currentTask;
            eventHandler = DAErrorF();
            [(DABluetoothPairingManager *)self _reportEvent:30 error:eventHandler endCurrentTask:1, identifier2, type, v27];
LABEL_26:

            goto LABEL_27;
          }

          v20 = [DABluetoothPairingInfo alloc];
          identifier3 = [pairingCopy identifier];
          identifier2 = [v20 initWithBluetoothIdentifier:identifier3 pairingType:v16];

          if (identifier2)
          {
            [identifier2 setPasskey:v17];
            eventHandler = [(DABluetoothTask *)self->_currentTask eventHandler];
            (eventHandler)[2](eventHandler, 40, identifier2, 0);
          }

          else
          {
            eventHandler = [(DABluetoothTask *)self->_currentTask eventHandler];
            identifier4 = [pairingCopy identifier];
            v28 = self->_currentTask;
            v23 = DAErrorF();
            (eventHandler)[2](eventHandler, 30, 0, v23);
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