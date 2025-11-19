@interface MODaemonSPINotifier
- (MODaemonSPINotifier)initWithName:(id)a3;
@end

@implementation MODaemonSPINotifier

- (MODaemonSPINotifier)initWithName:(id)a3
{
  v7.receiver = self;
  v7.super_class = MODaemonSPINotifier;
  v3 = [(MONotifier *)&v7 initWithName:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end