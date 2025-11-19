@interface SDProxHandoffAgent
+ (id)sharedAgent;
- (BOOL)_bleActionDiscoveryShouldStart;
- (BOOL)_combinedDeviceIsSuppressed:(id)a3;
- (BOOL)_expectingContentForDeviceID:(id)a3;
- (BOOL)_runStateVerify:(int)a3 device:(id)a4;
- (BOOL)_shouldMediumPromptWithInfo:(id)a3;
- (BOOL)_systemCanTrigger;
- (BOOL)_throttleMediumAllowsTrigger;
- (BOOL)callTransferShouldPush:(id)a3;
- (CGImage)appIconForCall:(id)a3;
- (NSString)description;
- (SDProxHandoffAgent)init;
- (id)_bleUpdateMappingWithDevice:(id)a3;
- (id)_combinedDeviceForUIID:(id)a3;
- (id)_combinedDevicePending;
- (id)_routeForDevice:(id)a3;
- (id)_routes;
- (id)callTransferInfoForDevice:(id)a3;
- (id)contactForCall:(id)a3;
- (id)currentCall;
- (id)displayNameForContact:(id)a3;
- (id)mediaTransferInfoFromInfo:(id)a3;
- (id)persistImageForContact:(id)a3 withAppIcon:(CGImage *)a4;
- (int)proximityClient:(id)a3 dismissContentForDevice:(id)a4;
- (int)proximityClient:(id)a3 provideContent:(id)a4 forDevice:(id)a5 force:(BOOL)a6;
- (int)proximityClient:(id)a3 stopSuppressingDevice:(id)a4;
- (int)proximityClient:(id)a3 suppressDevice:(id)a4;
- (int)proximityClient:(id)a3 updateContent:(id)a4 forDevice:(id)a5;
- (int)proximityClientRequestScannerTimerReset:(id)a3;
- (int)proximityClientStart:(id)a3;
- (unint64_t)notificationHomePodTypeForDevice:(id)a3;
- (void)_bleActionDeviceChanged:(id)a3;
- (void)_bleActionDeviceFound:(id)a3;
- (void)_bleActionDeviceFoundCandidate:(id)a3;
- (void)_bleActionDeviceLost:(id)a3;
- (void)_bleActionDiscoveryEnsureStarted;
- (void)_bleActionDiscoveryEnsureStopped;
- (void)_bleActionScanTimerActivate;
- (void)_bleActionScanTimerFired;
- (void)_bleActionScanTimerInvalidate;
- (void)_bleDeviceNearbyEnter:(id)a3;
- (void)_bleDeviceNearbyExit:(id)a3;
- (void)_bleInfoDeviceChanged:(id)a3;
- (void)_bleInfoDeviceFound:(id)a3;
- (void)_bleInfoDeviceLost:(id)a3;
- (void)_bleInfoDiscoveryEnsureStarted;
- (void)_bleInfoDiscoveryEnsureStopped;
- (void)_bleUpdateMappingAndNearbyCoalesced;
- (void)_bleUpdateMappingReset;
- (void)_clinkEnsureStarted;
- (void)_clinkEnsureStopped;
- (void)_clinkHandleRequest:(id)a3 options:(id)a4 responseHandler:(id)a5;
- (void)_clinkHomePodHandleRequest:(id)a3 responseHandler:(id)a4;
- (void)_combinedDevicePrepareForCallTransferTrigger:(id)a3;
- (void)_commonCallCountChanged;
- (void)_commonEnsureStarted;
- (void)_commonEnsureStopped;
- (void)_commonScreenStateChanged;
- (void)_commonShouldAdvertiseChanged;
- (void)_hapticsEnsurePrepared;
- (void)_hapticsEnsureStopped;
- (void)_hapticsFireNotificationSuccess;
- (void)_invalidate;
- (void)_motionEnsureStarted;
- (void)_motionEnsureStopped;
- (void)_motionUpdate:(id)a3;
- (void)_proxiedNotificationDidDismiss:(id)a3 reason:(int64_t)a4;
- (void)_proxiedNotificationWasTapped:(id)a3;
- (void)_proximityClientDeviceDidUnTrigger:(id)a3;
- (void)_proximityClientDeviceEnteredImmediate:(id)a3;
- (void)_proximityClientDeviceEnteredNearby:(id)a3;
- (void)_proximityClientDeviceExitedImmediate:(id)a3;
- (void)_proximityClientDeviceExitedNearby:(id)a3;
- (void)_proximityClientDeviceUpdated:(id)a3;
- (void)_proximityClientDeviceWasDismissed:(id)a3;
- (void)_proximityClientDeviceWasDismissed:(id)a3 reason:(int64_t)a4;
- (void)_proximityClientDeviceWasSelected:(id)a3;
- (void)_proximityClientDeviceWillTrigger:(id)a3;
- (void)_proximityClientSeedInitialDevices:(id)a3;
- (void)_proximityClientSeedWillTriggerDeviceIfNeeded:(id)a3;
- (void)_resetAllStates;
- (void)_run;
- (void)_runCallHandoffHandleDelayTimerFired;
- (void)_runCallHandoffHandleResponse:(id)a3 error:(id)a4;
- (void)_runCallHandoffStart:(id)a3;
- (void)_runCallHandoffStartDelayTimer;
- (void)_runNotificationDismissed;
- (void)_runNotificationPending;
- (void)_runNotificationPendingContent;
- (void)_runNotificationPresented;
- (void)_runNotificationReady;
- (void)_runTransferDone;
- (void)_runTransferInProgress;
- (void)_runTransferPending;
- (void)_runTransferPendingDismiss;
- (void)_runTransferReady;
- (void)_scheduleRunAfter:(double)a3;
- (void)_serviceEnsureStarted;
- (void)_serviceEnsureStopped;
- (void)_serviceTimeoutActivate;
- (void)_serviceTimeoutFired;
- (void)_serviceTimeoutInvalidate;
- (void)_throttleEventDidOccur;
- (void)_throttleEventSet:(unint64_t)a3;
- (void)_throttleEventsReset;
- (void)_throttleMediumReset;
- (void)_throttleMediumSetTicks:(unint64_t)a3;
- (void)_uiDismissWhenReady:(id)a3 reason:(int64_t)a4;
- (void)_uiStopIfNeeded:(id)a3 reason:(int64_t)a4;
- (void)_update;
- (void)_updateCandidateIsNearby;
- (void)activate;
- (void)commonSystemUIChanged;
- (void)invalidate;
- (void)notificationDidDismiss:(id)a3 reason:(int64_t)a4;
- (void)prefsChanged;
- (void)proximityClientStop:(id)a3;
- (void)proximityClientUpdate:(id)a3;
- (void)proximityDeviceDidTrigger:(id)a3;
- (void)setPreventNotifications:(BOOL)a3;
- (void)testUI:(id)a3;
- (void)userDidTapNotification:(id)a3;
@end

@implementation SDProxHandoffAgent

- (void)commonSystemUIChanged
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007080;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_motionEnsureStarted
{
  if (!self->_motionMonitorStarted)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000359B4();
    }

    objc_initWeak(&location, self);
    motionMonitor = self->_motionMonitor;
    v4 = +[NSOperationQueue mainQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000356A8;
    v5[3] = &unk_1008D0140;
    v5[4] = self;
    objc_copyWeak(&v6, &location);
    [(CMMotionActivityManager *)motionMonitor startActivityUpdatesToQueue:v4 withHandler:v5];

    self->_motionMonitorStarted = 1;
    self->_stationary = 1;
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)_serviceEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_bleActionService)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F79E8();
    }

    [(SFProxHandoffService *)self->_bleActionService invalidate];
    bleActionService = self->_bleActionService;
    self->_bleActionService = 0;
  }
}

- (void)_run
{
  v3 = [(SDProxHandoffAgent *)self _combinedDevicePending];
  uiDevice = self->_uiDevice;
  self->_uiDevice = v3;

  v5 = [(SFCombinedDevice *)self->_uiDevice state];
  if (v5 > 15)
  {
    if (v5 <= 17)
    {
      if (v5 == 16)
      {

        [(SDProxHandoffAgent *)self _runTransferPending];
      }

      else
      {

        [(SDProxHandoffAgent *)self _runTransferReady];
      }
    }

    else
    {
      switch(v5)
      {
        case 18:

          [(SDProxHandoffAgent *)self _runTransferInProgress];
          break;
        case 19:

          [(SDProxHandoffAgent *)self _runTransferPendingDismiss];
          break;
        case 20:

          [(SDProxHandoffAgent *)self _runTransferDone];
          break;
      }
    }
  }

  else if (v5 <= 12)
  {
    if (v5 == 11)
    {

      [(SDProxHandoffAgent *)self _runNotificationPending];
    }

    else if (v5 == 12)
    {

      [(SDProxHandoffAgent *)self _runNotificationPendingContent];
    }
  }

  else if (v5 == 13)
  {

    [(SDProxHandoffAgent *)self _runNotificationReady];
  }

  else if (v5 == 14)
  {

    [(SDProxHandoffAgent *)self _runNotificationPresented];
  }

  else
  {

    [(SDProxHandoffAgent *)self _runNotificationDismissed];
  }
}

- (id)_combinedDevicePending
{
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = sub_1000F282C;
  v59 = sub_1000F283C;
  v60 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_1000F282C;
  v53 = sub_1000F283C;
  v54 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_1000F282C;
  v47 = sub_1000F283C;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_1000F282C;
  v41 = sub_1000F283C;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_1000F282C;
  v35 = sub_1000F283C;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1000F282C;
  v29 = sub_1000F283C;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000F282C;
  v23 = sub_1000F283C;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000F282C;
  v17 = sub_1000F283C;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000F282C;
  v11 = sub_1000F283C;
  v12 = 0;
  mappedDevices = self->_mappedDevices;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100035E94;
  v6[3] = &unk_1008D01B8;
  v6[4] = self;
  v6[5] = &v49;
  v6[6] = &v37;
  v6[7] = &v43;
  v6[8] = &v25;
  v6[9] = &v19;
  v6[10] = &v31;
  v6[11] = &v13;
  v6[12] = &v55;
  v6[13] = &v7;
  [(NSMutableDictionary *)mappedDevices enumerateKeysAndObjectsUsingBlock:v6];
  v3 = v20[5];
  if (!v3)
  {
    v3 = v14[5];
    if (!v3)
    {
      v3 = v26[5];
      if (!v3)
      {
        v3 = v32[5];
        if (!v3)
        {
          v3 = v50[5];
          if (!v3)
          {
            v3 = v44[5];
            if (!v3)
            {
              v3 = v38[5];
              if (!v3)
              {
                v3 = v56[5];
                if (!v3)
                {
                  v3 = v8[5];
                }
              }
            }
          }
        }
      }
    }
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v55, 8);

  return v4;
}

- (void)_update
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_prefEnabled && !self->_unansweredCall)
  {
    [(SDProxHandoffAgent *)self _commonEnsureStarted];
    if ([(SDProxHandoffAgent *)self _clinkShouldStart])
    {
      [(SDProxHandoffAgent *)self _clinkEnsureStarted];
    }

    else
    {
      [(SDProxHandoffAgent *)self _clinkEnsureStopped];
    }

    if ([(SDProxHandoffAgent *)self _bleActionDiscoveryShouldStart])
    {
      [(SDProxHandoffAgent *)self _bleActionDiscoveryEnsureStarted];
    }

    else
    {
      [(SDProxHandoffAgent *)self _bleActionDiscoveryEnsureStopped];
    }

    if ([(SDProxHandoffAgent *)self _bleInfoDiscoveryShouldStart])
    {
      [(SDProxHandoffAgent *)self _bleInfoDiscoveryEnsureStarted];
    }

    else
    {
      [(SDProxHandoffAgent *)self _bleInfoDiscoveryEnsureStopped];
    }

    if ([(SDProxHandoffAgent *)self _motionShouldStart])
    {
      [(SDProxHandoffAgent *)self _motionEnsureStarted];
    }

    else
    {
      [(SDProxHandoffAgent *)self _motionEnsureStopped];
    }

    if ([(SDProxHandoffAgent *)self _serviceShouldStart])
    {
      [(SDProxHandoffAgent *)self _serviceEnsureStarted];
    }

    else
    {
      [(SDProxHandoffAgent *)self _serviceEnsureStopped];
    }

    [(SDProxHandoffAgent *)self _run];
  }

  else
  {
    [(SDProxHandoffAgent *)self _bleActionDiscoveryEnsureStopped];
    [(SDProxHandoffAgent *)self _bleInfoDiscoveryEnsureStopped];
    [(SDProxHandoffAgent *)self _clinkEnsureStopped];
    [(SDProxHandoffAgent *)self _motionEnsureStopped];

    [(SDProxHandoffAgent *)self _serviceEnsureStopped];
  }
}

- (void)_clinkEnsureStarted
{
  if (!self->_clinkClient)
  {
    v16[5] = v5;
    v16[6] = v4;
    v16[11] = v2;
    v16[12] = v3;
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000354C8();
    }

    dispatch_assert_queue_V2(self->_dispatchQueue);
    v7 = objc_alloc_init(RPCompanionLinkClient);
    clinkClient = self->_clinkClient;
    self->_clinkClient = v7;

    [(RPCompanionLinkClient *)self->_clinkClient setControlFlags:2052];
    [(RPCompanionLinkClient *)self->_clinkClient setDispatchQueue:self->_dispatchQueue];
    if (SFDeviceClassCodeGet() - 1 <= 1)
    {
      [(RPCompanionLinkClient *)self->_clinkClient setFlags:[(RPCompanionLinkClient *)self->_clinkClient flags]| 2];
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000F0324;
    v16[3] = &unk_1008CDEA0;
    v16[4] = self;
    [(RPCompanionLinkClient *)self->_clinkClient setInterruptionHandler:v16];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000F032C;
    v15[3] = &unk_1008CE238;
    v15[4] = self;
    [(RPCompanionLinkClient *)self->_clinkClient setDeviceChangedHandler:v15];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000F03E0;
    v14[3] = &unk_1008CE210;
    v14[4] = self;
    [(RPCompanionLinkClient *)self->_clinkClient setDeviceFoundHandler:v14];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000F0464;
    v13[3] = &unk_1008CE210;
    v13[4] = self;
    [(RPCompanionLinkClient *)self->_clinkClient setDeviceLostHandler:v13];
    v9 = self->_clinkClient;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000359D0;
    v12[3] = &unk_1008CDF90;
    v12[4] = self;
    [(RPCompanionLinkClient *)v9 activateWithCompletion:v12];
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000354E4();
    }

    v10 = self->_clinkClient;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000F04E8;
    v11[3] = &unk_1008CF358;
    v11[4] = self;
    [(RPCompanionLinkClient *)v10 registerRequestID:@"com.apple.sharing.calltransfer" options:0 handler:v11];
  }
}

- (void)_bleActionDiscoveryEnsureStarted
{
  if (!self->_proximityController)
  {
    v3 = +[SDProximityController sharedController];
    proximityController = self->_proximityController;
    self->_proximityController = v3;
  }

  bleActionDiscovery = self->_bleActionDiscovery;
  if (bleActionDiscovery)
  {
    goto LABEL_11;
  }

  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_100035518();
  }

  v6 = objc_alloc_init(SFDeviceDiscovery);
  v7 = self->_bleActionDiscovery;
  self->_bleActionDiscovery = v6;

  v8 = self->_stationary ? 9 : 29;
  [(SFDeviceDiscovery *)self->_bleActionDiscovery setChangeFlags:v8];
  [(SFDeviceDiscovery *)self->_bleActionDiscovery setDiscoveryFlags:8388624];
  [(SFDeviceDiscovery *)self->_bleActionDiscovery setDispatchQueue:self->_dispatchQueue];
  [(SFDeviceDiscovery *)self->_bleActionDiscovery setPurpose:@"HandoffAction"];
  [(SFDeviceDiscovery *)self->_bleActionDiscovery setRssiThreshold:-60];
  [(SFDeviceDiscovery *)self->_bleActionDiscovery setFastScanMode:2];
  [(SFDeviceDiscovery *)self->_bleActionDiscovery setScanRate:20];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000EEB48;
  v15[3] = &unk_1008CE7A0;
  v15[4] = self;
  [(SFDeviceDiscovery *)self->_bleActionDiscovery setDeviceFoundHandler:v15];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100009D70;
  v14[3] = &unk_1008CE7A0;
  v14[4] = self;
  [(SFDeviceDiscovery *)self->_bleActionDiscovery setDeviceLostHandler:v14];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000348F0;
  v13[3] = &unk_1008CE7C8;
  v13[4] = self;
  [(SFDeviceDiscovery *)self->_bleActionDiscovery setDeviceChangedHandler:v13];
  v9 = self->_bleActionDiscovery;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100035ABC;
  v12[3] = &unk_1008CDF90;
  v12[4] = self;
  [(SFDeviceDiscovery *)v9 activateWithCompletion:v12];
  [(SDProxHandoffAgent *)self _bleActionScanTimerActivate];
  bleActionDiscovery = self->_bleActionDiscovery;
  if (bleActionDiscovery)
  {
LABEL_11:
    if (self->_prefHighNormal)
    {
      if (self->_stationary && [(SFDeviceDiscovery *)bleActionDiscovery scanRate]> 10 || self->_bleActionScanTimedOut)
      {
        if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
        {
          sub_100035658();
        }

        [(SFDeviceDiscovery *)self->_bleActionDiscovery setChangeFlags:9];
        [(SFDeviceDiscovery *)self->_bleActionDiscovery setFastScanMode:2];
        [(SFDeviceDiscovery *)self->_bleActionDiscovery setScanRate:10];
        [(SDProxHandoffAgent *)self _bleActionScanTimerInvalidate];
      }

      else if (!self->_stationary)
      {
        v10 = [(NSMutableDictionary *)self->_mappedDevices allKeys];
        if ([v10 count])
        {
          v11 = [(SFDeviceDiscovery *)self->_bleActionDiscovery scanRate];

          if (v11 <= 29)
          {
            if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
            {
              sub_1000F6ABC();
            }

            [(SFDeviceDiscovery *)self->_bleActionDiscovery setChangeFlags:29];
            [(SFDeviceDiscovery *)self->_bleActionDiscovery setFastScanMode:0];
            [(SFDeviceDiscovery *)self->_bleActionDiscovery setScanRate:30];
            [(SDProxHandoffAgent *)self _bleActionScanTimerActivate];
          }
        }

        else
        {
        }
      }
    }
  }
}

- (BOOL)_systemCanTrigger
{
  v3 = [(SDStatusMonitor *)self->_statusMonitor systemUIFlags];
  v4 = [(CUSystemMonitor *)self->_systemMonitor screenOn];
  if (v4)
  {
    LOBYTE(v4) = !v3 && ([(CUSystemMonitor *)self->_systemMonitor screenOn]& 1) != 0 || (v3 & 0x18001) == 0;
  }

  return v4;
}

- (void)_commonEnsureStarted
{
  if (!self->_systemMonitor)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F6360();
    }

    v3 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v3;

    [(CUSystemMonitor *)self->_systemMonitor setDispatchQueue:self->_dispatchQueue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100031394;
    v21[3] = &unk_1008CDEA0;
    v21[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setCallChangedHandler:v21];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000ECBF8;
    v20[3] = &unk_1008CDEA0;
    v20[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setScreenOnChangedHandler:v20];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000ECC00;
    v19[3] = &unk_1008CDEA0;
    v19[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setScreenLockedChangedHandler:v19];
    v5 = self->_systemMonitor;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000ECC08;
    v18[3] = &unk_1008CDEA0;
    v18[4] = self;
    [(CUSystemMonitor *)v5 activateWithCompletion:v18];
  }

  if (!self->_bleMapCoalescer)
  {
    v6 = objc_alloc_init(CUCoalescer);
    bleMapCoalescer = self->_bleMapCoalescer;
    self->_bleMapCoalescer = v6;

    [(CUCoalescer *)self->_bleMapCoalescer setDispatchQueue:self->_dispatchQueue];
    [(CUCoalescer *)self->_bleMapCoalescer setMaxDelay:0.05];
    [(CUCoalescer *)self->_bleMapCoalescer setMinDelay:0.05];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10003538C;
    v17[3] = &unk_1008CDEA0;
    v17[4] = self;
    [(CUCoalescer *)self->_bleMapCoalescer setActionHandler:v17];
  }

  if (!self->_statusMonitor && SFDeviceClassCodeGet() - 1 <= 1)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:self selector:"commonSystemUIChanged" name:@"com.apple.sharingd.SystemUIChanged" object:0];
    v9 = +[SDStatusMonitor sharedMonitor];
    statusMonitor = self->_statusMonitor;
    self->_statusMonitor = v9;
  }

  if (!self->_motionMonitor)
  {
    v11 = objc_alloc_init(CMMotionActivityManager);
    motionMonitor = self->_motionMonitor;
    self->_motionMonitor = v11;
  }

  if (!self->_notificationProxy)
  {
    v13 = objc_alloc_init(SFNotificationProxy);
    notificationProxy = self->_notificationProxy;
    self->_notificationProxy = v13;

    [(SFNotificationProxy *)self->_notificationProxy setDispatchQueue:self->_dispatchQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000ECC78;
    v16[3] = &unk_1008D00C8;
    v16[4] = self;
    [(SFNotificationProxy *)self->_notificationProxy setDismissedHandler:v16];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000ECC88;
    v15[3] = &unk_1008D00F0;
    v15[4] = self;
    [(SFNotificationProxy *)self->_notificationProxy setTappedHandler:v15];
  }
}

- (BOOL)_bleActionDiscoveryShouldStart
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (SFDeviceClassCodeGet() - 1 > 1)
  {
    return 0;
  }

  systemMonitor = self->_systemMonitor;

  return [(CUSystemMonitor *)systemMonitor screenOn];
}

- (void)_bleInfoDiscoveryEnsureStopped
{
  if (self->_bleInfoDiscovery)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F6D30();
    }

    [(SFDeviceDiscovery *)self->_bleInfoDiscovery invalidate];
    bleInfoDiscovery = self->_bleInfoDiscovery;
    self->_bleInfoDiscovery = 0;

    [(SDProxHandoffAgent *)self _bleUpdateMappingReset];
  }

  [(NSMutableDictionary *)self->_bleInfoDevices removeAllObjects];
  bleInfoDevices = self->_bleInfoDevices;
  self->_bleInfoDevices = 0;

  [(NSMutableDictionary *)self->_bleUnmapped removeAllObjects];
  bleUnmapped = self->_bleUnmapped;
  self->_bleUnmapped = 0;
}

- (NSString)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"-- SDProxHandoffAgent --\n"];
  if (self->_prefEnabled)
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  if (self->_userOnCall)
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  if (self->_clientShouldAdvertise)
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  if (self->_candidateNearby)
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  [v3 appendFormat:@"Enabled: %s, On call: %s, client should advertise: %s, Candidate nearby: %s\n", v4, v5, v6, v7];
  clinkClient = self->_clinkClient;
  if (clinkClient)
  {
    v9 = clinkClient;
    v10 = [(RPCompanionLinkClient *)v9 activeDevices];
    [v3 appendFormat:@"CLinkClient (%ld devices): %@\n", objc_msgSend(v10, "count"), v9];
  }

  if (self->_bleActionService)
  {
    [v3 appendFormat:@"BLE Action Service: %@\n", self->_bleActionService];
  }

  if ([(NSMutableSet *)self->_proxClients count])
  {
    [v3 appendFormat:@"ProxClients: (%ld)\n", -[NSMutableSet count](self->_proxClients, "count")];
  }

  bleActionDiscovery = self->_bleActionDiscovery;
  if (bleActionDiscovery)
  {
    v12 = [(NSMutableDictionary *)self->_bleActionDevices count];
    if (self->_bleActionScanTimedOut)
    {
      v13 = @", TIMED OUT";
    }

    else
    {
      v13 = &stru_1008EFBD0;
    }

    [v3 appendFormat:@"BLE NearbyAction Discovery: %@, %ld devices%@\n", bleActionDiscovery, v12, v13];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = [(NSMutableDictionary *)self->_bleActionDevices allValues];
    v15 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v40;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v40 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [v3 appendFormat:@" - %@\n", *(*(&v39 + 1) + 8 * i)];
        }

        v16 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v16);
    }
  }

  if (self->_bleInfoDiscovery)
  {
    [v3 appendFormat:@"BLE NearbyInfo Discovery: %@\n", self->_bleInfoDiscovery];
  }

  [v3 appendFormat:@"Mapped Devices (%ld), unmapped (%ld):\n", -[NSMutableDictionary count](self->_mappedDevices, "count"), -[NSMutableDictionary count](self->_bleUnmapped, "count")];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v19 = [(NSMutableDictionary *)self->_mappedDevices allValues];
  v20 = [v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v36;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v36 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [v3 appendFormat:@" - %@", *(*(&v35 + 1) + 8 * j)];
        [v3 appendFormat:@"\n"];
      }

      v21 = [v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v21);
  }

  uiDevice = self->_uiDevice;
  if (uiDevice)
  {
    v25 = uiDevice;
    v26 = sub_100035C98([(SFCombinedDevice *)v25 nextState]);
    [v3 appendFormat:@"UI Device: (next state = %@)\n - %@\n", v26, v25];
  }

  v27 = [(SDProxHandoffAgent *)self currentCall];
  v28 = v27;
  if (v27)
  {
    v29 = [v27 callUUID];
    [v3 appendFormat:@"Current Call:\n - %@\n", v29];
  }

  [(SDStatusMonitor *)self->_statusMonitor systemUIFlags];
  [(SDProxHandoffAgent *)self _systemCanTrigger];
  self->_stationary;
  NSAppendPrintF();
  v30 = v3;

  prefThrottleEventCount = self->_prefThrottleEventCount;
  prefThrottleEventMax = self->_prefThrottleEventMax;
  NSAppendPrintF();
  v31 = v30;

  return v30;
}

- (id)currentCall
{
  v2 = [(objc_class *)off_100970920() sharedInstance];
  v3 = [v2 currentCalls];
  v4 = [v3 lastObject];
  if (v4 && dword_1009708B0 <= 10 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7F20();
  }

  return v4;
}

- (void)_commonCallCountChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = self->_systemMonitor;
  if (v3)
  {
    v19 = v3;
    v4 = [(CUSystemMonitor *)v3 activeCallCount];
    v5 = [(CUSystemMonitor *)v19 connectedCallCount];
    v6 = v5 > 0 || self->_prefForceOnCall;
    userOnCall = self->_userOnCall;
    self->_userOnCall = v6;
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_17;
        }

        v6 = self->_userOnCall;
      }

      v8 = "no";
      if (userOnCall)
      {
        v9 = "yes";
      }

      else
      {
        v9 = "no";
      }

      if (v6)
      {
        v10 = "yes";
      }

      else
      {
        v10 = "no";
      }

      if (self->_prefForceOnCall)
      {
        v8 = "yes";
      }

      v17 = v10;
      v18 = v8;
      v15 = v5;
      v16 = v9;
      v14 = v4;
      LogPrintF();
    }

LABEL_17:
    v12 = v5 < 1 && v4 > 0;
    if (self->_unansweredCall != v12)
    {
      if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_100031684();
      }

      self->_unansweredCall = v12;
    }

    if (self->_userOnCall || !userOnCall || self->_prefForceOnCall)
    {
      if (!self->_userOnCall || userOnCall || self->_prefForceOnCall)
      {
        goto LABEL_44;
      }

      if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F63D0();
      }
    }

    else
    {
      if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F63B4();
      }

      uiDevice = self->_uiDevice;
      if (uiDevice)
      {
        [(SDProxHandoffAgent *)self _uiStopIfNeeded:uiDevice reason:4];
      }
    }

    [(SDProxHandoffAgent *)self _resetAllStates:v14];
LABEL_44:
    [(SDProxHandoffAgent *)self _update:v14];
    v3 = v19;
  }
}

- (void)_bleActionDiscoveryEnsureStopped
{
  if (self->_bleActionDiscovery)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_100031668();
    }

    [(SFDeviceDiscovery *)self->_bleActionDiscovery invalidate];
    bleActionDiscovery = self->_bleActionDiscovery;
    self->_bleActionDiscovery = 0;

    [(SDProxHandoffAgent *)self _bleUpdateMappingReset];
  }

  [(NSMutableDictionary *)self->_bleActionDevices removeAllObjects];
  bleActionDevices = self->_bleActionDevices;
  self->_bleActionDevices = 0;

  uiDevice = self->_uiDevice;
  self->_uiDevice = 0;

  [(SDProxHandoffAgent *)self _bleActionScanTimerInvalidate];
}

- (void)_bleUpdateMappingReset
{
  [(NSMutableDictionary *)self->_bleUnmapped removeAllObjects];
  bleUnmapped = self->_bleUnmapped;
  self->_bleUnmapped = 0;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSMutableDictionary *)self->_mappedDevices allValues];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 effectiveID];
        if (v10)
        {
          if ([v9 stateIsClose])
          {
            [(SDProxHandoffAgent *)self _proximityClientDeviceExitedImmediate:v10];
          }

          if ([v9 stateIsMedium])
          {
            [(SDProxHandoffAgent *)self _proximityClientDeviceDidUnTrigger:v10];
          }

          if ([v9 stateIsNearby])
          {
            [(SDProxHandoffAgent *)self _proximityClientDeviceExitedNearby:v10];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)self->_mappedDevices removeAllObjects];
  mappedDevices = self->_mappedDevices;
  self->_mappedDevices = 0;

  [(SDProxHandoffAgent *)self _bleUpdateMappingAndNearby];
}

- (void)_bleActionScanTimerInvalidate
{
  if (self->_bleActionScanTimer)
  {
    dispatch_assert_queue_V2(self->_dispatchQueue);
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_10003568C();
    }

    self->_bleActionScanTimedOut = 0;
    bleActionScanTimer = self->_bleActionScanTimer;
    if (bleActionScanTimer)
    {
      v5 = bleActionScanTimer;
      dispatch_source_cancel(v5);
      v4 = self->_bleActionScanTimer;
      self->_bleActionScanTimer = 0;
    }
  }
}

- (void)_clinkEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_clinkClient)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000319C0();
    }

    [(RPCompanionLinkClient *)self->_clinkClient deregisterRequestID:@"com.apple.sharing.calltransfer"];
    [(RPCompanionLinkClient *)self->_clinkClient invalidate];
    clinkClient = self->_clinkClient;
    self->_clinkClient = 0;
  }
}

- (void)_motionEnsureStopped
{
  if (self->_motionMonitorStarted)
  {
    v7 = v2;
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000329B0();
    }

    [(CMMotionActivityManager *)self->_motionMonitor stopActivityUpdates:v3];
    self->_motionMonitorStarted = 0;
  }
}

- (void)_updateCandidateIsNearby
{
  v3 = [(NSMutableDictionary *)self->_mappedDevices count]!= 0;
  if (self->_candidateNearby != v3)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_100035E3C();
    }

    self->_candidateNearby = v3;
  }
}

- (void)_bleActionScanTimerActivate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(SDProxHandoffAgent *)self _bleActionScanTimerInvalidate];
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_10003563C();
  }

  self->_bleActionScanTimedOut = 0;
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  bleActionScanTimer = self->_bleActionScanTimer;
  self->_bleActionScanTimer = v3;

  v5 = self->_bleActionScanTimer;
  prefBLEActionScanSecs = self->_prefBLEActionScanSecs;
  SFDispatchTimerSet();
  v7 = self->_bleActionScanTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000EF4C4;
  handler[3] = &unk_1008CDEA0;
  handler[4] = self;
  dispatch_source_set_event_handler(v7, handler);
  dispatch_resume(self->_bleActionScanTimer);
}

- (void)_bleUpdateMappingAndNearbyCoalesced
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1009708B0 <= 10 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_100035394();
  }

  v3 = [(NSMutableDictionary *)self->_bleUnmapped allValues];
  v4 = [v3 copy];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(SDProxHandoffAgent *)self _bleUpdateMappingWithDevice:*(*(&v21 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [(NSMutableDictionary *)self->_bleActionDevices allValues];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(SDProxHandoffAgent *)self _bleUpdateMappingWithDevice:*(*(&v17 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  [(SDProxHandoffAgent *)self _updateCandidateIsNearby];
  [(SDProxHandoffAgent *)self _update];
}

+ (id)sharedAgent
{
  if (qword_100989C98 != -1)
  {
    sub_1000F6098();
  }

  v3 = qword_100989CA0;

  return v3;
}

- (SDProxHandoffAgent)init
{
  v6.receiver = self;
  v6.super_class = SDProxHandoffAgent;
  v2 = [(SDProxHandoffAgent *)&v6 init];
  if (v2)
  {
    v3 = CUMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EC270;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EC34C;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F60C8();
  }

  [(SDProxHandoffAgent *)self _bleActionDiscoveryEnsureStopped];
  [(SDProxHandoffAgent *)self _bleInfoDiscoveryEnsureStopped];
  [(SDProxHandoffAgent *)self _commonEnsureStopped];
  [(SDProxHandoffAgent *)self _clinkEnsureStopped];
  [(SDProxHandoffAgent *)self _serviceEnsureStopped];
  [(NSMutableSet *)self->_proxClients removeAllObjects];
  proxClients = self->_proxClients;
  self->_proxClients = 0;
}

- (void)prefsChanged
{
  v3 = CFPrefs_GetInt64() != 0;
  if (self->_prefEnabled != v3)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F60E4();
    }

    self->_prefEnabled = v3;
  }

  CFPrefs_GetDouble();
  v5 = v4;
  prefBLEActionScanSecs = self->_prefBLEActionScanSecs;
  if (v5 != prefBLEActionScanSecs)
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        prefBLEActionScanSecs = self->_prefBLEActionScanSecs;
      }

      v28 = prefBLEActionScanSecs;
      v29 = v5;
      LogPrintF();
    }

LABEL_11:
    self->_prefBLEActionScanSecs = v5;
  }

  v7 = CFPrefs_GetInt64() != 0;
  if (self->_prefForceShouldAdvertise != v7)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F613C();
    }

    self->_prefForceShouldAdvertise = v7;
    [(SDProxHandoffAgent *)self _commonShouldAdvertiseChanged:*&v28];
  }

  v8 = CFPrefs_GetInt64() != 0;
  if (self->_prefForceStationary != v8)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F6194();
    }

    self->_prefForceStationary = v8;
    [(SDProxHandoffAgent *)self _motionUpdate:0, *&v28, *&v29];
  }

  v9 = CFPrefs_GetInt64() != 0;
  if (self->_prefHighNormal != v9)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F61EC();
    }

    self->_prefHighNormal = v9;
    [(SDProxHandoffAgent *)self _bleActionDiscoveryEnsureStopped:*&v28];
  }

  v10 = CFPrefs_GetInt64() != 0;
  if (self->_prefForceOnCall != v10)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F6244();
    }

    self->_prefForceOnCall = v10;
    [(SDProxHandoffAgent *)self _commonCallCountChanged:*&v28];
  }

  v11 = CFPrefs_GetInt64() != 0;
  prefIgnoreMediumThrottle = self->_prefIgnoreMediumThrottle;
  if (prefIgnoreMediumThrottle != v11)
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1)
      {
LABEL_35:
        v13 = "no";
        if (prefIgnoreMediumThrottle)
        {
          v14 = "yes";
        }

        else
        {
          v14 = "no";
        }

        if (v11)
        {
          v13 = "yes";
        }

        v28 = *&v14;
        v29 = *&v13;
        LogPrintF();
        goto LABEL_42;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(prefIgnoreMediumThrottle) = self->_prefIgnoreMediumThrottle;
        goto LABEL_35;
      }
    }

LABEL_42:
    self->_prefIgnoreMediumThrottle = v11;
  }

  v15 = CFPrefs_GetInt64() != 0;
  if (self->_prefMediumBubbleEnabled != v15)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F629C();
    }

    self->_prefMediumBubbleEnabled = v15;
  }

  Int64 = CFPrefs_GetInt64();
  prefMediumBubbleLastTicks = self->_prefMediumBubbleLastTicks;
  if (Int64 != prefMediumBubbleLastTicks)
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_53;
        }

        prefMediumBubbleLastTicks = self->_prefMediumBubbleLastTicks;
      }

      v28 = *&prefMediumBubbleLastTicks;
      v29 = *&Int64;
      LogPrintF();
    }

LABEL_53:
    self->_prefMediumBubbleLastTicks = Int64;
  }

  CFPrefs_GetDouble();
  v19 = v18;
  prefRetriggerSecs = self->_prefRetriggerSecs;
  if (v19 == prefRetriggerSecs)
  {
    goto LABEL_60;
  }

  if (dword_1009708B0 <= 30)
  {
    if (dword_1009708B0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_59;
      }

      prefRetriggerSecs = self->_prefRetriggerSecs;
    }

    v28 = prefRetriggerSecs;
    v29 = v19;
    LogPrintF();
  }

LABEL_59:
  self->_prefRetriggerSecs = v19;
LABEL_60:
  CFPrefs_GetDouble();
  v22 = v21;
  prefTransferSecs = self->_prefTransferSecs;
  if (v22 == prefTransferSecs)
  {
    goto LABEL_66;
  }

  if (dword_1009708B0 <= 30)
  {
    if (dword_1009708B0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_65;
      }

      prefTransferSecs = self->_prefTransferSecs;
    }

    v28 = prefTransferSecs;
    v29 = v22;
    LogPrintF();
  }

LABEL_65:
  self->_prefTransferSecs = v22;
LABEL_66:
  v24 = CFPrefs_GetInt64();
  prefThrottleEventCount = self->_prefThrottleEventCount;
  if (v24 == prefThrottleEventCount)
  {
    goto LABEL_72;
  }

  if (dword_1009708B0 <= 30)
  {
    if (dword_1009708B0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_71;
      }

      prefThrottleEventCount = self->_prefThrottleEventCount;
    }

    v28 = *&prefThrottleEventCount;
    v29 = *&v24;
    LogPrintF();
  }

LABEL_71:
  self->_prefThrottleEventCount = v24;
LABEL_72:
  v26 = CFPrefs_GetInt64();
  prefThrottleEventMax = self->_prefThrottleEventMax;
  if (v26 != prefThrottleEventMax)
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_77;
        }

        prefThrottleEventMax = self->_prefThrottleEventMax;
      }

      v28 = *&prefThrottleEventMax;
      v29 = *&v26;
      LogPrintF();
    }

LABEL_77:
    self->_prefThrottleEventMax = v26;
  }

  [(SDProxHandoffAgent *)self _update:*&v28];
}

- (void)setPreventNotifications:(BOOL)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000ECB94;
  v4[3] = &unk_1008CF798;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)_commonEnsureStopped
{
  if (self->_systemMonitor)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F6398();
    }

    [(CUSystemMonitor *)self->_systemMonitor invalidate];
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = 0;
  }

  bleMapCoalescer = self->_bleMapCoalescer;
  if (bleMapCoalescer)
  {
    [(CUCoalescer *)bleMapCoalescer invalidate];
    v5 = self->_bleMapCoalescer;
    self->_bleMapCoalescer = 0;
  }

  if (self->_statusMonitor)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:@"com.apple.sharingd.SystemUIChanged" object:0];

    statusMonitor = self->_statusMonitor;
    self->_statusMonitor = 0;
  }

  motionMonitor = self->_motionMonitor;
  if (motionMonitor)
  {
    self->_motionMonitor = 0;
  }

  notificationProxy = self->_notificationProxy;
  if (notificationProxy)
  {
    [(SFNotificationProxy *)notificationProxy setDismissedHandler:0];
    [(SFNotificationProxy *)self->_notificationProxy setTappedHandler:0];
    v10 = self->_notificationProxy;
    self->_notificationProxy = 0;
  }

  [(SDProxHandoffAgent *)self _hapticsEnsureStopped];
}

- (void)_commonShouldAdvertiseChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_proxClients;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v18;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 |= [*(*(&v17 + 1) + 8 * i) shouldAdvertise];
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  prefForceShouldAdvertise = self->_prefForceShouldAdvertise;
  v10 = prefForceShouldAdvertise | v6 & 1;
  if (v10 != self->_clientShouldAdvertise)
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1)
      {
LABEL_13:
        if (v10)
        {
          v11 = "no";
        }

        else
        {
          v11 = "yes";
        }

        if (v10)
        {
          v12 = "yes";
        }

        else
        {
          v12 = "no";
        }

        if (prefForceShouldAdvertise)
        {
          v13 = "yes";
        }

        else
        {
          v13 = "no";
        }

        v15 = v12;
        v16 = v13;
        v14 = v11;
        LogPrintF();
        goto LABEL_24;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(prefForceShouldAdvertise) = self->_prefForceShouldAdvertise;
        goto LABEL_13;
      }
    }

LABEL_24:
    self->_clientShouldAdvertise = v10;
  }

  [(SDProxHandoffAgent *)self _update:v14];
}

- (void)_commonScreenStateChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = [(CUSystemMonitor *)self->_systemMonitor screenOn];
  if (dword_1009708B0 > 30 || dword_1009708B0 == -1 && !_LogCategory_Initialize())
  {
    if (v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_1000F63EC(v3, &self->_systemMonitor);
  if ((v3 & 1) == 0)
  {
LABEL_5:
    [(SDProxHandoffAgent *)self _bleUpdateMappingReset];
    [(SFNotificationProxy *)self->_notificationProxy requestRemoveAll];
    v4 = +[SDNearbyAgent sharedNearbyAgent];
    [v4 bleProximityEstimatorsResetDeviceClose];
  }

LABEL_6:

  [(SDProxHandoffAgent *)self _update];
}

- (void)_scheduleRunAfter:(double)a3
{
  v4 = dispatch_time(0, (a3 * 1000000000.0));
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ED0BC;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_after(v4, dispatchQueue, block);
}

- (BOOL)_runStateVerify:(int)a3 device:(id)a4
{
  v5 = a4;
  v6 = [v5 state];
  if (v6 != a3 && dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F646C(v5, a3);
  }

  return v6 == a3;
}

- (void)_runNotificationPending
{
  v3 = self->_uiDevice;
  if (v3)
  {
    v11 = v3;
    v4 = [(SDProxHandoffAgent *)self _runStateVerify:11 device:v3];
    v3 = v11;
    if (v4)
    {
      v5 = [(SFCombinedDevice *)v11 nextState];
      v3 = v11;
      if (v5 == 13)
      {
        if (dword_1009708B0 <= 30)
        {
          if (dword_1009708B0 != -1 || (v6 = _LogCategory_Initialize(), v3 = v11, v6))
          {
            sub_1000F64F4();
            v3 = v11;
          }
        }

        if (self->_userOnCall)
        {
          [(SDProxHandoffAgent *)self _combinedDevicePrepareForCallTransferTrigger:v3];
        }

        else
        {
          [(SFCombinedDevice *)v3 setNotificationType:2];
        }

        v7 = [(SFCombinedDevice *)v11 effectiveID];
        if (!v7)
        {
          if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
          {
            sub_1000F6578();
          }

          goto LABEL_28;
        }

        v8 = [(SFCombinedDevice *)v11 notificationType];
        if (v8 == 2)
        {
          if ([(SFCombinedDevice *)v11 canTransition:12])
          {
            [(SFCombinedDevice *)v11 setPendingContentTicks:mach_absolute_time()];
            [(SFCombinedDevice *)v11 setState:12];
            v9 = [(SFCombinedDevice *)v11 notificationInfo];
            if (v9)
            {
              v10 = 13;
            }

            else
            {
              v10 = 0;
            }

            [(SFCombinedDevice *)v11 setNextState:v10];

            [(SDProxHandoffAgent *)self _proximityClientDeviceWillTrigger:v7];
            goto LABEL_24;
          }
        }

        else
        {
          if (v8 != 3)
          {
            if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
            {
              sub_1000F6534(v11);
            }

            goto LABEL_28;
          }

          if ([(SFCombinedDevice *)v11 canTransition:13])
          {
            [(SFCombinedDevice *)v11 setPendingContentTicks:mach_absolute_time()];
            [(SFCombinedDevice *)v11 setState:13];
            [(SFCombinedDevice *)v11 setNextState:14];
LABEL_24:
            [(SDProxHandoffAgent *)self _run];
          }
        }

LABEL_28:

        v3 = v11;
      }
    }
  }
}

- (void)_runNotificationPendingContent
{
  v3 = self->_uiDevice;
  if (v3)
  {
    v12 = v3;
    v4 = [(SDProxHandoffAgent *)self _runStateVerify:12 device:v3];
    v3 = v12;
    if (v4)
    {
      v5 = [(SFCombinedDevice *)v12 nextState];
      v3 = v12;
      if (v5 == 13)
      {
        v6 = [(SFCombinedDevice *)v12 notificationInfo];
        if (v6)
        {
          mach_absolute_time();
          [(SFCombinedDevice *)v12 pendingContentTicks];
          UpTicksToSecondsF();
          v8 = v7;
          [(SFCombinedDevice *)v12 setPendingContentDurationSecs:?];
          if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
          {
            v11 = v8;
            v10 = v12;
            LogPrintF();
          }

          if ([(SFCombinedDevice *)v12 canTransition:13, v10, v11])
          {
            [(SFCombinedDevice *)v12 setState:13];
            if ([(SDProxHandoffAgent *)self _shouldMediumPromptWithInfo:v6])
            {
              v9 = 14;
            }

            else
            {
              v9 = 0;
            }

            [(SFCombinedDevice *)v12 setNextState:v9];
            [(SDProxHandoffAgent *)self _run];
          }
        }

        else if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
        {
          sub_1000F6594();
        }

        v3 = v12;
      }
    }
  }
}

- (void)_runNotificationReady
{
  v3 = self->_uiDevice;
  if (v3 && [(SDProxHandoffAgent *)self _runStateVerify:13 device:v3]&& ([(SFCombinedDevice *)v3 nextState]== 14 || [(SFCombinedDevice *)v3 nextState]== 16) && [(SFCombinedDevice *)v3 canTransition:14])
  {
    if ([(SDProxHandoffAgent *)self _systemCanTrigger])
    {
      v4 = [(SFCombinedDevice *)v3 effectiveID];
      if (!v4)
      {
        if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
        {
          sub_1000F66D0();
        }

        goto LABEL_59;
      }

      v5 = [(SFCombinedDevice *)v3 notificationInfo];
      if (!v5)
      {
        if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
        {
          sub_1000F66B4();
        }

        goto LABEL_58;
      }

      if (self->_stationary)
      {
        if (dword_1009708B0 <= 60 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
        {
          sub_1000F6694();
        }

        goto LABEL_58;
      }

      v6 = [(SFCombinedDevice *)v3 nextState];
      if (v6 == 14)
      {
        v7 = [v5 mediumBubbleVersion];
        v10 = [(SFCombinedDevice *)v3 bleDevice];
        v11 = [v10 bleDevice];
        if ([v11 insideSmallBubble])
        {
          v9 = 16;
        }

        else
        {
          v9 = 0;
        }

        if (v7)
        {
          v8 = 1;
          goto LABEL_34;
        }
      }

      else if (v6 == 16)
      {
        v7 = v5;
        v8 = 0;
        v9 = 16;
LABEL_34:
        mach_absolute_time();
        [(SFCombinedDevice *)v3 pendingContentTicks];
        UpTicksToSecondsF();
        if (v8 && (v13 = 0.25 - v12, 0.25 - v12 > 0.0))
        {
          if (![(SFCombinedDevice *)v3 medBubbleDelayed])
          {
            if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
            {
              sub_1000F660C();
            }

            [(SFCombinedDevice *)v3 setMedBubbleDelayed:1];
            [(SDProxHandoffAgent *)self _scheduleRunAfter:v13];
          }
        }

        else
        {
          [(SFCombinedDevice *)v3 setMedBubbleDelayed:0];
          if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
          {
            sub_1000F65CC();
          }

          [(SFCombinedDevice *)v3 setNotificationTicks:mach_absolute_time()];
          [(SFCombinedDevice *)v3 setState:14];
          [(SFCombinedDevice *)v3 setNextState:v9];
          if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
          {
            v14 = "no";
            if (v8)
            {
              v14 = "yes";
            }

            v17 = v4;
            v18 = v14;
            LogPrintF();
          }

          [(SFNotificationProxy *)self->_notificationProxy requestPostOrUpdate:v4 info:v7 mediumVariant:v8, v17, v18];
          if (v8)
          {
            [(SDProxHandoffAgent *)self _throttleMediumSetTicks:mach_absolute_time()];
          }

          v19[0] = @"notificationType";
          v15 = [NSNumber numberWithUnsignedInt:[(SFCombinedDevice *)v3 notificationType]];
          v19[1] = @"uiID";
          v20[0] = v15;
          v20[1] = v4;
          v16 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
          SFMetricsLog();

          [(SDProxHandoffAgent *)self _run];
        }

LABEL_57:

LABEL_58:
LABEL_59:

        goto LABEL_60;
      }

      if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F6654();
      }

      v7 = 0;
      goto LABEL_57;
    }

    if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F65B0();
    }
  }

LABEL_60:
}

- (void)_runNotificationPresented
{
  v3 = self->_uiDevice;
  if (v3)
  {
    v15 = v3;
    v4 = [(SDProxHandoffAgent *)self _runStateVerify:14 device:v3];
    v3 = v15;
    if (v4)
    {
      v5 = [(SFCombinedDevice *)v15 nextState];
      v3 = v15;
      if (v5 == 16 || (v6 = [(SFCombinedDevice *)v15 nextState], v3 = v15, v6 == 18) || (v7 = [(SFCombinedDevice *)v15 nextState], v3 = v15, v7 == 15))
      {
        if (dword_1009708B0 <= 30)
        {
          if (dword_1009708B0 != -1 || (v8 = _LogCategory_Initialize(), v3 = v15, v8))
          {
            sub_1000F66EC();
            v3 = v15;
          }
        }

        v9 = [(SFCombinedDevice *)v3 nextState];
        v10 = v9;
        if (v9 == 18)
        {
          v14 = [(SFCombinedDevice *)v15 canTransition:18];
          v3 = v15;
          if (!v14)
          {
            goto LABEL_20;
          }

          [(SFCombinedDevice *)v15 setDismissReason:3];
          [(SFCombinedDevice *)v15 setTransferPendingStartTicks:mach_absolute_time()];
          goto LABEL_18;
        }

        if (v9 == 16)
        {
          v12 = [(SFCombinedDevice *)v15 canTransition:16];
          v3 = v15;
          if (!v12)
          {
            goto LABEL_20;
          }

          [(SFCombinedDevice *)v15 setTransferPendingStartTicks:mach_absolute_time()];
          v13 = 17;
          goto LABEL_19;
        }

        v3 = v15;
        if (v9 == 15)
        {
          v11 = [(SFCombinedDevice *)v15 canTransition:15];
          v3 = v15;
          if (v11)
          {
            [(SFCombinedDevice *)v15 setNotificationInfo:0];
            [(SFCombinedDevice *)v15 setNotificationType:0];
            [(SFCombinedDevice *)v15 setTransferDoneTicks:mach_absolute_time()];
LABEL_18:
            v13 = 0;
LABEL_19:
            [(SFCombinedDevice *)v15 setState:v10];
            [(SFCombinedDevice *)v15 setNextState:v13];
            [(SDProxHandoffAgent *)self _run];
            v3 = v15;
          }
        }
      }
    }
  }

LABEL_20:
}

- (void)_runNotificationDismissed
{
  v3 = self->_uiDevice;
  if (v3)
  {
    v14 = v3;
    v4 = [(SDProxHandoffAgent *)self _runStateVerify:15 device:v3];
    v3 = v14;
    if (v4)
    {
      v5 = [(SFCombinedDevice *)v14 nextState];
      v3 = v14;
      if (v5 == 10 || (v6 = [(SFCombinedDevice *)v14 nextState], v3 = v14, v6 == 16))
      {
        if (dword_1009708B0 <= 30)
        {
          if (dword_1009708B0 != -1 || (v7 = _LogCategory_Initialize(), v3 = v14, v7))
          {
            sub_1000F672C();
            v3 = v14;
          }
        }

        v8 = [(SFCombinedDevice *)v3 nextState];
        if (v8 == 16)
        {
          v11 = [(SFCombinedDevice *)v14 canTransition:16];
          v3 = v14;
          if (!v11)
          {
            goto LABEL_17;
          }

          [(SFCombinedDevice *)v14 setTransferPendingStartTicks:mach_absolute_time()];
          [(SFCombinedDevice *)v14 setState:16];
          v12 = [(SFCombinedDevice *)v14 notificationInfo];
          v13 = [v12 interactionBehavior];

          if (v13 == 1)
          {
            v10 = 17;
          }

          else
          {
            v10 = 0;
          }

          goto LABEL_16;
        }

        v3 = v14;
        if (v8 == 10)
        {
          v9 = [(SFCombinedDevice *)v14 canTransition:10];
          v3 = v14;
          if (v9)
          {
            [(SFCombinedDevice *)v14 resetTicks];
            [(SFCombinedDevice *)v14 setState:10];
            v10 = 0;
LABEL_16:
            [(SFCombinedDevice *)v14 setNextState:v10];
            [(SDProxHandoffAgent *)self _run];
            v3 = v14;
          }
        }
      }
    }
  }

LABEL_17:
}

- (void)_runTransferInProgress
{
  v3 = self->_uiDevice;
  if (v3)
  {
    v11 = v3;
    v4 = [(SDProxHandoffAgent *)self _runStateVerify:18 device:v3];
    v3 = v11;
    if (v4)
    {
      v5 = [(SFCombinedDevice *)v11 nextState];
      v3 = v11;
      if (v5 == 19 || (v6 = [(SFCombinedDevice *)v11 nextState], v3 = v11, v6 == 20))
      {
        if (dword_1009708B0 <= 30)
        {
          if (dword_1009708B0 != -1 || (v7 = _LogCategory_Initialize(), v3 = v11, v7))
          {
            sub_1000F676C();
            v3 = v11;
          }
        }

        v8 = [(SFCombinedDevice *)v3 nextState];
        if (v8 == 20)
        {
          v10 = [(SFCombinedDevice *)v11 canTransition:20];
          v3 = v11;
          if (!v10)
          {
            goto LABEL_15;
          }

          [(SFCombinedDevice *)v11 setState:20];
          [(SFCombinedDevice *)v11 setTransferDoneTicks:mach_absolute_time()];
          [(SFCombinedDevice *)v11 setNextState:0];
          [(SDProxHandoffAgent *)self _uiStopIfNeeded:v11 reason:[(SFCombinedDevice *)v11 dismissReason]];
          [(SFCombinedDevice *)v11 setDismissReason:0];
          goto LABEL_14;
        }

        v3 = v11;
        if (v8 == 19)
        {
          v9 = [(SFCombinedDevice *)v11 canTransition:19];
          v3 = v11;
          if (v9)
          {
            [(SFCombinedDevice *)v11 setState:19];
            [(SFCombinedDevice *)v11 setNextState:20];
LABEL_14:
            [(SDProxHandoffAgent *)self _run];
            v3 = v11;
          }
        }
      }
    }
  }

LABEL_15:
}

- (void)_runTransferPending
{
  v3 = self->_uiDevice;
  if (v3)
  {
    v20 = v3;
    v4 = [(SDProxHandoffAgent *)self _runStateVerify:16 device:v3];
    v3 = v20;
    if (v4)
    {
      v5 = [(SFCombinedDevice *)v20 nextState];
      v3 = v20;
      if (v5 == 18 || (v6 = [(SFCombinedDevice *)v20 nextState], v3 = v20, v6 == 17))
      {
        if ([(SFCombinedDevice *)v3 transferPendingStartTicks]== -1)
        {
          if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
          {
            sub_1000F67AC();
          }

          [(SFCombinedDevice *)v20 setTransferPendingStartTicks:mach_absolute_time()];
        }

        mach_absolute_time();
        [(SFCombinedDevice *)v20 transferPendingStartTicks];
        UpTicksToSecondsF();
        v8 = v7;
        v3 = v20;
        if (v7 >= self->_prefTransferSecs)
        {
          if (dword_1009708B0 <= 30)
          {
            if (dword_1009708B0 != -1 || (v9 = _LogCategory_Initialize(), v3 = v20, v9))
            {
              sub_1000F67EC();
              v3 = v20;
            }
          }

          [(SFCombinedDevice *)v3 setTransferPendingDurationSecs:v8];
          v10 = [(SFCombinedDevice *)v20 nextState];
          if (v10 == 17)
          {
            v12 = [(SFCombinedDevice *)v20 canTransition:17];
            v3 = v20;
            if (!v12)
            {
              goto LABEL_29;
            }

            v13 = [(SFCombinedDevice *)v20 effectiveID];
            if (v13)
            {
              v14 = v13;
              if (self->_userOnCall)
              {
                v15 = [(SFCombinedDevice *)v20 notificationInfo];
                v16 = [v15 notificationType];

                if (v16 == 2)
                {
                  [(SDProxHandoffAgent *)self _combinedDevicePrepareForCallTransferTrigger:v20];
                }
              }

              v17 = [(SFCombinedDevice *)v20 notificationInfo];
              if (v17)
              {
                v18 = v17;
                if ([(SFCombinedDevice *)v20 notificationTicks]== -1)
                {
                  [(SFCombinedDevice *)v20 setNotificationTicks:mach_absolute_time()];
                }

                [(SFNotificationProxy *)self->_notificationProxy requestPostOrUpdate:v14 info:v18 mediumVariant:0];
                [(SDProxHandoffAgent *)self _hapticsFireNotificationSuccess];

                [(SFCombinedDevice *)v20 setTransferPendingStartTicks:-1];
                [(SFCombinedDevice *)v20 setState:17];
                [(SFCombinedDevice *)v20 setNextState:18];

                [(SDProxHandoffAgent *)self _run];
                [(SDProxHandoffAgent *)self _throttleEventDidOccur];
                goto LABEL_28;
              }

              [(SFCombinedDevice *)v20 setTransferPendingStartTicks:-1];
              [(SFCombinedDevice *)v20 setState:17];
              [(SFCombinedDevice *)v20 setNextState:18];

              goto LABEL_18;
            }

            v3 = v20;
            if (dword_1009708B0 <= 90)
            {
              if (dword_1009708B0 != -1 || (v19 = _LogCategory_Initialize(), v3 = v20, v19))
              {
                sub_1000F682C();
                goto LABEL_28;
              }
            }
          }

          else
          {
            v3 = v20;
            if (v10 == 18)
            {
              v11 = [(SFCombinedDevice *)v20 canTransition:18];
              v3 = v20;
              if (v11)
              {
                [(SFCombinedDevice *)v20 setTransferPendingStartTicks:mach_absolute_time()];
                [(SFCombinedDevice *)v20 setState:18];
                [(SFCombinedDevice *)v20 setDismissReason:3];
                [(SFCombinedDevice *)v20 setNextState:0];
LABEL_18:
                [(SDProxHandoffAgent *)self _run];
LABEL_28:
                v3 = v20;
              }
            }
          }
        }
      }
    }
  }

LABEL_29:
}

- (void)_runTransferReady
{
  v3 = self->_uiDevice;
  if (v3)
  {
    v8 = v3;
    v4 = [(SDProxHandoffAgent *)self _runStateVerify:17 device:v3];
    v3 = v8;
    if (v4)
    {
      v5 = [(SFCombinedDevice *)v8 nextState];
      v3 = v8;
      if (v5 == 18)
      {
        v6 = [(SFCombinedDevice *)v8 effectiveID];
        if (!v6)
        {
          if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
          {
            sub_1000F68F0();
          }

          goto LABEL_21;
        }

        if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
        {
          sub_1000F686C();
        }

        v7 = [(SFCombinedDevice *)v8 notificationType];
        if (v7 == 2)
        {
          [(SDProxHandoffAgent *)self _proximityClientDeviceEnteredImmediate:v6];
        }

        else
        {
          if (v7 != 3)
          {
            if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
            {
              sub_1000F68AC(v8);
            }

            goto LABEL_21;
          }

          [(SDProxHandoffAgent *)self _runCallHandoffStart:v8];
        }

        if ([(SFCombinedDevice *)v8 canTransition:18])
        {
          [(SFCombinedDevice *)v8 setState:18];
          [(SFCombinedDevice *)v8 setNextState:0];
          [(SDProxHandoffAgent *)self _run];
        }

LABEL_21:

        v3 = v8;
      }
    }
  }
}

- (void)_runTransferPendingDismiss
{
  v3 = self->_uiDevice;
  if (v3)
  {
    v11 = v3;
    v4 = [(SDProxHandoffAgent *)self _runStateVerify:19 device:v3];
    v3 = v11;
    if (v4)
    {
      v5 = [(SFCombinedDevice *)v11 nextState];
      v3 = v11;
      if (v5 == 20)
      {
        mach_absolute_time();
        [(SFCombinedDevice *)v11 notificationTicks];
        UpTicksToSecondsF();
        v7 = v6;
        if (1.5 - v6 > 0.0)
        {
          [(SDProxHandoffAgent *)self _scheduleRunAfter:?];
LABEL_12:
          v3 = v11;
          goto LABEL_13;
        }

        [(SFCombinedDevice *)v11 setNotificationDurationSecs:v6];
        if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
        {
          v10 = v11;
          v9 = v7;
          LogPrintF();
        }

        v8 = [(SFCombinedDevice *)v11 canTransition:20, *&v9, v10];
        v3 = v11;
        if (v8)
        {
          [(SFCombinedDevice *)v11 setNotificationTicks:-1];
          [(SFCombinedDevice *)v11 setTransferDoneTicks:mach_absolute_time()];
          [(SFCombinedDevice *)v11 setState:20];
          [(SFCombinedDevice *)v11 setNextState:0];
          [(SDProxHandoffAgent *)self _uiStopIfNeeded:v11 reason:1];
          [(SDProxHandoffAgent *)self _run];
          goto LABEL_12;
        }
      }
    }
  }

LABEL_13:
}

- (void)_runTransferDone
{
  v3 = self->_uiDevice;
  if (v3)
  {
    v9 = v3;
    v4 = [(SDProxHandoffAgent *)self _runStateVerify:20 device:v3];
    v3 = v9;
    if (v4)
    {
      v5 = [(SFCombinedDevice *)v9 nextState];
      v3 = v9;
      if (v5 == 15)
      {
        if (dword_1009708B0 <= 30)
        {
          if (dword_1009708B0 != -1 || (v6 = _LogCategory_Initialize(), v3 = v9, v6))
          {
            sub_1000F6930();
            v3 = v9;
          }
        }

        [(SDProxHandoffAgent *)self _uiStopIfNeeded:v9 reason:[(SFCombinedDevice *)v3 dismissReason]];
        if ([(SFCombinedDevice *)v9 notificationType]== 2)
        {
          v7 = [(SFCombinedDevice *)v9 effectiveID];
          if (v7)
          {
            [(SDProxHandoffAgent *)self _proximityClientDeviceExitedImmediate:v7];
          }
        }

        v8 = [(SFCombinedDevice *)v9 canTransition:15];
        v3 = v9;
        if (v8)
        {
          [(SFCombinedDevice *)v9 setState:15];
          [(SFCombinedDevice *)v9 setNextState:0];
          [(SDProxHandoffAgent *)self _run];
          v3 = v9;
        }
      }
    }
  }
}

- (void)_runCallHandoffStart:(id)a3
{
  v4 = a3;
  if (self->_clinkClient)
  {
    dispatch_assert_queue_V2(self->_dispatchQueue);
    v5 = [v4 clinkDevice];
    if (v5)
    {
      if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F694C();
      }

      v6 = [v4 route];
      v7 = v6;
      if (v6 && ([v6 isCurrentlyPicked] & 1) != 0)
      {
        [(SDProxHandoffAgent *)self _runCallHandoffStartDelayTimer];
      }

      else
      {

        clinkClient = self->_clinkClient;
        v9 = [v5 effectiveIdentifier];
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_1000EE7C0;
        v10[3] = &unk_1008D0118;
        v10[4] = self;
        [(RPCompanionLinkClient *)clinkClient sendRequestID:@"com.apple.sharing.calltransfer" request:&off_10090E8A8 destinationID:v9 options:0 responseHandler:v10];
      }
    }

    else if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F6968();
    }
  }
}

- (void)_runCallHandoffHandleResponse:(id)a3 error:(id)a4
{
  v5 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (v5)
  {
    if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F69A8();
    }
  }

  else
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F69E8();
    }

    [(SDProxHandoffAgent *)self _runCallHandoffStartDelayTimer];
  }
}

- (void)_runCallHandoffStartDelayTimer
{
  delayTimer = self->_delayTimer;
  if (delayTimer)
  {
    v4 = delayTimer;
    dispatch_source_cancel(v4);
    v5 = self->_delayTimer;
    self->_delayTimer = 0;
  }

  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v7 = self->_delayTimer;
  self->_delayTimer = v6;

  v8 = self->_delayTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000EE96C;
  handler[3] = &unk_1008CDEA0;
  handler[4] = self;
  dispatch_source_set_event_handler(v8, handler);
  v9 = self->_delayTimer;
  CUDispatchTimerSet();
  dispatch_resume(self->_delayTimer);
}

- (void)_runCallHandoffHandleDelayTimerFired
{
  delayTimer = self->_delayTimer;
  if (delayTimer)
  {
    v4 = delayTimer;
    dispatch_source_cancel(v4);
    v5 = self->_delayTimer;
    self->_delayTimer = 0;
  }

  v6 = self->_uiDevice;
  if (v6)
  {
    v12 = v6;
    v7 = [(SFCombinedDevice *)v6 effectiveID];
    if (v7)
    {
      v8 = [(SFCombinedDevice *)v12 route];
      if (v8)
      {
        v9 = [(objc_class *)off_100970920() sharedInstance];
        v10 = [v9 routeController];
        if ([v8 isCurrentlyPicked])
        {
          v11 = [v10 receiverRoute];
          if (v11)
          {
            if (dword_1009708B0 < 31 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
            {
              sub_1000F6A60();
            }

            [v10 pickRoute:v11];
          }
        }

        else
        {
          if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
          {
            sub_1000F6A04(v8);
          }

          [v10 pickRoute:v8];
        }

        [(SDProxHandoffAgent *)self _uiDismissWhenReady:v12 reason:3];
        [(SDProxHandoffAgent *)self _run];
      }

      else if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F6AA0();
      }
    }

    v6 = v12;
  }
}

- (void)_bleActionDeviceChanged:(id)a3
{
  v30 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = [v30 identifier];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_bleActionDevices objectForKeyedSubscript:v4];

    if (v5)
    {
      goto LABEL_6;
    }

    v6 = [v30 deviceFlags];
    if ((v6 & 0x200) != 0 && (v6 & 0x48) != 0)
    {
      [(SDProxHandoffAgent *)self _bleActionDeviceFoundCandidate:v30];
LABEL_6:
      [(NSMutableDictionary *)self->_bleActionDevices setObject:v30 forKeyedSubscript:v4];
      v7 = [(NSMutableDictionary *)self->_mappedDevices objectForKeyedSubscript:v4];
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = [(SDProxHandoffAgent *)self _bleUpdateMappingWithDevice:v30];
        if (!v8)
        {
          goto LABEL_68;
        }
      }

      [v8 setBleDevice:v30];
      if (![(SDProxHandoffAgent *)self _combinedDeviceIsSuppressed:v8])
      {
        [(SDProximityController *)self->_proximityController sender:self notifyBluetoothSample:v30 forType:1];
        v9 = [v30 bleDevice];
        v10 = [v9 insideSmallBubble];

        v11 = [(SDProximityController *)self->_proximityController checkDeviceRegion:v30];
        if (v11 == 1 && dword_1009708B0 <= 50 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
        {
          sub_1000F6B30();
        }

        v12 = v11 == 1;
        if (_os_feature_enabled_impl())
        {
          v13 = v12;
        }

        else
        {
          v13 = v10;
        }

        v14 = [v30 bleDevice];
        v15 = [v14 insideMediumBubble];

        v16 = [v30 bleDevice];
        v17 = [v16 rssiEstimate];

        v18 = [v8 name];
        if (v13 == 1)
        {
          if ([v8 state] == 15)
          {
            if (dword_1009708B0 > 30 || dword_1009708B0 == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_65;
            }

            v27 = v18;
            v28 = *&v17;
LABEL_41:
            LogPrintF();
LABEL_65:
            [v8 setState:{11, v27, *&v28}];
            v24 = v8;
            v25 = 13;
LABEL_66:
            [v24 setNextState:{v25, v27, *&v28}];
            uiDevice = self->_uiDevice;
            self->_uiDevice = 0;

            goto LABEL_67;
          }

          if ([v8 canTransition:16])
          {
            if (self->_stationary || ![(SDProxHandoffAgent *)self _systemCanTrigger])
            {
              if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
              {
                sub_1000F6B50(&self->_stationary, self);
              }

              goto LABEL_67;
            }

            if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
            {
              v27 = v18;
              v28 = *&v17;
              LogPrintF();
            }

            [v8 setTransferPendingStartTicks:mach_absolute_time()];
            [v8 setState:16];
            v24 = v8;
            v25 = 17;
            goto LABEL_66;
          }

          if (v15)
          {
LABEL_37:
            if (![v8 canTransition:11])
            {
LABEL_67:
              [(SDProxHandoffAgent *)self _proximityClientDeviceUpdated:v8, v27, *&v28, v29];
              [(NSMutableDictionary *)self->_mappedDevices setObject:v8 forKeyedSubscript:v4];
              [(SDProxHandoffAgent *)self _run];

              goto LABEL_68;
            }

            if (dword_1009708B0 > 30 || dword_1009708B0 == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_65;
            }

            v27 = v18;
            v28 = *&v17;
            goto LABEL_41;
          }
        }

        else if (v15)
        {
          if ([v8 state] == 20 && objc_msgSend(v8, "canTransition:", 15))
          {
            mach_absolute_time();
            [v8 transferDoneTicks];
            UpTicksToSecondsF();
            v20 = v19;
            if (v19 <= self->_prefRetriggerSecs || [v8 transferDoneTicks] == -1)
            {
              if ([v8 transferDoneTicks] != -1 && dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
              {
                v29 = v17;
                v28 = v20;
                v27 = v18;
                LogPrintF();
              }
            }

            else
            {
              if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
              {
                v29 = v17;
                v28 = v20;
                v27 = v18;
                LogPrintF();
              }

              [v8 setNextState:{15, v27, *&v28, v29}];
              [v8 setTransferDoneDurationSecs:v20];
              [v8 setTransferDoneTicks:-1];
            }

            goto LABEL_67;
          }

          goto LABEL_37;
        }

        if ([v8 state] == 12)
        {
          mach_absolute_time();
          [v8 pendingContentTicks];
          UpTicksToSecondsF();
          if (dword_1009708B0 <= 30)
          {
            v22 = v21;
            if (dword_1009708B0 != -1 || _LogCategory_Initialize())
            {
              v29 = v22;
              v27 = v18;
              v28 = *&v17;
              LogPrintF();
            }
          }

          [v8 setState:{10, v27, *&v28, v29}];
          [v8 setPendingContentTicks:-1];
          [v8 setNextState:0];
          v23 = [v8 effectiveID];
          if (v23)
          {
            [(SDProxHandoffAgent *)self _proximityClientDeviceExitedImmediate:v23];
            [(SDProxHandoffAgent *)self _proximityClientDeviceDidUnTrigger:v23];
          }
        }

        else if ([v8 canTransition:10])
        {
          if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
          {
            v27 = v18;
            v28 = *&v17;
            LogPrintF();
          }

          [v8 setState:{10, v27, *&v28}];
          [v8 setNextState:0];
        }

        goto LABEL_67;
      }

LABEL_68:
    }
  }
}

- (void)_bleActionDeviceFound:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_bleActionDiscovery)
  {
    v4 = [v5 identifier];
    if (v4 && ([v5 deviceFlags] & 0x200) != 0 && (objc_msgSend(v5, "deviceFlags") & 0x48) != 0)
    {
      [(SDProxHandoffAgent *)self _bleActionDeviceFoundCandidate:v5];
      [(SDProxHandoffAgent *)self _bleActionDeviceChanged:v5];
      [(SDProxHandoffAgent *)self _update];
    }
  }
}

- (void)_bleActionDeviceFoundCandidate:(id)a3
{
  v8 = a3;
  v4 = [v8 identifier];
  if (v4)
  {
    if (([v8 deviceFlags] & 0x200) != 0)
    {
      if (([v8 deviceFlags] & 0x48) != 0)
      {
        if (dword_1009708B0 <= 10 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
        {
          sub_1000F6BDC();
        }

        bleActionDevices = self->_bleActionDevices;
        if (!bleActionDevices)
        {
          v6 = objc_alloc_init(NSMutableDictionary);
          v7 = self->_bleActionDevices;
          self->_bleActionDevices = v6;

          bleActionDevices = self->_bleActionDevices;
        }

        [(NSMutableDictionary *)bleActionDevices setObject:v8 forKeyedSubscript:v4];
        [(SDProxHandoffAgent *)self _bleDeviceNearbyEnter:v8];
      }
    }

    else if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F6C1C();
    }
  }
}

- (void)_bleActionDeviceLost:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = [v6 identifier];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_bleActionDevices objectForKeyedSubscript:v4];

    if (v5)
    {
      if (dword_1009708B0 <= 10 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F6C5C();
      }

      [(SDProxHandoffAgent *)self _bleDeviceNearbyExit:v6];
      [(NSMutableDictionary *)self->_bleActionDevices removeObjectForKey:v4];
      [(SDProxHandoffAgent *)self _update];
    }
  }
}

- (void)_bleActionScanTimerFired
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(SDProxHandoffAgent *)self _bleActionScanTimerInvalidate];
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F6C9C();
  }

  self->_bleActionScanTimedOut = 1;

  [(SDProxHandoffAgent *)self _update];
}

- (void)_bleInfoDiscoveryEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_bleInfoDiscovery)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F6CB8();
    }

    v3 = objc_alloc_init(SFDeviceDiscovery);
    bleInfoDiscovery = self->_bleInfoDiscovery;
    self->_bleInfoDiscovery = v3;

    [(SFDeviceDiscovery *)self->_bleInfoDiscovery setChangeFlags:9];
    [(SFDeviceDiscovery *)self->_bleInfoDiscovery setDiscoveryFlags:1];
    [(SFDeviceDiscovery *)self->_bleInfoDiscovery setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceDiscovery *)self->_bleInfoDiscovery setFastScanMode:1];
    [(SFDeviceDiscovery *)self->_bleInfoDiscovery setPurpose:@"HandoffInfo"];
    [(SFDeviceDiscovery *)self->_bleInfoDiscovery setRssiThreshold:-37];
    [(SFDeviceDiscovery *)self->_bleInfoDiscovery setScanRate:20];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000EF760;
    v9[3] = &unk_1008CE7A0;
    v9[4] = self;
    [(SFDeviceDiscovery *)self->_bleInfoDiscovery setDeviceFoundHandler:v9];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000EF76C;
    v8[3] = &unk_1008CE7A0;
    v8[4] = self;
    [(SFDeviceDiscovery *)self->_bleInfoDiscovery setDeviceLostHandler:v8];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000EF778;
    v7[3] = &unk_1008CE7C8;
    v7[4] = self;
    [(SFDeviceDiscovery *)self->_bleInfoDiscovery setDeviceChangedHandler:v7];
    v5 = self->_bleInfoDiscovery;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000EF784;
    v6[3] = &unk_1008CDF90;
    v6[4] = self;
    [(SFDeviceDiscovery *)v5 activateWithCompletion:v6];
  }
}

- (void)_bleInfoDeviceChanged:(id)a3
{
  v11 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = v11;
  if (self->_bleInfoDiscovery)
  {
    v5 = [v11 identifier];
    if (v5 && ([v11 deviceFlags] & 0x48) != 0)
    {
      if (dword_1009708B0 <= 10 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F6D4C();
      }

      v6 = [(NSMutableDictionary *)self->_bleInfoDevices objectForKeyedSubscript:v5];
      if (!v6 && dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F6D8C();
      }

      v7 = [v11 bleDevice];
      v8 = [v7 rssi];

      if (v8 <= 0xFFFFFFFFFFFFFFDALL && dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        v9 = v8;
        v10 = v11;
        LogPrintF();
      }

      [(SDProxHandoffAgent *)self _bleDeviceNearbyEnter:v11, v9, v10];
      [(NSMutableDictionary *)self->_bleInfoDevices setObject:v11 forKeyedSubscript:v5];
      [(SDProxHandoffAgent *)self _update];
    }

    v4 = v11;
  }
}

- (void)_bleInfoDeviceFound:(id)a3
{
  v13 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = v13;
  if (self->_bleInfoDiscovery)
  {
    v5 = [v13 identifier];
    if (v5 && ([v13 deviceFlags] & 0x48) != 0)
    {
      if (dword_1009708B0 <= 10 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F6DA8();
      }

      bleInfoDevices = self->_bleInfoDevices;
      if (!bleInfoDevices)
      {
        v7 = objc_alloc_init(NSMutableDictionary);
        v8 = self->_bleInfoDevices;
        self->_bleInfoDevices = v7;

        bleInfoDevices = self->_bleInfoDevices;
      }

      [(NSMutableDictionary *)bleInfoDevices setObject:v13 forKeyedSubscript:v5];
      v9 = [v13 bleDevice];
      v10 = [v9 rssi];

      if (v10 <= 0xFFFFFFFFFFFFFFDALL && dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        v11 = v10;
        v12 = v13;
        LogPrintF();
      }

      [(SDProxHandoffAgent *)self _bleDeviceNearbyEnter:v13, v11, v12];
      [(SDProxHandoffAgent *)self _update];
    }

    v4 = v13;
  }
}

- (void)_bleInfoDeviceLost:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = [v6 identifier];
  if (v4)
  {
    if (dword_1009708B0 <= 10 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F6DE8();
    }

    v5 = [(NSMutableDictionary *)self->_mappedDevices objectForKeyedSubscript:v4];
    if (v5)
    {
      [(SDProxHandoffAgent *)self _uiStopIfNeeded:v5 reason:4];
    }

    [(NSMutableDictionary *)self->_bleInfoDevices removeObjectForKey:v4];
    [(SDProxHandoffAgent *)self _bleDeviceNearbyExit:v6];
    [(SDProxHandoffAgent *)self _update];
  }
}

- (void)_bleDeviceNearbyEnter:(id)a3
{
  v11 = a3;
  v4 = [v11 identifier];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_mappedDevices objectForKeyedSubscript:v4];

    v6 = [(SDProxHandoffAgent *)self _bleUpdateMappingWithDevice:v11];
    [(SDProxHandoffAgent *)self _updateCandidateIsNearby];
    if (!v5)
    {
      v7 = [(NSMutableDictionary *)self->_mappedDevices objectForKeyedSubscript:v4];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 clinkDevice];
        v10 = [v9 mediaRouteIdentifier];

        if (v10)
        {
          if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
          {
            sub_1000F6E28();
          }

          [(SDProxHandoffAgent *)self _proximityClientDeviceEnteredNearby:v10];
        }
      }
    }

    [(SDProxHandoffAgent *)self _update];
  }
}

- (void)_bleDeviceNearbyExit:(id)a3
{
  v4 = [a3 identifier];
  if (v4)
  {
    v9 = v4;
    v5 = [(NSMutableDictionary *)self->_mappedDevices objectForKeyedSubscript:v4];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 clinkDevice];
      v8 = [v7 mediaRouteIdentifier];

      if (v8)
      {
        if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
        {
          sub_1000F6E68();
        }

        [(SDProxHandoffAgent *)self _proximityClientDeviceExitedNearby:v8];
      }
    }

    [(NSMutableDictionary *)self->_mappedDevices removeObjectForKey:v9];
    [(NSMutableDictionary *)self->_bleUnmapped removeObjectForKey:v9];
    [(SDProxHandoffAgent *)self _updateCandidateIsNearby];
    [(SDProxHandoffAgent *)self _update];
    v4 = v9;
  }
}

- (id)_bleUpdateMappingWithDevice:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = [v4 identifier];
  if (!v5)
  {
    v14 = 0;
    goto LABEL_27;
  }

  v6 = [(RPCompanionLinkClient *)self->_clinkClient activeDevices];
  v7 = SFDeviceToRPCompanionLinkDevice();
  v8 = v7;
  if (!v7)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7030();
    }

    goto LABEL_22;
  }

  v9 = [v7 model];
  v10 = [v9 lowercaseString];
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = SFDeviceClassCodeGet();
  if ((v11 - 1) < 2)
  {
    v12 = @"audioaccessory";
    goto LABEL_6;
  }

  if (v11 != 4)
  {
LABEL_18:

LABEL_19:
    if (dword_1009708B0 <= 60 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F6FC4(v8);
    }

LABEL_22:
    bleUnmapped = self->_bleUnmapped;
    if (!bleUnmapped)
    {
      v18 = objc_alloc_init(NSMutableDictionary);
      v19 = self->_bleUnmapped;
      self->_bleUnmapped = v18;

      bleUnmapped = self->_bleUnmapped;
    }

    [(NSMutableDictionary *)bleUnmapped setObject:v4 forKeyedSubscript:v5];
    goto LABEL_25;
  }

  if ([v10 containsString:@"iphone"])
  {

    goto LABEL_16;
  }

  v12 = @"ipod";
LABEL_6:
  v13 = [v10 containsString:v12];

  if ((v13 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  v15 = [v4 deviceFlags];
  if ((v15 & 8) != 0)
  {
    v21 = [v4 bleDevice];
    if ([v21 decryptedActivityLevel] == 16)
    {
      v22 = 0;
    }

    else
    {
      v23 = [v4 bleDevice];
      v22 = [v23 decryptedActivityLevel];
    }

    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F6EA8(v4, v22);
    }

    if (v22 > 3)
    {
      v16 = 1;
    }

    else
    {
      v24 = [v4 model];
      v16 = [v24 hasPrefix:@"AudioAccessory"];
    }
  }

  else
  {
    v16 = 0;
  }

  v25 = [(NSMutableDictionary *)self->_mappedDevices objectForKeyedSubscript:v5];
  v14 = v25;
  if ((v15 & 8) == 0)
  {
    if (v25)
    {
      goto LABEL_52;
    }

LABEL_42:
    if (!v25)
    {
      if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F6F3C(v8);
      }

      [(NSMutableDictionary *)self->_bleUnmapped removeObjectForKey:v5];
      v14 = objc_alloc_init(SFCombinedDevice);
      [(SFCombinedDevice *)v14 setBleDevice:v4];
      [(SFCombinedDevice *)v14 setClinkDevice:v8];
      [(SFCombinedDevice *)v14 setState:10];
      if (self->_bleActionScanTimedOut || self->_bleActionScanTimer)
      {
        if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
        {
          sub_1000F6FA8();
        }

        [(SDProxHandoffAgent *)self _bleActionScanTimerActivate];
      }
    }

LABEL_52:
    [(SFCombinedDevice *)v14 setBleDevice:v4];
    v26 = [(SFCombinedDevice *)v14 clinkDevice];
    v27 = v8;
    v28 = v27;
    if (v26 == v27)
    {
    }

    else
    {
      if (v26)
      {
        v29 = [v26 isEqual:v27];

        if (v29)
        {
          goto LABEL_63;
        }
      }

      else
      {
      }

      [(SFCombinedDevice *)v14 setClinkDevice:v28];
    }

LABEL_63:
    mappedDevices = self->_mappedDevices;
    if (!mappedDevices)
    {
      v31 = objc_alloc_init(NSMutableDictionary);
      v32 = self->_mappedDevices;
      self->_mappedDevices = v31;

      mappedDevices = self->_mappedDevices;
    }

    [(NSMutableDictionary *)mappedDevices setObject:v14 forKeyedSubscript:v5];
    goto LABEL_26;
  }

  if ((v25 != 0) | v16 & 1)
  {
    if ((v25 == 0) | v16 & 1)
    {
      if ((v25 != 0) | (v16 ^ 1) & 1)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    }

    [(SDProxHandoffAgent *)self _bleDeviceNearbyExit:v4];
  }

LABEL_25:
  v14 = 0;
LABEL_26:

LABEL_27:

  return v14;
}

- (void)_clinkHandleRequest:(id)a3 options:(id)a4 responseHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (SFDeviceClassCodeGet() == 4)
  {
    [(SDProxHandoffAgent *)self _clinkHomePodHandleRequest:v7 responseHandler:v8];
  }

  else if (v8)
  {
    v14 = NSLocalizedDescriptionKey;
    v9 = [NSString stringWithUTF8String:DebugGetErrorString()];
    v10 = v9;
    v11 = @"?";
    if (v9)
    {
      v11 = v9;
    }

    v15 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v13 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6700 userInfo:v12];
    (*(v8 + 2))(v8, 0, 0, v13);
  }
}

- (void)_clinkHomePodHandleRequest:(id)a3 responseHandler:(id)a4
{
  if (a4)
  {
    v11 = NSLocalizedDescriptionKey;
    v5 = a4;
    v6 = [NSString stringWithUTF8String:DebugGetErrorString()];
    v7 = v6;
    v8 = @"?";
    if (v6)
    {
      v8 = v6;
    }

    v12 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v10 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6735 userInfo:v9];
    (*(a4 + 2))(v5, 0, 0, v10);
  }
}

- (void)_motionUpdate:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = v4;
  v7 = v5;
  if (v4)
  {
    if ([v5 stationary])
    {
      LODWORD(v4) = [v7 confidence] == 2;
    }

    else
    {
      LODWORD(v4) = 0;
    }

    v5 = v7;
  }

  v6 = (self->_prefForceStationary | v4) & 1;
  if (self->_stationary != v6)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7130();
    }

    self->_stationary = v6;
    if ((v6 & 1) == 0)
    {
      self->_bleActionScanTimedOut = 0;
      [(SDProxHandoffAgent *)self _bleActionScanTimerInvalidate];
    }
  }

  [(SDProxHandoffAgent *)self _update];
}

- (int)proximityClientStart:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7188();
  }

  [v4 setDispatchQueue:self->_dispatchQueue];
  proxClients = self->_proxClients;
  if (!proxClients)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_proxClients;
    self->_proxClients = v6;

    proxClients = self->_proxClients;
  }

  [(NSMutableSet *)proxClients addObject:v4];
  [(SDProxHandoffAgent *)self _commonShouldAdvertiseChanged];
  [(SDProxHandoffAgent *)self _proximityClientSeedInitialDevices:v4];
  [(SDProxHandoffAgent *)self _proximityClientSeedWillTriggerDeviceIfNeeded:v4];
  [(SDProxHandoffAgent *)self _update];

  return 0;
}

- (void)proximityClientStop:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F71A4();
  }

  [(NSMutableSet *)self->_proxClients removeObject:v4];
  if (![(NSMutableSet *)self->_proxClients count])
  {
    [(SDProxHandoffAgent *)self _bleUpdateMappingReset];
    [(NSMutableSet *)self->_suppressedDeviceIDs removeAllObjects];
    [(SFNotificationProxy *)self->_notificationProxy requestRemoveAll];
    [(SDProxHandoffAgent *)self _resetAllStates];
  }

  [(SDProxHandoffAgent *)self _update];
}

- (void)proximityClientUpdate:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F0AB0;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (int)proximityClient:(id)a3 dismissContentForDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(NSMutableSet *)self->_proxClients containsObject:v6]& 1) != 0)
  {
    v8 = [(SDProxHandoffAgent *)self _combinedDeviceForUIID:v7];
    if (v8)
    {
      if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F72C0();
      }

      [(SDProxHandoffAgent *)self _uiDismissWhenReady:v8 reason:1];
      v9 = 0;
    }

    else
    {
      if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F7300();
      }

      v9 = -6705;
    }
  }

  else
  {
    if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7280();
    }

    v9 = -6700;
  }

  return v9;
}

- (int)proximityClient:(id)a3 provideContent:(id)a4 forDevice:(id)a5 force:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (([(NSMutableSet *)self->_proxClients containsObject:v10]& 1) != 0)
  {
    v13 = [(SDProxHandoffAgent *)self _combinedDeviceForUIID:v12];
    v14 = v13;
    if (!v6 && !v13)
    {
      if (dword_1009708B0 <= 60 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v15 = -6709;
      goto LABEL_36;
    }

    v16 = [v11 error];
    if (!v16)
    {
      if (!v14 && v6)
      {
        v14 = objc_alloc_init(SFCombinedDevice);
        [(SFCombinedDevice *)v14 setForced:1];
        [(SFCombinedDevice *)v14 setForcedID:v12];
        [(SFCombinedDevice *)v14 setNotificationType:2];
      }

      v17 = [(SDProxHandoffAgent *)self mediaTransferInfoFromInfo:v11];
      [v17 setHomePodType:{-[SDProxHandoffAgent notificationHomePodTypeForDevice:](self, "notificationHomePodTypeForDevice:", v14)}];
      [(SFCombinedDevice *)v14 setNotificationInfo:v17];
      if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        v19 = "no";
        if (v6)
        {
          v19 = "yes";
        }

        v27 = v19;
        v28 = v17;
        v26 = v14;
        LogPrintF();
      }

      [(SFCombinedDevice *)v14 setNextState:13, v26, v27, v28];
      uiDevice = self->_uiDevice;
      self->_uiDevice = 0;

      dispatchQueue = self->_dispatchQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000F1014;
      block[3] = &unk_1008CDEA0;
      block[4] = self;
      dispatch_async(dispatchQueue, block);
      goto LABEL_35;
    }

    v17 = v16;
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F735C();
    }

    [(SFCombinedDevice *)v14 setClientProvidedError:1];
    [(SFCombinedDevice *)v14 resetTicks];
    if (-[SFCombinedDevice stateIsClose](v14, "stateIsClose") || -[SFCombinedDevice stateIsMedium](v14, "stateIsMedium") && (-[SFCombinedDevice bleDevice](v14, "bleDevice"), v20 = objc_claimAutoreleasedReturnValue(), [v20 bleDevice], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "insideSmallBubble"), v21, v20, (v22 & 1) != 0))
    {
      v18 = 20;
    }

    else
    {
      if (![(SFCombinedDevice *)v14 stateIsMedium])
      {
LABEL_30:
        [(SFCombinedDevice *)v14 setNextState:0];
LABEL_35:

        v15 = 0;
        goto LABEL_36;
      }

      v18 = 15;
    }

    [(SFCombinedDevice *)v14 setState:v18];
    goto LABEL_30;
  }

  if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F731C();
  }

  v15 = -6700;
LABEL_36:

  return v15;
}

- (int)proximityClient:(id)a3 suppressDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(NSMutableSet *)self->_proxClients containsObject:v6]& 1) != 0)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F73DC();
    }

    suppressedDeviceIDs = self->_suppressedDeviceIDs;
    if (!suppressedDeviceIDs)
    {
      v9 = objc_alloc_init(NSMutableSet);
      v10 = self->_suppressedDeviceIDs;
      self->_suppressedDeviceIDs = v9;

      suppressedDeviceIDs = self->_suppressedDeviceIDs;
    }

    [(NSMutableSet *)suppressedDeviceIDs addObject:v7];
    v11 = [(SDProxHandoffAgent *)self _combinedDeviceForUIID:v7];
    if (v11)
    {
      if (dword_1009708B0 < 31 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F741C();
      }

      [v11 resetTicks];
      [v11 setState:10];
      [v11 setNextState:0];
    }

    v12 = [(SFCombinedDevice *)self->_uiDevice effectiveID];
    v13 = v7;
    v14 = v13;
    if (v12 == v13)
    {
    }

    else
    {
      if ((v13 == 0) == (v12 != 0))
      {

LABEL_26:
        v16 = 0;
        goto LABEL_27;
      }

      v15 = [v12 isEqual:v13];

      if ((v15 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F745C();
    }

    uiDevice = self->_uiDevice;
    self->_uiDevice = 0;

    goto LABEL_26;
  }

  if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F739C();
  }

  v16 = -6700;
LABEL_27:

  return v16;
}

- (int)proximityClient:(id)a3 stopSuppressingDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(NSMutableSet *)self->_proxClients containsObject:v6]& 1) != 0)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F74B8();
    }

    [(NSMutableSet *)self->_suppressedDeviceIDs removeObject:v7];
    v8 = 0;
  }

  else
  {
    if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7478();
    }

    v8 = -6700;
  }

  return v8;
}

- (int)proximityClient:(id)a3 updateContent:(id)a4 forDevice:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([(NSMutableSet *)self->_proxClients containsObject:v8]& 1) != 0)
  {
    v11 = [(SDProxHandoffAgent *)self _combinedDeviceForUIID:v10];
    v12 = v11;
    if (!v11)
    {
      v17 = -6709;
      goto LABEL_38;
    }

    v13 = [v11 effectiveID];
    v14 = v10;
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      if ((v14 == 0) == (v13 != 0))
      {

        v17 = -6705;
        v18 = v13;
LABEL_37:

        goto LABEL_38;
      }

      v16 = [v13 isEqual:v14];

      if (!v16)
      {
        v17 = -6705;
LABEL_38:

        goto LABEL_39;
      }
    }

    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7538();
    }

    v18 = [(SDProxHandoffAgent *)self mediaTransferInfoFromInfo:v9];
    [v18 setHomePodType:{-[SDProxHandoffAgent notificationHomePodTypeForDevice:](self, "notificationHomePodTypeForDevice:", v12)}];
    [v12 setNotificationInfo:v18];
    v19 = [v9 error];
    if (!v19)
    {
      if ([v12 state] == 14 && !objc_msgSend(v12, "nextState"))
      {
        v13 = [v18 mediumBubbleVersion];
        v21 = 1;
      }

      else
      {
        v13 = v18;
        v21 = 0;
      }

      v22 = [v12 clientProvidedError];
      if (v22)
      {
        [v12 setState:15];
        [v12 setNextState:16];
        [v12 setClientProvidedError:0];
      }

      if (v21 && dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F75B8();
      }

      [(SFNotificationProxy *)self->_notificationProxy requestUpdate:v15 info:v13 mediumVariant:v21 canPostNotification:v22];
      goto LABEL_36;
    }

    v13 = v19;
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7578();
    }

    [(SFNotificationProxy *)self->_notificationProxy requestRemove:v15 withReason:1];
    [v12 setClientProvidedError:1];
    if ([v12 stateIsClose])
    {
      v20 = 20;
    }

    else
    {
      if (([v12 stateIsMedium] & 1) == 0)
      {
LABEL_36:
        v17 = 0;
        goto LABEL_37;
      }

      v20 = 15;
    }

    [v12 setState:v20];
    goto LABEL_36;
  }

  if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F74F8();
  }

  v17 = -6700;
LABEL_39:

  return v17;
}

- (int)proximityClientRequestScannerTimerReset:(id)a3
{
  v4 = a3;
  if (([(NSMutableSet *)self->_proxClients containsObject:v4]& 1) != 0)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7614();
    }

    if (self->_bleActionScanTimedOut || self->_bleActionScanTimer)
    {
      [(SDProxHandoffAgent *)self _bleActionScanTimerActivate];
    }

    else if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7630();
    }

    v5 = 0;
  }

  else
  {
    if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F75D4();
    }

    v5 = -6700;
  }

  return v5;
}

- (void)_proximityClientDeviceEnteredImmediate:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([v4 length])
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F764C();
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_proxClients;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [v10 deviceEnteredImmediateHandler];

          if (v11)
          {
            v12 = [v10 deviceEnteredImmediateHandler];
            (v12)[2](v12, v4);
          }
        }

        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)_proximityClientDeviceExitedImmediate:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([v4 length])
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F768C();
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_proxClients;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [v10 deviceExitedImmediateHandler];

          if (v11)
          {
            v12 = [v10 deviceExitedImmediateHandler];
            (v12)[2](v12, v4);
          }
        }

        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)_proximityClientDeviceEnteredNearby:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([v4 length])
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F76CC();
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_proxClients;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [v10 deviceEnteredNearbyHandler];

          if (v11)
          {
            v12 = [v10 deviceEnteredNearbyHandler];
            (v12)[2](v12, v4);
          }
        }

        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)_proximityClientDeviceExitedNearby:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([v4 length])
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F770C();
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_proxClients;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [v10 deviceExitedNearbyHandler];

          if (v11)
          {
            v12 = [v10 deviceExitedNearbyHandler];
            (v12)[2](v12, v4);
          }
        }

        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)_proximityClientDeviceWasDismissed:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([v4 length])
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F774C();
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_proxClients;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [v10 deviceWasDismissedHandler];

          if (v11)
          {
            v12 = [v10 deviceWasDismissedHandler];
            (v12)[2](v12, v4);
          }
        }

        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)_proximityClientDeviceWasDismissed:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([v6 length])
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F778C(a4);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = self->_proxClients;
    v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [v12 deviceWasDismissedHandlerEx];

          if (v13)
          {
            v14 = [v12 deviceWasDismissedHandlerEx];
            (v14)[2](v14, v6, a4);
          }
        }

        v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

- (void)_proximityClientDeviceWasSelected:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([v4 length])
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F77F0();
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_proxClients;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [v10 deviceWasSelectedHandler];

          if (v11)
          {
            v12 = [v10 deviceWasSelectedHandler];
            (v12)[2](v12, v4);
          }
        }

        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)_proximityClientDeviceWillTrigger:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([v4 length])
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7830();
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_proxClients;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [v10 deviceWillTriggerHandler];

          if (v11)
          {
            v12 = [v10 deviceWillTriggerHandler];
            (v12)[2](v12, v4);
          }
        }

        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)_proximityClientDeviceDidUnTrigger:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([v4 length])
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7870();
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_proxClients;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [v10 deviceDidUntriggerHandler];

          if (v11)
          {
            v12 = [v10 deviceDidUntriggerHandler];
            (v12)[2](v12, v4);
          }
        }

        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)_proximityClientDeviceUpdated:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = [v4 clinkDevice];
  v6 = [v5 mediaRouteIdentifier];

  if (v6)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = self->_proxClients;
    v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * v11);
          v13 = [v12 deviceUpdateHandler];

          if (v13)
          {
            if (dword_1009708B0 <= 10 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
            {
              sub_1000F78B0();
            }

            v14 = [v12 deviceUpdateHandler];
            v15 = [v4 bleDevice];
            v16 = [v15 bleDevice];
            (v14)[2](v14, v6, [v16 rssi], objc_msgSend(v4, "state"));
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v17 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        v9 = v17;
      }

      while (v17);
    }
  }
}

- (void)_proximityClientSeedInitialDevices:(id)a3
{
  v4 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_1000F282C;
  v10[4] = sub_1000F283C;
  v11 = [(NSMutableDictionary *)self->_mappedDevices allValues];
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F2844;
  v7[3] = &unk_1008D0168;
  v8 = v4;
  v9 = v10;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);

  _Block_object_dispose(v10, 8);
}

- (void)_proximityClientSeedWillTriggerDeviceIfNeeded:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F2A80;
  v7[3] = &unk_1008CE028;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_serviceEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_bleActionService)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7970();
    }

    v3 = objc_alloc_init(SFProxHandoffService);
    bleActionService = self->_bleActionService;
    self->_bleActionService = v3;

    [(SFProxHandoffService *)self->_bleActionService setDispatchQueue:self->_dispatchQueue];
    v5 = self->_bleActionService;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000F2CC8;
    v6[3] = &unk_1008CDF90;
    v6[4] = self;
    [(SFProxHandoffService *)v5 activateWithCompletion:v6];
  }
}

- (void)_serviceTimeoutActivate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(SDProxHandoffAgent *)self _serviceTimeoutInvalidate];
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7A04();
  }

  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  bleActionServiceTimer = self->_bleActionServiceTimer;
  self->_bleActionServiceTimer = v3;

  v5 = self->_bleActionServiceTimer;
  SFDispatchTimerSet();
  v6 = self->_bleActionServiceTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000F2E84;
  handler[3] = &unk_1008CDEA0;
  handler[4] = self;
  dispatch_source_set_event_handler(v6, handler);
  dispatch_resume(self->_bleActionServiceTimer);
}

- (void)_serviceTimeoutInvalidate
{
  if (self->_bleActionServiceTimer)
  {
    dispatch_assert_queue_V2(self->_dispatchQueue);
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7A20();
    }

    bleActionServiceTimer = self->_bleActionServiceTimer;
    if (bleActionServiceTimer)
    {
      v5 = bleActionServiceTimer;
      dispatch_source_cancel(v5);
      v4 = self->_bleActionServiceTimer;
      self->_bleActionServiceTimer = 0;
    }
  }
}

- (void)_serviceTimeoutFired
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7A3C();
  }

  [(SDProxHandoffAgent *)self _serviceTimeoutInvalidate];
}

- (void)_throttleEventDidOccur
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7A58();
  }

  v3 = self->_prefThrottleEventCount + 1;

  [(SDProxHandoffAgent *)self _throttleEventSet:v3];
}

- (void)_throttleEventSet:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7A74();
  }

  CFPrefs_SetInt64();

  [(SDProxHandoffAgent *)self prefsChanged];
}

- (void)_throttleEventsReset
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7AB4();
  }

  [(SDProxHandoffAgent *)self _throttleEventSet:0];
}

- (BOOL)_throttleMediumAllowsTrigger
{
  if (self->_prefIgnoreMediumThrottle)
  {
    return 1;
  }

  if (self->_prefMediumBubbleLastTicks == -1)
  {
    return 1;
  }

  mach_absolute_time();
  prefMediumBubbleLastTicks = self->_prefMediumBubbleLastTicks;
  UpTicksToSecondsF();
  return v5 >= 64800.0;
}

- (void)_throttleMediumReset
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7AD0();
  }

  [(SDProxHandoffAgent *)self _throttleMediumSetTicks:-1];
}

- (void)_throttleMediumSetTicks:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7AEC();
  }

  CFPrefs_SetInt64();

  [(SDProxHandoffAgent *)self prefsChanged];
}

- (void)_proxiedNotificationDidDismiss:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = [(SDProxHandoffAgent *)self _combinedDeviceForUIID:v6];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_23;
  }

  v9 = a4 - 1;
  if ((a4 - 1) > 3)
  {
    v10 = @"?";
  }

  else
  {
    v10 = *(&off_1008D0358 + v9);
  }

  v11 = [v7 notificationType];
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7B2C(a4);
  }

  v12 = [v8 effectiveID];
  v13 = v6;
  v14 = v13;
  if (v12 == v13)
  {
    v25 = v10;
  }

  else
  {
    if ((v13 == 0) == (v12 != 0))
    {

LABEL_20:
      if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F7B90();
      }

      goto LABEL_23;
    }

    v25 = v10;
    v15 = [v12 isEqual:v13];

    if ((v15 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  [(SDProxHandoffAgent *)self _proximityClientDeviceWasDismissed:v14 reason:a4, v25];
  v16 = [v8 canTransition:15];
  if (v9 <= 1 && v16)
  {
    v17 = [v8 bleDevice];
    v18 = [v17 bleDevice];
    v19 = [v18 insideSmallBubble];

    if ((v19 & 1) == 0)
    {
      [v8 setNextState:15];
    }

    [v8 setDismissReason:a4];
    [(SDProxHandoffAgent *)self _run];
  }

  v27[0] = @"notificationDurationSecs";
  [v8 notificationDurationSecs];
  v20 = [NSNumber numberWithDouble:?];
  v28[0] = v20;
  v27[1] = @"notificationType";
  v21 = [NSNumber numberWithUnsignedInt:v11];
  v28[1] = v21;
  v27[2] = @"pendingContentSecs";
  [v8 pendingContentDurationSecs];
  v22 = [NSNumber numberWithDouble:?];
  v28[2] = v22;
  v27[3] = @"reason";
  v23 = [NSNumber numberWithInteger:a4];
  v28[3] = v23;
  v28[4] = v26;
  v27[4] = @"reasonStr";
  v27[5] = @"uiID";
  v28[5] = v14;
  v24 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:6];
  SFMetricsLog();

LABEL_23:
}

- (void)_proxiedNotificationWasTapped:(id)a3
{
  v4 = a3;
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7BD0();
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v31 = 0;
    v32 = *v38;
    v9 = 0x7FFFFFFF;
    obj = v5;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v38 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        v12 = [(SDProxHandoffAgent *)self _combinedDeviceForUIID:v11];
        v13 = v12;
        if (v12)
        {
          v14 = self;
          v15 = [v12 bleDevice];
          v16 = [v15 bleDevice];
          v17 = [v16 rssiEstimate];

          v18 = v9;
          if (v9 <= 0x8000000000000000)
          {
            v18 = 0x8000000000000000;
          }

          if (v18 < v17)
          {
            v19 = v13;

            v20 = v11;
            v9 = v17;
            v31 = v20;
            v8 = v19;
          }

          self = v14;
        }
      }

      v5 = obj;
      v7 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v7);

    if (v8)
    {
      if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F7C10();
      }

      if (!self->_userOnCall)
      {
        [(SDProxHandoffAgent *)self _proximityClientDeviceWasSelected:v31];
      }

      if ([v8 canTransition:18])
      {
        [v8 setNextState:18];
        [(SDProxHandoffAgent *)self _run];
      }

      v21 = [obj mutableCopy];
      [v21 removeObject:v31];
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v33 objects:v43 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v34;
        do
        {
          for (j = 0; j != v24; j = j + 1)
          {
            if (*v34 != v25)
            {
              objc_enumerationMutation(v22);
            }

            [(SDProxHandoffAgent *)self _proxiedNotificationDidDismiss:*(*(&v33 + 1) + 8 * j) reason:2];
          }

          v24 = [v22 countByEnumeratingWithState:&v33 objects:v43 count:16];
        }

        while (v24);
      }

      v41[0] = @"onCall";
      v27 = [NSNumber numberWithBool:self->_userOnCall];
      v41[1] = @"uiID";
      v42[0] = v27;
      v28 = v31;
      v42[1] = v31;
      v29 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:2];
      SFMetricsLog();

      v5 = obj;
      goto LABEL_39;
    }

    v28 = v31;
  }

  else
  {

    v28 = 0;
  }

  if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7C50();
  }

  v8 = 0;
LABEL_39:
}

- (void)notificationDidDismiss:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F3A70;
  block[3] = &unk_1008CF8F0;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)userDidTapNotification:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F3B68;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_hapticsFireNotificationSuccess
{
  if (SFDeviceClassCodeGet() != 4)
  {
    if (!self->_hapticNotification)
    {
      [(SDProxHandoffAgent *)self _hapticsEnsurePrepared];
    }

    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7C84();
    }

    hapticNotification = self->_hapticNotification;

    [(UINotificationFeedbackGenerator *)hapticNotification notificationOccurred:0];
  }
}

- (void)_hapticsEnsurePrepared
{
  if (SFDeviceClassCodeGet() != 4)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7CA0();
    }

    v3 = objc_alloc_init(UINotificationFeedbackGenerator);
    hapticNotification = self->_hapticNotification;
    self->_hapticNotification = v3;

    v5 = self->_hapticNotification;

    [(UINotificationFeedbackGenerator *)v5 prepare];
  }
}

- (void)_hapticsEnsureStopped
{
  hapticNotification = self->_hapticNotification;
  self->_hapticNotification = 0;
}

- (void)_uiDismissWhenReady:(id)a3 reason:(int64_t)a4
{
  v11 = a3;
  mach_absolute_time();
  [v11 notificationTicks];
  UpTicksToSecondsF();
  v7 = v6;
  if (1.5 - v6 > 0.0)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7CFC();
    }

    if ([v11 canTransition:19])
    {
      [v11 setDismissReason:a4];
      [v11 setNextState:19];
      [(SDProxHandoffAgent *)self _run];
    }

    [(SDProxHandoffAgent *)self _scheduleRunAfter:1.5 - v7];
    goto LABEL_15;
  }

  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7CBC();
  }

  [v11 setNotificationDurationSecs:v7];
  v8 = [v11 effectiveID];
  if (v8)
  {
    [(SFNotificationProxy *)self->_notificationProxy requestRemove:v8 withReason:a4];
  }

  v9 = [v11 canTransition:20];
  v10 = v11;
  if (v9)
  {
    [v11 setDismissReason:a4];
    [v11 setNextState:20];
    [(SDProxHandoffAgent *)self _run];
LABEL_15:
    v10 = v11;
  }
}

- (void)_uiStopIfNeeded:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  if (SFDeviceClassCodeGet() - 1 <= 1)
  {
    v7 = self->_uiDevice;
    if (!v7)
    {
LABEL_25:

      goto LABEL_26;
    }

    v8 = [v6 effectiveID];
    if (v8)
    {
      v9 = [(SFCombinedDevice *)self->_uiDevice effectiveID];
      v10 = v8;
      v11 = v9;
      v12 = v11;
      if (v10 == v11)
      {

        goto LABEL_9;
      }

      if (v11)
      {
        v13 = [v10 isEqual:v11];

        if (!v13)
        {
          goto LABEL_24;
        }

LABEL_9:
        if ((a4 - 1) > 3)
        {
          v14 = @"?";
        }

        else
        {
          v14 = *(&off_1008D0358 + a4 - 1);
        }

        if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
        {
          v23 = v10;
          v24 = v14;
          LogPrintF();
        }

        [(SFNotificationProxy *)self->_notificationProxy requestRemove:v10 withReason:a4, v23, v24];
        v15 = [v6 attachmentURL];
        if (v15)
        {
          v25 = v14;
          v16 = +[NSFileManager defaultManager];
          v26 = 0;
          v17 = [v16 removeItemAtURL:v15 error:&v26];
          v18 = v26;

          if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
          {
            sub_1000F7D3C(v17, v18);
          }

          v14 = v25;
        }

        else
        {
          v17 = 0;
        }

        v27[0] = @"deletedAttachment";
        v19 = [NSNumber numberWithBool:v17];
        v28[0] = v19;
        v27[1] = @"notificationType";
        v20 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v6 notificationType]);
        v28[1] = v20;
        v27[2] = @"reason";
        v21 = [NSNumber numberWithInteger:a4];
        v28[2] = v21;
        v28[3] = v14;
        v27[3] = @"reasonStr";
        v27[4] = @"uiID";
        v28[4] = v10;
        v22 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:5];
        SFMetricsLog();

        goto LABEL_24;
      }
    }

LABEL_24:

    goto LABEL_25;
  }

LABEL_26:
}

- (id)_combinedDeviceForUIID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000F282C;
  v16 = sub_1000F283C;
  v17 = 0;
  mappedDevices = self->_mappedDevices;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F428C;
  v9[3] = &unk_1008D01E0;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(NSMutableDictionary *)mappedDevices enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)_combinedDeviceIsSuppressed:(id)a3
{
  v4 = a3;
  v5 = [v4 effectiveID];
  v6 = v5 && ([(NSMutableSet *)self->_suppressedDeviceIDs containsObject:v5]& 1) != 0;

  return v6;
}

- (BOOL)_expectingContentForDeviceID:(id)a3
{
  v3 = [(SDProxHandoffAgent *)self _combinedDeviceForUIID:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)_combinedDevicePrepareForCallTransferTrigger:(id)a3
{
  v6 = a3;
  [v6 setNotificationType:3];
  v4 = [(SDProxHandoffAgent *)self _routeForDevice:v6];
  if (v4)
  {
    [v6 setRoute:v4];
  }

  v5 = [(SDProxHandoffAgent *)self callTransferInfoForDevice:v6];
  if (v5)
  {
    [v6 setNotificationInfo:v5];
  }
}

- (void)_resetAllStates
{
  uiDevice = self->_uiDevice;
  self->_uiDevice = 0;

  mappedDevices = self->_mappedDevices;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F4538;
  v5[3] = &unk_1008D0208;
  v5[4] = self;
  [(NSMutableDictionary *)mappedDevices enumerateKeysAndObjectsUsingBlock:v5];
  [(SDProxHandoffAgent *)self _run];
}

- (id)_routeForDevice:(id)a3
{
  v4 = a3;
  v5 = [(SDProxHandoffAgent *)self _routes];
  if (v5)
  {
    v6 = [v4 bleDevice];
    if (v6)
    {
      v7 = [v4 clinkDevice];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v11 = [(RPCompanionLinkClient *)self->_clinkClient activeDevices];
        v9 = SFDeviceToRPCompanionLinkDevice();
      }

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = v5;
      v10 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        v21 = v4;
        v13 = *v23;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(v12);
            }

            v15 = *(*(&v22 + 1) + 8 * i);
            if (sub_1000EB004(v6, v15, v9))
            {
              v16 = v15;
              v17 = [v16 uniqueIdentifier];
              if (v17)
              {
                v18 = v17;
                v19 = [v16 isHomePodFamily];

                if (v19)
                {
                  v10 = v16;
                  goto LABEL_23;
                }
              }

              else
              {
              }
            }
          }

          v10 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v10);
LABEL_23:
        v4 = v21;
      }
    }

    else
    {
      if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F7DD0();
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_routes
{
  v2 = [(objc_class *)off_100970920() sharedInstance];
  v3 = [v2 routeController];
  v4 = [v3 routes];

  return v4;
}

- (BOOL)_shouldMediumPromptWithInfo:(id)a3
{
  v4 = a3;
  if (!self->_prefMediumBubbleEnabled)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7DEC();
    }

    goto LABEL_16;
  }

  if ([(SDProxHandoffAgent *)self _throttleEventsReachedMax])
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7E24();
    }

LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if (![(SDProxHandoffAgent *)self _throttleMediumAllowsTrigger])
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7E08();
    }

    goto LABEL_16;
  }

  v5 = [v4 interactionBehavior] == 2;
LABEL_17:

  return v5;
}

- (id)callTransferInfoForDevice:(id)a3
{
  v4 = a3;
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7E40();
  }

  v5 = [(SDProxHandoffAgent *)self currentCall];
  if (!v5 && dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7E5C();
  }

  v6 = [(SDProxHandoffAgent *)self contactForCall:v5];
  if (!v6 && dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7E78();
  }

  v25 = v5;
  v7 = [(SDProxHandoffAgent *)self appIconForCall:v5];
  if (!v7 && dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7E94();
  }

  v8 = [(SDProxHandoffAgent *)self persistImageForContact:v6 withAppIcon:v7];
  if (v8)
  {
    [v4 setAttachmentURL:v8];
  }

  else if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7EB0();
  }

  v9 = [(SDProxHandoffAgent *)self displayNameForContact:v6];
  if (!v9)
  {

    v12 = 0;
LABEL_27:
    v14 = SFLocalizedStringForKey();

    goto LABEL_28;
  }

  v10 = SFDeviceClassCodeGet() - 1;
  if (v10 < 3)
  {
    v11 = *(&off_1008D0378 + v10);
  }

  v13 = SFLocalizedStringForKey();
  v12 = [NSString stringWithFormat:v13, v9];

  if (!v12)
  {
    goto LABEL_27;
  }

  v14 = v12;
  if (![v12 length])
  {
    goto LABEL_27;
  }

LABEL_28:
  v15 = SFLocalizedStringForKey();
  v16 = [v4 route];
  v17 = v16;
  if (v16 && [v16 isCurrentlyPicked])
  {
    SFDeviceClassCodeGet();
    v18 = SFLocalizedStringForKey();

    v19 = 1;
    v15 = v18;
  }

  else
  {
    v19 = 2;
  }

  v20 = objc_alloc_init(SFNotificationInfo);
  v21 = v20;
  if (v8)
  {
    [v20 setAttachmentURL:v8];
  }

  [v21 setBody:v14];
  v22 = [v4 name];
  v23 = SFHomePodDisplayNameForDeviceName();
  [v21 setHeader:v23];

  [v21 setInteractionBehavior:2];
  [v21 setInteractionDirection:v19];
  [v21 setNotificationType:3];
  [v21 setTitle:v15];
  [v21 setHomePodType:{-[SDProxHandoffAgent notificationHomePodTypeForDevice:](self, "notificationHomePodTypeForDevice:", v4)}];

  return v21;
}

- (BOOL)callTransferShouldPush:(id)a3
{
  v3 = [a3 route];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isCurrentlyPicked] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (id)mediaTransferInfoFromInfo:(id)a3
{
  v3 = [a3 copy];
  [v3 setNotificationType:2];
  SFDeviceClassCodeGet();
  [v3 interactionDirection];
  if (![v3 interactionBehavior])
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7ECC();
    }

    [v3 setInteractionBehavior:2];
  }

  v4 = SFLocalizedStringForKey();
  [v3 setTitle:v4];

  return v3;
}

- (unint64_t)notificationHomePodTypeForDevice:(id)a3
{
  v3 = [a3 bleDevice];
  v4 = [v3 model];
  v5 = [v4 isEqualToString:{@"AudioAccessory5, 1"}];

  if (v5)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (CGImage)appIconForCall:(id)a3
{
  if (a3)
  {
    v3 = [a3 provider];
    v4 = v3;
    if (!v3)
    {
      if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F7F04();
      }

      goto LABEL_10;
    }

    v5 = [v3 displayAppBundleIdentifier];
    if (v5)
    {
      v6 = [[ISIcon alloc] initWithBundleIdentifier:v5];

      if (v6)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

    v8 = [v4 inCallUIBundleIdentifier];
    if (v8)
    {
      v6 = [[ISIcon alloc] initWithBundleIdentifier:v8];

      if (v6)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

    v9 = [v4 bundleIdentifier];
    if (!v9)
    {

LABEL_20:
      v10 = [v4 bundleURL];
      if (v10)
      {
        v6 = [[ISIcon alloc] initWithURL:v10];

        if (v6)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }

      if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F7EE8();
      }

LABEL_10:
      v7 = 0;
LABEL_23:

      return v7;
    }

    v6 = [[ISIcon alloc] initWithBundleIdentifier:v9];

    if (!v6)
    {
      goto LABEL_20;
    }

LABEL_22:
    v11 = [[ISImageDescriptor alloc] initWithSize:12.0 scale:{12.0, 3.0}];
    v7 = [v6 CGImageForImageDescriptor:v11];

    goto LABEL_23;
  }

  return 0;
}

- (id)contactForCall:(id)a3
{
  if (a3)
  {
    v3 = [a3 contactIdentifier];
    if (v3)
    {
      v4 = [(objc_class *)off_100970920() sharedInstance];
      v5 = [v4 contactStore];
      v6 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
      v13[0] = v6;
      v13[1] = CNContactThumbnailImageDataKey;
      v13[2] = CNContactGivenNameKey;
      v13[3] = CNContactFamilyNameKey;
      v13[4] = CNContactTypeKey;
      v7 = [NSArray arrayWithObjects:v13 count:5];
      v12 = 0;
      v8 = [v5 unifiedContactWithIdentifier:v3 keysToFetch:v7 error:&v12];
      v9 = v12;
      if (v8)
      {
        v10 = v8;
      }

      else if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)displayNameForContact:(id)a3
{
  if (a3)
  {
    v4 = [CNContactFormatter stringFromContact:a3 style:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)persistImageForContact:(id)a3 withAppIcon:(CGImage *)a4
{
  v5 = a3;
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    v12 = v5;
    v13 = a4;
    LogPrintF();
  }

  v6 = [SDXPCHelperConnection makeActivatedConnection:v12];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000F5478;
  v14[3] = &unk_1008CDEA0;
  v14[4] = v6;
  v7 = objc_retainBlock(v14);
  if (a4)
  {
    v8 = SFDataFromCGImage();
    a4 = v8;
    if (v8)
    {
      v9 = v8;
    }
  }

  v10 = [v6 urlToCGImgDataForCallHandoffIconWithAppIconImageData:a4 contact:v5];

  (v7[2])(v7);

  return v10;
}

- (void)proximityDeviceDidTrigger:(id)a3
{
  v4 = a3;
  if (dword_1009708B0 <= 50 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7F60();
  }

  v5 = [(NSMutableDictionary *)self->_bleActionDevices objectForKeyedSubscript:v4];

  if (v5)
  {
    dispatchQueue = self->_dispatchQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000F5578;
    v7[3] = &unk_1008CE028;
    v7[4] = self;
    v8 = v4;
    dispatch_async(dispatchQueue, v7);
  }
}

- (void)testUI:(id)a3
{
  v4 = a3;
  v5 = [NSUUID alloc];
  v6 = [v4 containsString:@"fail"];

  if (v6)
  {
    v7 = @"00000000-0000-0000-0000-000000000002";
  }

  else
  {
    v7 = @"00000000-0000-0000-0000-000000000001";
  }

  v26 = [v5 initWithUUIDString:v7];
  v8 = objc_alloc_init(SFDevice);
  [v8 setIdentifier:v26];
  [v8 setName:@"Living Room HomePod"];
  v9 = [objc_alloc(off_100970928()) initWithUniqueIdentifier:@"uniqueID" name:@"Living Room"];
  [v9 setDeviceType:6];
  v10 = [(SDProxHandoffAgent *)self currentCall];
  if (v10)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7FA0();
    }

    v11 = [(SDProxHandoffAgent *)self contactForCall:v10];
    v12 = [(SDProxHandoffAgent *)self persistImageForContact:v11 withAppIcon:[(SDProxHandoffAgent *)self appIconForCall:v10]];
    if (v12)
    {
      v13 = v12;
      v14 = v13;
      goto LABEL_12;
    }
  }

  v15 = +[SDStatusMonitor sharedMonitor];
  v10 = [v15 meCard];

  v11 = [[ISIcon alloc] initWithBundleIdentifier:@"com.apple.mobilephone"];
  v14 = [[ISImageDescriptor alloc] initWithSize:12.0 scale:{12.0, 3.0}];
  v13 = -[SDProxHandoffAgent persistImageForContact:withAppIcon:](self, "persistImageForContact:withAppIcon:", v10, [v11 CGImageForImageDescriptor:v14]);
LABEL_12:
  v16 = v13;

  v17 = objc_alloc_init(SFNotificationInfo);
  [v17 setAttachmentURL:v16];
  v18 = SFLocalizedStringForKey();
  [v17 setBody:v18];

  v19 = [v8 name];
  if (v19)
  {
    [v17 setHeader:v19];
  }

  else
  {
    v20 = SFLocalizedStringForKey();
    [v17 setHeader:v20];
  }

  [v17 setNotificationType:3];
  v21 = SFLocalizedStringForKey();
  [v17 setTitle:v21];

  v22 = objc_alloc_init(SFCombinedDevice);
  v23 = objc_alloc_init(RPCompanionLinkDevice);
  [(SFCombinedDevice *)v22 setClinkDevice:v23];

  [(SFCombinedDevice *)v22 setForced:1];
  v24 = +[NSUUID UUID];
  v25 = [v24 UUIDString];
  [(SFCombinedDevice *)v22 setForcedID:v25];

  [(SFCombinedDevice *)v22 setNotificationInfo:v17];
  [(SFCombinedDevice *)v22 setNotificationType:3];
  [(SFCombinedDevice *)v22 setRoute:v9];
  [(SFCombinedDevice *)v22 setBleDevice:v8];
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7FBC();
  }
}

@end