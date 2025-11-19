@interface CLMescalSigner
- (id)_mescalSignerNSURLSession;
- (id)initInSilo:(id)a3;
- (void)_churnMescalExchangeData:(id)a3 withCompletion:(id)a4;
- (void)_doSigningWhenReady;
- (void)_initializeMescalWithCompletion:(id)a3;
- (void)dealloc;
- (void)signData:(id)a3 withCompletion:(id)a4;
@end

@implementation CLMescalSigner

- (id)initInSilo:(id)a3
{
  v10.receiver = self;
  v10.super_class = CLMescalSigner;
  v4 = [(CLMescalSigner *)&v10 init];
  v5 = v4;
  if (v4)
  {
    sub_10036D394(0, 0, &v4->_hardwareInfo);
    if (v6)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1018B3094();
      }

      v7 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289026;
        v12 = 0;
        v13 = 2082;
        v14 = "";
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MESCAL: Could not derive hardware info for SAPInit}", buf, 0x12u);
        if (qword_1025D47A0 != -1)
        {
          sub_1018B3094();
        }
      }

      v8 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        *buf = 68289026;
        v12 = 0;
        v13 = 2082;
        v14 = "";
        _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MESCAL: Could not derive hardware info for SAPInit", "{msg%{public}.0s:MESCAL: Could not derive hardware info for SAPInit}", buf, 0x12u);
      }

      return 0;
    }

    else
    {
      v5->_silo = a3;
      v5->_worklist = objc_alloc_init(NSMutableArray);
      v5->_replaceAfter = CFAbsoluteTimeGetCurrent() + 3600.0;
    }
  }

  return v5;
}

- (void)dealloc
{
  self->_mescalVersion = 0;

  self->_mescalCertURL = 0;
  self->_mescalExchangeURL = 0;
  session = self->_session;
  if (session)
  {
    sub_100329B60(session);
    self->_session = 0;
  }

  if ([(NSMutableArray *)self->_worklist count])
  {
    sub_1018B30BC();
  }

  self->_worklist = 0;
  v4.receiver = self;
  v4.super_class = CLMescalSigner;
  [(CLMescalSigner *)&v4 dealloc];
}

- (void)signData:(id)a3 withCompletion:(id)a4
{
  if (!a3)
  {
    sub_1018B3384(self, a2, 0, a4);
  }

  worklist = self->_worklist;
  v9[0] = a3;
  v8[0] = @"dataIn";
  v8[1] = @"hdlr";
  v9[1] = [a4 copy];
  v6 = [(NSMutableArray *)worklist addObject:[NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2]];
  if (self->_keyExchangeComplete)
  {
    [(CLMescalSigner *)self _doSigningWhenReady];
  }

  else if (!self->_keyExchangeStarted)
  {
    self->_keyExchangeStarted = 1;
    if (self->_session)
    {
      sub_1018B3220(v6);
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100524654;
    v7[3] = &unk_10245C2C8;
    v7[4] = self;
    [(CLMescalSigner *)self _initializeMescalWithCompletion:v7];
  }
}

- (void)_doSigningWhenReady
{
  if (!self->_keyExchangeComplete)
  {
    sub_1018B364C();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  worklist = self->_worklist;
  v4 = [(NSMutableArray *)worklist countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(worklist);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        v9 = [v8 objectForKey:@"dataIn"];
        v10 = [v8 objectForKey:@"hdlr"];
        v11 = v10;
        session = self->_session;
        if (session)
        {
          v19 = 0;
          v18 = 0;
          sub_100353D20(session, [v9 bytes], objc_msgSend(v9, "length"), &v19, &v18);
          if (v13)
          {
            v14 = v13;
            if (qword_1025D47A0 != -1)
            {
              sub_1018B3094();
            }

            v15 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
            {
              *buf = 68289282;
              v25 = 2082;
              v26 = "";
              v27 = 2050;
              v28 = v14;
              _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MESCAL: SAPSign failed, code:%{public}ld}", buf, 0x1Cu);
              if (qword_1025D47A0 != -1)
              {
                sub_1018B3094();
              }
            }

            v16 = off_1025D47A8;
            if (os_signpost_enabled(off_1025D47A8))
            {
              *buf = 68289282;
              v25 = 2082;
              v26 = "";
              v27 = 2050;
              v28 = v14;
              _os_signpost_emit_with_name_impl(dword_100000000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MESCAL: SAPSign failed", "{msg%{public}.0s:MESCAL: SAPSign failed, code:%{public}ld}", buf, 0x1Cu);
            }

            v17 = 0;
          }

          else
          {
            v17 = [NSData dataWithBytes:v19 length:v18];
            sub_1003462B0(v19);
          }

          (v11)[2](v11, v17);
        }

        else
        {
          v10[2](v10, 0);
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)worklist countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_worklist removeAllObjects];
}

- (id)_mescalSignerNSURLSession
{
  v3 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  v4 = [(CLSilo *)self->_silo operationQueue];

  return [NSURLSession sessionWithConfiguration:v3 delegate:self delegateQueue:v4];
}

- (void)_initializeMescalWithCompletion:(id)a3
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v17 = sub_100524D3C;
  v18 = &unk_10245C2F0;
  v19 = self;
  v20 = a3;
  sub_100357B7C(&self->_session, &self->_hardwareInfo);
  if (v4)
  {
    v5 = v4;
    if (qword_1025D47A0 != -1)
    {
      sub_1018B3094();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2050;
      v26 = v5;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MESCAL: SAPInit failed, result:%{public}ld}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_1018B3094();
      }
    }

    v7 = off_1025D47A8;
    if (!os_signpost_enabled(off_1025D47A8))
    {
      goto LABEL_20;
    }

    *buf = 68289282;
    v22 = 0;
    v23 = 2082;
    v24 = "";
    v25 = 2050;
    v26 = v5;
    v8 = "MESCAL: SAPInit failed";
    v9 = "{msg%{public}.0s:MESCAL: SAPInit failed, result:%{public}ld}";
    v10 = v7;
    v11 = 28;
    goto LABEL_19;
  }

  if (objc_opt_class())
  {
    v12 = [SSURLBag URLBagForContext:objc_alloc_init(SSURLBagContext)];
    if (v12)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100524E10;
      v15[3] = &unk_10245C368;
      v15[4] = self;
      v15[5] = v16;
      [v12 loadWithCompletionBlock:v15];
      return;
    }
  }

  if (qword_1025D47A0 != -1)
  {
    sub_1018B3094();
  }

  v13 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v22 = 0;
    v23 = 2082;
    v24 = "";
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MESCAL: Could not obtain store URL bag}", buf, 0x12u);
    if (qword_1025D47A0 != -1)
    {
      sub_1018B3094();
    }
  }

  v14 = off_1025D47A8;
  if (os_signpost_enabled(off_1025D47A8))
  {
    *buf = 68289026;
    v22 = 0;
    v23 = 2082;
    v24 = "";
    v8 = "MESCAL: Could not obtain store URL bag";
    v9 = "{msg%{public}.0s:MESCAL: Could not obtain store URL bag}";
    v10 = v14;
    v11 = 18;
LABEL_19:
    _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v8, v9, buf, v11);
  }

LABEL_20:
  v17(v16, 0);
}

- (void)_churnMescalExchangeData:(id)a3 withCompletion:(id)a4
{
  session = self->_session;
  if (!session)
  {
    sub_1018B3B44();
  }

  if (!a3)
  {
    sub_1018B39E0();
  }

  v21 = 0;
  v20 = 0;
  v19 = -1;
  sub_10035D964(200, &self->_hardwareInfo, session, [a3 bytes], objc_msgSend(a3, "length"), &v21, &v20, &v19);
  v8 = v7;
  v9 = [NSData dataWithBytes:v21 length:v20];
  sub_1003462B0(v21);
  if (v8)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018B3094();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2050;
      v29 = v8;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MESCAL: SAPExchange failed, code:%{public}ld}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_1018B3094();
      }
    }

    v11 = off_1025D47A8;
    if (!os_signpost_enabled(off_1025D47A8))
    {
      goto LABEL_12;
    }

    *buf = 68289282;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    v28 = 2050;
    v29 = v8;
    v12 = "MESCAL: SAPExchange failed";
    v13 = "{msg%{public}.0s:MESCAL: SAPExchange failed, code:%{public}ld}";
LABEL_11:
    _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v12, v13, buf, 0x1Cu);
LABEL_12:
    (*(a4 + 2))(a4, 0);
    return;
  }

  if (v19 == 1)
  {
    v22 = @"sign-sap-setup-buffer";
    v23 = v9;
    v14 = [NSPropertyListSerialization dataWithPropertyList:[NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1] format:100 options:0 error:0];
    v15 = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:self->_mescalExchangeURL]];
    [(NSMutableURLRequest *)v15 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"content-type"];
    [(NSMutableURLRequest *)v15 setHTTPMethod:@"POST"];
    [(NSMutableURLRequest *)v15 setHTTPBody:v14];
    v16 = [(CLMescalSigner *)self _mescalSignerNSURLSession];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10052583C;
    v18[3] = &unk_10245C318;
    v18[4] = self;
    v18[5] = a4;
    [objc_msgSend(v16 dataTaskWithRequest:v15 completionHandler:{v18), "resume"}];
    [v16 finishTasksAndInvalidate];
  }

  else
  {
    if (v19)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1018B3094();
      }

      v17 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289282;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2050;
        v29 = v19;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MESCAL: SAPExchange unexpected non-erroneous return code, code:%{public}ld}", buf, 0x1Cu);
        if (qword_1025D47A0 != -1)
        {
          sub_1018B3094();
        }
      }

      v11 = off_1025D47A8;
      if (!os_signpost_enabled(off_1025D47A8))
      {
        goto LABEL_12;
      }

      *buf = 68289282;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2050;
      v29 = v19;
      v12 = "MESCAL: SAPExchange unexpected non-erroneous return code";
      v13 = "{msg%{public}.0s:MESCAL: SAPExchange unexpected non-erroneous return code, code:%{public}ld}";
      goto LABEL_11;
    }

    (*(a4 + 2))(a4, 1);
  }
}

@end