@interface TrustURLSessionCache
- (TrustURLSessionCache)initWithDelegate:(id)delegate;
- (id)createSessionForAuditToken:(id)token;
- (id)sessionForAuditToken:(id)token;
@end

@implementation TrustURLSessionCache

- (id)sessionForAuditToken:(id)token
{
  tokenCopy = token;
  _clientLRUList = [(TrustURLSessionCache *)self _clientLRUList];
  objc_sync_enter(_clientLRUList);
  _clientSessionMap = [(TrustURLSessionCache *)self _clientSessionMap];
  v7 = [_clientSessionMap objectForKey:tokenCopy];

  if (v7)
  {
    _clientLRUList2 = [(TrustURLSessionCache *)self _clientLRUList];
    [_clientLRUList2 removeObject:tokenCopy];

    _clientLRUList3 = [(TrustURLSessionCache *)self _clientLRUList];
    [_clientLRUList3 insertObject:tokenCopy atIndex:0];
  }

  else
  {
    v7 = [(TrustURLSessionCache *)self createSessionForAuditToken:tokenCopy];
    _clientLRUList4 = [(TrustURLSessionCache *)self _clientLRUList];
    [_clientLRUList4 insertObject:tokenCopy atIndex:0];

    _clientSessionMap2 = [(TrustURLSessionCache *)self _clientSessionMap];
    [_clientSessionMap2 setObject:v7 forKey:tokenCopy];

    _clientLRUList5 = [(TrustURLSessionCache *)self _clientLRUList];
    v13 = [_clientLRUList5 count];

    if (v13 < 0x15)
    {
      goto LABEL_6;
    }

    _clientLRUList6 = [(TrustURLSessionCache *)self _clientLRUList];
    _clientLRUList7 = [(TrustURLSessionCache *)self _clientLRUList];
    _clientLRUList3 = [_clientLRUList6 objectAtIndex:{objc_msgSend(_clientLRUList7, "count") - 1}];

    _clientSessionMap3 = [(TrustURLSessionCache *)self _clientSessionMap];
    v17 = [_clientSessionMap3 objectForKey:_clientLRUList3];

    [v17 finishTasksAndInvalidate];
    _clientSessionMap4 = [(TrustURLSessionCache *)self _clientSessionMap];
    [_clientSessionMap4 removeObjectForKey:_clientLRUList3];

    _clientLRUList8 = [(TrustURLSessionCache *)self _clientLRUList];
    [_clientLRUList8 removeLastObject];
  }

LABEL_6:
  v20 = v7;

  objc_sync_exit(_clientLRUList);

  return v20;
}

- (id)createSessionForAuditToken:(id)token
{
  tokenCopy = token;
  v5 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  _sharedHSTSCache = [(TrustURLSessionCache *)self _sharedHSTSCache];
  [v5 set_hstsStorage:_sharedHSTSCache];

  [v5 setHTTPCookieStorage:0];
  [v5 setURLCache:0];
  v14 = @"User-Agent";
  v15 = @"com.apple.trustd/3.0";
  v7 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  [v5 setHTTPAdditionalHeaders:v7];

  [v5 set_sourceApplicationAuditTokenData:tokenCopy];
  [v5 set_sourceApplicationSecondaryIdentifier:@"com.apple.trustd.TrustURLSession"];
  v8 = objc_alloc_init(NSOperationQueue);
  delegate = [(TrustURLSessionCache *)self delegate];
  queue = [delegate queue];
  [v8 setUnderlyingQueue:queue];

  delegate2 = [(TrustURLSessionCache *)self delegate];
  v12 = [NSURLSession sessionWithConfiguration:v5 delegate:delegate2 delegateQueue:v8];

  return v12;
}

- (TrustURLSessionCache)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = TrustURLSessionCache;
  v5 = [(TrustURLSessionCache *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(TrustURLSessionCache *)v5 setDelegate:delegateCopy];
    v7 = [NSMutableDictionary dictionaryWithCapacity:20];
    [(TrustURLSessionCache *)v6 set_clientSessionMap:v7];

    v8 = [NSMutableArray arrayWithCapacity:21];
    [(TrustURLSessionCache *)v6 set_clientLRUList:v8];

    initInMemoryStore = [[_NSHSTSStorage alloc] initInMemoryStore];
    [(TrustURLSessionCache *)v6 set_sharedHSTSCache:initInMemoryStore];
  }

  return v6;
}

@end