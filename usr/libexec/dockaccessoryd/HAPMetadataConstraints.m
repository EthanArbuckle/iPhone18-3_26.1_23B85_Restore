@interface HAPMetadataConstraints
- (BOOL)isEqualToMetadataConstraints:(id)a3;
- (HAPMetadataConstraints)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HAPMetadataConstraints

- (id)description
{
  v3 = [[NSMutableString alloc] initWithString:@"[ Constraints:"];
  v4 = [(HAPMetadataConstraints *)self minimumValue];

  if (v4)
  {
    v5 = [(HAPMetadataConstraints *)self minimumValue];
    [v5 doubleValue];
    [v3 appendFormat:@"%@%@%.2f", @" ", @"Min: ", v6];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(HAPMetadataConstraints *)self maximumValue];

  if (v8)
  {
    ++v7;
    if (v4)
    {
      v9 = @", ";
    }

    else
    {
      v9 = @" ";
    }

    v10 = [(HAPMetadataConstraints *)self maximumValue];
    [v10 doubleValue];
    [v3 appendFormat:@"%@%@%.2f", v9, @"Max: ", v11];
  }

  v12 = [(HAPMetadataConstraints *)self stepValue];

  if (v12)
  {
    v13 = v7 + 1;
    if (v7)
    {
      v14 = @", ";
    }

    else
    {
      v14 = @" ";
    }

    v15 = [(HAPMetadataConstraints *)self stepValue];
    [v15 doubleValue];
    [v3 appendFormat:@"%@%@%.2f", v14, @"Step: ", v16];

    v7 = v13;
  }

  v17 = [(HAPMetadataConstraints *)self minLength];

  if (v17)
  {
    v18 = v7 + 1;
    if (v7)
    {
      v19 = @", ";
    }

    else
    {
      v19 = @" ";
    }

    v20 = [(HAPMetadataConstraints *)self minLength];
    [v3 appendFormat:@"%@%@%u", v19, @"Min length: ", objc_msgSend(v20, "unsignedIntValue")];

    v7 = v18;
  }

  v21 = [(HAPMetadataConstraints *)self maxLength];

  if (v21)
  {
    if (v7)
    {
      v22 = @", ";
    }

    else
    {
      v22 = @" ";
    }

    v23 = [(HAPMetadataConstraints *)self maxLength];
    [v3 appendFormat:@"%@%@%u", v22, @"Max length: ", objc_msgSend(v23, "unsignedIntValue")];

    v7 = 1;
  }

  v24 = [(HAPMetadataConstraints *)self validValues];
  v25 = [v24 count];

  if (v25)
  {
    if (v7)
    {
      v26 = @", ";
    }

    else
    {
      v26 = @" ";
    }

    [v3 appendFormat:@"%@%@", v26, @"Valid Values: "];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v27 = [(HAPMetadataConstraints *)self validValues];
    v28 = [v27 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v34;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v34 != v30)
          {
            objc_enumerationMutation(v27);
          }

          [v3 appendFormat:@"%@, ", *(*(&v33 + 1) + 8 * i)];
        }

        v29 = [v27 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v29);
    }
  }

  [v3 appendString:@" ]"];

  return v3;
}

- (BOOL)isEqualToMetadataConstraints:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v20 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    v5 = [(HAPMetadataConstraints *)self minimumValue];
    v6 = [(HAPMetadataConstraints *)v4 minimumValue];
    v7 = sub_10007EC60(v5, v6);

    if (v7)
    {
      goto LABEL_8;
    }

    v8 = [(HAPMetadataConstraints *)self maximumValue];
    v9 = [(HAPMetadataConstraints *)v4 maximumValue];
    v10 = sub_10007EC60(v8, v9);

    if (v10)
    {
      goto LABEL_8;
    }

    v11 = [(HAPMetadataConstraints *)self stepValue];
    v12 = [(HAPMetadataConstraints *)v4 stepValue];
    v13 = sub_10007EC60(v11, v12);

    if (v13)
    {
      goto LABEL_8;
    }

    v14 = [(HAPMetadataConstraints *)self minLength];
    v15 = [(HAPMetadataConstraints *)v4 minLength];
    v16 = sub_10007EC60(v14, v15);

    if (v16 & 1) != 0 || ([(HAPMetadataConstraints *)self maxLength], v17 = objc_claimAutoreleasedReturnValue(), [(HAPMetadataConstraints *)v4 maxLength], v18 = objc_claimAutoreleasedReturnValue(), v19 = sub_10007EC60(v17, v18), v18, v17, (v19))
    {
LABEL_8:
      v20 = 0;
    }

    else
    {
      v22 = [(HAPMetadataConstraints *)self validValues];
      v23 = [(HAPMetadataConstraints *)v4 validValues];
      v24 = sub_10007ED18(v22, v23);

      v20 = v24 ^ 1;
    }
  }

  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(HAPMetadataConstraints *)self minimumValue];
    v7 = [v6 copyWithZone:a3];
    v8 = v5[1];
    v5[1] = v7;

    v9 = [(HAPMetadataConstraints *)self maximumValue];
    v10 = [v9 copyWithZone:a3];
    v11 = v5[2];
    v5[2] = v10;

    v12 = [(HAPMetadataConstraints *)self stepValue];
    v13 = [v12 copyWithZone:a3];
    v14 = v5[3];
    v5[3] = v13;

    v15 = [(HAPMetadataConstraints *)self minLength];
    v16 = [v15 copyWithZone:a3];
    v17 = v5[4];
    v5[4] = v16;

    v18 = [(HAPMetadataConstraints *)self maxLength];
    v19 = [v18 copyWithZone:a3];
    v20 = v5[5];
    v5[5] = v19;

    v21 = [(HAPMetadataConstraints *)self validValues];
    v22 = [v21 copyWithZone:a3];
    v23 = v5[6];
    v5[6] = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HAPMetadataConstraints *)self minimumValue];
  [v4 encodeObject:v5 forKey:@"CMinV"];

  v6 = [(HAPMetadataConstraints *)self maximumValue];
  [v4 encodeObject:v6 forKey:@"CMaxV"];

  v7 = [(HAPMetadataConstraints *)self stepValue];
  [v4 encodeObject:v7 forKey:@"CSV"];

  v8 = [(HAPMetadataConstraints *)self minLength];
  [v4 encodeObject:v8 forKey:@"CMinL"];

  v9 = [(HAPMetadataConstraints *)self maxLength];
  [v4 encodeObject:v9 forKey:@"CMaxL"];

  v10 = [(HAPMetadataConstraints *)self validValues];
  [v4 encodeObject:v10 forKey:@"CVV"];
}

- (HAPMetadataConstraints)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = HAPMetadataConstraints;
  v5 = [(HAPMetadataConstraints *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CMinV"];
    minimumValue = v5->_minimumValue;
    v5->_minimumValue = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CMaxV"];
    maximumValue = v5->_maximumValue;
    v5->_maximumValue = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CSV"];
    stepValue = v5->_stepValue;
    v5->_stepValue = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CMinL"];
    minLength = v5->_minLength;
    v5->_minLength = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CMaxL"];
    maxLength = v5->_maxLength;
    v5->_maxLength = v14;

    v16 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"CVV"];
    validValues = v5->_validValues;
    v5->_validValues = v16;
  }

  return v5;
}

@end