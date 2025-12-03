@interface WifiScannedSettings
- (WifiScannedSettings)init;
- (WifiScannedSettings)initWithSettings:(id)settings cached:(BOOL)cached at:(duration<long)long initiatedAt:()std:(1000000000>>)std :(duration<long)long ratio<1;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation WifiScannedSettings

- (WifiScannedSettings)init
{
  [(WifiScannedSettings *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (WifiScannedSettings)initWithSettings:(id)settings cached:(BOOL)cached at:(duration<long)long initiatedAt:()std:(1000000000>>)std :(duration<long)long ratio<1
{
  settingsCopy = settings;
  v15.receiver = self;
  v15.super_class = WifiScannedSettings;
  v12 = [(WifiScannedSettings *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_settings, settings);
    v13->_cachedScan = cached;
    v13->_initiatedTimestamp = a6;
    v13->_timestamp = std;
    v13->_wifiError = 0;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [WifiScannedSettings allocWithZone:zone];
  settings = [(WifiScannedSettings *)self settings];
  v6 = [(WifiScannedSettings *)v4 initWithSettings:settings cached:[(WifiScannedSettings *)self cachedScan] at:[(WifiScannedSettings *)self timestamp] initiatedAt:[(WifiScannedSettings *)self initiatedTimestamp]];

  return v6;
}

- (id)description
{
  v3 = [NSString alloc];
  if (self->_cachedScan)
  {
    v4 = "true";
  }

  else
  {
    v4 = "false";
  }

  v5 = [v3 initWithFormat:@"cached:%s, settings:%@, timestamp:%lld", v4, self->_settings, self->_timestamp.__rep_];

  return v5;
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 40) = 0;
  return self;
}

@end