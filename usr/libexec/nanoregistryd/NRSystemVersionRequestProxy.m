@interface NRSystemVersionRequestProxy
+ (id)serverExportedInterface;
- (void)sendVersionRequestToCompanion;
@end

@implementation NRSystemVersionRequestProxy

+ (id)serverExportedInterface
{
  if (qword_1001B3B40 != -1)
  {
    sub_100104F70();
  }

  v3 = qword_1001B3B38;

  return v3;
}

- (void)sendVersionRequestToCompanion
{
  v2 = [(NRSystemVersionRequestProxy *)self registryDelegate];
  [v2 sendVersionRequestToCompanion];
}

@end