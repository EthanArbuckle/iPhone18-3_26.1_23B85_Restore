@interface SOSTrustedDeviceAttributes
- (SOSTrustedDeviceAttributes)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SOSTrustedDeviceAttributes

- (void)encodeWithCoder:(id)coder
{
  machineID = self->_machineID;
  coderCopy = coder;
  [coderCopy encodeObject:machineID forKey:@"machineID"];
  [coderCopy encodeObject:self->_serialNumber forKey:@"serialNumber"];
}

- (SOSTrustedDeviceAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SOSTrustedDeviceAttributes;
  v5 = [(SOSTrustedDeviceAttributes *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"machineID"];
    machineID = v5->_machineID;
    v5->_machineID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v8;
  }

  return v5;
}

@end