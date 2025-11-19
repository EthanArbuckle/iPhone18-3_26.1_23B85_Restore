@interface HAPMetadata
+ (id)getSharedInstance;
+ (id)shortenHAPType:(id)a3 baseUUIDSuffix:(id)a4;
+ (void)setCurrentMetadataHook:(id)a3;
- (BOOL)allowAssociatedService:(id)a3;
- (BOOL)isMandatoryCharacteristic:(id)a3 forService:(id)a4;
- (BOOL)isStandardHAPCharacteristic:(id)a3;
- (BOOL)isStandardHAPCharacteristicName:(id)a3;
- (BOOL)isStandardHAPService:(id)a3;
- (BOOL)isStandardHAPServiceName:(id)a3;
- (BOOL)isStandardHAPUnitName:(id)a3;
- (BOOL)parseMetadata:(id)a3;
- (BOOL)parseVersion:(id)a3;
- (BOOL)supportsAdditionalAuthorizationData:(id)a3 forService:(id)a4;
- (BOOL)updateRawPlist;
- (BOOL)validateMandatoryCharacteristics:(id)a3 forService:(id)a4;
- (HAPMetadata)initWithDictionary:(id)a3 error:(id *)a4;
- (HAPMetadata)initWithServices:(id)a3 characteristics:(id)a4 units:(id)a5 properties:(id)a6 addAuthDataTuples:(id)a7 hapBaseUUIDSuffix:(id)a8;
- (NSArray)hapCharacteristics;
- (NSArray)hapProperties;
- (NSArray)hapServices;
- (NSArray)hapSupportsAuthDataTuples;
- (NSArray)hapValueUnits;
- (id)btleToServiceType:(id)a3;
- (id)characteristicTypeFromUTI:(id)a3;
- (id)characteristicUTIFromType:(id)a3;
- (id)characteristicValueUnitOfType:(id)a3;
- (id)descriptionFromCharacteristicType:(id)a3;
- (id)descriptionFromServiceType:(id)a3;
- (id)generateDictionary;
- (id)generateHAPMetadataTuplesDictionary:(id)a3;
- (id)getDefaultCharacteristicMetadata:(id)a3;
- (id)getDefaultCharacteristicProperties:(id)a3;
- (id)getDefaultServiceProperties:(id)a3;
- (id)hapCharacteristicFromName:(id)a3;
- (id)hapCharacteristicFromType:(id)a3;
- (id)hapServiceFromName:(id)a3;
- (id)hapServiceFromType:(id)a3;
- (id)hapUnitFromName:(id)a3;
- (id)parseCharacteristicServiceTuples:(id)a3;
- (id)parseCharacteristicValue:(id)a3;
- (id)parseCharacteristics:(id)a3;
- (id)parseProperties:(id)a3;
- (id)parseServiceCharacteristics:(id)a3;
- (id)parseServices:(id)a3;
- (id)parseUnits:(id)a3;
- (id)serviceTypeFromUTI:(id)a3;
- (id)serviceTypeToBTLE:(id)a3;
- (id)serviceUTIFromType:(id)a3;
@end

@implementation HAPMetadata

- (HAPMetadata)initWithDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24.receiver = self;
  v24.super_class = HAPMetadata;
  v7 = [(HAPMetadata *)&v24 init];
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = +[NSMutableArray array];
  [(HAPMetadata *)v7 setParsedUUIDs:v8];

  if (![(HAPMetadata *)v7 parseVersion:v6])
  {
    v15 = sub_10007FAA0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = sub_10007FAFC(0);
      *buf = 138543362;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse version information", buf, 0xCu);
    }

    if (!a4)
    {
      goto LABEL_21;
    }

    v17 = 23;
    goto LABEL_15;
  }

  v9 = [(HAPMetadata *)v7 schemaVersion];
  v10 = [v9 unsignedIntegerValue];
  v11 = qword_1002A5E38;

  if (v10 != v11)
  {
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_10007FAFC(0);
      v20 = [(HAPMetadata *)v7 schemaVersion];
      *buf = 138543874;
      v26 = v19;
      v27 = 2112;
      v28 = v20;
      v29 = 2048;
      v30 = qword_1002A5E38;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@Newer schema version %@, current %lu", buf, 0x20u);
    }

    if (!a4)
    {
      goto LABEL_21;
    }

    v17 = 25;
LABEL_15:
    [NSError errorWithDomain:@"DKErrorDomain" code:v17 userInfo:0];
    *a4 = v14 = 0;
    goto LABEL_22;
  }

  v12 = [v6 hmf_dictionaryForKey:@"HAP"];
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

    if (a4)
    {
      *a4 = [NSError errorWithDomain:@"DKErrorDomain" code:23 userInfo:0];
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

+ (void)setCurrentMetadataHook:(id)a3
{
  v3 = objc_retainBlock(a3);
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

- (BOOL)parseVersion:(id)a3
{
  v4 = a3;
  v5 = [v4 hmf_numberForKey:@"Version"];
  [(HAPMetadata *)self setVersion:v5];

  v6 = [v4 hmf_numberForKey:@"SchemaVersion"];

  [(HAPMetadata *)self setSchemaVersion:v6];
  v7 = [(HAPMetadata *)self version];
  if (v7)
  {
    v8 = [(HAPMetadata *)self schemaVersion];
    v9 = v8 != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)parseUnits:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v3 count]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
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

- (id)parseProperties:(id)a3
{
  v3 = a3;
  v23 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v3 count]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = v3;
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

- (id)parseCharacteristicValue:(id)a3
{
  v3 = a3;
  v4 = [v3 hmf_numberForKey:@"MinLength"];
  v5 = [v3 hmf_numberForKey:@"MaxLength"];
  if (v4 | v5)
  {
    v6 = [[HAPMetadataCharacteristicValue alloc] initWithMinLength:v4 maxLength:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 hmf_numberForKey:@"MinValue"];
  v8 = [v3 hmf_numberForKey:@"MaxValue"];
  v9 = [v3 hmf_numberForKey:@"StepValue"];
  v10 = [v3 hmf_arrayForKey:@"ValidValues"];
  if (v7 || v8 || v9)
  {
    if (v6)
    {
      v11 = sub_10007FAA0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15 = sub_10007FAFC(0);
        [v3 hmf_stringForKey:@"ShortUUID"];
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

- (id)parseCharacteristics:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
  v6 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v7 = v4;
  v40 = [v7 countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v40)
  {
    v41 = *v44;
    *&v8 = 138544130;
    v34 = v8;
    v36 = v6;
    v37 = v5;
    v38 = self;
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

      v14 = [(HAPMetadata *)self parsedUUIDs];
      v15 = [v14 containsObject:v12];

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

      v16 = [(HAPMetadata *)self parsedUUIDs];
      [v16 addObject:v12];

      v17 = [v11 hmf_stringForKey:@"DefaultDescription"];
      v18 = [v11 hmf_stringForKey:@"Format"];
      v19 = [v11 hmf_numberForKey:@"Properties"];
      v20 = [(HAPMetadata *)self hapBaseUUIDSuffix];
      v21 = [v12 stringByAppendingString:v20];

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
      self = v38;
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

- (id)parseServiceCharacteristics:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v4 count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
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

- (id)parseServices:(id)a3
{
  v4 = a3;
  v5 = [(HAPMetadata *)self hapCharacteristicMap];
  v6 = [v5 count];

  if (v6)
  {
    v7 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
    v8 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v9 = v4;
    v61 = [v9 countByEnumeratingWithState:&v69 objects:v81 count:16];
    if (v61)
    {
      v62 = *v70;
      *&v10 = 138543618;
      v56 = v10;
      v57 = v4;
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

        v15 = [(HAPMetadata *)self parsedUUIDs];
        v16 = [v15 containsObject:v13];

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

        v17 = [(HAPMetadata *)self parsedUUIDs];
        [v17 addObject:v13];

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
        v23 = [(HAPMetadata *)self hapBaseUUIDSuffix];
        v24 = [v13 stringByAppendingString:v23];

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
            v4 = v57;
            v8 = v58;
            v7 = v59;
            goto LABEL_47;
          }

          v33 = [(HAPMetadata *)self parsedUUIDs];
          v34 = [v33 containsObject:v31];

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

          v35 = [(HAPMetadata *)self parsedUUIDs];
          [v35 addObject:v31];

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
          v4 = v57;
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

- (id)parseCharacteristicServiceTuples:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v4 count]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = v4;
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

- (BOOL)parseMetadata:(id)a3
{
  v4 = a3;
  v5 = [v4 hmf_stringForKey:@"Base UUID"];
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
  v8 = [v4 hmf_dictionaryForKey:@"Units"];
  v9 = [(HAPMetadata *)self parseUnits:v8];
  if (v9)
  {
    [(HAPMetadata *)self setHapUnitMap:v9];
    v10 = [v4 hmf_dictionaryForKey:@"Properties"];
    v11 = [(HAPMetadata *)self parseProperties:v10];
    if (v11)
    {
      [(HAPMetadata *)self setHapPropertyMap:v11];
      v12 = [v4 hmf_dictionaryForKey:@"Characteristics"];
      v13 = [(HAPMetadata *)self parseCharacteristics:v12];
      if (v13)
      {
        [(HAPMetadata *)self setHapCharacteristicMap:v13];
        v14 = [v4 hmf_dictionaryForKey:@"Services"];
        v15 = [(HAPMetadata *)self parseServices:v14];
        v34 = v15;
        v35 = v14;
        if (v15)
        {
          v31 = v13;
          [(HAPMetadata *)self setHapServiceMap:v15];
          log = [v4 hmf_dictionaryForKey:@"SupportsAuthorizationData"];
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

+ (id)shortenHAPType:(id)a3 baseUUIDSuffix:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 hasSuffix:v6])
  {
    v7 = [v5 substringToIndex:{objc_msgSend(v5, "length") - objc_msgSend(v6, "length")}];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

- (id)serviceUTIFromType:(id)a3
{
  v3 = [(HAPMetadata *)self hapServiceFromType:a3];
  v4 = [v3 name];

  return v4;
}

- (id)serviceTypeFromUTI:(id)a3
{
  v4 = a3;
  v5 = [(HAPMetadata *)self hapServiceNameTypeMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)characteristicUTIFromType:(id)a3
{
  v3 = [(HAPMetadata *)self hapCharacteristicFromType:a3];
  v4 = [v3 name];

  return v4;
}

- (id)characteristicTypeFromUTI:(id)a3
{
  v4 = a3;
  v5 = [(HAPMetadata *)self hapCharacteristicNameTypeMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (BOOL)isStandardHAPService:(id)a3
{
  v3 = [(HAPMetadata *)self hapServiceFromType:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isStandardHAPServiceName:(id)a3
{
  v4 = a3;
  v5 = [(HAPMetadata *)self hapServiceNameTypeMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6 != 0;
}

- (BOOL)isStandardHAPCharacteristic:(id)a3
{
  v3 = [(HAPMetadata *)self hapCharacteristicFromType:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isStandardHAPCharacteristicName:(id)a3
{
  v4 = a3;
  v5 = [(HAPMetadata *)self hapCharacteristicNameTypeMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6 != 0;
}

- (BOOL)isStandardHAPUnitName:(id)a3
{
  v3 = [(HAPMetadata *)self hapUnitFromName:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)allowAssociatedService:(id)a3
{
  v3 = [(HAPMetadata *)self hapServiceFromType:a3];
  v4 = [v3 allowAssociatedService];

  return v4;
}

- (BOOL)validateMandatoryCharacteristics:(id)a3 forService:(id)a4
{
  v6 = a3;
  v7 = [(HAPMetadata *)self hapServiceFromType:a4];
  v8 = [NSSet setWithArray:v6];

  v9 = [v7 mandatoryCharacteristics];
  if ([v9 count])
  {
    v10 = [v7 mandatoryCharacteristics];
    v11 = [v10 isSubsetOfSet:v8];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (id)descriptionFromServiceType:(id)a3
{
  v4 = a3;
  v5 = [(HAPMetadata *)self hapServiceFromType:v4];
  v6 = [v5 svcDescription];
  if (!v6)
  {
    v6 = v4;
  }

  return v6;
}

- (id)descriptionFromCharacteristicType:(id)a3
{
  v4 = a3;
  v5 = [(HAPMetadata *)self hapCharacteristicFromType:v4];
  v6 = [v5 chrDescription];
  if (!v6)
  {
    v6 = v4;
  }

  return v6;
}

- (BOOL)isMandatoryCharacteristic:(id)a3 forService:(id)a4
{
  v6 = a3;
  v7 = [(HAPMetadata *)self hapServiceFromType:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 mandatoryCharacteristics];
    v10 = [v9 containsObject:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)characteristicValueUnitOfType:(id)a3
{
  v3 = [(HAPMetadata *)self hapCharacteristicFromType:a3];
  v4 = [v3 units];

  return v4;
}

- (id)btleToServiceType:(id)a3
{
  v4 = a3;
  if ([v4 hasSuffix:@"-0000-1000-8000-00805F9B34FB"])
  {
    v5 = [v4 length];
    if (v5 == [@"00000000-0000-1000-8000-00805F9B34FB" length])
    {
      v6 = [v4 substringWithRange:{4, 4}];
      v7 = v6;
      if (v6)
      {
        v8 = v6;

        v4 = v8;
      }
    }
  }

  v9 = [(HAPMetadata *)self hapServiceMap];
  v10 = [v9 allValues];
  v11 = [v10 hmf_firstObjectWithValue:v4 forKeyPath:@"btleuuidStr"];

  v12 = [v11 uuidStr];

  return v12;
}

- (id)serviceTypeToBTLE:(id)a3
{
  v4 = a3;
  v5 = [(HAPMetadata *)self hapServiceFromType:v4];
  v6 = [v5 btleuuidStr];

  if (v6)
  {
    v7 = [v5 btleuuidStr];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

- (BOOL)supportsAdditionalAuthorizationData:(id)a3 forService:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[HAPMetadataTuple alloc] initWithCharacteristicType:v7 serviceType:v6];

  v9 = [(HAPMetadata *)self hapSupportsAuthDataSet];
  LOBYTE(self) = [v9 containsObject:v8];

  return self;
}

- (id)getDefaultCharacteristicMetadata:(id)a3
{
  v4 = a3;
  v5 = [(HAPMetadata *)self hapCharacteristicMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 valueMetadata];
  v8 = [v7 minLength];
  if (v8 || ([v7 maxLength], (v8 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v7, "minValue"), (v8 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v7, "maxValue"), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_6:
    v9 = objc_alloc_init(HAPMetadataConstraints);
    v10 = [v7 minValue];
    [(HAPMetadataConstraints *)v9 setMinimumValue:v10];

    v11 = [v7 maxValue];
    [(HAPMetadataConstraints *)v9 setMaximumValue:v11];

    v12 = [v7 stepValue];
    [(HAPMetadataConstraints *)v9 setStepValue:v12];

    v13 = [v7 minLength];
    [(HAPMetadataConstraints *)v9 setMinLength:v13];

    v14 = [v7 maxLength];
    [(HAPMetadataConstraints *)v9 setMaxLength:v14];

    v15 = [v7 validValues];
    [(HAPMetadataConstraints *)v9 setValidValues:v15];

    goto LABEL_7;
  }

  v9 = [v7 stepValue];

  if (v9)
  {
    goto LABEL_6;
  }

LABEL_7:
  v16 = [HAPCharacteristicMetadata alloc];
  v17 = [v6 chrDescription];
  v18 = [v6 format];
  v19 = [v6 units];
  v20 = [(HAPCharacteristicMetadata *)v16 initWithConstraints:v9 description:v17 format:v18 units:v19];

  return v20;
}

- (id)getDefaultCharacteristicProperties:(id)a3
{
  v3 = [(HAPMetadata *)self hapCharacteristicFromType:a3];
  v4 = [v3 properties];

  return v4;
}

- (id)getDefaultServiceProperties:(id)a3
{
  v3 = [(HAPMetadata *)self hapServiceFromType:a3];
  v4 = [v3 properties];

  return v4;
}

- (id)hapCharacteristicFromName:(id)a3
{
  v4 = a3;
  v5 = [(HAPMetadata *)self hapCharacteristicMap];
  v6 = [(HAPMetadata *)self hapCharacteristicNameTypeMap];
  v7 = [v6 objectForKeyedSubscript:v4];

  v8 = [v5 objectForKeyedSubscript:v7];

  return v8;
}

- (id)hapCharacteristicFromType:(id)a3
{
  v4 = a3;
  v5 = [(HAPMetadata *)self hapCharacteristicMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)hapServiceFromName:(id)a3
{
  v4 = a3;
  v5 = [(HAPMetadata *)self hapServiceMap];
  v6 = [(HAPMetadata *)self hapServiceNameTypeMap];
  v7 = [v6 objectForKeyedSubscript:v4];

  v8 = [v5 objectForKeyedSubscript:v7];

  return v8;
}

- (id)hapServiceFromType:(id)a3
{
  v4 = a3;
  v5 = [(HAPMetadata *)self hapServiceMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)hapUnitFromName:(id)a3
{
  v4 = a3;
  v5 = [(HAPMetadata *)self hapUnitMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (NSArray)hapValueUnits
{
  v2 = [(HAPMetadata *)self hapUnitMap];
  v3 = [v2 allValues];

  return v3;
}

- (NSArray)hapProperties
{
  v2 = [(HAPMetadata *)self hapPropertyMap];
  v3 = [v2 allValues];

  return v3;
}

- (NSArray)hapCharacteristics
{
  v2 = [(HAPMetadata *)self hapCharacteristicMap];
  v3 = [v2 allValues];

  return v3;
}

- (NSArray)hapServices
{
  v2 = [(HAPMetadata *)self hapServiceMap];
  v3 = [v2 allValues];

  return v3;
}

- (NSArray)hapSupportsAuthDataTuples
{
  v2 = [(HAPMetadata *)self hapSupportsAuthDataSet];
  v3 = [v2 allObjects];

  return v3;
}

- (HAPMetadata)initWithServices:(id)a3 characteristics:(id)a4 units:(id)a5 properties:(id)a6 addAuthDataTuples:(id)a7 hapBaseUUIDSuffix:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (![v13 count] || !objc_msgSend(v14, "count") || !objc_msgSend(v15, "count") || !objc_msgSend(v16, "count") || !objc_msgSend(v17, "count"))
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

  v81 = v18;
  self = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v14 count]);
  v90 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v14 count]);
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v84 = v14;
  v19 = v14;
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
        v25 = [v24 uuidStr];
        [(HAPMetadata *)self setObject:v24 forKey:v25];

        v26 = [v24 uuidStr];
        v27 = [v24 name];
        [v90 setObject:v26 forKey:v27];
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

  v89 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v13 count]);
  v88 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v13 count]);
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v32 = v13;
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
        v38 = [v37 uuidStr];
        [v89 setObject:v37 forKey:v38];

        v39 = [v37 uuidStr];
        v40 = [v37 name];
        [v88 setObject:v39 forKey:v40];
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

  v87 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v15 count]);
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v45 = v15;
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
        v51 = [v50 name];
        [v87 setObject:v50 forKey:v51];
      }

      v47 = [v45 countByEnumeratingWithState:&v101 objects:v116 count:16];
    }

    while (v47);
  }

  v83 = v16;
  v85 = v13;

  v52 = [v87 copy];
  hapUnitMap = v92->_hapUnitMap;
  v92->_hapUnitMap = v52;

  v86 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v17 count]);
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v82 = v17;
  v54 = v17;
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
        v61 = [v59 characteristicType];
        v62 = [(HAPMetadata *)v92 characteristicTypeFromUTI:v61];
        v63 = [v59 serviceType];
        v64 = [(HAPMetadata *)v92 serviceTypeFromUTI:v63];
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

  v16 = v83;
  v68 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v83 count]);
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v69 = v83;
  v70 = [v69 countByEnumeratingWithState:&v93 objects:v114 count:16];
  v17 = v82;
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
        v75 = [v74 propertyType];
        [v68 setObject:v74 forKey:v75];
      }

      v71 = [v69 countByEnumeratingWithState:&v93 objects:v114 count:16];
    }

    while (v71);
  }

  v76 = [v68 copy];
  hapPropertyMap = v92->_hapPropertyMap;
  v92->_hapPropertyMap = v76;

  v18 = v81;
  v78 = [v81 copy];
  hapBaseUUIDSuffix = v92->_hapBaseUUIDSuffix;
  v92->_hapBaseUUIDSuffix = v78;

  [(HAPMetadata *)v92 updateRawPlist];
  v14 = v84;
  v13 = v85;
LABEL_45:

  return v92;
}

- (BOOL)updateRawPlist
{
  v3 = [(HAPMetadata *)self generateDictionary];
  if (v3)
  {
    objc_storeStrong(&self->_rawPlist, v3);
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

  return v3 != 0;
}

- (id)generateDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(HAPMetadata *)self hapBaseUUIDSuffix];

  if (v4)
  {
    v5 = [(HAPMetadata *)self hapBaseUUIDSuffix];
    [v3 setObject:v5 forKeyedSubscript:@"Base UUID"];
  }

  v6 = +[NSMutableDictionary dictionary];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v7 = [(HAPMetadata *)self hapValueUnits];
  v8 = [v7 countByEnumeratingWithState:&v69 objects:v80 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v69 + 1) + 8 * i);
        v13 = [v12 generateDictionary];
        v14 = [v12 name];
        [v6 setObject:v13 forKeyedSubscript:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v69 objects:v80 count:16];
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
  v16 = [(HAPMetadata *)self hapProperties];
  v17 = [v16 countByEnumeratingWithState:&v65 objects:v79 count:16];
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
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v65 + 1) + 8 * j);
        v22 = [v21 generateDictionary];
        if (v22)
        {
          v23 = [v21 propertyType];
          [v15 setObject:v22 forKeyedSubscript:v23];
        }

        else
        {
          v23 = sub_10007FAA0();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = sub_10007FAFC(0);
            v25 = [v21 propertyType];
            *buf = 138543618;
            v76 = v24;
            v77 = 2112;
            v78 = v25;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to generate dictionary for HAP property %@", buf, 0x16u);

            v15 = v55;
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v65 objects:v79 count:16];
    }

    while (v18);
  }

  if ([v15 count])
  {
    [v54 setObject:v15 forKeyedSubscript:@"Properties"];
  }

  v26 = [(HAPMetadata *)self hapSupportsAuthDataSet];
  v27 = [(HAPMetadata *)self generateHAPMetadataTuplesDictionary:v26];

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
  v28 = [(HAPMetadata *)self hapCharacteristics];
  v29 = [v28 countByEnumeratingWithState:&v61 objects:v74 count:16];
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
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v61 + 1) + 8 * k);
        v34 = [(HAPMetadata *)self hapBaseUUIDSuffix];
        v35 = [v33 generateDictionary:v34];

        if (v35)
        {
          v36 = [v33 name];
          [v56 setObject:v35 forKeyedSubscript:v36];
        }

        else
        {
          v36 = sub_10007FAA0();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = sub_10007FAFC(0);
            v38 = [v33 name];
            *buf = 138543618;
            v76 = v37;
            v77 = 2112;
            v78 = v38;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to generate dictionary for HAP characteristic %@", buf, 0x16u);
          }
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v61 objects:v74 count:16];
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
  v40 = [(HAPMetadata *)self hapServices];
  v41 = [v40 countByEnumeratingWithState:&v57 objects:v73 count:16];
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
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v57 + 1) + 8 * m);
        v46 = [(HAPMetadata *)self hapBaseUUIDSuffix];
        v47 = [v45 generateDictionary:v46 metadata:self];

        if (v47)
        {
          v48 = [v45 name];
          [v39 setObject:v47 forKeyedSubscript:v48];
        }

        else
        {
          v48 = sub_10007FAA0();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v49 = sub_10007FAFC(0);
            v50 = [v45 name];
            *buf = 138543618;
            v76 = v49;
            v77 = 2112;
            v78 = v50;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to generate dictionary for HAP service %@", buf, 0x16u);
          }
        }
      }

      v42 = [v40 countByEnumeratingWithState:&v57 objects:v73 count:16];
    }

    while (v42);
  }

  if ([v39 count])
  {
    [v54 setObject:v39 forKeyedSubscript:@"Services"];
  }

  return v54;
}

- (id)generateHAPMetadataTuplesDictionary:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
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
        v12 = [v11 characteristicType];
        v13 = [(HAPMetadata *)self characteristicUTIFromType:v12];

        v14 = [v11 serviceType];
        v15 = [(HAPMetadata *)self serviceUTIFromType:v14];

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