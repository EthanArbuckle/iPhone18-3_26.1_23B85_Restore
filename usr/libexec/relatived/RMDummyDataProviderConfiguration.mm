@interface RMDummyDataProviderConfiguration
- (RMDummyDataProviderConfiguration)initWithUniqueIdentifier:(id)identifier updateInterval:(unint64_t)interval;
@end

@implementation RMDummyDataProviderConfiguration

- (RMDummyDataProviderConfiguration)initWithUniqueIdentifier:(id)identifier updateInterval:(unint64_t)interval
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = RMDummyDataProviderConfiguration;
  v7 = [(RMDummyDataProviderConfiguration *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(RMDummyDataProviderConfiguration *)v7 setIdentifier:identifierCopy];
    [(RMDummyDataProviderConfiguration *)v8 setIntervalInNanoSeconds:interval];
  }

  return v8;
}

@end