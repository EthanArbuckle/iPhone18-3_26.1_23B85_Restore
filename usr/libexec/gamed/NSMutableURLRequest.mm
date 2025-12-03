@interface NSMutableURLRequest
+ (id)_gkHTTPRequestWithURL:(id)l postData:(id)data protocolVersion:(id)version;
- (void)_gkAddHeadersFromDictionary:(id)dictionary;
@end

@implementation NSMutableURLRequest

+ (id)_gkHTTPRequestWithURL:(id)l postData:(id)data protocolVersion:(id)version
{
  lCopy = l;
  dataCopy = data;
  versionCopy = version;
  if ([lCopy _gkIsValidServerURL])
  {
    v11 = +[GKPreferences shared];
    [v11 operationTimeout];
    v12 = [self requestWithURL:lCopy cachePolicy:1 timeoutInterval:?];
  }

  else
  {
    v12 = 0;
  }

  [v12 setLocale:0];
  v13 = +[GKPreferences shared];
  [v12 setInternal:{objc_msgSend(v13, "useInternalHeader")}];

  v14 = +[GKDevice currentDevice];
  v15 = [v14 userAgentWithProcessName:@"gamed" protocolVersion:versionCopy];

  [v12 setHTTPUserAgent:v15];
  [v12 setHTTPShouldHandleCookies:0];
  if (dataCopy)
  {
    [v12 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"content-type"];
    [v12 setHTTPMethod:@"POST"];
    [v12 setHTTPBody:dataCopy];
  }

  else
  {
    [v12 setHTTPMethod:@"GET"];
  }

  v16 = +[NSUUID UUID];
  uUIDString = [v16 UUIDString];
  [v12 setValue:uUIDString forHTTPHeaderField:@"X-Apple-Request-UUID"];

  v18 = +[GKPreferences shared];
  testRunID = [v18 testRunID];

  if (testRunID)
  {
    [v12 setValue:testRunID forHTTPHeaderField:@"x-gk-test-run-id"];
  }

  return v12;
}

- (void)_gkAddHeadersFromDictionary:(id)dictionary
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10019CE24;
  v3[3] = &unk_10036A3A0;
  v3[4] = self;
  [dictionary enumerateKeysAndObjectsUsingBlock:v3];
}

@end