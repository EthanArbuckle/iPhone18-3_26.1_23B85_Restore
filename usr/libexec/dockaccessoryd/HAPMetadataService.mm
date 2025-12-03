@interface HAPMetadataService
- (HAPMetadataService)initWithName:(id)name uuid:(id)uuid description:(id)description mandatoryChrTypes:(id)types properties:(id)properties linkedServices:(id)services;
- (id)description;
- (id)generateDictionary:(id)dictionary metadata:(id)metadata;
- (void)dump;
@end

@implementation HAPMetadataService

- (HAPMetadataService)initWithName:(id)name uuid:(id)uuid description:(id)description mandatoryChrTypes:(id)types properties:(id)properties linkedServices:(id)services
{
  nameCopy = name;
  uuidCopy = uuid;
  descriptionCopy = description;
  typesCopy = types;
  propertiesCopy = properties;
  servicesCopy = services;
  v20 = 0;
  if (nameCopy && uuidCopy && descriptionCopy)
  {
    v29.receiver = self;
    v29.super_class = HAPMetadataService;
    v20 = [(HAPMetadataService *)&v29 init];
    if (v20)
    {
      v21 = [nameCopy copy];
      v22 = *(v20 + 2);
      *(v20 + 2) = v21;

      v23 = [uuidCopy copy];
      v24 = *(v20 + 4);
      *(v20 + 4) = v23;

      v25 = [descriptionCopy copy];
      v26 = *(v20 + 3);
      *(v20 + 3) = v25;

      objc_storeStrong(v20 + 8, types);
      objc_storeStrong(v20 + 6, properties);
      v27 = servicesCopy;
      self = *(v20 + 7);
      *(v20 + 7) = v27;
    }

    else
    {
      self = 0;
    }
  }

  return v20;
}

- (id)generateDictionary:(id)dictionary metadata:(id)metadata
{
  dictionaryCopy = dictionary;
  metadataCopy = metadata;
  v8 = +[NSMutableDictionary dictionary];
  uuidStr = [(HAPMetadataService *)self uuidStr];
  v30 = dictionaryCopy;
  v10 = [HAPMetadata shortenHAPType:uuidStr baseUUIDSuffix:dictionaryCopy];
  [v8 setObject:v10 forKeyedSubscript:@"ShortUUID"];

  svcDescription = [(HAPMetadataService *)self svcDescription];
  [v8 setObject:svcDescription forKeyedSubscript:@"DefaultDescription"];

  [v8 setObject:&stru_10027BDA0 forKeyedSubscript:@"LocalizationKey"];
  btleuuidStr = [(HAPMetadataService *)self btleuuidStr];

  if (btleuuidStr)
  {
    btleuuidStr2 = [(HAPMetadataService *)self btleuuidStr];
    [v8 setObject:btleuuidStr2 forKeyedSubscript:@"BTLE_ShortUUID"];
  }

  v14 = +[NSMutableDictionary dictionary];
  v15 = +[NSMutableArray array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  mandatoryCharacteristics = [(HAPMetadataService *)self mandatoryCharacteristics];
  v17 = [mandatoryCharacteristics countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v36;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(mandatoryCharacteristics);
        }

        v21 = [metadataCopy characteristicUTIFromType:*(*(&v35 + 1) + 8 * i)];
        if (v21)
        {
          [v15 addObject:v21];
        }
      }

      v18 = [mandatoryCharacteristics countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v18);
  }

  if ([v15 count])
  {
    [v14 setObject:v15 forKeyedSubscript:@"Required"];
  }

  v22 = +[NSMutableArray array];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  mandatoryCharacteristics2 = [(HAPMetadataService *)self mandatoryCharacteristics];
  v24 = [mandatoryCharacteristics2 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v32;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(mandatoryCharacteristics2);
        }

        v28 = [metadataCopy characteristicUTIFromType:*(*(&v31 + 1) + 8 * j)];
        if (v28)
        {
          [v22 addObject:v28];
        }
      }

      v25 = [mandatoryCharacteristics2 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v25);
  }

  if ([v22 count])
  {
    [v14 setObject:v22 forKeyedSubscript:@"Optional"];
  }

  if ([v14 count])
  {
    [v8 setObject:v14 forKeyedSubscript:@"Characteristics"];
  }

  if ([(HAPMetadataService *)self allowAssociatedService])
  {
    [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"AllowAssociatedService"];
  }

  return v8;
}

- (id)description
{
  v3 = +[NSMutableString string];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  mandatoryCharacteristics = [(HAPMetadataService *)self mandatoryCharacteristics];
  v5 = [mandatoryCharacteristics countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(mandatoryCharacteristics);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        name = [v9 name];
        uuidStr = [v9 uuidStr];
        [v3 appendFormat:@"%@(%@), ", name, uuidStr];
      }

      v6 = [mandatoryCharacteristics countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v6);
  }

  v12 = +[NSMutableString string];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  optionalCharacteristics = [(HAPMetadataService *)self optionalCharacteristics];
  v14 = [optionalCharacteristics countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(optionalCharacteristics);
        }

        v18 = *(*(&v26 + 1) + 8 * j);
        name2 = [v18 name];
        uuidStr2 = [v18 uuidStr];
        [v12 appendFormat:@"%@(%@), ", name2, uuidStr2];
      }

      v15 = [optionalCharacteristics countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v15);
  }

  name3 = [(HAPMetadataService *)self name];
  uuidStr3 = [(HAPMetadataService *)self uuidStr];
  svcDescription = [(HAPMetadataService *)self svcDescription];
  v24 = [NSString stringWithFormat:@"HAPMetadataService %@(%@) - %@ - mandatory %@, optional %@", name3, uuidStr3, svcDescription, v3, v12];

  return v24;
}

- (void)dump
{
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(0);
    name = [(HAPMetadataService *)self name];
    uuidStr = [(HAPMetadataService *)self uuidStr];
    svcDescription = [(HAPMetadataService *)self svcDescription];
    *buf = 138544130;
    v53 = v4;
    v54 = 2112;
    v55 = name;
    v56 = 2112;
    v57 = uuidStr;
    v58 = 2112;
    v59 = svcDescription;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@HAPMetadataCharaceristics %@(%@):  description: %@", buf, 0x2Au);
  }

  if ([(HAPMetadataService *)self allowAssociatedService])
  {
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = sub_10007FAFC(0);
      allowAssociatedService = [(HAPMetadataService *)self allowAssociatedService];
      *buf = 138543618;
      v53 = v9;
      v54 = 2048;
      v55 = allowAssociatedService;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@AllowAssociatedService: %ld", buf, 0x16u);
    }
  }

  mandatoryCharacteristics = [(HAPMetadataService *)self mandatoryCharacteristics];
  v12 = [mandatoryCharacteristics count];

  if (v12)
  {
    v13 = sub_10007FAA0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = sub_10007FAFC(0);
      *buf = 138543362;
      v53 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{public}@Mandatory characteristics:", buf, 0xCu);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    selfCopy = self;
    mandatoryCharacteristics2 = [(HAPMetadataService *)self mandatoryCharacteristics];
    v16 = [mandatoryCharacteristics2 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v47;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v47 != v18)
          {
            objc_enumerationMutation(mandatoryCharacteristics2);
          }

          v20 = *(*(&v46 + 1) + 8 * i);
          v21 = sub_10007FAA0();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = sub_10007FAFC(0);
            name2 = [v20 name];
            uuidStr2 = [v20 uuidStr];
            chrDescription = [v20 chrDescription];
            *buf = 138544130;
            v53 = v22;
            v54 = 2112;
            v55 = name2;
            v56 = 2112;
            v57 = uuidStr2;
            v58 = 2112;
            v59 = chrDescription;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%{public}@%@(%@) - %@", buf, 0x2Au);
          }
        }

        v17 = [mandatoryCharacteristics2 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v17);
    }

    self = selfCopy;
  }

  optionalCharacteristics = [(HAPMetadataService *)self optionalCharacteristics];
  v27 = [optionalCharacteristics count];

  if (v27)
  {
    v28 = sub_10007FAA0();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = sub_10007FAFC(0);
      *buf = 138543362;
      v53 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%{public}@Optional characteristics:", buf, 0xCu);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    optionalCharacteristics2 = [(HAPMetadataService *)self optionalCharacteristics];
    v31 = [optionalCharacteristics2 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v43;
      do
      {
        for (j = 0; j != v32; j = j + 1)
        {
          if (*v43 != v33)
          {
            objc_enumerationMutation(optionalCharacteristics2);
          }

          v35 = *(*(&v42 + 1) + 8 * j);
          v36 = sub_10007FAA0();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = sub_10007FAFC(0);
            name3 = [v35 name];
            uuidStr3 = [v35 uuidStr];
            chrDescription2 = [v35 chrDescription];
            *buf = 138544130;
            v53 = v37;
            v54 = 2112;
            v55 = name3;
            v56 = 2112;
            v57 = uuidStr3;
            v58 = 2112;
            v59 = chrDescription2;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%{public}@%@(%@) - %@", buf, 0x2Au);
          }
        }

        v32 = [optionalCharacteristics2 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v32);
    }
  }
}

@end