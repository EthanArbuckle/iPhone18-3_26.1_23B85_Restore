@interface HAPCharacteristic
- (BOOL)isEqual:(id)equal;
- (BOOL)mergeObject:(id)object;
- (BOOL)supportsAdditionalAuthorizationData;
- (BOOL)supportsWriteWithResponse;
- (CBCharacteristic)cbCharacteristic;
- (HAPCharacteristic)initWithType:(id)type instanceID:(id)d value:(id)value stateNumber:(id)number properties:(unint64_t)properties eventNotificationsEnabled:(BOOL)enabled implicitWriteWithResponse:(BOOL)response metadata:(id)self0;
- (HAPService)service;
- (NSData)notificationContext;
- (NSDate)valueUpdatedTime;
- (NSNumber)stateNumber;
- (NSString)description;
- (id)_generateValidMetadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (id)propertiesDescription;
- (id)shortDescription;
- (id)validateValue:(id)value outValue:(id *)outValue;
- (id)value;
- (unint64_t)hash;
- (void)_updateMetadata:(id)metadata withProvidedMetadata:(id)providedMetadata;
- (void)setNotificationContext:(id)context;
- (void)setStateNumber:(id)number;
- (void)setValue:(id)value;
- (void)setValueUpdatedTime:(id)time;
@end

@implementation HAPCharacteristic

- (void)_updateMetadata:(id)metadata withProvidedMetadata:(id)providedMetadata
{
  metadataCopy = metadata;
  providedMetadataCopy = providedMetadata;
  format = [metadataCopy format];

  if (!format)
  {
    format2 = [providedMetadataCopy format];
    [metadataCopy setFormat:format2];
  }

  units = [metadataCopy units];

  if (!units)
  {
    units2 = [providedMetadataCopy units];
    [metadataCopy setUnits:units2];
  }

  manufacturerDescription = [metadataCopy manufacturerDescription];

  if (!manufacturerDescription)
  {
    manufacturerDescription2 = [providedMetadataCopy manufacturerDescription];
    [metadataCopy setManufacturerDescription:manufacturerDescription2];
  }

  constraints = [metadataCopy constraints];

  constraints2 = [providedMetadataCopy constraints];
  constraints16 = constraints2;
  if (!constraints)
  {
    [metadataCopy setConstraints:constraints2];
    goto LABEL_20;
  }

  if (constraints16)
  {
    constraints3 = [providedMetadataCopy constraints];
    minimumValue = [constraints3 minimumValue];

    if (minimumValue)
    {
      constraints4 = [providedMetadataCopy constraints];
      minimumValue2 = [constraints4 minimumValue];
      constraints5 = [metadataCopy constraints];
      [constraints5 setMinimumValue:minimumValue2];
    }

    constraints6 = [providedMetadataCopy constraints];
    maximumValue = [constraints6 maximumValue];

    if (maximumValue)
    {
      constraints7 = [providedMetadataCopy constraints];
      maximumValue2 = [constraints7 maximumValue];
      constraints8 = [metadataCopy constraints];
      [constraints8 setMaximumValue:maximumValue2];
    }

    constraints9 = [providedMetadataCopy constraints];
    stepValue = [constraints9 stepValue];

    if (stepValue)
    {
      constraints10 = [providedMetadataCopy constraints];
      stepValue2 = [constraints10 stepValue];
      constraints11 = [metadataCopy constraints];
      [constraints11 setStepValue:stepValue2];
    }

    constraints12 = [providedMetadataCopy constraints];
    maxLength = [constraints12 maxLength];

    if (maxLength)
    {
      constraints13 = [providedMetadataCopy constraints];
      maxLength2 = [constraints13 maxLength];
      constraints14 = [metadataCopy constraints];
      [constraints14 setMaxLength:maxLength2];
    }

    constraints15 = [providedMetadataCopy constraints];
    validValues = [constraints15 validValues];
    v37 = [validValues count];

    if (v37)
    {
      constraints16 = [providedMetadataCopy constraints];
      validValues2 = [constraints16 validValues];
      constraints17 = [metadataCopy constraints];
      [constraints17 setValidValues:validValues2];

LABEL_20:
    }
  }
}

- (id)_generateValidMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = +[HAPMetadata getSharedInstance];
  type = [(HAPCharacteristic *)self type];
  v7 = [v5 getDefaultCharacteristicMetadata:type];

  v8 = metadataCopy;
  if (v7)
  {
    v8 = v7;
    if (metadataCopy)
    {
      [(HAPCharacteristic *)self _updateMetadata:v7 withProvidedMetadata:metadataCopy];
      v8 = v7;
    }
  }

  v9 = v8;

  return v9;
}

- (id)validateValue:(id)value outValue:(id *)outValue
{
  valueCopy = value;
  metadata = [(HAPCharacteristic *)self metadata];
  if (!metadata)
  {
    goto LABEL_4;
  }

  v8 = metadata;
  metadata2 = [(HAPCharacteristic *)self metadata];
  if (!metadata2)
  {

LABEL_7:
    metadata3 = [(HAPCharacteristic *)self metadata];
    format = [metadata3 format];

    if (outValue)
    {
      *outValue = 0;
    }

    if (!valueCopy)
    {
      v14 = 0;
LABEL_65:

      goto LABEL_66;
    }

    metadata4 = [(HAPCharacteristic *)self metadata];
    outValueCopy = outValue;
    if (!metadata4)
    {
      goto LABEL_14;
    }

    v18 = metadata4;
    metadata5 = [(HAPCharacteristic *)self metadata];
    constraints = [metadata5 constraints];

    if (constraints)
    {
      metadata6 = [(HAPCharacteristic *)self metadata];
      constraints2 = [metadata6 constraints];
      minimumValue = [constraints2 minimumValue];

      metadata7 = [(HAPCharacteristic *)self metadata];
      constraints3 = [metadata7 constraints];
      maximumValue = [constraints3 maximumValue];

      metadata8 = [(HAPCharacteristic *)self metadata];
      constraints4 = [metadata8 constraints];
      minLength = [constraints4 minLength];

      metadata9 = [(HAPCharacteristic *)self metadata];
      constraints5 = [metadata9 constraints];
      maxLength = [constraints5 maxLength];

      v32 = minLength;
    }

    else
    {
LABEL_14:
      maxLength = 0;
      v32 = 0;
      maximumValue = 0;
      minimumValue = 0;
    }

    if ([format isEqualToString:@"int"] & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"float") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"BOOL") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"int8") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"int16") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"int64") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"uint8") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"uint16") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"uint32") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"uint64"))
    {
      v33 = format;
      v34 = maximumValue;
      v35 = NSNumber_ptr;
    }

    else if ([format isEqualToString:@"string"])
    {
      v33 = format;
      v34 = maximumValue;
      v35 = NSString_ptr;
    }

    else if ([format isEqualToString:@"date"])
    {
      v33 = format;
      v34 = maximumValue;
      v35 = NSDate_ptr;
    }

    else
    {
      v34 = maximumValue;
      v33 = format;
      if ([format isEqualToString:@"array"])
      {
        v35 = NSArray_ptr;
      }

      else
      {
        if ([format isEqualToString:@"dict"])
        {
          v35 = NSObject_ptr;
        }

        else
        {
          if (([format isEqualToString:@"data"] & 1) == 0 && !objc_msgSend(format, "isEqualToString:", @"tlv8"))
          {
            v37 = 0;
            v33 = format;
LABEL_27:
            if (([objc_opt_class() isSubclassOfClass:v37] & 1) == 0)
            {
              v44 = [NSError errorWithDomain:@"DKErrorDomain" code:35 userInfo:0];
              v45 = sub_10007FAA0();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                v46 = sub_10007FAFC(0);
                [(HAPCharacteristic *)self type];
                v91 = maxLength;
                v48 = v47 = v32;
                *buf = 138544130;
                v95 = v46;
                v96 = 2112;
                v97 = v48;
                v98 = 2112;
                v99 = objc_opt_class();
                v100 = 2112;
                objCType = v37;
                v49 = v99;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%{public}@### Failed to validate value for characteristic with type '%@' because the value was of class '%@' but should be '%@'", buf, 0x2Au);

                v32 = v47;
                maxLength = v91;
              }

              v38 = v34;
              format = v33;
              goto LABEL_64;
            }

            v38 = v34;
            format = v33;
            if (!outValueCopy)
            {
LABEL_47:
              if (([format isEqualToString:@"int"] & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"float") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"int8") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"int16") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"int64") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"uint8") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"uint16") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"uint32") & 1) != 0 || objc_msgSend(format, "isEqualToString:", @"uint64"))
              {
                if (minimumValue && [valueCopy compare:minimumValue] == -1)
                {
                  v67 = [NSError errorWithDomain:@"DKErrorDomain" code:47 userInfo:0];
                  if (outValueCopy)
                  {
                    *outValueCopy = 0;
                  }
                }

                else
                {
                  v67 = 0;
                }

                if (v38 && [valueCopy compare:v38] == 1)
                {
                  v44 = [NSError errorWithDomain:@"DKErrorDomain" code:48 userInfo:0];

                  if (outValueCopy)
                  {
                    *outValueCopy = 0;
                  }
                }

                else
                {
                  v44 = v67;
                }

                goto LABEL_64;
              }

              if ([format isEqualToString:@"BOOL"])
              {
                v69 = objc_opt_class();
                if (([v69 isSubclassOfClass:objc_opt_class()] & 1) == 0)
                {
                  v70 = v38;
                  v71 = maxLength;
                  v72 = v70;
                  if ([v69 isSubclassOfClass:objc_opt_class()])
                  {
                    if ([valueCopy intValue] < 2)
                    {
                      v44 = 0;
LABEL_104:
                      v88 = v72;
                      maxLength = v71;
                      v38 = v88;
                      goto LABEL_64;
                    }

                    v73 = sub_10007FAA0();
                    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                    {
                      v74 = sub_10007FAFC(0);
                      v75 = objc_opt_class();
                      v76 = valueCopy;
                      v77 = v75;
                      *buf = 138544130;
                      v95 = v74;
                      v96 = 2112;
                      v97 = valueCopy;
                      v98 = 2112;
                      v99 = v75;
                      v100 = 2080;
                      objCType = [valueCopy objCType];
                      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "%{public}@Value to be validated is expected to be either '0' or '1', instead it was '%@' - class %@  objCType %s", buf, 0x2Au);
                    }
                  }

                  else
                  {
                    v83 = sub_10007FAA0();
                    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                    {
                      v84 = sub_10007FAFC(0);
                      *buf = 138543874;
                      v95 = v84;
                      v96 = 2112;
                      v97 = valueCopy;
                      v98 = 2112;
                      v99 = v69;
                      _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, "%{public}@inValue not a BOOLean value %@ - class %@", buf, 0x20u);
                    }
                  }

                  v44 = [NSError errorWithDomain:@"DKErrorDomain" code:2 userInfo:0];
                  if (outValueCopy)
                  {
                    *outValueCopy = 0;
                  }

                  goto LABEL_104;
                }

LABEL_87:
                v44 = 0;
LABEL_64:
                v14 = v44;

                goto LABEL_65;
              }

              if (![format isEqualToString:@"string"])
              {
                goto LABEL_87;
              }

              v78 = valueCopy;
              v79 = [v78 length];
              if (v79 <= [maxLength unsignedIntValue])
              {
                v85 = [v78 length];
                if (v85 >= [v32 unsignedIntValue])
                {
                  v44 = 0;
LABEL_106:

                  goto LABEL_64;
                }

                v86 = sub_10007FAA0();
                if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
                {
                  v87 = sub_10007FAFC(0);
                  *buf = 138543874;
                  v95 = v87;
                  v96 = 2048;
                  v97 = [v78 length];
                  v98 = 1024;
                  LODWORD(v99) = [v32 unsignedIntValue];
                  _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "%{public}@inValue string.length: %lu < minLength: %u", buf, 0x1Cu);
                }

                v82 = 50;
              }

              else
              {
                v80 = sub_10007FAA0();
                if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                {
                  v81 = sub_10007FAFC(0);
                  *buf = 138543874;
                  v95 = v81;
                  v96 = 2048;
                  v97 = [v78 length];
                  v98 = 1024;
                  LODWORD(v99) = [maxLength unsignedIntValue];
                  _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "%{public}@inValue string.length: %lu > maxLength: %u", buf, 0x1Cu);
                }

                v82 = 49;
              }

              v44 = [NSError errorWithDomain:@"DKErrorDomain" code:v82 userInfo:0];
              if (outValueCopy)
              {
                *outValueCopy = 0;
              }

              goto LABEL_106;
            }

            v89 = v32;
            v90 = v34;
            metadata10 = [(HAPCharacteristic *)self metadata];
            constraints6 = [metadata10 constraints];
            stepValue = [constraints6 stepValue];
            if (stepValue)
            {
              v42 = stepValue;
              v43 = minimumValue;
              if ([format isEqualToString:@"float"])
              {

LABEL_38:
                metadata11 = [(HAPCharacteristic *)self metadata];
                constraints7 = [metadata11 constraints];
                stepValue2 = [constraints7 stepValue];
                [stepValue2 doubleValue];
                v55 = v54;

                metadata12 = [(HAPCharacteristic *)self metadata];
                constraints8 = [metadata12 constraints];
                minimumValue2 = [constraints8 minimumValue];

                if (minimumValue2)
                {
                  metadata13 = [(HAPCharacteristic *)self metadata];
                  constraints9 = [metadata13 constraints];
                  minimumValue3 = [constraints9 minimumValue];
                  [minimumValue3 doubleValue];
                  v63 = v62;
                }

                else
                {
                  v63 = 0.0;
                }

                [valueCopy doubleValue];
                v66 = v63 + round((v65 - v63) / v55) * v55;
                v32 = v89;
                if ([format isEqualToString:@"int"])
                {
                  [NSNumber numberWithInteger:v66];
                }

                else
                {
                  [NSNumber numberWithDouble:v66];
                }

                v64 = v38 = v90;
                goto LABEL_46;
              }

              v50 = [format isEqualToString:@"int"];

              if (v50)
              {
                goto LABEL_38;
              }
            }

            else
            {
              v43 = minimumValue;
            }

            minimumValue = v43;
            v64 = valueCopy;
            v32 = v89;
            v38 = v90;
LABEL_46:
            *outValueCopy = v64;
            goto LABEL_47;
          }

          v35 = NSData_ptr;
        }

        v33 = format;
      }
    }

    v36 = *v35;
    v37 = objc_opt_class();
    goto LABEL_27;
  }

  v10 = metadata2;
  metadata14 = [(HAPCharacteristic *)self metadata];
  format2 = [metadata14 format];

  if (format2)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (outValue)
  {
    v13 = valueCopy;
    v14 = 0;
    *outValue = valueCopy;
  }

  else
  {
    v14 = 0;
  }

LABEL_66:

  return v14;
}

- (CBCharacteristic)cbCharacteristic
{
  v2 = objc_getAssociatedObject(self, "cbCharacteristic");
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

- (HAPCharacteristic)initWithType:(id)type instanceID:(id)d value:(id)value stateNumber:(id)number properties:(unint64_t)properties eventNotificationsEnabled:(BOOL)enabled implicitWriteWithResponse:(BOOL)response metadata:(id)self0
{
  typeCopy = type;
  dCopy = d;
  valueCopy = value;
  numberCopy = number;
  metadataCopy = metadata;
  if ((sub_10007E584(typeCopy) & 1) == 0)
  {
    v19 = sub_10007FAA0();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
LABEL_29:
      selfCopy = 0;
      goto LABEL_30;
    }

    v39 = sub_10007FAFC(0);
    *buf = 138543618;
    v59 = v39;
    v60 = 2112;
    v61 = typeCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@### Unable to initialize characteristic because of invalid characteristic type name: %@", buf, 0x16u);
    goto LABEL_28;
  }

  v19 = sub_10007E724(typeCopy);
  if (!v19)
  {
    v39 = sub_10007FAA0();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = sub_10007FAFC(0);
      *buf = 138543362;
      v59 = v40;
      v41 = "%{public}@### Unable to initialize characteristic because type name is not a UUID";
      v42 = v39;
      v43 = 12;
LABEL_27:
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, v41, buf, v43);

      goto LABEL_28;
    }

    goto LABEL_28;
  }

  if ((sub_10007EA14(dCopy) & 1) == 0)
  {
    v39 = sub_10007FAA0();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = sub_10007FAFC(0);
      *buf = 138543618;
      v59 = v40;
      v60 = 2112;
      v61 = v19;
      v41 = "%{public}@### Unable to initialize characteristic '%@' because of invalid instance ID";
LABEL_26:
      v42 = v39;
      v43 = 22;
      goto LABEL_27;
    }

LABEL_28:

    goto LABEL_29;
  }

  if ((sub_10000FD2C(properties, response, v19) & 1) == 0)
  {
    v39 = sub_10007FAA0();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = sub_10007FAFC(0);
      *buf = 138543618;
      v59 = v40;
      v60 = 2112;
      v61 = v19;
      v41 = "%{public}@### Unable to initialize characteristic '%@' because of invalid properties";
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  v54 = metadataCopy;
  v20 = metadataCopy;
  if (v20)
  {
    v21 = v20;
    constraints = [v20 constraints];
    if (constraints || ([v21 manufacturerDescription], (constraints = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v21, "format"), (constraints = objc_claimAutoreleasedReturnValue()) != 0))
    {

      v20 = v21;
    }

    else
    {
      units = [v21 units];

      v20 = v21;
      if (!units)
      {
        v45 = sub_10007FAA0();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = sub_10007FAFC(0);
          *buf = 138543362;
          v59 = v46;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%{public}@### Characteristic metadata is empty", buf, 0xCu);
        }

        v47 = sub_10007FAA0();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = sub_10007FAFC(0);
          *buf = 138543618;
          v59 = v48;
          v60 = 2112;
          v61 = v19;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%{public}@### Unable to initialize characteristic '%@' because of invalid metadata", buf, 0x16u);
        }

        selfCopy = 0;
        goto LABEL_17;
      }
    }
  }

  v52 = v20;

  v57.receiver = self;
  v57.super_class = HAPCharacteristic;
  v23 = [(HAPCharacteristic *)&v57 init];
  if (v23)
  {
    v24 = +[HAPMetadata getSharedInstance];
    v25 = [HMFObjectCacheNSString hmf_cachedInstanceForString:v19];
    type = v23->_type;
    v23->_type = v25;

    v51 = v24;
    v27 = [v24 characteristicUTIFromType:v19];
    v28 = v27;
    if (v27)
    {
      v50 = v27;
      v29 = sub_10007FAA0();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v49 = sub_10007FAFC(0);
        v30 = v23->_type;
        *buf = 138544130;
        v59 = v49;
        v60 = 2112;
        v61 = v30;
        v62 = 2112;
        v63 = v50;
        v64 = 2112;
        v65 = dCopy;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%{public}@%@ ----> %@ [%@]", buf, 0x2Au);
      }

      v28 = v50;
    }

    objc_storeStrong(&v23->_instanceID, d);
    objc_storeStrong(&v23->_value, value);
    objc_storeStrong(&v23->_stateNumber, number);
    v31 = +[NSDate date];
    valueUpdatedTime = v23->_valueUpdatedTime;
    v23->_valueUpdatedTime = v31;

    v23->_properties = properties;
    v23->_eventNotificationsEnabled = enabled;
    v23->_implicitWriteWithResponse = response;
    v23->_shouldValidateValueAfterReading = 1;
    v33 = [HMFObjectCacheHAPCharacteristicMetadata hap_cacheInstanceForMetadata:v52];
    accessoryMetadata = v23->_accessoryMetadata;
    v23->_accessoryMetadata = v33;

    v35 = [(HAPCharacteristic *)v23 _generateValidMetadata:v52];
    v36 = [HMFObjectCacheHAPCharacteristicMetadata hap_cacheInstanceForMetadata:v35];
    metadata = v23->_metadata;
    v23->_metadata = v36;
  }

  self = v23;
  selfCopy = self;
LABEL_17:
  metadataCopy = v54;
LABEL_30:

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  value = [(HAPCharacteristic *)self value];
  if (([value conformsToProtocol:&OBJC_PROTOCOL___NSCopying] & 1) == 0)
  {

    goto LABEL_5;
  }

  value2 = [(HAPCharacteristic *)self value];

  if (!value2)
  {
LABEL_5:
    value2 = [(HAPCharacteristic *)self value];
    v7 = [value2 copy];
    goto LABEL_6;
  }

  v7 = [value2 copyWithZone:zone];
LABEL_6:
  v25 = v7;

  v22 = objc_alloc(objc_opt_class());
  type = [(HAPCharacteristic *)self type];
  v21 = [type copyWithZone:zone];
  instanceID = [(HAPCharacteristic *)self instanceID];
  v8 = [instanceID copyWithZone:zone];
  stateNumber = [(HAPCharacteristic *)self stateNumber];
  v10 = [stateNumber copyWithZone:zone];
  properties = [(HAPCharacteristic *)self properties];
  eventNotificationsEnabled = [(HAPCharacteristic *)self eventNotificationsEnabled];
  isWriteWithResponseImplicitlySupported = [(HAPCharacteristic *)self isWriteWithResponseImplicitlySupported];
  metadata = [(HAPCharacteristic *)self metadata];
  v15 = [metadata copyWithZone:zone];
  LOBYTE(v20) = isWriteWithResponseImplicitlySupported;
  v16 = [v22 initWithType:v21 instanceID:v8 value:v25 stateNumber:v10 properties:properties eventNotificationsEnabled:eventNotificationsEnabled implicitWriteWithResponse:v20 metadata:v15];

  valueUpdatedTime = [(HAPCharacteristic *)self valueUpdatedTime];
  [v16 setValueUpdatedTime:valueUpdatedTime];

  notificationContext = [(HAPCharacteristic *)self notificationContext];
  [v16 setNotificationContext:notificationContext];

  [v16 setProhibitCaching:{-[HAPCharacteristic prohibitCaching](self, "prohibitCaching")}];
  [v16 setShouldValidateValueAfterReading:{-[HAPCharacteristic shouldValidateValueAfterReading](self, "shouldValidateValueAfterReading")}];

  return v16;
}

- (unint64_t)hash
{
  instanceID = [(HAPCharacteristic *)self instanceID];
  v3 = [instanceID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v20 = 1;
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
      goto LABEL_12;
    }

    instanceID = [(HAPCharacteristic *)self instanceID];
    instanceID2 = [(HAPCharacteristic *)v6 instanceID];
    v9 = sub_10007EC60(instanceID, instanceID2);

    if (v9)
    {
      goto LABEL_12;
    }

    type = [(HAPCharacteristic *)self type];
    type2 = [(HAPCharacteristic *)v6 type];
    v12 = sub_10007EC2C(type, type2);

    if ((v12 & 1) != 0 || (v13 = [(HAPCharacteristic *)self properties], v13 != [(HAPCharacteristic *)v6 properties]))
    {
LABEL_12:
      v20 = 0;
    }

    else
    {
      service = [(HAPCharacteristic *)self service];
      if (service)
      {
        v15 = service;
        service2 = [(HAPCharacteristic *)v6 service];
        if (service2)
        {
          v17 = service2;
          service3 = [(HAPCharacteristic *)self service];
          service4 = [(HAPCharacteristic *)v6 service];
          v20 = [service3 isEqual:service4];
        }

        else
        {
          v20 = 1;
        }
      }

      else
      {
        v20 = 1;
      }
    }
  }

  return v20 & 1;
}

- (id)shortDescription
{
  v3 = objc_alloc_init(NSMutableString);
  value = [(HAPCharacteristic *)self value];
  [v3 appendFormat:@"Value: %@", value];

  stateNumber = [(HAPCharacteristic *)self stateNumber];
  [v3 appendFormat:@", State Number: %@", stateNumber];

  valueUpdatedTime = [(HAPCharacteristic *)self valueUpdatedTime];
  hmf_localTimeDescription = [valueUpdatedTime hmf_localTimeDescription];
  [v3 appendFormat:@", Value update time: %@", hmf_localTimeDescription];

  propertiesDescription = [(HAPCharacteristic *)self propertiesDescription];
  [v3 appendFormat:@", Properties: %@", propertiesDescription];

  [(HAPCharacteristic *)self eventNotificationsEnabled];
  v9 = HMFBooleanToString();
  [v3 appendFormat:@", Event Notifications Enabled: %@", v9];

  v10 = [NSNumber numberWithBool:[(HAPCharacteristic *)self isWriteWithResponseImplicitlySupported]];
  [v3 appendFormat:@", Write With Response Implicitly Supported: %@", v10];

  metadata = [(HAPCharacteristic *)self metadata];
  [v3 appendFormat:@", Metadata: %@", metadata];

  [(HAPCharacteristic *)self supportsEventNotificationContext];
  v12 = HMFBooleanToString();
  [v3 appendFormat:@", supportsEventNotificationContext: %@", v12];

  return v3;
}

- (NSString)description
{
  v3 = objc_alloc_init(NSMutableString);
  v12.receiver = self;
  v12.super_class = HAPCharacteristic;
  v4 = [(HAPCharacteristic *)&v12 description];
  [v3 appendFormat:@"%@", v4];

  service = [(HAPCharacteristic *)self service];
  accessory = [service accessory];
  uniqueIdentifier = [accessory uniqueIdentifier];
  [v3 appendFormat:@", Accessory Unique ID: %@", uniqueIdentifier];

  instanceID = [(HAPCharacteristic *)self instanceID];
  [v3 appendFormat:@", Instance ID: %@", instanceID];

  type = [(HAPCharacteristic *)self type];
  [v3 appendFormat:@", Type: %@", type];

  shortDescription = [(HAPCharacteristic *)self shortDescription];
  [v3 appendFormat:@", %@", shortDescription];

  return v3;
}

- (id)propertiesDescription
{
  v3 = objc_alloc_init(NSMutableArray);
  if (([(HAPCharacteristic *)self properties]& 2) != 0)
  {
    [v3 addObject:@"read"];
  }

  if (([(HAPCharacteristic *)self properties]& 4) != 0)
  {
    [v3 addObject:@"write"];
  }

  if (([(HAPCharacteristic *)self properties]& 1) != 0)
  {
    [v3 addObject:@"eventConnectionNotifications"];
  }

  if (([(HAPCharacteristic *)self properties]& 8) != 0)
  {
    [v3 addObject:@"broadcast"];
  }

  if (([(HAPCharacteristic *)self properties]& 0x10) != 0)
  {
    [v3 addObject:@"additionalAuthData"];
  }

  if (([(HAPCharacteristic *)self properties]& 0x20) != 0)
  {
    [v3 addObject:@"requiresTimedWrite"];
  }

  if (([(HAPCharacteristic *)self properties]& 0x40) != 0)
  {
    [v3 addObject:@"hidden"];
  }

  if (([(HAPCharacteristic *)self properties]& 0x80) != 0)
  {
    [v3 addObject:@"writeResponse"];
  }

  if (([(HAPCharacteristic *)self properties]& 0x100) != 0)
  {
    [v3 addObject:@"eventNotificationContext"];
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

- (void)setValue:(id)value
{
  valueCopy = value;
  v5 = +[NSDate date];
  os_unfair_lock_lock_with_options();
  value = self->_value;
  self->_value = valueCopy;
  v7 = valueCopy;

  valueUpdatedTime = self->_valueUpdatedTime;
  self->_valueUpdatedTime = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)value
{
  os_unfair_lock_lock_with_options();
  v3 = self->_value;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setStateNumber:(id)number
{
  numberCopy = number;
  os_unfair_lock_lock_with_options();
  stateNumber = self->_stateNumber;
  self->_stateNumber = numberCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)stateNumber
{
  os_unfair_lock_lock_with_options();
  v3 = self->_stateNumber;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setValueUpdatedTime:(id)time
{
  timeCopy = time;
  os_unfair_lock_lock_with_options();
  valueUpdatedTime = self->_valueUpdatedTime;
  self->_valueUpdatedTime = timeCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)valueUpdatedTime
{
  os_unfair_lock_lock_with_options();
  v3 = self->_valueUpdatedTime;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setNotificationContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock_with_options();
  notificationContext = self->_notificationContext;
  self->_notificationContext = contextCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)notificationContext
{
  os_unfair_lock_lock_with_options();
  v3 = self->_notificationContext;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)supportsWriteWithResponse
{
  properties = [(HAPCharacteristic *)self properties];
  if ((properties & 0x80) != 0)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    return [(HAPCharacteristic *)self isWriteWithResponseImplicitlySupported]& (properties >> 2);
  }

  return v4;
}

- (BOOL)supportsAdditionalAuthorizationData
{
  if (([(HAPCharacteristic *)self properties]& 0x10) != 0)
  {
    return 1;
  }

  v3 = +[HAPMetadata getSharedInstance];
  service = [(HAPCharacteristic *)self service];
  type = [(HAPCharacteristic *)self type];
  type2 = [service type];
  v7 = [v3 supportsAdditionalAuthorizationData:type forService:type2];

  return v7;
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
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = [(HAPCharacteristic *)self shouldMergeObject:v6];
  if (!v7)
  {
    selfCopy = self;
    v13 = sub_10007FAA0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = sub_10007FAFC(selfCopy);
      v20 = 138543618;
      v21 = v14;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{public}@Not merging with characteristic: %@", &v20, 0x16u);
    }

    goto LABEL_14;
  }

  value = [v6 value];
  [(HAPCharacteristic *)self setValue:value];

  metadata = [(HAPCharacteristic *)self metadata];
  metadata2 = [v6 metadata];
  v11 = [metadata isEqualToCharacteristicMetadata:metadata2];

  if ((v11 & 1) == 0)
  {
    selfCopy2 = self;
    v16 = sub_10007FAA0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = sub_10007FAFC(selfCopy2);
      metadata3 = [v6 metadata];
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = metadata3;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%{public}@Updated the characteristic metadata: %@", &v20, 0x16u);
    }

    selfCopy = [v6 metadata];
    [(HAPCharacteristic *)selfCopy2 setMetadata:selfCopy];
LABEL_14:

    goto LABEL_15;
  }

LABEL_7:
  v7 = 0;
LABEL_15:

  return v7;
}

- (HAPService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

@end