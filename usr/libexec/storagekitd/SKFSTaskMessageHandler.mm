@interface SKFSTaskMessageHandler
- (NSError)error;
- (SKFSTaskMessageHandler)initWithProgress:(id)progress dispatchGroup:(id)group;
- (void)completed:(id)completed replyHandler:(id)handler;
- (void)getLocalizationSetup:(id)setup;
- (void)logMessage:(id)message;
- (void)setError:(id)error;
@end

@implementation SKFSTaskMessageHandler

- (SKFSTaskMessageHandler)initWithProgress:(id)progress dispatchGroup:(id)group
{
  progressCopy = progress;
  groupCopy = group;
  v14.receiver = self;
  v14.super_class = SKFSTaskMessageHandler;
  v9 = [(SKFSTaskMessageHandler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_progress, progress);
    objc_storeStrong(&v10->_group, group);
    error = v10->_error;
    v10->_error = 0;

    v10->_taskDone = 0;
    group = [(SKFSTaskMessageHandler *)v10 group];
    dispatch_group_enter(group);
  }

  return v10;
}

- (NSError)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_error;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (errorCopy)
  {
    objc_storeStrong(&selfCopy->_error, error);
  }

  objc_sync_exit(selfCopy);
}

- (void)completed:(id)completed replyHandler:(id)handler
{
  completedCopy = completed;
  handlerCopy = handler;
  if ([(SKFSTaskMessageHandler *)self taskDone])
  {
    v8 = +[SKBaseManager sharedManager];
    [v8 logEvent:@"com.apple.StorageKit.log.fault" eventPayloadBuilder:&stru_1000496F8];

    v9 = sub_10000BFD0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      taskID = [(SKFSTaskMessageHandler *)self taskID];
      v16 = 136315650;
      v17 = "[SKFSTaskMessageHandler completed:replyHandler:]";
      v18 = 2112;
      v19 = taskID;
      v20 = 2112;
      v21 = completedCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "%s: Reached an extra completion callback for task %@, error %@", &v16, 0x20u);
    }
  }

  else
  {
    v11 = sub_10000BFD0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      taskID2 = [(SKFSTaskMessageHandler *)self taskID];
      v13 = taskID2;
      v14 = &stru_10004A890;
      v16 = 136315650;
      v17 = "[SKFSTaskMessageHandler completed:replyHandler:]";
      v18 = 2112;
      if (completedCopy)
      {
        v14 = completedCopy;
      }

      v19 = taskID2;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Task %@ done %@", &v16, 0x20u);
    }

    [(SKFSTaskMessageHandler *)self setError:completedCopy];
    group = [(SKFSTaskMessageHandler *)self group];
    dispatch_group_leave(group);

    self->_taskDone = 1;
  }

  handlerCopy[2](handlerCopy, 0, completedCopy);
}

- (void)logMessage:(id)message
{
  messageCopy = message;
  progress = [(SKFSTaskMessageHandler *)self progress];
  [progress setLocalizedAdditionalDescription:messageCopy];
}

- (void)getLocalizationSetup:(id)setup
{
  setupCopy = setup;
  v6 = +[NSLocale currentLocale];
  v5 = +[NSLocale preferredLanguages];
  (*(setup + 2))(setupCopy, v6, v5, 0);
}

@end