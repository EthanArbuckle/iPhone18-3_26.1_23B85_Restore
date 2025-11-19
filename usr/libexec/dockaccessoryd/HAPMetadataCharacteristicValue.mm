@interface HAPMetadataCharacteristicValue
+ (id)initWithDictionary:(id)a3;
- (HAPMetadataCharacteristicValue)initWithMinLength:(id)a3 maxLength:(id)a4;
- (HAPMetadataCharacteristicValue)initWithMinValue:(id)a3 maxValue:(id)a4 stepValue:(id)a5 validValues:(id)a6;
- (id)description;
- (id)generateDictionary;
- (void)dump;
@end

@implementation HAPMetadataCharacteristicValue

- (HAPMetadataCharacteristicValue)initWithMinLength:(id)a3 maxLength:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7 | v8)
  {
    v13.receiver = self;
    v13.super_class = HAPMetadataCharacteristicValue;
    v9 = [(HAPMetadataCharacteristicValue *)&v13 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_minLength, a3);
      v11 = v8;
      self = v10->_maxLength;
      v10->_maxLength = v11;
    }

    else
    {
      self = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (HAPMetadataCharacteristicValue)initWithMinValue:(id)a3 maxValue:(id)a4 stepValue:(id)a5 validValues:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11 || v12 || v13)
  {
    v19.receiver = self;
    v19.super_class = HAPMetadataCharacteristicValue;
    v16 = [(HAPMetadataCharacteristicValue *)&v19 init];
    v15 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_minValue, a3);
      objc_storeStrong(&v15->_maxValue, a4);
      objc_storeStrong(&v15->_stepValue, a5);
      v17 = v14;
      self = v15->_validValues;
      v15->_validValues = v17;
    }

    else
    {
      self = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)initWithDictionary:(id)a3
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

- (id)generateDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(HAPMetadataCharacteristicValue *)self minLength];

  if (v4)
  {
    v5 = [(HAPMetadataCharacteristicValue *)self minLength];
    [v3 setObject:v5 forKeyedSubscript:@"MinLength"];
  }

  v6 = [(HAPMetadataCharacteristicValue *)self maxLength];

  if (v6)
  {
    v7 = [(HAPMetadataCharacteristicValue *)self maxLength];
    [v3 setObject:v7 forKeyedSubscript:@"MaxLength"];
  }

  v8 = [(HAPMetadataCharacteristicValue *)self minValue];

  if (v8)
  {
    v9 = [(HAPMetadataCharacteristicValue *)self minValue];
    [v3 setObject:v9 forKeyedSubscript:@"MinValue"];
  }

  v10 = [(HAPMetadataCharacteristicValue *)self maxValue];

  if (v10)
  {
    v11 = [(HAPMetadataCharacteristicValue *)self maxValue];
    [v3 setObject:v11 forKeyedSubscript:@"MaxValue"];
  }

  v12 = [(HAPMetadataCharacteristicValue *)self stepValue];

  if (v12)
  {
    v13 = [(HAPMetadataCharacteristicValue *)self stepValue];
    [v3 setObject:v13 forKeyedSubscript:@"StepValue"];
  }

  v14 = [(HAPMetadataCharacteristicValue *)self validValues];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [(HAPMetadataCharacteristicValue *)self validValues];
    [v3 setObject:v16 forKeyedSubscript:@"ValidValues"];
  }

  return v3;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"ValueMetadata"];
  v4 = [(HAPMetadataCharacteristicValue *)self minLength];

  if (v4)
  {
    v5 = [(HAPMetadataCharacteristicValue *)self minLength];
    [v3 appendFormat:@"  minLength:%@", v5];
  }

  v6 = [(HAPMetadataCharacteristicValue *)self maxLength];

  if (v6)
  {
    v7 = [(HAPMetadataCharacteristicValue *)self maxLength];
    [v3 appendFormat:@"  maxLength:%@", v7];
  }

  v8 = [(HAPMetadataCharacteristicValue *)self minValue];

  if (v8)
  {
    v9 = [(HAPMetadataCharacteristicValue *)self minValue];
    [v3 appendFormat:@"  minValue:%@", v9];
  }

  v10 = [(HAPMetadataCharacteristicValue *)self maxValue];

  if (v10)
  {
    v11 = [(HAPMetadataCharacteristicValue *)self maxValue];
    [v3 appendFormat:@"  maxValue:%@", v11];
  }

  v12 = [(HAPMetadataCharacteristicValue *)self stepValue];

  if (v12)
  {
    v13 = [(HAPMetadataCharacteristicValue *)self stepValue];
    [v3 appendFormat:@"  stepValue:%@", v13];
  }

  v14 = [(HAPMetadataCharacteristicValue *)self validValues];

  if (v14)
  {
    v15 = [(HAPMetadataCharacteristicValue *)self validValues];
    [v3 appendFormat:@"  validValues:%@", v15];
  }

  return v3;
}

- (void)dump
{
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(0);
    v5 = [(HAPMetadataCharacteristicValue *)self description];
    v6 = 138543618;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@%@", &v6, 0x16u);
  }
}

@end