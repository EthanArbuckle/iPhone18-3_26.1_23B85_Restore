@interface CLQueuedNSURLRequest
- (CLQueuedNSURLRequest)initWithRequest:(id)request withPriority:(int64_t)priority andResumeData:(id)data andCountOfBytesClientExpectsToReceive:(int64_t)receive;
- (id)description;
- (id)downloadTaskWithSession:(id)session;
@end

@implementation CLQueuedNSURLRequest

- (CLQueuedNSURLRequest)initWithRequest:(id)request withPriority:(int64_t)priority andResumeData:(id)data andCountOfBytesClientExpectsToReceive:(int64_t)receive
{
  requestCopy = request;
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = CLQueuedNSURLRequest;
  v13 = [(CLQueuedNSURLRequest *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_request, request);
    v14->_priority = priority;
    objc_storeStrong(&v14->_resumeData, data);
    v14->_countOfBytesClientExpectsToReceive = receive;
    v15 = v14;
  }

  return v14;
}

- (id)downloadTaskWithSession:(id)session
{
  sessionCopy = session;
  resumeData = [(CLQueuedNSURLRequest *)self resumeData];

  if (resumeData)
  {
    resumeData2 = [(CLQueuedNSURLRequest *)self resumeData];
    [sessionCopy downloadTaskWithResumeData:resumeData2];
  }

  else
  {
    resumeData2 = [(CLQueuedNSURLRequest *)self request];
    [sessionCopy downloadTaskWithRequest:resumeData2];
  }
  v7 = ;

  priority = [(CLQueuedNSURLRequest *)self priority];
  if (priority <= 2)
  {
    LODWORD(v9) = **(&off_10044B0F0 + priority);
    [v7 setPriority:v9];
  }

  [v7 setCountOfBytesClientExpectsToReceive:{-[CLQueuedNSURLRequest countOfBytesClientExpectsToReceive](self, "countOfBytesClientExpectsToReceive")}];

  return v7;
}

- (id)description
{
  request = [(CLQueuedNSURLRequest *)self request];
  v3 = [request description];

  return v3;
}

@end