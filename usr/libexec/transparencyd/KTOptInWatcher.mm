@interface KTOptInWatcher
- (KTOptInWatcher)initWithTargetState:(unint64_t)state;
@end

@implementation KTOptInWatcher

- (KTOptInWatcher)initWithTargetState:(unint64_t)state
{
  v8.receiver = self;
  v8.super_class = KTOptInWatcher;
  v4 = [(KTOptInWatcher *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(KTCondition);
    [(KTOptInWatcher *)v4 setTargetResolved:v5];

    [(KTOptInWatcher *)v4 setTargetState:state];
    v6 = v4;
  }

  return v4;
}

@end