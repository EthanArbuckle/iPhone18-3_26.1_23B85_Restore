@interface SRReaderRecordingRequest
- (SRReaderRecordingRequest)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRReaderRecordingRequest

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_bundleIdentifier forKey:@"BundleIdentifier"];
  [a3 encodeObject:self->_sensor forKey:@"Sensor"];
  [a3 encodeObject:self->_deviceIdentifier forKey:@"DeviceIdentifier"];
  sensorConfiguration = self->_sensorConfiguration;

  [a3 encodeObject:sensorConfiguration forKey:@"SensorConfiguration"];
}

- (SRReaderRecordingRequest)initWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = SRReaderRecordingRequest;
  v4 = [(SRReaderRecordingRequest *)&v11 init];
  if (v4)
  {
    v4->_deviceIdentifier = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceIdentifier"];
    v4->_bundleIdentifier = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"BundleIdentifier"];
    v4->_sensor = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"Sensor"];
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v4->_sensorConfiguration = [a3 decodeObjectOfClasses:+[NSSet setWithObjects:](NSSet forKey:{"setWithObjects:", v5, v6, v7, v8, v9, objc_opt_class(), 0), @"SensorConfiguration"}];
  }

  return v4;
}

- (void)dealloc
{
  self->_deviceIdentifier = 0;

  self->_bundleIdentifier = 0;
  self->_sensorConfiguration = 0;

  self->_configurationDecodeError = 0;
  v3.receiver = self;
  v3.super_class = SRReaderRecordingRequest;
  [(SRReaderRecordingRequest *)&v3 dealloc];
}

@end