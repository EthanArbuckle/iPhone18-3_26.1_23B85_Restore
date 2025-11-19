@interface CLQueuedNSURLSession
- (BOOL)respondsToSelector:(SEL)a3;
- (CLQueuedNSURLSession)init;
- (CLQueuedNSURLSession)initWithMaxTasks:(unint64_t)a3 usingDelegate:(id)a4 withSessionConfiguration:(id)a5 andProxiedSessionDelegate:(id)a6 andSessionDelegateQueue:(id)a7;
- (id)forwardingTargetForSelector:(SEL)a3;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)invalidateAndCancel;
- (void)removeAllTasks;
- (void)resetWithCompletionHandler:(id)a3;
- (void)resumeRequestIfAllowedOrEnqueue:(id)a3;
@end

@implementation CLQueuedNSURLSession

- (CLQueuedNSURLSession)init
{
  [(CLQueuedNSURLSession *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CLQueuedNSURLSession)initWithMaxTasks:(unint64_t)a3 usingDelegate:(id)a4 withSessionConfiguration:(id)a5 andProxiedSessionDelegate:(id)a6 andSessionDelegateQueue:(id)a7
{
  v10 = a3;
  v12 = a4;
  v13 = a5;
  objc_initWeak(&location, a6);
  v14 = a7;
  v24.receiver = self;
  v24.super_class = CLQueuedNSURLSession;
  v15 = [(CLQueuedNSURLSession *)&v24 init];
  v16 = v15;
  if (v15)
  {
    v15->_maxOutstandingTasks = v10;
    v15->_outstandingTasks = 0;
    v17 = objc_alloc_init(NSMutableArray);
    requestQueue = v16->_requestQueue;
    v16->_requestQueue = v17;

    objc_storeWeak(&v16->_delegate, v12);
    v19 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v16->_proxiedDelegate, v19);

    v20 = [NSURLSession sessionWithConfiguration:v13 delegate:v16 delegateQueue:v14];
    session = v16->_session;
    v16->_session = v20;

    v22 = v16;
  }

  objc_destroyWeak(&location);
  return v16;
}

- (void)resumeRequestIfAllowedOrEnqueue:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  outstandingTasks = v4->_outstandingTasks;
  if (outstandingTasks >= v4->_maxOutstandingTasks)
  {
    [(NSMutableArray *)v4->_requestQueue addObject:v9];
  }

  else
  {
    v4->_outstandingTasks = outstandingTasks + 1;
    v6 = [(CLQueuedNSURLSession *)v4 session];
    v7 = [v9 downloadTaskWithSession:v6];

    [v7 resume];
    WeakRetained = objc_loadWeakRetained(&v4->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained session:v4 didResumeRequest:v9 withRemainingRequests:{-[NSMutableArray count](v4->_requestQueue, "count")}];
    }
  }

  objc_sync_exit(v4);
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
  v3 = [(CLQueuedNSURLSession *)self session];
  [v3 invalidateAndCancel];
}

- (void)resetWithCompletionHandler:(id)a3
{
  v5 = a3;
  [(CLQueuedNSURLSession *)self removeAllTasks];
  v4 = [(CLQueuedNSURLSession *)self session];
  [v4 resetWithCompletionHandler:v5];
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_proxiedDelegate);

  return WeakRetained;
}

- (BOOL)respondsToSelector:(SEL)a3
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

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  outstandingTasks = v11->_outstandingTasks;
  if (!outstandingTasks)
  {
    if (qword_10045B070 == -1)
    {
      v13 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
      {
LABEL_5:
        outstandingTasks = v11->_outstandingTasks;
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
  v11->_outstandingTasks = outstandingTasks - 1;
  if ([(NSMutableArray *)v11->_requestQueue count])
  {
    v14 = [(NSMutableArray *)v11->_requestQueue lastObject];
    [(NSMutableArray *)v11->_requestQueue removeLastObject];
    [(CLQueuedNSURLSession *)v11 resumeRequestIfAllowedOrEnqueue:v14];
  }

  objc_sync_exit(v11);

  WeakRetained = objc_loadWeakRetained(&v11->_proxiedDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained URLSession:v8 task:v9 didCompleteWithError:v10];
  }
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_proxiedDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained URLSession:v11 downloadTask:v8 didFinishDownloadingToURL:v9];
  }
}

@end