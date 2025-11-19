@interface HAPCharacteristic
- (BOOL)isEqual:(id)a3;
- (BOOL)mergeObject:(id)a3;
- (BOOL)supportsAdditionalAuthorizationData;
- (BOOL)supportsWriteWithResponse;
- (CBCharacteristic)cbCharacteristic;
- (HAPCharacteristic)initWithType:(id)a3 instanceID:(id)a4 value:(id)a5 stateNumber:(id)a6 properties:(unint64_t)a7 eventNotificationsEnabled:(BOOL)a8 implicitWriteWithResponse:(BOOL)a9 metadata:(id)a10;
- (HAPService)service;
- (NSData)notificationContext;
- (NSDate)valueUpdatedTime;
- (NSNumber)stateNumber;
- (NSString)description;
- (id)_generateValidMetadata:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)propertiesDescription;
- (id)shortDescription;
- (id)validateValue:(id)a3 outValue:(id *)a4;
- (id)value;
- (unint64_t)hash;
- (void)_updateMetadata:(id)a3 withProvidedMetadata:(id)a4;
- (void)setNotificationContext:(id)a3;
- (void)setStateNumber:(id)a3;
- (void)setValue:(id)a3;
- (void)setValueUpdatedTime:(id)a3;
@end

@implementation HAPCharacteristic

- (void)_updateMetadata:(id)a3 withProvidedMetadata:(id)a4
{
  v40 = a3;
  v5 = a4;
  v6 = [v40 format];

  if (!v6)
  {
    v7 = [v5 format];
    [v40 setFormat:v7];
  }

  v8 = [v40 units];

  if (!v8)
  {
    v9 = [v5 units];
    [v40 setUnits:v9];
  }

  v10 = [v40 manufacturerDescription];

  if (!v10)
  {
    v11 = [v5 manufacturerDescription];
    [v40 setManufacturerDescription:v11];
  }

  v12 = [v40 constraints];

  v13 = [v5 constraints];
  v14 = v13;
  if (!v12)
  {
    [v40 setConstraints:v13];
    goto LABEL_20;
  }

  if (v14)
  {
    v15 = [v5 constraints];
    v16 = [v15 minimumValue];

    if (v16)
    {
      v17 = [v5 constraints];
      v18 = [v17 minimumValue];
      v19 = [v40 constraints];
      [v19 setMinimumValue:v18];
    }

    v20 = [v5 constraints];
    v21 = [v20 maximumValue];

    if (v21)
    {
      v22 = [v5 constraints];
      v23 = [v22 maximumValue];
      v24 = [v40 constraints];
      [v24 setMaximumValue:v23];
    }

    v25 = [v5 constraints];
    v26 = [v25 stepValue];

    if (v26)
    {
      v27 = [v5 constraints];
      v28 = [v27 stepValue];
      v29 = [v40 constraints];
      [v29 setStepValue:v28];
    }

    v30 = [v5 constraints];
    v31 = [v30 maxLength];

    if (v31)
    {
      v32 = [v5 constraints];
      v33 = [v32 maxLength];
      v34 = [v40 constraints];
      [v34 setMaxLength:v33];
    }

    v35 = [v5 constraints];
    v36 = [v35 validValues];
    v37 = [v36 count];

    if (v37)
    {
      v14 = [v5 constraints];
      v38 = [v14 validValues];
      v39 = [v40 constraints];
      [v39 setValidValues:v38];

LABEL_20:
    }
  }
}

- (id)_generateValidMetadata:(id)a3
{
  v4 = a3;
  v5 = +[HAPMetadata getSharedInstance];
  v6 = [(HAPCharacteristic *)self type];
  v7 = [v5 getDefaultCharacteristicMetadata:v6];

  v8 = v4;
  if (v7)
  {
    v8 = v7;
    if (v4)
    {
      [(HAPCharacteristic *)self _updateMetadata:v7 withProvidedMetadata:v4];
      v8 = v7;
    }
  }

  v9 = v8;

  return v9;
}

- (id)validateValue:(id)a3 outValue:(id *)a4
{
  v6 = a3;
  v7 = [(HAPCharacteristic *)self metadata];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = v7;
  v9 = [(HAPCharacteristic *)self metadata];
  if (!v9)
  {

LABEL_7:
    v15 = [(HAPCharacteristic *)self metadata];
    v16 = [v15 format];

    if (a4)
    {
      *a4 = 0;
    }

    if (!v6)
    {
      v14 = 0;
LABEL_65:

      goto LABEL_66;
    }

    v17 = [(HAPCharacteristic *)self metadata];
    v92 = a4;
    if (!v17)
    {
      goto LABEL_14;
    }

    v18 = v17;
    v19 = [(HAPCharacteristic *)self metadata];
    v20 = [v19 constraints];

    if (v20)
    {
      v21 = [(HAPCharacteristic *)self metadata];
      v22 = [v21 constraints];
      v93 = [v22 minimumValue];

      v23 = [(HAPCharacteristic *)self metadata];
      v24 = [v23 constraints];
      v25 = [v24 maximumValue];

      v26 = [(HAPCharacteristic *)self metadata];
      v27 = [v26 constraints];
      v28 = [v27 minLength];

      v29 = [(HAPCharacteristic *)self metadata];
      v30 = [v29 constraints];
      v31 = [v30 maxLength];

      v32 = v28;
    }

    else
    {
LABEL_14:
      v31 = 0;
      v32 = 0;
      v25 = 0;
      v93 = 0;
    }

    if ([v16 isEqualToString:@"int"] & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"float") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"BOOL") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"int8") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"int16") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"int64") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"uint8") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"uint16") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"uint32") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"uint64"))
    {
      v33 = v16;
      v34 = v25;
      v35 = NSNumber_ptr;
    }

    else if ([v16 isEqualToString:@"string"])
    {
      v33 = v16;
      v34 = v25;
      v35 = NSString_ptr;
    }

    else if ([v16 isEqualToString:@"date"])
    {
      v33 = v16;
      v34 = v25;
      v35 = NSDate_ptr;
    }

    else
    {
      v34 = v25;
      v33 = v16;
      if ([v16 isEqualToString:@"array"])
      {
        v35 = NSArray_ptr;
      }

      else
      {
        if ([v16 isEqualToString:@"dict"])
        {
          v35 = NSObject_ptr;
        }

        else
        {
          if (([v16 isEqualToString:@"data"] & 1) == 0 && !objc_msgSend(v16, "isEqualToString:", @"tlv8"))
          {
            v37 = 0;
            v33 = v16;
LABEL_27:
            if (([objc_opt_class() isSubclassOfClass:v37] & 1) == 0)
            {
              v44 = [NSError errorWithDomain:@"DKErrorDomain" code:35 userInfo:0];
              v45 = sub_10007FAA0();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                v46 = sub_10007FAFC(0);
                [(HAPCharacteristic *)self type];
                v91 = v31;
                v48 = v47 = v32;
                *buf = 138544130;
                v95 = v46;
                v96 = 2112;
                v97 = v48;
                v98 = 2112;
                v99 = objc_opt_class();
                v100 = 2112;
                v101 = v37;
                v49 = v99;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%{public}@### Failed to validate value for characteristic with type '%@' because the value was of class '%@' but should be '%@'", buf, 0x2Au);

                v32 = v47;
                v31 = v91;
              }

              v38 = v34;
              v16 = v33;
              goto LABEL_64;
            }

            v38 = v34;
            v16 = v33;
            if (!v92)
            {
LABEL_47:
              if (([v16 isEqualToString:@"int"] & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"float") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"int8") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"int16") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"int64") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"uint8") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"uint16") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"uint32") & 1) != 0 || objc_msgSend(v16, "isEqualToString:", @"uint64"))
              {
                if (v93 && [v6 compare:v93] == -1)
                {
                  v67 = [NSError errorWithDomain:@"DKErrorDomain" code:47 userInfo:0];
                  if (v92)
                  {
                    *v92 = 0;
                  }
                }

                else
                {
                  v67 = 0;
                }

                if (v38 && [v6 compare:v38] == 1)
                {
                  v44 = [NSError errorWithDomain:@"DKErrorDomain" code:48 userInfo:0];

                  if (v92)
                  {
                    *v92 = 0;
                  }
                }

                else
                {
                  v44 = v67;
                }

                goto LABEL_64;
              }

              if ([v16 isEqualToString:@"BOOL"])
              {
                v69 = objc_opt_class();
                if (([v69 isSubclassOfClass:objc_opt_class()] & 1) == 0)
                {
                  v70 = v38;
                  v71 = v31;
                  v72 = v70;
                  if ([v69 isSubclassOfClass:objc_opt_class()])
                  {
                    if ([v6 intValue] < 2)
                    {
                      v44 = 0;
LABEL_104:
                      v88 = v72;
                      v31 = v71;
                      v38 = v88;
                      goto LABEL_64;
                    }

                    v73 = sub_10007FAA0();
                    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                    {
                      v74 = sub_10007FAFC(0);
                      v75 = objc_opt_class();
                      v76 = v6;
                      v77 = v75;
                      *buf = 138544130;
                      v95 = v74;
                      v96 = 2112;
                      v97 = v6;
                      v98 = 2112;
                      v99 = v75;
                      v100 = 2080;
                      v101 = [v6 objCType];
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
                      v97 = v6;
                      v98 = 2112;
                      v99 = v69;
                      _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, "%{public}@inValue not a BOOLean value %@ - class %@", buf, 0x20u);
                    }
                  }

                  v44 = [NSError errorWithDomain:@"DKErrorDomain" code:2 userInfo:0];
                  if (v92)
                  {
                    *v92 = 0;
                  }

                  goto LABEL_104;
                }

LABEL_87:
                v44 = 0;
LABEL_64:
                v14 = v44;

                goto LABEL_65;
              }

              if (![v16 isEqualToString:@"string"])
              {
                goto LABEL_87;
              }

              v78 = v6;
              v79 = [v78 length];
              if (v79 <= [v31 unsignedIntValue])
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
                  LODWORD(v99) = [v31 unsignedIntValue];
                  _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "%{public}@inValue string.length: %lu > maxLength: %u", buf, 0x1Cu);
                }

                v82 = 49;
              }

              v44 = [NSError errorWithDomain:@"DKErrorDomain" code:v82 userInfo:0];
              if (v92)
              {
                *v92 = 0;
              }

              goto LABEL_106;
            }

            v89 = v32;
            v90 = v34;
            v39 = [(HAPCharacteristic *)self metadata];
            v40 = [v39 constraints];
            v41 = [v40 stepValue];
            if (v41)
            {
              v42 = v41;
              v43 = v93;
              if ([v16 isEqualToString:@"float"])
              {

LABEL_38:
                v51 = [(HAPCharacteristic *)self metadata];
                v52 = [v51 constraints];
                v53 = [v52 stepValue];
                [v53 doubleValue];
                v55 = v54;

                v56 = [(HAPCharacteristic *)self metadata];
                v57 = [v56 constraints];
                v58 = [v57 minimumValue];

                if (v58)
                {
                  v59 = [(HAPCharacteristic *)self metadata];
                  v60 = [v59 constraints];
                  v61 = [v60 minimumValue];
                  [v61 doubleValue];
                  v63 = v62;
                }

                else
                {
                  v63 = 0.0;
                }

                [v6 doubleValue];
                v66 = v63 + round((v65 - v63) / v55) * v55;
                v32 = v89;
                if ([v16 isEqualToString:@"int"])
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

              v50 = [v16 isEqualToString:@"int"];

              if (v50)
              {
                goto LABEL_38;
              }
            }

            else
            {
              v43 = v93;
            }

            v93 = v43;
            v64 = v6;
            v32 = v89;
            v38 = v90;
LABEL_46:
            *v92 = v64;
            goto LABEL_47;
          }

          v35 = NSData_ptr;
        }

        v33 = v16;
      }
    }

    v36 = *v35;
    v37 = objc_opt_class();
    goto LABEL_27;
  }

  v10 = v9;
  v11 = [(HAPCharacteristic *)self metadata];
  v12 = [v11 format];

  if (v12)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (a4)
  {
    v13 = v6;
    v14 = 0;
    *a4 = v6;
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

- (HAPCharacteristic)initWithType:(id)a3 instanceID:(id)a4 value:(id)a5 stateNumber:(id)a6 properties:(unint64_t)a7 eventNotificationsEnabled:(BOOL)a8 implicitWriteWithResponse:(BOOL)a9 metadata:(id)a10
{
  v16 = a3;
  v17 = a4;
  v56 = a5;
  v55 = a6;
  v18 = a10;
  if ((sub_10007E584(v16) & 1) == 0)
  {
    v19 = sub_10007FAA0();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
LABEL_29:
      v38 = 0;
      goto LABEL_30;
    }

    v39 = sub_10007FAFC(0);
    *buf = 138543618;
    v59 = v39;
    v60 = 2112;
    v61 = v16;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@### Unable to initialize characteristic because of invalid characteristic type name: %@", buf, 0x16u);
    goto LABEL_28;
  }

  v19 = sub_10007E724(v16);
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

  if ((sub_10007EA14(v17) & 1) == 0)
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

  if ((sub_10000FD2C(a7, a9, v19) & 1) == 0)
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

  v54 = v18;
  v20 = v18;
  if (v20)
  {
    v21 = v20;
    v22 = [v20 constraints];
    if (v22 || ([v21 manufacturerDescription], (v22 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v21, "format"), (v22 = objc_claimAutoreleasedReturnValue()) != 0))
    {

      v20 = v21;
    }

    else
    {
      v53 = [v21 units];

      v20 = v21;
      if (!v53)
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

        v38 = 0;
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
        v65 = v17;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%{public}@%@ ----> %@ [%@]", buf, 0x2Au);
      }

      v28 = v50;
    }

    objc_storeStrong(&v23->_instanceID, a4);
    objc_storeStrong(&v23->_value, a5);
    objc_storeStrong(&v23->_stateNumber, a6);
    v31 = +[NSDate date];
    valueUpdatedTime = v23->_valueUpdatedTime;
    v23->_valueUpdatedTime = v31;

    v23->_properties = a7;
    v23->_eventNotificationsEnabled = a8;
    v23->_implicitWriteWithResponse = a9;
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
  v38 = self;
LABEL_17:
  v18 = v54;
LABEL_30:

  return v38;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(HAPCharacteristic *)self value];
  if (([v5 conformsToProtocol:&OBJC_PROTOCOL___NSCopying] & 1) == 0)
  {

    goto LABEL_5;
  }

  v6 = [(HAPCharacteristic *)self value];

  if (!v6)
  {
LABEL_5:
    v6 = [(HAPCharacteristic *)self value];
    v7 = [v6 copy];
    goto LABEL_6;
  }

  v7 = [v6 copyWithZone:a3];
LABEL_6:
  v25 = v7;

  v22 = objc_alloc(objc_opt_class());
  v24 = [(HAPCharacteristic *)self type];
  v21 = [v24 copyWithZone:a3];
  v23 = [(HAPCharacteristic *)self instanceID];
  v8 = [v23 copyWithZone:a3];
  v9 = [(HAPCharacteristic *)self stateNumber];
  v10 = [v9 copyWithZone:a3];
  v11 = [(HAPCharacteristic *)self properties];
  v12 = [(HAPCharacteristic *)self eventNotificationsEnabled];
  v13 = [(HAPCharacteristic *)self isWriteWithResponseImplicitlySupported];
  v14 = [(HAPCharacteristic *)self metadata];
  v15 = [v14 copyWithZone:a3];
  LOBYTE(v20) = v13;
  v16 = [v22 initWithType:v21 instanceID:v8 value:v25 stateNumber:v10 properties:v11 eventNotificationsEnabled:v12 implicitWriteWithResponse:v20 metadata:v15];

  v17 = [(HAPCharacteristic *)self valueUpdatedTime];
  [v16 setValueUpdatedTime:v17];

  v18 = [(HAPCharacteristic *)self notificationContext];
  [v16 setNotificationContext:v18];

  [v16 setProhibitCaching:{-[HAPCharacteristic prohibitCaching](self, "prohibitCaching")}];
  [v16 setShouldValidateValueAfterReading:{-[HAPCharacteristic shouldValidateValueAfterReading](self, "shouldValidateValueAfterReading")}];

  return v16;
}

- (unint64_t)hash
{
  v2 = [(HAPCharacteristic *)self instanceID];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v20 = 1;
  }

  else
  {
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
    if (!v6)
    {
      goto LABEL_12;
    }

    v7 = [(HAPCharacteristic *)self instanceID];
    v8 = [(HAPCharacteristic *)v6 instanceID];
    v9 = sub_10007EC60(v7, v8);

    if (v9)
    {
      goto LABEL_12;
    }

    v10 = [(HAPCharacteristic *)self type];
    v11 = [(HAPCharacteristic *)v6 type];
    v12 = sub_10007EC2C(v10, v11);

    if ((v12 & 1) != 0 || (v13 = [(HAPCharacteristic *)self properties], v13 != [(HAPCharacteristic *)v6 properties]))
    {
LABEL_12:
      v20 = 0;
    }

    else
    {
      v14 = [(HAPCharacteristic *)self service];
      if (v14)
      {
        v15 = v14;
        v16 = [(HAPCharacteristic *)v6 service];
        if (v16)
        {
          v17 = v16;
          v18 = [(HAPCharacteristic *)self service];
          v19 = [(HAPCharacteristic *)v6 service];
          v20 = [v18 isEqual:v19];
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
  v4 = [(HAPCharacteristic *)self value];
  [v3 appendFormat:@"Value: %@", v4];

  v5 = [(HAPCharacteristic *)self stateNumber];
  [v3 appendFormat:@", State Number: %@", v5];

  v6 = [(HAPCharacteristic *)self valueUpdatedTime];
  v7 = [v6 hmf_localTimeDescription];
  [v3 appendFormat:@", Value update time: %@", v7];

  v8 = [(HAPCharacteristic *)self propertiesDescription];
  [v3 appendFormat:@", Properties: %@", v8];

  [(HAPCharacteristic *)self eventNotificationsEnabled];
  v9 = HMFBooleanToString();
  [v3 appendFormat:@", Event Notifications Enabled: %@", v9];

  v10 = [NSNumber numberWithBool:[(HAPCharacteristic *)self isWriteWithResponseImplicitlySupported]];
  [v3 appendFormat:@", Write With Response Implicitly Supported: %@", v10];

  v11 = [(HAPCharacteristic *)self metadata];
  [v3 appendFormat:@", Metadata: %@", v11];

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

  v5 = [(HAPCharacteristic *)self service];
  v6 = [v5 accessory];
  v7 = [v6 uniqueIdentifier];
  [v3 appendFormat:@", Accessory Unique ID: %@", v7];

  v8 = [(HAPCharacteristic *)self instanceID];
  [v3 appendFormat:@", Instance ID: %@", v8];

  v9 = [(HAPCharacteristic *)self type];
  [v3 appendFormat:@", Type: %@", v9];

  v10 = [(HAPCharacteristic *)self shortDescription];
  [v3 appendFormat:@", %@", v10];

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

- (void)setValue:(id)a3
{
  v4 = a3;
  v5 = +[NSDate date];
  os_unfair_lock_lock_with_options();
  value = self->_value;
  self->_value = v4;
  v7 = v4;

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

- (void)setStateNumber:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  stateNumber = self->_stateNumber;
  self->_stateNumber = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)stateNumber
{
  os_unfair_lock_lock_with_options();
  v3 = self->_stateNumber;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setValueUpdatedTime:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  valueUpdatedTime = self->_valueUpdatedTime;
  self->_valueUpdatedTime = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)valueUpdatedTime
{
  os_unfair_lock_lock_with_options();
  v3 = self->_valueUpdatedTime;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setNotificationContext:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  notificationContext = self->_notificationContext;
  self->_notificationContext = v4;

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
  v3 = [(HAPCharacteristic *)self properties];
  if ((v3 & 0x80) != 0)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    return [(HAPCharacteristic *)self isWriteWithResponseImplicitlySupported]& (v3 >> 2);
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
  v4 = [(HAPCharacteristic *)self service];
  v5 = [(HAPCharacteristic *)self type];
  v6 = [v4 type];
  v7 = [v3 supportsAdditionalAuthorizationData:v5 forService:v6];

  return v7;
}

- (BOOL)mergeObject:(id)a3
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
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = [(HAPCharacteristic *)self shouldMergeObject:v6];
  if (!v7)
  {
    v12 = self;
    v13 = sub_10007FAA0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = sub_10007FAFC(v12);
      v20 = 138543618;
      v21 = v14;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{public}@Not merging with characteristic: %@", &v20, 0x16u);
    }

    goto LABEL_14;
  }

  v8 = [v6 value];
  [(HAPCharacteristic *)self setValue:v8];

  v9 = [(HAPCharacteristic *)self metadata];
  v10 = [v6 metadata];
  v11 = [v9 isEqualToCharacteristicMetadata:v10];

  if ((v11 & 1) == 0)
  {
    v15 = self;
    v16 = sub_10007FAA0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = sub_10007FAFC(v15);
      v18 = [v6 metadata];
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%{public}@Updated the characteristic metadata: %@", &v20, 0x16u);
    }

    v12 = [v6 metadata];
    [(HAPCharacteristic *)v15 setMetadata:v12];
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