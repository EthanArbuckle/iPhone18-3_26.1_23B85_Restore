@interface CMVehicleStateData
- (CMVehicleStateData)initWithCoder:(id)coder;
- (CMVehicleStateData)initWithTimeRange:(id)range vehicleName:(id)name vehicleModelName:(id)modelName vehicleBluetoothAddress:(id)address;
- (CMVehicleStateData)initWithTimestamp:(id)timestamp state:(unint64_t)state hints:(unint64_t)hints;
- (NSString)deviceId;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMVehicleStateData

- (CMVehicleStateData)initWithTimeRange:(id)range vehicleName:(id)name vehicleModelName:(id)modelName vehicleBluetoothAddress:(id)address
{
  v12.receiver = self;
  v12.super_class = CMVehicleStateData;
  v10 = [(CMVehicleStateData *)&v12 init];
  if (v10)
  {
    *(v10 + 1) = range;
    *(v10 + 2) = name;
    *(v10 + 3) = modelName;
    *(v10 + 4) = address;
    *(v10 + 40) = xmmword_101C8DDA0;
  }

  return v10;
}

- (CMVehicleStateData)initWithTimestamp:(id)timestamp state:(unint64_t)state hints:(unint64_t)hints
{
  v14.receiver = self;
  v14.super_class = CMVehicleStateData;
  v8 = [(CMVehicleStateData *)&v14 init];
  if (v8)
  {
    v9 = [CMMotionTimeRange alloc];
    [timestamp timeIntervalSinceReferenceDate];
    v11 = v10;
    [timestamp timeIntervalSinceReferenceDate];
    v8->fTimeRange = [(CMMotionTimeRange *)v9 initWithStartDate:v11 endDate:v12];
    v8->fVehicleName = 0;
    v8->fVehicleModelName = 0;
    v8->fVehicleBluetoothAddress = 0;
    v8->fVehicularState = state;
    v8->fVehicularHints = hints;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMVehicleStateData;
  [(CMVehicleStateData *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    *(v4 + 1) = [(CMMotionTimeRange *)self->fTimeRange copy];
    *(v4 + 2) = [(NSString *)self->fVehicleName copy];
    *(v4 + 3) = [(NSString *)self->fVehicleModelName copy];
    *(v4 + 4) = [(NSString *)self->fVehicleBluetoothAddress copy];
    *(v4 + 40) = *&self->fVehicularState;
  }

  return v4;
}

- (CMVehicleStateData)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CMVehicleStateData;
  v4 = [(CMVehicleStateData *)&v6 init];
  if (v4)
  {
    v4->fTimeRange = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCMVehicleStateDataCodingKeyTimeRange"];
    v4->fVehicleName = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCMVehicleStateDataCodingKeyVehicleName"];
    v4->fVehicleModelName = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCMVehicleStateDataCodingKeyVehicleModelName"];
    v4->fVehicleBluetoothAddress = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCMVehicleStateDataCodingKeyVehicleBluetoothAddress"];
    v4->fVehicularState = [coder decodeIntegerForKey:@"kCMVehicleStateDataCodingKeyState"];
    v4->fVehicularHints = [coder decodeIntegerForKey:@"kCMVehicleStateDataCodingKeyHints"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->fTimeRange forKey:@"kCMVehicleStateDataCodingKeyTimeRange"];
  [coder encodeObject:self->fVehicleName forKey:@"kCMVehicleStateDataCodingKeyVehicleName"];
  [coder encodeObject:self->fVehicleModelName forKey:@"kCMVehicleStateDataCodingKeyVehicleModelName"];
  [coder encodeObject:self->fVehicleBluetoothAddress forKey:@"kCMVehicleStateDataCodingKeyVehicleBluetoothAddress"];
  [coder encodeInteger:self->fVehicularState forKey:@"kCMVehicleStateDataCodingKeyState"];
  fVehicularHints = self->fVehicularHints;

  [coder encodeInteger:fVehicularHints forKey:@"kCMVehicleStateDataCodingKeyHints"];
}

- (NSString)deviceId
{
  result = self->fVehicleName;
  if (!result)
  {
    return self->fVehicleBluetoothAddress;
  }

  return result;
}

@end