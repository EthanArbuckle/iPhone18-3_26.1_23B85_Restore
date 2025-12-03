@interface CLQueuedNSURLSession
- (BOOL)respondsToSelector:(SEL)selector;
- (CLQueuedNSURLSession)init;
- (CLQueuedNSURLSession)initWithMaxTasks:(unint64_t)tasks usingDelegate:(id)delegate withSessionConfiguration:(id)configuration andProxiedSessionDelegate:(id)sessionDelegate andSessionDelegateQueue:(id)queue;
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)invalidateAndCancel;
- (void)removeAllTasks;
- (void)resetWithCompletionHandler:(id)handler;
- (void)resumeRequestIfAllowedOrEnqueue:(id)enqueue;
@end

@implementation CLQueuedNSURLSession

- (CLQueuedNSURLSession)init
{
  [(CLQueuedNSURLSession *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CLQueuedNSURLSession)initWithMaxTasks:(unint64_t)tasks usingDelegate:(id)delegate withSessionConfiguration:(id)configuration andProxiedSessionDelegate:(id)sessionDelegate andSessionDelegateQueue:(id)queue
{
  tasksCopy = tasks;
  delegateCopy = delegate;
  configurationCopy = configuration;
  objc_initWeak(&location, sessionDelegate);
  queueCopy = queue;
  v24.receiver = self;
  v24.super_class = CLQueuedNSURLSession;
  v15 = [(CLQueuedNSURLSession *)&v24 init];
  v16 = v15;
  if (v15)
  {
    v15->_maxOutstandingTasks = tasksCopy;
    v15->_outstandingTasks = 0;
    v17 = objc_alloc_init(NSMutableArray);
    requestQueue = v16->_requestQueue;
    v16->_requestQueue = v17;

    objc_storeWeak(&v16->_delegate, delegateCopy);
    v19 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v16->_proxiedDelegate, v19);

    v20 = [NSURLSession sessionWithConfiguration:configurationCopy delegate:v16 delegateQueue:queueCopy];
    session = v16->_session;
    v16->_session = v20;

    v22 = v16;
  }

  objc_destroyWeak(&location);
  return v16;
}

- (void)resumeRequestIfAllowedOrEnqueue:(id)enqueue
{
  enqueueCopy = enqueue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  outstandingTasks = selfCopy->_outstandingTasks;
  if (outstandingTasks >= selfCopy->_maxOutstandingTasks)
  {
    [(NSMutableArray *)selfCopy->_requestQueue addObject:enqueueCopy];
  }

  else
  {
    selfCopy->_outstandingTasks = outstandingTasks + 1;
    session = [(CLQueuedNSURLSession *)selfCopy session];
    v7 = [enqueueCopy downloadTaskWithSession:session];

    [v7 resume];
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained session:selfCopy didResumeRequest:enqueueCopy withRemainingRequests:{-[NSMutableArray count](selfCopy->_requestQueue, "count")}];
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)removeAllTasks
{
  obj = self;
  objc_sync_enter(obj);
  [(NSMutableArray *)obj->_requestQueue removeAllObjects];
  objc_sync_exit(obj);
}

- (void)invalidateAndCancel
{
  [(CLQueuedNSURLSession *)self removeAllTasks];
  session = [(CLQueuedNSURLSession *)self session];
  [session invalidateAndCancel];
}

- (void)resetWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(CLQueuedNSURLSession *)self removeAllTasks];
  session = [(CLQueuedNSURLSession *)self session];
  [session resetWithCompletionHandler:handlerCopy];
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  WeakRetained = objc_loadWeakRetained(&self->_proxiedDelegate);

  return WeakRetained;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = CLQueuedNSURLSession;
  if ([(CLQueuedNSURLSession *)&v7 respondsToSelector:?])
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_proxiedDelegate);
  v6 = objc_opt_respondsToSelector();

  return v6 & 1;
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  outstandingTasks = selfCopy->_outstandingTasks;
  if (!outstandingTasks)
  {
    if (qword_10045B070 == -1)
    {
      v13 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
      {
LABEL_5:
        outstandingTasks = selfCopy->_outstandingTasks;
        goto LABEL_6;
      }
    }

    else
    {
      sub_100387ABC();
      v13 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }
    }

    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "CLQueuedNSURLSession:Too few outstanding tasks: ", v16, 2u);
    goto LABEL_5;
  }

LABEL_6:
  selfCopy->_outstandingTasks = outstandingTasks - 1;
  if ([(NSMutableArray *)selfCopy->_requestQueue count])
  {
    lastObject = [(NSMutableArray *)selfCopy->_requestQueue lastObject];
    [(NSMutableArray *)selfCopy->_requestQueue removeLastObject];
    [(CLQueuedNSURLSession *)selfCopy resumeRequestIfAllowedOrEnqueue:lastObject];
  }

  objc_sync_exit(selfCopy);

  WeakRetained = objc_loadWeakRetained(&selfCopy->_proxiedDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained URLSession:sessionCopy task:taskCopy didCompleteWithError:errorCopy];
  }
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  sessionCopy = session;
  taskCopy = task;
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_proxiedDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained URLSession:sessionCopy downloadTask:taskCopy didFinishDownloadingToURL:lCopy];
  }
}

@end