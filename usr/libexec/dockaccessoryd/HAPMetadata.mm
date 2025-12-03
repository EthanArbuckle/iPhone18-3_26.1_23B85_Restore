@interface HAPMetadata
+ (id)getSharedInstance;
+ (id)shortenHAPType:(id)type baseUUIDSuffix:(id)suffix;
+ (void)setCurrentMetadataHook:(id)hook;
- (BOOL)allowAssociatedService:(id)service;
- (BOOL)isMandatoryCharacteristic:(id)characteristic forService:(id)service;
- (BOOL)isStandardHAPCharacteristic:(id)characteristic;
- (BOOL)isStandardHAPCharacteristicName:(id)name;
- (BOOL)isStandardHAPService:(id)service;
- (BOOL)isStandardHAPServiceName:(id)name;
- (BOOL)isStandardHAPUnitName:(id)name;
- (BOOL)parseMetadata:(id)metadata;
- (BOOL)parseVersion:(id)version;
- (BOOL)supportsAdditionalAuthorizationData:(id)data forService:(id)service;
- (BOOL)updateRawPlist;
- (BOOL)validateMandatoryCharacteristics:(id)characteristics forService:(id)service;
- (HAPMetadata)initWithDictionary:(id)dictionary error:(id *)error;
- (HAPMetadata)initWithServices:(id)services characteristics:(id)characteristics units:(id)units properties:(id)properties addAuthDataTuples:(id)tuples hapBaseUUIDSuffix:(id)suffix;
- (NSArray)hapCharacteristics;
- (NSArray)hapProperties;
- (NSArray)hapServices;
- (NSArray)hapSupportsAuthDataTuples;
- (NSArray)hapValueUnits;
- (id)btleToServiceType:(id)type;
- (id)characteristicTypeFromUTI:(id)i;
- (id)characteristicUTIFromType:(id)type;
- (id)characteristicValueUnitOfType:(id)type;
- (id)descriptionFromCharacteristicType:(id)type;
- (id)descriptionFromServiceType:(id)type;
- (id)generateDictionary;
- (id)generateHAPMetadataTuplesDictionary:(id)dictionary;
- (id)getDefaultCharacteristicMetadata:(id)metadata;
- (id)getDefaultCharacteristicProperties:(id)properties;
- (id)getDefaultServiceProperties:(id)properties;
- (id)hapCharacteristicFromName:(id)name;
- (id)hapCharacteristicFromType:(id)type;
- (id)hapServiceFromName:(id)name;
- (id)hapServiceFromType:(id)type;
- (id)hapUnitFromName:(id)name;
- (id)parseCharacteristicServiceTuples:(id)tuples;
- (id)parseCharacteristicValue:(id)value;
- (id)parseCharacteristics:(id)characteristics;
- (id)parseProperties:(id)properties;
- (id)parseServiceCharacteristics:(id)characteristics;
- (id)parseServices:(id)services;
- (id)parseUnits:(id)units;
- (id)serviceTypeFromUTI:(id)i;
- (id)serviceTypeToBTLE:(id)e;
- (id)serviceUTIFromType:(id)type;
@end

@implementation HAPMetadata

- (HAPMetadata)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = HAPMetadata;
  v7 = [(HAPMetadata *)&v24 init];
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = +[NSMutableArray array];
  [(HAPMetadata *)v7 setParsedUUIDs:v8];

  if (![(HAPMetadata *)v7 parseVersion:dictionaryCopy])
  {
    v15 = sub_10007FAA0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = sub_10007FAFC(0);
      *buf = 138543362;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse version information", buf, 0xCu);
    }

    if (!error)
    {
      goto LABEL_21;
    }

    v17 = 23;
    goto LABEL_15;
  }

  schemaVersion = [(HAPMetadata *)v7 schemaVersion];
  unsignedIntegerValue = [schemaVersion unsignedIntegerValue];
  v11 = qword_1002A5E38;

  if (unsignedIntegerValue != v11)
  {
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_10007FAFC(0);
      schemaVersion2 = [(HAPMetadata *)v7 schemaVersion];
      *buf = 138543874;
      v26 = v19;
      v27 = 2112;
      v28 = schemaVersion2;
      v29 = 2048;
      v30 = qword_1002A5E38;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@Newer schema version %@, current %lu", buf, 0x20u);
    }

    if (!error)
    {
      goto LABEL_21;
    }

    v17 = 25;
LABEL_15:
    [NSError errorWithDomain:@"DKErrorDomain" code:v17 userInfo:0];
    *error = v14 = 0;
    goto LABEL_22;
  }

  v12 = [dictionaryCopy hmf_dictionaryForKey:@"HAP"];
  if (![(HAPMetadata *)v7 parseMetadata:v12])
  {
    v21 = sub_10007FAA0();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = sub_10007FAFC(0);
      *buf = 138543362;
      v26 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse HAP metadata", buf, 0xCu);
    }

    if (error)
    {
      *error = [NSError errorWithDomain:@"DKErrorDomain" code:23 userInfo:0];
    }

LABEL_21:
    v14 = 0;
    goto LABEL_22;
  }

  [(HAPMetadata *)v7 setParsedUUIDs:0];
  rawPlist = v7->_rawPlist;
  v7->_rawPlist = v12;

LABEL_6:
  v14 = v7;
LABEL_22:

  return v14;
}

+ (void)setCurrentMetadataHook:(id)hook
{
  v3 = objc_retainBlock(hook);
  v4 = qword_1002ACB90;
  qword_1002ACB90 = v3;
}

+ (id)getSharedInstance
{
  v3 = qword_1002ACB90;
  if (qword_1002ACB90)
  {
    v3 = (*(qword_1002ACB90 + 16))();
    v2 = vars8;
  }

  return v3;
}

- (BOOL)parseVersion:(id)version
{
  versionCopy = version;
  v5 = [versionCopy hmf_numberForKey:@"Version"];
  [(HAPMetadata *)self setVersion:v5];

  v6 = [versionCopy hmf_numberForKey:@"SchemaVersion"];

  [(HAPMetadata *)self setSchemaVersion:v6];
  version = [(HAPMetadata *)self version];
  if (version)
  {
    schemaVersion = [(HAPMetadata *)self schemaVersion];
    v9 = schemaVersion != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)parseUnits:(id)units
{
  unitsCopy = units;
  v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [unitsCopy count]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = unitsCopy;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v5 hmf_dictionaryForKey:{v10, v19}];
        v12 = [v11 hmf_stringForKey:@"DefaultDescription"];
        v13 = [[HAPMetadataUnit alloc] initWithName:v10 description:v12];
        if (!v13)
        {
          v16 = sub_10007FAA0();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = sub_10007FAFC(0);
            *buf = 138543874;
            v24 = v17;
            v25 = 2112;
            v26 = v10;
            v27 = 2112;
            v28 = v12;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse HAP unit %@  description %@", buf, 0x20u);
          }

          v15 = 0;
          goto LABEL_13;
        }

        v14 = v13;
        [v4 setObject:v13 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v29 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = [v4 copy];
LABEL_13:

  return v15;
}

- (id)parseProperties:(id)properties
{
  propertiesCopy = properties;
  v23 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [propertiesCopy count]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = propertiesCopy;
  v25 = [v4 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v25)
  {
    v24 = *v27;
    v6 = @"Position";
    v7 = @"DefaultDescription";
    v8 = &OBJC_IVAR___HAPBTLEServiceSignature__serviceInstanceID;
    *&v5 = 138544130;
    v21 = v5;
    v22 = v4;
    while (2)
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [v4 hmf_dictionaryForKey:{v10, v21}];
        v12 = [v11 hmf_numberForKey:v6];
        v13 = [v11 hmf_stringForKey:v7];
        v14 = [objc_alloc((v8 + 504)) initWithType:v10 bitPosition:v12 description:v13];
        if (v14)
        {
          [v23 setObject:v14 forKey:v10];
        }

        else
        {
          v15 = v7;
          v16 = v6;
          v17 = sub_10007FAA0();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = sub_10007FAFC(0);
            *buf = v21;
            v31 = v18;
            v32 = 2112;
            v33 = v10;
            v34 = 2112;
            v35 = v12;
            v36 = 2112;
            v37 = v13;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse HAP property %@  bitPosition %@ description %@", buf, 0x2Au);

            v4 = v22;
          }

          v6 = v16;
          v7 = v15;
          v8 = &OBJC_IVAR___HAPBTLEServiceSignature__serviceInstanceID;
        }

        if (!v14)
        {

          v19 = 0;
          goto LABEL_16;
        }
      }

      v25 = [v4 countByEnumeratingWithState:&v26 objects:v38 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  v19 = [v23 copy];
LABEL_16:

  return v19;
}

- (id)parseCharacteristicValue:(id)value
{
  valueCopy = value;
  v4 = [valueCopy hmf_numberForKey:@"MinLength"];
  v5 = [valueCopy hmf_numberForKey:@"MaxLength"];
  if (v4 | v5)
  {
    v6 = [[HAPMetadataCharacteristicValue alloc] initWithMinLength:v4 maxLength:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [valueCopy hmf_numberForKey:@"MinValue"];
  v8 = [valueCopy hmf_numberForKey:@"MaxValue"];
  v9 = [valueCopy hmf_numberForKey:@"StepValue"];
  v10 = [valueCopy hmf_arrayForKey:@"ValidValues"];
  if (v7 || v8 || v9)
  {
    if (v6)
    {
      v11 = sub_10007FAA0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15 = sub_10007FAFC(0);
        [valueCopy hmf_stringForKey:@"ShortUUID"];
        *buf = 138544898;
        v17 = v15;
        v19 = v18 = 2112;
        v12 = v19;
        v20 = 2112;
        v21 = v4;
        v22 = 2112;
        v23 = v5;
        v24 = 2112;
        v25 = v7;
        v26 = 2112;
        v27 = v5;
        v28 = 2112;
        v29 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@Characteristic %@ has both length and value metadata: minLength %@  maxLength %@  minValue %@  maxValue %@  stepValue %@", buf, 0x48u);
      }
    }

    v13 = [[HAPMetadataCharacteristicValue alloc] initWithMinValue:v7 maxValue:v8 stepValue:v9 validValues:v10];

    v6 = v13;
  }

  return v6;
}

- (id)parseCharacteristics:(id)characteristics
{
  characteristicsCopy = characteristics;
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [characteristicsCopy count]);
  v6 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [characteristicsCopy count]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v7 = characteristicsCopy;
  v40 = [v7 countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v40)
  {
    v41 = *v44;
    *&v8 = 138544130;
    v34 = v8;
    v36 = v6;
    v37 = v5;
    selfCopy = self;
    v39 = v7;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v44 != v41)
      {
        objc_enumerationMutation(v7);
      }

      v10 = *(*(&v43 + 1) + 8 * v9);
      v11 = [v7 hmf_dictionaryForKey:{v10, v34}];
      v12 = [v11 hmf_stringForKey:@"ShortUUID"];
      v13 = [v12 length];
      if (v13 != kMetadataShortUUIDLength)
      {
        break;
      }

      parsedUUIDs = [(HAPMetadata *)self parsedUUIDs];
      v15 = [parsedUUIDs containsObject:v12];

      if (v15)
      {
        v28 = sub_10007FAA0();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = sub_10007FAFC(0);
          *buf = 138543874;
          v48 = v29;
          v49 = 2112;
          v50 = v10;
          v51 = 2112;
          v52 = v12;
          v30 = "%{public}@characteristic %@: UUID %@ is already defined in the metadata";
          v31 = v28;
          v32 = 32;
LABEL_23:
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, v30, buf, v32);
        }

        goto LABEL_24;
      }

      parsedUUIDs2 = [(HAPMetadata *)self parsedUUIDs];
      [parsedUUIDs2 addObject:v12];

      v17 = [v11 hmf_stringForKey:@"DefaultDescription"];
      v18 = [v11 hmf_stringForKey:@"Format"];
      v19 = [v11 hmf_numberForKey:@"Properties"];
      hapBaseUUIDSuffix = [(HAPMetadata *)self hapBaseUUIDSuffix];
      v21 = [v12 stringByAppendingString:hapBaseUUIDSuffix];

      v42 = v18;
      v22 = [[HAPMetadataCharacteristic alloc] initWithName:v10 uuid:v21 description:v17 format:v18 properties:v19];
      v23 = [v11 hmf_stringForKey:@"Units"];
      [(HAPMetadataCharacteristic *)v22 setUnits:v23];

      v24 = [(HAPMetadata *)self parseCharacteristicValue:v11];
      if (v24)
      {
        [(HAPMetadataCharacteristic *)v22 setValueMetadata:v24];
      }

      if (v22)
      {
        [v37 setObject:v22 forKey:v21];
        [v36 setObject:v21 forKey:v10];
      }

      else
      {
        v25 = sub_10007FAA0();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v35 = sub_10007FAFC(0);
          *buf = v34;
          v48 = v35;
          v49 = 2112;
          v50 = v10;
          v51 = 2112;
          v52 = v12;
          v53 = 2112;
          v54 = v17;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}@characteristic %@: Failed to parse - UUID %@  description %@", buf, 0x2Au);
        }
      }

      v7 = v39;
      if (!v22)
      {
        goto LABEL_25;
      }

      v9 = v9 + 1;
      self = selfCopy;
      if (v40 == v9)
      {
        v6 = v36;
        v5 = v37;
        v40 = [v39 countByEnumeratingWithState:&v43 objects:v55 count:16];
        if (v40)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }

    v28 = sub_10007FAA0();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = sub_10007FAFC(0);
      *buf = v34;
      v48 = v29;
      v49 = 2112;
      v50 = v10;
      v51 = 2112;
      v52 = v12;
      v53 = 2048;
      v54 = kMetadataShortUUIDLength;
      v30 = "%{public}@characteristic %@: UUID '%@' length needs to be %lu";
      v31 = v28;
      v32 = 42;
      goto LABEL_23;
    }

LABEL_24:

LABEL_25:
    v27 = 0;
    v6 = v36;
    v5 = v37;
    goto LABEL_26;
  }

LABEL_18:

  v26 = [v6 copy];
  [(HAPMetadata *)self setHapCharacteristicNameTypeMap:v26];

  v27 = [v5 copy];
LABEL_26:

  return v27;
}

- (id)parseServiceCharacteristics:(id)characteristics
{
  characteristicsCopy = characteristics;
  v5 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [characteristicsCopy count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = characteristicsCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [(HAPMetadata *)self characteristicTypeFromUTI:v11, v18];
        if (!v12)
        {
          v15 = sub_10007FAA0();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = sub_10007FAFC(0);
            *buf = 138543618;
            v23 = v16;
            v24 = 2112;
            v25 = v11;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@Undefined characteristic %@ referenced", buf, 0x16u);
          }

          v14 = 0;
          goto LABEL_13;
        }

        v13 = v12;
        [v5 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = [v5 copy];
LABEL_13:

  return v14;
}

- (id)parseServices:(id)services
{
  servicesCopy = services;
  hapCharacteristicMap = [(HAPMetadata *)self hapCharacteristicMap];
  v6 = [hapCharacteristicMap count];

  if (v6)
  {
    v7 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [servicesCopy count]);
    v8 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [servicesCopy count]);
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v9 = servicesCopy;
    v61 = [v9 countByEnumeratingWithState:&v69 objects:v81 count:16];
    if (v61)
    {
      v62 = *v70;
      *&v10 = 138543618;
      v56 = v10;
      v57 = servicesCopy;
      v58 = v8;
      v59 = v7;
      v60 = v9;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v70 != v62)
        {
          objc_enumerationMutation(v9);
        }

        v67 = *(*(&v69 + 1) + 8 * v11);
        v12 = [v9 hmf_dictionaryForKey:v56];
        v13 = [v12 hmf_stringForKey:@"ShortUUID"];
        v14 = [v13 length];
        if (v14 != kMetadataShortUUIDLength)
        {
          break;
        }

        parsedUUIDs = [(HAPMetadata *)self parsedUUIDs];
        v16 = [parsedUUIDs containsObject:v13];

        if (v16)
        {
          v18 = sub_10007FAA0();
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_45;
          }

          v44 = sub_10007FAFC(0);
          *buf = 138543874;
          v74 = v44;
          v75 = 2112;
          v76 = v67;
          v77 = 2112;
          v78 = v13;
          v45 = "%{public}@service %@: UUID %@ is already defined in the metadata";
          v46 = v18;
          v47 = 32;
          goto LABEL_33;
        }

        parsedUUIDs2 = [(HAPMetadata *)self parsedUUIDs];
        [parsedUUIDs2 addObject:v13];

        v18 = [v12 hmf_stringForKey:@"DefaultDescription"];
        v68 = [v12 hmf_dictionaryForKey:@"Characteristics"];
        v19 = [v68 hmf_arrayForKey:@"Required"];
        v20 = [(HAPMetadata *)self parseServiceCharacteristics:v19];

        if (![v20 count])
        {
          v48 = sub_10007FAA0();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            v49 = sub_10007FAFC(0);
            *buf = v56;
            v74 = v49;
            v75 = 2112;
            v76 = v67;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%{public}@service %@: No mandatory characteristics", buf, 0x16u);
          }

          goto LABEL_45;
        }

        v63 = v11;
        v21 = [v12 hmf_numberForKey:@"ServiceProperties"];
        v22 = [v12 hmf_arrayForKey:@"LinkedServices"];
        hapBaseUUIDSuffix = [(HAPMetadata *)self hapBaseUUIDSuffix];
        v24 = [v13 stringByAppendingString:hapBaseUUIDSuffix];

        v25 = [HAPMetadataService alloc];
        v65 = v20;
        v66 = v18;
        v26 = v20;
        v27 = v21;
        v28 = [(HAPMetadataService *)v25 initWithName:v67 uuid:v24 description:v18 mandatoryChrTypes:v26 properties:v21 linkedServices:v22];
        if (!v28)
        {

          goto LABEL_44;
        }

        v29 = v28;
        v64 = v13;
        v30 = [v12 hmf_stringForKey:@"BTLE_ShortUUID"];
        v31 = v30;
        if (v30)
        {
          v32 = [v30 length];
          if (v32 != kMetadataBTLEUUIDLength)
          {
            v50 = sub_10007FAA0();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              v51 = sub_10007FAFC(0);
              *buf = 138544130;
              v74 = v51;
              v75 = 2112;
              v76 = v67;
              v77 = 2112;
              v78 = v31;
              v79 = 2048;
              v80 = kMetadataBTLEUUIDLength;
              v52 = "%{public}@service %@: BTLE UUID '%@' length needs to be %lu";
              v53 = v50;
              v54 = 42;
              goto LABEL_42;
            }

LABEL_43:

            v9 = v60;
            v13 = v64;
LABEL_44:
            v18 = v66;
LABEL_45:

LABEL_46:
            v42 = 0;
            servicesCopy = v57;
            v8 = v58;
            v7 = v59;
            goto LABEL_47;
          }

          parsedUUIDs3 = [(HAPMetadata *)self parsedUUIDs];
          v34 = [parsedUUIDs3 containsObject:v31];

          if (v34)
          {
            v50 = sub_10007FAA0();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              v51 = sub_10007FAFC(0);
              *buf = 138543874;
              v74 = v51;
              v75 = 2112;
              v76 = v67;
              v77 = 2112;
              v78 = v31;
              v52 = "%{public}@service %@: BTLE UUID %@ is already defined in the metadata";
              v53 = v50;
              v54 = 32;
LABEL_42:
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, v52, buf, v54);
            }

            goto LABEL_43;
          }

          parsedUUIDs4 = [(HAPMetadata *)self parsedUUIDs];
          [parsedUUIDs4 addObject:v31];

          [(HAPMetadataService *)v29 setBtleuuidStr:v31];
        }

        v36 = [v68 hmf_arrayForKey:@"Optional"];
        v37 = [(HAPMetadata *)self parseServiceCharacteristics:v36];

        if (v37)
        {
          if ([v37 count])
          {
            [(HAPMetadataService *)v29 setOptionalCharacteristics:v37];
          }

          buf[0] = 0;
          v38 = [v12 hmf_BOOLForKey:@"AllowAssociatedService" isPresent:buf];
          [(HAPMetadataService *)v29 setAllowAssociatedService:buf[0] & v38 & 1];
          [v59 setObject:v29 forKey:v24];
          [v58 setObject:v24 forKey:v67];
        }

        else
        {
          v39 = sub_10007FAA0();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v40 = sub_10007FAFC(0);
            *buf = v56;
            v74 = v40;
            v75 = 2112;
            v76 = v67;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%{public}@service %@: Error parsing optional characteristics", buf, 0x16u);
          }
        }

        v9 = v60;
        if (!v37)
        {
          goto LABEL_46;
        }

        v11 = v63 + 1;
        if (v61 == (v63 + 1))
        {
          servicesCopy = v57;
          v8 = v58;
          v7 = v59;
          v61 = [v60 countByEnumeratingWithState:&v69 objects:v81 count:16];
          if (v61)
          {
            goto LABEL_4;
          }

          goto LABEL_25;
        }
      }

      v18 = sub_10007FAA0();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_45;
      }

      v44 = sub_10007FAFC(0);
      *buf = 138544130;
      v74 = v44;
      v75 = 2112;
      v76 = v67;
      v77 = 2112;
      v78 = v13;
      v79 = 2048;
      v80 = kMetadataShortUUIDLength;
      v45 = "%{public}@service %@: UUID '%@' length needs to be %lu";
      v46 = v18;
      v47 = 42;
LABEL_33:
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, v45, buf, v47);

      goto LABEL_45;
    }

LABEL_25:

    v41 = [v8 copy];
    [(HAPMetadata *)self setHapServiceNameTypeMap:v41];

    v42 = [v7 copy];
LABEL_47:
  }

  else
  {
    v7 = sub_10007FAA0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v43 = sub_10007FAFC(0);
      *buf = 138543362;
      v74 = v43;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@No HAP characteristics", buf, 0xCu);
    }

    v42 = 0;
  }

  return v42;
}

- (id)parseCharacteristicServiceTuples:(id)tuples
{
  tuplesCopy = tuples;
  v5 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [tuplesCopy count]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = tuplesCopy;
  v7 = [v6 countByEnumeratingWithState:&v39 objects:v50 count:16];
  if (!v7)
  {
LABEL_18:

    v25 = [v5 copy];
    goto LABEL_26;
  }

  v8 = v7;
  v9 = *v40;
LABEL_3:
  v10 = 0;
LABEL_4:
  if (*v40 != v9)
  {
    objc_enumerationMutation(v6);
  }

  v11 = *(*(&v39 + 1) + 8 * v10);
  v12 = [(HAPMetadata *)self characteristicTypeFromUTI:v11];
  if (v12)
  {
    v13 = v12;
    v33 = v11;
    v14 = [v6 hmf_arrayForKey:v11];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v35 objects:v49 count:16];
    if (!v16)
    {
      goto LABEL_16;
    }

    v17 = v16;
    v18 = *v36;
    v34 = v6;
    v31 = v8;
    v32 = v9;
    v30 = v10;
LABEL_9:
    v19 = 0;
    while (1)
    {
      if (*v36 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v35 + 1) + 8 * v19);
      v21 = [(HAPMetadata *)self serviceTypeFromUTI:v20];
      if (!v21)
      {
        break;
      }

      v22 = v21;
      v23 = [[HAPMetadataTuple alloc] initWithCharacteristicType:v13 serviceType:v21];
      if (!v23)
      {
        v26 = sub_10007FAA0();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = sub_10007FAFC(0);
          *buf = 138543874;
          v44 = v27;
          v45 = 2112;
          v46 = v33;
          v47 = 2112;
          v48 = v20;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse HAP metadata tuple %@,%@", buf, 0x20u);
        }

LABEL_23:

        goto LABEL_24;
      }

      v24 = v23;
      [v5 addObject:v23];

      if (v17 == ++v19)
      {
        v17 = [v15 countByEnumeratingWithState:&v35 objects:v49 count:16];
        v6 = v34;
        v8 = v31;
        v9 = v32;
        v10 = v30;
        if (v17)
        {
          goto LABEL_9;
        }

LABEL_16:

        if (++v10 == v8)
        {
          v8 = [v6 countByEnumeratingWithState:&v39 objects:v50 count:16];
          if (!v8)
          {
            goto LABEL_18;
          }

          goto LABEL_3;
        }

        goto LABEL_4;
      }
    }

    v22 = sub_10007FAA0();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v26 = sub_10007FAFC(0);
      *buf = 138543618;
      v44 = v26;
      v45 = 2112;
      v46 = v20;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@Unknown service '%@' while parsing tuple", buf, 0x16u);
      goto LABEL_23;
    }

LABEL_24:
    v6 = v34;

    goto LABEL_25;
  }

  v13 = sub_10007FAA0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v29 = sub_10007FAFC(0);
    *buf = 138543618;
    v44 = v29;
    v45 = 2112;
    v46 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@Unknown characteristic '%@' while parsing tuple", buf, 0x16u);
  }

LABEL_25:

  v25 = 0;
LABEL_26:

  return v25;
}

- (BOOL)parseMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = [metadataCopy hmf_stringForKey:@"Base UUID"];
  v6 = v5;
  if (!v5)
  {
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v18 = sub_10007FAFC(0);
      *buf = 138543362;
      v37 = v18;
      v19 = "%{public}@Failed to parse HAP base UUID suffix";
      v20 = v8;
      v21 = 12;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
    }

LABEL_14:
    v17 = 0;
    goto LABEL_35;
  }

  v7 = [v5 length];
  if (v7 != kMetadataBaseUUIDSuffixLength)
  {
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v18 = sub_10007FAFC(0);
      *buf = 138543874;
      v37 = v18;
      v38 = 2048;
      v39 = [v6 length];
      v40 = 2048;
      v41 = kMetadataBaseUUIDSuffixLength;
      v19 = "%{public}@Base UUID suffix length is %lu, should be %lu";
      v20 = v8;
      v21 = 32;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  [(HAPMetadata *)self setHapBaseUUIDSuffix:v6];
  v8 = [metadataCopy hmf_dictionaryForKey:@"Units"];
  v9 = [(HAPMetadata *)self parseUnits:v8];
  if (v9)
  {
    [(HAPMetadata *)self setHapUnitMap:v9];
    v10 = [metadataCopy hmf_dictionaryForKey:@"Properties"];
    v11 = [(HAPMetadata *)self parseProperties:v10];
    if (v11)
    {
      [(HAPMetadata *)self setHapPropertyMap:v11];
      v12 = [metadataCopy hmf_dictionaryForKey:@"Characteristics"];
      v13 = [(HAPMetadata *)self parseCharacteristics:v12];
      if (v13)
      {
        [(HAPMetadata *)self setHapCharacteristicMap:v13];
        v14 = [metadataCopy hmf_dictionaryForKey:@"Services"];
        v15 = [(HAPMetadata *)self parseServices:v14];
        v34 = v15;
        v35 = v14;
        if (v15)
        {
          v31 = v13;
          [(HAPMetadata *)self setHapServiceMap:v15];
          log = [metadataCopy hmf_dictionaryForKey:@"SupportsAuthorizationData"];
          v16 = [(HAPMetadata *)self parseCharacteristicServiceTuples:?];
          v17 = v16 != 0;
          if (v16)
          {
            [(HAPMetadata *)self setHapSupportsAuthDataSet:v16];
          }

          else
          {
            v28 = sub_10007FAA0();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              v30 = sub_10007FAFC(0);
              *buf = 138543618;
              v37 = v30;
              v38 = 2112;
              v39 = log;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse HAP addAuthData tuples: %@", buf, 0x16u);
            }
          }

          v13 = v31;
          v26 = log;
        }

        else
        {
          v26 = sub_10007FAA0();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_10007FAFC(0);
            v27 = loga = v26;
            *buf = 138543618;
            v37 = v27;
            v38 = 2112;
            v39 = v14;
            _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse HAP services: %@", buf, 0x16u);

            v26 = loga;
          }

          v17 = 0;
        }
      }

      else
      {
        v24 = sub_10007FAA0();
        v35 = v24;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = sub_10007FAFC(0);
          *buf = 138543618;
          v37 = v25;
          v38 = 2112;
          v39 = v12;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse HAP characteristics: %@", buf, 0x16u);
        }

        v17 = 0;
      }
    }

    else
    {
      v12 = sub_10007FAA0();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v23 = sub_10007FAFC(0);
        *buf = 138543618;
        v37 = v23;
        v38 = 2112;
        v39 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse HAP properties: %@", buf, 0x16u);
      }

      v17 = 0;
    }
  }

  else
  {
    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v22 = sub_10007FAFC(0);
      *buf = 138543618;
      v37 = v22;
      v38 = 2112;
      v39 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse HAP units: %@", buf, 0x16u);
    }

    v17 = 0;
  }

LABEL_35:
  return v17;
}

+ (id)shortenHAPType:(id)type baseUUIDSuffix:(id)suffix
{
  typeCopy = type;
  suffixCopy = suffix;
  if ([typeCopy hasSuffix:suffixCopy])
  {
    v7 = [typeCopy substringToIndex:{objc_msgSend(typeCopy, "length") - objc_msgSend(suffixCopy, "length")}];
  }

  else
  {
    v7 = typeCopy;
  }

  v8 = v7;

  return v8;
}

- (id)serviceUTIFromType:(id)type
{
  v3 = [(HAPMetadata *)self hapServiceFromType:type];
  name = [v3 name];

  return name;
}

- (id)serviceTypeFromUTI:(id)i
{
  iCopy = i;
  hapServiceNameTypeMap = [(HAPMetadata *)self hapServiceNameTypeMap];
  v6 = [hapServiceNameTypeMap objectForKeyedSubscript:iCopy];

  return v6;
}

- (id)characteristicUTIFromType:(id)type
{
  v3 = [(HAPMetadata *)self hapCharacteristicFromType:type];
  name = [v3 name];

  return name;
}

- (id)characteristicTypeFromUTI:(id)i
{
  iCopy = i;
  hapCharacteristicNameTypeMap = [(HAPMetadata *)self hapCharacteristicNameTypeMap];
  v6 = [hapCharacteristicNameTypeMap objectForKeyedSubscript:iCopy];

  return v6;
}

- (BOOL)isStandardHAPService:(id)service
{
  v3 = [(HAPMetadata *)self hapServiceFromType:service];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isStandardHAPServiceName:(id)name
{
  nameCopy = name;
  hapServiceNameTypeMap = [(HAPMetadata *)self hapServiceNameTypeMap];
  v6 = [hapServiceNameTypeMap objectForKeyedSubscript:nameCopy];

  return v6 != 0;
}

- (BOOL)isStandardHAPCharacteristic:(id)characteristic
{
  v3 = [(HAPMetadata *)self hapCharacteristicFromType:characteristic];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isStandardHAPCharacteristicName:(id)name
{
  nameCopy = name;
  hapCharacteristicNameTypeMap = [(HAPMetadata *)self hapCharacteristicNameTypeMap];
  v6 = [hapCharacteristicNameTypeMap objectForKeyedSubscript:nameCopy];

  return v6 != 0;
}

- (BOOL)isStandardHAPUnitName:(id)name
{
  v3 = [(HAPMetadata *)self hapUnitFromName:name];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)allowAssociatedService:(id)service
{
  v3 = [(HAPMetadata *)self hapServiceFromType:service];
  allowAssociatedService = [v3 allowAssociatedService];

  return allowAssociatedService;
}

- (BOOL)validateMandatoryCharacteristics:(id)characteristics forService:(id)service
{
  characteristicsCopy = characteristics;
  v7 = [(HAPMetadata *)self hapServiceFromType:service];
  v8 = [NSSet setWithArray:characteristicsCopy];

  mandatoryCharacteristics = [v7 mandatoryCharacteristics];
  if ([mandatoryCharacteristics count])
  {
    mandatoryCharacteristics2 = [v7 mandatoryCharacteristics];
    v11 = [mandatoryCharacteristics2 isSubsetOfSet:v8];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (id)descriptionFromServiceType:(id)type
{
  typeCopy = type;
  v5 = [(HAPMetadata *)self hapServiceFromType:typeCopy];
  svcDescription = [v5 svcDescription];
  if (!svcDescription)
  {
    svcDescription = typeCopy;
  }

  return svcDescription;
}

- (id)descriptionFromCharacteristicType:(id)type
{
  typeCopy = type;
  v5 = [(HAPMetadata *)self hapCharacteristicFromType:typeCopy];
  chrDescription = [v5 chrDescription];
  if (!chrDescription)
  {
    chrDescription = typeCopy;
  }

  return chrDescription;
}

- (BOOL)isMandatoryCharacteristic:(id)characteristic forService:(id)service
{
  characteristicCopy = characteristic;
  v7 = [(HAPMetadata *)self hapServiceFromType:service];
  v8 = v7;
  if (v7)
  {
    mandatoryCharacteristics = [v7 mandatoryCharacteristics];
    v10 = [mandatoryCharacteristics containsObject:characteristicCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)characteristicValueUnitOfType:(id)type
{
  v3 = [(HAPMetadata *)self hapCharacteristicFromType:type];
  units = [v3 units];

  return units;
}

- (id)btleToServiceType:(id)type
{
  typeCopy = type;
  if ([typeCopy hasSuffix:@"-0000-1000-8000-00805F9B34FB"])
  {
    v5 = [typeCopy length];
    if (v5 == [@"00000000-0000-1000-8000-00805F9B34FB" length])
    {
      v6 = [typeCopy substringWithRange:{4, 4}];
      v7 = v6;
      if (v6)
      {
        v8 = v6;

        typeCopy = v8;
      }
    }
  }

  hapServiceMap = [(HAPMetadata *)self hapServiceMap];
  allValues = [hapServiceMap allValues];
  v11 = [allValues hmf_firstObjectWithValue:typeCopy forKeyPath:@"btleuuidStr"];

  uuidStr = [v11 uuidStr];

  return uuidStr;
}

- (id)serviceTypeToBTLE:(id)e
{
  eCopy = e;
  v5 = [(HAPMetadata *)self hapServiceFromType:eCopy];
  btleuuidStr = [v5 btleuuidStr];

  if (btleuuidStr)
  {
    btleuuidStr2 = [v5 btleuuidStr];
  }

  else
  {
    btleuuidStr2 = eCopy;
  }

  v8 = btleuuidStr2;

  return v8;
}

- (BOOL)supportsAdditionalAuthorizationData:(id)data forService:(id)service
{
  serviceCopy = service;
  dataCopy = data;
  v8 = [[HAPMetadataTuple alloc] initWithCharacteristicType:dataCopy serviceType:serviceCopy];

  hapSupportsAuthDataSet = [(HAPMetadata *)self hapSupportsAuthDataSet];
  LOBYTE(self) = [hapSupportsAuthDataSet containsObject:v8];

  return self;
}

- (id)getDefaultCharacteristicMetadata:(id)metadata
{
  metadataCopy = metadata;
  hapCharacteristicMap = [(HAPMetadata *)self hapCharacteristicMap];
  v6 = [hapCharacteristicMap objectForKeyedSubscript:metadataCopy];

  valueMetadata = [v6 valueMetadata];
  minLength = [valueMetadata minLength];
  if (minLength || ([valueMetadata maxLength], (minLength = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(valueMetadata, "minValue"), (minLength = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(valueMetadata, "maxValue"), (minLength = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_6:
    stepValue2 = objc_alloc_init(HAPMetadataConstraints);
    minValue = [valueMetadata minValue];
    [(HAPMetadataConstraints *)stepValue2 setMinimumValue:minValue];

    maxValue = [valueMetadata maxValue];
    [(HAPMetadataConstraints *)stepValue2 setMaximumValue:maxValue];

    stepValue = [valueMetadata stepValue];
    [(HAPMetadataConstraints *)stepValue2 setStepValue:stepValue];

    minLength2 = [valueMetadata minLength];
    [(HAPMetadataConstraints *)stepValue2 setMinLength:minLength2];

    maxLength = [valueMetadata maxLength];
    [(HAPMetadataConstraints *)stepValue2 setMaxLength:maxLength];

    validValues = [valueMetadata validValues];
    [(HAPMetadataConstraints *)stepValue2 setValidValues:validValues];

    goto LABEL_7;
  }

  stepValue2 = [valueMetadata stepValue];

  if (stepValue2)
  {
    goto LABEL_6;
  }

LABEL_7:
  v16 = [HAPCharacteristicMetadata alloc];
  chrDescription = [v6 chrDescription];
  format = [v6 format];
  units = [v6 units];
  v20 = [(HAPCharacteristicMetadata *)v16 initWithConstraints:stepValue2 description:chrDescription format:format units:units];

  return v20;
}

- (id)getDefaultCharacteristicProperties:(id)properties
{
  v3 = [(HAPMetadata *)self hapCharacteristicFromType:properties];
  properties = [v3 properties];

  return properties;
}

- (id)getDefaultServiceProperties:(id)properties
{
  v3 = [(HAPMetadata *)self hapServiceFromType:properties];
  properties = [v3 properties];

  return properties;
}

- (id)hapCharacteristicFromName:(id)name
{
  nameCopy = name;
  hapCharacteristicMap = [(HAPMetadata *)self hapCharacteristicMap];
  hapCharacteristicNameTypeMap = [(HAPMetadata *)self hapCharacteristicNameTypeMap];
  v7 = [hapCharacteristicNameTypeMap objectForKeyedSubscript:nameCopy];

  v8 = [hapCharacteristicMap objectForKeyedSubscript:v7];

  return v8;
}

- (id)hapCharacteristicFromType:(id)type
{
  typeCopy = type;
  hapCharacteristicMap = [(HAPMetadata *)self hapCharacteristicMap];
  v6 = [hapCharacteristicMap objectForKeyedSubscript:typeCopy];

  return v6;
}

- (id)hapServiceFromName:(id)name
{
  nameCopy = name;
  hapServiceMap = [(HAPMetadata *)self hapServiceMap];
  hapServiceNameTypeMap = [(HAPMetadata *)self hapServiceNameTypeMap];
  v7 = [hapServiceNameTypeMap objectForKeyedSubscript:nameCopy];

  v8 = [hapServiceMap objectForKeyedSubscript:v7];

  return v8;
}

- (id)hapServiceFromType:(id)type
{
  typeCopy = type;
  hapServiceMap = [(HAPMetadata *)self hapServiceMap];
  v6 = [hapServiceMap objectForKeyedSubscript:typeCopy];

  return v6;
}

- (id)hapUnitFromName:(id)name
{
  nameCopy = name;
  hapUnitMap = [(HAPMetadata *)self hapUnitMap];
  v6 = [hapUnitMap objectForKeyedSubscript:nameCopy];

  return v6;
}

- (NSArray)hapValueUnits
{
  hapUnitMap = [(HAPMetadata *)self hapUnitMap];
  allValues = [hapUnitMap allValues];

  return allValues;
}

- (NSArray)hapProperties
{
  hapPropertyMap = [(HAPMetadata *)self hapPropertyMap];
  allValues = [hapPropertyMap allValues];

  return allValues;
}

- (NSArray)hapCharacteristics
{
  hapCharacteristicMap = [(HAPMetadata *)self hapCharacteristicMap];
  allValues = [hapCharacteristicMap allValues];

  return allValues;
}

- (NSArray)hapServices
{
  hapServiceMap = [(HAPMetadata *)self hapServiceMap];
  allValues = [hapServiceMap allValues];

  return allValues;
}

- (NSArray)hapSupportsAuthDataTuples
{
  hapSupportsAuthDataSet = [(HAPMetadata *)self hapSupportsAuthDataSet];
  allObjects = [hapSupportsAuthDataSet allObjects];

  return allObjects;
}

- (HAPMetadata)initWithServices:(id)services characteristics:(id)characteristics units:(id)units properties:(id)properties addAuthDataTuples:(id)tuples hapBaseUUIDSuffix:(id)suffix
{
  servicesCopy = services;
  characteristicsCopy = characteristics;
  unitsCopy = units;
  propertiesCopy = properties;
  tuplesCopy = tuples;
  suffixCopy = suffix;
  if (![servicesCopy count] || !objc_msgSend(characteristicsCopy, "count") || !objc_msgSend(unitsCopy, "count") || !objc_msgSend(propertiesCopy, "count") || !objc_msgSend(tuplesCopy, "count"))
  {
    goto LABEL_44;
  }

  v113.receiver = self;
  v113.super_class = HAPMetadata;
  v92 = [(HAPMetadata *)&v113 init];
  if (!v92)
  {
    self = 0;
LABEL_44:
    v92 = 0;
    goto LABEL_45;
  }

  v81 = suffixCopy;
  self = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [characteristicsCopy count]);
  v90 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [characteristicsCopy count]);
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v84 = characteristicsCopy;
  v19 = characteristicsCopy;
  v20 = [v19 countByEnumeratingWithState:&v109 objects:v118 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v110;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v110 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v109 + 1) + 8 * i);
        uuidStr = [v24 uuidStr];
        [(HAPMetadata *)self setObject:v24 forKey:uuidStr];

        uuidStr2 = [v24 uuidStr];
        name = [v24 name];
        [v90 setObject:uuidStr2 forKey:name];
      }

      v21 = [v19 countByEnumeratingWithState:&v109 objects:v118 count:16];
    }

    while (v21);
  }

  v28 = [(HAPMetadata *)self copy];
  hapCharacteristicMap = v92->_hapCharacteristicMap;
  v92->_hapCharacteristicMap = v28;

  v30 = [v90 copy];
  hapCharacteristicNameTypeMap = v92->_hapCharacteristicNameTypeMap;
  v92->_hapCharacteristicNameTypeMap = v30;

  v89 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [servicesCopy count]);
  v88 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [servicesCopy count]);
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v32 = servicesCopy;
  v33 = [v32 countByEnumeratingWithState:&v105 objects:v117 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v106;
    do
    {
      for (j = 0; j != v34; j = j + 1)
      {
        if (*v106 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v105 + 1) + 8 * j);
        uuidStr3 = [v37 uuidStr];
        [v89 setObject:v37 forKey:uuidStr3];

        uuidStr4 = [v37 uuidStr];
        name2 = [v37 name];
        [v88 setObject:uuidStr4 forKey:name2];
      }

      v34 = [v32 countByEnumeratingWithState:&v105 objects:v117 count:16];
    }

    while (v34);
  }

  v41 = [v89 copy];
  hapServiceMap = v92->_hapServiceMap;
  v92->_hapServiceMap = v41;

  v43 = [v88 copy];
  hapServiceNameTypeMap = v92->_hapServiceNameTypeMap;
  v92->_hapServiceNameTypeMap = v43;

  v87 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [unitsCopy count]);
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v45 = unitsCopy;
  v46 = [v45 countByEnumeratingWithState:&v101 objects:v116 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v102;
    do
    {
      for (k = 0; k != v47; k = k + 1)
      {
        if (*v102 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v101 + 1) + 8 * k);
        name3 = [v50 name];
        [v87 setObject:v50 forKey:name3];
      }

      v47 = [v45 countByEnumeratingWithState:&v101 objects:v116 count:16];
    }

    while (v47);
  }

  v83 = propertiesCopy;
  v85 = servicesCopy;

  v52 = [v87 copy];
  hapUnitMap = v92->_hapUnitMap;
  v92->_hapUnitMap = v52;

  v86 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [tuplesCopy count]);
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v82 = tuplesCopy;
  v54 = tuplesCopy;
  v55 = [v54 countByEnumeratingWithState:&v97 objects:v115 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v98;
    do
    {
      for (m = 0; m != v56; m = m + 1)
      {
        if (*v98 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = *(*(&v97 + 1) + 8 * m);
        v60 = [HAPMetadataTuple alloc];
        characteristicType = [v59 characteristicType];
        v62 = [(HAPMetadata *)v92 characteristicTypeFromUTI:characteristicType];
        serviceType = [v59 serviceType];
        v64 = [(HAPMetadata *)v92 serviceTypeFromUTI:serviceType];
        v65 = [(HAPMetadataTuple *)v60 initWithCharacteristicType:v62 serviceType:v64];

        [v86 addObject:v65];
      }

      v56 = [v54 countByEnumeratingWithState:&v97 objects:v115 count:16];
    }

    while (v56);
  }

  v66 = [v86 copy];
  hapSupportsAuthDataSet = v92->_hapSupportsAuthDataSet;
  v92->_hapSupportsAuthDataSet = v66;

  propertiesCopy = v83;
  v68 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v83 count]);
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v69 = v83;
  v70 = [v69 countByEnumeratingWithState:&v93 objects:v114 count:16];
  tuplesCopy = v82;
  if (v70)
  {
    v71 = v70;
    v72 = *v94;
    do
    {
      for (n = 0; n != v71; n = n + 1)
      {
        if (*v94 != v72)
        {
          objc_enumerationMutation(v69);
        }

        v74 = *(*(&v93 + 1) + 8 * n);
        propertyType = [v74 propertyType];
        [v68 setObject:v74 forKey:propertyType];
      }

      v71 = [v69 countByEnumeratingWithState:&v93 objects:v114 count:16];
    }

    while (v71);
  }

  v76 = [v68 copy];
  hapPropertyMap = v92->_hapPropertyMap;
  v92->_hapPropertyMap = v76;

  suffixCopy = v81;
  v78 = [v81 copy];
  hapBaseUUIDSuffix = v92->_hapBaseUUIDSuffix;
  v92->_hapBaseUUIDSuffix = v78;

  [(HAPMetadata *)v92 updateRawPlist];
  characteristicsCopy = v84;
  servicesCopy = v85;
LABEL_45:

  return v92;
}

- (BOOL)updateRawPlist
{
  generateDictionary = [(HAPMetadata *)self generateDictionary];
  if (generateDictionary)
  {
    objc_storeStrong(&self->_rawPlist, generateDictionary);
  }

  else
  {
    v4 = sub_10007FAA0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = sub_10007FAFC(0);
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to generate plist.", &v7, 0xCu);
    }
  }

  return generateDictionary != 0;
}

- (id)generateDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  hapBaseUUIDSuffix = [(HAPMetadata *)self hapBaseUUIDSuffix];

  if (hapBaseUUIDSuffix)
  {
    hapBaseUUIDSuffix2 = [(HAPMetadata *)self hapBaseUUIDSuffix];
    [v3 setObject:hapBaseUUIDSuffix2 forKeyedSubscript:@"Base UUID"];
  }

  v6 = +[NSMutableDictionary dictionary];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  hapValueUnits = [(HAPMetadata *)self hapValueUnits];
  v8 = [hapValueUnits countByEnumeratingWithState:&v69 objects:v80 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v70;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v70 != v10)
        {
          objc_enumerationMutation(hapValueUnits);
        }

        v12 = *(*(&v69 + 1) + 8 * i);
        generateDictionary = [v12 generateDictionary];
        name = [v12 name];
        [v6 setObject:generateDictionary forKeyedSubscript:name];
      }

      v9 = [hapValueUnits countByEnumeratingWithState:&v69 objects:v80 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    [v3 setObject:v6 forKeyedSubscript:@"Units"];
  }

  v54 = v3;
  v15 = +[NSMutableDictionary dictionary];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  hapProperties = [(HAPMetadata *)self hapProperties];
  v17 = [hapProperties countByEnumeratingWithState:&v65 objects:v79 count:16];
  v53 = v6;
  v55 = v15;
  if (v17)
  {
    v18 = v17;
    v19 = *v66;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v66 != v19)
        {
          objc_enumerationMutation(hapProperties);
        }

        v21 = *(*(&v65 + 1) + 8 * j);
        generateDictionary2 = [v21 generateDictionary];
        if (generateDictionary2)
        {
          propertyType = [v21 propertyType];
          [v15 setObject:generateDictionary2 forKeyedSubscript:propertyType];
        }

        else
        {
          propertyType = sub_10007FAA0();
          if (os_log_type_enabled(propertyType, OS_LOG_TYPE_DEFAULT))
          {
            v24 = sub_10007FAFC(0);
            propertyType2 = [v21 propertyType];
            *buf = 138543618;
            v76 = v24;
            v77 = 2112;
            v78 = propertyType2;
            _os_log_impl(&_mh_execute_header, propertyType, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to generate dictionary for HAP property %@", buf, 0x16u);

            v15 = v55;
          }
        }
      }

      v18 = [hapProperties countByEnumeratingWithState:&v65 objects:v79 count:16];
    }

    while (v18);
  }

  if ([v15 count])
  {
    [v54 setObject:v15 forKeyedSubscript:@"Properties"];
  }

  hapSupportsAuthDataSet = [(HAPMetadata *)self hapSupportsAuthDataSet];
  v27 = [(HAPMetadata *)self generateHAPMetadataTuplesDictionary:hapSupportsAuthDataSet];

  if ([v27 count])
  {
    [v54 setObject:v27 forKeyedSubscript:@"SupportsAuthorizationData"];
  }

  v52 = v27;
  v56 = +[NSMutableDictionary dictionary];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  hapCharacteristics = [(HAPMetadata *)self hapCharacteristics];
  v29 = [hapCharacteristics countByEnumeratingWithState:&v61 objects:v74 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v62;
    do
    {
      for (k = 0; k != v30; k = k + 1)
      {
        if (*v62 != v31)
        {
          objc_enumerationMutation(hapCharacteristics);
        }

        v33 = *(*(&v61 + 1) + 8 * k);
        hapBaseUUIDSuffix3 = [(HAPMetadata *)self hapBaseUUIDSuffix];
        v35 = [v33 generateDictionary:hapBaseUUIDSuffix3];

        if (v35)
        {
          name2 = [v33 name];
          [v56 setObject:v35 forKeyedSubscript:name2];
        }

        else
        {
          name2 = sub_10007FAA0();
          if (os_log_type_enabled(name2, OS_LOG_TYPE_DEFAULT))
          {
            v37 = sub_10007FAFC(0);
            name3 = [v33 name];
            *buf = 138543618;
            v76 = v37;
            v77 = 2112;
            v78 = name3;
            _os_log_impl(&_mh_execute_header, name2, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to generate dictionary for HAP characteristic %@", buf, 0x16u);
          }
        }
      }

      v30 = [hapCharacteristics countByEnumeratingWithState:&v61 objects:v74 count:16];
    }

    while (v30);
  }

  if ([v56 count])
  {
    [v54 setObject:v56 forKeyedSubscript:@"Characteristics"];
  }

  v39 = +[NSMutableDictionary dictionary];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  hapServices = [(HAPMetadata *)self hapServices];
  v41 = [hapServices countByEnumeratingWithState:&v57 objects:v73 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v58;
    do
    {
      for (m = 0; m != v42; m = m + 1)
      {
        if (*v58 != v43)
        {
          objc_enumerationMutation(hapServices);
        }

        v45 = *(*(&v57 + 1) + 8 * m);
        hapBaseUUIDSuffix4 = [(HAPMetadata *)self hapBaseUUIDSuffix];
        v47 = [v45 generateDictionary:hapBaseUUIDSuffix4 metadata:self];

        if (v47)
        {
          name4 = [v45 name];
          [v39 setObject:v47 forKeyedSubscript:name4];
        }

        else
        {
          name4 = sub_10007FAA0();
          if (os_log_type_enabled(name4, OS_LOG_TYPE_DEFAULT))
          {
            v49 = sub_10007FAFC(0);
            name5 = [v45 name];
            *buf = 138543618;
            v76 = v49;
            v77 = 2112;
            v78 = name5;
            _os_log_impl(&_mh_execute_header, name4, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to generate dictionary for HAP service %@", buf, 0x16u);
          }
        }
      }

      v42 = [hapServices countByEnumeratingWithState:&v57 objects:v73 count:16];
    }

    while (v42);
  }

  if ([v39 count])
  {
    [v54 setObject:v39 forKeyedSubscript:@"Services"];
  }

  return v54;
}

- (id)generateHAPMetadataTuplesDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [dictionaryCopy count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = dictionaryCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        characteristicType = [v11 characteristicType];
        v13 = [(HAPMetadata *)self characteristicUTIFromType:characteristicType];

        serviceType = [v11 serviceType];
        v15 = [(HAPMetadata *)self serviceUTIFromType:serviceType];

        v16 = [v5 objectForKeyedSubscript:v13];
        if (!v16)
        {
          v16 = +[NSMutableArray array];
          [v5 setObject:v16 forKeyedSubscript:v13];
        }

        [v16 addObject:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  return v5;
}

@end