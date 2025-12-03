@interface _CARVehicleState
- (NSString)vehicleStateDebugDescription;
@end

@implementation _CARVehicleState

- (NSString)vehicleStateDebugDescription
{
  v3 = [NSNumber numberWithUnsignedInteger:[(_CARVehicleState *)self vehicleState]];
  deviceID = [(_CARVehicleState *)self deviceID];
  [(_CARVehicleState *)self vehicularHints];
  v5 = [NSNumber numberWithUnsignedInteger:0];
  v6 = [NSNumber numberWithUnsignedInteger:[(_CARVehicleState *)self vehicularHints]& 1];
  v7 = [NSNumber numberWithUnsignedInteger:[(_CARVehicleState *)self vehicularHints]& 2];
  v8 = [NSNumber numberWithUnsignedInteger:[(_CARVehicleState *)self vehicularHints]& 4];
  v9 = [NSNumber numberWithUnsignedInteger:[(_CARVehicleState *)self vehicularHints]& 8];
  0x10 = [NSNumber numberWithUnsignedInteger:[(_CARVehicleState *)self vehicularHints]& 0x10];
  v11 = [NSString stringWithFormat:@"Vehicle State %@, device ID %@, Vehicular Hints: None: %@ Motion: %@ GPS: %@ Baseband: %@ WiFi: %@ Bluetooth: %@", v3, deviceID, v5, v6, v7, v8, v9, 0x10];

  return v11;
}

@end