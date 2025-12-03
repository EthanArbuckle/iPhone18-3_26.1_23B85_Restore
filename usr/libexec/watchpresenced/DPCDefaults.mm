@interface DPCDefaults
+ (id)sharedInstance;
- (DPCDefaults)init;
- (id)NSNumberForDefault:(id)default;
@end

@implementation DPCDefaults

+ (id)sharedInstance
{
  if (qword_100016A90 != -1)
  {
    sub_100007620();
  }

  v3 = qword_100016A98;

  return v3;
}

- (DPCDefaults)init
{
  v8.receiver = self;
  v8.super_class = DPCDefaults;
  v2 = [(DPCDefaults *)&v8 init];
  if (v2)
  {
    v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.devicepresence"];
    defaults = v2->_defaults;
    v2->_defaults = v3;

    v9[0] = @"DPCDefaultsThresholdD1";
    v9[1] = @"DPCDefaultsThresholdD2";
    v10[0] = &off_100010DE0;
    v10[1] = &off_100010DF8;
    v9[2] = @"DPCDefaultsThresholdDMAX";
    v9[3] = @"DPCDefaultsThresholdDMIN";
    v10[2] = &off_100010E10;
    v10[3] = &off_100010DB0;
    v9[4] = @"DPCDefaultsThresholdDDiscovery";
    v9[5] = @"DPCDefaultsHoldOffSec";
    v10[4] = &off_100010DC8;
    v10[5] = &off_100010EA0;
    v9[6] = @"DPCDefaultsAPWakeToSuppressionBreakEvenDuration";
    v9[7] = @"DPCDefaultsPowerWinGainTimes";
    v10[6] = &off_100010EB0;
    v10[7] = &off_100010E28;
    v9[8] = @"DPCDefaultsSessionBasedAdaptiveRSSIEnabled";
    v9[9] = @"DPCDefaultsBTCRSSIWindowSizeD1";
    v10[8] = &off_100010E70;
    v10[9] = &off_100010E40;
    v9[10] = @"DPCDefaultsBTCRSSIWindowSizeD2";
    v9[11] = @"DPCDefaultsD2FixedStepSize";
    v10[10] = &off_100010E40;
    v10[11] = &off_100010E58;
    v9[12] = @"DPCDefaultsSessionBasedAdaptiveRSSITwoWaysEnabled";
    v9[13] = @"DPCDefaultsSessionBasedAdaptiveRSSICapValue";
    v10[12] = &off_100010DB0;
    v10[13] = &off_100010E88;
    v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:14];
    defaultValues = v2->_defaultValues;
    v2->_defaultValues = v5;

    [(NSUserDefaults *)v2->_defaults registerDefaults:v2->_defaultValues];
  }

  return v2;
}

- (id)NSNumberForDefault:(id)default
{
  defaults = self->_defaults;
  defaultCopy = default;
  v6 = [(NSUserDefaults *)defaults objectForKey:defaultCopy];

  if (v6)
  {
    v7 = [(NSUserDefaults *)self->_defaults integerForKey:defaultCopy];

    v8 = [NSNumber numberWithInteger:v7];
  }

  else
  {
    v8 = [(NSDictionary *)self->_defaultValues objectForKey:defaultCopy];
  }

  return v8;
}

@end