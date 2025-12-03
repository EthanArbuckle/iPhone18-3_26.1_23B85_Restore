@interface SFShareAudioSessionDaemon
- (SFShareAudioSessionDaemon)init;
- (int)_runAdvertiser;
- (int)_runConfirm;
- (int)_runConnectGuestHeadphones;
- (int)_runFinish;
- (int)_runGuestiOSConnect;
- (int)_runGuestiOSPairSetupPublic;
- (int)_runGuestiOSShareAudio;
- (int)_runInit;
- (int)_runScannerNearbyInfo;
- (int)_runScannerProxPairing;
- (int)_runShowHeadphonesPairingInstructions;
- (int)_runWaitForGuestHeadphones;
- (int)_runWaitForGuestHeadphonesPairingMode;
- (int)_runWaitForProxTrigger;
- (void)_bleScannerNearbyInfoDeviceFound:(id)found;
- (void)_bleScannerProxPairingDeviceFound:(id)found;
- (void)_cleanup;
- (void)_invalidate;
- (void)_pickableRoutesChanged;
- (void)_pickableRoutesChanged:(id)changed;
- (void)_reportError:(id)error;
- (void)_run;
- (void)_runGuestiOSShareAudioProcessResponse:(id)response error:(id)error;
- (void)_runGuestiOSShareAudioSendRequest;
- (void)activate;
- (void)invalidate;
- (void)proximityDeviceDidTrigger:(id)trigger;
- (void)userConfirmed;
@end

@implementation SFShareAudioSessionDaemon

- (SFShareAudioSessionDaemon)init
{
  v7.receiver = self;
  v7.super_class = SFShareAudioSessionDaemon;
  v2 = [(SFShareAudioSessionDaemon *)&v7 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = v2;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100100498;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001005AC;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateDone)
  {
    self->_invalidateDone = 1;
    [(SFShareAudioSessionDaemon *)self _reportProgress:20];
    [(SFShareAudioSessionDaemon *)self _cleanup];
    if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001042C8();
    }
  }
}

- (int)_runInit
{
  if (!self->_initialized)
  {
    self->_prefHeadphoneTrigger = CFPrefs_GetInt64() != 0;
    self->_prefiOSTrigger = CFPrefs_GetInt64() != 0;
    Int64 = CFPrefs_GetInt64();
    if (Int64 == Int64)
    {
      v4 = Int64;
    }

    else
    {
      v4 = -1;
    }

    self->_prefOverrideColorCode = v4;
    v5 = CFPrefs_GetInt64();
    if (v5 == v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = -1;
    }

    self->_prefOverrideProductID = v6;
    v7 = CFPrefs_GetInt64();
    if ((v7 - 1000) < 0xFFFFFFFFFFFFF831 || v7 == 0)
    {
      v9 = -40;
    }

    else
    {
      v9 = v7;
    }

    self->_prefRSSIThreshold = v9;
    self->_prefRespectDeviceSupport = CFPrefs_GetInt64() == 0;
    if (!self->_preventProxCardsClient)
    {
      v10 = objc_alloc_init(SFClient);
      preventProxCardsClient = self->_preventProxCardsClient;
      self->_preventProxCardsClient = v10;

      [(SFClient *)self->_preventProxCardsClient activateAssertionWithIdentifier:@"com.apple.sharing.PreventProxCards"];
    }

    self->_initialized = 1;
    if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001042E4(&self->_prefRSSIThreshold);
    }
  }

  return 4;
}

- (int)_runScannerProxPairing
{
  if (!self->_prefHeadphoneTrigger)
  {
    return 2;
  }

  v14[6] = v5;
  v14[7] = v4;
  v14[12] = v2;
  v14[13] = v3;
  if (self->_triggeredDevice && self->_triggeredNeedsSetupDevice)
  {
    if (self->_bleProxPairingScanner)
    {
      if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_100104328();
      }

      [(SFDeviceDiscovery *)self->_bleProxPairingScanner invalidate];
      bleProxPairingScanner = self->_bleProxPairingScanner;
      self->_bleProxPairingScanner = 0;
    }

    return 2;
  }

  else
  {
    if (!self->_bleProxPairingScanner)
    {
      if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_100104344();
      }

      v9 = objc_alloc_init(SFDeviceDiscovery);
      v10 = self->_bleProxPairingScanner;
      self->_bleProxPairingScanner = v9;
      v11 = v9;

      [(SFDeviceDiscovery *)v11 setChangeFlags:13];
      [(SFDeviceDiscovery *)v11 setDiscoveryFlags:2];
      [(SFDeviceDiscovery *)v11 setDispatchQueue:self->_dispatchQueue];
      [(SFDeviceDiscovery *)v11 setPurpose:@"ShareAudio"];
      [(SFDeviceDiscovery *)v11 setScanRate:50];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100100AA4;
      v14[3] = &unk_1008D05C0;
      v14[4] = v11;
      v14[5] = self;
      [(SFDeviceDiscovery *)v11 setDeviceFoundHandler:v14];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100100AC0;
      v13[3] = &unk_1008D05E8;
      v13[4] = v11;
      v13[5] = self;
      [(SFDeviceDiscovery *)v11 setDeviceChangedHandler:v13];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100100ADC;
      v12[3] = &unk_1008CF250;
      v12[4] = v11;
      v12[5] = self;
      [(SFDeviceDiscovery *)v11 activateWithCompletion:v12];
    }

    return 4;
  }
}

- (int)_runScannerNearbyInfo
{
  if (!self->_prefiOSTrigger)
  {
    return 2;
  }

  v15[6] = v5;
  v15[7] = v4;
  v15[12] = v2;
  v15[13] = v3;
  bleNearbyInfoScanner = self->_bleNearbyInfoScanner;
  if (self->_triggeredDevice)
  {
    if (bleNearbyInfoScanner)
    {
      if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001043BC();
      }

      [(SFDeviceDiscovery *)self->_bleNearbyInfoScanner invalidate];
      v8 = self->_bleNearbyInfoScanner;
      self->_bleNearbyInfoScanner = 0;
    }

    return 2;
  }

  else
  {
    if (!bleNearbyInfoScanner)
    {
      if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001043D8();
      }

      v10 = objc_alloc_init(SFDeviceDiscovery);
      v11 = self->_bleNearbyInfoScanner;
      self->_bleNearbyInfoScanner = v10;
      v12 = v10;

      [(SFDeviceDiscovery *)v12 setChangeFlags:13];
      [(SFDeviceDiscovery *)v12 setDiscoveryFlags:1];
      [(SFDeviceDiscovery *)v12 setDispatchQueue:self->_dispatchQueue];
      [(SFDeviceDiscovery *)v12 setPurpose:@"ShareAudio"];
      [(SFDeviceDiscovery *)v12 setScanRate:50];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100100E00;
      v15[3] = &unk_1008D05C0;
      v15[4] = v12;
      v15[5] = self;
      [(SFDeviceDiscovery *)v12 setDeviceFoundHandler:v15];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100100E1C;
      v14[3] = &unk_1008D05E8;
      v14[4] = v12;
      v14[5] = self;
      [(SFDeviceDiscovery *)v12 setDeviceChangedHandler:v14];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100100E38;
      v13[3] = &unk_1008CF250;
      v13[4] = v12;
      v13[5] = self;
      [(SFDeviceDiscovery *)v12 activateWithCompletion:v13];
    }

    return 4;
  }
}

- (int)_runAdvertiser
{
  bleNearbyActionAdvertiser = self->_bleNearbyActionAdvertiser;
  if (self->_triggeredDevice)
  {
    if (bleNearbyActionAdvertiser)
    {
      if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_100104450();
      }

      [(SFService *)self->_bleNearbyActionAdvertiser invalidate];
      v4 = self->_bleNearbyActionAdvertiser;
      self->_bleNearbyActionAdvertiser = 0;
    }

    return 2;
  }

  else
  {
    if (!bleNearbyActionAdvertiser)
    {
      if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_10010446C();
      }

      v6 = objc_alloc_init(SFService);
      v7 = self->_bleNearbyActionAdvertiser;
      self->_bleNearbyActionAdvertiser = v6;
      v8 = v6;

      [(SFService *)v8 setAdvertiseRate:60];
      [(SFService *)v8 setDeviceActionType:27];
      [(SFService *)v8 setDispatchQueue:self->_dispatchQueue];
      [(SFService *)v8 setIdentifier:@"a5989962-d94b-4755-bbca-59ecf498ad2f"];
      [(SFService *)v8 setLabel:@"ShareAudio"];
      [(SFService *)v8 setNeedsSetup:1];
      [(SFService *)v8 setPairSetupDisabled:1];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1001010C0;
      v9[3] = &unk_1008CF250;
      v9[4] = v8;
      v9[5] = self;
      [(SFService *)v8 activateWithCompletion:v9];
    }

    return 4;
  }
}

- (int)_runWaitForProxTrigger
{
  if (self->_triggeredDevice)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

- (int)_runConfirm
{
  confirmState = self->_confirmState;
  if (confirmState != 4 && confirmState != 2)
  {
    if (confirmState)
    {
      if (dword_100970AB0 <= 30)
      {
        if (dword_100970AB0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_confirmState;
          }

          v6 = self->_confirmState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001044E4(self);
      }

      self->_confirmState = 1;
      [(SFShareAudioSessionDaemon *)self _reportProgressTriggeredDevice:100];
    }
  }

  return self->_confirmState;
}

- (int)_runGuestiOSConnect
{
  guestiOSConnectState = self->_guestiOSConnectState;
  if (guestiOSConnectState != 4 && guestiOSConnectState != 2)
  {
    if (guestiOSConnectState)
    {
      if (dword_100970AB0 <= 30)
      {
        if (dword_100970AB0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_guestiOSConnectState;
          }

          v9 = self->_guestiOSConnectState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_100104528();
      }

      self->_guestiOSConnectState = 1;
      [(SFShareAudioSessionDaemon *)self _reportProgressTriggeredDevice:200];
      v5 = objc_alloc_init(SFSession);
      guestiOSSession = self->_guestiOSSession;
      self->_guestiOSSession = v5;
      v7 = v5;

      [(SFSession *)v7 setDispatchQueue:self->_dispatchQueue];
      [(SFSession *)v7 setLabel:@"ShareAudio"];
      [(SFSession *)v7 setPeerDevice:self->_triggeredDevice];
      [(SFSession *)v7 setServiceIdentifier:SFServiceIdentifierShareAudio];
      [(SFSession *)v7 setSessionFlags:1];
      [(SFSession *)v7 setStatusMonitor:self->_statusMonitor];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10010158C;
      v14[3] = &unk_1008CF250;
      v14[4] = v7;
      v14[5] = self;
      [(SFSession *)v7 setErrorHandler:v14];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100101690;
      v13[3] = &unk_1008CE028;
      v13[4] = v7;
      v13[5] = self;
      [(SFSession *)v7 setInterruptionHandler:v13];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1001016E8;
      v12[3] = &unk_1008CE028;
      v12[4] = v7;
      v12[5] = self;
      [(SFSession *)v7 setInvalidationHandler:v12];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100101740;
      v11[3] = &unk_1008CE028;
      v11[4] = v7;
      v11[5] = self;
      [(SFSession *)v7 setSessionStartedHandler:v11];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1001017D0;
      v10[3] = &unk_1008CF250;
      v10[4] = v7;
      v10[5] = self;
      [(SFSession *)v7 activateWithCompletion:v10];
    }
  }

  return self->_guestiOSConnectState;
}

- (int)_runGuestiOSPairSetupPublic
{
  guestiOSPairSetupPublicState = self->_guestiOSPairSetupPublicState;
  if (guestiOSPairSetupPublicState != 4 && guestiOSPairSetupPublicState != 2)
  {
    if (guestiOSPairSetupPublicState)
    {
      if (dword_100970AB0 <= 30)
      {
        if (dword_100970AB0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_guestiOSPairSetupPublicState;
          }

          v7 = self->_guestiOSPairSetupPublicState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_100104634();
      }

      self->_guestiOSPairSetupPublicState = 1;
      v5 = self->_guestiOSSession;
      [(SFSession *)v5 setFixedPIN:@"public"];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100101A20;
      v8[3] = &unk_1008CF250;
      v8[4] = v5;
      v8[5] = self;
      [(SFSession *)v5 pairSetupWithFlags:16 completion:v8];
    }
  }

  return self->_guestiOSPairSetupPublicState;
}

- (int)_runGuestiOSShareAudio
{
  guestiOSShareAudioState = self->_guestiOSShareAudioState;
  if (guestiOSShareAudioState != 4 && guestiOSShareAudioState != 2)
  {
    if (guestiOSShareAudioState)
    {
      if (dword_100970AB0 <= 30)
      {
        if (dword_100970AB0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_guestiOSShareAudioState;
          }

          v6 = self->_guestiOSShareAudioState;
        }

        LogPrintF();
      }
    }

    else
    {
      self->_guestiOSShareAudioState = 1;
      [(SFShareAudioSessionDaemon *)self _runGuestiOSShareAudioSendRequest];
    }
  }

  return self->_guestiOSShareAudioState;
}

- (void)_runGuestiOSShareAudioSendRequest
{
  if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001046AC();
  }

  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = MGCopyAnswer();
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:@"btAd"];
    v5 = GestaltCopyAnswer();
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"dname"];
    }

    guestiOSSession = self->_guestiOSSession;
    dispatchQueue = self->_dispatchQueue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100101D94;
    v9[3] = &unk_1008CDFB8;
    v9[4] = guestiOSSession;
    v9[5] = self;
    v9[6] = v3;
    v8 = guestiOSSession;
    [(SFSession *)v8 appleIDAddProof:v3 dispatchQueue:dispatchQueue completion:v9];
  }

  else
  {
    if (dword_100970AB0 <= 90 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001046C8();
    }

    self->_guestiOSShareAudioState = 3;
    v5 = NSErrorF();
    [(SFShareAudioSessionDaemon *)self _reportError:v5];
  }
}

- (void)_runGuestiOSShareAudioProcessResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  v8 = responseCopy;
  v9 = errorCopy;
  if (v9)
  {
    if (dword_100970AB0 <= 90 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
    {
      sub_100104768();
    }

    self->_guestiOSShareAudioState = 3;
    [(SFShareAudioSessionDaemon *)self _reportError:v9];
  }

  else
  {
    if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001047A8();
    }

    guestiOSSession = self->_guestiOSSession;
    dispatchQueue = self->_dispatchQueue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100102054;
    v13[3] = &unk_1008D0638;
    v13[4] = guestiOSSession;
    v13[5] = self;
    v14 = v8;
    v12 = guestiOSSession;
    [(SFSession *)v12 appleIDVerifyProof:v14 dispatchQueue:dispatchQueue completion:v13];
  }
}

- (int)_runShowHeadphonesPairingInstructions
{
  result = self->_guestHeadphonesInstructionsState;
  if (!result)
  {
    if (!self->_triggeredNeedsSetupDevice)
    {
      if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001048E8(self);
      }

      [(SFShareAudioSessionDaemon *)self _reportProgressTriggeredDevice:120];
    }

    result = 4;
    self->_guestHeadphonesInstructionsState = 4;
  }

  return result;
}

- (int)_runWaitForGuestHeadphonesPairingMode
{
  if (self->_triggeredNeedsSetupDevice)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

- (int)_runConnectGuestHeadphones
{
  result = self->_guestHeadphonesConnectState;
  if (!result)
  {
    v4 = [(SFSession *)self->_guestiOSSession pairingDeriveKeyForIdentifier:@"ShareAudio" keyLength:16];
    if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
    {
      guestHeadphonesAddress = self->_guestHeadphonesAddress;
      v7 = v4;
      LogPrintF();
    }

    self->_guestHeadphonesConnectState = 1;
    [(SFShareAudioSessionDaemon *)self _reportProgressTriggeredDevice:300, guestHeadphonesAddress, v7];
    v5 = objc_alloc_init(SFBluetoothPairingSession);
    objc_storeStrong(&self->_guestHeadphonesPairingSession, v5);
    [v5 setDeviceAddress:self->_guestHeadphonesAddress];
    [v5 setDispatchQueue:self->_dispatchQueue];
    if (self->_triggerediOS || ![(SFDevice *)self->_triggeredDevice paired])
    {
      [v5 setGuestKey:v4];
      [v5 setGuestMode:1];
      if (self->_triggerediOS && !self->_guestiOSContact)
      {
        [v5 setUserNotInContacts:1];
      }
    }

    else
    {
      [v5 setAggregate:1];
      [v5 setConnectOnly:1];
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001024B4;
    v8[3] = &unk_1008CF250;
    v8[4] = v5;
    v8[5] = self;
    [v5 setCompletionHandler:v8];
    [v5 activate];

    return self->_guestHeadphonesConnectState;
  }

  return result;
}

- (int)_runWaitForGuestHeadphones
{
  guestiOSWaitForRouteState = self->_guestiOSWaitForRouteState;
  if (guestiOSWaitForRouteState != 4 && guestiOSWaitForRouteState != 2)
  {
    if (guestiOSWaitForRouteState)
    {
      if (dword_100970AB0 <= 30)
      {
        if (dword_100970AB0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_guestiOSWaitForRouteState;
          }

          v12 = self->_guestiOSWaitForRouteState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_100104988(self);
      }

      self->_guestiOSWaitForRouteState = 1;
      [(SFShareAudioSessionDaemon *)self _reportProgress:320];
      sharedAVSystemController = [off_100970B20[0]() sharedAVSystemController];
      v6 = off_100970B28();
      v13 = v6;
      v7 = [NSArray arrayWithObjects:&v13 count:1];

      v8 = off_100970B30();
      [sharedAVSystemController setAttribute:v7 forKey:v8 error:0];

      v9 = +[NSNotificationCenter defaultCenter];
      v10 = off_100970B28();
      [v9 addObserver:self selector:"_pickableRoutesChanged:" name:v10 object:sharedAVSystemController];

      self->_observingPickableRoutes = 1;
      [(SFShareAudioSessionDaemon *)self _pickableRoutesChanged];
    }
  }

  return self->_guestiOSWaitForRouteState;
}

- (int)_runFinish
{
  v3 = self->_guestHeadphonesRouteUID;
  if (v3)
  {
    if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001049CC();
    }

    v9 = @"mediaRouteID";
    v10 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [(SFShareAudioSessionDaemon *)self _reportProgress:40 info:v4];
  }

  else
  {
    if (dword_100970AB0 <= 90 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
    {
      sub_100104A0C();
    }

    v7 = @"error";
    v4 = NSErrorWithOSStatusF();
    v8 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    [(SFShareAudioSessionDaemon *)self _reportProgress:50 info:v5];
  }

  [(SFShareAudioSessionDaemon *)self _cleanup];
  return 4;
}

- (void)_cleanup
{
  [(SFService *)self->_bleNearbyActionAdvertiser invalidate];
  bleNearbyActionAdvertiser = self->_bleNearbyActionAdvertiser;
  self->_bleNearbyActionAdvertiser = 0;

  [(SFDeviceDiscovery *)self->_bleNearbyInfoScanner invalidate];
  bleNearbyInfoScanner = self->_bleNearbyInfoScanner;
  self->_bleNearbyInfoScanner = 0;

  [(SFDeviceDiscovery *)self->_bleProxPairingScanner invalidate];
  bleProxPairingScanner = self->_bleProxPairingScanner;
  self->_bleProxPairingScanner = 0;

  self->_guestHeadphonesConnectState = 0;
  guestHeadphonesAddress = self->_guestHeadphonesAddress;
  self->_guestHeadphonesAddress = 0;

  [(SFBluetoothPairingSession *)self->_guestHeadphonesPairingSession invalidate];
  guestHeadphonesPairingSession = self->_guestHeadphonesPairingSession;
  self->_guestHeadphonesPairingSession = 0;

  [(SFSession *)self->_guestiOSSession invalidate];
  guestiOSSession = self->_guestiOSSession;
  self->_guestiOSSession = 0;

  if (self->_observingPickableRoutes)
  {
    v9 = +[NSNotificationCenter defaultCenter];
    v10 = off_100970B28();
    [v9 removeObserver:self name:v10 object:0];

    self->_observingPickableRoutes = 0;
  }

  [(SFClient *)self->_preventProxCardsClient invalidate];
  preventProxCardsClient = self->_preventProxCardsClient;
  self->_preventProxCardsClient = 0;

  progressHandler = self->_progressHandler;
  self->_progressHandler = 0;

  triggeredDevice = self->_triggeredDevice;
  self->_triggeredDevice = 0;

  triggeredNeedsSetupDevice = self->_triggeredNeedsSetupDevice;
  self->_triggeredNeedsSetupDevice = 0;

  self->_triggerediOS = 0;
  proximityController = self->_proximityController;

  [(SDProximityController *)proximityController clearDeviceList];
}

- (void)_bleScannerNearbyInfoDeviceFound:(id)found
{
  foundCopy = found;
  if (!self->_triggeredDevice)
  {
    v8 = foundCopy;
    if ([foundCopy paired])
    {
      sub_100104B90();
      goto LABEL_23;
    }

    if (([v8 deviceFlags] & 0x800) == 0)
    {
      sub_100104B18();
      goto LABEL_23;
    }

    bleDevice = [v8 bleDevice];
    rssiEstimate = [bleDevice rssiEstimate];
    [(SDProximityController *)self->_proximityController sender:self notifyBluetoothSample:v8];
    if ([(SDProximityController *)self->_proximityController checkDeviceRegion:v8]== 2)
    {
      if (dword_100970AB0 <= 50 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_100104A68();
      }

      if (_os_feature_enabled_impl())
      {
        goto LABEL_17;
      }
    }

    else if (_os_feature_enabled_impl())
    {
      if (dword_100970AB0 <= 50 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_100104A28();
      }

      goto LABEL_22;
    }

    if ((rssiEstimate & 0x80000000) == 0 || rssiEstimate < self->_prefRSSIThreshold)
    {
      sub_100104A84(self);
LABEL_22:

LABEL_23:
      foundCopy = v8;
      goto LABEL_24;
    }

LABEL_17:
    if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    objc_storeStrong(&self->_triggeredDevice, found);
    self->_triggerediOS = 1;
    [(SFShareAudioSessionDaemon *)self _run];
    goto LABEL_22;
  }

LABEL_24:
}

- (void)_bleScannerProxPairingDeviceFound:(id)found
{
  foundCopy = found;
  foundCopy2 = found;
  v6 = foundCopy2;
  p_triggeredNeedsSetupDevice = &self->_triggeredNeedsSetupDevice;
  if (!self->_triggeredNeedsSetupDevice)
  {
    needsSetup = [foundCopy2 needsSetup];
    if ((needsSetup & 1) != 0 || !self->_triggeredDevice)
    {
      bleDevice = [v6 bleDevice];
      advertisementFields = [bleDevice advertisementFields];

      if ((needsSetup & 1) == 0 && self->_prefRespectDeviceSupport && ([v6 deviceFlags] & 0x800) == 0)
      {
        sub_100104C08();
        goto LABEL_55;
      }

      if (CFDictionaryGetInt64Ranged() != 8208 && (CFDictionaryGetInt64Ranged() & 0x24) != 0)
      {
        sub_100104C80();
        goto LABEL_55;
      }

      if (CFDictionaryGetInt64())
      {
        sub_100104CF8();
        goto LABEL_55;
      }

      bleDevice2 = [v6 bleDevice];
      smoothedRSSI = [bleDevice2 smoothedRSSI];
      if ((smoothedRSSI & 0x80000000) == 0)
      {
        sub_100104FD0();
        goto LABEL_54;
      }

      if (needsSetup)
      {
        v13 = -60;
      }

      else
      {
        v13 = -45;
      }

      if ((needsSetup & 1) == 0)
      {
        [(SDProximityController *)self->_proximityController sender:self notifyBluetoothSample:v6];
        if ([(SDProximityController *)self->_proximityController checkDeviceRegion:v6]== 2)
        {
          if (dword_100970AB0 <= 50 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
          {
            sub_100104DE8();
          }

          _os_feature_enabled_impl();
        }

        else if (_os_feature_enabled_impl())
        {
          sub_100104D70();
          goto LABEL_54;
        }
      }

      v14 = _os_feature_enabled_impl();
      if (v13 > smoothedRSSI && (v14 & 1) == 0)
      {
        sub_100104E04();
        goto LABEL_54;
      }

      Int64Ranged = CFDictionaryGetInt64Ranged();
      bluetoothAddress = [bleDevice2 bluetoothAddress];
      v17 = bluetoothAddress;
      if (Int64Ranged && [bluetoothAddress length] == 6)
      {
        v35 = smoothedRSSI;
        v36 = needsSetup;
        v37 = foundCopy;
        v40 = bleDevice2;
        v41 = v6;
        v39 = v17;
        bytes = [v17 bytes];
        v18 = NSPrintF();
        sharedAVSystemController = [off_100970B20[0]() sharedAVSystemController];
        v20 = off_100970B38();
        v38 = sharedAVSystemController;
        v21 = [sharedAVSystemController attributeForKey:v20];

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v22 = v21;
        v23 = [v22 countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v43;
          while (2)
          {
            for (i = 0; i != v24; i = i + 1)
            {
              if (*v43 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v42 + 1) + 8 * i);
              off_100970B40[0]();
              if (CFDictionaryGetInt64())
              {
                v28 = off_100970B48();
                v29 = [v27 objectForKeyedSubscript:v28];

                if ([v29 rangeOfString:v18 options:1] != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v6 = v41;
                  if (dword_100970AB0 <= 10 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
                  {
                    sub_100104E94();
                  }

                  bleDevice2 = v40;
                  v17 = v39;
                  goto LABEL_53;
                }
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v42 objects:v46 count:16];
            if (v24)
            {
              continue;
            }

            break;
          }
        }

        v6 = v41;
        foundCopy = v37;
        v17 = v39;
        bleDevice2 = v40;
        p_triggeredNeedsSetupDevice = &self->_triggeredNeedsSetupDevice;
        needsSetup = v36;
        smoothedRSSI = v35;
      }

      if ((needsSetup & 1) == 0 && ![v6 paired])
      {
        goto LABEL_43;
      }

      if (v17)
      {
        if ([v17 length] == 6)
        {
          bytes2 = [v17 bytes];
          v30 = NSPrintF();
          guestHeadphonesAddress = self->_guestHeadphonesAddress;
          self->_guestHeadphonesAddress = v30;

          if (needsSetup)
          {
            if (!self->_triggeredDevice)
            {
              objc_storeStrong(&self->_triggeredDevice, foundCopy);
            }

            goto LABEL_44;
          }

LABEL_43:
          p_triggeredNeedsSetupDevice = &self->_triggeredDevice;
LABEL_44:
          objc_storeStrong(p_triggeredNeedsSetupDevice, foundCopy);
          if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
            [(SFShareAudioSessionDaemon *)self _run:smoothedRSSI];
          }

          else
          {
            [(SFShareAudioSessionDaemon *)self _run:bytes2];
          }

          goto LABEL_53;
        }

        sub_100104ED4();
      }

      else
      {
        sub_100104F54();
      }

LABEL_53:

LABEL_54:
LABEL_55:
    }
  }
}

- (void)_pickableRoutesChanged:(id)changed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001032C0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_pickableRoutesChanged
{
  if (self->_guestiOSWaitForRouteState == 1)
  {
    v3 = self->_guestHeadphonesAddress;
    if (v3)
    {
      sharedAVSystemController = [off_100970B20[0]() sharedAVSystemController];
      v5 = off_100970B38();
      v16 = sharedAVSystemController;
      v6 = [sharedAVSystemController attributeForKey:v5];

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        while (2)
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v17 + 1) + 8 * i);
            v13 = off_100970B48();
            v14 = [v12 objectForKeyedSubscript:v13];

            if ([(NSString *)v14 rangeOfString:v3 options:1]!= 0x7FFFFFFFFFFFFFFFLL)
            {
              if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
              {
                sub_10010506C();
              }

              guestHeadphonesRouteUID = self->_guestHeadphonesRouteUID;
              self->_guestHeadphonesRouteUID = v14;

              self->_guestiOSWaitForRouteState = 4;
              [(SFShareAudioSessionDaemon *)self _run];
              goto LABEL_16;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }
  }
}

- (void)_reportError:(id)error
{
  errorCopy = error;
  if (dword_100970AB0 <= 90 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001050AC();
  }

  v8 = @"error";
  v9 = errorCopy;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = objc_retainBlock(self->_progressHandler);
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, 50, v5);
  }
}

- (void)proximityDeviceDidTrigger:(id)trigger
{
  triggerCopy = trigger;
  v4 = triggerCopy;
  if (dword_100970AB0 <= 50)
  {
    v6 = triggerCopy;
    if (dword_100970AB0 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_100105248();
      v4 = v6;
    }
  }
}

- (void)userConfirmed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100103B58;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_run
{
  if (!self->_invalidateCalled)
  {
    _runInit = [(SFShareAudioSessionDaemon *)self _runInit];
    if (_runInit == 4 || _runInit == 2)
    {
      _runScannerNearbyInfo = [(SFShareAudioSessionDaemon *)self _runScannerNearbyInfo];
      if (_runScannerNearbyInfo == 4 || _runScannerNearbyInfo == 2)
      {
        _runScannerProxPairing = [(SFShareAudioSessionDaemon *)self _runScannerProxPairing];
        if (_runScannerProxPairing == 4 || _runScannerProxPairing == 2)
        {
          _runAdvertiser = [(SFShareAudioSessionDaemon *)self _runAdvertiser];
          if (_runAdvertiser == 4 || _runAdvertiser == 2)
          {
            _runWaitForProxTrigger = [(SFShareAudioSessionDaemon *)self _runWaitForProxTrigger];
            if (_runWaitForProxTrigger == 4 || _runWaitForProxTrigger == 2)
            {
              _runConfirm = [(SFShareAudioSessionDaemon *)self _runConfirm];
              if (_runConfirm == 4 || _runConfirm == 2)
              {
                if (self->_triggerediOS)
                {
                  _runGuestiOSConnect = [(SFShareAudioSessionDaemon *)self _runGuestiOSConnect];
                  if (_runGuestiOSConnect != 4 && _runGuestiOSConnect != 2)
                  {
                    return;
                  }

                  _runGuestiOSPairSetupPublic = [(SFShareAudioSessionDaemon *)self _runGuestiOSPairSetupPublic];
                  if (_runGuestiOSPairSetupPublic != 4 && _runGuestiOSPairSetupPublic != 2)
                  {
                    return;
                  }

                  _runGuestiOSShareAudio = [(SFShareAudioSessionDaemon *)self _runGuestiOSShareAudio];
                  if (_runGuestiOSShareAudio != 2 && _runGuestiOSShareAudio != 4)
                  {
                    return;
                  }
                }

                else if (([(SFDevice *)self->_triggeredDevice paired]& 1) == 0)
                {
                  _runShowHeadphonesPairingInstructions = [(SFShareAudioSessionDaemon *)self _runShowHeadphonesPairingInstructions];
                  if (_runShowHeadphonesPairingInstructions != 4 && _runShowHeadphonesPairingInstructions != 2)
                  {
                    return;
                  }

                  _runWaitForGuestHeadphonesPairingMode = [(SFShareAudioSessionDaemon *)self _runWaitForGuestHeadphonesPairingMode];
                  if (_runWaitForGuestHeadphonesPairingMode != 4 && _runWaitForGuestHeadphonesPairingMode != 2)
                  {
                    return;
                  }
                }

                _runConnectGuestHeadphones = [(SFShareAudioSessionDaemon *)self _runConnectGuestHeadphones];
                if (_runConnectGuestHeadphones == 4 || _runConnectGuestHeadphones == 2)
                {
                  _runWaitForGuestHeadphones = [(SFShareAudioSessionDaemon *)self _runWaitForGuestHeadphones];
                  if (_runWaitForGuestHeadphones == 4 || _runWaitForGuestHeadphones == 2)
                  {

                    [(SFShareAudioSessionDaemon *)self _runFinish];
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

@end