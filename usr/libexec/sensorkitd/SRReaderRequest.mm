@interface SRReaderRequest
- (SRReaderRequest)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRReaderRequest

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_bundleIdentifier forKey:@"BundleIdentifier"];
  [a3 encodeObject:self->_sensor forKey:@"Sensor"];
  deviceIdentifier = self->_deviceIdentifier;

  [a3 encodeObject:deviceIdentifier forKey:@"DeviceIdentifier"];
}

- (SRReaderRequest)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SRReaderRequest;
  v4 = [(SRReaderRequest *)&v6 init];
  if (v4)
  {
    v4->_deviceIdentifier = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceIdentifier"];
    v4->_bundleIdentifier = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"BundleIdentifier"];
    v4->_sensor = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"Sensor"];
  }

  return v4;
}

- (void)dealloc
{
  self->_deviceIdentifier = 0;

  self->_bundleIdentifier = 0;
  v3.receiver = self;
  v3.super_class = SRReaderRequest;
  [(SRReaderRequest *)&v3 dealloc];
}

@end