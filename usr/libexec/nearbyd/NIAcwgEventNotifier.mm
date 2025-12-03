@interface NIAcwgEventNotifier
- (NIAcwgEventNotifier)initWithParentSession:(id)session;
@end

@implementation NIAcwgEventNotifier

- (NIAcwgEventNotifier)initWithParentSession:(id)session
{
  sessionCopy = session;
  v8.receiver = self;
  v8.super_class = NIAcwgEventNotifier;
  v5 = [(NIAcwgEventNotifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->parentSession, sessionCopy);
  }

  return v6;
}

@end