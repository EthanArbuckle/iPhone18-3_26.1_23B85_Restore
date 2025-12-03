@interface HAPService
- (BOOL)_updateCharacteristic:(id)characteristic;
- (BOOL)_validateMandatoryCharacteristics;
- (BOOL)_validateServiceCharacteristics;
- (BOOL)isEqual:(id)equal;
- (BOOL)mergeObject:(id)object;
- (BOOL)shouldMergeObject:(id)object;
- (BOOL)updateAndValidateCharacteristics;
- (CBService)cbService;
- (HAPAccessory)accessory;
- (HAPService)initWithType:(id)type instanceID:(id)d parsedCharacteristics:(id)characteristics serviceProperties:(unint64_t)properties linkedServices:(id)services;
- (NSString)description;
- (id)characteristicsOfType:(id)type;
- (id)propertiesDescription;
- (unint64_t)hash;
@end

@implementation HAPService

- (CBService)cbService
{
  v2 = objc_getAssociatedObject(self, "cbService");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HAPService)initWithType:(id)type instanceID:(id)d parsedCharacteristics:(id)characteristics serviceProperties:(unint64_t)properties linkedServices:(id)services
{
  typeCopy = type;
  dCopy = d;
  characteristicsCopy = characteristics;
  servicesCopy = services;
  if (sub_10007E584(typeCopy))
  {
    v16 = sub_10007E724(typeCopy);
    if (v16)
    {
      if (sub_10007EA14(dCopy))
      {
        v38.receiver = self;
        v38.super_class = HAPService;
        self = [(HAPService *)&v38 init];
        if (self)
        {
          v36 = servicesCopy;
          +[HAPMetadata getSharedInstance];
          v34 = dCopy;
          v18 = v17 = characteristicsCopy;
          v19 = [HMFObjectCacheNSString hmf_cachedInstanceForString:v16];
          type = self->_type;
          self->_type = v19;

          v35 = v18;
          v21 = v18;
          characteristicsCopy = v17;
          dCopy = v34;
          v37 = [v21 serviceUTIFromType:v16];
          if (v37)
          {
            log = sub_10007FAA0();
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
            {
              v22 = sub_10007FAFC(0);
              v23 = self->_type;
              *buf = 138544130;
              v40 = v22;
              v24 = v22;
              v41 = 2112;
              v42 = v23;
              v43 = 2112;
              v44 = v37;
              v45 = 2112;
              v46 = v34;
              _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%{public}@%@ ----> %@ [%@]", buf, 0x2Au);
            }
          }

          objc_storeStrong(&self->_instanceID, d);
          servicesCopy = v36;
          if (characteristicsCopy)
          {
            if ([characteristicsCopy count] >= 0x65)
            {
              v25 = sub_10007FAA0();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                v26 = sub_10007FAFC(0);
                *buf = 138543362;
                v40 = v26;
                v27 = "%{public}@### HAPService exceeds maximum number of allowed characteristics";
LABEL_28:
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v27, buf, 0xCu);

                goto LABEL_29;
              }

              goto LABEL_29;
            }

            objc_storeStrong(&self->_characteristics, characteristics);
            if (![(HAPService *)self updateAndValidateCharacteristics])
            {
              v25 = sub_10007FAA0();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                v26 = sub_10007FAFC(0);
                *buf = 138543362;
                v40 = v26;
                v27 = "%{public}@### HAPService failed updateAndValidateCharacteristics";
                goto LABEL_28;
              }

LABEL_29:

              goto LABEL_21;
            }
          }

          self->_serviceProperties = properties;
          objc_storeStrong(&self->_linkedServices, services);
        }

        self = self;
        selfCopy = self;
        goto LABEL_22;
      }

      v28 = sub_10007FAA0();
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      v29 = sub_10007FAFC(0);
      *buf = 138543362;
      v40 = v29;
      v30 = "%{public}@### Unable to initialize service because of invalid instance ID";
      goto LABEL_19;
    }

    v28 = sub_10007FAA0();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = sub_10007FAFC(0);
      *buf = 138543362;
      v40 = v29;
      v30 = "%{public}@### Unable to initialize service because type name is not a UUID";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, v30, buf, 0xCu);
    }

LABEL_20:

    goto LABEL_21;
  }

  v16 = sub_10007FAA0();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v28 = sub_10007FAFC(0);
    *buf = 138543618;
    v40 = v28;
    v41 = 2112;
    v42 = typeCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@### Unable to initialize service because of invalid service type name: %@", buf, 0x16u);
    goto LABEL_20;
  }

LABEL_21:
  selfCopy = 0;
LABEL_22:

  return selfCopy;
}

- (unint64_t)hash
{
  instanceID = [(HAPService *)self instanceID];
  v3 = [instanceID hash];

  return v3;
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
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (!v6)
    {
      goto LABEL_8;
    }

    instanceID = [(HAPService *)self instanceID];
    instanceID2 = [(HAPService *)v6 instanceID];
    v9 = sub_10007EC60(instanceID, instanceID2);

    if (v9 & 1) != 0 || ([(HAPService *)self type], v10 = objc_claimAutoreleasedReturnValue(), [(HAPService *)v6 type], v11 = objc_claimAutoreleasedReturnValue(), v12 = sub_10007EC2C(v10, v11), v11, v10, (v12))
    {
LABEL_8:
      v13 = 0;
    }

    else
    {
      accessory = [(HAPService *)self accessory];
      if (accessory)
      {
        v16 = accessory;
        accessory2 = [(HAPService *)v6 accessory];
        if (accessory2)
        {
          v18 = accessory2;
          accessory3 = [(HAPService *)self accessory];
          accessory4 = [(HAPService *)v6 accessory];
          v13 = [accessory3 isEqual:accessory4];
        }

        else
        {
          v13 = 1;
        }
      }

      else
      {
        v13 = 1;
      }
    }
  }

  return v13 & 1;
}

- (NSString)description
{
  v3 = objc_alloc_init(NSMutableString);
  instanceID = [(HAPService *)self instanceID];
  [v3 appendFormat:@"Instance ID: %@", instanceID];

  type = [(HAPService *)self type];
  [v3 appendFormat:@", Type: %@", type];

  propertiesDescription = [(HAPService *)self propertiesDescription];
  [v3 appendFormat:@", Properties: %@", propertiesDescription];

  linkedServices = [(HAPService *)self linkedServices];
  [v3 appendFormat:@", Linked Service: %@", linkedServices];

  return v3;
}

- (id)propertiesDescription
{
  v3 = objc_alloc_init(NSMutableArray);
  if (([(HAPService *)self serviceProperties]& 1) != 0)
  {
    [v3 addObject:@"primary"];
  }

  if (([(HAPService *)self serviceProperties]& 2) != 0)
  {
    [v3 addObject:@"hidden"];
  }

  if ([v3 count])
  {
    v4 = objc_alloc_init(NSMutableString);
    v5 = [v3 objectAtIndexedSubscript:0];
    [v4 appendString:v5];

    v6 = [v3 objectAtIndexedSubscript:0];
    [v3 removeObject:v6];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v4 appendFormat:@", %@", *(*(&v13 + 1) + 8 * i)];
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)updateAndValidateCharacteristics
{
  selfCopy = self;
  if ([(HAPService *)self _validateServiceCharacteristics])
  {
    v3 = [NSMutableSet alloc];
    characteristics = [selfCopy characteristics];
    v5 = [v3 initWithCapacity:{objc_msgSend(characteristics, "count")}];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    characteristics2 = [selfCopy characteristics];
    v7 = [characteristics2 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (!v7)
    {
      v15 = 1;
      goto LABEL_23;
    }

    v8 = v7;
    v9 = *v23;
LABEL_4:
    v10 = 0;
    while (1)
    {
      if (*v23 != v9)
      {
        objc_enumerationMutation(characteristics2);
      }

      v11 = *(*(&v22 + 1) + 8 * v10);
      instanceID = [v11 instanceID];
      v13 = [v5 containsObject:instanceID];

      if (v13)
      {
        break;
      }

      instanceID2 = [v11 instanceID];
      [v5 addObject:instanceID2];

      if (([selfCopy _updateCharacteristic:v11] & 1) == 0)
      {
        v20 = selfCopy;
        v17 = sub_10007FAA0();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = sub_10007FAFC(v20);
          *buf = 138543362;
          v28 = v18;
          v19 = "%{public}@Failed to update characteristic";
LABEL_19:
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
        }

        goto LABEL_20;
      }

      if (v8 == ++v10)
      {
        v8 = [characteristics2 countByEnumeratingWithState:&v22 objects:v26 count:16];
        v15 = 1;
        if (v8)
        {
          goto LABEL_4;
        }

        goto LABEL_23;
      }
    }

    v16 = selfCopy;
    v17 = sub_10007FAA0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = sub_10007FAFC(v16);
      *buf = 138543362;
      v28 = v18;
      v19 = "%{public}@Duplicate characteristic instance IDs";
      goto LABEL_19;
    }

LABEL_20:

    goto LABEL_21;
  }

  v5 = selfCopy;
  characteristics2 = sub_10007FAA0();
  if (os_log_type_enabled(characteristics2, OS_LOG_TYPE_ERROR))
  {
    selfCopy = sub_10007FAFC(v5);
    *buf = 138543362;
    v28 = selfCopy;
    _os_log_impl(&_mh_execute_header, characteristics2, OS_LOG_TYPE_ERROR, "%{public}@Failed to validate characteristics", buf, 0xCu);
LABEL_21:
  }

  v15 = 0;
LABEL_23:

  return v15;
}

- (BOOL)_updateCharacteristic:(id)characteristic
{
  if (characteristic)
  {
    [characteristic setService:self];
  }

  return 1;
}

- (BOOL)_validateServiceCharacteristics
{
  characteristics = [(HAPService *)self characteristics];
  v4 = [characteristics count];

  if (v4)
  {
    [(HAPService *)self _validateMandatoryCharacteristics];
  }

  else
  {
    selfCopy = self;
    v6 = sub_10007FAA0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = sub_10007FAFC(selfCopy);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@One or more characteristics are required", &v9, 0xCu);
    }
  }

  return v4 != 0;
}

- (BOOL)_validateMandatoryCharacteristics
{
  v3 = +[HAPMetadata getSharedInstance];
  v4 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  characteristics = [(HAPService *)self characteristics];
  v6 = [characteristics countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(characteristics);
        }

        type = [*(*(&v14 + 1) + 8 * v9) type];
        [v4 addObject:type];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [characteristics countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  type2 = [(HAPService *)self type];
  v12 = [v3 validateMandatoryCharacteristics:v4 forService:type2];

  return v12;
}

- (id)characteristicsOfType:(id)type
{
  typeCopy = type;
  v5 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  characteristics = [(HAPService *)self characteristics];
  v7 = [characteristics countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(characteristics);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        type = [v11 type];
        v13 = [type isEqualToString:typeCopy];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [characteristics countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)shouldMergeObject:(id)object
{
  objectCopy = object;
  if ([(HAPService *)self isEqual:objectCopy])
  {
    characteristics = [(HAPService *)self characteristics];
    v6 = [NSSet setWithArray:characteristics];

    v23 = objectCopy;
    characteristics2 = [objectCopy characteristics];
    v8 = [NSSet setWithArray:characteristics2];

    v22 = v6;
    v9 = [v6 mutableCopy];
    [v9 intersectSet:v8];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (!v11)
    {
      v14 = 1;
      goto LABEL_18;
    }

    v12 = v11;
    v13 = *v25;
    v14 = 1;
    while (1)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = [v8 member:v16];
        if (v17)
        {
          if ([v16 shouldMergeObject:v17])
          {
            goto LABEL_13;
          }

          selfCopy = self;
          v19 = sub_10007FAA0();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = sub_10007FAFC(selfCopy);
            *buf = 138543874;
            v29 = v20;
            v30 = 2112;
            v31 = v17;
            v32 = 2112;
            v33 = v10;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to merge characteristic, %@, with existing characteristic: %@", buf, 0x20u);
          }
        }

        v14 = 0;
LABEL_13:
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v34 count:16];
      if (!v12)
      {
LABEL_18:

        objectCopy = v23;
        goto LABEL_19;
      }
    }
  }

  v14 = 0;
LABEL_19:

  return v14 & 1;
}

- (BOOL)mergeObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    if ([(HAPService *)self shouldMergeObject:v6])
    {
      v57 = v6;
      characteristics = [(HAPService *)self characteristics];
      v8 = [NSSet setWithArray:characteristics];

      v58 = objectCopy;
      characteristics2 = [objectCopy characteristics];
      v10 = [NSSet setWithArray:characteristics2];

      v59 = v8;
      v11 = [(HAPService *)v8 mutableCopy];
      v60 = v10;
      [v11 minusSet:v10];
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      obj = v11;
      v12 = [obj countByEnumeratingWithState:&v73 objects:v79 count:16];
      v61 = v12 != 0;
      if (v12)
      {
        v13 = v12;
        v14 = *v74;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v74 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v73 + 1) + 8 * i);
            selfCopy = self;
            v18 = sub_10007FAA0();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = sub_10007FAFC(selfCopy);
              *buf = 138543618;
              v81 = v19;
              v82 = 2112;
              v83 = v16;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%{public}@Removed characteristic: %@", buf, 0x16u);
            }
          }

          v13 = [obj countByEnumeratingWithState:&v73 objects:v79 count:16];
        }

        while (v13);
      }

      v20 = [v10 mutableCopy];
      v21 = v59;
      [v20 minusSet:v59];
      characteristics3 = [(HAPService *)self characteristics];
      firstObject = [characteristics3 firstObject];
      shouldValidateValueAfterReading = [firstObject shouldValidateValueAfterReading];

      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v63 = v20;
      v25 = [v63 countByEnumeratingWithState:&v69 objects:v78 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v70;
        do
        {
          for (j = 0; j != v26; j = j + 1)
          {
            if (*v70 != v27)
            {
              objc_enumerationMutation(v63);
            }

            v29 = *(*(&v69 + 1) + 8 * j);
            selfCopy2 = self;
            v31 = sub_10007FAA0();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              v32 = sub_10007FAFC(selfCopy2);
              *buf = 138543618;
              v81 = v32;
              v82 = 2112;
              v83 = v29;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%{public}@Added characteristic: %@", buf, 0x16u);
            }

            [v29 setService:selfCopy2];
            [v29 setShouldValidateValueAfterReading:shouldValidateValueAfterReading];
          }

          v26 = [v63 countByEnumeratingWithState:&v69 objects:v78 count:16];
        }

        while (v26);
        v61 = 1;
        v21 = v59;
      }

      v33 = [(HAPService *)v21 mutableCopy];
      [v33 minusSet:obj];
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v62 = v33;
      v34 = [v62 countByEnumeratingWithState:&v65 objects:v77 count:16];
      v35 = v60;
      if (v34)
      {
        v36 = v34;
        v37 = *v66;
        do
        {
          for (k = 0; k != v36; k = k + 1)
          {
            if (*v66 != v37)
            {
              objc_enumerationMutation(v62);
            }

            v39 = *(*(&v65 + 1) + 8 * k);
            selfCopy3 = self;
            v41 = sub_10007FAA0();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              v42 = sub_10007FAFC(selfCopy3);
              *buf = 138543618;
              v81 = v42;
              v82 = 2112;
              v83 = v39;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "%{public}@Merging existing characteristic: %@", buf, 0x16u);
            }

            v43 = [v35 member:v39];
            if (v43 && [v39 mergeObject:v43])
            {
              v44 = selfCopy3;
              v45 = sub_10007FAA0();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
              {
                v46 = sub_10007FAFC(v44);
                *buf = 138543618;
                v81 = v46;
                v82 = 2112;
                v83 = v39;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "%{public}@Updated characteristic: %@", buf, 0x16u);

                v35 = v60;
              }

              v61 = 1;
            }
          }

          v36 = [v62 countByEnumeratingWithState:&v65 objects:v77 count:16];
        }

        while (v36);
      }

      allObjects = [v62 allObjects];
      v48 = [NSMutableArray arrayWithArray:allObjects];

      allObjects2 = [v63 allObjects];
      [v48 addObjectsFromArray:allObjects2];

      v50 = [v48 copy];
      [(HAPService *)self setCharacteristics:v50];

      v6 = v57;
      -[HAPService setServiceProperties:](self, "setServiceProperties:", [v57 serviceProperties]);
      linkedServices = [v57 linkedServices];
      [(HAPService *)self setLinkedServices:linkedServices];

      objectCopy = v58;
      selfCopy4 = v59;
      v53 = v61;
    }

    else
    {
      selfCopy4 = self;
      v54 = sub_10007FAA0();
      v60 = v54;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v55 = sub_10007FAFC(selfCopy4);
        *buf = 138543618;
        v81 = v55;
        v82 = 2112;
        v83 = v6;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "%{public}@Not merging with service: %@", buf, 0x16u);
      }

      v53 = 0;
    }
  }

  else
  {
    v53 = 0;
  }

  return v53;
}

- (HAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

@end