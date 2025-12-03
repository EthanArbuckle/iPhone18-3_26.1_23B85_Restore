@interface FMDBackgroundServerChannel
- (FMDBackgroundServerChannel)init;
- (void)cancelAllRequests;
- (void)cancelRequestWithId:(id)id;
- (void)resumeBackgroundTasks;
- (void)sendRequestWithId:(id)id toURL:(id)l withHeaders:(id)headers body:(id)body completion:(id)completion;
- (void)tasksWithCompletion:(id)completion;
@end

@implementation FMDBackgroundServerChannel

- (FMDBackgroundServerChannel)init
{
  v7.receiver = self;
  v7.super_class = FMDBackgroundServerChannel;
  v2 = [(FMDBackgroundServerChannel *)&v7 init];
  if (v2)
  {
    v3 = +[NSURLSessionConfiguration defaultSessionConfiguration];
    [v3 setURLCache:0];
    [v3 setRequestCachePolicy:1];
    v4 = [FMDURLSessionFactory sessionWithConfiguration:v3];
    [(FMDBackgroundServerChannel *)v2 setSession:v4];

    v5 = dispatch_queue_create("com.apple.icloud.findmydeviced.FMDBackgroundServerChannel.serialqueue", 0);
    [(FMDBackgroundServerChannel *)v2 setQueue:v5];
  }

  return v2;
}

- (void)resumeBackgroundTasks
{
  objc_initWeak(&location, self);
  queue = [(FMDBackgroundServerChannel *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001E9AE4;
  v4[3] = &unk_1002CD518;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)sendRequestWithId:(id)id toURL:(id)l withHeaders:(id)headers body:(id)body completion:(id)completion
{
  lCopy = l;
  headersCopy = headers;
  bodyCopy = body;
  completionCopy = completion;
  queue = [(FMDBackgroundServerChannel *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E9D38;
  block[3] = &unk_1002D1588;
  v21 = lCopy;
  v22 = headersCopy;
  v23 = bodyCopy;
  selfCopy = self;
  v25 = completionCopy;
  v16 = completionCopy;
  v17 = bodyCopy;
  v18 = headersCopy;
  v19 = lCopy;
  dispatch_async(queue, block);
}

- (void)cancelRequestWithId:(id)id
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10022FE10(v3);
  }
}

- (void)cancelAllRequests
{
  objc_initWeak(&location, self);
  queue = [(FMDBackgroundServerChannel *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EA004;
  v4[3] = &unk_1002CD518;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)tasksWithCompletion:(id)completion
{
  completionCopy = completion;
  session = [(FMDBackgroundServerChannel *)self session];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001EA1F0;
  v7[3] = &unk_1002D15D0;
  v8 = completionCopy;
  v6 = completionCopy;
  [session getAllTasksWithCompletionHandler:v7];
}

@end