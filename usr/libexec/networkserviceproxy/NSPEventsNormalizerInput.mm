@interface NSPEventsNormalizerInput
- (NSPEventsNormalizerInput)initWithNormalizer_input:(id)normalizer_input;
- (id)featureValueForName:(id)name;
@end

@implementation NSPEventsNormalizerInput

- (NSPEventsNormalizerInput)initWithNormalizer_input:(id)normalizer_input
{
  normalizer_inputCopy = normalizer_input;
  v9.receiver = self;
  v9.super_class = NSPEventsNormalizerInput;
  v6 = [(NSPEventsNormalizerInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_normalizer_input, normalizer_input);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"normalizer_input"])
  {
    normalizer_input = [(NSPEventsNormalizerInput *)self normalizer_input];
    v5 = [MLFeatureValue featureValueWithMultiArray:normalizer_input];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end