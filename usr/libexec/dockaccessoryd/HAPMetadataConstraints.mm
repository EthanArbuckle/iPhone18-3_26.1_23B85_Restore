@interface HAPMetadataConstraints
- (BOOL)isEqualToMetadataConstraints:(id)constraints;
- (HAPMetadataConstraints)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HAPMetadataConstraints

- (id)description
{
  v3 = [[NSMutableString alloc] initWithString:@"[ Constraints:"];
  minimumValue = [(HAPMetadataConstraints *)self minimumValue];

  if (minimumValue)
  {
    minimumValue2 = [(HAPMetadataConstraints *)self minimumValue];
    [minimumValue2 doubleValue];
    [v3 appendFormat:@"%@%@%.2f", @" ", @"Min: ", v6];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  maximumValue = [(HAPMetadataConstraints *)self maximumValue];

  if (maximumValue)
  {
    ++v7;
    if (minimumValue)
    {
      v9 = @", ";
    }

    else
    {
      v9 = @" ";
    }

    maximumValue2 = [(HAPMetadataConstraints *)self maximumValue];
    [maximumValue2 doubleValue];
    [v3 appendFormat:@"%@%@%.2f", v9, @"Max: ", v11];
  }

  stepValue = [(HAPMetadataConstraints *)self stepValue];

  if (stepValue)
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

    stepValue2 = [(HAPMetadataConstraints *)self stepValue];
    [stepValue2 doubleValue];
    [v3 appendFormat:@"%@%@%.2f", v14, @"Step: ", v16];

    v7 = v13;
  }

  minLength = [(HAPMetadataConstraints *)self minLength];

  if (minLength)
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

    minLength2 = [(HAPMetadataConstraints *)self minLength];
    [v3 appendFormat:@"%@%@%u", v19, @"Min length: ", objc_msgSend(minLength2, "unsignedIntValue")];

    v7 = v18;
  }

  maxLength = [(HAPMetadataConstraints *)self maxLength];

  if (maxLength)
  {
    if (v7)
    {
      v22 = @", ";
    }

    else
    {
      v22 = @" ";
    }

    maxLength2 = [(HAPMetadataConstraints *)self maxLength];
    [v3 appendFormat:@"%@%@%u", v22, @"Max length: ", objc_msgSend(maxLength2, "unsignedIntValue")];

    v7 = 1;
  }

  validValues = [(HAPMetadataConstraints *)self validValues];
  v25 = [validValues count];

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
    validValues2 = [(HAPMetadataConstraints *)self validValues];
    v28 = [validValues2 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
            objc_enumerationMutation(validValues2);
          }

          [v3 appendFormat:@"%@, ", *(*(&v33 + 1) + 8 * i)];
        }

        v29 = [validValues2 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v29);
    }
  }

  [v3 appendString:@" ]"];

  return v3;
}

- (BOOL)isEqualToMetadataConstraints:(id)constraints
{
  constraintsCopy = constraints;
  if (self == constraintsCopy)
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

    minimumValue = [(HAPMetadataConstraints *)self minimumValue];
    minimumValue2 = [(HAPMetadataConstraints *)constraintsCopy minimumValue];
    v7 = sub_10007EC60(minimumValue, minimumValue2);

    if (v7)
    {
      goto LABEL_8;
    }

    maximumValue = [(HAPMetadataConstraints *)self maximumValue];
    maximumValue2 = [(HAPMetadataConstraints *)constraintsCopy maximumValue];
    v10 = sub_10007EC60(maximumValue, maximumValue2);

    if (v10)
    {
      goto LABEL_8;
    }

    stepValue = [(HAPMetadataConstraints *)self stepValue];
    stepValue2 = [(HAPMetadataConstraints *)constraintsCopy stepValue];
    v13 = sub_10007EC60(stepValue, stepValue2);

    if (v13)
    {
      goto LABEL_8;
    }

    minLength = [(HAPMetadataConstraints *)self minLength];
    minLength2 = [(HAPMetadataConstraints *)constraintsCopy minLength];
    v16 = sub_10007EC60(minLength, minLength2);

    if (v16 & 1) != 0 || ([(HAPMetadataConstraints *)self maxLength], v17 = objc_claimAutoreleasedReturnValue(), [(HAPMetadataConstraints *)constraintsCopy maxLength], v18 = objc_claimAutoreleasedReturnValue(), v19 = sub_10007EC60(v17, v18), v18, v17, (v19))
    {
LABEL_8:
      v20 = 0;
    }

    else
    {
      validValues = [(HAPMetadataConstraints *)self validValues];
      validValues2 = [(HAPMetadataConstraints *)constraintsCopy validValues];
      v24 = sub_10007ED18(validValues, validValues2);

      v20 = v24 ^ 1;
    }
  }

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    minimumValue = [(HAPMetadataConstraints *)self minimumValue];
    v7 = [minimumValue copyWithZone:zone];
    v8 = v5[1];
    v5[1] = v7;

    maximumValue = [(HAPMetadataConstraints *)self maximumValue];
    v10 = [maximumValue copyWithZone:zone];
    v11 = v5[2];
    v5[2] = v10;

    stepValue = [(HAPMetadataConstraints *)self stepValue];
    v13 = [stepValue copyWithZone:zone];
    v14 = v5[3];
    v5[3] = v13;

    minLength = [(HAPMetadataConstraints *)self minLength];
    v16 = [minLength copyWithZone:zone];
    v17 = v5[4];
    v5[4] = v16;

    maxLength = [(HAPMetadataConstraints *)self maxLength];
    v19 = [maxLength copyWithZone:zone];
    v20 = v5[5];
    v5[5] = v19;

    validValues = [(HAPMetadataConstraints *)self validValues];
    v22 = [validValues copyWithZone:zone];
    v23 = v5[6];
    v5[6] = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  minimumValue = [(HAPMetadataConstraints *)self minimumValue];
  [coderCopy encodeObject:minimumValue forKey:@"CMinV"];

  maximumValue = [(HAPMetadataConstraints *)self maximumValue];
  [coderCopy encodeObject:maximumValue forKey:@"CMaxV"];

  stepValue = [(HAPMetadataConstraints *)self stepValue];
  [coderCopy encodeObject:stepValue forKey:@"CSV"];

  minLength = [(HAPMetadataConstraints *)self minLength];
  [coderCopy encodeObject:minLength forKey:@"CMinL"];

  maxLength = [(HAPMetadataConstraints *)self maxLength];
  [coderCopy encodeObject:maxLength forKey:@"CMaxL"];

  validValues = [(HAPMetadataConstraints *)self validValues];
  [coderCopy encodeObject:validValues forKey:@"CVV"];
}

- (HAPMetadataConstraints)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = HAPMetadataConstraints;
  v5 = [(HAPMetadataConstraints *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CMinV"];
    minimumValue = v5->_minimumValue;
    v5->_minimumValue = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CMaxV"];
    maximumValue = v5->_maximumValue;
    v5->_maximumValue = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSV"];
    stepValue = v5->_stepValue;
    v5->_stepValue = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CMinL"];
    minLength = v5->_minLength;
    v5->_minLength = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CMaxL"];
    maxLength = v5->_maxLength;
    v5->_maxLength = v14;

    v16 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"CVV"];
    validValues = v5->_validValues;
    v5->_validValues = v16;
  }

  return v5;
}

@end