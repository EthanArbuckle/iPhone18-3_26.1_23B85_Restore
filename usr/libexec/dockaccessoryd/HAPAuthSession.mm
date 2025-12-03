@interface HAPAuthSession
+ (id)logCategory;
- (BOOL)getToken:(id *)token uuid:(id *)uuid;
- (HAPAuthSession)initWithRole:(int64_t)role instanceId:(id)id delegate:(id)delegate;
- (HAPAuthSessionDelegate)delegate;
- (id)logIdentifier;
- (void)_reportAuthFailure;
- (void)_resetSession;
- (void)_sendTokenRequest;
- (void)_sendTokenUpdateRequest:(id)request;
- (void)continueAuthAfterValidation:(BOOL)validation;
- (void)handleAuthExchangeData:(id)data withHeader:(BOOL)header;
- (void)resetSession;
- (void)sendTokenUpdateRequest:(id)request;
@end

@implementation HAPAuthSession

- (HAPAuthSession)initWithRole:(int64_t)role instanceId:(id)id delegate:(id)delegate
{
  idCopy = id;
  delegateCopy = delegate;
  v11 = delegateCopy;
  if (delegateCopy)
  {
    if ([delegateCopy conformsToProtocol:&OBJC_PROTOCOL___HAPAuthSessionDelegate])
    {
      v27.receiver = self;
      v27.super_class = HAPAuthSession;
      v12 = [(HAPAuthSession *)&v27 init];
      v13 = v12;
      if (v12)
      {
        v14 = sub_100014728(v12, 0);
        v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v16 = dispatch_queue_create(v14, v15);
        workQueue = v13->_workQueue;
        v13->_workQueue = v16;

        v13->_role = role;
        objc_storeStrong(&v13->_instanceId, id);
        objc_storeWeak(&v13->_delegate, v11);
        v13->_currentState = 0;
        [(HAPAuthSession *)v13 _resetSession];
      }

      v18 = v13;
    }

    else
    {
      selfCopy = self;
      v24 = sub_10007FAA0();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = sub_10007FAFC(selfCopy);
        *buf = 138543362;
        v29 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}@Delegate must confirm to the HAPAuthSessionDelegate protocol", buf, 0xCu);
      }

      v18 = selfCopy;
    }

    selfCopy2 = v18;
    v22 = v18;
  }

  else
  {
    selfCopy2 = self;
    v20 = sub_10007FAA0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = sub_10007FAFC(selfCopy2);
      *buf = 138543362;
      v29 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@A valid delegate is required.", buf, 0xCu);
    }

    v22 = 0;
  }

  return v22;
}

- (void)_resetSession
{
  [(HAPAuthSession *)self setToken2:0];
  [(HAPAuthSession *)self setToken1:0];
  role = [(HAPAuthSession *)self role];
  if (role == 1)
  {
    selfCopy2 = self;
    v5 = 2;
    goto LABEL_5;
  }

  if (!role)
  {
    selfCopy2 = self;
    v5 = 1;
LABEL_5:

    [(HAPAuthSession *)selfCopy2 setCurrentState:v5];
    return;
  }

  selfCopy3 = self;
  v7 = sub_10007FAA0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = sub_10007FAFC(selfCopy3);
    v9 = 138543618;
    v10 = v8;
    v11 = 2048;
    role2 = [(HAPAuthSession *)selfCopy3 role];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@Invalid auth session role: %tu", &v9, 0x16u);
  }
}

- (void)_reportAuthFailure
{
  [(HAPAuthSession *)self _resetSession];
  delegate = [(HAPAuthSession *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(HAPAuthSession *)self delegate];
    v5 = [NSError errorWithDomain:@"HAPErrorDomain" code:17 userInfo:0];
    [delegate2 authSession:self authComplete:v5];
  }

  else
  {
    selfCopy = self;
    v7 = sub_10007FAA0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sub_10007FAFC(selfCopy);
      *buf = 138543362;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement authComplete:", buf, 0xCu);
    }
  }
}

- (void)resetSession
{
  workQueue = [(HAPAuthSession *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E4F4;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)handleAuthExchangeData:(id)data withHeader:(BOOL)header
{
  dataCopy = data;
  workQueue = [(HAPAuthSession *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E5B8;
  block[3] = &unk_100273480;
  block[4] = self;
  v10 = dataCopy;
  headerCopy = header;
  v8 = dataCopy;
  dispatch_async(workQueue, block);
}

- (void)continueAuthAfterValidation:(BOOL)validation
{
  workQueue = [(HAPAuthSession *)self workQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001E7C4;
  v6[3] = &unk_1002734A8;
  validationCopy = validation;
  v6[4] = self;
  dispatch_async(workQueue, v6);
}

- (void)_sendTokenRequest
{
  v15 = 0;
  instanceId = [(HAPAuthSession *)self instanceId];
  v4 = [HAPProtocolMessages constructTokenRequest:instanceId outTID:&v15];

  if (!v4)
  {
    selfCopy = self;
    v12 = sub_10007FAA0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = sub_10007FAFC(selfCopy);
      *buf = 138543362;
      v17 = v13;
      v14 = "%{public}@Failed constructing token request";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
    }

LABEL_11:

    [(HAPAuthSession *)selfCopy _reportAuthFailure];
    goto LABEL_12;
  }

  [(HAPAuthSession *)self setCurrentState:4];
  [(HAPAuthSession *)self setCurrentTID:v15];
  selfCopy2 = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_10007FAFC(selfCopy2);
    *buf = 138543618;
    v17 = v7;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}@Sending Token Request: %@", buf, 0x16u);
  }

  delegate = [(HAPAuthSession *)selfCopy2 delegate];
  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) == 0)
  {
    selfCopy = selfCopy2;
    v12 = sub_10007FAA0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = sub_10007FAFC(selfCopy);
      *buf = 138543362;
      v17 = v13;
      v14 = "%{public}@Delegate does not implement sendAuthExchangeData:";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  delegate2 = [(HAPAuthSession *)selfCopy2 delegate];
  [delegate2 authSession:selfCopy2 sendAuthExchangeData:v4];

LABEL_12:
}

- (void)sendTokenUpdateRequest:(id)request
{
  requestCopy = request;
  workQueue = [(HAPAuthSession *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001EF6C;
  v7[3] = &unk_100273370;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(workQueue, v7);
}

- (void)_sendTokenUpdateRequest:(id)request
{
  requestCopy = request;
  v16 = 0;
  instanceId = [(HAPAuthSession *)self instanceId];
  v6 = [HAPProtocolMessages constructTokenUpdateRequest:instanceId token:requestCopy outTID:&v16];

  if (!v6)
  {
    selfCopy2 = self;
    v11 = sub_10007FAA0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = sub_10007FAFC(selfCopy2);
      *buf = 138543362;
      v18 = v14;
      v15 = "%{public}@Failed constructing token request";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);
    }

LABEL_11:

    [(HAPAuthSession *)selfCopy2 _reportAuthFailure];
    goto LABEL_12;
  }

  [(HAPAuthSession *)self setToken1:requestCopy];
  [(HAPAuthSession *)self setCurrentTID:v16];
  [(HAPAuthSession *)self setCurrentState:8];
  delegate = [(HAPAuthSession *)self delegate];
  v8 = objc_opt_respondsToSelector();

  selfCopy2 = self;
  v10 = sub_10007FAA0();
  v11 = v10;
  if ((v8 & 1) == 0)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = sub_10007FAFC(selfCopy2);
      *buf = 138543362;
      v18 = v14;
      v15 = "%{public}@[HAPAuthSession] Delegate does not implement sendAuthExchangeData:";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = sub_10007FAFC(selfCopy2);
    *buf = 138543618;
    v18 = v12;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%{public}@Sending Token Update Request: %@", buf, 0x16u);
  }

  delegate2 = [(HAPAuthSession *)selfCopy2 delegate];
  [delegate2 authSession:selfCopy2 sendAuthExchangeData:v6];

LABEL_12:
}

- (BOOL)getToken:(id *)token uuid:(id *)uuid
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10001F39C;
  v25 = sub_10001F3AC;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10001F39C;
  v19 = sub_10001F3AC;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  workQueue = [(HAPAuthSession *)self workQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001F3B4;
  v10[3] = &unk_1002734D0;
  v10[4] = self;
  v10[5] = &v21;
  v10[6] = &v15;
  v10[7] = &v11;
  dispatch_sync(workQueue, v10);

  if (token)
  {
    *token = v22[5];
  }

  if (uuid)
  {
    *uuid = v16[5];
  }

  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v8;
}

+ (id)logCategory
{
  if (qword_1002ACBB8 != -1)
  {
    sub_1001F7AC0();
  }

  v3 = qword_1002ACBC0;

  return v3;
}

- (id)logIdentifier
{
  v3 = objc_opt_class();
  delegate = [(HAPAuthSession *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = delegate;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  identifier = [v6 identifier];

  v8 = [NSString stringWithFormat:@"%@ %@", v3, identifier];

  return v8;
}

- (HAPAuthSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end