@interface ArcController
- (ArcController)initWithParams:(id)a3 product:(id)a4;
- (__CFString)copyFieldCurrentValueForIndex:(int)a3;
- (__CFString)copyHeaderForIndex:(int)a3;
- (void)overrideParam:(id)a3 value:(int)originalThresholdModuleTemperature;
- (void)update;
- (void)updateInternal;
@end

@implementation ArcController

- (ArcController)initWithParams:(id)a3 product:(id)a4
{
  v33.receiver = self;
  v33.super_class = ArcController;
  v6 = [(ArcController *)&v33 init];
  v7 = v6;
  if (v6)
  {
    v6->_product = a4;
    v8 = dispatch_queue_create("com.apple.ThermalMonitor.arc", 0);
    v7->_arcQueue = v8;
    v7->_mitigationsActive = -1;
    if (!v8)
    {
      v9 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100056850(v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }

    sub_100002A20(a3, @"thresholdModule", kCFNumberIntType, &v7->_thresholdModuleTemperature);
    sub_100002A20(a3, @"thresholdModuleHysteresis", kCFNumberIntType, &v7->_thresholdModuleTemperatureHysteresis);
    sub_100002A20(a3, @"thresholdVirtual", kCFNumberIntType, &v7->_thresholdVirtualTemperature);
    sub_100002A20(a3, @"thresholdVirtualHysteresis", kCFNumberIntType, &v7->_thresholdVirtualTemperatureHysteresis);
    p_gainMitigated = &v7->_gainMitigated;
    sub_100002A20(a3, @"gainMitigated", kCFNumberFloatType, &v7->_gainMitigated);
    p_gainUnmitigated = &v7->_gainUnmitigated;
    sub_100002A20(a3, @"gainUnmitigated", kCFNumberFloatType, &v7->_gainUnmitigated);
    thresholdModuleTemperature = v7->_thresholdModuleTemperature;
    if (thresholdModuleTemperature <= 0)
    {
      thresholdVirtualTemperature = v7->_thresholdVirtualTemperature;
    }

    else
    {
      thresholdVirtualTemperature = v7->_thresholdVirtualTemperature;
      v23 = v7->_thresholdModuleTemperatureHysteresis < 1 || thresholdVirtualTemperature < 1;
      if (!v23 && v7->_thresholdVirtualTemperatureHysteresis >= 1)
      {
        LODWORD(v19) = 1.0;
        if (*p_gainMitigated > 0.0 && *p_gainMitigated <= 1.0)
        {
          LODWORD(v20) = *p_gainUnmitigated;
          if (*p_gainUnmitigated > 0.0 && *&v20 <= 1.0)
          {
            goto LABEL_23;
          }
        }
      }
    }

    v26 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      thresholdModuleTemperatureHysteresis = v7->_thresholdModuleTemperatureHysteresis;
      thresholdVirtualTemperatureHysteresis = v7->_thresholdVirtualTemperatureHysteresis;
      v30 = *p_gainMitigated;
      v31 = *p_gainUnmitigated;
      *buf = 67110400;
      v35 = thresholdModuleTemperature;
      v36 = 1024;
      v37 = thresholdModuleTemperatureHysteresis;
      v38 = 1024;
      v39 = thresholdVirtualTemperature;
      v40 = 1024;
      v41 = thresholdVirtualTemperatureHysteresis;
      v42 = 2048;
      v43 = v30;
      v44 = 2048;
      v45 = v31;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "<Error> Arc control: bad params (%d %d %d %d %.2f %.2f)", buf, 0x2Eu);
      thresholdModuleTemperature = v7->_thresholdModuleTemperature;
      thresholdVirtualTemperature = v7->_thresholdVirtualTemperature;
    }

LABEL_23:
    v7->_originalThresholdModuleTemperature = thresholdModuleTemperature;
    v7->_originalThresholdVirtualTemperature = thresholdVirtualTemperature;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100036F00;
    v32[3] = &unk_1000860D0;
    v32[4] = v7;
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserverForName:v19 object:v20) queue:"addObserverForName:object:queue:usingBlock:" usingBlock:AVAudioSessionMediaServicesWereResetNotification, +[AVAudioSession sharedInstance](AVAudioSession, "sharedInstance"), +[NSOperationQueue mainQueue], v32];
    [+[TGraphSampler sharedInstance](TGraphSampler addtGraphDataSource:"addtGraphDataSource:", v7];
  }

  return v7;
}

- (void)update
{
  arcQueue = self->_arcQueue;
  if (arcQueue)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100037054;
    block[3] = &unk_100085260;
    block[4] = self;
    dispatch_async(arcQueue, block);
  }
}

- (void)updateInternal
{
  product = self->_product;
  if (product)
  {
    self->_latestModuleTemperature = [(CommonProduct *)product arcModuleTemperature];
    v4 = [(CommonProduct *)self->_product arcVirtualTemperature];
    self->_latestVirtualTemperature = v4;
    thresholdVirtualTemperature = self->_thresholdVirtualTemperature;
    mitigationsActive = self->_mitigationsActive;
    thresholdModuleTemperature = self->_thresholdModuleTemperature;
    if (mitigationsActive == 100)
    {
      thresholdModuleTemperature -= self->_thresholdModuleTemperatureHysteresis;
      thresholdVirtualTemperature -= self->_thresholdVirtualTemperatureHysteresis;
    }

    v8 = self->_latestModuleTemperature <= thresholdModuleTemperature && v4 <= thresholdVirtualTemperature;
    v9 = 44;
    if (v8)
    {
      v9 = 48;
      v10 = 0;
    }

    else
    {
      v10 = 100;
    }

    if (v10 != mitigationsActive)
    {
      v11 = *(&self->super.isa + v9);
      if (byte_1000AB2F8 == 1)
      {
        v12 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 134217984;
          v24 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "<Notice> Arc control: setting gain %.2f", &v23, 0xCu);
        }
      }

      v13 = +[AVAudioSession sharedInstance];
      *&v14 = v11;
      if ([(AVAudioSession *)v13 setHapticThermalGain:0 error:v14])
      {
        self->_mitigationsActive = v10;
        [+[TGraphSampler sharedInstance](TGraphSampler updatePowerlogMiscState:"updatePowerlogMiscState:value:" value:6, self->_mitigationsActive];
      }

      else
      {
        v15 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100056888(v15, v16, v17, v18, v19, v20, v21, v22);
        }
      }
    }
  }
}

- (void)overrideParam:(id)a3 value:(int)originalThresholdModuleTemperature
{
  v7 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = a3;
    v18 = 1024;
    v19 = originalThresholdModuleTemperature;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> Arc control: override (%@, %d)", &v16, 0x12u);
  }

  if ([a3 isEqualToString:@"ArcModuleThresholdKey"])
  {
    if (originalThresholdModuleTemperature == -1)
    {
      originalThresholdModuleTemperature = self->_originalThresholdModuleTemperature;
    }

    self->_thresholdModuleTemperature = originalThresholdModuleTemperature;
  }

  else if ([a3 isEqualToString:@"ArcVirtualThresholdKey"])
  {
    if (originalThresholdModuleTemperature == -1)
    {
      originalThresholdModuleTemperature = self->_originalThresholdVirtualTemperature;
    }

    self->_thresholdVirtualTemperature = originalThresholdModuleTemperature;
  }

  else
  {
    v8 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000568C0(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }
}

- (__CFString)copyHeaderForIndex:(int)a3
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return @"Arc-mitigating";
  }
}

- (__CFString)copyFieldCurrentValueForIndex:(int)a3
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", self->_mitigationsActive);
  }
}

@end