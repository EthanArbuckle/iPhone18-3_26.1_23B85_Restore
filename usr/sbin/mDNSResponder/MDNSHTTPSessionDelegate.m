@interface MDNSHTTPSessionDelegate
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
@end

@implementation MDNSHTTPSessionDelegate

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v13 = a5;
  v7 = a6;
  v8 = [v13 protectionSpace];
  v9 = [v8 authenticationMethod];
  v10 = [v9 isEqualToString:NSURLAuthenticationMethodServerTrust];

  if (v10)
  {
    v11 = [v13 protectionSpace];
    v12 = [v11 serverTrust];

    if (v12)
    {
      SecTrustSetNetworkFetchAllowed(v12, 0);
    }
  }

  v7[2](v7, 1, 0);
}

@end