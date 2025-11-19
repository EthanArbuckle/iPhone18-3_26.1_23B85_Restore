@interface FSDATaskMessage
- (void)completed:(id)a3 replyHandler:(id)a4;
- (void)prompt:(id)a3 replyHandler:(id)a4;
- (void)promptTrueFalse:(id)a3 replyHandler:(id)a4;
@end

@implementation FSDATaskMessage

- (void)prompt:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  sub_100009EE0("%s\n", [a3 UTF8String]);
  v7[2](v7, @"Completed prompt", 0);
}

- (void)promptTrueFalse:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  sub_100009EE0("%s\n", [a3 UTF8String]);
  v7[2](v7, 1, 0);
}

- (void)completed:(id)a3 replyHandler:(id)a4
{
  v9 = a3;
  v7 = a4;
  sub_100009EE0("Completed task with error %@\n", v9);
  v8 = self;
  objc_sync_enter(v8);
  if (v8->_dispatch_group && !v8->_didCompletion)
  {
    objc_storeStrong(&v8->_exitError, a3);
    dispatch_group_leave(v8->_dispatch_group);
  }

  v8->_didCompletion = 1;
  objc_sync_exit(v8);

  v7[2](v7, 0, v9);
}

@end