@interface DMDCoreTelephonyConnection
- (DMDCoreTelephonyConnection)init;
- (void)dealloc;
- (void)fetchCachedVinylInfoWithCompletion:(id)completion;
- (void)refreshCellularPlansWithCSN:(id)n serverURL:(id)l completion:(id)completion;
@end

@implementation DMDCoreTelephonyConnection

- (DMDCoreTelephonyConnection)init
{
  v4.receiver = self;
  v4.super_class = DMDCoreTelephonyConnection;
  v2 = [(DMDCoreTelephonyConnection *)&v4 init];
  if (v2)
  {
    v2->ctConnection = _CTServerConnectionCreateOnTargetQueue();
  }

  return v2;
}

- (void)dealloc
{
  ctConnection = self->ctConnection;
  if (ctConnection)
  {
    CFRelease(ctConnection);
    self->ctConnection = 0;
  }

  v4.receiver = self;
  v4.super_class = DMDCoreTelephonyConnection;
  [(DMDCoreTelephonyConnection *)&v4 dealloc];
}

- (void)fetchCachedVinylInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->ctConnection)
  {
    v6 = completionCopy;
    v15 = v6;
    CachedVinylInfo = _CTServerConnectionStandaloneGetCachedVinylInfo();
    if (HIDWORD(CachedVinylInfo))
    {
      v10 = CachedVinylInfo;
      dMFCoreTelephonyErrorCodeKey = [NSNumber numberWithInt:_NSConcreteStackBlock, 3221225472, sub_100033B08, &unk_1000CEDF8, v6, DMFCoreTelephonyErrorCodeKey];
      v17[0] = dMFCoreTelephonyErrorCodeKey;
      v16[1] = DMFCoreTelephonyErrorDomainKey;
      v12 = [NSNumber numberWithInt:v10];
      v17[1] = v12;
      v13 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100081AE4();
      }

      v14 = DMFErrorWithCodeAndUserInfo();
      (*(v6 + 2))(v6, 0, v14);
    }

    else
    {
      ctConnection = self->ctConnection;
      _CTServerConnectionSendBarrier();
    }
  }

  else
  {
    v9 = DMFErrorWithCodeAndUserInfo();
    (v5)[2](v5, 0, v9);
  }
}

- (void)refreshCellularPlansWithCSN:(id)n serverURL:(id)l completion:(id)completion
{
  nCopy = n;
  completionCopy = completion;
  absoluteString = [l absoluteString];
  if (self->ctConnection)
  {
    v11 = completionCopy;
    v20 = v11;
    v12 = _CTServerConnectionStandaloneDownloadProfile();
    if (HIDWORD(v12))
    {
      v15 = v12;
      dMFCoreTelephonyErrorCodeKey = [NSNumber numberWithInt:_NSConcreteStackBlock, 3221225472, sub_100033DE0, &unk_1000CEE20, v11, DMFCoreTelephonyErrorCodeKey];
      v22[0] = dMFCoreTelephonyErrorCodeKey;
      v21[1] = DMFCoreTelephonyErrorDomainKey;
      v17 = [NSNumber numberWithInt:v15];
      v22[1] = v17;
      v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100081BE4();
      }

      v19 = DMFErrorWithCodeAndUserInfo();
      (*(v11 + 2))(v11, v19);
    }

    else
    {
      ctConnection = self->ctConnection;
      _CTServerConnectionSendBarrier();
    }
  }

  else
  {
    v14 = DMFErrorWithCodeAndUserInfo();
    (*(completionCopy + 2))(completionCopy, v14);
  }
}

@end