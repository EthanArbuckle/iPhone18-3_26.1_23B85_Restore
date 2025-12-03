@interface MCManagedSettingsSynchronizer
+ (id)sharedSynchronizer;
- (void)synchronize;
@end

@implementation MCManagedSettingsSynchronizer

+ (id)sharedSynchronizer
{
  if (qword_1001366E0 != -1)
  {
    swift_once();
  }

  v3 = qword_100136890;

  return v3;
}

- (void)synchronize
{
  selfCopy = self;
  adapter = [(MCManagedSettingsSynchronizer *)selfCopy adapter];
  sub_1000B1ACC();
}

@end