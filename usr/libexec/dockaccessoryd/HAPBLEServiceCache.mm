@interface HAPBLEServiceCache
- (BOOL)isEqual:(id)a3;
- (HAPBLEServiceCache)initWithCoder:(id)a3;
- (HAPBLEServiceCache)initWithServiceUUID:(id)a3 instanceId:(id)a4 instanceOrder:(unint64_t)a5 serviceProperties:(unint64_t)a6 linkedServices:(id)a7;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithCharacteristic:(id)a3;
- (void)updateWithService:(id)a3;
@end

@implementation HAPBLEServiceCache

- (HAPBLEServiceCache)initWithServiceUUID:(id)a3 instanceId:(id)a4 instanceOrder:(unint64_t)a5 serviceProperties:(unint64_t)a6 linkedServices:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = HAPBLEServiceCache;
  v16 = [(HAPBLEServiceCache *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_serviceUUID, a3);
    objc_storeStrong(&v17->_serviceInstanceId, a4);
    v17->_serviceInstanceOrder = a5;
    v17->_serviceProperties = a6;
    objc_storeStrong(&v17->_linkedServices, a7);
    v18 = +[NSMutableArray array];
    cachedCharacteristics = v17->_cachedCharacteristics;
    v17->_cachedCharacteristics = v18;
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HAPBLEServiceCache *)self serviceUUID];
      v7 = [(HAPBLEServiceCache *)v5 serviceUUID];
      v8 = [v6 isEqual:v7];

      if (v8 && (-[HAPBLEServiceCache serviceInstanceId](self, "serviceInstanceId"), v9 = objc_claimAutoreleasedReturnValue(), -[HAPBLEServiceCache serviceInstanceId](v5, "serviceInstanceId"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqual:v10], v10, v9, v11))
      {
        v12 = [(HAPBLEServiceCache *)self serviceInstanceOrder];
        v13 = v12 == [(HAPBLEServiceCache *)v5 serviceInstanceOrder];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(HAPBLEServiceCache *)self serviceUUID];
  v4 = [v3 hash];
  v5 = [(HAPBLEServiceCache *)self serviceInstanceId];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (void)updateWithService:(id)a3
{
  v4 = a3;
  -[HAPBLEServiceCache setServiceInstanceOrder:](self, "setServiceInstanceOrder:", [v4 serviceInstanceOrder]);
  -[HAPBLEServiceCache setServiceProperties:](self, "setServiceProperties:", [v4 serviceProperties]);
  v5 = [v4 linkedServices];
  [(HAPBLEServiceCache *)self setLinkedServices:v5];

  v6 = [v4 cachedCharacteristics];

  [(HAPBLEServiceCache *)self setCachedCharacteristics:v6];
}

- (void)updateWithCharacteristic:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(HAPBLEServiceCache *)self cachedCharacteristics];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 isEqual:v4])
        {
          [v10 updateWithCharacteristic:v4];
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v5 = [(HAPBLEServiceCache *)self cachedCharacteristics];
  [v5 addObject:v4];
LABEL_11:
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HAPBLEServiceCache *)self serviceUUID];
  [v4 encodeObject:v5 forKey:@"SUUI"];

  v6 = [(HAPBLEServiceCache *)self serviceInstanceId];
  [v4 encodeObject:v6 forKey:@"SI"];

  [v4 encodeInteger:-[HAPBLEServiceCache serviceInstanceOrder](self forKey:{"serviceInstanceOrder"), @"SO"}];
  [v4 encodeInteger:-[HAPBLEServiceCache serviceProperties](self forKey:{"serviceProperties"), @"SP"}];
  v7 = [(HAPBLEServiceCache *)self linkedServices];
  [v4 encodeObject:v7 forKey:@"LS"];

  v8 = [(HAPBLEServiceCache *)self cachedCharacteristics];
  [v4 encodeObject:v8 forKey:@"CC"];
}

- (HAPBLEServiceCache)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = HAPBLEServiceCache;
  v5 = [(HAPBLEServiceCache *)&v20 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SUUI"];
  serviceUUID = v5->_serviceUUID;
  v5->_serviceUUID = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SI"];
  serviceInstanceId = v5->_serviceInstanceId;
  v5->_serviceInstanceId = v8;

  v5->_serviceInstanceOrder = [v4 decodeIntegerForKey:@"SO"];
  v5->_serviceProperties = [v4 decodeIntegerForKey:@"SP"];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v10 = [NSArray arrayWithObjects:v22 count:2];
  v11 = [NSSet setWithArray:v10];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"LS"];
  linkedServices = v5->_linkedServices;
  v5->_linkedServices = v12;

  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v14 = [NSArray arrayWithObjects:v21 count:2];
  v15 = [NSSet setWithArray:v14];
  v16 = [v4 decodeObjectOfClasses:v15 forKey:@"CC"];
  cachedCharacteristics = v5->_cachedCharacteristics;
  v5->_cachedCharacteristics = v16;

  if (!v5->_serviceInstanceId)
  {
    goto LABEL_5;
  }

  if (v5->_serviceUUID)
  {
    v18 = v5;
  }

  else
  {
LABEL_5:
    v18 = 0;
  }

  return v18;
}

- (id)description
{
  v3 = [(HAPBLEServiceCache *)self cachedCharacteristics];
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"\nList of Characteristics: %tu\n", [v3 count]);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(HAPBLEServiceCache *)self cachedCharacteristics];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      v10 = v4;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4 = [v10 stringByAppendingFormat:@"%@", *(*(&v18 + 1) + 8 * v9)];

        v9 = v9 + 1;
        v10 = v4;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v11 = [(HAPBLEServiceCache *)self serviceUUID];
  v12 = [(HAPBLEServiceCache *)self serviceInstanceId];
  v13 = [(HAPBLEServiceCache *)self serviceInstanceOrder];
  v14 = sub_100026500([(HAPBLEServiceCache *)self serviceProperties]);
  v15 = [(HAPBLEServiceCache *)self linkedServices];
  v16 = [NSString stringWithFormat:@"\n\nService Info:\n\tService UUID: %@, \n\tInstanceId: %@, \n\tOrder: %lu, \n\tProperties: %@, \n\tLinkedServices: %@, \n\t %@", v11, v12, v13, v14, v15, v4];

  return v16;
}

@end