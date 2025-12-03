@interface MSDSettingsDefaults
+ (id)settingsDefaults;
- (MSDSettingsDefaults)init;
@end

@implementation MSDSettingsDefaults

+ (id)settingsDefaults
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002E3C;
  block[3] = &unk_1000508C0;
  block[4] = self;
  if (qword_100059A38 != -1)
  {
    dispatch_once(&qword_100059A38, block);
  }

  v2 = qword_100059A40;

  return v2;
}

- (MSDSettingsDefaults)init
{
  v7.receiver = self;
  v7.super_class = MSDSettingsDefaults;
  v2 = [(MSDSettingsDefaults *)&v7 init];
  if (v2)
  {
    v3 = [NSUserDefaults alloc];
    v4 = [v3 initWithSuiteName:kMediaSetupSettingsDomain];
    userSettingsDefaults = v2->_userSettingsDefaults;
    v2->_userSettingsDefaults = v4;
  }

  return v2;
}

@end