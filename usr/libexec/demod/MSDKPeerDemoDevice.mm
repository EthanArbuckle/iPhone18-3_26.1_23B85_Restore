@interface MSDKPeerDemoDevice
- (id)initWithMSDRapportDevice:(id)device;
@end

@implementation MSDKPeerDemoDevice

- (id)initWithMSDRapportDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NSMutableDictionary dictionary];
  [v5 setObject:deviceCopy forKeyedSubscript:kMSDKPeerDemoDevicePropertyDevice];
  identifier = [deviceCopy identifier];
  [v5 setObject:identifier forKeyedSubscript:kMSDKPeerDemoDevicePropertyIdentifier];

  deviceName = [deviceCopy deviceName];
  [v5 setObject:deviceName forKeyedSubscript:kMSDKPeerDemoDevicePropertyDeviceName];

  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [deviceCopy pairingMode]);
  [v5 setObject:v8 forKeyedSubscript:kMSDKPeerDemoDevicePropertyPairingMode];

  authenticated = [deviceCopy authenticated];
  v10 = [NSNumber numberWithBool:authenticated];
  [v5 setObject:v10 forKeyedSubscript:kMSDKPeerDemoDevicePropertyAuthenticated];

  v11 = [(MSDKPeerDemoDevice *)self initWithDeviceProperties:v5];
  return v11;
}

@end