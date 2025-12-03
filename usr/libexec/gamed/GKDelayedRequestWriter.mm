@interface GKDelayedRequestWriter
+ (id)writerWithCacheWriter:(id)writer cacheReader:(id)reader networkWriter:(id)networkWriter batchSubmissionInterval:(double)interval;
- (GKDelayedRequestWriter)initWithCacheWriter:(id)writer cacheReader:(id)reader networkWriter:(id)networkWriter batchSubmissionInterval:(double)interval;
- (void)batchAndPerformInGroup:(id)group block:(id)block;
- (void)deleteSubmittedRequestsWithIDs:(id)ds onConnection:(id)connection;
- (void)readAndSubmitDelayedRequestsOfResources:(id)resources handler:(id)handler;
- (void)submitDelayedRequestsForPlayer:(id)player handler:(id)handler;
- (void)writeResources:(id)resources handler:(id)handler;
- (void)writeResourcesToCacheOnly:(id)only handler:(id)handler;
@end

@implementation GKDelayedRequestWriter

+ (id)writerWithCacheWriter:(id)writer cacheReader:(id)reader networkWriter:(id)networkWriter batchSubmissionInterval:(double)interval
{
  writerCopy = writer;
  readerCopy = reader;
  networkWriterCopy = networkWriter;
  databaseConnection = [readerCopy databaseConnection];
  databaseConnection2 = [writerCopy databaseConnection];
  v14 = [databaseConnection isEqual:databaseConnection2];

  if ((v14 & 1) == 0)
  {
    databaseConnection3 = [readerCopy databaseConnection];
    databaseConnection4 = [writerCopy databaseConnection];
    v19 = [NSString stringWithFormat:@"cacheReader.databaseConnection (%@) is not shared by the cacheWriter.databaseConnection (%@) Exiting to reset", databaseConnection3, databaseConnection4];

    v20 = [NSException exceptionWithName:NSInvalidArgumentException reason:v19 userInfo:0];
    objc_exception_throw(v20);
  }

  v15 = [objc_alloc(objc_opt_class()) initWithCacheWriter:writerCopy cacheReader:readerCopy networkWriter:networkWriterCopy batchSubmissionInterval:interval];

  return v15;
}

- (GKDelayedRequestWriter)initWithCacheWriter:(id)writer cacheReader:(id)reader networkWriter:(id)networkWriter batchSubmissionInterval:(double)interval
{
  writerCopy = writer;
  readerCopy = reader;
  networkWriterCopy = networkWriter;
  v20.receiver = self;
  v20.super_class = GKDelayedRequestWriter;
  v13 = [(GKDelayedRequestWriter *)&v20 init];
  v14 = v13;
  if (v13)
  {
    [(GKDelayedRequestWriter *)v13 setCacheWriter:writerCopy];
    [(GKDelayedRequestWriter *)v14 setCacheReader:readerCopy];
    [(GKDelayedRequestWriter *)v14 setNetworkWriter:networkWriterCopy];
    v15 = objc_alloc_init(NSSet);
    resourcesPending = v14->_resourcesPending;
    v14->_resourcesPending = v15;

    v14->_shouldWaitForNetworkError = 1;
    v14->_intervalInSeconds = interval;
    v17 = dispatch_queue_create("com.apple.gamed.delayedRequests.batchQueue", 0);
    operationQueue = v14->_operationQueue;
    v14->_operationQueue = v17;
  }

  return v14;
}

- (void)batchAndPerformInGroup:(id)group block:(id)block
{
  groupCopy = group;
  blockCopy = block;
  v8 = blockCopy;
  if (self->_intervalInSeconds <= 0.0)
  {
    blockCopy[2](blockCopy);
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
    v10 = blockCopy;
    [groupCopy perform:v9];
  }
}

- (void)submitDelayedRequestsForPlayer:(id)player handler:(id)handler
{
  playerCopy = player;
  handlerCopy = handler;
  v10 = playerCopy;
  v8 = [NSArray arrayWithObjects:&v10 count:1];
  v9 = [NSSet _gkSetOfResourcesWithIDs:v8];
  [(GKDelayedRequestWriter *)self readAndSubmitDelayedRequestsOfResources:v9 handler:handlerCopy];
}

- (void)deleteSubmittedRequestsWithIDs:(id)ds onConnection:(id)connection
{
  dsCopy = ds;
  connectionCopy = connection;
  [NSString stringWithFormat:@"DELETE FROM requests WHERE request_id = %s;", ":request_id"];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100115C68;
  v10 = v9[3] = &unk_100366E48;
  v7 = dsCopy;
  v11 = v7;
  v8 = v10;
  [connectionCopy performAsyncTransaction:v9 handler:&stru_1003670D0];
}

- (void)readAndSubmitDelayedRequestsOfResources:(id)resources handler:(id)handler
{
  resourcesCopy = resources;
  handlerCopy = handler;
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
  v10 = resourcesCopy;
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
  v13 = handlerCopy;
  v17 = v13;
  v14 = v11;
  v16 = v14;
  v18 = v23;
  [v14 notifyOnQueue:v12 block:v15];

  _Block_object_dispose(v23, 8);
}

- (void)writeResources:(id)resources handler:(id)handler
{
  resourcesCopy = resources;
  handlerCopy = handler;
  shouldWaitForNetworkError = [(GKDelayedRequestWriter *)self shouldWaitForNetworkError];
  operationQueue = self->_operationQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100116A1C;
  v12[3] = &unk_100367300;
  v12[4] = self;
  v13 = resourcesCopy;
  v15 = shouldWaitForNetworkError;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = resourcesCopy;
  dispatch_async(operationQueue, v12);
}

- (void)writeResourcesToCacheOnly:(id)only handler:(id)handler
{
  onlyCopy = only;
  handlerCopy = handler;
  operationQueue = self->_operationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001175CC;
  block[3] = &unk_100367210;
  block[4] = self;
  v12 = onlyCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = onlyCopy;
  dispatch_async(operationQueue, block);
}

@end