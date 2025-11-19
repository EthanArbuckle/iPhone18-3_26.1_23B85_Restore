@interface HAPDeviceID
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDeviceID:(id)a3;
- (HAPDeviceID)init;
- (HAPDeviceID)initWithCoder:(id)a3;
- (HAPDeviceID)initWithDeviceIDData:(id)a3;
- (HAPDeviceID)initWithDeviceIDString:(id)a3;
- (NSString)deviceIDString;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (HAPDeviceID)initWithDeviceIDString:(id)a3
{
  v4 = a3;
  v5 = HAPDeviceIDLength;
  v6 = &buf[-((HAPDeviceIDLength + 15) & 0xFFFFFFFFFFFFFFF0)];
  [v4 UTF8String];
  [v4 length];
  if (TextToHardwareAddress())
  {
    v7 = sub_10007FAA0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sub_10007FAFC(0);
      *buf = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@Invalid device identifier string: %@", buf, 0x16u);
    }

    v9 = 0;
  }

  else
  {
    v7 = [NSData dataWithBytes:v6 length:v5];
    self = [(HAPDeviceID *)self initWithDeviceIDData:v7];
    v9 = self;
  }

  return v9;
}

- (HAPDeviceID)initWithDeviceIDData:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  if (v5 == HAPDeviceIDLength)
  {
    v13.receiver = self;
    v13.super_class = HAPDeviceID;
    v6 = [(HAPDeviceID *)&v13 init];
    if (v6)
    {
      v7 = [v4 copy];
      data = v6->_data;
      v6->_data = v7;
    }

    self = v6;
    v9 = self;
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
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@Invalid device identifier data: %@", buf, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = [(HAPDeviceID *)self deviceIDString];
  v5 = [NSString stringWithFormat:@"<%@ %p: %@>", v3, self, v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(HAPDeviceID *)self data];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (BOOL)isEqualToDeviceID:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(HAPDeviceID *)self data];
  v6 = [v4 data];

  LOBYTE(v4) = [v5 isEqualToData:v6];
  return v4;
}

- (NSString)deviceIDString
{
  v3 = &v8 - ((3 * HAPDeviceIDLength + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [(HAPDeviceID *)self data];
  [v4 bytes];
  v5 = [(HAPDeviceID *)self data];
  [v5 length];
  HardwareAddressToCString();

  v6 = [NSString stringWithUTF8String:v3];

  return v6;
}

- (HAPDeviceID)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HAP.data"];
    self = [(HAPDeviceID *)self initWithDeviceIDData:v5];

    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if ([v5 allowsKeyedCoding])
  {
    v4 = [(HAPDeviceID *)self data];
    [v5 encodeObject:v4 forKey:@"HAP.data"];
  }
}

@end