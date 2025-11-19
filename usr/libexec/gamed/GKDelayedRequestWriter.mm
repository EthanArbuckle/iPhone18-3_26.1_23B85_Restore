@interface GKDelayedRequestWriter
+ (id)writerWithCacheWriter:(id)a3 cacheReader:(id)a4 networkWriter:(id)a5 batchSubmissionInterval:(double)a6;
- (GKDelayedRequestWriter)initWithCacheWriter:(id)a3 cacheReader:(id)a4 networkWriter:(id)a5 batchSubmissionInterval:(double)a6;
- (void)batchAndPerformInGroup:(id)a3 block:(id)a4;
- (void)deleteSubmittedRequestsWithIDs:(id)a3 onConnection:(id)a4;
- (void)readAndSubmitDelayedRequestsOfResources:(id)a3 handler:(id)a4;
- (void)submitDelayedRequestsForPlayer:(id)a3 handler:(id)a4;
- (void)writeResources:(id)a3 handler:(id)a4;
- (void)writeResourcesToCacheOnly:(id)a3 handler:(id)a4;
@end

@implementation GKDelayedRequestWriter

+ (id)writerWithCacheWriter:(id)a3 cacheReader:(id)a4 networkWriter:(id)a5 batchSubmissionInterval:(double)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 databaseConnection];
  v13 = [v9 databaseConnection];
  v14 = [v12 isEqual:v13];

  if ((v14 & 1) == 0)
  {
    v17 = [v10 databaseConnection];
    v18 = [v9 databaseConnection];
    v19 = [NSString stringWithFormat:@"cacheReader.databaseConnection (%@) is not shared by the cacheWriter.databaseConnection (%@) Exiting to reset", v17, v18];

    v20 = [NSException exceptionWithName:NSInvalidArgumentException reason:v19 userInfo:0];
    objc_exception_throw(v20);
  }

  v15 = [objc_alloc(objc_opt_class()) initWithCacheWriter:v9 cacheReader:v10 networkWriter:v11 batchSubmissionInterval:a6];

  return v15;
}

- (GKDelayedRequestWriter)initWithCacheWriter:(id)a3 cacheReader:(id)a4 networkWriter:(id)a5 batchSubmissionInterval:(double)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v20.receiver = self;
  v20.super_class = GKDelayedRequestWriter;
  v13 = [(GKDelayedRequestWriter *)&v20 init];
  v14 = v13;
  if (v13)
  {
    [(GKDelayedRequestWriter *)v13 setCacheWriter:v10];
    [(GKDelayedRequestWriter *)v14 setCacheReader:v11];
    [(GKDelayedRequestWriter *)v14 setNetworkWriter:v12];
    v15 = objc_alloc_init(NSSet);
    resourcesPending = v14->_resourcesPending;
    v14->_resourcesPending = v15;

    v14->_shouldWaitForNetworkError = 1;
    v14->_intervalInSeconds = a6;
    v17 = dispatch_queue_create("com.apple.gamed.delayedRequests.batchQueue", 0);
    operationQueue = v14->_operationQueue;
    v14->_operationQueue = v17;
  }

  return v14;
}

- (void)batchAndPerformInGroup:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_intervalInSeconds <= 0.0)
  {
    v7[2](v7);
  }

  else
  {
    ++qword_1003B9200;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001158E8;
    v9[3] = &unk_1003670B0;
    v9[4] = self;
    v11 = qword_1003B9200;
    v10 = v7;
    [v6 perform:v9];
  }
}

- (void)submitDelayedRequestsForPlayer:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = v6;
  v8 = [NSArray arrayWithObjects:&v10 count:1];
  v9 = [NSSet _gkSetOfResourcesWithIDs:v8];
  [(GKDelayedRequestWriter *)self readAndSubmitDelayedRequestsOfResources:v9 handler:v7];
}

- (void)deleteSubmittedRequestsWithIDs:(id)a3 onConnection:(id)a4
{
  v5 = a3;
  v6 = a4;
  [NSString stringWithFormat:@"DELETE FROM requests WHERE request_id = %s;", ":request_id"];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100115C68;
  v10 = v9[3] = &unk_100366E48;
  v7 = v5;
  v11 = v7;
  v8 = v10;
  [v6 performAsyncTransaction:v9 handler:&stru_1003670D0];
}

- (void)readAndSubmitDelayedRequestsOfResources:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKDelayedRequestWriter.mm", 129, "[GKDelayedRequestWriter readAndSubmitDelayedRequestsOfResources:handler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100116110;
  v19[3] = &unk_100367170;
  v19[4] = self;
  v10 = v6;
  v20 = v10;
  v11 = v9;
  v21 = v11;
  v22 = v23;
  [v11 perform:v19];
  v12 = dispatch_get_global_queue(0, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001168B4;
  v15[3] = &unk_100367198;
  v13 = v7;
  v17 = v13;
  v14 = v11;
  v16 = v14;
  v18 = v23;
  [v14 notifyOnQueue:v12 block:v15];

  _Block_object_dispose(v23, 8);
}

- (void)writeResources:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GKDelayedRequestWriter *)self shouldWaitForNetworkError];
  operationQueue = self->_operationQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100116A1C;
  v12[3] = &unk_100367300;
  v12[4] = self;
  v13 = v6;
  v15 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(operationQueue, v12);
}

- (void)writeResourcesToCacheOnly:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  operationQueue = self->_operationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001175CC;
  block[3] = &unk_100367210;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(operationQueue, block);
}

@end