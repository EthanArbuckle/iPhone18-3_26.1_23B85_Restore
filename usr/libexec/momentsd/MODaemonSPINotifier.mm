@interface MODaemonSPINotifier
- (MODaemonSPINotifier)initWithName:(id)name;
@end

@implementation MODaemonSPINotifier

- (MODaemonSPINotifier)initWithName:(id)name
{
  v7.receiver = self;
  v7.super_class = MODaemonSPINotifier;
  v3 = [(MONotifier *)&v7 initWithName:name];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end