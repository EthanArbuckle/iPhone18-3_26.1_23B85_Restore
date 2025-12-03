@interface NISystemEventNotifier
- (NISystemEventNotifier)initWithParentSession:(id)session;
@end

@implementation NISystemEventNotifier

- (NISystemEventNotifier)initWithParentSession:(id)session
{
  sessionCopy = session;
  v8.receiver = self;
  v8.super_class = NISystemEventNotifier;
  v5 = [(NISystemEventNotifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->parentSession, sessionCopy);
  }

  return v6;
}

@end