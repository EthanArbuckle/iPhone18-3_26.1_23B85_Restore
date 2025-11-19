@interface KCSharingStubXPCListenerDelegate
+ (id)sharedInstance;
- (KCSharingStubXPCListenerDelegate)init;
@end

@implementation KCSharingStubXPCListenerDelegate

+ (id)sharedInstance
{
  if (qword_1000736F0 != -1)
  {
    sub_10003E42C();
  }

  v3 = qword_1000736F8;

  return v3;
}

- (KCSharingStubXPCListenerDelegate)init
{
  v6.receiver = self;
  v6.super_class = KCSharingStubXPCListenerDelegate;
  v2 = [(KCSharingStubXPCListenerDelegate *)&v6 init];
  if (v2)
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.security.kcsharing"];
    listener = v2->_listener;
    v2->_listener = v3;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener activate];
  }

  return v2;
}

@end