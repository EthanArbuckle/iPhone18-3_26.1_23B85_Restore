@interface SDAppleIDServerTask
- (BOOL)_isTaskInfoValid;
- (SDAppleIDServerTask)initWithType:(int64_t)a3 appleID:(id)a4 info:(id)a5;
- (id)_parseCreateCertificateResponse:(id)a3 error:(int *)a4;
- (id)_parseFetchCertificateResponse:(id)a3 error:(int *)a4;
- (id)_parseFindPersonResponse:(id)a3 error:(int *)a4;
- (id)_parseGetMyInfoResponse:(id)a3 error:(int *)a4;
- (id)_parseServerResponse:(id)a3 error:(int *)a4;
- (id)description;
- (void)_activate;
- (void)_callResponseHandlerWithInfo:(id)a3 errorInfo:(id)a4 error:(int)a5;
- (void)_handleGSTokenIsAvailable;
- (void)_handleServerError:(int64_t)a3 withStatusCode:(int64_t)a4 nextSuggestedAttemptDelay:(int64_t)a5 responseInfo:(id)a6;
- (void)_handleURLRequestIsAvailable;
- (void)_invalidate;
- (void)_sendRequest;
- (void)_urlRequestWithCompletion:(id)a3;
- (void)_urlWithCompletion:(id)a3;
- (void)activate;
- (void)invalidate;
@end

@implementation SDAppleIDServerTask

- (SDAppleIDServerTask)initWithType:(int64_t)a3 appleID:(id)a4 info:(id)a5
{
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = SDAppleIDServerTask;
  v11 = [(SDAppleIDServerTask *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_appleID, a4);
    v13 = SFMainQueue();
    dispatchQueue = v12->_dispatchQueue;
    v12->_dispatchQueue = v13;

    objc_storeStrong(&v12->_taskInfo, a5);
    v12->_type = a3;
    v15 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    [v15 setTimeoutIntervalForResource:3600.0];
    if ((a3 - 3) <= 1)
    {
      [v15 setTimeoutIntervalForRequest:15.0];
    }

    [v15 set_tlsTrustPinningPolicyName:kSecPolicyNameAppleAIDCService];
    v16 = [[AKAppleIDSession alloc] initWithIdentifier:@"com.apple.coreservices.appleidauthagent"];
    [v15 setWaitsForConnectivity:(a3 - 5) < 0xFFFFFFFFFFFFFFFELL];
    [v15 set_appleIDContext:v16];
    v17 = [NSURLSession sessionWithConfiguration:v15];
    session = v12->_session;
    v12->_session = v17;
  }

  return v12;
}

- (id)description
{
  NSAppendPrintF();

  return 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100147FA8;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_callResponseHandlerWithInfo:(id)a3 errorInfo:(id)a4 error:(int)a5
{
  v12 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v9 = [(SDAppleIDServerTask *)self responseHandler];

  if (v9)
  {
    if (a5)
    {
      v10 = [NSError errorWithDomain:SFAppleIDErrorDomain code:a5 userInfo:v8];
    }

    else
    {
      v10 = 0;
    }

    v11 = [(SDAppleIDServerTask *)self responseHandler];
    (v11)[2](v11, v12, v10);

    [(SDAppleIDServerTask *)self setResponseHandler:0];
  }
}

- (void)_urlWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (v4)
  {
    if (dword_100971638 <= 30 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      sub_10014B770();
    }

    v5 = [(SDAppleIDServerTask *)self type];
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001481B8;
    block[3] = &unk_1008D1728;
    v9 = v5;
    block[4] = self;
    v8 = v4;
    dispatch_async(v6, block);
  }

  else
  {
    sub_10014B78C(dword_100971638);
  }
}

- (void)_urlRequestWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!v4)
  {
    v6 = 4294960591;
LABEL_7:
    sub_10014B888(v4 == 0, v4, v6);
    goto LABEL_4;
  }

  v5 = [(SDAppleIDServerTask *)self gsToken];

  if (!v5)
  {
    v6 = 4294960587;
    goto LABEL_7;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001487F8;
  v7[3] = &unk_1008D1750;
  v7[4] = self;
  v8 = v4;
  [(SDAppleIDServerTask *)self _urlWithCompletion:v7];

LABEL_4:
}

- (void)_activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_activated)
  {
    sub_10014B9E8();
    return;
  }

  if (self->_invalidated)
  {
    sub_10014B96C(dword_100971638, &v4);
    v3 = v4;
LABEL_13:
    sub_10014B9DC(self, v3);
    return;
  }

  if (dword_100971638 <= 30 && (dword_100971638 != -1 || _LogCategory_Initialize()))
  {
    sub_10014B950();
  }

  if (![(SDAppleIDServerTask *)self _isTaskInfoValid])
  {
    v3 = 4294960591;
    goto LABEL_13;
  }

  [(SDAppleIDServerTask *)self _sendRequest];
  self->_activated = 1;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100148940;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_handleURLRequestIsAvailable
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = [(SDAppleIDServerTask *)self urlRequest];

  if (v3)
  {
    session = self->_session;
    v6 = [(SDAppleIDServerTask *)self urlRequest];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100148A94;
    v7[3] = &unk_1008D1778;
    v7[4] = self;
    v3 = [(NSURLSession *)session dataTaskWithRequest:v6 completionHandler:v7];

    [v3 resume];
    if (dword_100971638 <= 30)
    {
      if (dword_100971638 != -1 || _LogCategory_Initialize())
      {
        sub_10014BA48(self);
      }

      if (dword_100971638 <= 10 && (dword_100971638 != -1 || _LogCategory_Initialize()))
      {
        sub_10014BAAC(self);
      }
    }
  }

  else
  {
    sub_10014BB34(self, v4);
  }
}

- (void)_handleGSTokenIsAvailable
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = [(SDAppleIDServerTask *)self gsToken];

  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100148C78;
    v5[3] = &unk_1008D17A0;
    v5[4] = self;
    [(SDAppleIDServerTask *)self _urlRequestWithCompletion:v5];
  }

  else
  {
    sub_10014BB34(self, v4);
  }
}

- (void)_handleServerError:(int64_t)a3 withStatusCode:(int64_t)a4 nextSuggestedAttemptDelay:(int64_t)a5 responseInfo:(id)a6
{
  v10 = [a6 mutableCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_opt_new();
  }

  v18 = v12;

  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (a4 == 401)
  {
    v13 = 201215;
    if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      sub_10014BB38();
    }
  }

  else if (a4 == 200)
  {
    v13 = 201215;
    if (a3 > -20210)
    {
      if (a3 == -1)
      {
        v13 = 201221;
        goto LABEL_29;
      }

      if (a3 == -20209)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if ((a3 + 22412) < 4)
      {
LABEL_8:
        if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
        {
          sub_10014BBC0();
        }

        goto LABEL_29;
      }

      if (a3 == -22413)
      {
        if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
        {
          sub_10014BB7C();
        }

        v13 = 201217;
        goto LABEL_29;
      }
    }

    if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      sub_10014BC0C();
    }

    v13 = 201200;
  }

  else
  {
    if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      v16 = a4;
      v17 = a3;
      LogPrintF();
    }

    v13 = 4294960584;
  }

LABEL_29:
  if (a5)
  {
    v14 = [NSNumber numberWithInteger:a5];
    [v18 setObject:v14 forKeyedSubscript:SFAppleIDErrorUserInfoRetryDelaySecondsKey];
  }

  v15 = [v18 copy];
  [(SDAppleIDServerTask *)self _callResponseHandlerWithInfo:0 errorInfo:v15 error:v13];
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidated)
  {
    sub_10014BCB0(dword_100971638);
  }

  else
  {
    if (dword_100971638 <= 30 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      sub_10014BC4C(self);
    }

    if (self->_activated)
    {
      [(SDAppleIDServerTask *)self _callResponseHandlerWithInfo:0 error:4294960573];
    }

    self->_invalidated = 1;
  }
}

- (id)_parseCreateCertificateResponse:(id)a3 error:(int *)a4
{
  v5 = a3;
  CFStringGetTypeID();
  v6 = CFDictionaryGetTypedValue();
  if (!v6)
  {
    if (dword_100971638 <= 90 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      sub_10014BFFC();
    }

    goto LABEL_29;
  }

  CFDictionaryGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  if (!v7)
  {
    if (dword_100971638 <= 90 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      sub_10014BFE0();
    }

LABEL_29:
    v8 = 0;
    goto LABEL_30;
  }

  v8 = v7;
  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  if (v9)
  {
    v10 = v9;
    v11 = NSDictionaryGetNSNumber();
    v12 = v11;
    if (v11)
    {
      v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 integerValue] / 1000);
    }

    else
    {
      v13 = 0;
    }

    if (dword_100971638 <= 30 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      v19 = v10;
      v20 = v13;
      v18 = v6;
      LogPrintF();
    }

    if (!v13 || ([v13 integerValue] & 0x8000000000000000) != 0)
    {
      v14 = &off_10090BD30;
    }

    else
    {
      if ([v13 integerValue] < 601)
      {
        goto LABEL_17;
      }

      v14 = &off_10090BD48;
    }

    v13 = v14;
LABEL_17:
    v21[0] = @"AltDSID";
    v21[1] = @"CertificateToken";
    v22[0] = v6;
    v22[1] = v10;
    v21[2] = @"Delay";
    v22[2] = v13;
    v15 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3, v18, v19, v20];
    v16 = 0;
    if (!a4)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (dword_100971638 <= 90 && (dword_100971638 != -1 || _LogCategory_Initialize()))
  {
    sub_10014BFC4();
  }

LABEL_30:
  v10 = 0;
  v12 = 0;
  v13 = 0;
  v15 = 0;
  v16 = 201240;
  if (a4)
  {
LABEL_18:
    *a4 = v16;
  }

LABEL_19:

  return v15;
}

- (id)_parseServerResponse:(id)a3 error:(int *)a4
{
  v6 = a3;
  v7 = v6;
  v13 = 0;
  type = self->_type;
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_17;
      }

      v9 = [(SDAppleIDServerTask *)self _parseFetchCertificateResponse:v6 error:&v13];
    }

    else
    {
      v9 = [(SDAppleIDServerTask *)self _parseCreateCertificateResponse:v6 error:&v13];
    }

LABEL_12:
    v10 = v9;
    if (!a4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  switch(type)
  {
    case 2:
      v9 = [(SDAppleIDServerTask *)self _parseGetMyInfoResponse:v6 error:&v13];
      goto LABEL_12;
    case 3:
      v9 = [(SDAppleIDServerTask *)self _parseFindPersonResponse:v6 error:&v13];
      goto LABEL_12;
    case 4:
      v9 = [v6 copy];
      goto LABEL_12;
  }

LABEL_17:
  if (dword_100971638 > 90)
  {
    goto LABEL_21;
  }

  if (dword_100971638 != -1)
  {
    goto LABEL_19;
  }

  if (_LogCategory_Initialize())
  {
    v12 = self->_type;
LABEL_19:
    LogPrintF();
  }

LABEL_21:
  v10 = 0;
  v13 = -6756;
  if (a4)
  {
LABEL_13:
    *a4 = v13;
  }

LABEL_14:

  return v10;
}

- (void)_sendRequest
{
  v3 = [(SDAppleIDServerTask *)self appleID];
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10014B648;
  v5[3] = &unk_1008D17C8;
  v5[4] = self;
  sub_100267938(v3, dispatchQueue, v5);
}

- (BOOL)_isTaskInfoValid
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = [(SDAppleIDServerTask *)self taskInfo];
  v4 = [v3 count];

  v5 = 0;
  isKindOfClass = 1;
  switch([(SDAppleIDServerTask *)self type])
  {
    case 0:
      if (v4 != 1)
      {
        goto LABEL_40;
      }

      v7 = [(SDAppleIDServerTask *)self taskInfo];
      v8 = v7;
      v9 = @"csr";
      goto LABEL_27;
    case 1:
      if (v4 != 1)
      {
        goto LABEL_40;
      }

      v7 = [(SDAppleIDServerTask *)self taskInfo];
      v8 = v7;
      v9 = @"certificateToken";
LABEL_27:
      v5 = [v7 objectForKeyedSubscript:v9];

      if (!v5)
      {
        goto LABEL_43;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      goto LABEL_42;
    case 2:
      if (v4 != 2)
      {
        goto LABEL_40;
      }

      v21 = [(SDAppleIDServerTask *)self taskInfo];
      v5 = [v21 objectForKeyedSubscript:@"serialNumber"];

      if (!v5)
      {
        goto LABEL_43;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_43;
      }

      v22 = [(SDAppleIDServerTask *)self taskInfo];
      v18 = [v22 objectForKeyedSubscript:@"clientAidvrId"];

      if (!v18)
      {
        goto LABEL_40;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      goto LABEL_34;
    case 3:
      if (v4 != 1)
      {
        goto LABEL_40;
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v10 = [(SDAppleIDServerTask *)self taskInfo];
      v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (!v11)
      {
        goto LABEL_14;
      }

      v12 = v11;
      v13 = *v25;
      break;
    case 4:
      goto LABEL_42;
    default:
      if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
      {
        [(SDAppleIDServerTask *)self type];
        LogPrintF();
      }

      goto LABEL_40;
  }

  while (2)
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v25 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v24 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![&off_100910130 containsObject:v15])
      {

LABEL_40:
        isKindOfClass = 0;
        goto LABEL_41;
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_14:

  v16 = [(SDAppleIDServerTask *)self taskInfo];
  v5 = [v16 objectForKeyedSubscript:@"emails"];

  isKindOfClass = v5 != 0;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v5 count] != 1)
    {
LABEL_43:
      isKindOfClass = 0;
      goto LABEL_42;
    }
  }

  v17 = [(SDAppleIDServerTask *)self taskInfo];
  v18 = [v17 objectForKeyedSubscript:@"phones"];

  if (!v18)
  {
LABEL_41:
    v5 = 0;
    goto LABEL_42;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [v18 count];
    if (v5)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19 == 1;
    }

    isKindOfClass = v20;
  }

  else
  {
    isKindOfClass = 0;
  }

LABEL_34:
  v5 = v18;
LABEL_42:

  return isKindOfClass & 1;
}

- (id)_parseFetchCertificateResponse:(id)a3 error:(int *)a4
{
  v6 = a3;
  v7 = +[NSMutableDictionary dictionary];
  if (!v7)
  {
    v31 = 0;
    v14 = 0;
    v9 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
    v28 = 0;
    v29 = 0;
    sub_100149BC8();
    v25 = 0;
    v26 = -6728;
    goto LABEL_80;
  }

  CFStringGetTypeID();
  sub_100019CA0();
  v8 = CFDictionaryGetTypedValue();
  if (v8)
  {
    sub_100023F44();
  }

  else if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFDictionaryGetTypeID();
  sub_100019CA0();
  v9 = CFDictionaryGetTypedValue();
  v31 = v8;
  if (!v9)
  {
    if (dword_100971638 <= 90 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v28 = 0;
    v29 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_64;
  }

  CFStringGetTypeID();
  sub_100149BD4();
  v10 = CFDictionaryGetTypedValue();
  v29 = v10;
  if (v10)
  {
    [v7 setObject:v10 forKeyedSubscript:@"CertificateToken"];
  }

  else if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFStringGetTypeID();
  sub_100149BD4();
  v11 = CFDictionaryGetTypedValue();
  v15 = [v11 lowercaseString];
  if ([v15 isEqualToString:@"issued"])
  {
    v5 = 1;
  }

  else if ([v15 isEqualToString:@"pending"])
  {
    v5 = 2;
  }

  else if ([v15 isEqualToString:@"failed"])
  {
    v5 = 3;
  }

  else if ([v15 isEqualToString:@"revoked"])
  {
    v5 = 4;
  }

  else if ([v15 isEqualToString:@"expired"])
  {
    v5 = 5;
  }

  else
  {
    v5 = 0;
  }

  v4 = &NSURLAuthenticationMethodServerTrust_ptr;
  v16 = [NSNumber numberWithInteger:v5];
  sub_100023F44();

  CFDictionaryGetDouble();
  if (v17 <= 0.0)
  {
    if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v14 = +[NSDate date];
    v20 = [v14 dateByAddingTimeInterval:15552000.0];
    v19 = 0;
  }

  else
  {
    v14 = [NSDate dateWithTimeIntervalSince1970:v17 / 1000.0];
    v18 = +[NSDate date];
    v19 = [v18 dateByAddingTimeInterval:155520000.0];

    if ([v19 compare:v14] != -1)
    {
      goto LABEL_40;
    }

    v20 = v19;
    v19 = v20;
  }

  v14 = v20;
LABEL_40:
  v28 = v19;
  if (v14)
  {
    [v7 setObject:v14 forKeyedSubscript:{@"CertificateExpirationDate", v19, v29}];
  }

  else if (dword_100971638 <= 90 && (dword_100971638 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFStringGetTypeID();
  sub_100149BD4();
  v13 = CFDictionaryGetTypedValue();
  if (v13)
  {
    [v7 setObject:v13 forKeyedSubscript:@"CertificatePEM"];
  }

  else if (dword_100971638 <= 90 && (dword_100971638 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFStringGetTypeID();
  sub_100149BD4();
  v12 = CFDictionaryGetTypedValue();
  if (v12)
  {
    [v7 setObject:v12 forKeyedSubscript:@"CertificateSerialNumber"];
  }

  else if (dword_100971638 <= 90 && (dword_100971638 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v5 != 2)
  {
LABEL_64:
    sub_100149BC8();
    goto LABEL_73;
  }

  v21 = NSDictionaryGetNSNumber();
  v5 = v21;
  if (!v21)
  {
    if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v4 = 0;
    goto LABEL_70;
  }

  v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v21 integerValue] / 1000);
  v4 = v22;
  if (!v22 || ([v22 integerValue] & 0x8000000000000000) != 0)
  {
LABEL_70:
    v23 = &off_10090BD30;
    goto LABEL_71;
  }

  if ([v4 integerValue] >= 601)
  {
    v23 = &off_10090BD48;
LABEL_71:

    v4 = v23;
  }

  [v7 setObject:v4 forKeyedSubscript:{@"Delay", v28}];
LABEL_73:
  CFStringGetTypeID();
  sub_100019CA0();
  v24 = CFDictionaryGetTypedValue();
  if (v24)
  {
    v25 = v24;
    sub_100023F44();
    v26 = 0;
  }

  else
  {
    if (dword_100971638 <= 90 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v26 = 0;
    v25 = 0;
  }

LABEL_80:
  if (a4)
  {
    *a4 = v26;
  }

  return v7;
}

- (id)_parseFindPersonResponse:(id)a3 error:(int *)a4
{
  v21 = a4;
  v10 = a3;
  v11 = +[NSDate date];
  v22 = v10;
  if (!v11)
  {
    sub_100008978();
    v13 = 0;
    sub_100149BC8();
    goto LABEL_69;
  }

  CFArrayGetTypeID();
  v12 = CFDictionaryGetTypedValue();
  if (v12)
  {
    v13 = v12;
    if ([v12 count])
    {
      if ([v13 count] == 1)
      {
        v7 = [v13 firstObject];
        v6 = +[NSMutableDictionary dictionary];
        if (v6)
        {
          CFStringGetTypeID();
          sub_100021EBC();
          v5 = CFDictionaryGetTypedValue();
          if (v5)
          {
            [v6 setObject:v5 forKeyedSubscript:@"AccountIdentifier"];
          }

          else if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          CFStringGetTypeID();
          sub_100021EBC();
          v8 = CFDictionaryGetTypedValue();
          if (v8)
          {
            [v6 setObject:v8 forKeyedSubscript:@"AltDSID"];
          }

          else if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          CFStringGetTypeID();
          sub_100021EBC();
          v14 = CFDictionaryGetTypedValue();
          v9 = v14;
          if (v14)
          {
            v15 = [v14 lowercaseString];
            if ([v15 isEqualToString:@"issued"])
            {
              v16 = 1;
            }

            else if ([v15 isEqualToString:@"pending"])
            {
              v16 = 2;
            }

            else if ([v15 isEqualToString:@"failed"])
            {
              v16 = 3;
            }

            else if ([v15 isEqualToString:@"revoked"])
            {
              v16 = 4;
            }

            else if ([v15 isEqualToString:@"expired"])
            {
              v16 = 5;
            }

            else
            {
              v16 = 0;
            }

            v17 = [NSNumber numberWithInteger:v16];
            [v6 setObject:v17 forKeyedSubscript:@"CertificateStatus"];
          }

          else if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          CFStringGetTypeID();
          sub_100021EBC();
          v10 = CFDictionaryGetTypedValue();
          if (v10)
          {
            [v6 setObject:v10 forKeyedSubscript:@"Matched"];
          }

          else if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          CFStringGetTypeID();
          sub_100021EBC();
          v4 = CFDictionaryGetTypedValue();
          if (v4)
          {
            [v6 setObject:v4 forKeyedSubscript:@"MatchedValue"];
          }

          else if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v18 = [v11 dateByAddingTimeInterval:{2592000.0, v21, v22}];
          [v6 setObject:v18 forKeyedSubscript:@"ValidUntil"];

          if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v19 = 0;
          goto LABEL_53;
        }

        sub_100008978();
LABEL_69:
        v19 = -6728;
        goto LABEL_53;
      }

      if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      sub_100008978();
      sub_100149BC8();
      v19 = 201241;
    }

    else
    {
      v19 = 201223;
      if (dword_100971638 <= 90 && (dword_100971638 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      sub_100008978();
      sub_100149BC8();
    }
  }

  else
  {
    if (dword_100971638 <= 90 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    sub_100008978();
    v13 = 0;
    sub_100149BC8();
    v19 = 201240;
  }

LABEL_53:
  if (v21)
  {
    *v21 = v19;
  }

  return v6;
}

- (id)_parseGetMyInfoResponse:(id)a3 error:(int *)a4
{
  v5 = a3;
  CFDictionaryGetTypeID();
  sub_100019CA0();
  v6 = CFDictionaryGetTypedValue();
  if (v6)
  {
    CFStringGetTypeID();
    sub_100021EBC();
    v43 = CFDictionaryGetTypedValue();
    CFDictionaryGetDouble();
    v8 = 0;
    if (v7 > 0.0)
    {
      v8 = [NSDate dateWithTimeIntervalSince1970:v7 / 1000.0];
    }

    CFStringGetTypeID();
    sub_100021EBC();
    v45 = CFDictionaryGetTypedValue();
    CFStringGetTypeID();
    sub_100021EBC();
    v9 = CFDictionaryGetTypedValue();
    v10 = [v9 lowercaseString];
    if ([v10 isEqualToString:@"issued"])
    {
      v11 = 1;
    }

    else if ([v10 isEqualToString:@"pending"])
    {
      v11 = 2;
    }

    else if ([v10 isEqualToString:@"failed"])
    {
      v11 = 3;
    }

    else if ([v10 isEqualToString:@"revoked"])
    {
      v11 = 4;
    }

    else
    {
      v12 = [v10 isEqualToString:@"expired"];
      v11 = 5;
      if (!v12)
      {
        v11 = 0;
      }
    }

    v40 = v11;

    if (dword_100971638 <= 30 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      v34 = v45;
      v35 = v9;
      v32 = v43;
      v33 = v8;
      LogPrintF();
    }
  }

  else
  {
    v8 = 0;
    v45 = 0;
    v9 = 0;
    v40 = 0;
    v43 = 0;
  }

  CFStringGetTypeID();
  sub_100019CA0();
  v44 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  sub_100019CA0();
  v50 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  sub_100019CA0();
  v49 = CFDictionaryGetTypedValue();
  CFDictionaryGetDouble();
  v14 = v13;
  CFArrayGetTypeID();
  sub_100019CA0();
  v48 = CFDictionaryGetTypedValue();
  CFArrayGetTypeID();
  sub_100019CA0();
  v47 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  sub_100019CA0();
  v15 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  sub_100019CA0();
  v46 = CFDictionaryGetTypedValue();
  v16 = NSDictionaryGetNSNumber();
  if (dword_100971638 <= 30)
  {
    if (dword_100971638 != -1 || _LogCategory_Initialize())
    {
      v36 = v47;
      v37 = v46;
      v35 = v48;
      v34 = v49;
      v32 = v44;
      v33 = v50;
      v38 = v16;
      v39 = v14;
      LogPrintF();
    }

    if (dword_100971638 <= 10 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      v32 = v15;
      LogPrintF();
    }
  }

  v41 = v9;
  v17 = v14 / 1000.0;
  if (v14 / 1000.0 > 7776000.0 || v17 == 0.0)
  {
    v19 = 2592000.0;
  }

  else
  {
    v19 = v14 / 1000.0;
  }

  v20 = [NSDate date:v17];
  v21 = [v20 dateByAddingTimeInterval:v19];
  if (v16)
  {
    v22 = v16;
  }

  else
  {
    v22 = &off_10090BD60;
  }

  if (v15)
  {
    v23 = [[NSData alloc] initWithBase64EncodedString:v15 options:1];
  }

  else
  {
    v23 = 0;
  }

  v24 = +[NSMutableDictionary dictionary];
  v25 = v24;
  v42 = v8;
  if (v24)
  {
    [v24 setObject:v8 forKeyedSubscript:@"CertificateExpirationDate"];
    [v25 setObject:v45 forKeyedSubscript:@"CertificateSerialNumber"];
    [NSNumber numberWithInteger:v40];
    v26 = a4;
    v28 = v27 = v6;
    [v25 setObject:v28 forKeyedSubscript:@"CertificateStatus"];

    v6 = v27;
    a4 = v26;
    v29 = v43;
    [v25 setObject:v43 forKeyedSubscript:@"CertificateToken"];
    [v25 setObject:v50 forKeyedSubscript:@"FirstName"];
    [v25 setObject:v49 forKeyedSubscript:@"LastName"];
    [v25 setObject:v48 forKeyedSubscript:@"ValidatedEmails"];
    [v25 setObject:v47 forKeyedSubscript:@"ValidatedPhones"];
    sub_100023F44();
    [v25 setObject:v46 forKeyedSubscript:@"ValidationRecordDataID"];
    [v25 setObject:v21 forKeyedSubscript:@"ValidationRecordNextCheckDate"];
    [v25 setObject:v22 forKeyedSubscript:@"Version"];
    v30 = 0;
    if (!a4)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v30 = -6728;
  v29 = v43;
  if (a4)
  {
LABEL_41:
    *a4 = v30;
  }

LABEL_42:

  return v25;
}

@end