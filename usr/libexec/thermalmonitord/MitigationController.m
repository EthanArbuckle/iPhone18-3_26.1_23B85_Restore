@interface MitigationController
- (BOOL)getGPUUtilization:(int *)a3;
- (__CFString)copyFieldCurrentValueForIndex:(int)a3;
- (__CFString)copyHeaderForIndex:(int)a3;
- (float)getCLPCPackagePowerCPUSplitFraction;
- (id)initForFastLoop:(BOOL)a3 noDisplay:(BOOL)a4 powerSaveParams:(id)a5 powerZoneParams:(id)a6;
- (int)getCLPCWriteToReadPower_8_24_mW:(__CFString *)a3;
- (int)getCurrentCPUPower;
- (int)getCurrentGPUPower;
- (int)getCurrentPackagePower;
- (int)getPackageCPUPowerTarget;
- (int)getPackageGPUPowerTarget;
- (int)getPackagePowerZoneMetric;
- (int)requestListID;
- (int)setServiceProperty:(unsigned int)a3 key:(__CFString *)a4 value:(int)a5 scaleToFixedPoint:(BOOL)a6;
- (void)setCPMSMitigationsEnabled:(BOOL)a3;
- (void)setCPULowPowerTarget:(int)a3;
- (void)setCPUPowerCeiling:(int)a3 fromDecisionSource:(int)a4;
- (void)setCPUPowerZoneTarget:(int)a3;
- (void)setDieTempControllerProperty:(__CFString *)a3 level:(int)a4 scaleToFixedPoint:(BOOL)a5;
- (void)setGPUPowerZoneTarget:(int)a3;
- (void)setMaxCPUPowerTarget:(int)a3 useLegacyPath:(BOOL)a4 setProperty:(__CFString *)a5;
- (void)setMaxGraphicsDrivePowerTarget:(int)a3;
- (void)setMaxPackagePower:(int)a3;
- (void)setPackageLowPowerTarget;
- (void)setPackagePowerZoneTarget;
- (void)updateCPU;
- (void)updateGPU;
- (void)updatePackage;
- (void)updatePowerSaveActive;
@end

@implementation MitigationController

- (void)updateCPU
{
  if ((byte_1000AB2F9 & 1) == 0)
  {
    cpuMitigationQueue = self->cpuMitigationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002FF70;
    block[3] = &unk_100085260;
    block[4] = self;
    dispatch_async(cpuMitigationQueue, block);
  }
}

- (void)updateGPU
{
  if ((byte_1000AB2F9 & 1) == 0 && !self->graphicsUpdateInFlight)
  {
    gpuMitigationQueue = self->gpuMitigationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100030384;
    block[3] = &unk_100085260;
    block[4] = self;
    dispatch_async(gpuMitigationQueue, block);
  }
}

- (int)getCurrentCPUPower
{
  *&dword_1000AB998 = result / 1000.0;
  if (!self->_usesPowerZoneControl)
  {
    return -1;
  }

  return result;
}

- (int)getCurrentGPUPower
{
  v4 = 0;
  if (!self->_noDisplay)
  {
    sgxDevice = self->sgxDevice;
    if (sgxDevice)
    {
      sub_1000068B4(sgxDevice, @"FilteredGPUPower", &v4, 1);
      result = v4;
      goto LABEL_6;
    }

    result = os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_6;
    }

    sub_100054CA0();
  }

  result = 0;
LABEL_6:
  dword_1000AB938[0] = result / 1000.0;
  return result;
}

- (int)getCurrentPackagePower
{
  if (!self->_usesPowerZoneControl)
  {
    return -1;
  }

  [+[PowerZoneTelemetry sharedInstance](PowerZoneTelemetry getCurrentPackagePower:v2];
  return (v4 * 1000.0);
}

- (int)getPackagePowerZoneMetric
{
  *&dword_1000AB99C = result;
  if (!self->_usesPackageControl)
  {
    return -1;
  }

  return result;
}

- (int)getPackageCPUPowerTarget
{
  if (self->_usesPowerZoneControl)
  {
  }

  else
  {
    return -1;
  }
}

- (int)getPackageGPUPowerTarget
{
  if (self->_usesPowerZoneControl)
  {
  }

  else
  {
    return -1;
  }
}

- (id)initForFastLoop:(BOOL)a3 noDisplay:(BOOL)a4 powerSaveParams:(id)a5 powerZoneParams:(id)a6
{
  v33.receiver = self;
  v33.super_class = MitigationController;
  v10 = [(MitigationController *)&v33 init];
  v11 = v10;
  if (v10)
  {
    v10->listPosition = 1;
    memset_pattern16(v10->ceilingListDVD1, &unk_100067460, 0x18uLL);
    memset_pattern16(v11->ceilingListCPU, &unk_100067460, 0x18uLL);
    memset_pattern16(v11->ceilingListSGX, &unk_100067460, 0x18uLL);
    memset_pattern16(v11->ceilingListPackage, &unk_100067470, 0x18uLL);
    for (i = 0; i != 24; i += 4)
    {
      v13 = (v11 + i);
      v13[34] = 0;
      v13[40] = 0;
      v13[46] = 0;
    }

    v11->cpuMitigationQueue = dispatch_queue_create("com.apple.thermalmonitor.cpuMitigationQueue", 0);
    v11->gpuMitigationQueue = dispatch_queue_create("com.apple.thermalmonitor.gpuMitigationQueue", 0);
    v11->packageControlQueue = dispatch_queue_create("com.apple.thermalmonitor.packageControlQueue", 0);
    v11->_noDisplay = a4;
    if (!a4)
    {
      v11->sgxDevice = sub_100031CAC("IOAcceleratorES", 0, 0);
    }

    v14 = sub_100031CAC("AppleCLPC", 0, 0);
    v11->clpcService = v14;
    if (!v14 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100054AB0();
    }

    v15 = sub_100031CAC("ApplePMGR", 0, 0);
    v11->pmgrService = v15;
    if (!v15 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100054AE4();
    }

    v11->graphicsUpdateInFlight = 0;
    v11->connectsToDieTempCtlDriver = a3;
    if (byte_1000ABC38 == 1)
    {
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:18 atSMCIndex:@"zETM", 18];
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:27 atSMCIndex:@"zETM", 27];
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:0 atSMCIndex:@"zETM", 0];
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:24 atSMCIndex:@"zETM", 24];
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:25 atSMCIndex:@"zETM", 25];
    }

    if (a6)
    {
      v11->_maxCPUPower = [objc_msgSend(a6 objectForKey:{@"CPUMaxPower", "intValue"}];
      v11->_maxGPUPower = [objc_msgSend(a6 objectForKey:{@"GPUMaxPower", "intValue"}];
      v11->_maxPackagePower = [objc_msgSend(a6 objectForKey:{@"PackageMaxPower", "intValue"}];
      v11->_usesPowerZoneControl = 1;
      v11->_usesPackageControl = [objc_msgSend(a6 objectForKey:{@"usesPackageControl", "BOOLValue"}];
      if ((byte_1000AB2F9 & 1) == 0)
      {
        [(MitigationController *)v11 setGPUPowerZoneTarget:100];
      }
    }

    if (a5)
    {
      objc_initWeak(&location, v11);
      cpuMitigationQueue = v11->cpuMitigationQueue;
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10002FB44;
      v30[3] = &unk_100085100;
      objc_copyWeak(&v31, &location);
      sub_1000333D4("com.apple.system.lowpowermode", &v11->_powerSaveToken, cpuMitigationQueue, v30);
      v17 = v11->cpuMitigationQueue;
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10002FBA8;
      v28[3] = &unk_100085100;
      objc_copyWeak(&v29, &location);
      sub_1000333D4("com.apple.system.highpowermode", &v11->_proModeToken, v17, v28);
      if (v11->_usesPowerZoneControl)
      {
        if (v11->_usesPackageControl)
        {
          v18 = [objc_msgSend(a5 objectForKey:{@"PackageLowPowerTarget", "intValue"}];
          v19 = 224;
        }

        else
        {
          v18 = [objc_msgSend(a5 objectForKey:{@"CPULowPowerTarget", "intValue"}];
          v19 = 216;
        }
      }

      else
      {
        v18 = [objc_msgSend(a5 objectForKey:{@"maxCPU", "intValue"}];
        v19 = 212;
      }

      *(&v11->super.isa + v19) = v18;
      v20 = [objc_msgSend(a5 objectForKey:{@"maxGPU", "intValue"}];
      if (v11->connectsToDieTempCtlDriver)
      {
        v21 = v20;
      }

      else
      {
        v21 = 100;
      }

      v11->_powerSaveMaxSGX = v21;
      [(MitigationController *)v11 updatePowerSaveActive];
      if (byte_1000AB2F8 == 1)
      {
        v22 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          powerSaveMaxDVD1 = v11->_powerSaveMaxDVD1;
          powerSaveCPUPowerTarget = v11->_powerSaveCPUPowerTarget;
          powerSaveMaxSGX = v11->_powerSaveMaxSGX;
          powerSavePackagePowerTarget = v11->_powerSavePackagePowerTarget;
          *buf = 136316162;
          v35 = "[MitigationController initForFastLoop:noDisplay:powerSaveParams:powerZoneParams:]";
          v36 = 1024;
          v37 = powerSaveMaxDVD1;
          v38 = 1024;
          v39 = powerSaveMaxSGX;
          v40 = 1024;
          v41 = powerSaveCPUPowerTarget;
          v42 = 1024;
          v43 = powerSavePackagePowerTarget;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "<Notice> %s: powerSave params %d DVD1, %d SGX, LPM CPU power target %d, LPM package power target %d", buf, 0x24u);
        }
      }

      objc_destroyWeak(&v29);
      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
    }

    else
    {
      *&v11->_powerSaveActive = 0;
    }

    v11->DVD1Level = -1;
    *&v11->CPULevel = -1;
    *&v11->DVD1Contributors[0].DVD1LevelRequested = xmmword_100067450;
    *&v11->DVD1Contributors[2].DVD1LevelRequested = xmmword_100067450;
    v11->_cpmsMitigationsEnabled = 0;
    [+[TGraphSampler sharedInstance](TGraphSampler addtGraphDataSource:"addtGraphDataSource:", v11];
  }

  return v11;
}

- (BOOL)getGPUUtilization:(int *)a3
{
  *a3 = 0;
  if (!self->_noDisplay)
  {
    sgxDevice = self->sgxDevice;
    if (sgxDevice && (byte_1000AB218 & 1) == 0)
    {
      byte_1000AB218 = sub_1000068B4(sgxDevice, @"GetGPUUtilization", a3, 1) ^ 1;
    }

    else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100054B18();
    }
  }

  return (byte_1000AB218 & 1) == 0;
}

- (int)requestListID
{
  result = self->listPosition;
  if (result > 5 || result == 0)
  {
    self->listPosition = 0;
    v5 = qword_1000AB718;
    v6 = os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR);
    result = 0;
    if (v6)
    {
      *v7 = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "<Error> MC: End of list", v7, 2u);
      result = self->listPosition;
    }
  }

  self->listPosition = result + 1;
  return result;
}

- (void)setCPUPowerCeiling:(int)a3 fromDecisionSource:(int)a4
{
  v4 = 40;
  if (self->_usesPowerZoneControl)
  {
    v4 = 64;
  }

  *(&self->super.isa + 4 * a4 + v4) = a3;
}

- (int)getCLPCWriteToReadPower_8_24_mW:(__CFString *)a3
{
  clpcService = self->clpcService;
  if (!clpcService || !self->_usesPowerZoneControl)
  {
    return -1;
  }

  v10 = v3;
  v11 = v4;
  v9 = 0;
  if ((sub_1000067F0(clpcService, a3, &v9) & 1) == 0 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100054B4C(a3);
  }

  return ((v9 * 0.000000059605) * 1000.0);
}

- (float)getCLPCPackagePowerCPUSplitFraction
{
  clpcService = self->clpcService;
  if (clpcService)
  {
    v5 = 0;
    if (sub_1000068B4(clpcService, @"~pkg-power-split-cpu-fraction", &v5, 1))
    {
      return v5 * 0.000015259;
    }

    else
    {
      v3 = 0.5;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100054BD8();
      }
    }
  }

  else
  {
    v3 = 0.5;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100054C6C();
    }
  }

  return v3;
}

- (void)setCPUPowerZoneTarget:(int)a3
{
  if (a3 != -1)
  {
    v12 = v3;
    v8 = 1374389535 * self->_maxCPUPower * a3;
    v9 = (v8 >> 37) + (v8 >> 63);
    self->_currentRealCPUPowerTarget = v9;
    if (self->_isHipEngaged && self->_currentHipPowerTarget != v9)
    {
      if (a3 <= 99)
      {
        v11 = v9;
      }

      else
      {
        v11 = 65000;
      }

      self->_currentHipPowerTarget = self->_currentRealCPUPowerTarget;
    }

    else
    {
      if (a3 <= 99)
      {
        v10 = v9;
      }

      else
      {
        v10 = 65000;
      }

      if (self->_currentHipPowerTarget != 65000)
      {
        self->_currentHipPowerTarget = 65000;
      }
    }
  }
}

- (void)setGPUPowerZoneTarget:(int)a3
{
  if (a3 != -1)
  {
    v3 = 1374389535 * self->_maxGPUPower * a3;
    v4 = (v3 >> 37) + (v3 >> 63);
    self->_currentRealGPUPowerTarget = v4;
    if (a3 == 100)
    {
      [(MitigationController *)self setMaxGraphicsDrivePowerTarget:65000];
    }

    else
    {
      [(MitigationController *)self setMaxGraphicsDrivePowerTarget:v4];
    }
  }
}

- (void)setPackagePowerZoneTarget
{
  CPULevel = self->CPULevel;
  v4 = 1374389535 * self->_maxCPUPower * CPULevel;
  v5 = (v4 >> 37) + (v4 >> 63);
  self->_currentRealCPUPowerTarget = v5;
  SGXLevel = self->SGXLevel;
  v7 = 1374389535 * self->_maxGPUPower * SGXLevel;
  v8 = (v7 >> 37) + (v7 >> 63);
  self->_currentRealGPUPowerTarget = v8;
  if (CPULevel > 99)
  {
    v5 = 65000;
  }

  if (SGXLevel > 99)
  {
    v8 = 65000;
  }

  v9 = v8 + v5;
  if (v9 >= 65000)
  {
    v10 = 65000;
  }

  else
  {
    v10 = v9;
  }

  if (v10 != self->_packagePowerZoneTarget)
  {
    LODWORD(v2) = vcvtd_n_s64_f64(v10 / 1000.0, 0x18uLL);
    if (self->_isHipEngaged && self->_currentHipPowerTarget != v10)
    {
      self->_currentHipPowerTarget = v10;
    }

    else
    {
      if (self->_currentHipPowerTarget != 65000)
      {
        self->_currentHipPowerTarget = 65000;
      }
    }

    self->_packagePowerZoneTarget = v10;
  }
}

- (void)setCPMSMitigationsEnabled:(BOOL)a3
{
  if (self->_usesPackageControl)
  {
    v3 = a3;
    v5 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "dis";
      if (v3)
      {
        v6 = "en";
      }

      v7 = 136315138;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> %sabling CPMS mitigations in MitigationController", &v7, 0xCu);
    }

    self->_cpmsMitigationsEnabled = v3;
  }
}

- (void)updatePackage
{
  packageControlQueue = self->packageControlQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000309A8;
  block[3] = &unk_100085260;
  block[4] = self;
  dispatch_async(packageControlQueue, block);
}

- (void)setMaxPackagePower:(int)a3
{
  if (self->_usesPackageControl)
  {
    if (byte_1000AB2F8 == 1)
    {
      v5 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v6[0] = 67109120;
        v6[1] = a3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> Setting max package power in mitigation controller: %d", v6, 8u);
      }
    }

    self->_maxPackagePower = a3;
  }
}

- (void)setMaxGraphicsDrivePowerTarget:(int)a3
{
  if (!self->_noDisplay)
  {
    self->graphicsUpdateInFlight = 1;
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, @"SetMaxGPUAbsolutePower", kCFBooleanTrue);
    valuePtr = a3;
    self->_currentGPUPowerTarget = a3;
    v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v6)
    {
      v7 = v6;
      CFDictionarySetValue(Mutable, @"AbsoluteTarget", v6);
      if (byte_1000AB2F8 == 1)
      {
        v8 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          currentGPUPowerTarget = self->_currentGPUPowerTarget;
          *buf = 67109120;
          v12 = currentGPUPowerTarget;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<Notice> GPUCC Set GPU power to %d", buf, 8u);
        }
      }

      if (IORegistryEntrySetCFProperties(self->sgxDevice, Mutable))
      {
        sub_100054D58();
      }

      CFRelease(v7);
    }

    CFRelease(Mutable);
    self->graphicsUpdateInFlight = 0;
  }
}

- (void)setMaxCPUPowerTarget:(int)a3 useLegacyPath:(BOOL)a4 setProperty:(__CFString *)a5
{
  self->_currentCPUPowerTarget = a3;
  p_currentCPUPowerTarget = &self->_currentCPUPowerTarget;
  if (self->clpcService)
  {
    v7 = a4;
    v9 = 16777216.0;
    if (a4)
    {
      v9 = 65536.0;
    }

    valuePtr = (a3 / 1000.0 * v9);
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v11 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v11)
    {
      if (v7)
      {
        v12 = @"CPUPowerTarget";
      }

      else
      {
        v12 = a5;
      }

      CFDictionaryAddValue(Mutable, v12, v11);
      if (IORegistryEntrySetCFProperties(self->clpcService, Mutable))
      {
        sub_100054DF0(p_currentCPUPowerTarget);
      }

      else if (byte_1000AB2F8 == 1)
      {
        v13 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *p_currentCPUPowerTarget;
          *buf = 67109120;
          v17 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "<Notice> CPUCC Set CPU power to %d", buf, 8u);
        }
      }
    }

    CFRelease(v11);
    CFRelease(Mutable);
  }

  else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100054E94();
  }
}

- (void)setCPULowPowerTarget:(int)a3
{
  p_currentCPULowPowerTarget = &self->_currentCPULowPowerTarget;
  if (self->_currentCPULowPowerTarget != a3)
  {
    self->_currentCPULowPowerTarget = a3;
    if (self->clpcService)
    {
      valuePtr = vcvtd_n_u64_f64(a3 / 1000.0, 0x18uLL);
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v6)
      {
        if (IORegistryEntrySetCFProperties(self->clpcService, Mutable))
        {
          sub_100054EC8(p_currentCPULowPowerTarget);
        }

        else if (byte_1000AB2F8 == 1)
        {
          v7 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
          {
            v8 = *p_currentCPULowPowerTarget;
            *buf = 67109120;
            v11 = v8;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> CPUCC Set CPU low power target to %d", buf, 8u);
          }
        }
      }

      CFRelease(v6);
      CFRelease(Mutable);
    }

    else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100054E94();
    }
  }
}

- (void)updatePowerSaveActive
{
  v3 = [(MitigationController *)self lowerPowerModeActive];
  v4 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<Notice> update power save active: %{BOOL}u", v5, 8u);
  }

  [(MitigationController *)self setPowerSaveActive:v3];
  *&dword_1000AB980 = [(MitigationController *)self powerSaveActive];
  [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper forceSensorExchangeDataToSMC];
}

- (void)setPackageLowPowerTarget
{
  if (self->_powerSaveActive)
  {
    powerSavePackagePowerTarget = self->_powerSavePackagePowerTarget;
  }

  else
  {
    powerSavePackagePowerTarget = 65000;
  }

  if (powerSavePackagePowerTarget != self->_packageLowPowerTarget && self->_powerSavePackagePowerTarget != 255000)
  {
    LODWORD(v2) = vcvtd_n_s64_f64(powerSavePackagePowerTarget / 1000.0, 0x18uLL);
    self->_packageLowPowerTarget = powerSavePackagePowerTarget;
  }
}

- (void)setDieTempControllerProperty:(__CFString *)a3 level:(int)a4 scaleToFixedPoint:(BOOL)a5
{
  if (dword_1000AB21C || (dword_1000AB21C = sub_100031CAC("AppleDieTempController", 0, 0)) != 0)
  {

    [MitigationController setServiceProperty:"setServiceProperty:key:value:scaleToFixedPoint:" key:? value:? scaleToFixedPoint:?];
  }

  else
  {
    sub_100054F6C();
  }
}

- (int)setServiceProperty:(unsigned int)a3 key:(__CFString *)a4 value:(int)a5 scaleToFixedPoint:(BOOL)a6
{
  valuePtr = a5;
  if (a6)
  {
    if (a5 <= 99)
    {
      v8 = (a5 << 16) / 100;
    }

    else
    {
      v8 = 0x10000;
    }

    valuePtr = v8;
  }

  v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (v9)
  {
    v10 = v9;
    v11 = IORegistryEntrySetCFProperty(a3, a4, v9);
    if (v11)
    {
      sub_100055008(a4, v11);
    }

    CFRelease(v10);
  }

  else
  {
    sub_1000550C0(a4, &valuePtr, &v14);
    return v14;
  }

  return v11;
}

- (__CFString)copyHeaderForIndex:(int)a3
{
  if (a3 < 0x12)
  {
    v3 = &off_100085F88[a3];
    return *v3;
  }

  if ((a3 & 0xFFFFFFFC) == 0x10)
  {
    v3 = &off_100085F68[a3 - 16];
    return *v3;
  }

  return 0;
}

- (__CFString)copyFieldCurrentValueForIndex:(int)a3
{
  switch(a3)
  {
    case 0:
      v3 = kCFAllocatorDefault;
      packageLowPowerTarget = self->_packageLowPowerTarget;
      return CFStringCreateWithFormat(v3, 0, @"%d", packageLowPowerTarget);
    case 1:
      v5 = kCFAllocatorDefault;
      v6 = [(MitigationController *)self SGXLevel];
      return CFStringCreateWithFormat(v5, 0, @"%d", v6);
    case 2:
      v3 = kCFAllocatorDefault;
      packageLowPowerTarget = 100;
      if (!self->_powerSaveActive)
      {
        packageLowPowerTarget = 0;
      }

      return CFStringCreateWithFormat(v3, 0, @"%d", packageLowPowerTarget);
    case 3:
      v3 = kCFAllocatorDefault;
      packageLowPowerTarget = self->_maxCPUPower;
      return CFStringCreateWithFormat(v3, 0, @"%d", packageLowPowerTarget);
    case 4:
      v3 = kCFAllocatorDefault;
      packageLowPowerTarget = self->_maxGPUPower;
      return CFStringCreateWithFormat(v3, 0, @"%d", packageLowPowerTarget);
    case 5:
      v3 = kCFAllocatorDefault;
      packageLowPowerTarget = self->_currentCPUPowerTarget;
      return CFStringCreateWithFormat(v3, 0, @"%d", packageLowPowerTarget);
    case 6:
      v3 = kCFAllocatorDefault;
      packageLowPowerTarget = self->_currentGPUPowerTarget;
      return CFStringCreateWithFormat(v3, 0, @"%d", packageLowPowerTarget);
    case 7:
      v5 = kCFAllocatorDefault;
      v6 = [(MitigationController *)self getCurrentCPUPower];
      return CFStringCreateWithFormat(v5, 0, @"%d", v6);
    case 8:
      v5 = kCFAllocatorDefault;
      v6 = [(MitigationController *)self getCurrentGPUPower];
      return CFStringCreateWithFormat(v5, 0, @"%d", v6);
    case 9:
      v5 = kCFAllocatorDefault;
      v6 = [(MitigationController *)self getCurrentPackagePower];
      return CFStringCreateWithFormat(v5, 0, @"%d", v6);
    case 10:
      v5 = kCFAllocatorDefault;
      v6 = [(MitigationController *)self CPULevel];
      return CFStringCreateWithFormat(v5, 0, @"%d", v6);
    case 11:
      v3 = kCFAllocatorDefault;
      packageLowPowerTarget = self->_currentCPULowPowerTarget;
      return CFStringCreateWithFormat(v3, 0, @"%d", packageLowPowerTarget);
    case 12:
      v3 = kCFAllocatorDefault;
      packageLowPowerTarget = self->_packagePowerZoneTarget;
      return CFStringCreateWithFormat(v3, 0, @"%d", packageLowPowerTarget);
    case 13:
      v5 = kCFAllocatorDefault;
      v6 = [(MitigationController *)self DVD1Level];
      return CFStringCreateWithFormat(v5, 0, @"%d", v6);
    case 14:
      v5 = kCFAllocatorDefault;
      v6 = [(MitigationController *)self getPackagePowerZoneMetric];
      return CFStringCreateWithFormat(v5, 0, @"%d", v6);
    case 15:
      v5 = kCFAllocatorDefault;
      v6 = [(MitigationController *)self getPackageCPUPowerTarget];
      return CFStringCreateWithFormat(v5, 0, @"%d", v6);
    case 16:
      v5 = kCFAllocatorDefault;
      v6 = [(MitigationController *)self getPackageGPUPowerTarget];
      return CFStringCreateWithFormat(v5, 0, @"%d", v6);
    case 17:
      v3 = kCFAllocatorDefault;
      packageLowPowerTarget = self->_currentHipPowerTarget;
      return CFStringCreateWithFormat(v3, 0, @"%d", packageLowPowerTarget);
    default:
      if ((a3 & 0xFFFFFFFC) != 0x10)
      {
        return 0;
      }

      v3 = kCFAllocatorDefault;
      packageLowPowerTarget = self->DVD1Contributors[a3 - 16].DVD1LevelSentPrevious;
      return CFStringCreateWithFormat(v3, 0, @"%d", packageLowPowerTarget);
  }
}

@end