@interface NSPEventsNormalizerInput
- (NSPEventsNormalizerInput)initWithNormalizer_input:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation NSPEventsNormalizerInput

- (NSPEventsNormalizerInput)initWithNormalizer_input:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NSPEventsNormalizerInput;
  v6 = [(NSPEventsNormalizerInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_normalizer_input, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"normalizer_input"])
  {
    v4 = [(NSPEventsNormalizerInput *)self normalizer_input];
    v5 = [MLFeatureValue featureValueWithMultiArray:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end