@interface PackagePowerCC
- (PackagePowerCC)initWithParams:(__CFDictionary *)params;
- (void)updatePowerTarget;
@end

@implementation PackagePowerCC

- (PackagePowerCC)initWithParams:(__CFDictionary *)params
{
  v8.receiver = self;
  v8.super_class = PackagePowerCC;
  v4 = [(ComponentControl *)&v8 initWithCC:13];
  v5 = v4;
  if (v4)
  {
    *&v4->super.allowLIOverride = 100;
    v4->super.super.nameofComponent = CFStringCreateWithFormat(0, 0, @"%d PackagePower ", 13);
    v5->super.previousValue = v5->super.currentLoadingIndex;
    *(&v5->super.currentPower + 1) = [qword_1000ABCB0 requestListID];
    [(ComponentControl *)v5 updatePowerParameters:params];
    if (v5->super._minPower)
    {
      [qword_1000ABCB0 setMaxPackagePower:v5->super._nominalPowerTarget];
      [(ComponentControl *)v5 setPowerTarget:v5->super.releaseRate];
    }

    else
    {
      v6 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_10005345C(v6);
      }
    }

    if (sub_100031D64(params, @"expectsCPMSSupport", 0))
    {
      [qword_1000ABCB0 setCPMSMitigationsEnabled:1];
      [(ComponentControl *)v5 setCPMSMitigationState:1];
    }

    [qword_1000ABCB0 setPackagePowerCeiling:-[ComponentControl powerTarget](v5 fromDecisionSource:{"powerTarget"), *(&v5->super.currentPower + 1)}];
    [qword_1000ABCB0 updatePackage];
  }

  return v5;
}

- (void)updatePowerTarget
{
  [(ComponentControl *)self setPowerTarget:[(ComponentControl *)self computePowerTarget]];
  if (byte_1000AB2F8 == 1)
  {
    v3 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v4[0] = 67109120;
      v4[1] = [(ComponentControl *)self powerTarget];
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "<Notice> Updating PackagePower target: %u", v4, 8u);
    }
  }

  [qword_1000ABCB0 setPackagePowerCeiling:-[ComponentControl powerTarget](self fromDecisionSource:{"powerTarget"), *(&self->super.currentPower + 1)}];
  [qword_1000ABCB0 updatePackage];
}

@end