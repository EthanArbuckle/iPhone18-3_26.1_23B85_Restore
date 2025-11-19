@interface CommonProduct
- (BOOL)fourCharCodeMatchesDieTempType:(char)a3 fourCharCode:(__CFString *)a4;
- (BOOL)fourCharCodeNeedsPMUtcal:(__CFString *)a3;
- (BOOL)getPotentialForcedThermalPressureLevel;
- (BOOL)isInternalInstall;
- (BOOL)mitigationsFullyReleased;
- (BOOL)shouldSuppressStandardBehaviors:(__CFDictionary *)a3;
- (__CFArray)copyHotspotsArray:(id)a3;
- (__CFString)copyFieldCurrentValueForIndex:(int)a3;
- (__CFString)copyHeaderForIndex:(int)a3;
- (id)getGridX;
- (id)getGridY;
- (id)initProduct:(id)a3;
- (id)newBacklightComponentController:(__CFDictionary *)a3;
- (iir_filter_t)getFilterValues;
- (int)compute2DGridTemps;
- (int)computeMaxCGTemp;
- (int)dieTempFilteredMaxAverage;
- (int)getHighestSkinTemp;
- (int)maxControlEffort;
- (int)sensorIndexFromList:(__CFArray *)a3 fourCharCode:(__CFString *)a4;
- (unint64_t)getMaxSensorValue;
- (unint64_t)getPotentialForcedThermalLevel:(unint64_t)a3;
- (void)clearControlEffortOverrides;
- (void)clearLoadingIndexOverrides;
- (void)createConnectionToCT;
- (void)dealloc;
- (void)emitEarlyThermalNotification;
- (void)emitThermalMitigationNotifications;
- (void)emitThermalTrendNotifications;
- (void)evaluteMitigationMaxLoadingIndex;
- (void)getAllComponentID:(__SCPreferences *)a3;
- (void)handleMCSThermalPressure;
- (void)logTrapEntryForAC:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)probeAllSupervisorControlLoadingIndex;
- (void)putDeviceInLowTempSimulationMode:(id)a3;
- (void)putDeviceInThermalSimulationMode:(id)a3;
- (void)registerChargerNotification;
- (void)registerDefaultsDomain;
- (void)registerDisplayNotification;
- (void)removeHotspotTargetOverrides;
- (void)replaceOrAppendHotspotEntry:(__CFDictionary *)a3 existingHotspots:(__CFArray *)a4;
- (void)send2DGridTempsToDisplayDriver:(int *)a3;
- (void)sendMaxTempToDisplayDriver:(int)a3;
- (void)setup2DGridDisplayDriver;
- (void)simulateLightThermalPressure;
- (void)thermalUpdatesToWatchdogEnabled:(id)a3;
- (void)tryTakeAction;
- (void)updateAllThermalLoad:(BOOL)a3;
- (void)updateContextualClamp;
- (void)updateDisplayDriver:(BOOL)a3;
- (void)updateLifetimeServo;
- (void)updatePowerzoneTelemetry;
- (void)writeAllCornerTemperatures:(int)a3;
@end

@implementation CommonProduct

- (void)updateContextualClamp
{
  contextualClampController = self->contextualClampController;
  if (contextualClampController)
  {
    [(ContextualClampController *)contextualClampController update];
  }
}

- (void)updateLifetimeServo
{
  lifetimeServoController = self->lifetimeServoController;
  if (lifetimeServoController)
  {
    v4 = [(CommonProduct *)self dieTempMaxMax];
    v5 = [(CommonProduct *)self dieTempMaxAverage];

    [(LifetimeServoController *)lifetimeServoController updateForTempMax:v4 tempAverage:v5];
  }
}

- (void)updatePowerzoneTelemetry
{
  v2 = +[PowerZoneTelemetry sharedInstance];

  [(PowerZoneTelemetry *)v2 queryData];
}

- (void)probeAllSupervisorControlLoadingIndex
{
  [(TableDrivenDecisionTree *)self->decisionTree evaluateDecisionTree];

  [(CommonProduct *)self evaluteMitigationMaxLoadingIndex];
}

- (void)evaluteMitigationMaxLoadingIndex
{
  if (byte_1000AB2F9 == 1)
  {
    [(CommonProduct *)self handleMCSThermalPressure];
    [(CommonProduct *)self emitThermalTrendNotifications];

    [(CommonProduct *)self emitEarlyThermalNotification];
    return;
  }

  v3 = [(CommonProduct *)self getHighestSkinTemp];
  self->thermalState = v3;
  if (v3 == 1)
  {
    self->thermalTrap = 1;
    v4 = 12;
    goto LABEL_9;
  }

  if (v3 == 2)
  {
    self->thermalTrap = 1;
    v4 = 16;
LABEL_9:
    qword_1000AB2F0 = v4;
    goto LABEL_14;
  }

  if (qword_1000AB2F0 <= 0xB)
  {
    componentThermalStatusLevel = self->componentThermalStatusLevel;
  }

  else
  {
    componentThermalStatusLevel = 11;
  }

  qword_1000AB2F0 = componentThermalStatusLevel;
  v4 = [(CommonProduct *)self getPotentialForcedThermalLevel:?];
  qword_1000AB2F0 = v4;
  self->thermalTrap = 0;
LABEL_14:
  v6 = sub_10002BD70(v4);
  self->thermalPressureLevel = v6;
  if (v6 != self->previousThermalPressureLevel)
  {
    v7 = +[TGraphSampler sharedInstance];
    [(TGraphSampler *)v7 updatePowerlogLiteMode:qword_1000AB2F0 pressureLevel:self->thermalPressureLevel];
    [+[TGraphSampler sharedInstance](TGraphSampler updateAppleCareState:"updateAppleCareState:value:" value:1, LODWORD(self->thermalPressureLevel)];
    self->previousThermalPressureLevel = self->thermalPressureLevel;
  }

  if (qword_1000AB2F0 != self->previousOSThermalNotificationLevel)
  {
    if (byte_1000A22A0 == 1)
    {
      sub_10002BD14(qword_1000AB2F0);
    }

    if (!self->needsAppleConnectThermalTrapLogging)
    {
      goto LABEL_27;
    }

    previousOSThermalNotificationLevel = self->previousOSThermalNotificationLevel;
    if (previousOSThermalNotificationLevel > 0xB || qword_1000AB2F0 <= 0xB)
    {
      if (previousOSThermalNotificationLevel < 0xC || qword_1000AB2F0 > 0xB)
      {
        goto LABEL_27;
      }

      v9 = @"ThermalUIAlertExit";
    }

    else
    {
      v9 = @"ThermalUIAlertEnter";
    }

    [(CommonProduct *)self logTrapEntryForAC:v9];
LABEL_27:
    self->previousOSThermalNotificationLevel = qword_1000AB2F0;
    v10 = +[TGraphSampler sharedInstance];
    v11 = qword_1000AB2F0;

    [(TGraphSampler *)v10 updatePowerlogMiscState:0 value:v11];
  }
}

- (void)handleMCSThermalPressure
{
  v2 = [+[SensorDispatcherHelper sharedInstance](SensorDispatcherHelper getValueFromSMCForKey:"getValueFromSMCForKey:", @"mTPL"];
  if (v2 != dword_1000AB2A0 && v2 != -12700 && v2 != -1)
  {
    v9 = v2;
    sub_10002BDC0(v2);
    dword_1000AB2A0 = v9;
    v10 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 67109120;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<Notice> mTPL = %d", &v15, 8u);
    }
  }

  v5 = [+[SensorDispatcherHelper sharedInstance](SensorDispatcherHelper getValueFromSMCForKey:"getValueFromSMCForKey:", @"mTLL"];
  v6 = dword_1000AB2A4;
  if (v5 != dword_1000AB2A4 && v5 != -12700 && v5 != -1)
  {
    v12 = v5;
    sub_10002BDD0(v5);
    dword_1000AB2A4 = v12;
    v13 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 67109120;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "<Notice> mTLL = %d", &v15, 8u);
      v6 = dword_1000AB2A4;
    }

    else
    {
      v6 = v12;
    }
  }

  qword_1000AB2F0 = v6;
  sub_1000048A0();
}

- (void)emitThermalTrendNotifications
{
  v2 = [+[SensorDispatcherHelper sharedInstance](SensorDispatcherHelper getValueFromSMCForKey:"getValueFromSMCForKey:", @"mTTT"];
  v3 = [+[SensorDispatcherHelper sharedInstance](SensorDispatcherHelper getValueFromSMCForKey:"getValueFromSMCForKey:", @"mTRC"];
  v4 = v3;
  if (v2 != dword_1000AB2A8)
  {
    if (v2 == -1)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v3 != dword_1000AB2AC && v2 != -1)
  {
LABEL_9:
    [qword_1000AB300 updatetimeToMitigateNotification:v2 AndReasonCode:v3];
    dword_1000AB2A8 = v2;
    dword_1000AB2AC = v4;
    v6 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109376;
      v7[1] = v2;
      v8 = 1024;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<Notice> Time to Mitigate = %d, Mitigation reason code = %d", v7, 0xEu);
    }
  }
}

- (void)emitEarlyThermalNotification
{
  [+[SensorDispatcherHelper sharedInstance](SensorDispatcherHelper getFloatValueFromSMCForKey:"getFloatValueFromSMCForKey:", @"TVRM"];
  v3 = (v2 * 100.0);
  [+[SensorDispatcherHelper sharedInstance](SensorDispatcherHelper getFloatValueFromSMCForKey:"getFloatValueFromSMCForKey:", @"mETW"];
  v5 = v4;
  if (v3 != -1 || v5 != -1)
  {
    v9 = 1;
    if (v3 <= 3800)
    {
      v7 = v3 > 3700 && dword_1000A2478 == 1;
      if (!v7 && v5 < 1)
      {
        v9 = 0;
      }
    }

    if (v9 != dword_1000A2478)
    {
      [qword_1000AB300 updateEarlyThermalNotification:v9];
      dword_1000A2478 = v9;
      v10 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v11[0] = 67109120;
        v11[1] = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<Notice> Early notification = %d", v11, 8u);
      }
    }
  }
}

- (void)tryTakeAction
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  listofComponentControl = self->listofComponentControl;
  v4 = [(NSMutableArray *)listofComponentControl countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(listofComponentControl);
        }

        [*(*(&v8 + 1) + 8 * i) testLoadingIndexLevel];
      }

      v5 = [(NSMutableArray *)listofComponentControl countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [+[CPMSHelper sharedInstance](CPMSHelper publishDetailedMitigationArrayToCPMS];
  [(ArcController *)self->_arcController update];
}

- (int)dieTempFilteredMaxAverage
{
  filteredAverageDieTempSensorIndexSet = self->_filteredAverageDieTempSensorIndexSet;
  if (filteredAverageDieTempSensorIndexSet)
  {
    LODWORD(filteredAverageDieTempSensorIndexSet) = sub_1000078F0(filteredAverageDieTempSensorIndexSet, &qword_1000AB824, byte_1000AB720);
  }

  return filteredAverageDieTempSensorIndexSet;
}

- (int)maxControlEffort
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  listOfSupervisorControl = self->listOfSupervisorControl;
  v3 = [(NSMutableArray *)listOfSupervisorControl countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v3)
  {
    return 0x80000000;
  }

  v4 = v3;
  v5 = *v11;
  v6 = 0x80000000;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(listOfSupervisorControl);
      }

      v8 = [*(*(&v10 + 1) + 8 * i) controlEffort];
      if (v6 <= v8)
      {
        v6 = v8;
      }
    }

    v4 = [(NSMutableArray *)listOfSupervisorControl countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v4);
  return v6;
}

- (id)initProduct:(id)a3
{
  v135.receiver = self;
  v135.super_class = CommonProduct;
  v4 = [(CommonProduct *)&v135 init];
  if (!v4)
  {
    return v4;
  }

  *(v4 + 2) = objc_alloc_init(NSMutableArray);
  *(v4 + 3) = objc_alloc_init(NSMutableArray);
  *(v4 + 4) = 0x143E00000000;
  *(v4 + 10) = 0;
  v5 = (v4 + 40);
  *(v4 + 14) = 0;
  v4[8] = 0;
  v4[312] = 0;
  *(v4 + 9) = 0;
  *(v4 + 10) = 0;
  *(v4 + 8) = 0;
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  *(v4 + 48) = dispatch_queue_create("com.apple.ThermalMonitor.mainQueue", v6);
  [+[TGraphSampler sharedInstance](TGraphSampler addtGraphDataSource:"addtGraphDataSource:", v4];
  v7 = [qword_1000ABCB0 requestListID];
  v8 = [a3 getConfigurationFor:@"generalProductConfig"];
  v9 = sub_100031D48(v8, @"noDisplay");
  v10 = [a3 getConfigurationFor:@"powerZoneParams"];
  v11 = sub_100031D48(v8, @"usesSMCSensorExchange");
  byte_1000ABC38 = v11;
  if (v11)
  {
    [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:10 atSMCIndex:@"zETM", 10];
    v12 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "<Notice> Using SensorExchangeHelper", buf, 2u);
    }
  }

  v13 = sub_100031D48(v8, @"usesACSK");
  byte_1000AB2F9 = v13;
  if (v13)
  {
    v14 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "<Notice> Using ACSK", buf, 2u);
    }
  }

  v15 = sub_100031D48(v8, @"usesKeyboardHelper");
  byte_1000AB2FB = v15;
  if (v15)
  {
    v16 = sub_100031D48(v8, @"needsCLPCClient");
    v17 = qword_1000AB718;
    if (v16)
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "<Notice> Uses CLPC framework", buf, 2u);
        v17 = qword_1000AB718;
      }

      byte_1000AB2FC = 1;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "<Notice> Using Keyboard Helper", buf, 2u);
    }

    v18 = objc_alloc_init(KeyboardHelper);
    *(v4 + 34) = v18;
    if (v18)
    {
      [(KeyboardHelper *)v18 registerForKeyboardEvents];
      if (sub_100031D48(v8, @"usesFolioHelper"))
      {
        v19 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "<Notice> Using Folio Helper", buf, 2u);
        }

        [*(v4 + 34) registerForFolioEvents];
      }
    }

    else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005AB7C();
    }
  }

  if (!sub_100031D48(v8, @"skipMitigationController"))
  {
    v4[44] = sub_100031D48(v8, @"needsFastDieControl");
    qword_1000ABCB0 = -[MitigationController initForFastLoop:noDisplay:powerSaveParams:powerZoneParams:]([MitigationController alloc], "initForFastLoop:noDisplay:powerSaveParams:powerZoneParams:", v4[44], v9, [a3 getConfigurationFor:@"powerSaveParams"], v10);
  }

  v20 = [a3 getConfigurationFor:@"packageComponentControl"];
  if (v20)
  {
    v21 = [[PackagePowerCC alloc] initWithParams:v20];
LABEL_35:
    [*(v4 + 2) addObject:v21];

    goto LABEL_36;
  }

  v22 = [a3 getConfigurationFor:@"cpuComponentControl"];
  if (v22)
  {
    v23 = v22;
    *buf = 0;
    sub_100002A20(v22, @"controllerVersion", kCFNumberIntType, buf);
    if (*buf == 2)
    {
      v24 = [[CpuPiecewiseCC alloc] initWithParams:v23 listID:v7 needspowerZones:v10 != 0];
    }

    else
    {
      valuePtr = 1065353216;
      v25 = [a3 getConfigurationFor:@"Power_Scale"];
      if (v25)
      {
        CFNumberGetValue(v25, kCFNumberIntType, &valuePtr);
      }

      v26 = [CpuCC alloc];
      LODWORD(v27) = valuePtr;
      v24 = [(CpuCC *)v26 initWithParams:v23 powerScale:v7 listID:v10 != 0 needspowerZones:v27];
    }

    v28 = v24;
    [*(v4 + 2) addObject:v24];
  }

  v29 = [a3 getConfigurationFor:@"socComponentControl"];
  if (v29)
  {
    v21 = [[SocCC alloc] initWithParams:v29 listID:v7];
    goto LABEL_35;
  }

LABEL_36:
  valuePtr = 0;
  sub_100002A20(v8, @"radioControllerType", kCFNumberIntType, &valuePtr);
  if (valuePtr <= 3)
  {
    if (!valuePtr)
    {
      goto LABEL_61;
    }

    if (valuePtr == 3)
    {
      v31 = (v4 + 40);
      v32 = off_100084A10;
      goto LABEL_43;
    }

    goto LABEL_45;
  }

  if (valuePtr == 5)
  {
    v130 = &v130;
    v131 = (v4 + 40);
    v35 = 0;
    v126 = @"radioModemBandComponentControl";
    v127 = @"radioFR2RFCGComponentControl";
    v128 = @"radioFR2RFBCComponentControl";
    v129 = @"radioFR2RFBandComponentControl";
    *&v30 = 138412290;
    v132 = v30;
    while (1)
    {
      if (byte_1000AB2F8 == 1)
      {
        v36 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          v37 = *(&v126 + v35);
          *buf = v132;
          v137 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "<Notice> Getting configuration and initializing RadioPowerCC type: %@", buf, 0xCu);
        }
      }

      v38 = *(&v126 + v35);
      v39 = [a3 getConfigurationFor:{v38, v126, v127, v128, v129, v130}];
      if (v39)
      {
        v40 = -[RadioPowerCC initWithRunLoopAndParams:withMitigationType:withParams:]([RadioPowerCC alloc], "initWithRunLoopAndParams:withMitigationType:withParams:", [a3 localMainRunloop], dword_100067A30[v35], v39);
        if (v40)
        {
          v41 = v40;
          [*(v4 + 2) addObject:v40];
        }

        else
        {
          v45 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            *buf = v132;
            v137 = v38;
            v43 = v45;
            v44 = "<Error> Failed to initialize RadioPowerCC name: %@";
            goto LABEL_60;
          }
        }
      }

      else
      {
        v42 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          *buf = v132;
          v137 = v38;
          v43 = v42;
          v44 = "<Error> No configuration found for RadioPowerCC name: %@";
LABEL_60:
          _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, v44, buf, 0xCu);
        }
      }

      if (++v35 == 4)
      {
        v5 = v131;
        goto LABEL_61;
      }
    }
  }

  if (valuePtr == 4)
  {
    v31 = (v4 + 40);
    v32 = off_100084A08;
LABEL_43:
    v33 = [objc_alloc(*v32) initWithRunLoopAndParams:objc_msgSend(a3 withParams:{"localMainRunloop"), objc_msgSend(a3, "getConfigurationFor:", @"radioComponentControl"}];
    v5 = v31;
    if (v33)
    {
      v34 = v33;
      [*(v4 + 2) addObject:v33];
    }

    goto LABEL_61;
  }

LABEL_45:
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_10005ABB0();
  }

LABEL_61:
  v46 = [[ThermalLevelCC alloc] initWithProduct:v4];
  [*(v4 + 2) addObject:v46];

  v47 = [a3 getConfigurationFor:@"backlightComponentControl"];
  if (v47)
  {
    v48 = [v4 newBacklightComponentController:v47];
    [*(v4 + 2) addObject:v48];
  }

  v49 = [a3 getConfigurationFor:@"refreshRateComponentControl"];
  if (v49)
  {
    v50 = v49;
    Value = CFDictionaryGetValue(v49, @"RefreshRate");
    if (Value)
    {
      v52 = Value;
      v53 = [[RefreshRateCC alloc] initWithParams:v50];
      [(RefreshRateCC *)v53 initRefreshRateTable:v52];
      [*(v4 + 2) addObject:v53];
    }
  }

  v54 = [a3 getConfigurationFor:@"fanComponentControl"];
  if (v54)
  {
    v55 = [[FanCC alloc] initWithParams:v54];
    [*(v4 + 2) addObject:v55];
  }

  v56 = [a3 getConfigurationFor:@"wifiComponentControl"];
  if (v56)
  {
    v57 = [[WiFiCC alloc] initWithParams:v56];
    [*(v4 + 2) addObject:v57];
  }

  v58 = [a3 getConfigurationFor:@"audioAmpComponentControl"];
  if (v58)
  {
    v59 = [[AudioAmpCC alloc] initWithParams:v58];
    [*(v4 + 2) addObject:v59];
  }

  v60 = [a3 getConfigurationFor:@"arcComponentControl"];
  if (v60)
  {
    v61 = v60;
    v62 = sub_100031D48(v60, @"usesArcPowerCC");
    v63 = off_1000849F8;
    if (v62)
    {
      v63 = off_100084A00;
    }

    v64 = [objc_alloc(*v63) initWithParams:v61 product:v4];
    [*(v4 + 2) addObject:v64];
  }

  v65 = [a3 getConfigurationFor:@"speakerComponentControl"];
  if (v65)
  {
    v66 = [[SpeakerCC alloc] initWithParams:v65];
    [*(v4 + 2) addObject:v66];
  }

  [v4 registerDisplayNotification];
  [v4 registerChargerNotification];
  if (!sub_100031D48(v8, @"noChargingControl"))
  {
    if (sub_100031D48(v8, @"usesLinkCharger"))
    {
      v67 = [a3 getConfigurationFor:@"linkChargerComponentControl"];
      v68 = LinkChargerCC;
LABEL_83:
      v70 = [[v68 alloc] initWithParams:v67];
      [*(v4 + 2) addObject:v70];

      goto LABEL_84;
    }

    v69 = [a3 getConfigurationFor:@"powerSourceComponentControl"];
    if (v69)
    {
      v67 = v69;
      v68 = PowerSourceCC;
      goto LABEL_83;
    }
  }

LABEL_84:
  v71 = [a3 getConfigurationFor:@"Sensors"];
  *(v4 + 74) = CFArrayGetCount(v71);
  [+[HidSensors sharedInstance](HidSensors loadProductTemperatureParameters:"loadProductTemperatureParameters:", v71];
  v72 = [a3 getConfigurationFor:@"powerSensors"];
  if (v72)
  {
    v73 = v72;
    if (CFArrayGetCount(v72) >= 1)
    {
      *(v4 + 75) = CFArrayGetCount(v73);
      [+[HidSensors sharedInstance](HidSensors loadProductPowerParameters:"loadProductPowerParameters:", v73];
    }
  }

  v74 = [v4 sensorIndexFromList:v71 fourCharCode:@"TP0Z"];
  *(v4 + 8) = v74;
  if (v74 == -1 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_10005AC24();
  }

  if (sub_100002A20(v8, @"requiredCalibrationResistorSamples", kCFNumberIntType, v5))
  {
    if (byte_1000AB2F8 == 1)
    {
      v75 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v76 = *v5;
        *buf = 67109120;
        LODWORD(v137) = v76;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "<Notice> Required Tcal samples: %d", buf, 8u);
      }
    }
  }

  byte_1000AB720 = sub_100031D48(v8, @"hasInternalSensorFiltering");
  v77 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "<Notice> Has internally filtered sensors", buf, 2u);
  }

  *(v4 + 42) = [v4 copyDieTempSensorIndexSetForFourthChar:97 sensors:v71 filteredOnly:0];
  *(v4 + 41) = [v4 copyDieTempSensorIndexSetForFourthChar:120 sensors:v71 filteredOnly:0];
  if (byte_1000AB720 == 1)
  {
    v78 = 97;
    v79 = v71;
    v80 = 1;
  }

  else
  {
    v78 = 102;
    v79 = v71;
    v80 = 0;
  }

  *(v4 + 43) = [v4 copyDieTempSensorIndexSetForFourthChar:v78 sensors:v79 filteredOnly:v80];
  if (byte_1000AB2F8 == 1)
  {
    v81 = qword_1000AB718;
    if (!os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT) || (v82 = *(v4 + 42), *buf = 138412290, v137 = v82, _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "<Notice> avg die: %@", buf, 0xCu), (byte_1000AB2F8 & 1) != 0))
    {
      v83 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v84 = *(v4 + 41);
        *buf = 138412290;
        v137 = v84;
        _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "<Notice> max die: %@", buf, 0xCu);
      }
    }
  }

  v85 = *(v4 + 43);
  if (v85)
  {
    if (byte_1000AB2F8 == 1)
    {
      v86 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v137 = v85;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "<Notice> filtered average die: %@", buf, 0xCu);
      }
    }
  }

  *(v4 + 38) = 0;
  if (CFArrayGetCount(v71) >= 1)
  {
    v87 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v71, v87);
      v89 = CFDictionaryGetValue(ValueAtIndex, @"4CharCode");
      if (v87 != *(v4 + 8) && [v4 fourCharCodeNeedsPMUtcal:v89])
      {
        *(v4 + 38) |= 1 << v87;
      }

      ++v87;
    }

    while (CFArrayGetCount(v71) > v87);
  }

  v90 = [v4 copyHotspotsArray:a3];
  if (v90)
  {
    v91 = v90;
    Count = CFArrayGetCount(v90);
    if (Count >= 1)
    {
      v93 = Count;
      for (i = 0; i != v93; ++i)
      {
        v95 = [[SupervisorControl alloc] initWithMitigationType:(i + 18) paramInfo:CFArrayGetValueAtIndex(v91, i)];
        [*(v4 + 3) addObject:v95];
      }
    }

    CFRelease(v91);
  }

  v133 = 0;
  sub_100002A20(v8, @"solarContextType", kCFNumberIntType, &v133);
  if ((v133 - 1) < 2)
  {
    [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager createNewSolarContext:"createNewSolarContext:", 0];
    if (v133 != 2)
    {
      v96 = 1;
      goto LABEL_128;
    }

    goto LABEL_124;
  }

  if ((v133 - 3) < 2)
  {
    v96 = 1;
    [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager createNewSolarContext:"createNewSolarContext:", 1];
    if (v133 != 4)
    {
      goto LABEL_128;
    }

LABEL_124:
    v96 = 1;
    [objc_msgSend(v4 findComponent:{0), "setSolarBehaviorSuppressed:", 1}];
LABEL_128:
    [objc_msgSend(v4 findComponent:{0), "setSolarDetectorPresent:", v96}];
    goto LABEL_129;
  }

  v96 = 0;
  if (!v133)
  {
    goto LABEL_128;
  }

LABEL_129:
  v4[105] = v133 == 0;
  if (sub_100031D48(v8, @"shouldDispatchVirtualTemp"))
  {
    [+[HidSensors sharedInstance](HidSensors enableDispatchVirtualTemp];
    [+[HidSensors sharedInstance](HidSensors initLocationStrings];
  }

  if (sub_100031D48(v8, @"enableSending2DTempGridToDisplayDriver"))
  {
    [+[HidSensors sharedInstance](HidSensors enableSending2DTempGridToDisplayDriver];
  }

  if (sub_100031D48(v8, @"enableSendingMaxTempToDisplayDriver"))
  {
    [v4 enableSendingMaxTempToDisplayDriver];
  }

  v4[104] = sub_100031D48(v8, @"canForceThermalLevels");
  *(v4 + 6) = -[TableDrivenDecisionTree initWithComponentControllers:hotspotControllers:decisionTreeTable:]([TableDrivenDecisionTree alloc], "initWithComponentControllers:hotspotControllers:decisionTreeTable:", *(v4 + 2), *(v4 + 3), [a3 getConfigurationFor:@"DecisionTreeTable"]);
  if (sub_100031D48(v8, @"monitorsCameraSensors"))
  {
    v97 = [v4 sensorIndexFromList:v71 fourCharCode:@"SS0F"];
    v98 = [v4 sensorIndexFromList:v71 fourCharCode:@"SS0C"];
    if (v97 == -1)
    {
      v97 = [v4 sensorIndexFromList:v71 fourCharCode:@"TK0F"];
    }

    if (v98 == -1)
    {
      v98 = [v4 sensorIndexFromList:v71 fourCharCode:@"TK0C"];
      if ((v97 & 0x80000000) != 0)
      {
        goto LABEL_155;
      }
    }

    else if ((v97 & 0x80000000) != 0)
    {
LABEL_155:
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_10005AC58();
      }

      goto LABEL_157;
    }

    if ((v98 & 0x80000000) != 0)
    {
      goto LABEL_155;
    }

    *(v4 + 12) = [[CameraTS alloc] initWithFrontCameraSensorIdx:v97 rearCameraSensorIdx:v98];
    v99 = [v4 sensorIndexFromList:v71 fourCharCode:@"TK1F"];
    if ((v99 & 0x80000000) == 0)
    {
      [*(v4 + 12) enableFrontIRCameraNotifications:v99];
    }

    v100 = [v4 sensorIndexFromList:v71 fourCharCode:@"TK2F"];
    if ((v100 & 0x80000000) == 0)
    {
      [*(v4 + 12) enableFrontRomeoNTCNotifications:v100];
    }

    v101 = [v4 sensorIndexFromList:v71 fourCharCode:@"TK3F"];
    if ((v101 & 0x80000000) == 0)
    {
      [*(v4 + 12) enableFrontRigelDieNotifications:v101];
    }

    v102 = [v4 sensorIndexFromList:v71 fourCharCode:@"TK1C"];
    if ((v102 & 0x80000000) == 0)
    {
      [*(v4 + 12) enableRearCameraTeleNotifications:v102];
    }

    v103 = [v4 sensorIndexFromList:v71 fourCharCode:@"TK2C"];
    if ((v103 & 0x80000000) == 0)
    {
      [*(v4 + 12) enableRearCameraSuperWideNotifications:v103];
    }

    v104 = [v4 sensorIndexFromList:v71 fourCharCode:@"TK3C"];
    if ((v104 & 0x80000000) == 0)
    {
      [*(v4 + 12) enableRearCameraJasperNotifications:v104];
    }
  }

LABEL_157:
  if (sub_100031D48(v8, @"monitorsRadioSensors") && ([v4 sensorIndexFromList:v71 fourCharCode:@"TB0R"] & 0x80000000) == 0 && (objc_msgSend(v4, "sensorIndexFromList:fourCharCode:", v71, @"TB1R") & 0x80000000) == 0)
  {
    +[RadioTS sharedInstance];
  }

  v105 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "<Notice> Checking for needsAccessoryHelper", buf, 2u);
  }

  if (!sub_100031D48(v8, @"needsAccessoryHelper"))
  {
    goto LABEL_170;
  }

  v106 = [[AccessoryHelper alloc] initWithProduct:v4];
  *(v4 + 33) = v106;
  v107 = qword_1000AB718;
  v108 = os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT);
  if (v106)
  {
    if (v108)
    {
      *buf = 0;
      v109 = "<Notice> Created AccessoryHelper";
LABEL_169:
      _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, v109, buf, 2u);
    }
  }

  else if (v108)
  {
    *buf = 0;
    v109 = "<Notice> Failed to create AccessoryHelper";
    goto LABEL_169;
  }

LABEL_170:
  if (sub_100031D48(v8, @"needsLifetimeServo"))
  {
    v110 = [a3 getConfigurationFor:@"lifetimeServoParams"];
    if (v110 && (v111 = v110, v112 = CFGetTypeID(v110), v112 == CFDictionaryGetTypeID()))
    {
      *(v4 + 44) = [[LifetimeServoController alloc] initWithParams:v111 sensorList:v71];
    }

    else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005AC8C();
    }
  }

  else
  {
    *(v4 + 44) = 0;
    if (sub_100031D48(v8, @"needsLTSStatePersistence"))
    {
      v113 = [a3 getConfigurationFor:@"LTSStatePersistencePerIpRevision"];
      if (sub_100031D48(v8, @"LTSUsesACSK"))
      {
        v114 = LifetimeServoStatePersistenceACSK;
      }

      else
      {
        v114 = LifetimeServoStatePersistence;
      }

      *(v4 + 45) = [[v114 alloc] initWithParams:v113];
    }

    else
    {
      *(v4 + 45) = 0;
    }
  }

  v4[106] = sub_100031D48(v8, @"needsAppleConnectThermalTrapLogging");
  qword_1000ABCA8 = 0;
  *(v4 + 56) = 0;
  if (sub_100031D48(v8, @"needsPushingTSFDtoDisplayDriver"))
  {
    v115 = [v4 sensorIndexFromList:v71 fourCharCode:@"TSFD"];
    *(v4 + 27) = v115;
    if (v115 == -1)
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_10005AD34();
      }
    }

    else if (IOMobileFramebufferGetMainDisplay() || !qword_1000ABCA8)
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_10005ACC0();
      }

      qword_1000ABCA8 = 0;
    }

    if (byte_1000AB2F8 == 1)
    {
      v116 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v137 = qword_1000ABCA8;
        _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "<Notice> IOMFB: %@", buf, 0xCu);
      }
    }
  }

  if ([+[HidSensors isSending2DTempGridToDisplayDriverEnabled] sharedInstance]
  {
    [v4 setup2DGridDisplayDriver];
  }

  if (sub_100031D48(v8, @"needsContextualClamp"))
  {
    v117 = [a3 getConfigurationFor:@"contextualClampParams"];
    if (v117 && (v118 = v117, v119 = CFGetTypeID(v117), v119 == CFDictionaryGetTypeID()))
    {
      *(v4 + 31) = -[ContextualClampController initWithParams:backlightController:product:]([ContextualClampController alloc], "initWithParams:backlightController:product:", v118, [v4 findComponent:0], v4);
    }

    else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005AD68();
    }
  }

  else
  {
    *(v4 + 31) = 0;
  }

  if (sub_100031D48(v8, @"needsArcControl"))
  {
    v120 = [a3 getConfigurationFor:@"arcControlParams"];
    if (v120 && (v121 = v120, v122 = CFGetTypeID(v120), v122 == CFDictionaryGetTypeID()))
    {
      *(v4 + 32) = [[ArcController alloc] initWithParams:v121 product:v4];
    }

    else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005AD9C();
    }
  }

  else
  {
    *(v4 + 32) = 0;
  }

  *(v4 + 236) = 0xB0000000ALL;
  sub_100002A20(v8, @"forcedThermalLevelLower", kCFNumberIntType, v4 + 236);
  sub_100002A20(v8, @"forcedThermalLevelUpper", kCFNumberIntType, v4 + 240);
  if ([v4 shouldSuppressStandardBehaviors:v8])
  {
    [v4 suppressStandardBehaviors];
  }

  v123 = [a3 getConfigurationFor:@"lowTempMitigationLimits"];
  *(v4 + 36) = v123;
  if (v123)
  {
    [v4 registerDefaultsDomain];
    [*(v4 + 49) addObserver:v4 forKeyPath:@"ppmSimulationMode" options:1 context:v4];
  }

  v124 = [a3 getConfigurationFor:@"thermalMitigationLimits"];
  *(v4 + 35) = v124;
  if (v124 || byte_1000AB2F9 == 1)
  {
    [v4 registerDefaultsDomain];
    [*(v4 + 49) setObject:0 forKey:@"thermalSimulationMode"];
    [*(v4 + 49) synchronize];
    [*(v4 + 49) addObserver:v4 forKeyPath:@"thermalSimulationMode" options:1 context:v4];
  }

  byte_1000ABCA1 = 0;
  [v4 registerDefaultsDomain];
  [*(v4 + 49) addObserver:v4 forKeyPath:@"watchdogUpdates" options:1 context:v4];
  byte_1000ABCA2 = sub_100031D48(v8, @"needsPowerZoneTelemetry");
  +[PowerZoneTelemetry sharedInstance];
  *(v4 + 22) = 1;
  sub_100002A20(v8, @"moderatePressureVersion", kCFNumberIntType, v4 + 88);
  [+[CPMSHelper sharedInstance](CPMSHelper setProduct:"setProduct:", v4];
  return v4;
}

- (void)registerDefaultsDomain
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100049BA8;
  block[3] = &unk_100085260;
  block[4] = self;
  if (qword_1000AB298 != -1)
  {
    dispatch_once(&qword_1000AB298, block);
  }
}

- (void)simulateLightThermalPressure
{
  [qword_1000AB300 setLightPressureOverride:1];
  v2 = qword_1000AB300;

  [v2 updateThermalPressureLevelNotification:0 shouldForceThermalPressure:1];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:@"thermalSimulationMode"])
  {
    v11 = [a5 objectForKeyedSubscript:NSKeyValueChangeNewKey];

    [(CommonProduct *)self putDeviceInThermalSimulationMode:v11];
  }

  else if ([a3 isEqualToString:@"ppmSimulationMode"])
  {
    v12 = [a5 objectForKeyedSubscript:NSKeyValueChangeNewKey];

    [(CommonProduct *)self putDeviceInLowTempSimulationMode:v12];
  }

  else if ([a3 isEqualToString:@"watchdogUpdates"])
  {
    v13 = [a5 objectForKeyedSubscript:NSKeyValueChangeNewKey];

    [(CommonProduct *)self thermalUpdatesToWatchdogEnabled:v13];
  }

  else
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005ADD0();
    }

    v14.receiver = self;
    v14.super_class = CommonProduct;
    [(CommonProduct *)&v14 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:a6];
  }
}

- (void)thermalUpdatesToWatchdogEnabled:(id)a3
{
  v4 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<Notice> Asked to change watchdog updates mode to %@", &v9, 0xCu);
  }

  v5 = [a3 isEqualToString:@"false"];
  byte_1000A22A2 = v5 ^ 1;
  if (byte_1000AB2F8 == 1)
  {
    v6 = v5;
    v7 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "en";
      if (v6)
      {
        v8 = "dis";
      }

      v9 = 136315138;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> Watchdog Thermal Updates %sabled", &v9, 0xCu);
    }
  }
}

- (void)putDeviceInThermalSimulationMode:(id)a3
{
  v5 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> Asked to change thermal mode to %@", &v13, 0xCu);
  }

  if (a3)
  {
    if ([a3 isEqualToString:@"off"])
    {
      [(CommonProduct *)self clearLoadingIndexOverrides];
      [(CommonProduct *)self removeLightPressureOverride];
      [(CommonProduct *)self setHiPFeatureEnabled:1];
      byte_1000ABCA1 = 0;
      dword_1000AB960 = 0;
      return;
    }

    if ([a3 isEqualToString:@"nominal"])
    {
      memset(&qword_1000ABC90, 100, 17);
      [(CommonProduct *)self removeLightPressureOverride];
      [(CommonProduct *)self setHiPFeatureEnabled:0];
      byte_1000ABCA1 = 1;
      v6 = 1065353216;
LABEL_15:
      dword_1000AB960 = v6;
      return;
    }
  }

  [(CommonProduct *)self setHiPFeatureEnabled:0];
  byte_1000ABCA1 = 1;
  v7 = [(NSDictionary *)self->simulatedThermalMitigationLimits valueForKeyPath:a3];
  for (i = 0; i != 17; ++i)
  {
    v9 = [v7 valueForKey:*(&off_1000862F0 + i)];
    if (v9)
    {
      *(&qword_1000ABC90 + i) = [v9 integerValue];
    }
  }

  if (a3)
  {
    if ([a3 isEqualToString:@"light"])
    {
      [(CommonProduct *)self simulateLightThermalPressure];
      v6 = 0x40000000;
      goto LABEL_15;
    }

    v11 = [a3 isEqualToString:@"moderate"];
    LODWORD(v10) = 3.0;
    if ((v11 & 1) != 0 || (v12 = [a3 isEqualToString:{@"heavy", v10}], LODWORD(v10) = 4.0, v12))
    {
      dword_1000AB960 = LODWORD(v10);
    }
  }

  [(CommonProduct *)self removeLightPressureOverride];
}

- (void)putDeviceInLowTempSimulationMode:(id)a3
{
  v5 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> Asked to change low temp mode to %@", &v13, 0xCu);
  }

  if ([a3 isEqualToString:@"off"])
  {
    sub_100033898(0);
    sub_10003305C(0);
    sub_100032E24();
    sub_100032EE0();
    sub_1000326FC();
    nullsub_1();
    sub_100032454();
    sub_100032828();
  }

  else
  {
    sub_100033898(1);
    sub_10003305C(1);
    v6 = [(NSDictionary *)self->simulatedLowTempMitigationLimits valueForKeyPath:a3];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 valueForKey:@"Ra"];
      if (v8)
      {
        sub_100032D78([v8 integerValue]);
      }

      else
      {
        v9 = [v7 valueForKey:@"wRa"];
        if (v9)
        {
          sub_100032E34([v9 integerValue]);
        }
      }

      v10 = [v7 valueForKey:@"soc"];
      if (v10)
      {
        v11 = v10;
        sub_1000326F0([v10 integerValue]);
        sub_100032448([v11 integerValue]);
        sub_100032648([v11 integerValue]);
      }

      v12 = [v7 valueForKey:@"TG0B"];
      if (v12)
      {
        sub_10003270C(@"TG0B", [v12 integerValue]);
      }
    }

    else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005AE04();
    }
  }
}

- (void)dealloc
{
  filteredAverageDieTempSensorIndexSet = self->_filteredAverageDieTempSensorIndexSet;
  if (filteredAverageDieTempSensorIndexSet)
  {
  }

  notify_cancel(self->_displayToken);
  notify_cancel(self->_chargerToken);

  v4.receiver = self;
  v4.super_class = CommonProduct;
  [(CommonProduct *)&v4 dealloc];
}

- (BOOL)fourCharCodeMatchesDieTempType:(char)a3 fourCharCode:(__CFString *)a4
{
  if (!a4)
  {
    return 0;
  }

  CString = CFStringGetCString(a4, buffer, 16, 0x8000100u);
  result = 0;
  if (CString && buffer[0] == 84)
  {
    v7 = buffer[1] - 80;
    v8 = v7 > 0x23;
    v9 = (1 << v7) & 0x901AA0001;
    v10 = v8 || v9 == 0;
    if (v10 || v13 != 99 && v13 - 48 > 9)
    {
      return 0;
    }

    return !v15 && v14 == a3;
  }

  return result;
}

- (BOOL)fourCharCodeNeedsPMUtcal:(__CFString *)a3
{
  if (!a3)
  {
    goto LABEL_7;
  }

  CString = CFStringGetCString(a3, buffer, 16, 0x8000100u);
  if (CString)
  {
    LOBYTE(CString) = 0;
    if (buffer[0] == 84 && buffer[1] == 80)
    {
      if (v6 != 100 && v6 - 65 > 0x19)
      {
LABEL_7:
        LOBYTE(CString) = 0;
        return CString;
      }

      LOBYTE(CString) = v7 == 0;
    }
  }

  return CString;
}

- (BOOL)mitigationsFullyReleased
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  listofComponentControl = self->listofComponentControl;
  v3 = [(NSMutableArray *)listofComponentControl countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(listofComponentControl);
        }

        if ([*(*(&v8 + 1) + 8 * i) releaseMaxLI] < 0x64)
        {
          return 0;
        }
      }

      v4 = [(NSMutableArray *)listofComponentControl countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (void)registerDisplayNotification
{
  objc_initWeak(&location, self);
  thermalQueue = self->_thermalQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004A87C;
  v4[3] = &unk_100085100;
  objc_copyWeak(&v5, &location);
  sub_1000333D4("com.apple.iokit.hid.displayStatus", &self->_displayToken, thermalQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)registerChargerNotification
{
  objc_initWeak(&location, self);
  thermalQueue = self->_thermalQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004A9A8;
  v4[3] = &unk_100085100;
  objc_copyWeak(&v5, &location);
  sub_1000333D4("com.apple.system.powermanagement.poweradapter", &self->_chargerToken, thermalQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)clearControlEffortOverrides
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  listOfSupervisorControl = self->listOfSupervisorControl;
  v4 = [(NSMutableArray *)listOfSupervisorControl countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(listOfSupervisorControl);
        }

        [*(*(&v17 + 1) + 8 * i) setAllowCEOverride:0];
      }

      v5 = [(NSMutableArray *)listOfSupervisorControl countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  listofComponentControl = self->listofComponentControl;
  v9 = [(NSMutableArray *)listofComponentControl countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (j = 0; j != v10; j = j + 1)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(listofComponentControl);
        }

        [*(*(&v13 + 1) + 8 * j) setAllowCEOverride:0];
      }

      v10 = [(NSMutableArray *)listofComponentControl countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }
}

- (void)clearLoadingIndexOverrides
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  listofComponentControl = self->listofComponentControl;
  v3 = [(NSMutableArray *)listofComponentControl countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(listofComponentControl);
        }

        [*(*(&v7 + 1) + 8 * i) setAllowLIOverride:0];
      }

      v4 = [(NSMutableArray *)listofComponentControl countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)createConnectionToCT
{
  v2 = [(CommonProduct *)self findComponent:4];

  [v2 createConnectionToCT];
}

- (void)emitThermalMitigationNotifications
{
  [+[SensorDispatcherHelper sharedInstance](SensorDispatcherHelper getFloatValueFromSMCForKey:"getFloatValueFromSMCForKey:", @"mxTM"];
  v3 = v2;
  if (dword_1000AB2B0 != v2 && v3 != -1)
  {
    [qword_1000AB300 updateThermalMitigationNotification:v2];
    dword_1000AB2B0 = v3;
    v5 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> Thermal Mitigation = %d", v6, 8u);
    }

    kdebug_trace();
  }
}

- (void)logTrapEntryForAC:(id)a3
{
  v3 = [[NSMutableArray alloc] initWithObjects:{a3, 0}];
  [v3 addObjectsFromArray:GetThermalState()];
  logEventForAppleCare();
}

- (void)getAllComponentID:(__SCPreferences *)a3
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  listofComponentControl = self->listofComponentControl;
  v7 = [(NSMutableArray *)listofComponentControl countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(listofComponentControl);
        }

        CFArrayAppendValue(Mutable, [*(*(&v20 + 1) + 8 * i) nameofComponent]);
      }

      v8 = [(NSMutableArray *)listofComponentControl countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  listOfSupervisorControl = self->listOfSupervisorControl;
  v12 = [(NSMutableArray *)listOfSupervisorControl countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(listOfSupervisorControl);
        }

        CFArrayAppendValue(Mutable, [*(*(&v16 + 1) + 8 * j) nameofComponent]);
      }

      v13 = [(NSMutableArray *)listOfSupervisorControl countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }

  SCPreferencesSetValue(a3, @"listComponentID_CLTMV2", Mutable);
  SCPreferencesCommitChanges(a3);
  CFRelease(Mutable);
}

- (id)newBacklightComponentController:(__CFDictionary *)a3
{
  v4 = [BackLightCCSingle alloc];

  return [(BackLightCCSingle *)v4 initWithParams:a3];
}

- (iir_filter_t)getFilterValues
{
  v2 = +[HidSensors sharedInstance];

  return [(HidSensors *)v2 getFilterTable];
}

- (int)getHighestSkinTemp
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  listOfSupervisorControl = self->listOfSupervisorControl;
  v3 = [(NSMutableArray *)listOfSupervisorControl countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v11;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(listOfSupervisorControl);
      }

      v8 = [*(*(&v10 + 1) + 8 * i) getThermalStateofHotspot];
      if (v8 > v5)
      {
        v5 = v8;
      }
    }

    v4 = [(NSMutableArray *)listOfSupervisorControl countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v4);
  return v5;
}

- (unint64_t)getMaxSensorValue
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  listOfSupervisorControl = self->listOfSupervisorControl;
  v3 = [(NSMutableArray *)listOfSupervisorControl countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v14;
    v7 = 100.0;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(listOfSupervisorControl);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        [v9 calculateTargetDifference];
        if (v10 < v7)
        {
          v7 = v10;
          v5 = v9;
        }
      }

      v4 = [(NSMutableArray *)listOfSupervisorControl countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  [v5 hotspotTemperature];
  return (v11 * 100.0);
}

- (BOOL)isInternalInstall
{
  if (qword_1000AB2B8 != -1)
  {
    sub_10005AE38();
  }

  return byte_1000AB2B4;
}

- (void)updateAllThermalLoad:(BOOL)a3
{
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_10005AE4C();
  }
}

- (int)compute2DGridTemps
{
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_10005AE80();
  }

  return 0;
}

- (int)computeMaxCGTemp
{
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_10005AEB4();
  }

  return -1;
}

- (void)writeAllCornerTemperatures:(int)a3
{
  v3 = a3 / 100.0;
  v4 = vcvtd_n_s64_f64(v3, 0x10uLL);
  v8 = v4;
  v9 = v4;
  v10 = v4;
  v11 = v4;
  if (IOMobileFramebufferSetParameter())
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005AEE8();
    }
  }

  else if (byte_1000AB2F8 == 1)
  {
    v5 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = v3 * 65536.0 * 0.0000152587891;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> Pushed TSFD=%0.2f", &v6, 0xCu);
    }
  }
}

- (void)updateDisplayDriver:(BOOL)a3
{
  if (!qword_1000ABCA8)
  {
    return;
  }

  v4 = *(&qword_1000AB824 + self->tsfdIndex);
  if (a3)
  {
    p_haveUsedDeferral = &self->_haveUsedDeferral;
    haveUsedDeferral = self->_haveUsedDeferral;
    self->_blendStillNeeded = 1;
    if (haveUsedDeferral)
    {
      AssertionID = 0;
      v7 = IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", @"com.apple.thermalmonitord", @"Keeping system awake while performing display temperature ramp", 0, 0, 5.0, @"TimeoutActionTurnOff", &AssertionID);
      if (v7)
      {
        v8 = v7;
        v9 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_10005AF5C(v8, v9);
        }
      }

      self->_blendStillNeeded = 0;
      v10 = IOMobileFramebufferCopyProperty();
      v11 = v10;
      if (v10 && (v12 = CFGetTypeID(v10), v12 == CFNumberGetTypeID()))
      {
        valuePtr = 0;
        CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr);
        v13 = (valuePtr * 0.0000152587891 * 100.0);
        if (byte_1000AB2F8 == 1)
        {
          v14 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v28 = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "<Notice> TSFD seed %d", buf, 8u);
          }
        }

        v15 = 0;
        v16 = 0;
        v17 = v4 - v13;
        if (v4 < v13)
        {
          v17 = v4 - v13 + 7;
        }

        v18 = v17 >> 3;
        do
        {
          v19 = dispatch_time(0, v15);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10004BB8C;
          block[3] = &unk_100085218;
          v22 = v13;
          v23 = v16;
          v24 = v18;
          block[4] = self;
          dispatch_after(v19, &_dispatch_main_q, block);
          ++v16;
          v15 += 250000000;
        }

        while (v16 != 8);
        if (!v11)
        {
          goto LABEL_29;
        }
      }

      else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_10005AFF4();
        if (!v11)
        {
LABEL_29:
          if (AssertionID)
          {
            IOPMAssertionRelease(AssertionID);
          }

          return;
        }
      }

      else if (!v11)
      {
        goto LABEL_29;
      }

      CFRelease(v11);
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  if (self->_blendStillNeeded)
  {
    p_haveUsedDeferral = &self->_haveUsedDeferral;
    if (!self->_haveUsedDeferral)
    {
LABEL_23:
      v20 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "<Notice> defer TSFD seed once", buf, 2u);
      }

      *p_haveUsedDeferral = 1;
      return;
    }
  }

  [(CommonProduct *)self writeAllCornerTemperatures:v4];
}

- (void)sendMaxTempToDisplayDriver:(int)a3
{
  if (qword_1000ABCA8)
  {
    v3 = a3 / 100.0;
    v4 = *(&qword_1000AB824 + self->tsfdIndex) / 100.0;
    if (IOMobileFramebufferSetBlock())
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_10005B068();
      }
    }

    else if (byte_1000AB2F8 == 1)
    {
      v5 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v7 = v3;
        v8 = 2048;
        v9 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> Sent max temp = %0.2f and center temp TSFD = %0.2f to the display driver", buf, 0x16u);
      }
    }
  }
}

- (void)send2DGridTempsToDisplayDriver:(int *)a3
{
  if (qword_1000ABCA8)
  {
    bzero(v16, 0x708uLL);
    v15 = 1;
    v16[0] = 2;
    v5 = [-[CommonProduct getGridX](self "getGridX")];
    v6 = [-[CommonProduct getGridY](self "getGridY")];
    if ((v6 & 0x80000000) == 0)
    {
      v7 = 0;
      v8 = &v17;
      do
      {
        v9 = v5 + 1;
        v10 = v8;
        v11 = a3;
        if ((v5 & 0x80000000) == 0)
        {
          do
          {
            v12 = *v11++;
            *v10++ = (v12 << 16) / 100;
            --v9;
          }

          while (v9);
        }

        ++v7;
        a3 += v5 + 1;
        v8 += 18;
      }

      while (v7 != v6 + 1);
    }

    if (IOMobileFramebufferSetBlock())
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_10005B09C();
      }
    }

    else if (byte_1000AB2F8 == 1)
    {
      v13 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v14[0] = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "<Notice> Sent the 2D gridVT to the display driver", v14, 2u);
      }
    }
  }
}

- (void)setup2DGridDisplayDriver
{
  if (qword_1000ABCA8)
  {
    v3 = [(CommonProduct *)self getGridX];
    v4 = [(CommonProduct *)self getGridY];
    v5 = [v3 count];
    v6 = [v4 count];
    bzero(v14, 0x708uLL);
    v7 = 0;
    v13 = 1;
    v14[0] = 4;
    do
    {
      if (v7 >= v5)
      {
        v8 = 0;
      }

      else
      {
        v8 = [objc_msgSend(v3 objectAtIndex:{v7), "intValue"}];
      }

      *&v14[4 * v7++ + 1648] = v8;
    }

    while (v7 != 17);
    for (i = 0; i != 17; ++i)
    {
      if (i >= v6)
      {
        v10 = 0;
      }

      else
      {
        v10 = [objc_msgSend(v4 objectAtIndex:{i), "intValue"}];
      }

      *&v14[4 * i + 1716] = v10;
    }

    if (IOMobileFramebufferSetBlock())
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_10005B0D0();
      }
    }

    else if (byte_1000AB2F8 == 1)
    {
      v11 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<Notice> Sent the  grid to the display driver", v12, 2u);
      }
    }
  }

  else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_10005B104();
  }
}

- (id)getGridX
{
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_10005B138();
  }

  return 0;
}

- (id)getGridY
{
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_10005B16C();
  }

  return 0;
}

- (void)removeHotspotTargetOverrides
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  listOfSupervisorControl = self->listOfSupervisorControl;
  v3 = [(NSMutableArray *)listOfSupervisorControl countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(listOfSupervisorControl);
        }

        [*(*(&v7 + 1) + 8 * i) resetTargetTemperature];
      }

      v4 = [(NSMutableArray *)listOfSupervisorControl countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (unint64_t)getPotentialForcedThermalLevel:(unint64_t)a3
{
  if (byte_1000A22A0 == 1 && self->canForceThermalLevels)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    listOfSupervisorControl = self->listOfSupervisorControl;
    v6 = [(NSMutableArray *)listOfSupervisorControl countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = 0;
      v10 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(listOfSupervisorControl);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v8 |= [v12 shouldForceThermalLevelForThreshold:0];
          v9 |= [v12 shouldForceThermalLevelForThreshold:1];
        }

        v7 = [(NSMutableArray *)listOfSupervisorControl countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
      if ((v9 | v8))
      {
        v13 = 236;
        if (v9)
        {
          v13 = 240;
        }

        return *(&self->super.isa + v13);
      }
    }
  }

  return a3;
}

- (BOOL)getPotentialForcedThermalPressureLevel
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  listOfSupervisorControl = self->listOfSupervisorControl;
  v3 = [(NSMutableArray *)listOfSupervisorControl countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(listOfSupervisorControl);
        }

        v5 |= [*(*(&v9 + 1) + 8 * i) shouldEnforceLightThermalPressure];
      }

      v4 = [(NSMutableArray *)listOfSupervisorControl countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (int)sensorIndexFromList:(__CFArray *)a3 fourCharCode:(__CFString *)a4
{
  LODWORD(v4) = -1;
  if (a3 && a4)
  {
    if (CFArrayGetCount(a3) < 1)
    {
LABEL_9:
      LODWORD(v4) = -1;
    }

    else
    {
      v4 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, v4);
        if (ValueAtIndex)
        {
          Value = CFDictionaryGetValue(ValueAtIndex, @"4CharCode");
          if (Value)
          {
            if (CFStringCompare(Value, a4, 0) == kCFCompareEqualTo)
            {
              break;
            }
          }
        }

        if (CFArrayGetCount(a3) <= ++v4)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return v4;
}

- (BOOL)shouldSuppressStandardBehaviors:(__CFDictionary *)a3
{
  v4 = CFPreferencesCopyValue(@"FProgramNumber", @"com.apple.demo-settings", @"mobile", kCFPreferencesCurrentHost);
  if (byte_1000AB2F8 == 1)
  {
    v5 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> FContext %@", buf, 0xCu);
    }
  }

  valuePtr = 0;
  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberIntType, &valuePtr))
      {
        Value = CFDictionaryGetValue(a3, @"suppressionFContexts");
        if (Value)
        {
          v8 = Value;
          if (CFArrayGetCount(Value) >= 1)
          {
            v9 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
              if (ValueAtIndex)
              {
                *buf = 0;
                if (CFNumberGetValue(ValueAtIndex, kCFNumberIntType, buf))
                {
                  if (*buf == -1 || *buf == valuePtr)
                  {
                    v18 = 1;
                    goto LABEL_28;
                  }
                }

                else
                {
                  v13 = qword_1000AB718;
                  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
                  {
                    sub_10005B1A0(&v21, v22, v13);
                  }
                }
              }

              else
              {
                v12 = qword_1000AB718;
                if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
                {
                  sub_10005B1E0(&v19, v20, v12);
                }
              }

              if (++v9 >= CFArrayGetCount(v8))
              {
                goto LABEL_27;
              }
            }
          }
        }

        else if (byte_1000AB2F8 == 1)
        {
          v17 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "<Notice> no FContext array", buf, 2u);
          }
        }

        v18 = 0;
        goto LABEL_28;
      }
    }
  }

  if (byte_1000AB2F8 == 1)
  {
    v14 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "<Notice> no FContext key", buf, 2u);
    }
  }

LABEL_27:
  v18 = 0;
  if (v4)
  {
LABEL_28:
    CFRelease(v4);
  }

  if (byte_1000AB2F8 == 1)
  {
    v15 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v25) = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "<Notice> suppressStandardBehaviors %d", buf, 8u);
    }
  }

  return v18;
}

- (__CFString)copyHeaderForIndex:(int)a3
{
  if (a3 > 6)
  {
    return 0;
  }

  else
  {
    return *(&off_100086298 + a3);
  }
}

- (__CFString)copyFieldCurrentValueForIndex:(int)a3
{
  if (a3 > 2)
  {
    if (a3 <= 4)
    {
      if (a3 != 3)
      {
        v3 = kCFAllocatorDefault;
        v4 = [(CommonProduct *)self dieTempMaxAverage];
        return CFStringCreateWithFormat(v3, 0, @"%d", v4);
      }

      v5 = kCFAllocatorDefault;
      chargerState = self->_chargerState;
      return CFStringCreateWithFormat(v5, 0, @"%d", chargerState);
    }

    if (a3 == 5)
    {
      v3 = kCFAllocatorDefault;
      v4 = [(CommonProduct *)self dieTempFilteredMaxAverage];
      return CFStringCreateWithFormat(v3, 0, @"%d", v4);
    }

    if (a3 == 6)
    {
      v3 = kCFAllocatorDefault;
      v4 = [(CommonProduct *)self dieTempMaxMax];
      return CFStringCreateWithFormat(v3, 0, @"%d", v4);
    }

    return 0;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v5 = kCFAllocatorDefault;
        chargerState = self->thermalPressureLevel;
        return CFStringCreateWithFormat(v5, 0, @"%d", chargerState);
      }

      return 0;
    }

    v7 = kCFAllocatorDefault;
    v8 = 100;
    if (!byte_1000A22A0)
    {
      v8 = 0;
    }
  }

  else
  {
    v7 = kCFAllocatorDefault;
    v8 = qword_1000AB2F0;
  }

  return CFStringCreateWithFormat(v7, 0, @"%d", v8);
}

- (__CFArray)copyHotspotsArray:(id)a3
{
  v3 = [a3 getConfigurationFor:@"hotspots"];
  v4 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  return v4;
}

- (void)replaceOrAppendHotspotEntry:(__CFDictionary *)a3 existingHotspots:(__CFArray *)a4
{
  newValues = a3;
  Value = CFDictionaryGetValue(a3, @"description");
  if (Value)
  {
    v7 = Value;
    Count = CFArrayGetCount(a4);
    if (Count < 1)
    {
LABEL_7:

      CFArrayAppendValue(a4, a3);
    }

    else
    {
      v9 = Count;
      v10 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a4, v10);
        if (ValueAtIndex)
        {
          v12 = CFDictionaryGetValue(ValueAtIndex, @"description");
          if (CFStringCompare(v12, v7, 0) == kCFCompareEqualTo)
          {
            break;
          }
        }

        if (v9 == ++v10)
        {
          goto LABEL_7;
        }
      }

      v15.location = v10;
      v15.length = 1;
      CFArrayReplaceValues(a4, v15, &newValues, 1);
    }
  }
}

@end