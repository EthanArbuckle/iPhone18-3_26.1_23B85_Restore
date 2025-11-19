@interface TrustURLSessionCache
- (TrustURLSessionCache)initWithDelegate:(id)a3;
- (id)createSessionForAuditToken:(id)a3;
- (id)sessionForAuditToken:(id)a3;
@end

@implementation TrustURLSessionCache

- (id)sessionForAuditToken:(id)a3
{
  v4 = a3;
  v5 = [(TrustURLSessionCache *)self _clientLRUList];
  objc_sync_enter(v5);
  v6 = [(TrustURLSessionCache *)self _clientSessionMap];
  v7 = [v6 objectForKey:v4];

  if (v7)
  {
    v8 = [(TrustURLSessionCache *)self _clientLRUList];
    [v8 removeObject:v4];

    v9 = [(TrustURLSessionCache *)self _clientLRUList];
    [v9 insertObject:v4 atIndex:0];
  }

  else
  {
    v7 = [(TrustURLSessionCache *)self createSessionForAuditToken:v4];
    v10 = [(TrustURLSessionCache *)self _clientLRUList];
    [v10 insertObject:v4 atIndex:0];

    v11 = [(TrustURLSessionCache *)self _clientSessionMap];
    [v11 setObject:v7 forKey:v4];

    v12 = [(TrustURLSessionCache *)self _clientLRUList];
    v13 = [v12 count];

    if (v13 < 0x15)
    {
      goto LABEL_6;
    }

    v14 = [(TrustURLSessionCache *)self _clientLRUList];
    v15 = [(TrustURLSessionCache *)self _clientLRUList];
    v9 = [v14 objectAtIndex:{objc_msgSend(v15, "count") - 1}];

    v16 = [(TrustURLSessionCache *)self _clientSessionMap];
    v17 = [v16 objectForKey:v9];

    [v17 finishTasksAndInvalidate];
    v18 = [(TrustURLSessionCache *)self _clientSessionMap];
    [v18 removeObjectForKey:v9];

    v19 = [(TrustURLSessionCache *)self _clientLRUList];
    [v19 removeLastObject];
  }

LABEL_6:
  v20 = v7;

  objc_sync_exit(v5);

  return v20;
}

- (id)createSessionForAuditToken:(id)a3
{
  v4 = a3;
  v5 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v6 = [(TrustURLSessionCache *)self _sharedHSTSCache];
  [v5 set_hstsStorage:v6];

  [v5 setHTTPCookieStorage:0];
  [v5 setURLCache:0];
  v14 = @"User-Agent";
  v15 = @"com.apple.trustd/3.0";
  v7 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  [v5 setHTTPAdditionalHeaders:v7];

  [v5 set_sourceApplicationAuditTokenData:v4];
  [v5 set_sourceApplicationSecondaryIdentifier:@"com.apple.trustd.TrustURLSession"];
  v8 = objc_alloc_init(NSOperationQueue);
  v9 = [(TrustURLSessionCache *)self delegate];
  v10 = [v9 queue];
  [v8 setUnderlyingQueue:v10];

  v11 = [(TrustURLSessionCache *)self delegate];
  v12 = [NSURLSession sessionWithConfiguration:v5 delegate:v11 delegateQueue:v8];

  return v12;
}

- (TrustURLSessionCache)initWithDelegate:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TrustURLSessionCache;
  v5 = [(TrustURLSessionCache *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(TrustURLSessionCache *)v5 setDelegate:v4];
    v7 = [NSMutableDictionary dictionaryWithCapacity:20];
    [(TrustURLSessionCache *)v6 set_clientSessionMap:v7];

    v8 = [NSMutableArray arrayWithCapacity:21];
    [(TrustURLSessionCache *)v6 set_clientLRUList:v8];

    v9 = [[_NSHSTSStorage alloc] initInMemoryStore];
    [(TrustURLSessionCache *)v6 set_sharedHSTSCache:v9];
  }

  return v6;
}

@end