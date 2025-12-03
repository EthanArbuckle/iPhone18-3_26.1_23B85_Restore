@interface HAPCharacteristicMetadata
- (BOOL)isEqualToCharacteristicMetadata:(id)metadata;
- (HAPCharacteristicMetadata)initWithCoder:(id)coder;
- (HAPCharacteristicMetadata)initWithConstraints:(id)constraints description:(id)description format:(id)format units:(id)units;
- (id)_generateValidConstraints:(id)constraints;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HAPCharacteristicMetadata

- (HAPCharacteristicMetadata)initWithConstraints:(id)constraints description:(id)description format:(id)format units:(id)units
{
  constraintsCopy = constraints;
  descriptionCopy = description;
  formatCopy = format;
  unitsCopy = units;
  v14 = unitsCopy;
  if (!constraintsCopy && !descriptionCopy && !formatCopy && !unitsCopy)
  {
LABEL_12:
    selfCopy2 = 0;
    goto LABEL_16;
  }

  maxLength = [constraintsCopy maxLength];
  if (maxLength)
  {
    v16 = maxLength;
    [constraintsCopy maxLength];
    formatCopy2 = format;
    v17 = constraintsCopy;
    selfCopy = self;
    v19 = formatCopy;
    v20 = v14;
    v22 = v21 = descriptionCopy;
    unsignedIntValue = [v22 unsignedIntValue];

    descriptionCopy = v21;
    v14 = v20;
    formatCopy = v19;
    self = selfCopy;
    constraintsCopy = v17;
    format = formatCopy2;

    if (unsignedIntValue >= 0x101)
    {
      v24 = sub_10007FAA0();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = sub_10007FAFC(0);
        *buf = 138543362;
        v37 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}@### Value of maxLength exceeds maximum allowed value", buf, 0xCu);
      }

      v26 = sub_10007FAA0();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = sub_10007FAFC(0);
        *buf = 138543362;
        v37 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}@### Unable to initialize metadata because of invalid arguments", buf, 0xCu);
      }

      goto LABEL_12;
    }
  }

  v35.receiver = self;
  v35.super_class = HAPCharacteristicMetadata;
  v29 = [(HAPCharacteristicMetadata *)&v35 init];
  v30 = v29;
  if (v29)
  {
    objc_storeStrong(&v29->_manufacturerDescription, description);
    objc_storeStrong(&v30->_format, format);
    objc_storeStrong(&v30->_units, units);
    v31 = [(HAPCharacteristicMetadata *)v30 _generateValidConstraints:constraintsCopy];
    constraints = v30->_constraints;
    v30->_constraints = v31;
  }

  self = v30;
  selfCopy2 = self;
LABEL_16:

  return selfCopy2;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  v10.receiver = self;
  v10.super_class = HAPCharacteristicMetadata;
  v4 = [(HAPCharacteristicMetadata *)&v10 description];
  [v3 appendFormat:@"%@  ", v4];

  constraints = [(HAPCharacteristicMetadata *)self constraints];
  [v3 appendFormat:@"Constraints: %@  ", constraints];

  manufacturerDescription = [(HAPCharacteristicMetadata *)self manufacturerDescription];
  [v3 appendFormat:@"Description: %@  ", manufacturerDescription];

  format = [(HAPCharacteristicMetadata *)self format];
  [v3 appendFormat:@"Format: %@  ", format];

  units = [(HAPCharacteristicMetadata *)self units];
  [v3 appendFormat:@"Units: %@  ", units];

  return v3;
}

- (id)_generateValidConstraints:(id)constraints
{
  constraintsCopy = constraints;
  format = [(HAPCharacteristicMetadata *)self format];
  v6 = [format isEqualToString:@"string"];

  v7 = constraintsCopy;
  if (v6)
  {
    v7 = constraintsCopy;
    if (!constraintsCopy)
    {
      v7 = objc_alloc_init(HAPMetadataConstraints);
    }

    maxLength = [(HAPMetadataConstraints *)v7 maxLength];

    if (!maxLength)
    {
      v9 = [NSNumber numberWithUnsignedInteger:64];
      [(HAPMetadataConstraints *)v7 setMaxLength:v9];
    }
  }

  minimumValue = [(HAPMetadataConstraints *)v7 minimumValue];
  if (minimumValue)
  {
    goto LABEL_11;
  }

  minimumValue = [(HAPMetadataConstraints *)v7 maximumValue];
  if (minimumValue || ([(HAPMetadataConstraints *)v7 stepValue], (minimumValue = objc_claimAutoreleasedReturnValue()) != 0) || ([(HAPMetadataConstraints *)v7 minLength], (minimumValue = objc_claimAutoreleasedReturnValue()) != 0) || ([(HAPMetadataConstraints *)v7 maxLength], (minimumValue = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_11:

LABEL_12:
    v11 = v7;
    goto LABEL_13;
  }

  validValues = [(HAPMetadataConstraints *)v7 validValues];
  v14 = [validValues count];

  if (v14)
  {
    goto LABEL_12;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (BOOL)isEqualToCharacteristicMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (self == metadataCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    manufacturerDescription = [(HAPCharacteristicMetadata *)self manufacturerDescription];
    manufacturerDescription2 = [(HAPCharacteristicMetadata *)metadataCopy manufacturerDescription];
    v7 = sub_10007EC2C(manufacturerDescription, manufacturerDescription2);

    if (v7)
    {
      goto LABEL_6;
    }

    format = [(HAPCharacteristicMetadata *)self format];
    format2 = [(HAPCharacteristicMetadata *)metadataCopy format];
    v10 = sub_10007EC2C(format, format2);

    if (v10 & 1) != 0 || ([(HAPCharacteristicMetadata *)self units], v11 = objc_claimAutoreleasedReturnValue(), [(HAPCharacteristicMetadata *)metadataCopy units], v12 = objc_claimAutoreleasedReturnValue(), v13 = sub_10007EC2C(v11, v12), v12, v11, (v13))
    {
LABEL_6:
      v14 = 0;
    }

    else
    {
      constraints = [(HAPCharacteristicMetadata *)self constraints];
      constraints2 = [(HAPCharacteristicMetadata *)metadataCopy constraints];
      if (constraints == constraints2)
      {
        v14 = 1;
      }

      else
      {
        constraints3 = [(HAPCharacteristicMetadata *)self constraints];
        constraints4 = [(HAPCharacteristicMetadata *)metadataCopy constraints];
        v14 = [constraints3 isEqualToMetadataConstraints:constraints4];
      }
    }
  }

  return v14 & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    constraints = [(HAPCharacteristicMetadata *)self constraints];
    v7 = [constraints copyWithZone:zone];
    v8 = v5[1];
    v5[1] = v7;

    manufacturerDescription = [(HAPCharacteristicMetadata *)self manufacturerDescription];
    v10 = [manufacturerDescription copyWithZone:zone];
    v11 = v5[2];
    v5[2] = v10;

    format = [(HAPCharacteristicMetadata *)self format];
    v13 = [format copyWithZone:zone];
    v14 = v5[3];
    v5[3] = v13;

    units = [(HAPCharacteristicMetadata *)self units];
    v16 = [units copyWithZone:zone];
    v17 = v5[4];
    v5[4] = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  constraints = [(HAPCharacteristicMetadata *)self constraints];
  [coderCopy encodeObject:constraints forKey:@"MC"];

  manufacturerDescription = [(HAPCharacteristicMetadata *)self manufacturerDescription];
  [coderCopy encodeObject:manufacturerDescription forKey:@"MD"];

  format = [(HAPCharacteristicMetadata *)self format];
  [coderCopy encodeObject:format forKey:@"MF"];

  units = [(HAPCharacteristicMetadata *)self units];
  [coderCopy encodeObject:units forKey:@"MU"];
}

- (HAPCharacteristicMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HAPCharacteristicMetadata;
  v5 = [(HAPCharacteristicMetadata *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MC"];
    constraints = v5->_constraints;
    v5->_constraints = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MD"];
    manufacturerDescription = v5->_manufacturerDescription;
    v5->_manufacturerDescription = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MF"];
    format = v5->_format;
    v5->_format = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MU"];
    units = v5->_units;
    v5->_units = v12;
  }

  return v5;
}

@end