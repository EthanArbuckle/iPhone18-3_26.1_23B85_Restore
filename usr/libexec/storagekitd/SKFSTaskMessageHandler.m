@interface SKFSTaskMessageHandler
- (NSError)error;
- (SKFSTaskMessageHandler)initWithProgress:(id)a3 dispatchGroup:(id)a4;
- (void)completed:(id)a3 replyHandler:(id)a4;
- (void)getLocalizationSetup:(id)a3;
- (void)logMessage:(id)a3;
- (void)setError:(id)a3;
@end

@implementation SKFSTaskMessageHandler

- (SKFSTaskMessageHandler)initWithProgress:(id)a3 dispatchGroup:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SKFSTaskMessageHandler;
  v9 = [(SKFSTaskMessageHandler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_progress, a3);
    objc_storeStrong(&v10->_group, a4);
    error = v10->_error;
    v10->_error = 0;

    v10->_taskDone = 0;
    v12 = [(SKFSTaskMessageHandler *)v10 group];
    dispatch_group_enter(v12);
  }

  return v10;
}

- (NSError)error
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_error;
  objc_sync_exit(v2);

  return v3;
}

- (void)setError:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v6)
  {
    objc_storeStrong(&v5->_error, a3);
  }

  objc_sync_exit(v5);
}

- (void)completed:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SKFSTaskMessageHandler *)self taskDone])
  {
    v8 = +[SKBaseManager sharedManager];
    [v8 logEvent:@"com.apple.StorageKit.log.fault" eventPayloadBuilder:&stru_1000496F8];

    v9 = sub_10000BFD0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = [(SKFSTaskMessageHandler *)self taskID];
      v16 = 136315650;
      v17 = "[SKFSTaskMessageHandler completed:replyHandler:]";
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "%s: Reached an extra completion callback for task %@, error %@", &v16, 0x20u);
    }
  }

  else
  {
    v11 = sub_10000BFD0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(SKFSTaskMessageHandler *)self taskID];
      v13 = v12;
      v14 = &stru_10004A890;
      v16 = 136315650;
      v17 = "[SKFSTaskMessageHandler completed:replyHandler:]";
      v18 = 2112;
      if (v6)
      {
        v14 = v6;
      }

      v19 = v12;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Task %@ done %@", &v16, 0x20u);
    }

    [(SKFSTaskMessageHandler *)self setError:v6];
    v15 = [(SKFSTaskMessageHandler *)self group];
    dispatch_group_leave(v15);

    self->_taskDone = 1;
  }

  v7[2](v7, 0, v6);
}

- (void)logMessage:(id)a3
{
  v4 = a3;
  v5 = [(SKFSTaskMessageHandler *)self progress];
  [v5 setLocalizedAdditionalDescription:v4];
}

- (void)getLocalizationSetup:(id)a3
{
  v4 = a3;
  v6 = +[NSLocale currentLocale];
  v5 = +[NSLocale preferredLanguages];
  (*(a3 + 2))(v4, v6, v5, 0);
}

@end