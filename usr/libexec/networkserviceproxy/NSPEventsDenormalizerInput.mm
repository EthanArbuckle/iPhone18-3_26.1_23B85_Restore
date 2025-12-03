@interface NSPEventsDenormalizerInput
- (NSPEventsDenormalizerInput)initWithDenormalizer_input:(id)denormalizer_input;
- (id)featureValueForName:(id)name;
@end

@implementation NSPEventsDenormalizerInput

- (NSPEventsDenormalizerInput)initWithDenormalizer_input:(id)denormalizer_input
{
  denormalizer_inputCopy = denormalizer_input;
  v9.receiver = self;
  v9.super_class = NSPEventsDenormalizerInput;
  v6 = [(NSPEventsDenormalizerInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_denormalizer_input, denormalizer_input);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"denormalizer_input"])
  {
    denormalizer_input = [(NSPEventsDenormalizerInput *)self denormalizer_input];
    v5 = [MLFeatureValue featureValueWithMultiArray:denormalizer_input];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end