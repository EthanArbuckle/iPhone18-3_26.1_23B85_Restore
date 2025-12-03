@interface HAPBLEServiceCache
- (BOOL)isEqual:(id)equal;
- (HAPBLEServiceCache)initWithCoder:(id)coder;
- (HAPBLEServiceCache)initWithServiceUUID:(id)d instanceId:(id)id instanceOrder:(unint64_t)order serviceProperties:(unint64_t)properties linkedServices:(id)services;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithCharacteristic:(id)characteristic;
- (void)updateWithService:(id)service;
@end

@implementation HAPBLEServiceCache

- (HAPBLEServiceCache)initWithServiceUUID:(id)d instanceId:(id)id instanceOrder:(unint64_t)order serviceProperties:(unint64_t)properties linkedServices:(id)services
{
  dCopy = d;
  idCopy = id;
  servicesCopy = services;
  v21.receiver = self;
  v21.super_class = HAPBLEServiceCache;
  v16 = [(HAPBLEServiceCache *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_serviceUUID, d);
    objc_storeStrong(&v17->_serviceInstanceId, id);
    v17->_serviceInstanceOrder = order;
    v17->_serviceProperties = properties;
    objc_storeStrong(&v17->_linkedServices, services);
    v18 = +[NSMutableArray array];
    cachedCharacteristics = v17->_cachedCharacteristics;
    v17->_cachedCharacteristics = v18;
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      serviceUUID = [(HAPBLEServiceCache *)self serviceUUID];
      serviceUUID2 = [(HAPBLEServiceCache *)v5 serviceUUID];
      v8 = [serviceUUID isEqual:serviceUUID2];

      if (v8 && (-[HAPBLEServiceCache serviceInstanceId](self, "serviceInstanceId"), v9 = objc_claimAutoreleasedReturnValue(), -[HAPBLEServiceCache serviceInstanceId](v5, "serviceInstanceId"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqual:v10], v10, v9, v11))
      {
        serviceInstanceOrder = [(HAPBLEServiceCache *)self serviceInstanceOrder];
        v13 = serviceInstanceOrder == [(HAPBLEServiceCache *)v5 serviceInstanceOrder];
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
  serviceUUID = [(HAPBLEServiceCache *)self serviceUUID];
  v4 = [serviceUUID hash];
  serviceInstanceId = [(HAPBLEServiceCache *)self serviceInstanceId];
  v6 = [serviceInstanceId hash];

  return v6 ^ v4;
}

- (void)updateWithService:(id)service
{
  serviceCopy = service;
  -[HAPBLEServiceCache setServiceInstanceOrder:](self, "setServiceInstanceOrder:", [serviceCopy serviceInstanceOrder]);
  -[HAPBLEServiceCache setServiceProperties:](self, "setServiceProperties:", [serviceCopy serviceProperties]);
  linkedServices = [serviceCopy linkedServices];
  [(HAPBLEServiceCache *)self setLinkedServices:linkedServices];

  cachedCharacteristics = [serviceCopy cachedCharacteristics];

  [(HAPBLEServiceCache *)self setCachedCharacteristics:cachedCharacteristics];
}

- (void)updateWithCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  cachedCharacteristics = [(HAPBLEServiceCache *)self cachedCharacteristics];
  v6 = [cachedCharacteristics countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(cachedCharacteristics);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 isEqual:characteristicCopy])
        {
          [v10 updateWithCharacteristic:characteristicCopy];
          goto LABEL_11;
        }
      }

      v7 = [cachedCharacteristics countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  cachedCharacteristics = [(HAPBLEServiceCache *)self cachedCharacteristics];
  [cachedCharacteristics addObject:characteristicCopy];
LABEL_11:
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serviceUUID = [(HAPBLEServiceCache *)self serviceUUID];
  [coderCopy encodeObject:serviceUUID forKey:@"SUUI"];

  serviceInstanceId = [(HAPBLEServiceCache *)self serviceInstanceId];
  [coderCopy encodeObject:serviceInstanceId forKey:@"SI"];

  [coderCopy encodeInteger:-[HAPBLEServiceCache serviceInstanceOrder](self forKey:{"serviceInstanceOrder"), @"SO"}];
  [coderCopy encodeInteger:-[HAPBLEServiceCache serviceProperties](self forKey:{"serviceProperties"), @"SP"}];
  linkedServices = [(HAPBLEServiceCache *)self linkedServices];
  [coderCopy encodeObject:linkedServices forKey:@"LS"];

  cachedCharacteristics = [(HAPBLEServiceCache *)self cachedCharacteristics];
  [coderCopy encodeObject:cachedCharacteristics forKey:@"CC"];
}

- (HAPBLEServiceCache)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = HAPBLEServiceCache;
  v5 = [(HAPBLEServiceCache *)&v20 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SUUI"];
  serviceUUID = v5->_serviceUUID;
  v5->_serviceUUID = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SI"];
  serviceInstanceId = v5->_serviceInstanceId;
  v5->_serviceInstanceId = v8;

  v5->_serviceInstanceOrder = [coderCopy decodeIntegerForKey:@"SO"];
  v5->_serviceProperties = [coderCopy decodeIntegerForKey:@"SP"];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v10 = [NSArray arrayWithObjects:v22 count:2];
  v11 = [NSSet setWithArray:v10];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"LS"];
  linkedServices = v5->_linkedServices;
  v5->_linkedServices = v12;

  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v14 = [NSArray arrayWithObjects:v21 count:2];
  v15 = [NSSet setWithArray:v14];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"CC"];
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
  cachedCharacteristics = [(HAPBLEServiceCache *)self cachedCharacteristics];
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"\nList of Characteristics: %tu\n", [cachedCharacteristics count]);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  cachedCharacteristics2 = [(HAPBLEServiceCache *)self cachedCharacteristics];
  v6 = [cachedCharacteristics2 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(cachedCharacteristics2);
        }

        v4 = [v10 stringByAppendingFormat:@"%@", *(*(&v18 + 1) + 8 * v9)];

        v9 = v9 + 1;
        v10 = v4;
      }

      while (v7 != v9);
      v7 = [cachedCharacteristics2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  serviceUUID = [(HAPBLEServiceCache *)self serviceUUID];
  serviceInstanceId = [(HAPBLEServiceCache *)self serviceInstanceId];
  serviceInstanceOrder = [(HAPBLEServiceCache *)self serviceInstanceOrder];
  v14 = sub_100026500([(HAPBLEServiceCache *)self serviceProperties]);
  linkedServices = [(HAPBLEServiceCache *)self linkedServices];
  v16 = [NSString stringWithFormat:@"\n\nService Info:\n\tService UUID: %@, \n\tInstanceId: %@, \n\tOrder: %lu, \n\tProperties: %@, \n\tLinkedServices: %@, \n\t %@", serviceUUID, serviceInstanceId, serviceInstanceOrder, v14, linkedServices, v4];

  return v16;
}

@end