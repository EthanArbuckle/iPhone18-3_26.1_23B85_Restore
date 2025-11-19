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
  v3 = self;
  v2 = [(MCManagedSettingsSynchronizer *)v3 adapter];
  sub_1000B1ACC();
}

@end