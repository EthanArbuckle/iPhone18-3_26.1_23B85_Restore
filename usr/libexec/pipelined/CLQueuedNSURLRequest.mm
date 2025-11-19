@interface CLQueuedNSURLRequest
- (CLQueuedNSURLRequest)initWithRequest:(id)a3 withPriority:(int64_t)a4 andResumeData:(id)a5 andCountOfBytesClientExpectsToReceive:(int64_t)a6;
- (id)description;
- (id)downloadTaskWithSession:(id)a3;
@end

@implementation CLQueuedNSURLRequest

- (CLQueuedNSURLRequest)initWithRequest:(id)a3 withPriority:(int64_t)a4 andResumeData:(id)a5 andCountOfBytesClientExpectsToReceive:(int64_t)a6
{
  v11 = a3;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = CLQueuedNSURLRequest;
  v13 = [(CLQueuedNSURLRequest *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_request, a3);
    v14->_priority = a4;
    objc_storeStrong(&v14->_resumeData, a5);
    v14->_countOfBytesClientExpectsToReceive = a6;
    v15 = v14;
  }

  return v14;
}

- (id)downloadTaskWithSession:(id)a3
{
  v4 = a3;
  v5 = [(CLQueuedNSURLRequest *)self resumeData];

  if (v5)
  {
    v6 = [(CLQueuedNSURLRequest *)self resumeData];
    [v4 downloadTaskWithResumeData:v6];
  }

  else
  {
    v6 = [(CLQueuedNSURLRequest *)self request];
    [v4 downloadTaskWithRequest:v6];
  }
  v7 = ;

  v8 = [(CLQueuedNSURLRequest *)self priority];
  if (v8 <= 2)
  {
    LODWORD(v9) = **(&off_10044B0F0 + v8);
    [v7 setPriority:v9];
  }

  [v7 setCountOfBytesClientExpectsToReceive:{-[CLQueuedNSURLRequest countOfBytesClientExpectsToReceive](self, "countOfBytesClientExpectsToReceive")}];

  return v7;
}

- (id)description
{
  v2 = [(CLQueuedNSURLRequest *)self request];
  v3 = [v2 description];

  return v3;
}

@end