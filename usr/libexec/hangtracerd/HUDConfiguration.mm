@interface HUDConfiguration
+ (id)sharedInstance;
- (HUDConfiguration)init;
- (HUDConfiguration)initWithCoder:(id)a3;
- (HUDConfiguration)initWithRunloopHangTimeoutDurationMSec:(unint64_t)a3 thirdPartyDevPreferredLanguages:(id)a4 areProcessTerminationsMonitored:(BOOL)a5 processTerminationsFiltering:(id)a6;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithHUDConfiguration:(id)a3;
@end

@implementation HUDConfiguration

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001784C;
  block[3] = &unk_100055408;
  block[4] = a1;
  if (qword_100067A68 != -1)
  {
    dispatch_once(&qword_100067A68, block);
  }

  v2 = qword_100067A60;

  return v2;
}

- (HUDConfiguration)init
{
  thirdPartyDevPreferredLanguages = self->_thirdPartyDevPreferredLanguages;
  self->_runloopHangTimeoutDurationMSec = 9000;
  self->_thirdPartyDevPreferredLanguages = 0;

  self->_areProcessTerminationsMonitored = 0;
  return self;
}

- (HUDConfiguration)initWithRunloopHangTimeoutDurationMSec:(unint64_t)a3 thirdPartyDevPreferredLanguages:(id)a4 areProcessTerminationsMonitored:(BOOL)a5 processTerminationsFiltering:(id)a6
{
  v11 = a4;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = HUDConfiguration;
  v13 = [(HUDConfiguration *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_runloopHangTimeoutDurationMSec = a3;
    objc_storeStrong(&v13->_thirdPartyDevPreferredLanguages, a4);
    v14->_areProcessTerminationsMonitored = a5;
    objc_storeStrong(&v14->_processTerminationsFiltering, a6);
  }

  return v14;
}

- (void)updateWithHUDConfiguration:(id)a3
{
  v4 = a3;
  self->_runloopHangTimeoutDurationMSec = [v4 runloopHangTimeoutDurationMSec];
  v5 = [v4 thirdPartyDevPreferredLanguages];
  thirdPartyDevPreferredLanguages = self->_thirdPartyDevPreferredLanguages;
  self->_thirdPartyDevPreferredLanguages = v5;

  self->_areProcessTerminationsMonitored = [v4 areProcessTerminationsMonitored];
  v7 = [v4 processTerminationsFiltering];

  processTerminationsFiltering = self->_processTerminationsFiltering;
  self->_processTerminationsFiltering = v7;
}

- (HUDConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"runloopHangTimeoutDurationMSec"];
  v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"thirdPartyDevPreferredLanguages"];
  v7 = [v4 decodeBoolForKey:@"areProcessTerminationsMonitored"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"processTerminationsFiltering"];

  v9 = [(HUDConfiguration *)self initWithRunloopHangTimeoutDurationMSec:v5 thirdPartyDevPreferredLanguages:v6 areProcessTerminationsMonitored:v7 processTerminationsFiltering:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  runloopHangTimeoutDurationMSec = self->_runloopHangTimeoutDurationMSec;
  v5 = a3;
  [v5 encodeInt64:runloopHangTimeoutDurationMSec forKey:@"runloopHangTimeoutDurationMSec"];
  [v5 encodeObject:self->_thirdPartyDevPreferredLanguages forKey:@"thirdPartyDevPreferredLanguages"];
  [v5 encodeBool:self->_areProcessTerminationsMonitored forKey:@"areProcessTerminationsMonitored"];
  [v5 encodeObject:self->_processTerminationsFiltering forKey:@"processTerminationsFiltering"];
}

@end