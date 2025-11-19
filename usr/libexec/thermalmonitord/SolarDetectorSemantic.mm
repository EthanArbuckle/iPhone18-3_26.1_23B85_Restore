@interface SolarDetectorSemantic
- (BOOL)synchContext;
- (SolarDetectorSemantic)init;
- (__CFString)copyFieldCurrentValueForIndex:(int)a3;
- (__CFString)copyHeaderForIndex:(int)a3;
- (int)getContextState;
- (void)handleBrightnessClientNotification:(id)a3 value:(id)a4;
- (void)initializeSemanticBrightnessHandling;
- (void)updateCurrentSemanticAmbientLightLevel:(int)a3;
@end

@implementation SolarDetectorSemantic

- (int)getContextState
{
  sunlightOverrideState = self->_sunlightOverrideState;
  if (sunlightOverrideState < 0)
  {
    return 1;
  }

  if (sunlightOverrideState)
  {
    return 5;
  }

  return self->_currentSemanticAmbientLightLevel;
}

- (BOOL)synchContext
{
  if (self->super._infoOnlySensorsActive)
  {
    v3 = [(BrightnessSystemClient *)self->_brightnessSystemClient copyPropertyForKey:@"TrustedLux"];
    if (v3)
    {
      v4 = v3;
      self->_currentSemanticLux = [v3 intValue];
    }

    else
    {
      self->_currentSemanticLux = -127;
    }
  }

  v5 = dword_1000AB314;
  self->_sunlightOverrideState = dword_1000AB314;
  if (self->_sunlightOverrideStatePrevious != v5)
  {
    self->_sunlightOverrideStatePrevious = v5;
    update_queue = self->_update_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100025CE4;
    block[3] = &unk_100085260;
    block[4] = self;
    dispatch_async(update_queue, block);
  }

  return 1;
}

- (SolarDetectorSemantic)init
{
  v8.receiver = self;
  v8.super_class = SolarDetectorSemantic;
  v2 = [(SolarDetectorSemantic *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->super.ctxType = 0;
    v2->super._infoOnlySensorsActive = 0;
    v2->_currentSemanticLux = -127;
    v2->_sunlightState = -1;
    v2->_sunlightStatePrevious = -1;
    v2->_sunlightOverrideState = 0;
    v2->_sunlightOverrideStatePrevious = 0;
    v2->_update_queue = dispatch_queue_create("com.apple.thermalmonitor.solar", 0);
    if (notify_register_check("com.apple.system.thermalsunlightstate", &v3->_thermalSunlightStateToken))
    {
      v4 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_10005391C(v4);
      }
    }

    [(SolarDetectorSemantic *)v3 updateCurrentSemanticAmbientLightLevel:0];
    v5 = objc_alloc_init(BrightnessSystemClient);
    v3->_brightnessSystemClient = v5;
    if (v5)
    {
      [(SolarDetectorSemantic *)v3 initializeSemanticBrightnessHandling];
    }

    else
    {
      v6 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100053960(v6);
      }
    }

    if (byte_1000ABC38 == 1)
    {
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:14 atSMCIndex:@"zETM", 14];
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:13 atSMCIndex:@"zETM", 13];
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:12 atSMCIndex:@"zETM", 12];
      *&dword_1000AB968 = v3->_currentSemanticAmbientLightLevel;
      *&dword_1000AB970 = v3->_currentSemanticLux;
      dword_1000AB96C = 0;
    }

    [+[TGraphSampler sharedInstance](TGraphSampler addtGraphDataSource:"addtGraphDataSource:", v3];
  }

  return v3;
}

- (void)initializeSemanticBrightnessHandling
{
  v3 = [[NSString alloc] initWithUTF8String:"SemanticAmbientLightLevel"];
  v4 = [(BrightnessSystemClient *)self->_brightnessSystemClient copyPropertyForKey:v3];
  [(SolarDetectorSemantic *)self handleBrightnessClientNotification:v3 value:v4];

  v5 = [[NSArray alloc] initWithObjects:{v3, 0}];
  brightnessSystemClient = self->_brightnessSystemClient;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100025B88;
  v7[3] = &unk_100085BC0;
  v7[4] = self;
  [(BrightnessSystemClient *)brightnessSystemClient registerNotificationBlock:v7 forProperties:v5];
}

- (void)handleBrightnessClientNotification:(id)a3 value:(id)a4
{
  if (a3 && a4 && !strncmp([a3 UTF8String], "SemanticAmbientLightLevel", 0x19uLL))
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [a4 intValue];

      [(SolarDetectorSemantic *)self updateCurrentSemanticAmbientLightLevel:v6];
    }

    else
    {
      [(SolarDetectorSemantic *)self updateCurrentSemanticAmbientLightLevel:0];
      if (byte_1000AB2F8 == 1)
      {
        v7 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 138412290;
          v9 = a4;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> brightness callback %@", &v8, 0xCu);
        }
      }
    }
  }
}

- (void)updateCurrentSemanticAmbientLightLevel:(int)a3
{
  update_queue = self->_update_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100025D70;
  v4[3] = &unk_100085BE8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(update_queue, v4);
}

- (__CFString)copyHeaderForIndex:(int)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_100085C08[a3];
  }
}

- (__CFString)copyFieldCurrentValueForIndex:(int)a3
{
  switch(a3)
  {
    case 2:
      return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", self->_currentSemanticLux);
    case 1:
      v3 = kCFAllocatorDefault;
      v4 = [(SolarDetectorSemantic *)self isContextTriggered];
      v5 = 100;
      if (!v4)
      {
        v5 = 0;
      }

      v7 = v5;
      return CFStringCreateWithFormat(v3, 0, @"%d", v7);
    case 0:
      v3 = kCFAllocatorDefault;
      v7 = [(SolarDetectorSemantic *)self getContextState];
      return CFStringCreateWithFormat(v3, 0, @"%d", v7);
  }

  return 0;
}

@end