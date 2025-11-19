@interface CBAdvertiserDaemon
+ (void)buildSafetyAlertsAdvertisingData:(id)a3 advertisingAddresses:(id *)a4 advertisingData:(id *)a5 advertiseRate:(int *)a6 error:(id *)a7;
- (BOOL)_wiProxUpdateLinger:(id *)a3 active:(BOOL)a4;
- (BOOL)needsToRun;
- (CBAdvertiserDaemon)init;
- (id)_encryptNearbyInfoV2Payload:(const void *)a3 payloadLength:(unint64_t)a4 authTag:(id)a5 irkData:(id)a6 keyInfo:(const void *)a7 keyInfoLength:(unint64_t)a8;
- (id)descriptionWithLevel:(int)a3;
- (void)_activateWithCompletion:(id)a3;
- (void)_invalidate;
- (void)_invalidated;
- (void)_stackAppleTypeUpdateAdvertising:(id *)a3;
- (void)_update;
- (void)_updateAirDropPayload:(id *)a3;
- (void)_updateAirPlaySourcePayload:(id *)a3;
- (void)_updateAirPlayTargetPayload:(id *)a3;
- (void)_updateDSInfoPayload:(id *)a3;
- (void)_updateFIDOAdvertising;
- (void)_updateFIDOPayload;
- (void)_updateHeySiriPayload:(id *)a3;
- (void)_updateIfNeededWithBlock:(id)a3;
- (void)_updateNearbyActionNoWakePayload:(id *)a3;
- (void)_updateNearbyActionV1Payload:(id *)a3;
- (void)_updateNearbyActionV2Payload:(id *)a3;
- (void)_updateNearbyInfoPayload:(id *)a3;
- (void)_updateNearbyInfoV2Payload:(id *)a3;
- (void)_updateProximityServiceAdvertising;
- (void)_updateProximityServicePayload;
- (void)_updateSafetyAlertsAdvertising;
- (void)_updateSafetyAlertsPayload;
- (void)_updateSoftwareUpdateAdvertising;
- (void)_updateSoftwareUpdatePayload;
- (void)_updateSpatialInteractionAdvertising:(id *)a3;
- (void)_updateSpatialInteractionPayload:(id *)a3;
- (void)_updateWatchSetupAdvertising;
- (void)_updateWatchSetupPayload;
- (void)_wiProxInvalidate:(id *)a3;
- (void)_wiProxUpdateAdvertising:(id *)a3;
- (void)_wiProxUpdatePayload:(id *)a3 payloadData:(id)a4 advertiseRate:(int)a5 advertiseEnableEPA:(BOOL)a6;
- (void)_wiproxAppendDescription:(id *)a3 context:(id *)a4 verbose:(BOOL)a5;
- (void)_wiproxChanged:(id)a3;
- (void)activateWithCompletion:(id)a3;
- (void)advertisingAddressChanged;
- (void)invalidate;
- (void)setAdvertiserArray:(id)a3;
- (void)setSpatialInteractionAdvertiseRate:(int)a3;
- (void)setSpatialInteractionFlags:(unsigned __int8)a3;
- (void)setSpatialInteractionIdentifiers:(id)a3;
- (void)setSpatialInteractionPresenceConfigData:(id)a3;
- (void)setSpatialInteractionUWBConfigData:(id)a3;
@end

@implementation CBAdvertiserDaemon

- (CBAdvertiserDaemon)init
{
  v16.receiver = self;
  v16.super_class = CBAdvertiserDaemon;
  v2 = [(CBAdvertiserDaemon *)&v16 init];
  if (v2)
  {
    v2->_clientID = CBXPCGetNextClientID();
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    label = v2->_airdropWiProxContext.label;
    v2->_airdropWiProxContext.label = @"AirDrop";

    v2->_airdropWiProxContext.payloadType = 5;
    v4 = v2->_airplaySourceWiProxContext.label;
    v2->_airplaySourceWiProxContext.label = @"AirPlaySource";

    v2->_airplaySourceWiProxContext.payloadType = 10;
    v5 = v2->_airplayTargetWiProxContext.label;
    v2->_airplayTargetWiProxContext.label = @"AirPlayTarget";

    v2->_airplayTargetWiProxContext.payloadType = 9;
    v2->_dsInfoWiProxContext.connectable = 1;
    v6 = v2->_dsInfoWiProxContext.label;
    v2->_dsInfoWiProxContext.label = @"DSInfo";

    v2->_dsInfoWiProxContext.payloadType = 24;
    v7 = v2->_heySiriWiProxContext.label;
    v2->_heySiriWiProxContext.label = @"HeySiri";

    v2->_heySiriWiProxContext.payloadType = 8;
    v2->_nearbyActionV1WiProxContext.connectable = 1;
    v8 = v2->_nearbyActionV1WiProxContext.label;
    v2->_nearbyActionV1WiProxContext.label = @"NearbyActionV1";

    v2->_nearbyActionV1WiProxContext.payloadType = 15;
    v9 = v2->_nearbyActionV2WiProxContext.label;
    v2->_nearbyActionV2WiProxContext.label = @"NearbyActionV2";

    v2->_nearbyActionV2WiProxContext.payloadType = 21;
    v2->_nearbyInfoWiProxContext.connectable = 1;
    v10 = v2->_nearbyInfoWiProxContext.label;
    v2->_nearbyInfoWiProxContext.label = @"NearbyInfo";

    v2->_nearbyInfoWiProxContext.payloadType = 16;
    v11 = v2->_nearbyInfoV2WiProxContext.label;
    v2->_nearbyInfoV2WiProxContext.label = @"NearbyInfoV2";

    v2->_nearbyInfoV2WiProxContext.payloadType = 22;
    v2->_nearbyActionNoWakeWiProxContext.connectable = 1;
    v12 = v2->_nearbyActionNoWakeWiProxContext.label;
    v2->_nearbyActionNoWakeWiProxContext.label = @"NearbyActionNoWake";

    v2->_nearbyActionNoWakeWiProxContext.payloadType = 26;
    v2->_spatialInteractionWiProxContext.advertiseEnableEPA = 0;
    v13 = v2->_spatialInteractionWiProxContext.label;
    v2->_spatialInteractionWiProxContext.label = @"SpatialInteraction";

    v2->_spatialInteractionWiProxContext.payloadType = 19;
    v14 = v2;
  }

  return v2;
}

- (id)descriptionWithLevel:(int)a3
{
  v4 = a3;
  v5 = [objc_opt_class() description];
  clientID = self->_clientID;
  v42 = [(NSArray *)self->_advertiserArray count];
  v33 = v5;
  NSAppendPrintF_safe();
  v6 = 0;
  location = v6;

  fidoPayloadData = self->_fidoPayloadData;
  if (fidoPayloadData)
  {
    v54 = v6;
    v8 = fidoPayloadData;
    v9 = CUPrintNSDataHex();
    v10 = v9;
    fidoAdvertiseRate = self->_fidoAdvertiseRate;
    if (fidoAdvertiseRate <= 39)
    {
      if (fidoAdvertiseRate > 19)
      {
        if (fidoAdvertiseRate == 20)
        {
          v12 = "350 ms";
          goto LABEL_22;
        }
      }

      else
      {
        if (fidoAdvertiseRate == 10)
        {
          v12 = "2 seconds";
          goto LABEL_22;
        }

        if (fidoAdvertiseRate == 15)
        {
          v12 = "1022.5 ms";
          goto LABEL_22;
        }
      }
    }

    else if (fidoAdvertiseRate <= 44)
    {
      if (fidoAdvertiseRate == 40)
      {
        v12 = "181.25 ms";
        goto LABEL_22;
      }

      if (fidoAdvertiseRate == 42)
      {
        v12 = "120 ms";
        goto LABEL_22;
      }
    }

    else
    {
      switch(fidoAdvertiseRate)
      {
        case '-':
          v12 = "60 ms";
          goto LABEL_22;
        case '2':
          v12 = "30 ms";
          goto LABEL_22;
        case '<':
          v12 = "20 ms";
LABEL_22:
          v33 = v9;
          clientID = v12;
          NSAppendPrintF_safe();
          objc_storeStrong(&location, v54);

          goto LABEL_23;
      }
    }

    v12 = "270 ms";
    goto LABEL_22;
  }

LABEL_23:
  [(CBAdvertiserDaemon *)self _wiproxAppendDescription:&location context:&self->_airdropWiProxContext verbose:v4 < 0x1F, v33, clientID, v42];
  [(CBAdvertiserDaemon *)self _wiproxAppendDescription:&location context:&self->_airplaySourceWiProxContext verbose:v4 < 0x1F];
  [(CBAdvertiserDaemon *)self _wiproxAppendDescription:&location context:&self->_airplayTargetWiProxContext verbose:v4 < 0x1F];
  [(CBAdvertiserDaemon *)self _wiproxAppendDescription:&location context:&self->_dsInfoWiProxContext verbose:v4 < 0x1F];
  [(CBAdvertiserDaemon *)self _wiproxAppendDescription:&location context:&self->_heySiriWiProxContext verbose:v4 < 0x1F];
  [(CBAdvertiserDaemon *)self _wiproxAppendDescription:&location context:&self->_nearbyActionV1WiProxContext verbose:v4 < 0x1F];
  [(CBAdvertiserDaemon *)self _wiproxAppendDescription:&location context:&self->_nearbyActionV2WiProxContext verbose:v4 < 0x1F];
  [(CBAdvertiserDaemon *)self _wiproxAppendDescription:&location context:&self->_nearbyInfoWiProxContext verbose:v4 < 0x1F];
  [(CBAdvertiserDaemon *)self _wiproxAppendDescription:&location context:&self->_nearbyInfoV2WiProxContext verbose:v4 < 0x1F];
  [(CBAdvertiserDaemon *)self _wiproxAppendDescription:&location context:&self->_nearbyActionNoWakeWiProxContext verbose:v4 < 0x1F];
  [(CBAdvertiserDaemon *)self _wiproxAppendDescription:&location context:&self->_spatialInteractionWiProxContext verbose:v4 < 0x1F];
  proximityServicePayload = self->_proximityServicePayload;
  if (proximityServicePayload)
  {
    v53 = location;
    v14 = proximityServicePayload;
    v15 = CUPrintNSDataHex();
    NSAppendPrintF_safe();
    objc_storeStrong(&location, v53);
  }

  saAdvAddresses = self->_saAdvAddresses;
  if (saAdvAddresses)
  {
    v52 = location;
    v17 = saAdvAddresses;
    v34 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe();
    objc_storeStrong(&location, v52);
  }

  saPayloadSegments = self->_saPayloadSegments;
  if (saPayloadSegments)
  {
    obj = location;
    v19 = saPayloadSegments;
    v20 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe();
    objc_storeStrong(&location, obj);
  }

  if (_os_feature_enabled_impl())
  {
    if (self->_swupActionType)
    {
      v50 = location;
      NSAppendPrintF_safe();
      objc_storeStrong(&location, v50);
    }

    swupPayloadDataArray = self->_swupPayloadDataArray;
    if (swupPayloadDataArray)
    {
      v49 = location;
      v22 = swupPayloadDataArray;
      v35 = CUPrintNSObjectOneLine();
      NSAppendPrintF_safe();
      objc_storeStrong(&location, v49);
    }
  }

  if (self->_spatialInteractionFlags)
  {
    v48 = location;
    v36 = CUPrintFlags32();
    NSAppendPrintF_safe();
    objc_storeStrong(&location, v48);
  }

  spatialInteractionIdentifiers = self->_spatialInteractionIdentifiers;
  if (spatialInteractionIdentifiers)
  {
    v47 = location;
    v24 = spatialInteractionIdentifiers;
    v37 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe();
    objc_storeStrong(&location, v47);
  }

  spatialInteractionPayloadData = self->_spatialInteractionPayloadData;
  if (spatialInteractionPayloadData)
  {
    v46 = location;
    v38 = spatialInteractionPayloadData;
    NSAppendPrintF_safe();
    objc_storeStrong(&location, v46);
  }

  spatialInteractionUWBConfigData = self->_spatialInteractionUWBConfigData;
  if (spatialInteractionUWBConfigData)
  {
    v45 = location;
    v39 = spatialInteractionUWBConfigData;
    NSAppendPrintF_safe();
    objc_storeStrong(&location, v45);
  }

  if (v4 <= 0x1E)
  {
    spatialInteractionWiProxUUID = self->_spatialInteractionWiProxUUID;
    if (spatialInteractionWiProxUUID)
    {
      v44 = location;
      v40 = spatialInteractionWiProxUUID;
      NSAppendPrintF_safe();
      objc_storeStrong(&location, v44);
    }
  }

  watchSetupPayloadData = self->_watchSetupPayloadData;
  if (watchSetupPayloadData)
  {
    v43 = location;
    v29 = watchSetupPayloadData;
    v30 = CUPrintNSDataHex();
    NSAppendPrintF_safe();
    objc_storeStrong(&location, v43);
  }

  v31 = location;

  return v31;
}

- (void)advertisingAddressChanged
{
  if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
  {
    sub_100807CC0();
  }

  self->_addressChanged = 1;

  [(CBAdvertiserDaemon *)self _updateIfNeededWithBlock:&stru_100AE0F98];
}

- (void)setAdvertiserArray:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100121B28;
  v5[3] = &unk_100AE0FC0;
  v6 = [a3 copy];
  v7 = self;
  v4 = v6;
  [(CBAdvertiserDaemon *)self _updateIfNeededWithBlock:v5];
}

- (void)setSpatialInteractionAdvertiseRate:(int)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100121C50;
  v3[3] = &unk_100AE0FE8;
  v4 = a3;
  v3[4] = self;
  [(CBAdvertiserDaemon *)self _updateIfNeededWithBlock:v3];
}

- (void)setSpatialInteractionFlags:(unsigned __int8)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100121CF0;
  v3[3] = &unk_100AE1010;
  v4 = a3;
  v3[4] = self;
  [(CBAdvertiserDaemon *)self _updateIfNeededWithBlock:v3];
}

- (void)setSpatialInteractionIdentifiers:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100121DAC;
  v5[3] = &unk_100AE0FC0;
  v6 = [a3 copy];
  v7 = self;
  v4 = v6;
  [(CBAdvertiserDaemon *)self _updateIfNeededWithBlock:v5];
}

- (void)setSpatialInteractionUWBConfigData:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100121EFC;
  v5[3] = &unk_100AE0FC0;
  v6 = [a3 copy];
  v7 = self;
  v4 = v6;
  [(CBAdvertiserDaemon *)self _updateIfNeededWithBlock:v5];
}

- (void)setSpatialInteractionPresenceConfigData:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10012204C;
  v5[3] = &unk_100AE0FC0;
  v6 = [a3 copy];
  v7 = self;
  v4 = v6;
  [(CBAdvertiserDaemon *)self _updateIfNeededWithBlock:v5];
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_activateCalled)
  {
    self->_activateCalled = 1;
    dispatchQueue = self->_dispatchQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001221B8;
    v7[3] = &unk_100AE1038;
    v7[4] = self;
    v8 = v4;
    dispatch_async(dispatchQueue, v7);
  }
}

- (void)_activateWithCompletion:(id)a3
{
  v6 = a3;
  if (self->_invalidateCalled)
  {
    v4 = CBErrorF();
    if (dword_100B50E30 <= 90 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
    {
      sub_100807D20();
    }

    v6[2](v6, v4);
  }

  else
  {
    if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
    {
      sub_100807CDC();
    }

    if (!self->_wiproxObservering)
    {
      v5 = +[NSNotificationCenter defaultCenter];
      [v5 addObserver:self selector:"_wiproxChanged:" name:@"WPDaemonServerStateChanged" object:0];
      self->_wiproxObservering = 1;
    }

    [(CBAdvertiserDaemon *)self _update];
    v6[2](v6, 0);
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001223A0;
  block[3] = &unk_100ADF5B8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (self->_wiproxObservering)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:@"WPDaemonServerStateChanged" object:0];
    self->_wiproxObservering = 0;
  }

  v13 = [qword_100BC7DB0 advertisingManager];
  [(CBStackBLEAdvertiser *)self->_fidoStackAdvertiser invalidate];
  fidoStackAdvertiser = self->_fidoStackAdvertiser;
  self->_fidoStackAdvertiser = 0;

  [(CBAdvertiserDaemon *)self _wiProxInvalidate:&self->_airdropWiProxContext];
  [(CBAdvertiserDaemon *)self _wiProxInvalidate:&self->_airplaySourceWiProxContext];
  [(CBAdvertiserDaemon *)self _wiProxInvalidate:&self->_airplayTargetWiProxContext];
  [(CBAdvertiserDaemon *)self _wiProxInvalidate:&self->_dsInfoWiProxContext];
  [(CBAdvertiserDaemon *)self _wiProxInvalidate:&self->_heySiriWiProxContext];
  [(CBAdvertiserDaemon *)self _wiProxInvalidate:&self->_nearbyActionV1WiProxContext];
  [(CBAdvertiserDaemon *)self _wiProxInvalidate:&self->_nearbyActionV2WiProxContext];
  [(CBAdvertiserDaemon *)self _wiProxInvalidate:&self->_nearbyInfoWiProxContext];
  [(CBAdvertiserDaemon *)self _wiProxInvalidate:&self->_nearbyInfoV2WiProxContext];
  [(CBAdvertiserDaemon *)self _wiProxInvalidate:&self->_nearbyActionNoWakeWiProxContext];
  [(CBAdvertiserDaemon *)self _wiProxInvalidate:&self->_spatialInteractionWiProxContext];
  [(CBStackBLEAdvertiser *)self->_proximityServiceStackAdvertiser invalidate];
  proximityServiceStackAdvertiser = self->_proximityServiceStackAdvertiser;
  self->_proximityServiceStackAdvertiser = 0;

  [(CBStackBLEAdvertiser *)self->_saStackAdvertiser invalidate];
  saStackAdvertiser = self->_saStackAdvertiser;
  self->_saStackAdvertiser = 0;

  if (_os_feature_enabled_impl())
  {
    [(CBStackBLEAdvertiser *)self->_swupStackAdvertiser invalidate];
    swupStackAdvertiser = self->_swupStackAdvertiser;
    self->_swupStackAdvertiser = 0;
  }

  v8 = self->_spatialInteractionWiProxUUID;
  v9 = self->_spatialInteractionAdvertisingRequest;
  if (v9)
  {
    if (v13 && v8)
    {
      if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
      {
        sub_100807DD8();
      }

      [v13 removeAdvertisingRequest:v9 forDaemon:v8];
    }

    spatialInteractionAdvertisingRequest = self->_spatialInteractionAdvertisingRequest;
    self->_spatialInteractionAdvertisingRequest = 0;
  }

  [(CBStackBLEAdvertiser *)self->_appleTypeStackAdvertiser invalidate];
  appleTypeStackAdvertiser = self->_appleTypeStackAdvertiser;
  self->_appleTypeStackAdvertiser = 0;

  [(CBStackBLEAdvertiser *)self->_watchSetupStackAdvertiser invalidate];
  watchSetupStackAdvertiser = self->_watchSetupStackAdvertiser;
  self->_watchSetupStackAdvertiser = 0;

  [(CBAdvertiserDaemon *)self _invalidated];
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    self->_invalidateCalled = 1;
    v7 = objc_retainBlock(self->_invalidationHandler);
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    stateChangedHandler = self->_stateChangedHandler;
    self->_stateChangedHandler = 0;

    v5 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7);
      v5 = v7;
    }

    self->_invalidateDone = 1;
    if (dword_100B50E30 <= 30)
    {
      if (dword_100B50E30 != -1 || (v6 = _LogCategory_Initialize(), v5 = v7, v6))
      {
        sub_100807DF4();
        v5 = v7;
      }
    }
  }
}

- (BOOL)needsToRun
{
  if (self->_airdropWiProxContext.payloadData)
  {
    return 1;
  }

  return self->_airplaySourceWiProxContext.payloadData || self->_airplayTargetWiProxContext.payloadData || self->_nearbyActionV1WiProxContext.payloadData || self->_nearbyActionV2WiProxContext.payloadData || self->_nearbyInfoWiProxContext.payloadData || self->_nearbyInfoV2WiProxContext.payloadData || self->_nearbyActionNoWakeWiProxContext.payloadData || [(NSArray *)self->_saPayloadSegments count]|| _os_feature_enabled_impl() && [(NSArray *)self->_swupPayloadDataArray count];
}

- (void)_updateIfNeededWithBlock:(id)a3
{
  if ((*(a3 + 2))(a3, a2) && self->_activateCalled && !self->_changesPending)
  {
    self->_changesPending = 1;
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100122898;
    block[3] = &unk_100ADF5B8;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)_update
{
  if (!self->_invalidateCalled)
  {
    if (self->_changesPending)
    {
      self->_changesPending = 0;
      [(CBAdvertiserDaemon *)self _updateFIDOPayload];
      [(CBAdvertiserDaemon *)self _updateAirDropPayload:&self->_airdropWiProxContext];
      [(CBAdvertiserDaemon *)self _updateAirPlaySourcePayload:&self->_airplaySourceWiProxContext];
      [(CBAdvertiserDaemon *)self _updateAirPlayTargetPayload:&self->_airplayTargetWiProxContext];
      [(CBAdvertiserDaemon *)self _updateDSInfoPayload:&self->_dsInfoWiProxContext];
      [(CBAdvertiserDaemon *)self _updateHeySiriPayload:&self->_heySiriWiProxContext];
      [(CBAdvertiserDaemon *)self _updateNearbyActionV1Payload:&self->_nearbyActionV1WiProxContext];
      [(CBAdvertiserDaemon *)self _updateNearbyActionV2Payload:&self->_nearbyActionV2WiProxContext];
      [(CBAdvertiserDaemon *)self _updateNearbyInfoPayload:&self->_nearbyInfoWiProxContext];
      [(CBAdvertiserDaemon *)self _updateNearbyInfoV2Payload:&self->_nearbyInfoV2WiProxContext];
      [(CBAdvertiserDaemon *)self _updateNearbyActionNoWakePayload:&self->_nearbyActionNoWakeWiProxContext];
      [(CBAdvertiserDaemon *)self _updateProximityServicePayload];
      if (_os_feature_enabled_impl() && GestaltGetDeviceClass() == 1)
      {
        [(CBAdvertiserDaemon *)self _updateSafetyAlertsPayload];
      }

      if (_os_feature_enabled_impl())
      {
        [(CBAdvertiserDaemon *)self _updateSoftwareUpdatePayload];
      }

      [(CBAdvertiserDaemon *)self _updateSpatialInteractionPayload:&self->_spatialInteractionWiProxContext];
      [(CBAdvertiserDaemon *)self _updateWatchSetupPayload];
    }

    [(CBAdvertiserDaemon *)self _updateFIDOAdvertising];
    [(CBAdvertiserDaemon *)self _wiProxUpdateAdvertising:&self->_airdropWiProxContext];
    [(CBAdvertiserDaemon *)self _wiProxUpdateAdvertising:&self->_airplaySourceWiProxContext];
    [(CBAdvertiserDaemon *)self _wiProxUpdateAdvertising:&self->_airplayTargetWiProxContext];
    [(CBAdvertiserDaemon *)self _wiProxUpdateAdvertising:&self->_dsInfoWiProxContext];
    [(CBAdvertiserDaemon *)self _wiProxUpdateAdvertising:&self->_heySiriWiProxContext];
    [(CBAdvertiserDaemon *)self _wiProxUpdateAdvertising:&self->_nearbyActionV1WiProxContext];
    [(CBAdvertiserDaemon *)self _wiProxUpdateAdvertising:&self->_nearbyActionV2WiProxContext];
    [(CBAdvertiserDaemon *)self _wiProxUpdateAdvertising:&self->_nearbyInfoWiProxContext];
    [(CBAdvertiserDaemon *)self _wiProxUpdateAdvertising:&self->_nearbyInfoV2WiProxContext];
    [(CBAdvertiserDaemon *)self _updateProximityServiceAdvertising];
    if (_os_feature_enabled_impl() && GestaltGetDeviceClass() == 1)
    {
      [(CBAdvertiserDaemon *)self _updateSafetyAlertsAdvertising];
    }

    if (_os_feature_enabled_impl())
    {
      [(CBAdvertiserDaemon *)self _updateSoftwareUpdateAdvertising];
    }

    [(CBAdvertiserDaemon *)self _updateSpatialInteractionAdvertising:&self->_spatialInteractionWiProxContext];
    [(CBAdvertiserDaemon *)self _wiProxUpdateAdvertising:&self->_nearbyActionNoWakeWiProxContext];
    [(CBAdvertiserDaemon *)self _updateWatchSetupAdvertising];
    self->_addressChanged = 0;
    if (self->_stateChanged)
    {
      self->_stateChanged = 0;
      v3 = objc_retainBlock(self->_stateChangedHandler);
      if (v3)
      {
        v4 = v3;
        v3[2]();
        v3 = v4;
      }
    }
  }
}

- (void)_stackAppleTypeUpdateAdvertising:(id *)a3
{
  v5 = a3->var10;
  p_appleTypeStackAdvertiser = &self->_appleTypeStackAdvertiser;
  appleTypeStackAdvertiser = self->_appleTypeStackAdvertiser;
  v11 = v5;
  if (!v5)
  {
    if (!appleTypeStackAdvertiser)
    {
LABEL_21:
      a3->var7 = 0;
      goto LABEL_22;
    }

    if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
    {
      sub_1008080F0();
    }

    [(CBStackBLEAdvertiser *)*p_appleTypeStackAdvertiser invalidate];
    v9 = *p_appleTypeStackAdvertiser;
    *p_appleTypeStackAdvertiser = 0;
LABEL_20:

    goto LABEL_21;
  }

  v8 = appleTypeStackAdvertiser;
  if (v8)
  {
    v9 = v8;
    if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
    {
      sub_100807E10();
    }

    goto LABEL_17;
  }

  if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
  {
    sub_100807F40();
  }

  [(CBStackAdaptor *)self->_stackAdaptor bleAdvertiserClass];
  v10 = objc_alloc_init(objc_opt_class());
  if (v10)
  {
    v9 = v10;
    objc_storeStrong(&self->_appleTypeStackAdvertiser, v10);
    [(CBStackBLEAdvertiser *)v9 setDispatchQueue:self->_dispatchQueue];
LABEL_17:
    [(CBStackBLEAdvertiser *)v9 setAdvertiseRate:a3->var5];
    [(CBStackBLEAdvertiser *)v9 setAdvertiseEnableEPA:a3->var4];
    if (a3->var3 == 15)
    {
      [(CBStackBLEAdvertiser *)v9 setNearbyActionData:v11];
    }

    [(CBStackBLEAdvertiser *)v9 activate];
    goto LABEL_20;
  }

  sub_100808070();
LABEL_22:
}

- (void)_wiproxAppendDescription:(id *)a3 context:(id *)a4 verbose:(BOOL)a5
{
  v5 = a5;
  v8 = a4->var10;
  if (v8)
  {
    v16 = *a3;
    v9 = *a3;
    v10 = CUPrintNSDataHex();
    NSAppendPrintF_safe();
    v11 = v16;

    if (v5)
    {
      var11 = a4->var11;
      if (var11)
      {
        v15 = var11;
        NSAppendPrintF_safe();
        v13 = v11;

        v11 = v13;
      }
    }

    v14 = *a3;
    *a3 = v11;
  }
}

- (void)_wiproxChanged:(id)a3
{
  v4 = a3;
  if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
  {
    sub_100808130();
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100122F34;
  block[3] = &unk_100ADF5B8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_wiProxInvalidate:(id *)a3
{
  if (a3->var8 && dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
  {
    sub_10080814C();
  }

  a3->var8 = 0;
  var9 = a3->var9;
  if (var9)
  {
    v5 = var9;
    dispatch_source_cancel(v5);
    v6 = a3->var9;
    a3->var9 = 0;
  }

  v12 = a3->var11;
  v7 = a3->var6;
  if (v7)
  {
    v8 = [qword_100BC7DB0 advertisingManager];
    if (v8)
    {
      v9 = v12 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
      {
        sub_10080818C();
      }

      [v8 removeAdvertisingRequest:v7 forDaemon:v12];
    }

    var6 = a3->var6;
    a3->var6 = 0;

    var12 = a3->var12;
    a3->var12 = 0;
  }
}

- (void)_wiProxUpdateAdvertising:(id *)a3
{
  if (a3->var7 || self->_addressChanged)
  {
    if (-[CBDaemonServer prefWiProxAdvertising](self->_daemonServer, "prefWiProxAdvertising") && ([qword_100BC7DB0 advertisingManager], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v27 = v5;
      v6 = [v5 state];
      if (v6 == 3)
      {
        v7 = a3->var11;
        if (!v7)
        {
          v7 = +[NSUUID UUID];
          objc_storeStrong(&a3->var11, v7);
        }

        v8 = a3->var10;
        p_var6 = &a3->var6;
        v10 = a3->var6;
        if (v10)
        {
          if (v8)
          {
            v11 = "for restart";
          }

          else
          {
            v11 = "";
          }

          if (dword_100B50E30 < 31 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
          {
            if (self->_addressChanged)
            {
              v12 = "for address change";
            }

            else
            {
              v12 = v11;
            }

            var2 = a3->var2;
            v26 = v12;
            LogPrintF_safe();
          }

          [v27 removeAdvertisingRequest:v10 forDaemon:{v7, var2, v26}];
          v14 = *p_var6;
          *p_var6 = 0;
        }

        if (v8)
        {
          v15 = [WPAdvertisingRequest requestForClientType:a3->var3];
          objc_storeStrong(&a3->var6, v15);
          [v15 setAdvertisingData:v8];
          var5 = a3->var5;
          v17 = 290;
          v18 = 48;
          v19 = 32;
          if (var5 != 60)
          {
            v19 = 290;
          }

          if (var5 != 50)
          {
            v18 = v19;
          }

          v20 = 192;
          v21 = 96;
          if (var5 != 45)
          {
            v21 = 290;
          }

          if (var5 != 42)
          {
            v20 = v21;
          }

          if (var5 <= 49)
          {
            v18 = v20;
          }

          v22 = 996;
          v23 = 432;
          if (var5 != 30)
          {
            v23 = 290;
          }

          if (var5 != 20)
          {
            v22 = v23;
          }

          if (var5 == 15)
          {
            v17 = 1636;
          }

          if (var5 == 10)
          {
            v17 = 3200;
          }

          if (var5 > 19)
          {
            v17 = v22;
          }

          if (var5 <= 41)
          {
            v24 = v17;
          }

          else
          {
            v24 = v18;
          }

          [v15 setAdvertisingRate:v24];
          [v15 setConnectable:a3->var0];
          [v15 setIsRanging:a3->var1];
          [v15 setEnableEPAForAdvertising:a3->var4];
          [v15 setStopOnAdvertisingAddressChange:1];
          [v15 setAdvertisingRandomData:a3->var12];
          if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
          {
            sub_100808268(a3, v8, v15);
          }

          [v27 addAdvertisingRequest:v15 forDaemon:v7];
        }

        a3->var7 = 0;

        v13 = v27;
      }

      else
      {
        sub_1008081D0(a3, v6, v27, &v28);
        v13 = v28;
      }
    }

    else
    {
      if (a3->var3 == 15)
      {
        [(CBAdvertiserDaemon *)self _stackAppleTypeUpdateAdvertising:a3];
      }

      v13 = 0;
    }
  }
}

- (BOOL)_wiProxUpdateLinger:(id *)a3 active:(BOOL)a4
{
  if (a4)
  {
    if (a3->var8 && dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
    {
      sub_100808384();
    }

    a3->var8 = 0;
    var9 = a3->var9;
    if (var9)
    {
      v6 = var9;
      dispatch_source_cancel(v6);
      v7 = a3->var9;
      a3->var9 = 0;
    }

    return 0;
  }

  if (a3->var8)
  {
    if (!a3->var9)
    {
      if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
      {
        sub_100808344();
      }

      v9 = 0;
      a3->var8 = 0;
      self->_stateChanged = 1;
      return v9;
    }

    return 1;
  }

  if (!a3->var10)
  {
    return 0;
  }

  if (a3->var9)
  {
    return 1;
  }

  if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
  {
    sub_1008082FC();
  }

  v9 = 1;
  a3->var8 = 1;
  v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v12 = a3->var9;
  a3->var9 = v11;
  v13 = v11;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100123644;
  handler[3] = &unk_100AE1060;
  handler[5] = self;
  handler[6] = a3;
  handler[4] = v13;
  dispatch_source_set_event_handler(v13, handler);
  CUDispatchTimerSet();
  dispatch_activate(v13);

  return v9;
}

- (void)_wiProxUpdatePayload:(id *)a3 payloadData:(id)a4 advertiseRate:(int)a5 advertiseEnableEPA:(BOOL)a6
{
  v10 = a4;
  var10 = a3->var10;
  v14 = v10;
  v12 = var10;
  if (v12 == v14)
  {
  }

  else
  {
    if ((v14 != 0) == (v12 == 0))
    {

      goto LABEL_12;
    }

    v13 = [v14 isEqual:v12];

    if (!v13)
    {
LABEL_12:
      if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
      {
        sub_1008083C4();
      }

      a3->var5 = a5;
      objc_storeStrong(&a3->var10, a4);
      a3->var7 = 1;
      a3->var4 = a6;
      goto LABEL_16;
    }
  }

  if (a3->var5 != a5)
  {
    goto LABEL_12;
  }

  if (dword_100B50E30 <= 10 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
  {
    sub_10080860C();
  }

LABEL_16:
}

- (void)_updateAirPlaySourcePayload:(id *)a3
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_advertiserArray;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 airplaySourceFlags];
        if (v11)
        {
          v17 = v11;
          v15 = [v10 airplaySourceUWBConfigData];
          v13 = [v10 advertiseRate];
          v14 = [v10 airplaySourceAuthTagData];

          v16 = objc_alloc_init(NSMutableData);
          if ([v14 length] == 3)
          {
            v18 = v17 | 0x10;
          }

          else
          {
            v18 = v17 & 0xEF;
          }

          v21 = v18;
          [v16 appendBytes:&v21 length:1];
          if ((v18 & 8) != 0 && [v15 length] == 1)
          {
            [v16 appendData:v15];
          }

          if ([v14 length] == 3)
          {
            [v16 appendData:v14];
          }

          v12 = 1;
          goto LABEL_19;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
LABEL_19:
  if ([(CBAdvertiserDaemon *)self _wiProxUpdateLinger:a3 active:v12])
  {
    v20 = 0x80;
    v19 = [[NSData alloc] initWithBytes:&v20 length:1];

    v16 = v19;
  }

  [(CBAdvertiserDaemon *)self _wiProxUpdatePayload:a3 payloadData:v16 advertiseRate:v13 advertiseEnableEPA:0];
}

- (void)_updateAirPlayTargetPayload:(id *)a3
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_advertiserArray;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 airplayTargetFlags];
        if (v11)
        {
          v15 = v11;
          v16 = [v10 airplayTargetConfigSeed];
          v17 = [v10 airplayTargetIPv4];
          v18 = [v10 airplayTargetPort];
          v13 = [v10 advertiseRate];

          v25 = v15;
          BYTE1(v25) = v16;
          BYTE2(v25) = HIBYTE(v17);
          BYTE3(v25) = BYTE2(v17);
          BYTE4(v25) = BYTE1(v17);
          BYTE5(v25) = v17;
          if ((v15 & 0x10) != 0)
          {
            HIWORD(v25) = __rev16(v18);
            v19 = 8;
          }

          else
          {
            v19 = 6;
          }

          v14 = [[NSData alloc] initWithBytes:&v25 length:v19];
          v12 = 1;
          goto LABEL_14;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
LABEL_14:
  if ([(CBAdvertiserDaemon *)self _wiProxUpdateLinger:a3 active:v12, v21])
  {
    LOBYTE(v25) = 0x80;
    v20 = [[NSData alloc] initWithBytes:&v25 length:1];

    v14 = v20;
  }

  [(CBAdvertiserDaemon *)self _wiProxUpdatePayload:a3 payloadData:v14 advertiseRate:v13 advertiseEnableEPA:0];
}

- (void)_updateDSInfoPayload:(id *)a3
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_advertiserArray;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 dsInfoVehicleConfidence];
        v11 = [v9 dsInfoVehicleState];
        if (v10 | v11)
        {
          v12 = v11;
          v6 = [v9 advertiseRate];
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
  v12 = 0;
LABEL_11:

  if (v10 | v12)
  {
    v14 = v12 & 3 | (4 * (v10 & 0xF));
    v13 = [[NSData alloc] initWithBytes:&v14 length:1];
  }

  else
  {
    v13 = 0;
  }

  [(CBAdvertiserDaemon *)self _wiProxUpdatePayload:a3 payloadData:v13 advertiseRate:v6 advertiseEnableEPA:0];
}

- (void)_updateFIDOAdvertising
{
  if (self->_fidoChanged)
  {
    v3 = self->_fidoPayloadData;
    if (v3)
    {
      v4 = self->_fidoStackAdvertiser;
      if (v4)
      {
        v5 = v4;
        if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
        {
          sub_100808680();
        }
      }

      else
      {
        if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
        {
          sub_1008087A0();
        }

        [(CBStackAdaptor *)self->_stackAdaptor bleAdvertiserClass];
        v7 = objc_alloc_init(objc_opt_class());
        if (!v7)
        {
          sub_1008088C0();
          goto LABEL_19;
        }

        v5 = v7;
        objc_storeStrong(&self->_fidoStackAdvertiser, v7);
        [(CBStackBLEAdvertiser *)v5 setDispatchQueue:self->_dispatchQueue];
      }

      [(CBStackBLEAdvertiser *)v5 setAdvertiseRate:self->_fidoAdvertiseRate];
      v8 = objc_alloc_init(CBBLEServiceDataInfo);
      [v8 setServiceUUID16:65529];
      [v8 setServiceData:v3];
      v10 = v8;
      v9 = [NSArray arrayWithObjects:&v10 count:1];
      [(CBStackBLEAdvertiser *)v5 setServiceDataArray:v9];

      [(CBStackBLEAdvertiser *)v5 activate];
    }

    else
    {
      if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
      {
        sub_100808920();
      }

      [(CBStackBLEAdvertiser *)self->_fidoStackAdvertiser invalidate];
      fidoStackAdvertiser = self->_fidoStackAdvertiser;
      self->_fidoStackAdvertiser = 0;
    }

    self->_fidoChanged = 0;
LABEL_19:
  }
}

- (void)_updateFIDOPayload
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_advertiserArray;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 fidoPayloadData];
        if (v8)
        {
          v9 = v8;
          LODWORD(v4) = [v7 advertiseRate];
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  fidoPayloadData = self->_fidoPayloadData;
  v11 = v9;
  v12 = fidoPayloadData;
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    if ((v11 != 0) == (v12 == 0))
    {

      goto LABEL_22;
    }

    v14 = [(NSData *)v11 isEqual:v12];

    if (!v14)
    {
LABEL_22:
      if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
      {
        sub_10080893C();
      }

      self->_fidoAdvertiseRate = v4;
      objc_storeStrong(&self->_fidoPayloadData, v9);
      self->_fidoChanged = 1;
      goto LABEL_26;
    }
  }

  if (v4 != self->_fidoAdvertiseRate)
  {
    goto LABEL_22;
  }

  if (dword_100B50E30 <= 10 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
  {
    sub_100808B68();
  }

LABEL_26:
}

- (void)_updateHeySiriPayload:(id *)a3
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_advertiserArray;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 heySiriDeviceClass];
        if (v11)
        {
          v14 = v11;
          v12 = [v10 advertiseRate];
          v15 = [v10 heySiriConfidence];
          v16 = [v10 heySiriPerceptualHash];
          v17 = [v10 heySiriProductType];
          v18 = [v10 heySiriRandom];
          v19 = [v10 heySiriSNR];

          v24[0] = HIBYTE(v16);
          v24[1] = v16;
          v24[2] = v19;
          v24[3] = v15;
          v24[4] = HIBYTE(v14);
          v24[5] = v14;
          v24[6] = v18;
          v24[7] = v17;
          v13 = [[NSData alloc] initWithBytes:v24 length:8];
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
  v13 = 0;
LABEL_11:
  [(CBAdvertiserDaemon *)self _wiProxUpdatePayload:a3 payloadData:v13 advertiseRate:v12 advertiseEnableEPA:0, v20];
}

- (void)_updateNearbyActionV1Payload:(id *)a3
{
  v44 = 0;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = self->_advertiserArray;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (!v6)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v32 = 0;
    v17 = 0;
    goto LABEL_31;
  }

  v7 = v6;
  v31 = a3;
  v8 = *v41;
  while (2)
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v41 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v40 + 1) + 8 * i);
      v11 = [v10 nearbyActionType];
      if (v11)
      {
        v18 = v11;
        v19 = [v10 nearbyActionFlags];
        v20 = v19;
        v21 = (v19 >> 8) & 0xF;
        v44 = v21;
        v13 = [v10 advertiseRate];
        v22 = [v10 nearbyActionAuthTagData];
        if ([v22 length] == 3)
        {
          v23 = v22;
        }

        else
        {
          v23 = [(CBAdvertiserDaemon *)self selfAuthTag];
        }

        v14 = v23;
        v29 = [v10 nearbyActionTargetData];
        v16 = v10;
        v32 = [v16 watchSetupData];

        v17 = objc_alloc_init(NSMutableData);
        v39 = v20;
        [v17 appendBytes:&v39 length:1];
        v38 = v18;
        [v17 appendBytes:&v38 length:1];
        if (([v16 nearbyActionFlags] & 0x80) != 0 && v14)
        {
          [v17 appendData:v14];
        }

        v24 = v18 - 37;
        if (v24 <= 0x3A)
        {
          if (((1 << (v18 - 37)) & 0x481000000000581) != 0)
          {
LABEL_19:
            v25 = MGGetSInt32Answer();
            v26 = 16 * v25;
            if (v25 > 0xF)
            {
              v26 = 0;
            }

            v37 = v26;
            v27 = &v37;
            goto LABEL_22;
          }

          if (v24 == 17)
          {
            v36 = [v16 dsActionFlags];
            [v17 appendBytes:&v36 length:1];
            v35 = [v16 dsActionMeasuredPower];
            [v17 appendBytes:&v35 length:1];
            v34 = [v16 dsActionTieBreaker];
            v27 = &v34;
LABEL_22:
            [v17 appendBytes:v27 length:{1, v29}];
LABEL_23:
            v5 = [v16 nearbyActionExtraData];
            if (v5)
            {
              [v17 appendData:v5];
            }

            v12 = 1;
            if (v21 && ([v17 appendBytes:&v44 length:1], v18 == 56))
            {
              v15 = v30;
              a3 = v31;
              if ((v20 & 0x200) != 0 && v30)
              {
                [v17 appendData:v30];
                v12 = 1;
              }
            }

            else
            {
              v15 = v30;
              a3 = v31;
            }

            goto LABEL_31;
          }
        }

        if (v18 != 2)
        {
          if (v18 == 5 && v32)
          {
            [v17 appendData:v32];
          }

          goto LABEL_23;
        }

        goto LABEL_19;
      }
    }

    v7 = [(NSArray *)v5 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v32 = 0;
  v17 = 0;
  a3 = v31;
LABEL_31:

  if ([(CBAdvertiserDaemon *)self _wiProxUpdateLinger:a3 active:v12])
  {
    v33 = 13312;
    v28 = [[NSData alloc] initWithBytes:&v33 length:2];

    v13 = 50;
    v17 = v28;
  }

  [(CBAdvertiserDaemon *)self _wiProxUpdatePayload:a3 payloadData:v17 advertiseRate:v13 advertiseEnableEPA:0];
}

- (void)_updateNearbyActionV2Payload:(id *)a3
{
  v31 = a3;
  v42 = 0;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v4 = self->_advertiserArray;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v39;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = [*(*(&v38 + 1) + 8 * i) nearbyActionV2Type];
        v12 = v11;
        v42 = v11;
        if (v11)
        {
          if (v11 == 41)
          {
            v7 = 1;
          }

          else
          {
            v8 = 1;
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v6);
  }

  else
  {
    v12 = 0;
    v7 = 0;
    v8 = 0;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = self->_advertiserArray;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
    v17 = v7 & v8;
    do
    {
      v18 = 0;
      do
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v34 + 1) + 8 * v18);
        v20 = [v19 nearbyActionV2Type];
        v12 = v20;
        v42 = v20;
        if (v20)
        {
          if ((v17 & (v20 == 41)) != 1)
          {
            v27 = [v19 nearbyActionV2Flags];
            v23 = [v19 advertiseRate];
            v24 = [v19 nearbyActionV2TargetData];
            v22 = v27 & 0xFE;

            v26 = 1;
            goto LABEL_31;
          }

          if (dword_100B50E30 <= 90 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
          {
            sub_100808BC4();
          }
        }

        v18 = v18 + 1;
      }

      while (v15 != v18);
      v21 = [(NSArray *)v13 countByEnumeratingWithState:&v34 objects:v43 count:16];
      v15 = v21;
    }

    while (v21);
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = v12 != 0;
  if (v12)
  {
LABEL_31:
    v25 = objc_alloc_init(NSMutableData);
    if ([v24 length] == 3)
    {
      v28 = v22 + 1;
    }

    else
    {
      v28 = v22;
    }

    v33 = v28;
    [v25 appendBytes:&v33 length:{1, v31}];
    [v25 appendBytes:&v42 length:1];
    if ([v24 length] == 3)
    {
      [v25 appendData:v24];
    }
  }

  v29 = v31;
  if ([(CBAdvertiserDaemon *)self _wiProxUpdateLinger:v31 active:v26, v31])
  {
    v32 = 13312;
    v30 = [[NSData alloc] initWithBytes:&v32 length:2];

    v23 = 50;
    v25 = v30;
  }

  [(CBAdvertiserDaemon *)self _wiProxUpdatePayload:v29 payloadData:v25 advertiseRate:v23 advertiseEnableEPA:0];
}

- (void)_updateNearbyInfoPayload:(id *)a3
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_advertiserArray;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  v7 = 0.0;
  if (v6)
  {
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 nearbyInfoFlags];
        v12 = [v10 nearbyInfoStatusType];
        if (v11 | v12)
        {
          v14 = v12;
          v6 = [v10 advertiseRate];
          [v10 nearbyInfoStatusProgress];
          v7 = v15;
          v13 = [v10 nearbyInfoStatusTime];
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
  v14 = 0;
  v11 = 0;
LABEL_11:

  if (v11 | v14)
  {
    v16 = objc_alloc_init(NSMutableData);
    LOBYTE(v19) = __rbit32(v11 & 7) >> 25;
    [v16 appendBytes:&v19 length:1];
    LOBYTE(v19) = (4 * v11) & 0x40 | ((v11 >> 3) << 7) | v11 & 0x20 | (v11 >> 4) & 8 | (v11 >> 6) & 4;
    if (v14)
    {
      LOBYTE(v19) = (4 * v11) & 0x40 | ((v11 >> 3) << 7) | v11 & 0x20 | (v11 >> 4) & 8 | (v11 >> 6) & 4 | 1;
      [v16 appendBytes:&v19 length:1];
      LOBYTE(v19) = 4;
      [v16 appendBytes:&v19 length:1];
      LOBYTE(v19) = v14;
      [v16 appendBytes:&v19 length:1];
      v17 = 1.0;
      if (v7 <= 1.0)
      {
        v17 = v7;
      }

      if (v17 < 0.0)
      {
        v17 = 0.0;
      }

      LOBYTE(v19) = (v17 * 100.0);
      [v16 appendBytes:&v19 length:1];
      LOBYTE(v19) = v13;
    }

    [v16 appendBytes:&v19 length:1];
  }

  else
  {
    v16 = 0;
  }

  if ([(CBAdvertiserDaemon *)self _wiProxUpdateLinger:a3 active:(v11 | v14) != 0])
  {
    v19 = 0;
    v18 = [[NSData alloc] initWithBytes:&v19 length:2];

    v16 = v18;
  }

  [(CBAdvertiserDaemon *)self _wiProxUpdatePayload:a3 payloadData:v16 advertiseRate:v6 advertiseEnableEPA:0];
}

- (void)_updateAirDropPayload:(id *)a3
{
  v4 = self;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = self->_advertiserArray;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        v11 = [v10 airdropVersion];
        if (v11)
        {
          v15 = v11;
          v31 = v4;
          v32 = a3;
          v16 = [v10 airdropFlags];
          v12 = [v10 airdropTempAuthTagData];
          v17 = [v10 airdropModel];
          v18 = [v10 airdropHash1];
          v19 = [v10 airdropHash2];
          v20 = [v10 airdropHash3];
          v21 = [v10 airdropHash4];
          v30 = [v10 advertiseRate];
          v22 = [v10 airdropConfigData];

          memset(&v37[1], 0, 7);
          v23 = [v12 length];
          v24 = v16 | 0x40;
          if (v23 != 3)
          {
            v24 = v16 & 0xBF;
          }

          v25 = v24 | 0x80;
          v26 = v24 & 0x7F;
          if (v17)
          {
            v26 = v25;
          }

          v37[0] = v26;
          if ([v12 length] == 3)
          {
            v27 = [v12 bytes];
            v28 = v27[2];
            *&v37[1] = *v27;
            v37[3] = v28;
          }

          v37[4] = v17;
          v37[8] = v15;
          v37[9] = HIBYTE(v18);
          v37[10] = v18;
          v37[11] = HIBYTE(v19);
          v37[12] = v19;
          v37[13] = HIBYTE(v20);
          v37[14] = v20;
          v37[15] = HIBYTE(v21);
          v37[16] = v21;
          v29 = v22 | 1;
          if (!v22)
          {
            v29 = 0;
          }

          v37[17] = v29;
          v14 = [[NSData alloc] initWithBytes:v37 length:18];
          v4 = v31;
          a3 = v32;
          v13 = v30;
          goto LABEL_19;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
LABEL_19:
  [(CBAdvertiserDaemon *)v4 _wiProxUpdatePayload:a3 payloadData:v14 advertiseRate:v13 advertiseEnableEPA:0];
}

- (void)_updateProximityServiceAdvertising
{
  if (self->_proximityServiceChanged)
  {
    v17 = v7;
    v18 = v6;
    v19 = v5;
    v20 = v4;
    v21 = v3;
    v22 = v2;
    proximityServiceSubType = self->_proximityServiceSubType;
    proximityServiceUseCase = self->_proximityServiceUseCase;
    if (self->_proximityServiceSubType)
    {
      v13 = proximityServiceUseCase == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
      {
        sub_100808BF8();
      }

      [(CBStackBLEAdvertiser *)self->_proximityServiceStackAdvertiser invalidate:v7];
      proximityServiceStackAdvertiser = self->_proximityServiceStackAdvertiser;
      self->_proximityServiceStackAdvertiser = 0;
    }

    else
    {
      v15 = self->_proximityServiceStackAdvertiser;
      if (v15)
      {
        proximityServiceStackAdvertiser = v15;
        if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
        {
          sub_100808C14(self, proximityServiceUseCase);
        }
      }

      else
      {
        if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
        {
          sub_100808D5C(self, proximityServiceUseCase);
        }

        [(CBStackAdaptor *)self->_stackAdaptor bleAdvertiserClass:v7];
        v16 = objc_alloc_init(objc_opt_class());
        if (!v16)
        {
          sub_100808EA4();
          return;
        }

        proximityServiceStackAdvertiser = v16;
        objc_storeStrong(&self->_proximityServiceStackAdvertiser, v16);
        [(CBStackBLEAdvertiser *)proximityServiceStackAdvertiser setDispatchQueue:self->_dispatchQueue];
      }

      [(CBStackBLEAdvertiser *)proximityServiceStackAdvertiser setAdvertiseRate:self->_proximityServiceAdvertiseRate, v17, v18, v19, v20, v21, v22];
      [(CBStackBLEAdvertiser *)proximityServiceStackAdvertiser setProximityServicePayload:self->_proximityServicePayload];
      [(CBStackBLEAdvertiser *)proximityServiceStackAdvertiser setProximityServiceSubType:proximityServiceSubType];
      [(CBStackBLEAdvertiser *)proximityServiceStackAdvertiser setProximityServiceUseCase:proximityServiceUseCase];
      [(CBStackBLEAdvertiser *)proximityServiceStackAdvertiser activate];
    }

    self->_proximityServiceChanged = 0;
  }
}

- (void)_updateProximityServicePayload
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = self->_advertiserArray;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 proximityServiceSubType];
        if (v9)
        {
          v10 = [v8 proximityServicePayload];

          if (v10)
          {
            v11 = [v8 useCase];
            if (v11)
            {
              v12 = v11;
              LODWORD(v4) = [v8 advertiseRate];
              goto LABEL_16;
            }

            v5 = v10;
          }

          else
          {
            v5 = 0;
          }
        }
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }

    v12 = 0;
    v10 = v5;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v12 = 0;
  }

LABEL_16:

  if (v9 != self->_proximityServiceSubType)
  {
    goto LABEL_29;
  }

  proximityServicePayload = self->_proximityServicePayload;
  v14 = v10;
  v15 = proximityServicePayload;
  v16 = v15;
  if (v14 == v15)
  {
  }

  else
  {
    if ((v14 != 0) == (v15 == 0))
    {

      goto LABEL_29;
    }

    v17 = [(NSData *)v14 isEqual:v15];

    if (!v17)
    {
LABEL_29:
      if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
      {
        sub_100808F04(v12);
      }

      self->_proximityServiceAdvertiseRate = v4;
      objc_storeStrong(&self->_proximityServicePayload, v10);
      self->_proximityServiceSubType = v9;
      self->_proximityServiceUseCase = v12;
      self->_proximityServiceChanged = 1;
      goto LABEL_33;
    }
  }

  if (v12 != self->_proximityServiceUseCase || v4 != self->_proximityServiceAdvertiseRate)
  {
    goto LABEL_29;
  }

  if (dword_100B50E30 <= 10 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
  {
    sub_100809050(v12, v14, v4);
  }

LABEL_33:
}

- (void)_updateSafetyAlertsAdvertising
{
  if (self->_saChanged)
  {
    v3 = self->_saAdvAddresses;
    v4 = self->_saPayloadSegments;
    if ([(NSArray *)v3 count]== 3 && [(NSArray *)v4 count]== 3)
    {
      v5 = self->_saStackAdvertiser;
      if (v5)
      {
        v6 = v5;
        if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
        {
          sub_1008090F4();
        }
      }

      else
      {
        if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
        {
          sub_100809234(v3, v4, self);
        }

        [(CBStackAdaptor *)self->_stackAdaptor bleAdvertiserClass];
        v8 = objc_alloc_init(objc_opt_class());
        if (!v8)
        {
          sub_1008092C8();
          goto LABEL_27;
        }

        v6 = v8;
        objc_storeStrong(&self->_saStackAdvertiser, v8);
        [(CBStackBLEAdvertiser *)v6 setDispatchQueue:self->_dispatchQueue];
      }

      [(CBStackBLEAdvertiser *)v6 setAdvertiseRate:self->_saAdvertiseRate];
      v17 = v3;
      [(CBStackBLEAdvertiser *)v6 setSaAddressDataArray:v3];
      v9 = objc_alloc_init(NSMutableArray);
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = v4;
      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v18 + 1) + 8 * i);
            v16 = objc_alloc_init(CBBLEServiceDataInfo);
            [v16 setServiceUUID16:64672];
            [v16 setServiceData:v15];
            [v9 addObject:v16];
          }

          v12 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);
      }

      [(CBStackBLEAdvertiser *)v6 setSaServiceDataArray:v9];
      [(CBStackBLEAdvertiser *)v6 activate];

      v3 = v17;
    }

    else
    {
      if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
      {
        sub_1008090D8();
      }

      [(CBStackBLEAdvertiser *)self->_saStackAdvertiser invalidate];
      saStackAdvertiser = self->_saStackAdvertiser;
      self->_saStackAdvertiser = 0;
    }

    self->_saChanged = 0;
LABEL_27:
  }
}

- (void)_updateSafetyAlertsPayload
{
  v25 = 0;
  advertiserArray = self->_advertiserArray;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  [CBAdvertiserDaemon buildSafetyAlertsAdvertisingData:advertiserArray advertisingAddresses:&v24 advertisingData:&v23 advertiseRate:&v25 error:&v22];
  v4 = v24;
  v5 = v24;
  v6 = v23;
  v21 = v23;
  v7 = v22;
  if (v7)
  {
    sub_100809328();
    goto LABEL_24;
  }

  saAdvAddresses = self->_saAdvAddresses;
  v9 = v5;
  v10 = saAdvAddresses;
  v11 = v10;
  if (v9 == v10)
  {
  }

  else
  {
    if ((v9 != 0) == (v10 == 0))
    {
      v14 = v9;
      goto LABEL_12;
    }

    v12 = [(NSArray *)v9 isEqual:v10];

    if (!v12)
    {
      goto LABEL_19;
    }
  }

  saPayloadSegments = self->_saPayloadSegments;
  v14 = v21;
  v15 = saPayloadSegments;
  v11 = v15;
  if (v14 == v15)
  {

    goto LABEL_14;
  }

  if ((v14 != 0) == (v15 == 0))
  {
LABEL_12:

    goto LABEL_19;
  }

  v16 = [(NSArray *)v14 isEqual:v15];

  if (!v16)
  {
LABEL_19:
    if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
    {
      v17 = CUPrintNSObjectOneLine();
      v18 = CUPrintNSObjectOneLine();
      v19 = CUPrintNSObjectOneLine();
      v20 = CUPrintNSObjectOneLine();
      LogPrintF_safe();
    }

    self->_saAdvertiseRate = v25;
    objc_storeStrong(&self->_saAdvAddresses, v4);
    objc_storeStrong(&self->_saPayloadSegments, v6);
    self->_saChanged = 1;
    goto LABEL_24;
  }

LABEL_14:
  if (v25 != self->_saAdvertiseRate)
  {
    goto LABEL_19;
  }

  if (dword_100B50E30 <= 10 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
  {
    sub_1008093A8();
  }

LABEL_24:
}

+ (void)buildSafetyAlertsAdvertisingData:(id)a3 advertisingAddresses:(id *)a4 advertisingData:(id *)a5 advertiseRate:(int *)a6 error:(id *)a7
{
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v9 = a3;
  v10 = [v9 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (!v10)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_34;
  }

  v11 = v10;
  v42 = a7;
  v44 = a6;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = *v51;
  obj = v9;
  while (2)
  {
    v16 = 0;
    v17 = v12;
    v18 = v13;
    do
    {
      if (*v51 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v50 + 1) + 8 * v16);
      v20 = [v19 safetyAlertsAlertData];

      v13 = [v19 safetyAlertsAlertID];

      v12 = [v19 safetyAlertsSignature];

      v21 = [v19 safetyAlertsVersion];
      if (v20)
      {
        v22 = v13 == 0;
      }

      else
      {
        v22 = 1;
      }

      if (!v22 && v12 != 0 && v21 != 0)
      {
        v25 = v21;
        *v44 = [v19 advertiseRate];
        v9 = obj;

        v40 = v20;
        if ([v20 length] >= 0x1D)
        {
          v39 = v42;
          if (!v42)
          {
            goto LABEL_35;
          }
        }

        else if ([v13 length] == 3)
        {
          if ([v12 length] == 56)
          {
            if (v25 - 32 > 0xFFFFFFE0)
            {
              *a4 = objc_alloc_init(NSMutableArray);
              *a5 = objc_alloc_init(NSMutableArray);
              v26 = [v20 bytes];
              v45 = [v20 length] + v26;
              v27 = [v12 bytes];
              v43 = [v12 length] + v27;
              v28 = 1;
              do
              {
                v29 = [NSMutableData dataWithBytes:v27 length:6];
                v30 = v27 + 6;
                v31 = [v29 mutableBytes];
                v32 = *v31 & 0xC0;
                *v31 |= 0xC0u;
                [*a4 addObject:v29];
                v33 = objc_alloc_init(NSMutableData);
                v49 = v32 | v25;
                [v33 appendBytes:&v49 length:1];
                v48 = (16 * v28) | 3;
                [v33 appendBytes:&v48 length:1];
                [v33 appendBytes:objc_msgSend(v13 length:{"bytes"), 3}];
                if ((v43 - v30) >= 0xDu)
                {
                  v34 = 13;
                }

                else
                {
                  v34 = (v43 - v30);
                }

                [v33 appendBytes:v30 length:v34];
                v35 = [v33 length];
                LOBYTE(v36) = v45 - v26;
                if (27 - v35 < (v45 - v26))
                {
                  v36 = 27 - [v33 length];
                }

                v37 = v36;
                v27 = &v30[v34];
                [v33 appendBytes:v26 length:v36];
                v26 += v37;
                [*a5 addObject:v33];
              }

              while (v28++ < 3);
              v9 = obj;
              goto LABEL_35;
            }

            v39 = v42;
            if (!v42)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v39 = v42;
            if (!v42)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          v39 = v42;
          if (!v42)
          {
            goto LABEL_35;
          }
        }

        *v39 = CBErrorF();
        goto LABEL_35;
      }

      v16 = v16 + 1;
      v17 = v12;
      v18 = v13;
      v14 = v20;
    }

    while (v11 != v16);
    v9 = obj;
    v11 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    v14 = v20;
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_34:
  v40 = v14;

LABEL_35:
}

- (void)_updateSpatialInteractionAdvertising:(id *)a3
{
  if (self->_spatialInteractionChanged)
  {
    v6 = [qword_100BC7DB0 advertisingManager];
    v22 = v6;
    if (v6)
    {
      if ([v6 state] == 3)
      {
        v7 = self->_spatialInteractionWiProxUUID;
        if (!v7)
        {
          v7 = +[NSUUID UUID];
          objc_storeStrong(&self->_spatialInteractionWiProxUUID, v7);
        }

        v8 = self->_spatialInteractionPayloadData;
        p_spatialInteractionAdvertisingRequest = &self->_spatialInteractionAdvertisingRequest;
        v10 = self->_spatialInteractionAdvertisingRequest;
        if (v10)
        {
          if (dword_100B50E30 < 31 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
          {
            sub_100809458();
          }

          [v22 removeAdvertisingRequest:v10 forDaemon:v7];
          v11 = *p_spatialInteractionAdvertisingRequest;
          *p_spatialInteractionAdvertisingRequest = 0;
        }

        if (v8)
        {
          v12 = [WPAdvertisingRequest requestForClientType:19];
          objc_storeStrong(&self->_spatialInteractionAdvertisingRequest, v12);
          [v12 setAdvertisingData:v8];
          spatialInteractionAdvertiseRate = self->_spatialInteractionAdvertiseRate;
          v14 = 290;
          v15 = 48;
          v16 = 32;
          if (spatialInteractionAdvertiseRate != 60)
          {
            v16 = 290;
          }

          if (spatialInteractionAdvertiseRate != 50)
          {
            v15 = v16;
          }

          v17 = 192;
          v18 = 96;
          if (spatialInteractionAdvertiseRate != 45)
          {
            v18 = 290;
          }

          if (spatialInteractionAdvertiseRate != 42)
          {
            v17 = v18;
          }

          if (spatialInteractionAdvertiseRate <= 49)
          {
            v15 = v17;
          }

          v19 = 996;
          v20 = 432;
          if (spatialInteractionAdvertiseRate != 30)
          {
            v20 = 290;
          }

          if (spatialInteractionAdvertiseRate != 20)
          {
            v19 = v20;
          }

          if (spatialInteractionAdvertiseRate == 15)
          {
            v14 = 1636;
          }

          if (spatialInteractionAdvertiseRate == 10)
          {
            v14 = 3200;
          }

          if (spatialInteractionAdvertiseRate > 19)
          {
            v14 = v19;
          }

          if (spatialInteractionAdvertiseRate <= 41)
          {
            v21 = v14;
          }

          else
          {
            v21 = v15;
          }

          [v12 setAdvertisingRate:v21];
          [v12 setConnectable:0];
          [v12 setIsRanging:1];
          [v12 setStopOnAdvertisingAddressChange:1];
          [v12 setEnableEPAForAdvertising:a3->var4];
          if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
          {
            sub_100809498(v12);
          }

          [v22 addAdvertisingRequest:v12 forDaemon:v7];
        }

        self->_spatialInteractionChanged = 0;
      }

      else
      {
        sub_1008093DC();
      }
    }

    else
    {
      sub_1008094F8();
    }
  }
}

- (void)_updateSpatialInteractionPayload:(id *)a3
{
  advertiserEnableEPA = self->_advertiserEnableEPA;
  v6 = self->_spatialInteractionIdentifiers;
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableData);
    [v7 appendBytes:&self->_spatialInteractionFlags length:1];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = self->_spatialInteractionIdentifiers;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 appendData:*(*(&v23 + 1) + 8 * i)];
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    v13 = self->_spatialInteractionUWBConfigData;
    if (v13)
    {
      [v7 appendData:v13];
      if ([(NSData *)v13 length]- 1 > 4)
      {
        if ((self->_spatialInteractionFlags & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        v22 = 0;
        v14 = 5;
        do
        {
LABEL_23:
          [v7 appendBytes:&v22 length:1];
          --v14;
        }

        while (v14);
LABEL_24:
        [v7 appendBytes:&self->_spatialInteractionConfigFlags length:1];
LABEL_25:
        v16 = self->_spatialInteractionPresenceConfigData;
        if (v16)
        {
          [v7 appendData:v16];
        }

        spatialInteractionPayloadData = self->_spatialInteractionPayloadData;
        v18 = v7;
        v19 = spatialInteractionPayloadData;
        v20 = v19;
        if (v18 == v19)
        {
        }

        else
        {
          if ((v18 != 0) == (v19 == 0))
          {

            goto LABEL_37;
          }

          v21 = [(NSData *)v18 isEqual:v19];

          if (!v21)
          {
LABEL_37:
            if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe();
            }

            objc_storeStrong(&self->_spatialInteractionPayloadData, v7);
            self->_spatialInteractionChanged = 1;
            [(CBAdvertiserDaemon *)self _wiProxUpdatePayload:a3 payloadData:v18 advertiseRate:0 advertiseEnableEPA:advertiserEnableEPA];
LABEL_42:

            goto LABEL_43;
          }
        }

        if (dword_100B50E30 <= 10 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
        {
          sub_100809558();
        }

        goto LABEL_42;
      }

      v14 = (5 - [(NSData *)v13 length]);
    }

    else
    {
      v14 = 0;
    }

    if ((self->_spatialInteractionFlags & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    v22 = 0;
    if (!v14)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (self->_spatialInteractionPayloadData)
  {
    if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
    {
      sub_100809598();
    }

    v15 = self->_spatialInteractionPayloadData;
    self->_spatialInteractionPayloadData = 0;

    self->_spatialInteractionChanged = 1;
  }

LABEL_43:
}

- (void)_updateNearbyActionNoWakePayload:(id *)a3
{
  v24 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_advertiserArray;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 nearbyActionNoWakeType];
        LOBYTE(v24) = v11;
        if (v11)
        {
          v17 = [v10 nearbyActionNWPrecisionFindingStatus];
          v12 = [v10 nearbyActionNoWakeAuthTagData];
          v15 = [v10 nearbyActionNoWakeConfigData];
          v14 = [v10 advertiseRate];
          v13 = [v10 enableEPAForLEAdvertisement];
          v18 = v17 & 0xFE;

          v16 = objc_alloc_init(NSMutableData);
          if ([v15 length] == 1)
          {
            v19 = v18 + 1;
          }

          else
          {
            v19 = v18;
          }

          HIBYTE(v24) = v19;
          [v16 appendBytes:&v24 length:1];
          [v16 appendBytes:&v24 + 1 length:1];
          if ([v12 length] == 3)
          {
            [v16 appendData:v12];
          }

          if ([v15 length] == 1)
          {
            [v16 appendData:v15];
          }

          goto LABEL_17;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
LABEL_17:
  [(CBAdvertiserDaemon *)self _wiProxUpdatePayload:a3 payloadData:v16 advertiseRate:v14 advertiseEnableEPA:v13, v20];
}

- (void)_updateSoftwareUpdatePayload
{
  if (_os_feature_enabled_impl())
  {
    v36 = 0;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v3 = self->_advertiserArray;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v33;
      while (2)
      {
        v8 = 0;
        v9 = v6;
        do
        {
          if (*v33 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v10 = *(*(&v32 + 1) + 8 * v8);
          v36 = [v10 softwareUpdateActionType];
          v6 = [v10 softwareUpdateDataArray];

          if (v36 && [v6 count])
          {
            v11 = [v10 advertiseRate];
            goto LABEL_15;
          }

          v8 = v8 + 1;
          v9 = v6;
        }

        while (v5 != v8);
        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v32 objects:v38 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v6 = 0;
    }

    v11 = 40;
LABEL_15:

    v12 = objc_alloc_init(NSMutableData);
    v13 = +[NSMutableArray array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = v6;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          [v12 setLength:0];
          [v12 appendBytes:&v36 length:1];
          [v12 appendData:v19];
          v20 = [v12 copy];
          [v13 addObject:v20];
        }

        v16 = [v14 countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v16);
    }

    swupPayloadDataArray = self->_swupPayloadDataArray;
    v22 = v13;
    v23 = swupPayloadDataArray;
    v24 = v23;
    if (v22 == v23)
    {
    }

    else
    {
      if ((v22 != 0) == (v23 == 0))
      {

        goto LABEL_33;
      }

      v25 = [(NSArray *)v22 isEqual:v23];

      if (!v25)
      {
LABEL_33:
        if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
        {
          v26 = CUPrintNSObjectOneLine();
          v27 = CUPrintNSObjectOneLine();
          LogPrintF_safe();
        }

        self->_swupActionType = v36;
        objc_storeStrong(&self->_swupPayloadDataArray, v13);
        self->_swupAdvertiseRate = v11;
        self->_swupChanged = 1;
LABEL_38:

        return;
      }
    }

    if (v11 == self->_swupAdvertiseRate)
    {
      if (dword_100B50E30 <= 10 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
      {
        sub_1008095B4();
      }

      goto LABEL_38;
    }

    goto LABEL_33;
  }
}

- (void)_updateSoftwareUpdateAdvertising
{
  if (!_os_feature_enabled_impl() || !self->_swupChanged)
  {
    return;
  }

  v7 = self->_swupPayloadDataArray;
  if (![(NSArray *)v7 count]|| !self->_swupActionType)
  {
    if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10080979C();
    }

    [(CBStackBLEAdvertiser *)self->_swupStackAdvertiser invalidate];
    swupStackAdvertiser = self->_swupStackAdvertiser;
    self->_swupStackAdvertiser = 0;

    goto LABEL_21;
  }

  v3 = self->_swupStackAdvertiser;
  if (v3)
  {
    v4 = v3;
    if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
    {
      sub_1008095F4(&self->_swupActionType, v7, self);
    }
  }

  else
  {
    if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
    {
      sub_100809698(&self->_swupActionType, v7, self);
    }

    [(CBStackAdaptor *)self->_stackAdaptor bleAdvertiserClass];
    v6 = objc_alloc_init(objc_opt_class());
    if (!v6)
    {
      sub_10080973C();
      goto LABEL_21;
    }

    v4 = v6;
    objc_storeStrong(&self->_swupStackAdvertiser, v6);
    [(CBStackBLEAdvertiser *)v4 setDispatchQueue:self->_dispatchQueue];
  }

  [(CBStackBLEAdvertiser *)v4 setAdvertiseRate:self->_swupAdvertiseRate];
  [(CBStackBLEAdvertiser *)v4 setSwupActionType:self->_swupActionType];
  [(CBStackBLEAdvertiser *)v4 setSwupPayloadDataArray:self->_swupPayloadDataArray];
  [(CBStackBLEAdvertiser *)v4 activate];

LABEL_21:
}

- (void)_updateWatchSetupAdvertising
{
  if (self->_watchSetupChanged)
  {
    v3 = self->_watchSetupPayloadData;
    if (v3)
    {
      v4 = self->_watchSetupStackAdvertiser;
      if (v4)
      {
        v5 = v4;
        if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
        {
          sub_1008097B8();
        }
      }

      else
      {
        if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
        {
          sub_1008098D8();
        }

        [(CBStackAdaptor *)self->_stackAdaptor bleAdvertiserClass];
        v7 = objc_alloc_init(objc_opt_class());
        if (!v7)
        {
          sub_1008099F8();
          goto LABEL_19;
        }

        v5 = v7;
        objc_storeStrong(&self->_watchSetupStackAdvertiser, v7);
        [(CBStackBLEAdvertiser *)v5 setDispatchQueue:self->_dispatchQueue];
      }

      [(CBStackBLEAdvertiser *)v5 setAdvertiseRate:self->_watchSetupAdvertiseRate];
      v8 = objc_alloc_init(NSMutableData);
      v11 = 6;
      [v8 appendBytes:&v11 length:1];
      [v8 appendData:v3];
      v9 = objc_alloc_init(CBBLEServiceDataInfo);
      [v9 setServiceUUID16:65061];
      [v9 setServiceData:v8];
      [v9 setConnectable:1];
      v12 = v9;
      v10 = [NSArray arrayWithObjects:&v12 count:1];
      [(CBStackBLEAdvertiser *)v5 setServiceDataArray:v10];

      [(CBStackBLEAdvertiser *)v5 activate];
    }

    else
    {
      if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
      {
        sub_100809A58();
      }

      [(CBStackBLEAdvertiser *)self->_watchSetupStackAdvertiser invalidate];
      watchSetupStackAdvertiser = self->_watchSetupStackAdvertiser;
      self->_watchSetupStackAdvertiser = 0;
    }

    self->_watchSetupChanged = 0;
LABEL_19:
  }
}

- (void)_updateWatchSetupPayload
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_advertiserArray;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        if ([v7 nearbyActionType] != 5)
        {
          v8 = [v7 watchSetupData];
          if (v8)
          {
            v9 = v8;
            LODWORD(v4) = [v7 advertiseRate];
            goto LABEL_12;
          }
        }
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_12:

  watchSetupPayloadData = self->_watchSetupPayloadData;
  v11 = v9;
  v12 = watchSetupPayloadData;
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    if ((v11 != 0) == (v12 == 0))
    {

      goto LABEL_23;
    }

    v14 = [(NSData *)v11 isEqual:v12];

    if (!v14)
    {
LABEL_23:
      if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
      {
        sub_100809A74();
      }

      self->_watchSetupAdvertiseRate = v4;
      objc_storeStrong(&self->_watchSetupPayloadData, v9);
      self->_watchSetupChanged = 1;
      goto LABEL_27;
    }
  }

  if (v4 != self->_watchSetupAdvertiseRate)
  {
    goto LABEL_23;
  }

  if (dword_100B50E30 <= 10 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
  {
    sub_100809CA0();
  }

LABEL_27:
}

- (id)_encryptNearbyInfoV2Payload:(const void *)a3 payloadLength:(unint64_t)a4 authTag:(id)a5 irkData:(id)a6 keyInfo:(const void *)a7 keyInfoLength:(unint64_t)a8
{
  v11 = a5;
  v12 = a6;
  v13 = 0;
  if (a3 && a4)
  {
    if ([v11 length])
    {
      if ([v12 length])
      {
        if (a4 >= 7)
        {
          v14 = 7;
        }

        else
        {
          v14 = a4;
        }

        v20 = 0u;
        v21 = 0u;
        [v12 bytes];
        [v12 length];
        [v11 bytes];
        [v11 length];
        CryptoHKDF();
        *(v19 + 3) = 0;
        v19[0] = 0;
        __memcpy_chk();
        ccaes_ecb_encrypt_mode();
        v15 = ccecb_context_size();
        bzero(v17 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), (v15 + 15) & 0xFFFFFFFFFFFFFFF0);
        if (ccecb_init())
        {
          if (dword_100B50E30 > 90 || dword_100B50E30 == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_30;
          }
        }

        else
        {
          v18 = 0;
          memset(v17, 0, sizeof(v17));
          if (cclr_aes_init())
          {
            if (dword_100B50E30 > 90 || dword_100B50E30 == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_30;
            }
          }

          else
          {
            if (!cclr_encrypt_block())
            {
              ccecb_context_size();
              cc_clear();
              v13 = [NSData dataWithBytes:v19 length:v14];
              goto LABEL_12;
            }

            if (dword_100B50E30 > 90 || dword_100B50E30 == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_30;
            }
          }
        }

        LogPrintF_safe();
LABEL_30:
        v13 = 0;
        goto LABEL_12;
      }

      if (dword_100B50E30 > 90 || dword_100B50E30 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_34;
      }
    }

    else if (dword_100B50E30 > 90 || dword_100B50E30 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_34;
    }

    LogPrintF_safe();
LABEL_34:
    v13 = 0;
  }

LABEL_12:

  return v13;
}

- (void)_updateNearbyInfoV2Payload:(id *)a3
{
  v37 = a3;
  v50 = 0;
  v49 = 0;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = self->_advertiserArray;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_100128294();
    v40 = *v46;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v46 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v45 + 1) + 8 * i);
        v9 |= [v12 nearbyInfoV2DecryptedFlags];
        HIBYTE(v50) = v9;
        if (([v12 nearbyInfoV2Flags] & 4) != 0)
        {
          v8 |= 4u;
          LOBYTE(v50) = v8;
        }

        else if (!(v8 | v9))
        {
          v8 = 0;
          continue;
        }

        if ([v12 advertiseRate] > v43)
        {
          v43 = [v12 advertiseRate];
        }

        v13 = [v12 nearbyInfoV2AuthTagData];
        v14 = [v13 length];

        if (!v4 && v14 == 3)
        {
          v4 = [v12 nearbyInfoV2AuthTagData];
        }

        v15 = [v12 nearbyInfoV2AuthIntegrityTagData];
        v16 = [v15 length];

        if (!v3 && v16 == 3)
        {
          v3 = [v12 nearbyInfoV2AuthIntegrityTagData];
        }

        if (!v42)
        {
          v17 = [v12 nearbyInfoV2RapportIRKData];
          v18 = [v17 length];

          if (v18)
          {
            v42 = [v12 nearbyInfoV2RapportIRKData];
          }

          else
          {
            v42 = 0;
          }
        }

        if (HIBYTE(v49))
        {
          if (!v7)
          {
            goto LABEL_26;
          }
        }

        else
        {
          HIBYTE(v49) = [v12 nearbyInfoV2InvitationCounter];
          if (!v7)
          {
LABEL_26:
            if ([v12 nearbyInfoV2InvitationRouteType])
            {
              v7 = [v12 nearbyInfoV2InvitationRouteType];
              LOBYTE(v49) = v7;
            }

            else
            {
              v7 = 0;
            }
          }
        }

        if (!v44 && v4 && v3)
        {
          v44 = [v12 nearbyInfoV2NearbyFaceTimeData];
        }

        if (!v41)
        {
          v19 = [v12 randomData];

          if (v19)
          {
            v41 = [v12 randomData];
          }

          else
          {
            v41 = 0;
          }
        }

        v10 = v7;
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (!v6)
      {
        v20 = v10 != 0;
        goto LABEL_42;
      }
    }
  }

  v20 = 0;
  v9 = 0;
  v8 = 0;
  sub_100128294();
LABEL_42:

  if (!(v8 | v9))
  {
    v22 = 0;
    v31 = 0;
    v25 = v3;
    v32 = v37;
    v33 = self;
LABEL_52:
    [(CBAdvertiserDaemon *)v33 _wiProxUpdatePayload:v32 payloadData:v22 advertiseRate:v43 advertiseEnableEPA:0, v37];
    goto LABEL_53;
  }

  v21 = objc_alloc_init(NSMutableData);
  v22 = v21;
  v23 = HIBYTE(v49) != 0 && v20;
  v24 = v4 != 0;
  v25 = v3;
  v26 = v3 != 0;
  if ((v24 & (v9 >> 1) & v26) != 0)
  {
    v27 = 2;
  }

  else
  {
    v27 = 0;
  }

  v28 = v9 & 0xF4 | v27 | v23;
  if ((v24 & (v9 >> 3) & v26) != 0)
  {
    v29 = 8;
  }

  else
  {
    v29 = 0;
  }

  v30 = v28 | v29;
  if ((v30 & 8) == 0 || (v30 & 0x10) == 0 || !v4 || !v3)
  {
    v30 &= ~0x10u;
  }

  HIBYTE(v50) = v30;
  if (v8 | v30)
  {
    [v21 appendBytes:&v50 length:1];
    v33 = self;
    v31 = [(CBAdvertiserDaemon *)self _encryptNearbyInfoV2Payload:&v50 + 1 payloadLength:1 authTag:v4 irkData:v42 keyInfo:"BT_CBNearbyInfoV2EncryptedFlagsV1" keyInfoLength:33];
    if (!v31)
    {
      goto LABEL_53;
    }

    [v22 appendData:v31];
    if (v4)
    {
      [v22 appendData:v4];
    }

    if (v3)
    {
      [v22 appendData:v3];
    }

    v32 = v37;
    if (HIBYTE(v49))
    {
      v34 = [NSMutableData dataWithCapacity:2];
      [v34 appendBytes:&v49 + 1 length:1];
      [v34 appendBytes:&v49 length:1];
      v35 = -[CBAdvertiserDaemon _encryptNearbyInfoV2Payload:payloadLength:authTag:irkData:keyInfo:keyInfoLength:](self, "_encryptNearbyInfoV2Payload:payloadLength:authTag:irkData:keyInfo:keyInfoLength:", [v34 bytes], 2, v4, v42, "BT_CBNearbyInfoV2EncryptedPayloadV1", 35);
      [v22 appendData:v35];

      v25 = v3;
    }

    if ((v50 & 0x1000) != 0 && v44)
    {
      v36 = -[CBAdvertiserDaemon _encryptNearbyInfoV2Payload:payloadLength:authTag:irkData:keyInfo:keyInfoLength:](self, "_encryptNearbyInfoV2Payload:payloadLength:authTag:irkData:keyInfo:keyInfoLength:", [v44 bytes], 5, v4, v42, "BT_CBNearbyInfoV2EncryptedNearbyFaceTimePayloadV1", 49);
      [v22 appendData:v36];

      v25 = v3;
    }

    if (v41 && (v50 & 0x800) != 0)
    {
      objc_storeStrong(&v37->var12, v41);
      [v22 appendData:v41];
    }

    goto LABEL_52;
  }

  if (dword_100B50E30 <= 90 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  v31 = 0;
LABEL_53:
}

@end