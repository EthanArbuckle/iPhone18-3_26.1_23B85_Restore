@interface DMDBluetoothManager
+ (DMDBluetoothManager)sharedManager;
- (DMDBluetoothManager)init;
- (void)availabilityChanged:(id)changed;
@end

@implementation DMDBluetoothManager

+ (DMDBluetoothManager)sharedManager
{
  if (qword_1000FEFD8 != -1)
  {
    sub_10007E1E0();
  }

  v3 = qword_1000FEFD0;

  return v3;
}

- (DMDBluetoothManager)init
{
  v6.receiver = self;
  v6.super_class = DMDBluetoothManager;
  v2 = [(DMDBluetoothManager *)&v6 init];
  if (v2)
  {
    v3 = +[BluetoothManager sharedInstance];
    bluetoothManager = v2->_bluetoothManager;
    v2->_bluetoothManager = v3;
  }

  return v2;
}

- (void)availabilityChanged:(id)changed
{
  bluetoothManager = [(DMDBluetoothManager *)self bluetoothManager];
  if ([bluetoothManager available])
  {
    stillNeedsUpdate = [(DMDBluetoothManager *)self stillNeedsUpdate];

    if (!stillNeedsUpdate)
    {
      return;
    }

    enabled = [(DMDBluetoothManager *)self enabled];
    bluetoothManager2 = [(DMDBluetoothManager *)self bluetoothManager];
    [bluetoothManager2 setEnabled:enabled];

    enabled2 = [(DMDBluetoothManager *)self enabled];
    bluetoothManager3 = [(DMDBluetoothManager *)self bluetoothManager];
    [bluetoothManager3 setPowered:enabled2];

    [(DMDBluetoothManager *)self setStillNeedsUpdate:0];
    bluetoothManager = +[NSNotificationCenter defaultCenter];
    [bluetoothManager removeObserver:self name:BluetoothAvailabilityChangedNotification object:0];
  }
}

@end