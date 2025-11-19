@interface NISystemEventNotifier
- (NISystemEventNotifier)initWithParentSession:(id)a3;
@end

@implementation NISystemEventNotifier

- (NISystemEventNotifier)initWithParentSession:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NISystemEventNotifier;
  v5 = [(NISystemEventNotifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->parentSession, v4);
  }

  return v6;
}

@end