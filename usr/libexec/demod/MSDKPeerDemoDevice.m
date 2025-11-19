@interface MSDKPeerDemoDevice
- (id)initWithMSDRapportDevice:(id)a3;
@end

@implementation MSDKPeerDemoDevice

- (id)initWithMSDRapportDevice:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  [v5 setObject:v4 forKeyedSubscript:kMSDKPeerDemoDevicePropertyDevice];
  v6 = [v4 identifier];
  [v5 setObject:v6 forKeyedSubscript:kMSDKPeerDemoDevicePropertyIdentifier];

  v7 = [v4 deviceName];
  [v5 setObject:v7 forKeyedSubscript:kMSDKPeerDemoDevicePropertyDeviceName];

  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 pairingMode]);
  [v5 setObject:v8 forKeyedSubscript:kMSDKPeerDemoDevicePropertyPairingMode];

  v9 = [v4 authenticated];
  v10 = [NSNumber numberWithBool:v9];
  [v5 setObject:v10 forKeyedSubscript:kMSDKPeerDemoDevicePropertyAuthenticated];

  v11 = [(MSDKPeerDemoDevice *)self initWithDeviceProperties:v5];
  return v11;
}

@end