@interface HAPDeviceID
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDeviceID:(id)d;
- (HAPDeviceID)init;
- (HAPDeviceID)initWithCoder:(id)coder;
- (HAPDeviceID)initWithDeviceIDData:(id)data;
- (HAPDeviceID)initWithDeviceIDString:(id)string;
- (NSString)deviceIDString;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HAPDeviceID

- (HAPDeviceID)init
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"%@ is unavailable", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (HAPDeviceID)initWithDeviceIDString:(id)string
{
  stringCopy = string;
  v5 = HAPDeviceIDLength;
  v6 = &buf[-((HAPDeviceIDLength + 15) & 0xFFFFFFFFFFFFFFF0)];
  [stringCopy UTF8String];
  [stringCopy length];
  if (TextToHardwareAddress())
  {
    v7 = sub_10007FAA0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sub_10007FAFC(0);
      *buf = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = stringCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@Invalid device identifier string: %@", buf, 0x16u);
    }

    selfCopy = 0;
  }

  else
  {
    v7 = [NSData dataWithBytes:v6 length:v5];
    self = [(HAPDeviceID *)self initWithDeviceIDData:v7];
    selfCopy = self;
  }

  return selfCopy;
}

- (HAPDeviceID)initWithDeviceIDData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy length];
  if (v5 == HAPDeviceIDLength)
  {
    v13.receiver = self;
    v13.super_class = HAPDeviceID;
    v6 = [(HAPDeviceID *)&v13 init];
    if (v6)
    {
      v7 = [dataCopy copy];
      data = v6->_data;
      v6->_data = v7;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_10007FAFC(0);
      *buf = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = dataCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@Invalid device identifier data: %@", buf, 0x16u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  deviceIDString = [(HAPDeviceID *)self deviceIDString];
  v5 = [NSString stringWithFormat:@"<%@ %p: %@>", v3, self, deviceIDString];

  return v5;
}

- (unint64_t)hash
{
  data = [(HAPDeviceID *)self data];
  v3 = [data hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HAPDeviceID *)self isEqualToDeviceID:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)isEqualToDeviceID:(id)d
{
  if (self == d)
  {
    return 1;
  }

  dCopy = d;
  data = [(HAPDeviceID *)self data];
  data2 = [dCopy data];

  LOBYTE(dCopy) = [data isEqualToData:data2];
  return dCopy;
}

- (NSString)deviceIDString
{
  v3 = &v8 - ((3 * HAPDeviceIDLength + 15) & 0xFFFFFFFFFFFFFFF0);
  data = [(HAPDeviceID *)self data];
  [data bytes];
  data2 = [(HAPDeviceID *)self data];
  [data2 length];
  HardwareAddressToCString();

  v6 = [NSString stringWithUTF8String:v3];

  return v6;
}

- (HAPDeviceID)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HAP.data"];
    self = [(HAPDeviceID *)self initWithDeviceIDData:v5];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    data = [(HAPDeviceID *)self data];
    [coderCopy encodeObject:data forKey:@"HAP.data"];
  }
}

@end