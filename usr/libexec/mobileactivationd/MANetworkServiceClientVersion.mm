@interface MANetworkServiceClientVersion
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
@end

@implementation MANetworkServiceClientVersion

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  if ([challengeCopy previousFailureCount] < 1)
  {
    protectionSpace = [challengeCopy protectionSpace];
    authenticationMethod = [protectionSpace authenticationMethod];
    v13 = [authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust];

    if ((v13 & 1) == 0)
    {
      handlerCopy[2](handlerCopy, 1, 0);
      goto LABEL_5;
    }

    result = kSecTrustResultInvalid;
    protectionSpace2 = [challengeCopy protectionSpace];
    SecTrustEvaluate([protectionSpace2 serverTrust], &result);

    if ([(MANetworkServiceClientVersion *)self allowInvalidCert]|| (v15 = result, result == kSecTrustResultProceed) || result == kSecTrustResultUnspecified)
    {
      protectionSpace3 = [challengeCopy protectionSpace];
      v17 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [protectionSpace3 serverTrust]);

      (handlerCopy)[2](handlerCopy, 0, v17);
      v10 = v17;
      goto LABEL_4;
    }

    protectionSpace4 = [challengeCopy protectionSpace];
    [protectionSpace4 serverTrust];
    v19 = SecTrustCopyFailureDescription();
    v9 = createMobileActivationError("[MANetworkServiceClientVersion URLSession:didReceiveChallenge:completionHandler:]", 131, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to evaluate trust: %d (%@)", v15, v19);
  }

  else
  {
    v9 = createMobileActivationError("[MANetworkServiceClientVersion URLSession:didReceiveChallenge:completionHandler:]", 60, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Previous challenge failures.");
  }

  [(MANetworkServiceClientVersion *)self setLastNetworkError:v9];
  handlerCopy[2](handlerCopy, 2, 0);
  v10 = v9;
LABEL_4:

LABEL_5:
}

@end