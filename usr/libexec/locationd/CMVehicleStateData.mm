@interface CMVehicleStateData
- (CMVehicleStateData)initWithCoder:(id)a3;
- (CMVehicleStateData)initWithTimeRange:(id)a3 vehicleName:(id)a4 vehicleModelName:(id)a5 vehicleBluetoothAddress:(id)a6;
- (CMVehicleStateData)initWithTimestamp:(id)a3 state:(unint64_t)a4 hints:(unint64_t)a5;
- (NSString)deviceId;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMVehicleStateData

- (CMVehicleStateData)initWithTimeRange:(id)a3 vehicleName:(id)a4 vehicleModelName:(id)a5 vehicleBluetoothAddress:(id)a6
{
  v12.receiver = self;
  v12.super_class = CMVehicleStateData;
  v10 = [(CMVehicleStateData *)&v12 init];
  if (v10)
  {
    *(v10 + 1) = a3;
    *(v10 + 2) = a4;
    *(v10 + 3) = a5;
    *(v10 + 4) = a6;
    *(v10 + 40) = xmmword_101C8DDA0;
  }

  return v10;
}

- (CMVehicleStateData)initWithTimestamp:(id)a3 state:(unint64_t)a4 hints:(unint64_t)a5
{
  v14.receiver = self;
  v14.super_class = CMVehicleStateData;
  v8 = [(CMVehicleStateData *)&v14 init];
  if (v8)
  {
    v9 = [CMMotionTimeRange alloc];
    [a3 timeIntervalSinceReferenceDate];
    v11 = v10;
    [a3 timeIntervalSinceReferenceDate];
    v8->fTimeRange = [(CMMotionTimeRange *)v9 initWithStartDate:v11 endDate:v12];
    v8->fVehicleName = 0;
    v8->fVehicleModelName = 0;
    v8->fVehicleBluetoothAddress = 0;
    v8->fVehicularState = a4;
    v8->fVehicularHints = a5;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMVehicleStateData;
  [(CMVehicleStateData *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (CMVehicleStateData)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CMVehicleStateData;
  v4 = [(CMVehicleStateData *)&v6 init];
  if (v4)
  {
    v4->fTimeRange = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCMVehicleStateDataCodingKeyTimeRange"];
    v4->fVehicleName = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCMVehicleStateDataCodingKeyVehicleName"];
    v4->fVehicleModelName = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCMVehicleStateDataCodingKeyVehicleModelName"];
    v4->fVehicleBluetoothAddress = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCMVehicleStateDataCodingKeyVehicleBluetoothAddress"];
    v4->fVehicularState = [a3 decodeIntegerForKey:@"kCMVehicleStateDataCodingKeyState"];
    v4->fVehicularHints = [a3 decodeIntegerForKey:@"kCMVehicleStateDataCodingKeyHints"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->fTimeRange forKey:@"kCMVehicleStateDataCodingKeyTimeRange"];
  [a3 encodeObject:self->fVehicleName forKey:@"kCMVehicleStateDataCodingKeyVehicleName"];
  [a3 encodeObject:self->fVehicleModelName forKey:@"kCMVehicleStateDataCodingKeyVehicleModelName"];
  [a3 encodeObject:self->fVehicleBluetoothAddress forKey:@"kCMVehicleStateDataCodingKeyVehicleBluetoothAddress"];
  [a3 encodeInteger:self->fVehicularState forKey:@"kCMVehicleStateDataCodingKeyState"];
  fVehicularHints = self->fVehicularHints;

  [a3 encodeInteger:fVehicularHints forKey:@"kCMVehicleStateDataCodingKeyHints"];
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