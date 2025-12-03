@interface CRLoggingFileReceiver
- (CRLoggingFileReceiver)initWithSession:(id)session;
- (id)urlForSavingLogsForFileReceiverSession:(id)session;
- (void)dealloc;
- (void)fileReceiver:(id)receiver didReceiveStatistics:(id)statistics;
- (void)fileReceiverSession:(id)session didSaveLogsAtURL:(id)l;
- (void)invalidate;
- (void)requestLogsWithCompletion:(id)completion;
@end

@implementation CRLoggingFileReceiver

- (CRLoggingFileReceiver)initWithSession:(id)session
{
  sessionCopy = session;
  v19.receiver = self;
  v19.super_class = CRLoggingFileReceiver;
  v6 = [(CRLoggingFileReceiver *)&v19 init];
  if (v6)
  {
    v7 = os_transaction_create();
    [(CRLoggingFileReceiver *)v6 setTransaction:v7];

    v8 = sub_100002A68(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "opening logging file channel", v18, 2u);
    }

    objc_storeStrong(&v6->_session, session);
    v9 = [CARSessionChannel alloc];
    v10 = [v9 initWithSession:sessionCopy channelType:kFigEndpointRemoteControlSessionClientTypeUUIDKey_CarPlayLoggingData];
    channel = v6->_channel;
    v6->_channel = v10;

    v12 = [[CRFileReceiver alloc] initWithChannel:v6->_channel];
    fileReceiver = v6->_fileReceiver;
    v6->_fileReceiver = v12;

    v14 = v6->_fileReceiver;
    if (!v14)
    {
      v16 = 0;
      goto LABEL_8;
    }

    [(CRFileReceiver *)v14 setLogArchiveReceiver:v6];
    [(CRFileReceiver *)v6->_fileReceiver setStatisticsReceiver:v6];
    fileReceiver = [(CRLoggingFileReceiver *)v6 fileReceiver];
    [fileReceiver requestStartStatisticsOnInterval:10];
  }

  v16 = v6;
LABEL_8:

  return v16;
}

- (void)dealloc
{
  [(CRLoggingFileReceiver *)self invalidate];
  v3.receiver = self;
  v3.super_class = CRLoggingFileReceiver;
  [(CRLoggingFileReceiver *)&v3 dealloc];
}

- (void)invalidate
{
  currentCompletion = [(CRLoggingFileReceiver *)self currentCompletion];
  if (currentCompletion)
  {
    currentCompletion[2](currentCompletion, 0);
    currentCompletion = self->_currentCompletion;
    self->_currentCompletion = 0;
  }

  fileReceiver = [(CRLoggingFileReceiver *)self fileReceiver];
  [fileReceiver invalidate];

  [(CRLoggingFileReceiver *)self setTransaction:0];
}

- (void)requestLogsWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  currentCompletion = [(CRLoggingFileReceiver *)self currentCompletion];
  v5 = currentCompletion;
  if (currentCompletion)
  {
    (*(currentCompletion + 16))(currentCompletion, 0);
  }

  [(CRLoggingFileReceiver *)self setCurrentCompletion:completionCopy];
  fileReceiver = [(CRLoggingFileReceiver *)self fileReceiver];
  [fileReceiver requestLogArchive];
}

- (id)urlForSavingLogsForFileReceiverSession:(id)session
{
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 URLsForDirectory:5 inDomains:1];
  firstObject = [v4 firstObject];

  v6 = +[NSFileManager defaultManager];
  v10 = 0;
  v7 = [v6 URLForDirectory:99 inDomain:1 appropriateForURL:firstObject create:1 error:&v10];

  v8 = [v7 URLByAppendingPathComponent:@"VehicleLogs.tar.gz"];

  return v8;
}

- (void)fileReceiverSession:(id)session didSaveLogsAtURL:(id)l
{
  lCopy = l;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041FB0;
  block[3] = &unk_1000DD580;
  v8 = lCopy;
  selfCopy = self;
  v6 = lCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&location);
}

- (void)fileReceiver:(id)receiver didReceiveStatistics:(id)statistics
{
  statisticsCopy = statistics;
  objc_opt_class();
  v5 = [statisticsCopy objectForKey:@"CommStats"];
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          v13 = sub_100002A68(5uLL);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v19 = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = sub_100002A68(5uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100086B54(statisticsCopy, v7);
    }
  }
}

@end