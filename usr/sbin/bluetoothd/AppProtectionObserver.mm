@interface AppProtectionObserver
- (AppProtectionObserver)init;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)dealloc;
@end

@implementation AppProtectionObserver

- (AppProtectionObserver)init
{
  v8.receiver = self;
  v8.super_class = AppProtectionObserver;
  v2 = [(AppProtectionObserver *)&v8 init];
  if (v2 && sub_1005FCE30())
  {
    v3 = +[APSubject subjectMonitorRegistry];
    v4 = [v3 addMonitor:v2 subjectMask:1];
    subscription = v2->_subscription;
    v2->_subscription = v4;

    v6 = [APApplication applicationWithBundleIdentifier:@"com.apple.MobileSMS"];
    -[AppProtectionObserver setMessagesAppLockState:](v2, "setMessagesAppLockState:", [v6 isLocked]);
  }

  return v2;
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  subscription = [APApplication applicationWithBundleIdentifier:@"com.apple.MobileSMS", subscription];
  -[AppProtectionObserver setMessagesAppLockState:](self, "setMessagesAppLockState:", [subscription isLocked]);
}

- (void)dealloc
{
  [(APSubjectMonitorSubscription *)self->_subscription invalidate];
  v3.receiver = self;
  v3.super_class = AppProtectionObserver;
  [(AppProtectionObserver *)&v3 dealloc];
}

@end