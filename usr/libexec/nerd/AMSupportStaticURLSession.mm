@interface AMSupportStaticURLSession
- (AMSupportStaticURLSession)initWithOptions:(id)a3;
- (id)_defaultSessionConfigurationWithIdentifier:(id)a3;
- (id)_newSession;
- (id)_urlRequestForHTTPMessage:(__CFHTTPMessage *)a3;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)dealloc;
- (void)sendRequest:(__CFHTTPMessage *)a3 completion:(id)a4;
@end

@implementation AMSupportStaticURLSession

- (id)_defaultSessionConfigurationWithIdentifier:(id)a3
{
  v4 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v5 = [(NSDictionary *)self->_options objectForKey:@"SocksProxySettings"];
  if (v5)
  {
    v6 = v5;
    v7 = v5;
LABEL_3:
    [(NSURLSessionConfiguration *)v4 setConnectionProxyDictionary:v6];

    goto LABEL_6;
  }

  if ([-[NSDictionary objectForKey:](self->_options objectForKey:{@"UsePurpleReverseProxy", "BOOLValue"}])
  {
    v6 = AMSupportHttpCopyProxySettings(0, 0);
    if (v6)
    {
      goto LABEL_3;
    }
  }

LABEL_6:
  [(NSURLSessionConfiguration *)v4 setTimeoutIntervalForRequest:self->_timeout];
  [(NSURLSessionConfiguration *)v4 setAllowsCellularAccess:1];
  [(NSURLSessionConfiguration *)v4 set_shouldSkipPreferredClientCertificateLookup:1];
  return v4;
}

- (id)_newSession
{
  v2 = [NSURLSession sessionWithConfiguration:[(AMSupportStaticURLSession *)self _defaultSessionConfigurationWithIdentifier:@"com.apple.libamsupport.http-traffic"] delegate:self delegateQueue:0];

  return v2;
}

- (AMSupportStaticURLSession)initWithOptions:(id)a3
{
  v10.receiver = self;
  v10.super_class = AMSupportStaticURLSession;
  v4 = [(AMSupportStaticURLSession *)&v10 init];
  if (v4)
  {
    v5 = [a3 objectForKey:@"Timeout"];
    if (v5)
    {
      [v5 doubleValue];
    }

    else
    {
      v6 = 0x4072C00000000000;
    }

    *&v4->_timeout = v6;
    v7 = [a3 objectForKey:@"Priority"];
    if (v7)
    {
      [v7 floatValue];
    }

    else
    {
      v8 = 0.5;
    }

    v4->_priority = v8;
    v4->_queue = dispatch_queue_create("com.apple.libamsupport.http-session", 0);
    v4->_options = a3;
    v4->_session = [(AMSupportStaticURLSession *)v4 _newSession];
    v4->_sslEvalFailed = 0;
  }

  return v4;
}

- (void)dealloc
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  v4.receiver = self;
  v4.super_class = AMSupportStaticURLSession;
  [(AMSupportStaticURLSession *)&v4 dealloc];
}

- (id)_urlRequestForHTTPMessage:(__CFHTTPMessage *)a3
{
  if (!a3)
  {
    return 0;
  }

  v5 = CFHTTPMessageCopyRequestURL(a3);
  if (!v5)
  {
    return 0;
  }

  v6 = [NSMutableURLRequest requestWithURL:v5 cachePolicy:1 timeoutInterval:self->_timeout];
  if (!v6)
  {
    return v6;
  }

  v7 = CFHTTPMessageCopyRequestMethod(a3);
  if (!v7)
  {
    return 0;
  }

  [(NSMutableURLRequest *)v6 setHTTPMethod:v7];
  v8 = CFHTTPMessageCopyAllHeaderFields(a3);
  if (v8)
  {
    [(NSMutableURLRequest *)v6 setAllHTTPHeaderFields:v8];
  }

  v9 = CFHTTPMessageCopyBody(a3);
  if (v9)
  {
    [(NSMutableURLRequest *)v6 setHTTPBody:v9];
  }

  return v6;
}

- (void)sendRequest:(__CFHTTPMessage *)a3 completion:(id)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3254779904;
  v5[2] = __52__AMSupportStaticURLSession_sendRequest_completion___block_invoke;
  v5[3] = &__block_descriptor_56_e8_32o40b_e5_v8__0l;
  v5[5] = a4;
  v5[6] = a3;
  v5[4] = self;
  dispatch_sync(queue, v5);
}

void __52__AMSupportStaticURLSession_sendRequest_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _urlRequestForHTTPMessage:*(a1 + 48)];
  if (v2)
  {
    v8 = [*(*(a1 + 32) + 32) dataTaskWithRequest:v2 completionHandler:*(a1 + 40)];
    LODWORD(v9) = *(*(a1 + 32) + 24);
    [v8 setPriority:v9];

    [v8 resume];
  }

  else
  {
    AMSupportLogInternal(3, "[AMSupportStaticURLSession sendRequest:completion:]_block_invoke", "Could not construct NSURLRequest from message %@", v3, v4, v5, v6, v7, *(a1 + 48));
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3254779904;
    block[2] = __52__AMSupportStaticURLSession_sendRequest_completion___block_invoke_2;
    block[3] = &__block_descriptor_40_e8_32b_e5_v8__0l;
    block[4] = *(a1 + 40);
    dispatch_async(global_queue, block);
  }
}

uint64_t __52__AMSupportStaticURLSession_sendRequest_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:@"AMSupportError" code:3 userInfo:0];
  v3 = *(v1 + 16);

  return v3(v1, 0, 0, v2);
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  if (a4)
  {
    AMSupportLogInternal(3, "[AMSupportStaticURLSession URLSession:didBecomeInvalidWithError:]", "Session %@ became invalid: %@", a4, v4, v5, v6, v7, a3);
  }
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v8 = [objc_msgSend(a4 protectionSpace];
  AMSupportLogInternal(7, "[AMSupportStaticURLSession URLSession:didReceiveChallenge:completionHandler:]", "Authentication challenge received.  Method: %@", v9, v10, v11, v12, v13, v8);
  if ([a4 previousFailureCount] < 1)
  {
    if ([v8 isEqual:NSURLAuthenticationMethodClientCertificate] && -[NSDictionary objectForKey:](self->_options, "objectForKey:", @"ClientIdentity"))
    {
      AMSupportLogInternal(6, "[AMSupportStaticURLSession URLSession:didReceiveChallenge:completionHandler:]", "Received client certificate challenge. Client SSL authentication failed.", v23, v24, v25, v26, v27, v68);
    }

    else
    {
      if (([v8 isEqual:NSURLAuthenticationMethodServerTrust] & 1) == 0)
      {
        v19 = *(a5 + 2);
        v20 = a5;
        v21 = 1;
        goto LABEL_3;
      }

      if ([-[NSDictionary objectForKey:](self->_options objectForKey:{@"DisableSSLValidation", "isEqual:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1)}])
      {
        AMSupportLogInternal(6, "[AMSupportStaticURLSession URLSession:didReceiveChallenge:completionHandler:]", "SSL validation disabled.  Attempting to continue without authentication.", v28, v29, v30, v31, v32, v68);
        v33 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [objc_msgSend(a4 "protectionSpace")]);
        v19 = *(a5 + 2);
        v22 = v33;
        v20 = a5;
        v21 = 0;
        goto LABEL_4;
      }

      [(NSDictionary *)self->_options objectForKey:@"TrustedServerCAs"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(NSDictionary *)self->_options objectForKey:@"TrustedServerCAs"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v36 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [objc_msgSend(a4 "protectionSpace")]);
          v19 = *(a5 + 2);
          v22 = v36;
          v20 = a5;
          v21 = 1;
          goto LABEL_4;
        }
      }

      [(NSDictionary *)self->_options objectForKey:@"TrustedServerCAs"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v35 = [(NSDictionary *)self->_options objectForKey:@"TrustedServerCAs"];
      v70 = self;
      if ((isKindOfClass & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v35 = [NSArray arrayWithObject:[(NSDictionary *)self->_options objectForKey:@"TrustedServerCAs"]];
        }

        else
        {
          v35 = 0;
        }
      }

      v37 = [NSMutableArray arrayWithCapacity:[(NSArray *)v35 count]];
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v38 = [(NSArray *)v35 countByEnumeratingWithState:&v73 objects:v72 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v74;
        do
        {
          for (i = 0; i != v39; i = i + 1)
          {
            if (*v74 != v40)
            {
              objc_enumerationMutation(v35);
            }

            v42 = *(*(&v73 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v43 = SecCertificateCreateWithData(kCFAllocatorDefault, v42);
              if (v43)
              {
                v49 = v43;
                [(NSMutableArray *)v37 addObject:v43];
                CFRelease(v49);
              }

              else
              {
                AMSupportLogInternal(4, "[AMSupportStaticURLSession URLSession:didReceiveChallenge:completionHandler:]", "trusted certificate could not be loaded %@", v44, v45, v46, v47, v48, v42);
              }
            }
          }

          v39 = [(NSArray *)v35 countByEnumeratingWithState:&v73 objects:v72 count:16];
        }

        while (v39);
      }

      v50 = [objc_msgSend(a4 "protectionSpace")];
      v71 = 0;
      AMSupportLogInternal(7, "[AMSupportStaticURLSession URLSession:didReceiveChallenge:completionHandler:]", "Attempting trust evaluate", v51, v52, v53, v54, v55, v68);
      v61 = AMSupportX509ChainEvaluateTrust(v50, v37, &v71, v56, v57, v58, v59, v60);
      if (v61)
      {
        AMSupportLogInternal(3, "[AMSupportStaticURLSession URLSession:didReceiveChallenge:completionHandler:]", "trust evaluation failed (OSStatus=%d)", v62, v63, v64, v65, v66, v61);
        v67 = v70;
      }

      else
      {
        v67 = v70;
        if (v71 == 4 || v71 == 1)
        {
          AMSupportLogInternal(7, "[AMSupportStaticURLSession URLSession:didReceiveChallenge:completionHandler:]", "Trust evaluation succeeded, proceeding..", v62, v63, v64, v65, v66, v69);
          (*(a5 + 2))(a5, 0, [NSURLCredential credentialForTrust:v50]);
          return;
        }

        AMSupportLogInternal(4, "[AMSupportStaticURLSession URLSession:didReceiveChallenge:completionHandler:]", "trust evaluation did not result in okay to proceed (result=%d)", v62, v63, v64, v65, v66, v71);
      }

      v67->_sslEvalFailed = 1;
    }

    (*(a5 + 2))(a5, 2, 0);
    return;
  }

  AMSupportLogInternal(3, "[AMSupportStaticURLSession URLSession:didReceiveChallenge:completionHandler:]", "Multiple challenge failures. Request failed.", v14, v15, v16, v17, v18, v68);
  v19 = *(a5 + 2);
  v20 = a5;
  v21 = 2;
LABEL_3:
  v22 = 0;
LABEL_4:

  v19(v20, v21, v22);
}

@end