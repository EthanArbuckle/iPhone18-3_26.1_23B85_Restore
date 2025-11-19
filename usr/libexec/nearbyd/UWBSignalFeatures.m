@interface UWBSignalFeatures
- (BOOL)isEqual:(id)a3;
- (UWBSignalFeatures)initWithCoder:(id)a3;
- (UWBSignalFeatures)initWithUWBSignalFeatures:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)orderedBiasEstimatorFeatutes;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UWBSignalFeatures

- (UWBSignalFeatures)initWithUWBSignalFeatures:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = UWBSignalFeatures;
  v5 = [(UWBSignalFeatures *)&v15 init];
  if (v5)
  {
    v6 = [BiasEstimatorFeatures alloc];
    v7 = [v4 inputFeatures];
    v8 = [(BiasEstimatorFeatures *)v6 initWithBiasEstimatorFeatures:v7];
    inputFeatures = v5->_inputFeatures;
    v5->_inputFeatures = v8;

    v10 = [BiasEstimatorOutputs alloc];
    v11 = [v4 outputs];
    v12 = [(BiasEstimatorOutputs *)v10 initWithBiasEstimatorOutputs:v11];
    outputs = v5->_outputs;
    v5->_outputs = v12;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithUWBSignalFeatures:self];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_inputFeatures forKey:@"inputFeatures"];
  [v4 encodeObject:self->_outputs forKey:@"outputProbabilities"];
}

- (UWBSignalFeatures)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputFeatures"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"outputProbabilities"];
  v10.receiver = self;
  v10.super_class = UWBSignalFeatures;
  v7 = [(UWBSignalFeatures *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(UWBSignalFeatures *)v7 setInputFeatures:v5];
    [(UWBSignalFeatures *)v8 setOutputs:v6];
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = 0;
    goto LABEL_12;
  }

  v5 = v4;
  v6 = v5;
  inputFeatures = self->_inputFeatures;
  if (inputFeatures)
  {
    goto LABEL_5;
  }

  v8 = [v5 inputFeatures];

  if (v8)
  {
    inputFeatures = self->_inputFeatures;
LABEL_5:
    v9 = [v6 inputFeatures];
    v10 = inputFeatures == v9;

    goto LABEL_6;
  }

  v10 = 1;
LABEL_6:
  outputs = self->_outputs;
  if (!outputs)
  {
    v12 = [v6 outputs];

    if (!v12)
    {
      v14 = 1;
      goto LABEL_10;
    }

    outputs = self->_outputs;
  }

  v13 = [v6 outputs];
  v14 = outputs == v13;

LABEL_10:
  v15 = v10 && v14;

LABEL_12:
  return v15;
}

- (id)description
{
  v3 = [(BiasEstimatorFeatures *)self->_inputFeatures description];
  v4 = [(BiasEstimatorOutputs *)self->_outputs description];
  v5 = [NSString stringWithFormat:@"%@, %@", v3, v4];

  return v5;
}

- (id)orderedBiasEstimatorFeatutes
{
  v3 = [(BiasEstimatorFeatures *)self->_inputFeatures populateOrderedInputFeature];
  v4 = [(BiasEstimatorOutputs *)self->_outputs populateOrderedBiasEstimatorOutputs];
  v5 = [NSString stringWithFormat:@"%@, %@", v3, v4];

  return v5;
}

@end