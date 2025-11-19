@interface NSPEventsDenormalizerInput
- (NSPEventsDenormalizerInput)initWithDenormalizer_input:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation NSPEventsDenormalizerInput

- (NSPEventsDenormalizerInput)initWithDenormalizer_input:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NSPEventsDenormalizerInput;
  v6 = [(NSPEventsDenormalizerInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_denormalizer_input, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"denormalizer_input"])
  {
    v4 = [(NSPEventsDenormalizerInput *)self denormalizer_input];
    v5 = [MLFeatureValue featureValueWithMultiArray:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end