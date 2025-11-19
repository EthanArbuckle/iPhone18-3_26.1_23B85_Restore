@interface HAPBLECharacteristicCache
- (BOOL)isEqual:(id)a3;
- (HAPBLECharacteristicCache)initWithCharacteristicUUID:(id)a3 instanceId:(id)a4 characteristicProperties:(unint64_t)a5 characteristicMetadata:(id)a6;
- (HAPBLECharacteristicCache)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithCharacteristic:(id)a3;
@end

@implementation HAPBLECharacteristicCache

- (HAPBLECharacteristicCache)initWithCharacteristicUUID:(id)a3 instanceId:(id)a4 characteristicProperties:(unint64_t)a5 characteristicMetadata:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HAPBLECharacteristicCache;
  v14 = [(HAPBLECharacteristicCache *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_characteristicUUID, a3);
    objc_storeStrong(&v15->_characteristicInstanceId, a4);
    v15->_characteristicProperties = a5;
    objc_storeStrong(&v15->_characteristicMetadata, a6);
  }

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HAPBLECharacteristicCache *)self characteristicUUID];
      v7 = [(HAPBLECharacteristicCache *)v5 characteristicUUID];
      v8 = [v6 isEqual:v7];

      if (v8)
      {
        v9 = [(HAPBLECharacteristicCache *)self characteristicInstanceId];
        v10 = [(HAPBLECharacteristicCache *)v5 characteristicInstanceId];
        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(HAPBLECharacteristicCache *)self characteristicUUID];
  v4 = [v3 hash];
  v5 = [(HAPBLECharacteristicCache *)self characteristicInstanceId];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (void)updateWithCharacteristic:(id)a3
{
  v4 = a3;
  -[HAPBLECharacteristicCache setCharacteristicProperties:](self, "setCharacteristicProperties:", [v4 characteristicProperties]);
  v5 = [v4 characteristicMetadata];

  [(HAPBLECharacteristicCache *)self setCharacteristicMetadata:v5];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HAPBLECharacteristicCache *)self characteristicUUID];
  [v4 encodeObject:v5 forKey:@"CUUI"];

  v6 = [(HAPBLECharacteristicCache *)self characteristicInstanceId];
  [v4 encodeObject:v6 forKey:@"CI"];

  [v4 encodeInteger:-[HAPBLECharacteristicCache characteristicProperties](self forKey:{"characteristicProperties"), @"CP"}];
  v7 = [(HAPBLECharacteristicCache *)self characteristicMetadata];
  [v4 encodeObject:v7 forKey:@"CM"];
}

- (HAPBLECharacteristicCache)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HAPBLECharacteristicCache;
  v5 = [(HAPBLECharacteristicCache *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CUUI"];
    characteristicUUID = v5->_characteristicUUID;
    v5->_characteristicUUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CI"];
    characteristicInstanceId = v5->_characteristicInstanceId;
    v5->_characteristicInstanceId = v8;

    v5->_characteristicProperties = [v4 decodeIntegerForKey:@"CP"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CM"];
    characteristicMetadata = v5->_characteristicMetadata;
    v5->_characteristicMetadata = v10;
  }

  return v5;
}

- (id)description
{
  v3 = [(HAPBLECharacteristicCache *)self characteristicUUID];
  v4 = [(HAPBLECharacteristicCache *)self characteristicInstanceId];
  v5 = sub_10002587C([(HAPBLECharacteristicCache *)self characteristicProperties]);
  v6 = [(HAPBLECharacteristicCache *)self characteristicMetadata];
  v7 = [NSString stringWithFormat:@"\n\tCharacteristic Info:\n\t\tCharacteristic UUID: %@, \n\t\tInstanceId: %@, \n\t\tProperties: %@, \n\t\tMetadata: %@", v3, v4, v5, v6];

  return v7;
}

@end