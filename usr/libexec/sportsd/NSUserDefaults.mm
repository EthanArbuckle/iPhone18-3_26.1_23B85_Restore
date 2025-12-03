@interface NSUserDefaults
- (BOOL)filteringEnabled;
@end

@implementation NSUserDefaults

- (BOOL)filteringEnabled
{
  selfCopy = self;
  v3 = sub_1000842C0();

  return v3 & 1;
}

@end