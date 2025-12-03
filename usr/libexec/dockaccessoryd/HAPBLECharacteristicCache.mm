@interface HAPBLECharacteristicCache
- (BOOL)isEqual:(id)equal;
- (HAPBLECharacteristicCache)initWithCharacteristicUUID:(id)d instanceId:(id)id characteristicProperties:(unint64_t)properties characteristicMetadata:(id)metadata;
- (HAPBLECharacteristicCache)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithCharacteristic:(id)characteristic;
@end

@implementation HAPBLECharacteristicCache

- (HAPBLECharacteristicCache)initWithCharacteristicUUID:(id)d instanceId:(id)id characteristicProperties:(unint64_t)properties characteristicMetadata:(id)metadata
{
  dCopy = d;
  idCopy = id;
  metadataCopy = metadata;
  v17.receiver = self;
  v17.super_class = HAPBLECharacteristicCache;
  v14 = [(HAPBLECharacteristicCache *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_characteristicUUID, d);
    objc_storeStrong(&v15->_characteristicInstanceId, id);
    v15->_characteristicProperties = properties;
    objc_storeStrong(&v15->_characteristicMetadata, metadata);
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      characteristicUUID = [(HAPBLECharacteristicCache *)self characteristicUUID];
      characteristicUUID2 = [(HAPBLECharacteristicCache *)v5 characteristicUUID];
      v8 = [characteristicUUID isEqual:characteristicUUID2];

      if (v8)
      {
        characteristicInstanceId = [(HAPBLECharacteristicCache *)self characteristicInstanceId];
        characteristicInstanceId2 = [(HAPBLECharacteristicCache *)v5 characteristicInstanceId];
        v11 = [characteristicInstanceId isEqual:characteristicInstanceId2];
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
  characteristicUUID = [(HAPBLECharacteristicCache *)self characteristicUUID];
  v4 = [characteristicUUID hash];
  characteristicInstanceId = [(HAPBLECharacteristicCache *)self characteristicInstanceId];
  v6 = [characteristicInstanceId hash];

  return v6 ^ v4;
}

- (void)updateWithCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  -[HAPBLECharacteristicCache setCharacteristicProperties:](self, "setCharacteristicProperties:", [characteristicCopy characteristicProperties]);
  characteristicMetadata = [characteristicCopy characteristicMetadata];

  [(HAPBLECharacteristicCache *)self setCharacteristicMetadata:characteristicMetadata];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  characteristicUUID = [(HAPBLECharacteristicCache *)self characteristicUUID];
  [coderCopy encodeObject:characteristicUUID forKey:@"CUUI"];

  characteristicInstanceId = [(HAPBLECharacteristicCache *)self characteristicInstanceId];
  [coderCopy encodeObject:characteristicInstanceId forKey:@"CI"];

  [coderCopy encodeInteger:-[HAPBLECharacteristicCache characteristicProperties](self forKey:{"characteristicProperties"), @"CP"}];
  characteristicMetadata = [(HAPBLECharacteristicCache *)self characteristicMetadata];
  [coderCopy encodeObject:characteristicMetadata forKey:@"CM"];
}

- (HAPBLECharacteristicCache)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HAPBLECharacteristicCache;
  v5 = [(HAPBLECharacteristicCache *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CUUI"];
    characteristicUUID = v5->_characteristicUUID;
    v5->_characteristicUUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CI"];
    characteristicInstanceId = v5->_characteristicInstanceId;
    v5->_characteristicInstanceId = v8;

    v5->_characteristicProperties = [coderCopy decodeIntegerForKey:@"CP"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CM"];
    characteristicMetadata = v5->_characteristicMetadata;
    v5->_characteristicMetadata = v10;
  }

  return v5;
}

- (id)description
{
  characteristicUUID = [(HAPBLECharacteristicCache *)self characteristicUUID];
  characteristicInstanceId = [(HAPBLECharacteristicCache *)self characteristicInstanceId];
  v5 = sub_10002587C([(HAPBLECharacteristicCache *)self characteristicProperties]);
  characteristicMetadata = [(HAPBLECharacteristicCache *)self characteristicMetadata];
  v7 = [NSString stringWithFormat:@"\n\tCharacteristic Info:\n\t\tCharacteristic UUID: %@, \n\t\tInstanceId: %@, \n\t\tProperties: %@, \n\t\tMetadata: %@", characteristicUUID, characteristicInstanceId, v5, characteristicMetadata];

  return v7;
}

@end