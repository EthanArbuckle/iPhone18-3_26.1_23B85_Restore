@interface DMDBluetoothManager
+ (DMDBluetoothManager)sharedManager;
- (DMDBluetoothManager)init;
- (void)availabilityChanged:(id)a3;
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

- (void)availabilityChanged:(id)a3
{
  v9 = [(DMDBluetoothManager *)self bluetoothManager];
  if ([v9 available])
  {
    v4 = [(DMDBluetoothManager *)self stillNeedsUpdate];

    if (!v4)
    {
      return;
    }

    v5 = [(DMDBluetoothManager *)self enabled];
    v6 = [(DMDBluetoothManager *)self bluetoothManager];
    [v6 setEnabled:v5];

    v7 = [(DMDBluetoothManager *)self enabled];
    v8 = [(DMDBluetoothManager *)self bluetoothManager];
    [v8 setPowered:v7];

    [(DMDBluetoothManager *)self setStillNeedsUpdate:0];
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 removeObserver:self name:BluetoothAvailabilityChangedNotification object:0];
  }
}

@end