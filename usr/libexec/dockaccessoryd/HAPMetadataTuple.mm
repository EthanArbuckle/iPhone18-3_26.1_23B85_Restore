@interface HAPMetadataTuple
- (BOOL)isEqual:(id)a3;
- (HAPMetadataTuple)initWithCharacteristicType:(id)a3 serviceType:(id)a4;
- (unint64_t)hash;
@end

@implementation HAPMetadataTuple

- (HAPMetadataTuple)initWithCharacteristicType:(id)a3 serviceType:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    v16.receiver = self;
    v16.super_class = HAPMetadataTuple;
    v11 = [(HAPMetadataTuple *)&v16 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_characteristicType, a3);
      objc_storeStrong(&v12->_serviceType, a4);
      v13 = [NSString stringWithFormat:@"%@+%@", v9, v7];
      index = v12->_index;
      v12->_index = v13;
    }

    self = v12;
    v10 = self;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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
  v7 = v6;
  if (v6)
  {
    v8 = [v6 index];
    v9 = [(HAPMetadataTuple *)self index];
    v10 = [v8 isEqual:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(HAPMetadataTuple *)self index];
  v3 = [v2 hash];

  return v3;
}

@end