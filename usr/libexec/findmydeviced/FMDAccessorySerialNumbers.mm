@interface FMDAccessorySerialNumbers
- (FMDAccessorySerialNumbers)initWithCoder:(id)coder;
- (FMDAccessorySerialNumbers)initWithDevice:(id)device;
- (FMDAccessorySerialNumbers)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionaryValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDAccessorySerialNumbers

- (FMDAccessorySerialNumbers)initWithDevice:(id)device
{
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = FMDAccessorySerialNumbers;
  v5 = [(FMDAccessorySerialNumbers *)&v14 init];
  if (v5)
  {
    bluetoothDevice = [deviceCopy bluetoothDevice];
    serialNumber = [bluetoothDevice serialNumber];
    [(FMDAccessorySerialNumbers *)v5 setSystemSerialNumber:serialNumber];

    bluetoothDevice2 = [deviceCopy bluetoothDevice];
    serialNumberLeft = [bluetoothDevice2 serialNumberLeft];
    [(FMDAccessorySerialNumbers *)v5 setLeftBudSerialNumber:serialNumberLeft];

    bluetoothDevice3 = [deviceCopy bluetoothDevice];
    serialNumberRight = [bluetoothDevice3 serialNumberRight];
    [(FMDAccessorySerialNumbers *)v5 setRightBudSerialNumber:serialNumberRight];

    v12 = sub_100002880();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FMDAccessorySerialNumbers info: %@", buf, 0xCu);
    }
  }

  return v5;
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  systemSerialNumber = [(FMDAccessorySerialNumbers *)self systemSerialNumber];
  [v3 fm_safeSetObject:systemSerialNumber forKey:@"systemSerialNumber"];

  leftBudSerialNumber = [(FMDAccessorySerialNumbers *)self leftBudSerialNumber];
  [v3 fm_safeSetObject:leftBudSerialNumber forKey:@"leftSerialNumber"];

  rightBudSerialNumber = [(FMDAccessorySerialNumbers *)self rightBudSerialNumber];
  [v3 fm_safeSetObject:rightBudSerialNumber forKey:@"rightSerialNumber"];

  return v3;
}

- (FMDAccessorySerialNumbers)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = FMDAccessorySerialNumbers;
  v5 = [(FMDAccessorySerialNumbers *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"systemSerialNumber"];
    [(FMDAccessorySerialNumbers *)v5 setSystemSerialNumber:v6];

    v7 = [dictionaryCopy objectForKeyedSubscript:@"leftSerialNumber"];
    [(FMDAccessorySerialNumbers *)v5 setLeftBudSerialNumber:v7];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"rightSerialNumber"];
    [(FMDAccessorySerialNumbers *)v5 setRightBudSerialNumber:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  systemSerialNumber = [(FMDAccessorySerialNumbers *)self systemSerialNumber];
  [coderCopy encodeObject:systemSerialNumber forKey:@"systemSerialNumber"];

  leftBudSerialNumber = [(FMDAccessorySerialNumbers *)self leftBudSerialNumber];
  [coderCopy encodeObject:leftBudSerialNumber forKey:@"leftBudSerialNumber"];

  rightBudSerialNumber = [(FMDAccessorySerialNumbers *)self rightBudSerialNumber];
  [coderCopy encodeObject:rightBudSerialNumber forKey:@"rightBudSerialNumber"];
}

- (FMDAccessorySerialNumbers)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = FMDAccessorySerialNumbers;
  v5 = [(FMDAccessorySerialNumbers *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemSerialNumber"];
    [(FMDAccessorySerialNumbers *)v5 setSystemSerialNumber:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"leftBudSerialNumber"];
    [(FMDAccessorySerialNumbers *)v5 setLeftBudSerialNumber:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rightBudSerialNumber"];
    [(FMDAccessorySerialNumbers *)v5 setRightBudSerialNumber:v8];
  }

  return v5;
}

@end