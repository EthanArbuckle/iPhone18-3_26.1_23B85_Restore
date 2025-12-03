@interface NIServerFindingNBAMMSSessionManager
+ (id)sharedInstance;
- (BOOL)_isReciprocalFindingPossibleRoleIsFinder:(BOOL)finder rangingSession:(id)session;
- (BOOL)shouldAttemptMerging;
- (BOOL)shouldInformMutualAuthFailure:(id)failure;
- (NIServerFindingNBAMMSSessionManager)init;
- (id).cxx_construct;
- (id)printableState;
- (id)registerNBAMMSSessionWithToken:(id)token isFinder:(BOOL)finder client:(id)client serviceRequest:(const void *)request startRangingOptions:(const void *)options sharedProtocol:(int)protocol;
- (pair<int,)_getAuthenticatedFinderFindeeClients;
- (void)_updateAnalyticsWithFailedRangingRequestToken:(id)token isFinder:(BOOL)finder;
- (void)_updateAnalyticsWithSuccessfulRangingRequest;
- (void)logUnservableRangingRequestWithToken:(id)token isFinder:(BOOL)finder;
- (void)refreshRangingForToken:(id)token withNewStartOptions:(const void *)options;
- (void)session:(id)session updateState:(int)state;
- (void)unregisterNBAMMSSessionForToken:(id)token;
- (void)updateAlgorithmAidingData:(const void *)data token:(id)token;
- (void)updateSignallingData:(const void *)data token:(id)token;
@end

@implementation NIServerFindingNBAMMSSessionManager

- (NIServerFindingNBAMMSSessionManager)init
{
  v26.receiver = self;
  v26.super_class = NIServerFindingNBAMMSSessionManager;
  v2 = [(NIServerFindingNBAMMSSessionManager *)&v26 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.nearbyd.nbammssession", v3);
    v5 = *(v2 + 5);
    *(v2 + 5) = v4;

    v6 = sub_10035D02C();
    v8 = v6[20];
    v7 = v6[21];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = *(v2 + 7);
    *(v2 + 6) = v8;
    *(v2 + 7) = v7;
    if (v9)
    {
      sub_10000AD84(v9);
    }

    v10 = objc_alloc_init(GroupFindingAnalytics);
    v11 = *(v2 + 8);
    *(v2 + 8) = v10;

    objc_initWeak(&location, v2);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10028D6DC;
    v23[3] = &unk_1009A1A40;
    objc_copyWeak(&v24, &location);
    v12 = objc_retainBlock(v23);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10028D7B8;
    v21[3] = &unk_1009A1A90;
    objc_copyWeak(&v22, &location);
    v13 = objc_retainBlock(v21);
    v14 = [[NIServerNBAMMSSession alloc] initWithQueue:*(v2 + 5) identityString:@"nmiSession1" stateUpdateHandler:v12 mutualAuthHandler:v13];
    v15 = *(v2 + 1);
    *(v2 + 1) = v14;

    v16 = [[NIServerNBAMMSSession alloc] initWithQueue:*(v2 + 5) identityString:@"nmiSession2" stateUpdateHandler:v12 mutualAuthHandler:v13];
    v17 = *(v2 + 2);
    *(v2 + 2) = v16;

    *(v2 + 3) = 0;
    v18 = objc_opt_new();
    v19 = *(v2 + 4);
    *(v2 + 4) = v18;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10028D96C;
  block[3] = &unk_10098AD98;
  block[4] = self;
  if (qword_1009F2B68 != -1)
  {
    dispatch_once(&qword_1009F2B68, block);
  }

  v2 = qword_1009F2B60;

  return v2;
}

- (id)registerNBAMMSSessionWithToken:(id)token isFinder:(BOOL)finder client:(id)client serviceRequest:(const void *)request startRangingOptions:(const void *)options sharedProtocol:(int)protocol
{
  tokenCopy = token;
  clientCopy = client;
  v16 = clientCopy;
  if (tokenCopy)
  {
    if (clientCopy)
    {
      v29 = 0;
      v30 = &v29;
      v31 = 0x3032000000;
      v32 = sub_10028DC50;
      v33 = sub_10028DC60;
      v34 = 0;
      internalQueue = self->_internalQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10028DC68;
      block[3] = &unk_1009A1AB8;
      block[4] = self;
      v24 = &v29;
      v22 = tokenCopy;
      finderCopy = finder;
      v23 = v16;
      requestCopy = request;
      optionsCopy = options;
      protocolCopy = protocol;
      dispatch_sync(internalQueue, block);
      v18 = v30[5];

      _Block_object_dispose(&v29, 8);
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B6368();
      }

      v35 = NSLocalizedFailureReasonErrorKey;
      v36 = @"Client is nil";
      v19 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v18 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v19];
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B639C();
    }

    v18 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10012 userInfo:0];
  }

  return v18;
}

- (void)unregisterNBAMMSSessionForToken:(id)token
{
  tokenCopy = token;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10028E324;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v8 = tokenCopy;
  v6 = tokenCopy;
  dispatch_sync(internalQueue, v7);
}

- (void)refreshRangingForToken:(id)token withNewStartOptions:(const void *)options
{
  tokenCopy = token;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10028E614;
  block[3] = &unk_1009A1358;
  block[4] = self;
  v10 = tokenCopy;
  optionsCopy = options;
  v8 = tokenCopy;
  dispatch_sync(internalQueue, block);
}

- (void)updateAlgorithmAidingData:(const void *)data token:(id)token
{
  tokenCopy = token;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10028E708;
  block[3] = &unk_1009A1358;
  v10 = tokenCopy;
  dataCopy = data;
  block[4] = self;
  v8 = tokenCopy;
  dispatch_sync(internalQueue, block);
}

- (void)updateSignallingData:(const void *)data token:(id)token
{
  tokenCopy = token;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10028E7FC;
  block[3] = &unk_1009A1358;
  v10 = tokenCopy;
  dataCopy = data;
  block[4] = self;
  v8 = tokenCopy;
  dispatch_sync(internalQueue, block);
}

- (void)logUnservableRangingRequestWithToken:(id)token isFinder:(BOOL)finder
{
  tokenCopy = token;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10028E8F0;
  block[3] = &unk_10099BAD8;
  block[4] = self;
  v10 = tokenCopy;
  finderCopy = finder;
  v8 = tokenCopy;
  dispatch_sync(internalQueue, block);
}

- (id)printableState
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10028DC50;
  v13 = sub_10028DC60;
  v14 = objc_opt_new();
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = sub_10028DC50;
  v7[4] = sub_10028DC60;
  v8 = objc_opt_new();
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10028EA88;
  block[3] = &unk_1009A1AE0;
  block[4] = self;
  block[5] = &v9;
  block[6] = v7;
  dispatch_sync(internalQueue, block);
  v4 = v10[5];
  _Block_object_dispose(v7, 8);

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (void)session:(id)session updateState:(int)state
{
  sessionCopy = session;
  dispatch_assert_queue_V2(self->_internalQueue);
  if (self->_nmiSession1 == sessionCopy)
  {
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "IDLE";
      if (state == 1)
      {
        v9 = "ACQ";
      }

      if (state == 2)
      {
        v9 = "RNG";
      }

      *buf = 136315138;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#find-range,Received session state %s from nmiSession1", buf, 0xCu);
    }

    p_sessionState1 = &self->_sessionState1;
    sessionState1 = self->_sessionState1;
  }

  else
  {
    v7 = qword_1009F9820;
    if (self->_nmiSession2 != sessionCopy)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B6E9C();
      }

      goto LABEL_37;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "IDLE";
      if (state == 1)
      {
        v12 = "ACQ";
      }

      if (state == 2)
      {
        v12 = "RNG";
      }

      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#find-range,Received session state %s from nmiSession2", buf, 0xCu);
    }

    p_sessionState1 = &self->_sessionState2;
    sessionState1 = self->_sessionState2;
  }

  if (sessionState1 == state)
  {
    goto LABEL_37;
  }

  *p_sessionState1 = state;
  if (![(NIServerFindingNBAMMSSessionManager *)self shouldAttemptMerging])
  {
    goto LABEL_37;
  }

  v13 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#find-range,Merging started", buf, 2u);
  }

  sessionState = [(NIServerNBAMMSSession *)self->_nmiSession1 sessionState];
  v15 = 16;
  if (sessionState == 1)
  {
    v15 = 8;
  }

  v16 = *(&self->super.isa + v15);
  sessionState2 = [(NIServerNBAMMSSession *)self->_nmiSession1 sessionState];
  p_nmiSession2 = &self->_nmiSession2;
  if (sessionState2 == 2)
  {
    p_nmiSession2 = &self->_nmiSession1;
  }

  v19 = *p_nmiSession2;
  if (v16)
  {
    [v16 attachedRoles];
    v20 = __p;
    v21 = v28;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    __p = 0;
  }

  if (v21 - v20 != 4)
  {
    __assert_rtn("[NIServerFindingNBAMMSSessionManager session:updateState:]", "NIServerFindingRanging.mm", 3109, "acqSessionRoles.size() == 1");
  }

  v22 = *v20;
  v23 = [v16 sessionClientForFinder:*v20 == 0];
  v24 = [v16 sessionTokenForFinder:v22 == 0];
  if (!v16)
  {
    bzero(buf, 0x248uLL);
LABEL_41:
    __assert_rtn("[NIServerFindingNBAMMSSessionManager session:updateState:]", "NIServerFindingRanging.mm", 3122, "optServiceRequest.has_value()");
  }

  [v16 sessionServiceRequestForFinder:v22 == 0];
  if ((buf[576] & 1) == 0)
  {
    goto LABEL_41;
  }

  memcpy(__dst, buf, sizeof(__dst));
  [v16 sessionStartRangingOptionsForFinder:v22 == 0];
  if ((v30 & 1) == 0)
  {
    __assert_rtn("[NIServerFindingNBAMMSSessionManager session:updateState:]", "NIServerFindingRanging.mm", 3127, "optStartRangingOptions.has_value()");
  }

  *&v29[8] = *&v29[23];
  *&v29[10] = *&v29[25];
  *&v29[12] = *&v29[27];
  *v29 = *&v29[15];
  *&v29[2] = *&v29[17];
  *&v29[4] = *&v29[19];
  *&v29[6] = *&v29[21];
  v25 = [(NIServerNBAMMSSession *)v19 registerNBAMMSSessionWithToken:v24 isFinder:v22 == 0 client:v23 serviceRequest:__dst startRangingOptions:v29 sharedProtocol:[(NIServerNBAMMSSession *)v19 sharedProtocol]];
  v26 = objc_opt_new();
  [v26 addObject:v19];
  [(NSMutableDictionary *)self->_tokenToMutualAuthSessions setObject:v26 forKey:v24];

  if (__p)
  {
    operator delete(__p);
  }

LABEL_37:
}

- (BOOL)shouldAttemptMerging
{
  sessionState1 = self->_sessionState1;
  if (sessionState1 != 1)
  {
    if (sessionState1 == 2 && self->_sessionState2 == 1)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (self->_sessionState2 != 2)
  {
    return 0;
  }

LABEL_4:
  nmiSession1 = self->_nmiSession1;
  if (nmiSession1)
  {
    [(NIServerNBAMMSSession *)nmiSession1 attachedRoles];
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  nmiSession2 = self->_nmiSession2;
  if (nmiSession2)
  {
    [(NIServerNBAMMSSession *)nmiSession2 attachedRoles];
  }

  else
  {
    __p = 0;
    v10 = 0;
  }

  if (v12 - v11 != 4)
  {
    goto LABEL_17;
  }

  v7 = __p;
  if (v10 - __p == 4)
  {
    if (*v11 != *__p && [(NIServerNBAMMSSession *)self->_nmiSession1 sharedProtocol])
    {
      v5 = [(NIServerNBAMMSSession *)self->_nmiSession2 sharedProtocol]!= 0;
      goto LABEL_18;
    }

LABEL_17:
    v5 = 0;
LABEL_18:
    v7 = __p;
    if (!__p)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v5 = 0;
  if (__p)
  {
LABEL_19:
    operator delete(v7);
  }

LABEL_20:
  if (v11)
  {
    operator delete(v11);
  }

  return v5;
}

- (BOOL)shouldInformMutualAuthFailure:(id)failure
{
  failureCopy = failure;
  v5 = [(NIServerNBAMMSSession *)self->_nmiSession1 sessionTokenForFinder:1];
  v6 = [v5 isEqual:failureCopy];
  v7 = [(NIServerNBAMMSSession *)self->_nmiSession1 sessionTokenForFinder:0];
  v8 = [v7 isEqual:failureCopy];
  v9 = [(NIServerNBAMMSSession *)self->_nmiSession2 sessionTokenForFinder:1];
  v10 = [v9 isEqual:failureCopy];
  v11 = [(NIServerNBAMMSSession *)self->_nmiSession2 sessionTokenForFinder:0];
  v12 = [v11 isEqual:failureCopy];
  if (v6)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  if (!v8)
  {
    v13 = v6;
  }

  v14 = v13 + v10 + v12 == 1;

  return v14;
}

- (pair<int,)_getAuthenticatedFinderFindeeClients
{
  sessionClientsStatus = [(NIServerNBAMMSSession *)self->_nmiSession1 sessionClientsStatus];
  v5 = v4;
  sessionClientsStatus2 = [(NIServerNBAMMSSession *)self->_nmiSession2 sessionClientsStatus];
  return ((((HIDWORD(sessionClientsStatus2) == 0) & sessionClientsStatus2) + ((HIDWORD(sessionClientsStatus) == 0) & sessionClientsStatus)) | ((((HIDWORD(v7) == 0) & v7) + ((HIDWORD(v5) == 0) & v5)) << 32));
}

- (BOOL)_isReciprocalFindingPossibleRoleIsFinder:(BOOL)finder rangingSession:(id)session
{
  sessionCopy = session;
  [sessionCopy attachedRoles];
  if (v10 - v9 == 8)
  {
    v6 = 0;
    v7 = 0;
    if (!v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = (*v9 == 0) ^ finder;
  }

  operator delete(v9);
  v7 = v6;
LABEL_6:

  return v7;
}

- (void)_updateAnalyticsWithSuccessfulRangingRequest
{
  sessionClientsStatus = [(NIServerNBAMMSSession *)self->_nmiSession1 sessionClientsStatus];
  v5 = v4;
  sessionClientsStatus2 = [(NIServerNBAMMSSession *)self->_nmiSession2 sessionClientsStatus];
  v8 = sessionClientsStatus2;
  v9 = v7;
  if (HIDWORD(sessionClientsStatus) == 2 && (sessionClientsStatus & 1) != 0 || ((HIDWORD(v5) == 2) & v5) != 0 || ((HIDWORD(sessionClientsStatus2) == 2) & sessionClientsStatus2) != 0 || HIDWORD(v7) == 2 && (v7 & 1) != 0)
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#find-range,Mutual-auth still ongoing, not ready for analytics update", v16, 2u);
    }
  }

  else
  {
    _getAuthenticatedFinderFindeeClients = [(NIServerFindingNBAMMSSessionManager *)self _getAuthenticatedFinderFindeeClients];
    v12 = HIDWORD(*&_getAuthenticatedFinderFindeeClients);
    if (_getAuthenticatedFinderFindeeClients.var0 || v12 != 2)
    {
      if (_getAuthenticatedFinderFindeeClients.var0 == 1 && v12 == 1)
      {
        analytics = self->_analytics;
        if (sessionClientsStatus == v5 || v8 == v9)
        {

          [(GroupFindingAnalytics *)analytics updateToReciprocalFinding];
        }

        else
        {

          [(GroupFindingAnalytics *)analytics updateTo1Finder1Findee];
        }
      }

      else if (_getAuthenticatedFinderFindeeClients.var0 == 1 && v12 == 2)
      {
        v15 = self->_analytics;

        [(GroupFindingAnalytics *)v15 updateTo1Finder2Findee];
      }
    }

    else
    {
      v13 = self->_analytics;

      [(GroupFindingAnalytics *)v13 updateTo0Finder2Findee];
    }
  }
}

- (void)_updateAnalyticsWithFailedRangingRequestToken:(id)token isFinder:(BOOL)finder
{
  finderCopy = finder;
  tokenCopy = token;
  _getAuthenticatedFinderFindeeClients = [(NIServerFindingNBAMMSSessionManager *)self _getAuthenticatedFinderFindeeClients];
  v7 = HIDWORD(*&_getAuthenticatedFinderFindeeClients);
  if (_getAuthenticatedFinderFindeeClients.var0 || v7 != 2)
  {
    if (_getAuthenticatedFinderFindeeClients.var0 == 1 && v7 == 1 && !finderCopy)
    {
      [(GroupFindingAnalytics *)self->_analytics updateWithFindeeRequestAt1Finder1Findee:tokenCopy];
    }

    else if (_getAuthenticatedFinderFindeeClients.var0 == 1 && v7 == 2 && !finderCopy)
    {
      [(GroupFindingAnalytics *)self->_analytics updateWithFindeeRequestAt1Finder2Findee:tokenCopy];
    }
  }

  else
  {
    analytics = self->_analytics;
    if (finderCopy)
    {
      [(GroupFindingAnalytics *)analytics updateWithFinderRequestAt0Finder2Findee:tokenCopy];
    }

    else
    {
      [(GroupFindingAnalytics *)analytics updateWithFindeeRequestAt0Finder2Findee:tokenCopy];
    }
  }
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

@end