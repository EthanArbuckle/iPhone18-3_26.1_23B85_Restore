@interface UWBSignalFeatures
- (BOOL)isEqual:(id)equal;
- (UWBSignalFeatures)initWithCoder:(id)coder;
- (UWBSignalFeatures)initWithUWBSignalFeatures:(id)features;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)orderedBiasEstimatorFeatutes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UWBSignalFeatures

- (UWBSignalFeatures)initWithUWBSignalFeatures:(id)features
{
  featuresCopy = features;
  v15.receiver = self;
  v15.super_class = UWBSignalFeatures;
  v5 = [(UWBSignalFeatures *)&v15 init];
  if (v5)
  {
    v6 = [BiasEstimatorFeatures alloc];
    inputFeatures = [featuresCopy inputFeatures];
    v8 = [(BiasEstimatorFeatures *)v6 initWithBiasEstimatorFeatures:inputFeatures];
    inputFeatures = v5->_inputFeatures;
    v5->_inputFeatures = v8;

    v10 = [BiasEstimatorOutputs alloc];
    outputs = [featuresCopy outputs];
    v12 = [(BiasEstimatorOutputs *)v10 initWithBiasEstimatorOutputs:outputs];
    outputs = v5->_outputs;
    v5->_outputs = v12;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithUWBSignalFeatures:self];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_inputFeatures forKey:@"inputFeatures"];
  [coderCopy encodeObject:self->_outputs forKey:@"outputProbabilities"];
}

- (UWBSignalFeatures)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputFeatures"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"outputProbabilities"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = 0;
    goto LABEL_12;
  }

  v5 = equalCopy;
  v6 = v5;
  inputFeatures = self->_inputFeatures;
  if (inputFeatures)
  {
    goto LABEL_5;
  }

  inputFeatures = [v5 inputFeatures];

  if (inputFeatures)
  {
    inputFeatures = self->_inputFeatures;
LABEL_5:
    inputFeatures2 = [v6 inputFeatures];
    v10 = inputFeatures == inputFeatures2;

    goto LABEL_6;
  }

  v10 = 1;
LABEL_6:
  outputs = self->_outputs;
  if (!outputs)
  {
    outputs = [v6 outputs];

    if (!outputs)
    {
      v14 = 1;
      goto LABEL_10;
    }

    outputs = self->_outputs;
  }

  outputs2 = [v6 outputs];
  v14 = outputs == outputs2;

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
  populateOrderedInputFeature = [(BiasEstimatorFeatures *)self->_inputFeatures populateOrderedInputFeature];
  populateOrderedBiasEstimatorOutputs = [(BiasEstimatorOutputs *)self->_outputs populateOrderedBiasEstimatorOutputs];
  v5 = [NSString stringWithFormat:@"%@, %@", populateOrderedInputFeature, populateOrderedBiasEstimatorOutputs];

  return v5;
}

@end