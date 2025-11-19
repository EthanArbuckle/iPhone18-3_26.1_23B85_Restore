@interface SOSTrustedDeviceAttributes
- (SOSTrustedDeviceAttributes)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SOSTrustedDeviceAttributes

- (void)encodeWithCoder:(id)a3
{
  machineID = self->_machineID;
  v5 = a3;
  [v5 encodeObject:machineID forKey:@"machineID"];
  [v5 encodeObject:self->_serialNumber forKey:@"serialNumber"];
}

- (SOSTrustedDeviceAttributes)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SOSTrustedDeviceAttributes;
  v5 = [(SOSTrustedDeviceAttributes *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"machineID"];
    machineID = v5->_machineID;
    v5->_machineID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v8;
  }

  return v5;
}

@end