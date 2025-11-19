@interface FMDBackgroundServerChannel
- (FMDBackgroundServerChannel)init;
- (void)cancelAllRequests;
- (void)cancelRequestWithId:(id)a3;
- (void)resumeBackgroundTasks;
- (void)sendRequestWithId:(id)a3 toURL:(id)a4 withHeaders:(id)a5 body:(id)a6 completion:(id)a7;
- (void)tasksWithCompletion:(id)a3;
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
  v3 = [(FMDBackgroundServerChannel *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001E9AE4;
  v4[3] = &unk_1002CD518;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)sendRequestWithId:(id)a3 toURL:(id)a4 withHeaders:(id)a5 body:(id)a6 completion:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [(FMDBackgroundServerChannel *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E9D38;
  block[3] = &unk_1002D1588;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = self;
  v25 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  dispatch_async(v15, block);
}

- (void)cancelRequestWithId:(id)a3
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
  v3 = [(FMDBackgroundServerChannel *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EA004;
  v4[3] = &unk_1002CD518;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)tasksWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FMDBackgroundServerChannel *)self session];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001EA1F0;
  v7[3] = &unk_1002D15D0;
  v8 = v4;
  v6 = v4;
  [v5 getAllTasksWithCompletionHandler:v7];
}

@end