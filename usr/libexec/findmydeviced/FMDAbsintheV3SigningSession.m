@interface FMDAbsintheV3SigningSession
- (FMDAbsintheV3SigningSession)init;
- (id)signatureForData:(id)a3 error:(id *)a4;
- (void)_destroySession;
- (void)establishSessionWithServerInteractionController:(id)a3;
@end

@implementation FMDAbsintheV3SigningSession

- (FMDAbsintheV3SigningSession)init
{
  v5.receiver = self;
  v5.super_class = FMDAbsintheV3SigningSession;
  v2 = [(FMDAbsintheV3SigningSession *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FMDAbsintheV3SigningSession *)v2 setMode:0];
  }

  return v3;
}

- (void)establishSessionWithServerInteractionController:(id)a3
{
  v4 = a3;
  [(FMDAbsintheV3SigningSession *)self _destroySession];
  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Initializing session...", buf, 2u);
  }

  v6 = [[FMSynchronizer alloc] initWithDescription:@"createSessionForSignature" andTimeout:-1.0];
  v30 = 0;
  *buf = 0;
  v29 = 0;
  [(FMDAbsintheV3SigningSession *)self setPscError:0];
  v7 = sub_100224ED0(buf, &v30, &v29);
  if (v7)
  {
    v8 = v7;
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_100229034(v8, v9);
    }

    v32 = @"kFMDUnderlyingErrorCodeKey";
    v10 = [NSNumber numberWithInt:v8];
    v33 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v12 = [NSError errorWithDomain:@"FMDAbsintheV3SigningSessionErrorDomain" code:1 userInfo:v11];
    [(FMDAbsintheV3SigningSession *)self setPscError:v12];

    v13 = 0;
  }

  else
  {
    v10 = [NSData dataWithBytes:v30 length:v29];
    v13 = [v10 base64EncodedStringWithOptions:0];
    [(FMDAbsintheV3SigningSession *)self setPscSessionRef:*buf];
    v14 = sub_100002880();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_1002290B0(self);
    }

    sub_100224D70(v30);
  }

  v15 = +[FMDServiceProvider activeServiceProvider];
  v16 = [(FMDAbsintheV3SigningSession *)self mode]== 0;
  v17 = [FMDRequestIdentityV3Session alloc];
  v18 = [(FMDAbsintheV3SigningSession *)self activationLockRequestUUID];
  v19 = [(FMDRequestIdentityV3Session *)v17 initWithProvider:v15 activationLockRequestUUID:v18 pscHelloMsg:v13];

  [(FMDRequestIdentityV3Session *)v19 setRequiresAuthentication:v16];
  v20 = [(FMDAbsintheV3SigningSession *)self cause];
  [(FMDRequestIdentityV3Session *)v19 setCause:v20];

  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_1001645AC;
  v26 = &unk_1002CF188;
  v27 = self;
  v21 = v6;
  v28 = v21;
  [(FMDRequest *)v19 setCompletionHandler:&v23];
  v22 = [v4 enqueueRequest:{v19, v23, v24, v25, v26, v27}];

  if (v22)
  {
    [v21 wait];
  }
}

- (id)signatureForData:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(FMDAbsintheV3SigningSession *)self pscSessionRef])
  {
    v25 = 0;
    v24 = 0;
    v23 = 0;
    v22 = 0;
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 base64EncodedStringWithOptions:4];
      *buf = 138412290;
      v30 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMDAbsintheV3SigningSession digest to sign : %@", buf, 0xCu);
    }

    v9 = sub_100225018(-[FMDAbsintheV3SigningSession pscSessionRef](self, "pscSessionRef"), [v6 bytes], objc_msgSend(v6, "length"), &v25, &v24, &v23, &v22);
    if (v9)
    {
      v10 = v9;
      v11 = sub_100002880();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_1002294C8(v10, v11);
      }

      v27 = @"kFMDUnderlyingErrorCodeKey";
      v12 = [NSNumber numberWithInt:v10];
      v28 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v14 = [NSError errorWithDomain:@"FMDAbsintheV3SigningSessionErrorDomain" code:3 userInfo:v13];
      v15 = 0;
    }

    else
    {
      v12 = [NSData dataWithBytes:v25 length:v24];
      v13 = [NSData dataWithBytes:v23 length:v22];
      v26[0] = v12;
      v26[1] = v13;
      v15 = [NSArray arrayWithObjects:v26 count:2];
      v14 = 0;
    }

    [(FMDAbsintheV3SigningSession *)self _destroySession];
    if (a4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    if (a4)
    {
LABEL_12:
      v16 = [(FMDAbsintheV3SigningSession *)self pscError];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v14;
      }

      v19 = v18;

      v20 = v19;
      *a4 = v19;
      v14 = v19;
    }
  }

  return v15;
}

- (void)_destroySession
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100229540();
  }

  if ([(FMDAbsintheV3SigningSession *)self pscSessionRef])
  {
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AbsinthV3 invalidting psc session", v5, 2u);
    }

    sub_100224C14([(FMDAbsintheV3SigningSession *)self pscSessionRef]);
    [(FMDAbsintheV3SigningSession *)self setPscSessionRef:0];
  }
}

@end