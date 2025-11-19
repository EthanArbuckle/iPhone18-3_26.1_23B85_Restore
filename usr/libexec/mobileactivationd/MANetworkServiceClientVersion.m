@interface MANetworkServiceClientVersion
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
@end

@implementation MANetworkServiceClientVersion

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([v7 previousFailureCount] < 1)
  {
    v11 = [v7 protectionSpace];
    v12 = [v11 authenticationMethod];
    v13 = [v12 isEqualToString:NSURLAuthenticationMethodServerTrust];

    if ((v13 & 1) == 0)
    {
      v8[2](v8, 1, 0);
      goto LABEL_5;
    }

    result = kSecTrustResultInvalid;
    v14 = [v7 protectionSpace];
    SecTrustEvaluate([v14 serverTrust], &result);

    if ([(MANetworkServiceClientVersion *)self allowInvalidCert]|| (v15 = result, result == kSecTrustResultProceed) || result == kSecTrustResultUnspecified)
    {
      v16 = [v7 protectionSpace];
      v17 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [v16 serverTrust]);

      (v8)[2](v8, 0, v17);
      v10 = v17;
      goto LABEL_4;
    }

    v18 = [v7 protectionSpace];
    [v18 serverTrust];
    v19 = SecTrustCopyFailureDescription();
    v9 = createMobileActivationError("[MANetworkServiceClientVersion URLSession:didReceiveChallenge:completionHandler:]", 131, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to evaluate trust: %d (%@)", v15, v19);
  }

  else
  {
    v9 = createMobileActivationError("[MANetworkServiceClientVersion URLSession:didReceiveChallenge:completionHandler:]", 60, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Previous challenge failures.");
  }

  [(MANetworkServiceClientVersion *)self setLastNetworkError:v9];
  v8[2](v8, 2, 0);
  v10 = v9;
LABEL_4:

LABEL_5:
}

@end