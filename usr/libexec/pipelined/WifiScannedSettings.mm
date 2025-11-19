@interface WifiScannedSettings
- (WifiScannedSettings)init;
- (WifiScannedSettings)initWithSettings:(id)a3 cached:(BOOL)a4 at:(duration<long)long initiatedAt:()std:(1000000000>>)a5 :(duration<long)long ratio<1;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation WifiScannedSettings

- (WifiScannedSettings)init
{
  [(WifiScannedSettings *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (WifiScannedSettings)initWithSettings:(id)a3 cached:(BOOL)a4 at:(duration<long)long initiatedAt:()std:(1000000000>>)a5 :(duration<long)long ratio<1
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = WifiScannedSettings;
  v12 = [(WifiScannedSettings *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_settings, a3);
    v13->_cachedScan = a4;
    v13->_initiatedTimestamp = a6;
    v13->_timestamp = a5;
    v13->_wifiError = 0;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [WifiScannedSettings allocWithZone:a3];
  v5 = [(WifiScannedSettings *)self settings];
  v6 = [(WifiScannedSettings *)v4 initWithSettings:v5 cached:[(WifiScannedSettings *)self cachedScan] at:[(WifiScannedSettings *)self timestamp] initiatedAt:[(WifiScannedSettings *)self initiatedTimestamp]];

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