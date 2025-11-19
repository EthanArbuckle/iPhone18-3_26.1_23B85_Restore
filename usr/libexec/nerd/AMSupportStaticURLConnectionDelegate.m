@interface AMSupportStaticURLConnectionDelegate
- (AMSupportStaticURLConnectionDelegate)init;
- (AMSupportStaticURLConnectionDelegate)initWithData:(id)a3 Options:(id)a4;
- (id)waitForResponseOrError:(id *)a3;
- (void)connection:(id)a3 didFailWithError:(id)a4;
- (void)connection:(id)a3 didReceiveData:(id)a4;
- (void)connection:(id)a3 didReceiveResponse:(id)a4;
- (void)connection:(id)a3 willSendRequestForAuthenticationChallenge:(id)a4;
- (void)connectionDidFinishLoading:(id)a3;
- (void)dealloc;
@end

@implementation AMSupportStaticURLConnectionDelegate

- (AMSupportStaticURLConnectionDelegate)init
{
  v3 = [NSMutableData dataWithCapacity:0];

  return [(AMSupportStaticURLConnectionDelegate *)self initWithData:v3 Options:0];
}

- (AMSupportStaticURLConnectionDelegate)initWithData:(id)a3 Options:(id)a4
{
  AMSupportLogInternal(7, "[AMSupportStaticURLConnectionDelegate initWithData:Options:]", "init-ing delegate with data=%@ options=%@", a4, v4, v5, v6, v7, a3);
  v15.receiver = self;
  v15.super_class = AMSupportStaticURLConnectionDelegate;
  v11 = [(AMSupportStaticURLConnectionDelegate *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->requestComplete = 0;
    v11->options = a4;
    v12->response = 0;
    v13 = a3;
    v12->_data = v13;
    [(NSMutableData *)v13 setLength:0];
  }

  return v12;
}

- (void)dealloc
{
  AMSupportLogInternal(7, "[AMSupportStaticURLConnectionDelegate dealloc]", "dealloc-ing delegate", v2, v3, v4, v5, v6, v8);

  self->response = 0;
  self->_data = 0;

  self->_error = 0;
  v9.receiver = self;
  v9.super_class = AMSupportStaticURLConnectionDelegate;
  [(AMSupportStaticURLConnectionDelegate *)&v9 dealloc];
}

- (id)waitForResponseOrError:(id *)a3
{
    ;
  }

  error = self->_error;
  if (!error)
  {
    return self->response;
  }

  if (!a3)
  {
    return 0;
  }

  v6 = error;
  result = 0;
  *a3 = v6;
  return result;
}

- (void)connection:(id)a3 willSendRequestForAuthenticationChallenge:(id)a4
{
  v6 = [objc_msgSend(a4 protectionSpace];
  AMSupportLogInternal(7, "[AMSupportStaticURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Authentication challenge received.  Method: %@", v7, v8, v9, v10, v11, v6);
  if ([a4 previousFailureCount] >= 1)
  {
    [objc_msgSend(a4 "sender")];

    AMSupportLogInternal(3, "[AMSupportStaticURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Multiple challenge failures.  Aborting.", v12, v13, v14, v15, v16, v105);
    return;
  }

  if ([v6 isEqual:NSURLAuthenticationMethodClientCertificate] && -[NSDictionary objectForKey:](self->options, "objectForKey:", @"ClientIdentity"))
  {
    AMSupportLogInternal(7, "[AMSupportStaticURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Received client certificate challenge.", v17, v18, v19, v20, v21, v89);
    v22 = [(NSDictionary *)self->options objectForKey:@"ClientIdentity"];
    items = 0;
    v23 = [(NSDictionary *)self->options objectForKey:@"ClientIdentityPassphrase"];
    v24 = &stru_1000A1550;
    if (v23)
    {
      v24 = v23;
    }

    values = v24;
    keys = kSecImportExportPassphrase;
    v25 = CFDictionaryCreate(0, &keys, &values, 1, 0, 0);
    Length = CFDataGetLength(v22);
    AMSupportLogInternal(7, "[AMSupportStaticURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "P12 Identity data length=%d", v27, v28, v29, v30, v31, Length);
    v32 = SecPKCS12Import(v22, v25, &items);
    CFRelease(v25);
    if (!v32)
    {
      AMSupportLogInternal(7, "[AMSupportStaticURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Successfully imported PKCS12 identity", v33, v34, v35, v36, v37, v90);
      ValueAtIndex = CFArrayGetValueAtIndex(items, 0);
      Value = CFDictionaryGetValue(ValueAtIndex, kSecImportItemIdentity);
      certificateRef = 0;
      SecIdentityCopyCertificate(Value, &certificateRef);
      v101 = certificateRef;
      v52 = CFArrayCreate(0, &v101, 1, 0);
      CFRelease(certificateRef);
      v53 = [NSURLCredential credentialWithIdentity:Value certificates:v52 persistence:2];
      CFRelease(v52);
      [objc_msgSend(a4 "sender")];
      AMSupportLogInternal(7, "[AMSupportStaticURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Returned credentials for challenge.", v54, v55, v56, v57, v58, v91);
      return;
    }

    AMSupportLogInternal(3, "[AMSupportStaticURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Unable to import client identity, aborting challenge.", v33, v34, v35, v36, v37, v90);
    v38 = [a4 sender];
    v39 = a4;
    goto LABEL_40;
  }

  if ([v6 isEqual:NSURLAuthenticationMethodServerTrust])
  {
    if ([-[NSDictionary objectForKey:](self->options objectForKey:{@"DisableSSLValidation", "isEqual:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1)}])
    {
      AMSupportLogInternal(6, "[AMSupportStaticURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "SSL validation disabled.  Attempting to continue without authentication.", v40, v41, v42, v43, v44, v89);
      v45 = [a4 sender];
      v46 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [objc_msgSend(a4 "protectionSpace")]);

      [v45 useCredential:v46 forAuthenticationChallenge:a4];
      return;
    }

    [(NSDictionary *)self->options objectForKey:@"TrustedServerCAs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || ([(NSDictionary *)self->options objectForKey:@"TrustedServerCAs"], objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [(NSDictionary *)self->options objectForKey:@"TrustedServerCAs"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v48 = [(NSDictionary *)self->options objectForKey:@"TrustedServerCAs"];
      v93 = a4;
      if ((isKindOfClass & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v48 = [NSArray arrayWithObject:[(NSDictionary *)self->options objectForKey:@"TrustedServerCAs"]];
        }

        else
        {
          v48 = 0;
        }
      }

      v59 = [NSMutableArray arrayWithCapacity:[(NSArray *)v48 count]];
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v60 = [(NSArray *)v48 countByEnumeratingWithState:&v97 objects:v96 count:16];
      if (v60)
      {
        v61 = v60;
        v62 = *v98;
        do
        {
          for (i = 0; i != v61; i = i + 1)
          {
            if (*v98 != v62)
            {
              objc_enumerationMutation(v48);
            }

            v64 = *(*(&v97 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v65 = SecCertificateCreateWithData(kCFAllocatorDefault, v64);
              if (v65)
              {
                v71 = v65;
                [(NSMutableArray *)v59 addObject:v65];
                CFRelease(v71);
              }

              else
              {
                AMSupportLogInternal(4, "[AMSupportStaticURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "trusted certificate could not be loaded %@", v66, v67, v68, v69, v70, v64);
              }
            }
          }

          v61 = [(NSArray *)v48 countByEnumeratingWithState:&v97 objects:v96 count:16];
        }

        while (v61);
      }

      v72 = [objc_msgSend(v93 "protectionSpace")];
      LODWORD(items) = 0;
      AMSupportLogInternal(7, "[AMSupportStaticURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Attempting trust evaluate", v73, v74, v75, v76, v77, v89);
      v83 = AMSupportX509ChainEvaluateTrust(v72, v59, &items, v78, v79, v80, v81, v82);
      if (v83)
      {
        AMSupportLogInternal(3, "[AMSupportStaticURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "trust evaluation failed (OSStatus=%d)", v84, v85, v86, v87, v88, v83);
      }

      else
      {
        if (items == 4 || items == 1)
        {
          AMSupportLogInternal(7, "[AMSupportStaticURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Trust evaluation succeeded, proceeding..", v84, v85, v86, v87, v88, v92);
          [objc_msgSend(v93 "sender")];
          return;
        }

        AMSupportLogInternal(4, "[AMSupportStaticURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "trust evaluation did not result in okay to proceed (result=%d)", v84, v85, v86, v87, v88, items);
      }

      v38 = [v93 sender];
      v39 = v93;
LABEL_40:
      [v38 cancelAuthenticationChallenge:v39];
      return;
    }
  }

  v49 = [a4 sender];

  [v49 performDefaultHandlingForAuthenticationChallenge:a4];
}

- (void)connection:(id)a3 didReceiveResponse:(id)a4
{
  v5 = a4;
  self->response = v5;
  AMSupportLogInternal(7, "[AMSupportStaticURLConnectionDelegate connection:didReceiveResponse:]", "Received response from URL: %@", v6, v7, v8, v9, v10, v5);
}

- (void)connection:(id)a3 didReceiveData:(id)a4
{
  v6 = [a4 length];
  AMSupportLogInternal(7, "[AMSupportStaticURLConnectionDelegate connection:didReceiveData:]", "Receiving %d bytes of data from URL", v7, v8, v9, v10, v11, v6);
  data = self->_data;

  [(NSMutableData *)data appendData:a4];
}

- (void)connectionDidFinishLoading:(id)a3
{
  v4 = [(NSMutableData *)self->_data length];
  AMSupportLogInternal(7, "[AMSupportStaticURLConnectionDelegate connectionDidFinishLoading:]", "Finished loading URL.  Total bytes: %d", v5, v6, v7, v8, v9, v4);
  self->requestComplete = 1;
}

- (void)connection:(id)a3 didFailWithError:(id)a4
{
  v4 = a4;
  self->_error = a4;
  AMSupportLogInternal(3, "[AMSupportStaticURLConnectionDelegate connection:didFailWithError:]", "Connection error %@ for URL", v6, v7, v8, v9, v10, v4);
  self->requestComplete = 1;
}

@end