@interface HAPCharacteristicMetadata
- (BOOL)isEqualToCharacteristicMetadata:(id)a3;
- (HAPCharacteristicMetadata)initWithCoder:(id)a3;
- (HAPCharacteristicMetadata)initWithConstraints:(id)a3 description:(id)a4 format:(id)a5 units:(id)a6;
- (id)_generateValidConstraints:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HAPCharacteristicMetadata

- (HAPCharacteristicMetadata)initWithConstraints:(id)a3 description:(id)a4 format:(id)a5 units:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (!v10 && !v11 && !v12 && !v13)
  {
LABEL_12:
    v28 = 0;
    goto LABEL_16;
  }

  v15 = [v10 maxLength];
  if (v15)
  {
    v16 = v15;
    [v10 maxLength];
    v34 = a5;
    v17 = v10;
    v18 = self;
    v19 = v12;
    v20 = v14;
    v22 = v21 = v11;
    v23 = [v22 unsignedIntValue];

    v11 = v21;
    v14 = v20;
    v12 = v19;
    self = v18;
    v10 = v17;
    a5 = v34;

    if (v23 >= 0x101)
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
    objc_storeStrong(&v29->_manufacturerDescription, a4);
    objc_storeStrong(&v30->_format, a5);
    objc_storeStrong(&v30->_units, a6);
    v31 = [(HAPCharacteristicMetadata *)v30 _generateValidConstraints:v10];
    constraints = v30->_constraints;
    v30->_constraints = v31;
  }

  self = v30;
  v28 = self;
LABEL_16:

  return v28;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  v10.receiver = self;
  v10.super_class = HAPCharacteristicMetadata;
  v4 = [(HAPCharacteristicMetadata *)&v10 description];
  [v3 appendFormat:@"%@  ", v4];

  v5 = [(HAPCharacteristicMetadata *)self constraints];
  [v3 appendFormat:@"Constraints: %@  ", v5];

  v6 = [(HAPCharacteristicMetadata *)self manufacturerDescription];
  [v3 appendFormat:@"Description: %@  ", v6];

  v7 = [(HAPCharacteristicMetadata *)self format];
  [v3 appendFormat:@"Format: %@  ", v7];

  v8 = [(HAPCharacteristicMetadata *)self units];
  [v3 appendFormat:@"Units: %@  ", v8];

  return v3;
}

- (id)_generateValidConstraints:(id)a3
{
  v4 = a3;
  v5 = [(HAPCharacteristicMetadata *)self format];
  v6 = [v5 isEqualToString:@"string"];

  v7 = v4;
  if (v6)
  {
    v7 = v4;
    if (!v4)
    {
      v7 = objc_alloc_init(HAPMetadataConstraints);
    }

    v8 = [(HAPMetadataConstraints *)v7 maxLength];

    if (!v8)
    {
      v9 = [NSNumber numberWithUnsignedInteger:64];
      [(HAPMetadataConstraints *)v7 setMaxLength:v9];
    }
  }

  v10 = [(HAPMetadataConstraints *)v7 minimumValue];
  if (v10)
  {
    goto LABEL_11;
  }

  v10 = [(HAPMetadataConstraints *)v7 maximumValue];
  if (v10 || ([(HAPMetadataConstraints *)v7 stepValue], (v10 = objc_claimAutoreleasedReturnValue()) != 0) || ([(HAPMetadataConstraints *)v7 minLength], (v10 = objc_claimAutoreleasedReturnValue()) != 0) || ([(HAPMetadataConstraints *)v7 maxLength], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_11:

LABEL_12:
    v11 = v7;
    goto LABEL_13;
  }

  v13 = [(HAPMetadataConstraints *)v7 validValues];
  v14 = [v13 count];

  if (v14)
  {
    goto LABEL_12;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (BOOL)isEqualToCharacteristicMetadata:(id)a3
{
  v4 = a3;
  if (self == v4)
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

    v5 = [(HAPCharacteristicMetadata *)self manufacturerDescription];
    v6 = [(HAPCharacteristicMetadata *)v4 manufacturerDescription];
    v7 = sub_10007EC2C(v5, v6);

    if (v7)
    {
      goto LABEL_6;
    }

    v8 = [(HAPCharacteristicMetadata *)self format];
    v9 = [(HAPCharacteristicMetadata *)v4 format];
    v10 = sub_10007EC2C(v8, v9);

    if (v10 & 1) != 0 || ([(HAPCharacteristicMetadata *)self units], v11 = objc_claimAutoreleasedReturnValue(), [(HAPCharacteristicMetadata *)v4 units], v12 = objc_claimAutoreleasedReturnValue(), v13 = sub_10007EC2C(v11, v12), v12, v11, (v13))
    {
LABEL_6:
      v14 = 0;
    }

    else
    {
      v16 = [(HAPCharacteristicMetadata *)self constraints];
      v17 = [(HAPCharacteristicMetadata *)v4 constraints];
      if (v16 == v17)
      {
        v14 = 1;
      }

      else
      {
        v18 = [(HAPCharacteristicMetadata *)self constraints];
        v19 = [(HAPCharacteristicMetadata *)v4 constraints];
        v14 = [v18 isEqualToMetadataConstraints:v19];
      }
    }
  }

  return v14 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(HAPCharacteristicMetadata *)self constraints];
    v7 = [v6 copyWithZone:a3];
    v8 = v5[1];
    v5[1] = v7;

    v9 = [(HAPCharacteristicMetadata *)self manufacturerDescription];
    v10 = [v9 copyWithZone:a3];
    v11 = v5[2];
    v5[2] = v10;

    v12 = [(HAPCharacteristicMetadata *)self format];
    v13 = [v12 copyWithZone:a3];
    v14 = v5[3];
    v5[3] = v13;

    v15 = [(HAPCharacteristicMetadata *)self units];
    v16 = [v15 copyWithZone:a3];
    v17 = v5[4];
    v5[4] = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HAPCharacteristicMetadata *)self constraints];
  [v4 encodeObject:v5 forKey:@"MC"];

  v6 = [(HAPCharacteristicMetadata *)self manufacturerDescription];
  [v4 encodeObject:v6 forKey:@"MD"];

  v7 = [(HAPCharacteristicMetadata *)self format];
  [v4 encodeObject:v7 forKey:@"MF"];

  v8 = [(HAPCharacteristicMetadata *)self units];
  [v4 encodeObject:v8 forKey:@"MU"];
}

- (HAPCharacteristicMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HAPCharacteristicMetadata;
  v5 = [(HAPCharacteristicMetadata *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MC"];
    constraints = v5->_constraints;
    v5->_constraints = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MD"];
    manufacturerDescription = v5->_manufacturerDescription;
    v5->_manufacturerDescription = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MF"];
    format = v5->_format;
    v5->_format = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MU"];
    units = v5->_units;
    v5->_units = v12;
  }

  return v5;
}

@end