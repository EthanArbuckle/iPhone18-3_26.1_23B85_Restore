@interface RMDummyDataProviderConfiguration
- (RMDummyDataProviderConfiguration)initWithUniqueIdentifier:(id)a3 updateInterval:(unint64_t)a4;
@end

@implementation RMDummyDataProviderConfiguration

- (RMDummyDataProviderConfiguration)initWithUniqueIdentifier:(id)a3 updateInterval:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = RMDummyDataProviderConfiguration;
  v7 = [(RMDummyDataProviderConfiguration *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(RMDummyDataProviderConfiguration *)v7 setIdentifier:v6];
    [(RMDummyDataProviderConfiguration *)v8 setIntervalInNanoSeconds:a4];
  }

  return v8;
}

@end