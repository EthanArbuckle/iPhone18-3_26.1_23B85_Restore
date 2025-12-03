@interface SDAirDropInformation
- (BOOL)BOOLValue:(void *)value;
- (SDAirDropInformation)init;
- (SDAirDropInformationDelegate)delegate;
- (void)addObservers;
- (void)dealloc;
- (void)removeObservers;
- (void)setInformationAndNotify;
- (void)setProperty:(void *)property forKey:(id)key;
- (void)start;
- (void)stop;
@end

@implementation SDAirDropInformation

- (void)stop
{
  if (self->_started)
  {
    self->_started = 0;
    [(SDAirDropInformation *)self removeObservers];
  }
}

- (void)removeObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)dealloc
{
  [(SDAirDropInformation *)self stop];
  v3.receiver = self;
  v3.super_class = SDAirDropInformation;
  [(SDAirDropInformation *)&v3 dealloc];
}

- (SDAirDropInformation)init
{
  v9.receiver = self;
  v9.super_class = SDAirDropInformation;
  v2 = [(SDAirDropInformation *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_started = 0;
    v4 = objc_opt_new();
    properties = v3->_properties;
    v3->_properties = v4;

    v6 = +[SDStatusMonitor sharedMonitor];
    monitor = v3->_monitor;
    v3->_monitor = v6;
  }

  return v3;
}

- (BOOL)BOOLValue:(void *)value
{
  if (!value)
  {
    return 0;
  }

  v4 = CFGetTypeID(value);
  return v4 == CFBooleanGetTypeID() && CFBooleanGetValue(value) != 0;
}

- (void)setProperty:(void *)property forKey:(id)key
{
  keyCopy = key;
  properties = self->_properties;
  v9 = keyCopy;
  if (property)
  {
    [(NSMutableDictionary *)properties setObject:property forKeyedSubscript:keyCopy];
  }

  else
  {
    [(NSMutableDictionary *)properties removeObjectForKey:keyCopy];
  }

  if ([v9 isEqual:kSFOperationWirelessEnabledKey])
  {
    [(SDStatusMonitor *)self->_monitor setWirelessEnabled:[(SDAirDropInformation *)self BOOLValue:property]];
  }

  else if ([v9 isEqual:kSFOperationBluetoothEnabledKey])
  {
    [(SDStatusMonitor *)self->_monitor setBluetoothEnabled:[(SDAirDropInformation *)self BOOLValue:property]];
  }

  else if ([v9 isEqualToString:kSFOperationWirelessAccessPointKey])
  {
    v8 = +[SDHotspotAgent sharedAgent];
    [v8 disableTethering];
  }

  else if ([v9 isEqualToString:kSFOperationAirplaneModeEnabledKey])
  {
    [(SDStatusMonitor *)self->_monitor setAirplaneModeEnabled:[(SDAirDropInformation *)self BOOLValue:property]];
  }
}

- (void)setInformationAndNotify
{
  [(NSMutableDictionary *)self->_properties removeAllObjects];
  [(NSMutableDictionary *)self->_properties setObject:&__kCFBooleanFalse forKeyedSubscript:kSFOperationLegacyDeviceKey];
  v3 = [NSNumber numberWithBool:[(SDStatusMonitor *)self->_monitor wirelessCarPlay]];
  [(NSMutableDictionary *)self->_properties setObject:v3 forKeyedSubscript:kSFOperationWirelessCarPlayKey];

  v4 = [NSNumber numberWithBool:[(SDStatusMonitor *)self->_monitor wirelessEnabled]];
  [(NSMutableDictionary *)self->_properties setObject:v4 forKeyedSubscript:kSFOperationWirelessEnabledKey];

  v5 = [NSNumber numberWithBool:[(SDStatusMonitor *)self->_monitor bluetoothEnabledIncludingRestricted]];
  [(NSMutableDictionary *)self->_properties setObject:v5 forKeyedSubscript:kSFOperationBluetoothEnabledKey];

  v6 = [NSNumber numberWithBool:[(SDStatusMonitor *)self->_monitor airplaneModeEnabled]];
  [(NSMutableDictionary *)self->_properties setObject:v6 forKeyedSubscript:kSFOperationAirplaneModeEnabledKey];

  v7 = [NSNumber numberWithUnsignedInteger:[(SDStatusMonitor *)self->_monitor ultraWideBandState]];
  [(NSMutableDictionary *)self->_properties setObject:v7 forKeyedSubscript:kSFOperationUltraWideBandEnabledKey];

  v8 = [NSNumber numberWithBool:[(SDStatusMonitor *)self->_monitor computerToComputer]];
  [(NSMutableDictionary *)self->_properties setObject:v8 forKeyedSubscript:kSFOperationComputerToComputerKey];

  v9 = [NSNumber numberWithBool:[(SDStatusMonitor *)self->_monitor deviceSupportsWAPI]];
  [(NSMutableDictionary *)self->_properties setObject:v9 forKeyedSubscript:kSFOperationDeviceSupportsWAPIKey];

  v10 = [NSNumber numberWithBool:[(SDStatusMonitor *)self->_monitor wirelessAccessPoint]];
  [(NSMutableDictionary *)self->_properties setObject:v10 forKeyedSubscript:kSFOperationWirelessAccessPointKey];

  someComputerName = [(SDStatusMonitor *)self->_monitor someComputerName];
  [(NSMutableDictionary *)self->_properties setObject:someComputerName forKeyedSubscript:kSFOperationReceiverComputerNameKey];

  v12 = [NSNumber numberWithInt:[(SDStatusMonitor *)self->_monitor isAirDropAllowed]^ 1];
  [(NSMutableDictionary *)self->_properties setObject:v12 forKeyedSubscript:kSFOperationAirDropMDMRestrictedKey];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013FFA4;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)addObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"somethingChanged:" name:@"com.apple.sharingd.UserPictureChanged" object:0];
  [v3 addObserver:self selector:"somethingChanged:" name:@"com.apple.sharingd.ComputerNameChanged" object:0];
  [v3 addObserver:self selector:"somethingChanged:" name:@"com.apple.sharingd.WirelessModeChanged" object:0];
  [v3 addObserver:self selector:"somethingChanged:" name:@"com.apple.sharingd.AirplaneModeChanged" object:0];
  [v3 addObserver:self selector:"somethingChanged:" name:@"com.apple.sharingd.WirelessPowerChanged" object:0];
  [v3 addObserver:self selector:"somethingChanged:" name:@"com.apple.sharingd.BluetoothPowerChanged" object:0];
  [v3 addObserver:self selector:"somethingChanged:" name:@"com.apple.sharingd.HotspotMISStateChanged" object:0];
  [v3 addObserver:self selector:"somethingChanged:" name:@"com.apple.sharingd.WirelessCarPlayChanged" object:0];
  [v3 addObserver:self selector:"somethingChanged:" name:@"com.apple.sharingd.AirDropAllowedChanged" object:0];
  [v3 addObserver:self selector:"somethingChanged:" name:@"com.apple.sharingd.UltraWideBandStateChanged" object:0];
}

- (void)start
{
  if (!self->_started)
  {
    self->_started = 1;
    [(SDAirDropInformation *)self addObservers];

    [(SDAirDropInformation *)self setInformationAndNotify];
  }
}

- (SDAirDropInformationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end