@interface HAPMetadataCharacteristicValue
+ (id)initWithDictionary:(id)dictionary;
- (HAPMetadataCharacteristicValue)initWithMinLength:(id)length maxLength:(id)maxLength;
- (HAPMetadataCharacteristicValue)initWithMinValue:(id)value maxValue:(id)maxValue stepValue:(id)stepValue validValues:(id)values;
- (id)description;
- (id)generateDictionary;
- (void)dump;
@end

@implementation HAPMetadataCharacteristicValue

- (HAPMetadataCharacteristicValue)initWithMinLength:(id)length maxLength:(id)maxLength
{
  lengthCopy = length;
  maxLengthCopy = maxLength;
  if (lengthCopy | maxLengthCopy)
  {
    v13.receiver = self;
    v13.super_class = HAPMetadataCharacteristicValue;
    v9 = [(HAPMetadataCharacteristicValue *)&v13 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_minLength, length);
      v11 = maxLengthCopy;
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

- (HAPMetadataCharacteristicValue)initWithMinValue:(id)value maxValue:(id)maxValue stepValue:(id)stepValue validValues:(id)values
{
  valueCopy = value;
  maxValueCopy = maxValue;
  stepValueCopy = stepValue;
  valuesCopy = values;
  if (valueCopy || maxValueCopy || stepValueCopy)
  {
    v19.receiver = self;
    v19.super_class = HAPMetadataCharacteristicValue;
    v16 = [(HAPMetadataCharacteristicValue *)&v19 init];
    v15 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_minValue, value);
      objc_storeStrong(&v15->_maxValue, maxValue);
      objc_storeStrong(&v15->_stepValue, stepValue);
      v17 = valuesCopy;
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

+ (id)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy hmf_numberForKey:@"MinLength"];
  v5 = [dictionaryCopy hmf_numberForKey:@"MaxLength"];
  if (v4 | v5)
  {
    v6 = [[HAPMetadataCharacteristicValue alloc] initWithMinLength:v4 maxLength:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [dictionaryCopy hmf_numberForKey:@"MinValue"];
  v8 = [dictionaryCopy hmf_numberForKey:@"MaxValue"];
  v9 = [dictionaryCopy hmf_numberForKey:@"StepValue"];
  v10 = [dictionaryCopy hmf_arrayForKey:@"ValidValues"];
  if (v7 || v8 || v9)
  {
    if (v6)
    {
      v11 = sub_10007FAA0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15 = sub_10007FAFC(0);
        [dictionaryCopy hmf_stringForKey:@"ShortUUID"];
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
  minLength = [(HAPMetadataCharacteristicValue *)self minLength];

  if (minLength)
  {
    minLength2 = [(HAPMetadataCharacteristicValue *)self minLength];
    [v3 setObject:minLength2 forKeyedSubscript:@"MinLength"];
  }

  maxLength = [(HAPMetadataCharacteristicValue *)self maxLength];

  if (maxLength)
  {
    maxLength2 = [(HAPMetadataCharacteristicValue *)self maxLength];
    [v3 setObject:maxLength2 forKeyedSubscript:@"MaxLength"];
  }

  minValue = [(HAPMetadataCharacteristicValue *)self minValue];

  if (minValue)
  {
    minValue2 = [(HAPMetadataCharacteristicValue *)self minValue];
    [v3 setObject:minValue2 forKeyedSubscript:@"MinValue"];
  }

  maxValue = [(HAPMetadataCharacteristicValue *)self maxValue];

  if (maxValue)
  {
    maxValue2 = [(HAPMetadataCharacteristicValue *)self maxValue];
    [v3 setObject:maxValue2 forKeyedSubscript:@"MaxValue"];
  }

  stepValue = [(HAPMetadataCharacteristicValue *)self stepValue];

  if (stepValue)
  {
    stepValue2 = [(HAPMetadataCharacteristicValue *)self stepValue];
    [v3 setObject:stepValue2 forKeyedSubscript:@"StepValue"];
  }

  validValues = [(HAPMetadataCharacteristicValue *)self validValues];
  v15 = [validValues count];

  if (v15)
  {
    validValues2 = [(HAPMetadataCharacteristicValue *)self validValues];
    [v3 setObject:validValues2 forKeyedSubscript:@"ValidValues"];
  }

  return v3;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"ValueMetadata"];
  minLength = [(HAPMetadataCharacteristicValue *)self minLength];

  if (minLength)
  {
    minLength2 = [(HAPMetadataCharacteristicValue *)self minLength];
    [v3 appendFormat:@"  minLength:%@", minLength2];
  }

  maxLength = [(HAPMetadataCharacteristicValue *)self maxLength];

  if (maxLength)
  {
    maxLength2 = [(HAPMetadataCharacteristicValue *)self maxLength];
    [v3 appendFormat:@"  maxLength:%@", maxLength2];
  }

  minValue = [(HAPMetadataCharacteristicValue *)self minValue];

  if (minValue)
  {
    minValue2 = [(HAPMetadataCharacteristicValue *)self minValue];
    [v3 appendFormat:@"  minValue:%@", minValue2];
  }

  maxValue = [(HAPMetadataCharacteristicValue *)self maxValue];

  if (maxValue)
  {
    maxValue2 = [(HAPMetadataCharacteristicValue *)self maxValue];
    [v3 appendFormat:@"  maxValue:%@", maxValue2];
  }

  stepValue = [(HAPMetadataCharacteristicValue *)self stepValue];

  if (stepValue)
  {
    stepValue2 = [(HAPMetadataCharacteristicValue *)self stepValue];
    [v3 appendFormat:@"  stepValue:%@", stepValue2];
  }

  validValues = [(HAPMetadataCharacteristicValue *)self validValues];

  if (validValues)
  {
    validValues2 = [(HAPMetadataCharacteristicValue *)self validValues];
    [v3 appendFormat:@"  validValues:%@", validValues2];
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