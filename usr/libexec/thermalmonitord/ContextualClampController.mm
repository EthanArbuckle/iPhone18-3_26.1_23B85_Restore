@interface ContextualClampController
- (ContextualClampController)initWithParams:(id)params backlightController:(id)controller product:(id)product;
- (__CFString)copyFieldCurrentValueForIndex:(int)index;
- (__CFString)copyHeaderForIndex:(int)index;
- (void)handleFrontCameraPowerStateNotification:(unint64_t)notification;
- (void)handleOasisStateNotification:(unint64_t)notification;
- (void)handleOdeonStateNotification:(unint64_t)notification;
- (void)handleRearCameraPowerStateNotification:(unint64_t)notification;
- (void)update;
- (void)updateInternal;
- (void)updateMaxLIFloorsAndCeilings;
- (void)updatePackageFloorsAndCeilings:(BOOL)ceilings;
@end

@implementation ContextualClampController

- (void)updateMaxLIFloorsAndCeilings
{
  if (byte_1000A22A0)
  {
    if (self->_rearCameraPowered || self->_frontCameraPowered)
    {
      cameraFloorCPU = self->_cameraFloorCPU;
      cameraFloorGPU = self->_cameraFloorGPU;
      v5 = 1;
    }

    else
    {
      cameraFloorCPU = 0;
      v5 = 0;
      cameraFloorGPU = 0;
    }

    if (self->_usesPackagePowerControl)
    {
      [(ContextualClampController *)self updatePackageFloorsAndCeilings:v5];
    }

    else
    {
      if (byte_1000AB2F8 == 1)
      {
        v6 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          v7 = self->_cameraFloorCPU;
          v18 = 136315394;
          *v19 = "[ContextualClampController updateMaxLIFloorsAndCeilings]";
          *&v19[8] = 1024;
          *v20 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<Notice> Clamp: [%s] Setting CPU kDVD1 to floor value%d\n", &v18, 0x12u);
        }
      }

      [qword_1000ABCB0 setCPUPowerFloor:cameraFloorCPU fromDecisionSource:self->_mitigationControllerListID];
      [qword_1000ABCB0 setCPUPowerCeiling:self->_lowTempPerfCapCPU forDVD1Contributor:2];
      [qword_1000ABCB0 setCPUPowerCeiling:self->_lowTempPerfCapCPU fromDecisionSource:self->_mitigationControllerListID];
      [qword_1000ABCB0 updateCPU];
      [qword_1000ABCB0 setGPUPowerFloor:cameraFloorGPU fromDecisionSource:self->_mitigationControllerListID];
      [qword_1000ABCB0 setGPUPowerCeiling:self->_lowTempPerfCapGPU fromDecisionSource:self->_mitigationControllerListID];
      [qword_1000ABCB0 updateGPU];
    }

    backlightController = self->_backlightController;
    lowTempPerfCapBL = self->_lowTempPerfCapBL;
    if (self->_backlightCapIsSoft)
    {
      [(BackLightCC *)backlightController setMaxLICeilingSoft:lowTempPerfCapBL];
    }

    else
    {
      [(BackLightCC *)backlightController setMaxLICeiling:lowTempPerfCapBL];
    }

    if (byte_1000AB2F8 == 1)
    {
      v10 = qword_1000AB718;
      if (!os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      lowTempPerfCapCPU = self->_lowTempPerfCapCPU;
      lowTempPerfCapGPU = self->_lowTempPerfCapGPU;
      v13 = self->_lowTempPerfCapBL;
      v14 = self->_rearCameraPowered || self->_frontCameraPowered;
      v18 = 67110400;
      *v19 = cameraFloorCPU;
      *&v19[4] = 1024;
      *&v19[6] = lowTempPerfCapCPU;
      *v20 = 1024;
      *&v20[2] = cameraFloorGPU;
      v21 = 1024;
      v22 = lowTempPerfCapGPU;
      v23 = 1024;
      v24 = v13;
      v25 = 1024;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<Notice> Clamp: CPU [%d, %d], GPU [%d, %d], BL [%d] (camera %d)", &v18, 0x26u);
      if (byte_1000AB2F8)
      {
LABEL_21:
        v15 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          odeonEnabled = self->_odeonEnabled;
          oasisEnabled = self->_oasisEnabled;
          v18 = 67109376;
          *v19 = odeonEnabled;
          *&v19[4] = 1024;
          *&v19[6] = oasisEnabled;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "<Notice> Clamp: Odeon %d Oasis %d", &v18, 0xEu);
        }
      }
    }
  }
}

- (void)update
{
  if (self->_product)
  {
    clampQueue = self->_clampQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003880;
    block[3] = &unk_100085260;
    block[4] = self;
    dispatch_async(clampQueue, block);
  }
}

- (void)updateInternal
{
  gasGaugeBatteryTemperature = [(CommonProduct *)self->_product gasGaugeBatteryTemperature];
  v4 = sub_10000449C();
  self->_lowTempSyntheticSOC = v4;
  if (self->_syntheticSOCType == 1)
  {
    v5 = sub_100032464();
    v6 = (v5 * 0.4 + v4 * 0.6 + 0.5);
    self->_lowTempSyntheticSOC = v6;
    if (byte_1000AB2F8 == 1)
    {
      v7 = v5;
      v8 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *cf = 67109632;
        *&cf[4] = v4;
        *&cf[8] = 1024;
        *&cf[10] = v7;
        v44 = 1024;
        v45 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<Notice> Clamp: UI SOC %d, GG SOC %d ==> synthetic SOC %d", cf, 0x14u);
      }
    }
  }

  agingController = self->_agingController;
  if (agingController)
  {
    v10 = sub_100032EF0();
    [(AgingController *)agingController takeActionOnUPO:v10 forWRa:sub_100032A5C()];
  }

  if (self->_isAgeAware)
  {
    if (self->_deviceUsesWeightedRa)
    {
      if (byte_1000AB2F8)
      {
        v11 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          *cf = 136315138;
          *&cf[4] = "[ContextualClampController updateInternal]";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<Notice> %s Using weighted Ra\n", cf, 0xCu);
        }
      }

      v12 = sub_100032A5C();
    }

    else
    {
      if (byte_1000AB2F8)
      {
        v14 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          *cf = 136315138;
          *&cf[4] = "[ContextualClampController updateInternal]";
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "<Notice> %s Using max Ra\n", cf, 0xCu);
        }
      }

      v12 = sub_100032C14();
    }

    v13 = v12;
    self->_batteryRaValueTrue = v12;
    v15 = sub_100032EF0();
    v16 = v15;
    if (dword_1000A23A8 < 0)
    {
      dword_1000A23A8 = v15;
    }

    if (byte_1000AB2F8 == 1)
    {
      v17 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        batteryRaValueTrue = self->_batteryRaValueTrue;
        *cf = 67109888;
        *&cf[4] = batteryRaValueTrue;
        *&cf[8] = 1024;
        *&cf[10] = v13;
        v44 = 1024;
        v45 = v13;
        v46 = 1024;
        v47 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "<Notice> Clamp: Ra true %d, effective Ra %d, effective Max Ra %d, count %d", cf, 0x1Au);
      }
    }

    if (!v16)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v13 = 0;
  }

  lowTempClampBL = self->_lowTempClampBL;
  if (!lowTempClampBL)
  {
LABEL_26:
    v20 = 100;
    goto LABEL_27;
  }

  v20 = [(TableDrivenLowTempController *)lowTempClampBL outputForBatteryTemperature:gasGaugeBatteryTemperature stateOfCharge:v4 batteryRaValue:v13];
LABEL_27:
  if (self->_lowTempPerfCapCPU != 100 || self->_lowTempPerfCapGPU != 100 || v20 != self->_lowTempPerfCapBL || self->_lowTempPerfCapCPULegacy != 100)
  {
    self->_lowTempPerfCapGPU = 100;
    self->_lowTempPerfCapBL = v20;
    *&self->_lowTempPerfCapCPULegacy = 0x6400000064;
    [(ContextualClampController *)self updateMaxLIFloorsAndCeilings];
  }

  coldPressureState = self->_coldPressureState;
  switch(coldPressureState)
  {
    case 0x1EuLL:
      coldThresholdHysteresis = self->_coldThresholdHysteresis;
      if (gasGaugeBatteryTemperature <= coldThresholdHysteresis + self->_coldThresholdHeavy)
      {
        goto LABEL_45;
      }

      coldThresholdModerate = self->_coldThresholdModerate;
      goto LABEL_41;
    case 0x14uLL:
      if (gasGaugeBatteryTemperature <= self->_coldThresholdHeavy)
      {
        goto LABEL_45;
      }

      coldThresholdHysteresis = self->_coldThresholdModerate;
      coldThresholdModerate = self->_coldThresholdHysteresis;
LABEL_41:
      v22 = coldThresholdModerate + coldThresholdHysteresis;
LABEL_42:
      if (gasGaugeBatteryTemperature <= v22)
      {
        v25 = 20;
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_49;
    case 0uLL:
      if (gasGaugeBatteryTemperature > self->_coldThresholdHeavy)
      {
        v22 = self->_coldThresholdModerate;
        goto LABEL_42;
      }

LABEL_45:
      v25 = 30;
      goto LABEL_49;
  }

  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100056D74();
  }

  v25 = 0;
LABEL_49:
  lowTempClampPeakPowerPressure = self->_lowTempClampPeakPowerPressure;
  if (lowTempClampPeakPowerPressure && (v27 = [(TableDrivenLowTempController *)lowTempClampPeakPowerPressure outputForBatteryTemperature:gasGaugeBatteryTemperature stateOfCharge:v4 batteryRaValue:v13]) != 0)
  {
    v28 = v27;
    if (sub_100033098(self->_chargerService))
    {
      v29 = 0;
    }

    else
    {
      v29 = v28;
    }
  }

  else
  {
    v29 = 0;
  }

  if (self->_peakPowerPressureLevel != v29)
  {
    v30 = v29;
    self->_peakPowerPressureLevel = v29;
    if (byte_1000A22A0 == 1)
    {
      [+[TGraphSampler sharedInstance](TGraphSampler updateAppleCareState:"updateAppleCareState:value:" value:4, v29];
      if (notify_set_state(self->_peakPowerPressureNotificationToken, v30))
      {
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100056DE8();
        }
      }

      else if (notify_post("com.apple.system.peakpowerpressurelevel") && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100056E24();
      }
    }
  }

  if (v25 != self->_coldPressureState)
  {
    self->_coldPressureState = v25;
    if (byte_1000A22A0 == 1)
    {
      [+[TGraphSampler sharedInstance](TGraphSampler updateAppleCareState:"updateAppleCareState:value:" value:2, v25];
      if (notify_set_state(self->_coldPressureNotificationToken, v25))
      {
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100056E60();
        }
      }

      else if (notify_post("com.apple.system.thermalpressurelevel.cold") && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100056E24();
      }
    }
  }

  lowTempClampStrobe = self->_lowTempClampStrobe;
  if (lowTempClampStrobe)
  {
    v32 = [(TableDrivenLowTempController *)lowTempClampStrobe outputForBatteryTemperature:gasGaugeBatteryTemperature stateOfCharge:self->_lowTempSyntheticSOC batteryRaValue:v13];
    if (v32 != self->_lowTempMaxStrobe && byte_1000A22A0 == 1)
    {
      v33 = v32;
      self->_lowTempMaxStrobe = v32;
      if (byte_1000AB2F8 == 1)
      {
        v34 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          *cf = 67109120;
          *&cf[4] = v33;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "<Notice> Clamp: max strobe now %d", cf, 8u);
        }
      }

      v35 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &self->_lowTempMaxStrobe);
      if (v35)
      {
        v36 = v35;
        if (IORegistryEntrySetCFProperty(self->_strobeService, @"CameraStrobeMaxLoad", v35) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100056E9C();
        }

        CFRelease(v36);
      }
    }
  }

  lowTempClampPPMBaseline = self->_lowTempClampPPMBaseline;
  if (lowTempClampPPMBaseline)
  {
    v38 = [(TableDrivenLowTempController *)lowTempClampPPMBaseline outputForBatteryTemperature:gasGaugeBatteryTemperature stateOfCharge:self->_lowTempSyntheticSOC batteryRaValue:v13];
    if (v38 != self->_lowTempPPMBaseline && byte_1000A22A0 == 1)
    {
      v39 = v38;
      self->_lowTempPPMBaseline = v38;
      if (byte_1000AB2F8 == 1)
      {
        v40 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          *cf = 67109120;
          *&cf[4] = v39;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "<Notice> Clamp: PPM baseline now %d", cf, 8u);
        }
      }

      *cf = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &self->_lowTempPPMBaseline);
      if (*cf)
      {
        v41 = CFArrayCreate(kCFAllocatorDefault, cf, 1, &kCFTypeArrayCallBacks);
        if (v41)
        {
          v42 = v41;
          if (IORegistryEntrySetCFProperty(self->_ppmService, @"BaselineSystemCapability", v41))
          {
            if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
            {
              sub_100056ED8();
            }
          }

          CFRelease(v42);
        }

        CFRelease(*cf);
      }
    }
  }
}

- (ContextualClampController)initWithParams:(id)params backlightController:(id)controller product:(id)product
{
  v57.receiver = self;
  v57.super_class = ContextualClampController;
  v8 = [(ContextualClampController *)&v57 init];
  v9 = v8;
  if (!v8)
  {
    return v9;
  }

  v8->_product = product;
  v8->_backlightController = controller;
  v10 = dispatch_queue_create("com.apple.ThermalMonitor.context.clamp", 0);
  v9->_odeonFloorCPUPower = 0;
  v9->_clampQueue = v10;
  v9->_frontCameraPowered = 0;
  v9->_odeonEnabled = 0;
  v9->_oasisEnabled = 0;
  v9->_oasisFloorCPUPower = 0;
  requestListID = [qword_1000ABCB0 requestListID];
  v9->_cameraFloorCPU = 0;
  v9->_mitigationControllerListID = requestListID;
  v9->_cameraFloorPackagePower = 0;
  v9->_cameraFloorGPU = 0;
  v9->_usesPackagePowerControl = 0;
  v9->_coldPressureState = 0;
  v9->_peakPowerPressureLevel = 0;
  *&v9->_lowTempPerfCapCPU = 0x6400000064;
  v9->_lowTempPerfCapBL = 100;
  v9->_lowTempPPMBaseline = 100;
  *&v9->_syntheticSOCType = 0;
  v9->_ppmService = 0;
  v9->_cameraFloorDetails = 0;
  v9->_hasCameraFloorDetails = 0;
  *(&v9->_lowTempSyntheticSOC + 1) = 0;
  if (!params)
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100056CC0();
    }

    v13 = 0;
    goto LABEL_82;
  }

  sub_100002A20(params, @"cameraFloorCPU", kCFNumberIntType, &v9->_cameraFloorCPU);
  sub_100002A20(params, @"cameraFloorGPU", kCFNumberIntType, &v9->_cameraFloorGPU);
  sub_100002A20(params, @"cameraFloorPackagePower", kCFNumberIntType, &v9->_cameraFloorPackagePower);
  if (v9->_cameraFloorPackagePower >= 1)
  {
    v9->_usesPackagePowerControl = 1;
  }

  sub_100002A20(params, @"odFloorCPU", kCFNumberIntType, &v9->_odeonFloorCPUPower);
  sub_100002A20(params, @"oasisFloorCPU", kCFNumberIntType, &v9->_oasisFloorCPUPower);
  if (sub_100031D64(params, @"usesCameraFloorPackageDetails", 0))
  {
    v12 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "<Notice> Clamp: using detailed budgets for package power camera floor", buf, 2u);
    }

    v9->_cameraFloorDetails = 0x63616D666C6F6F72;
    v9->_hasCameraFloorDetails = 1;
  }

  v13 = sub_100031D64(params, @"usesFrontCameraFloors", 0);
  v9->_isAgeAware = [params objectForKey:@"isAgeAware"] != 0;
  v14 = [params valueForKey:@"useWeightedRa"];
  v9->_deviceUsesWeightedRa = v14 != 0;
  v15 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
  {
    isAgeAware = v9->_isAgeAware;
    *buf = 67109376;
    *v59 = isAgeAware;
    *&v59[4] = 1024;
    *&v59[6] = v14 != 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "<Notice> Clamp: isAgeAware %d useWeightedRa %d\n", buf, 0xEu);
  }

  v9->_backlightCapIsSoft = v9->_isAgeAware;
  v17 = [params objectForKey:@"lowParamsBL"];
  if (v17)
  {
    v9->_lowTempClampBL = [[TableDrivenLowTempController alloc] initWithParams:v17];
  }

  v18 = [params objectForKey:@"batteryParams"];
  LODWORD(out_token) = 0;
  token = 0;
  if (!v18)
  {
    if (byte_1000AB2F8)
    {
      v21 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "<Notice> No Battery parameters set for platform", buf, 2u);
      }
    }

    goto LABEL_32;
  }

  if (byte_1000AB2F8)
  {
    v19 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *v59 = "[ContextualClampController initWithParams:backlightController:product:]";
      *&v59[8] = 2112;
      v60 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "<Notice> %s Aging Controller params: %@", buf, 0x16u);
    }
  }

  if ([v18 objectForKey:@"usesAgingController"] && objc_msgSend(objc_msgSend(v18, "objectForKeyedSubscript:", @"usesAgingController"), "BOOLValue") && (sub_100033080() & 1) == 0)
  {
    v22 = [AgingController alloc];
    v23 = sub_100032A5C();
    v9->_agingController = [(AgingController *)v22 initWithParams:v18 currentWRa:v23 currentUPOCount:sub_100032EF0()];
  }

  else
  {
    v20 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "<Notice> Aging controller disabled for platform", buf, 2u);
    }
  }

  v24 = [v18 objectForKey:@"wRaP0LimitsPerChemId"];
  if (!v24)
  {
LABEL_32:
    v27 = 500;
    goto LABEL_38;
  }

  v25 = [v24 objectForKey:{-[NSNumber stringValue](+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", sub_100032A18()), "stringValue")}];
  if (v25)
  {
    intValue = [v25 intValue];
  }

  else
  {
    v28 = [v24 objectForKeyedSubscript:@"-1"];
    v29 = os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR);
    if (!v28)
    {
      if (v29)
      {
        sub_10005696C();
      }

      v27 = -1;
      goto LABEL_38;
    }

    if (v29)
    {
      sub_1000568F8();
    }

    intValue = [v28 intValue];
  }

  v27 = intValue;
LABEL_38:
  if (notify_register_check("com.apple.system.batteryHealth.p0Threshold", &out_token))
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000569E0();
    }
  }

  else
  {
    if (notify_set_state(out_token, v27))
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100056A5C();
      }
    }

    else
    {
      notify_post("com.apple.system.batteryHealth.p0Threshold");
    }

    if (byte_1000AB2F8 == 1)
    {
      v30 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v59 = v27;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "<Notice> p0Threshold set to %llu\n", buf, 0xCu);
      }
    }
  }

  if (notify_register_check("com.apple.system.batteryHealth.UPOAware", &token))
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100056AD8();
    }
  }

  else
  {
    if (notify_set_state(token, 0x4E4FuLL))
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100056B54();
      }
    }

    else
    {
      notify_post("com.apple.system.batteryHealth.UPOAware");
    }

    if (byte_1000AB2F8 == 1)
    {
      v31 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "<Notice> Battery Health is influenced by UPO mitigation count", buf, 2u);
      }
    }
  }

  sub_100002A20(params, @"syntheticSOCType", kCFNumberIntType, &v9->_syntheticSOCType);
  if (byte_1000AB2F8 == 1)
  {
    v32 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      syntheticSOCType = v9->_syntheticSOCType;
      *buf = 67109120;
      *v59 = syntheticSOCType;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "<Notice> Clamp: syntheticSOCType %d", buf, 8u);
    }
  }

  v34 = [params objectForKey:@"lowParamsStrobe"];
  if (v34)
  {
    v35 = [[TableDrivenLowTempController alloc] initWithParams:v34];
    v9->_lowTempClampStrobe = v35;
    if (v35)
    {
      v36 = IOServiceMatching("AppleDieTempController");
      MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v36);
      v9->_strobeService = MatchingService;
      if (!MatchingService)
      {
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100056BD0();
        }

        v9->_lowTempClampStrobe = 0;
      }
    }
  }

  v38 = [params objectForKey:@"lowParamsPPMBaseline"];
  if (v38)
  {
    v39 = [[TableDrivenLowTempController alloc] initWithParams:v38];
    v9->_lowTempClampPPMBaseline = v39;
    if (v39)
    {
      v40 = IOServiceMatching("ApplePPM");
      v41 = IOServiceGetMatchingService(kIOMainPortDefault, v40);
      v9->_ppmService = v41;
      if (!v41)
      {
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100056C0C();
        }

        v9->_lowTempClampPPMBaseline = 0;
      }
    }
  }

  v42 = sub_100031CAC("IOPMPowerSource", @"BatteryInstalled", kCFBooleanTrue);
  v9->_chargerService = v42;
  if (!v42 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100056C48();
  }

  v43 = [params objectForKey:@"lowNotificationLimits"];
  v44 = v43;
  if (v43)
  {
    sub_100002A20(v43, @"tempLimit1", kCFNumberIntType, &v9->_coldThresholdModerate);
    sub_100002A20(v44, @"tempLimit2", kCFNumberIntType, &v9->_coldThresholdHeavy);
    sub_100002A20(v44, @"tempLimitHysteresis", kCFNumberIntType, &v9->_coldThresholdHysteresis);
  }

  else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100056C84();
  }

  v45 = [params objectForKey:@"lowParamsPeakPower"];
  if (v45)
  {
    v9->_lowTempClampPeakPowerPressure = [[TableDrivenLowTempController alloc] initWithParams:v45];
  }

LABEL_82:
  objc_initWeak(buf, v9);
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100038054;
  v54[3] = &unk_100085100;
  objc_copyWeak(&v55, buf);
  sub_1000333D4("com.apple.isp.backcamerapower", &v9->_rearCameraPowerStateToken, v9->_clampQueue, v54);
  sub_1000333D4("com.apple.isp.backtelecamerapower", &v9->_rearTeleCameraPowerStateToken, v9->_clampQueue, v54);
  sub_1000333D4("com.apple.isp.backsuperwidecamerapower", &v9->_rearSuperWideCameraPowerStateToken, v9->_clampQueue, v54);
  if (v13)
  {
    objc_initWeak(&out_token, v9);
    clampQueue = v9->_clampQueue;
    v48 = _NSConcreteStackBlock;
    v49 = 3221225472;
    v50 = sub_1000380A8;
    v51 = &unk_100085100;
    objc_copyWeak(&v52, &out_token);
    sub_1000333D4("com.apple.isp.frontcamerapower", &v9->_frontCameraPowerStateToken, clampQueue, &v48);
    objc_destroyWeak(&v52);
    objc_destroyWeak(&out_token);
  }

  if (notify_register_check("com.apple.system.thermalpressurelevel.cold", &v9->_coldPressureNotificationToken) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100056CFC();
  }

  if (notify_register_check("com.apple.system.peakpowerpressurelevel", &v9->_peakPowerPressureNotificationToken) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100056D38();
  }

  [[TGraphSampler addtGraphDataSource:v48 sharedInstance:v49], "addtGraphDataSource:", v9];
  objc_destroyWeak(&v55);
  objc_destroyWeak(buf);
  return v9;
}

- (void)updatePackageFloorsAndCeilings:(BOOL)ceilings
{
  if (ceilings)
  {
    cameraFloorPackagePower = self->_cameraFloorPackagePower;
  }

  else
  {
    cameraFloorPackagePower = 0;
  }

  if (self->_hasCameraFloorDetails)
  {
    [qword_1000ABCB0 setPackagePowerBudgetDirect:cameraFloorPackagePower withDetails:self->_cameraFloorDetails];
  }

  else
  {
    [qword_1000ABCB0 setPackagePowerFloor:cameraFloorPackagePower fromDecisionSource:self->_mitigationControllerListID];
    [qword_1000ABCB0 updatePackage];
  }

  if (byte_1000AB2F8 == 1)
  {
    v4 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = cameraFloorPackagePower;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<Notice> Clamp: PackagePowerFloor [%d]", v5, 8u);
    }
  }
}

- (void)handleRearCameraPowerStateNotification:(unint64_t)notification
{
  if (byte_1000AB2F8 == 1)
  {
    v5 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      notificationCopy = notification;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> Clamp: rear camera state %lld", &v7, 0xCu);
    }
  }

  v6 = notification != 0;
  if (self->_rearCameraPowered != v6)
  {
    self->_rearCameraPowered = v6;
    [(ContextualClampController *)self updateMaxLIFloorsAndCeilings];
  }
}

- (void)handleFrontCameraPowerStateNotification:(unint64_t)notification
{
  if (byte_1000AB2F8 == 1)
  {
    v5 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      notificationCopy = notification;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> Clamp: front camera state %lld", &v7, 0xCu);
    }
  }

  v6 = notification != 0;
  if (self->_frontCameraPowered != v6)
  {
    self->_frontCameraPowered = v6;
    [(ContextualClampController *)self updateMaxLIFloorsAndCeilings];
  }
}

- (void)handleOdeonStateNotification:(unint64_t)notification
{
  if (byte_1000AB2F8 == 1)
  {
    v5 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      notificationCopy = notification;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> Clamp: Odeon state %lld", &v7, 0xCu);
    }
  }

  v6 = notification != 0;
  if (self->_odeonEnabled != v6)
  {
    self->_odeonEnabled = v6;
    [(ContextualClampController *)self updateMaxLIFloorsAndCeilings];
  }
}

- (void)handleOasisStateNotification:(unint64_t)notification
{
  if (byte_1000AB2F8 == 1)
  {
    v5 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      notificationCopy = notification;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> Clamp: Oasis state %lld", &v7, 0xCu);
    }
  }

  v6 = notification != 0;
  if (self->_oasisEnabled != v6)
  {
    self->_oasisEnabled = v6;
    [(ContextualClampController *)self updateMaxLIFloorsAndCeilings];
  }
}

- (__CFString)copyHeaderForIndex:(int)index
{
  if (index > 8)
  {
    return 0;
  }

  else
  {
    return off_1000860F0[index];
  }
}

- (__CFString)copyFieldCurrentValueForIndex:(int)index
{
  if (index <= 3)
  {
    if (index > 1)
    {
      v5 = kCFAllocatorDefault;
      if (index == 2)
      {
        lowTempPerfCapCPU = self->_lowTempPerfCapCPU;
      }

      else
      {
        lowTempPerfCapCPU = self->_lowTempPerfCapGPU;
      }
    }

    else
    {
      if (!index)
      {
        v3 = kCFAllocatorDefault;
        coldPressureState = self->_coldPressureState;
        return CFStringCreateWithFormat(v3, 0, @"%lld", coldPressureState);
      }

      if (index != 1)
      {
        return 0;
      }

      v5 = kCFAllocatorDefault;
      lowTempPerfCapCPU = self->_rearCameraPowered;
    }

    return CFStringCreateWithFormat(v5, 0, @"%d", lowTempPerfCapCPU);
  }

  if (index <= 5)
  {
    v5 = kCFAllocatorDefault;
    if (index == 4)
    {
      lowTempPerfCapCPU = self->_lowTempPerfCapBL;
    }

    else
    {
      lowTempPerfCapCPU = self->_lowTempSyntheticSOC;
    }

    return CFStringCreateWithFormat(v5, 0, @"%d", lowTempPerfCapCPU);
  }

  switch(index)
  {
    case 6:
      v5 = kCFAllocatorDefault;
      lowTempPerfCapCPU = self->_batteryRaValueTrue;
      return CFStringCreateWithFormat(v5, 0, @"%d", lowTempPerfCapCPU);
    case 7:
      v5 = kCFAllocatorDefault;
      lowTempPerfCapCPU = self->_frontCameraPowered;
      return CFStringCreateWithFormat(v5, 0, @"%d", lowTempPerfCapCPU);
    case 8:
      v3 = kCFAllocatorDefault;
      coldPressureState = self->_peakPowerPressureLevel;
      return CFStringCreateWithFormat(v3, 0, @"%lld", coldPressureState);
  }

  return 0;
}

@end