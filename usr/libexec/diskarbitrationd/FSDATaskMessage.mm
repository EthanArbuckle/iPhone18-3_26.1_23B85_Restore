@interface FSDATaskMessage
- (void)completed:(id)completed replyHandler:(id)handler;
- (void)prompt:(id)prompt replyHandler:(id)handler;
- (void)promptTrueFalse:(id)false replyHandler:(id)handler;
@end

@implementation FSDATaskMessage

- (void)prompt:(id)prompt replyHandler:(id)handler
{
  promptCopy = prompt;
  handlerCopy = handler;
  sub_100009EE0("%s\n", [prompt UTF8String]);
  handlerCopy[2](handlerCopy, @"Completed prompt", 0);
}

- (void)promptTrueFalse:(id)false replyHandler:(id)handler
{
  falseCopy = false;
  handlerCopy = handler;
  sub_100009EE0("%s\n", [false UTF8String]);
  handlerCopy[2](handlerCopy, 1, 0);
}

- (void)completed:(id)completed replyHandler:(id)handler
{
  completedCopy = completed;
  handlerCopy = handler;
  sub_100009EE0("Completed task with error %@\n", completedCopy);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_dispatch_group && !selfCopy->_didCompletion)
  {
    objc_storeStrong(&selfCopy->_exitError, completed);
    dispatch_group_leave(selfCopy->_dispatch_group);
  }

  selfCopy->_didCompletion = 1;
  objc_sync_exit(selfCopy);

  handlerCopy[2](handlerCopy, 0, completedCopy);
}

@end