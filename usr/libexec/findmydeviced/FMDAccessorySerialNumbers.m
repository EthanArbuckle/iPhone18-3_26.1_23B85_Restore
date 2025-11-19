@interface FMDAccessorySerialNumbers
- (FMDAccessorySerialNumbers)initWithCoder:(id)a3;
- (FMDAccessorySerialNumbers)initWithDevice:(id)a3;
- (FMDAccessorySerialNumbers)initWithDictionary:(id)a3;
- (NSDictionary)dictionaryValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDAccessorySerialNumbers

- (FMDAccessorySerialNumbers)initWithDevice:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = FMDAccessorySerialNumbers;
  v5 = [(FMDAccessorySerialNumbers *)&v14 init];
  if (v5)
  {
    v6 = [v4 bluetoothDevice];
    v7 = [v6 serialNumber];
    [(FMDAccessorySerialNumbers *)v5 setSystemSerialNumber:v7];

    v8 = [v4 bluetoothDevice];
    v9 = [v8 serialNumberLeft];
    [(FMDAccessorySerialNumbers *)v5 setLeftBudSerialNumber:v9];

    v10 = [v4 bluetoothDevice];
    v11 = [v10 serialNumberRight];
    [(FMDAccessorySerialNumbers *)v5 setRightBudSerialNumber:v11];

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
  v4 = [(FMDAccessorySerialNumbers *)self systemSerialNumber];
  [v3 fm_safeSetObject:v4 forKey:@"systemSerialNumber"];

  v5 = [(FMDAccessorySerialNumbers *)self leftBudSerialNumber];
  [v3 fm_safeSetObject:v5 forKey:@"leftSerialNumber"];

  v6 = [(FMDAccessorySerialNumbers *)self rightBudSerialNumber];
  [v3 fm_safeSetObject:v6 forKey:@"rightSerialNumber"];

  return v3;
}

- (FMDAccessorySerialNumbers)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FMDAccessorySerialNumbers;
  v5 = [(FMDAccessorySerialNumbers *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"systemSerialNumber"];
    [(FMDAccessorySerialNumbers *)v5 setSystemSerialNumber:v6];

    v7 = [v4 objectForKeyedSubscript:@"leftSerialNumber"];
    [(FMDAccessorySerialNumbers *)v5 setLeftBudSerialNumber:v7];

    v8 = [v4 objectForKeyedSubscript:@"rightSerialNumber"];
    [(FMDAccessorySerialNumbers *)v5 setRightBudSerialNumber:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDAccessorySerialNumbers *)self systemSerialNumber];
  [v4 encodeObject:v5 forKey:@"systemSerialNumber"];

  v6 = [(FMDAccessorySerialNumbers *)self leftBudSerialNumber];
  [v4 encodeObject:v6 forKey:@"leftBudSerialNumber"];

  v7 = [(FMDAccessorySerialNumbers *)self rightBudSerialNumber];
  [v4 encodeObject:v7 forKey:@"rightBudSerialNumber"];
}

- (FMDAccessorySerialNumbers)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FMDAccessorySerialNumbers;
  v5 = [(FMDAccessorySerialNumbers *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemSerialNumber"];
    [(FMDAccessorySerialNumbers *)v5 setSystemSerialNumber:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"leftBudSerialNumber"];
    [(FMDAccessorySerialNumbers *)v5 setLeftBudSerialNumber:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rightBudSerialNumber"];
    [(FMDAccessorySerialNumbers *)v5 setRightBudSerialNumber:v8];
  }

  return v5;
}

@end