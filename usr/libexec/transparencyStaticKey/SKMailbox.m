@interface SKMailbox
+ (id)allSMFlags;
+ (id)allSMStates;
+ (id)generateSessionID;
- (BOOL)announceMismatch;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchSession:(id)a3 op:(id)a4;
- (BOOL)sendRevealA;
- (BOOL)validateAnnounce:(id)a3;
- (NSSet)peerHandles;
- (SKMailbox)initWithLogging:(id)a3 publicInfo:(id)a4 peerIDSID:(id)a5 session:(id)a6;
- (SKSessionProtocol)session;
- (id)_onqueueNextStateMachineTransition:(id)a3 flags:(id)a4 pendingFlags:(id)a5;
- (id)mapMailbox;
- (id)matchPeerSessionID:(id)a3 op:(id)a4;
- (id)onQueueMapMailbox;
- (id)onQueueStartOver:(id)a3 clearAnnounce:(BOOL)a4 flags:(id)a5;
- (int64_t)sentTime;
- (unint64_t)hash;
- (void)dealloc;
- (void)haltStateMachine;
- (void)onQueueUpdateState;
- (void)recvAnnounce:(id)a3;
- (void)recvCommit:(id)a3;
- (void)recvConfirm:(id)a3;
- (void)recvDiscloseA:(id)a3;
- (void)recvReplyB:(id)a3;
- (void)recvSelected:(id)a3;
- (void)recvTeardown:(id)a3;
- (void)reset;
- (void)restart;
- (void)sendAnnounce;
- (void)sendCommitA;
- (void)sendConfirm;
- (void)sendSelected;
- (void)sendSetupB;
- (void)sendTearDown:(id)a3 idsHandle:(id)a4 because:(id)a5;
- (void)sendTeardown;
- (void)setPeer:(id)a3;
- (void)startSession;
- (void)stopTransaction;
- (void)updateState;
- (void)updateTimer;
- (void)updateTransaction;
@end

@implementation SKMailbox

- (SKMailbox)initWithLogging:(id)a3 publicInfo:(id)a4 peerIDSID:(id)a5 session:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v35.receiver = self;
  v35.super_class = SKMailbox;
  v14 = [(SKMailbox *)&v35 init];
  if (v14)
  {
    v15 = +[SKMailbox generateSessionID];
    [(SKMailbox *)v14 setHandleID:v15];

    v16 = +[SKMailbox generateSessionID];
    [(SKMailbox *)v14 setLocalSessionID:v16];

    [(SKMailbox *)v14 setMyPublicInfo:v11];
    [(SKMailbox *)v14 setPeerIDSID:v12];
    v31 = v10;
    [(SKMailbox *)v14 setLog:v10];
    [(SKMailbox *)v14 setSession:v13];
    [(SKMailbox *)v14 setPeerIDMismatchCounter:0];
    [(SKMailbox *)v14 setBeforeRatelimit:10];
    v17 = dispatch_queue_create("updateQueue", 0);
    [(SKMailbox *)v14 setUpdateQueue:v17];

    v18 = dispatch_queue_create("KTStaticKeyMailbox", 0);
    [(SKMailbox *)v14 setStateMachineQueue:v18];

    v19 = [KTStateMachine alloc];
    v20 = [objc_opt_class() allSMStates];
    v21 = [objc_opt_class() allSMFlags];
    v22 = off_1000ADE18;
    v23 = [(SKMailbox *)v14 stateMachineQueue];
    v24 = +[TransparencyIDSConfigBag sharedInstance];
    v25 = [(KTStateMachine *)v19 initWithName:@"KTStateMachine" states:v20 flags:v21 initialState:v22 queue:v23 stateEngine:v14 lockStateTracker:0 reachabilityTracker:0 idsConfigBag:v24];
    [(SKMailbox *)v14 setStateMachine:v25];

    objc_initWeak(&location, v14);
    v26 = [KTNearFutureScheduler alloc];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10002557C;
    v32[3] = &unk_100094BA8;
    objc_copyWeak(&v33, &location);
    v27 = [(KTNearFutureScheduler *)v26 initWithName:@"recvRatelimit" initialDelay:10000000 continuingDelay:5000000000 keepProcessAlive:0 dependencyDescriptionCode:0 block:v32];
    [(SKMailbox *)v14 setRecvRatelimit:v27];

    v28 = [(SKMailbox *)v14 stateMachine];
    [v28 startOperation];

    v29 = v14;
    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
    v10 = v31;
  }

  return v14;
}

+ (id)generateSessionID
{
  v2 = [NSMutableData dataWithLength:16];
  if (!v2 || (v3 = v2, SecRandomCopyBytes(0, [v2 length], objc_msgSend(v2, "mutableBytes"))))
  {
    abort();
  }

  return v3;
}

- (void)haltStateMachine
{
  v2 = [(SKMailbox *)self stateMachine];
  [v2 haltOperation];
}

- (void)dealloc
{
  v3 = [(SKMailbox *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(SKMailbox *)self localSessionID];
    v5 = [v4 kt_hexString];
    *buf = 138543362;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "dealloc: %{public}@", buf, 0xCu);
  }

  [(SKMailbox *)self stopTransaction];
  v6 = [(SKMailbox *)self session];
  [v6 teardownMailbox:self];

  v7.receiver = self;
  v7.super_class = SKMailbox;
  [(SKMailbox *)&v7 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 localSessionID];
    v6 = [(SKMailbox *)self localSessionID];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(SKMailbox *)self localSessionID];
  v3 = [v2 hash];

  return v3;
}

- (void)setPeer:(id)a3
{
  v5 = a3;
  v4 = [(SKMailbox *)self peerStorage];

  if (!v4)
  {
    [(SKMailbox *)self setPeerStorage:v5];
  }
}

- (NSSet)peerHandles
{
  v3 = [(SKMailbox *)self peer];
  v4 = [v3 peer];
  v5 = [NSMutableSet setWithObject:v4];

  v6 = [(SKMailbox *)self peer];
  v7 = [v6 otherNamesForPeer];

  if (v7)
  {
    v8 = [(SKMailbox *)self peer];
    v9 = [v8 otherNamesForPeer];
    [v5 unionSet:v9];
  }

  return v5;
}

- (void)startSession
{
  v2 = [(SKMailbox *)self stateMachine];
  [v2 handleFlag:off_1000ADDD0];
}

- (void)updateTransaction
{
  v3 = [(SKMailbox *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(SKMailbox *)self handleID];
    v5 = [v4 kt_hexString];
    v6 = [(SKMailbox *)self transaction];
    v7 = @"yes";
    if (!v6)
    {
      v7 = @"no";
    }

    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "updateTransaction: %{public}@ exists: %{public}@", &v10, 0x16u);
  }

  v8 = [(SKMailbox *)self transaction];

  if (!v8)
  {
    v9 = os_transaction_create();
    [(SKMailbox *)self setTransaction:v9];
  }
}

- (void)stopTransaction
{
  v3 = [(SKMailbox *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(SKMailbox *)self handleID];
    v5 = [v4 kt_hexString];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "stopTransaction: %{public}@", &v6, 0xCu);
  }

  [(SKMailbox *)self setTransaction:0];
}

- (void)updateTimer
{
  v3 = [NSDate dateWithTimeIntervalSinceNow:600.0];
  [(SKMailbox *)self setExpire:v3];
}

- (void)updateState
{
  v3 = [(SKMailbox *)self stateMachineQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025D08;
  block[3] = &unk_100094F10;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)onQueueUpdateState
{
  v3 = [(SKMailbox *)self stateMachineQueue];
  dispatch_assert_queue_V2(v3);

  v4 = self;
  objc_sync_enter(v4);
  v5 = [(SKMailbox *)v4 stateUpdate];
  objc_sync_exit(v4);

  if (v5)
  {
    v6 = [(SKMailbox *)v4 updateQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100025E0C;
    v7[3] = &unk_100095DF0;
    v7[4] = v4;
    v8 = v5;
    dispatch_async(v6, v7);
  }
}

- (id)mapMailbox
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100025F84;
  v11 = sub_100025F94;
  v12 = 0;
  v3 = [(SKMailbox *)self stateMachineQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100025F9C;
  v6[3] = &unk_100094EE8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)onQueueMapMailbox
{
  v3 = [(SKMailbox *)self stateMachine];
  v4 = [v3 currentState];

  v5 = objc_alloc_init(KTIDSSession);
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(SKMailbox *)v6 handleID];
  v8 = [v7 kt_hexString];
  [v5 setSessionID:v8];

  v9 = [(SKMailbox *)v6 peerPublicInfo];

  if (v9)
  {
    v10 = [(SKMailbox *)v6 peerPublicInfo];
    v11 = [KTAccountPublicID ktAccountPublicIDWithPublicKeyInfo:v10 error:0];
    [v5 setPeerAccountIdentity:v11];
  }

  objc_sync_exit(v6);

  if (([v4 isEqual:off_1000ADE18] & 1) != 0 || objc_msgSend(v4, "isEqual:", off_1000ADE20))
  {
    v12 = &kTransparencyStaticKeyStateInit;
LABEL_6:
    [v5 setState:*v12];
    v13 = v5;
    v14 = 1;
LABEL_13:
    [v13 setPeerDisconnected:v14];
    goto LABEL_14;
  }

  if ([v4 isEqual:off_1000ADE28] || objc_msgSend(v4, "isEqual:", off_1000ADE30) || objc_msgSend(v4, "isEqual:", off_1000ADE40) || objc_msgSend(v4, "isEqual:", off_1000ADE48) || objc_msgSend(v4, "isEqual:", off_1000ADE50))
  {
LABEL_12:
    [v5 setState:kTransparencyStaticKeyStateNegotiating];
    v13 = v5;
    v14 = 0;
    goto LABEL_13;
  }

  if (([v4 isEqual:off_1000ADE58] & 1) == 0 && !objc_msgSend(v4, "isEqual:", off_1000ADE60))
  {
    if ([v4 isEqual:off_1000ADE68])
    {
      v12 = &kTransparencyStaticKeyStateCodeError;
      goto LABEL_6;
    }

    if (![v4 isEqual:off_1000ADE70] && !objc_msgSend(v4, "isEqual:", off_1000ADE78))
    {
      v22 = [(SKMailbox *)v6 log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10006E2D4();
      }

      v12 = &kTransparencyStaticKeyStateNegotiating;
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  [v5 setPeerDisconnected:{objc_msgSend(v4, "isEqual:", off_1000ADE60)}];
  v16 = [(SKMailbox *)v6 sas];
  v17 = [v16 shortAuthenticationString];
  [v5 setSasCode:v17];

  v18 = [v5 sasCode];

  if (v18)
  {
    v19 = &kTransparencyStaticKeyStateCodeAvailable;
  }

  else
  {
    v20 = [v5 peerDisconnected];
    v19 = &kTransparencyStaticKeyStateCodeError;
    if (v20)
    {
      v19 = &kTransparencyStaticKeyStateNegotiating;
    }
  }

  [v5 setState:*v19];
  v21 = [(SKMailbox *)v6 expire];
  [v5 setSessionExpire:v21];

LABEL_14:

  return v5;
}

+ (id)allSMFlags
{
  if (qword_1000AED90 != -1)
  {
    sub_10006E344();
  }

  v3 = qword_1000AED98;

  return v3;
}

+ (id)allSMStates
{
  if (qword_1000AEDA0 != -1)
  {
    sub_10006E358();
  }

  v3 = qword_1000AEDA8;

  return v3;
}

- (void)recvAnnounce:(id)a3
{
  v4 = a3;
  v5 = [(SKMailbox *)self stateMachineQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000267FC;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (int64_t)sentTime
{
  v2 = +[NSDate date];
  [v2 timeIntervalSince1970];
  v4 = (v3 * 1000.0);

  return v4;
}

- (void)sendAnnounce
{
  v3 = [(SKMailbox *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(SKMailbox *)self handleID];
    v5 = [v4 kt_hexString];
    v6 = [(SKMailbox *)self peerSessionID];
    v7 = [v6 kt_hexString];
    v12 = 138543874;
    v13 = v5;
    v14 = 2114;
    v15 = v7;
    v16 = 2048;
    v17 = [(SKMailbox *)self sentAnnounce];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "send announce %{public}@ peer: %{public}@ count: %lu", &v12, 0x20u);
  }

  [(SKMailbox *)self setSentAnnounce:[(SKMailbox *)self sentAnnounce]+ 1];
  v8 = objc_alloc_init(_TtC21transparencyStaticKey12GSASAnnounce);
  v9 = [(SKMailbox *)self localSessionID];
  [(GSASAnnounce *)v8 setSessionId:v9];

  v10 = [(SKMailbox *)self peerSessionID];
  [(GSASAnnounce *)v8 setPeerSessionId:v10];

  v11 = [(GSASAnnounce *)v8 data];
  [(SKMailbox *)self sendMessage:0 data:v11];
}

- (void)recvCommit:(id)a3
{
  v4 = a3;
  v5 = [(SKMailbox *)self stateMachineQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100026BE0;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)sendCommitA
{
  v3 = [(SKMailbox *)self negotiatedSessionID];
  v4 = [v3 length];

  if (!v4)
  {
    _os_assumes_log();
  }

  v5 = [(SKMailbox *)self sas];
  v6 = [v5 initiator];

  if ((v6 & 1) == 0)
  {
    _os_assumes_log();
  }

  v12 = objc_alloc_init(_TtC21transparencyStaticKey10GSASCommit);
  v7 = [(SKMailbox *)self negotiatedSessionID];
  [(GSASCommit *)v12 setSessionId:v7];

  v8 = [(SKMailbox *)self myPublicInfo];
  [(GSASCommit *)v12 setPublicInfo:v8];

  v9 = [(SKMailbox *)self sas];
  v10 = [v9 undisclosedInitiatorRandom];
  [(GSASCommit *)v12 setACommitRandom:v10];

  v11 = [(GSASCommit *)v12 data];
  [(SKMailbox *)self sendMessage:1 data:v11];
}

- (void)recvReplyB:(id)a3
{
  v4 = a3;
  v5 = [(SKMailbox *)self stateMachineQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100026E30;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)sendSetupB
{
  v3 = [(SKMailbox *)self negotiatedSessionID];
  v4 = [v3 length];

  if (!v4)
  {
    _os_assumes_log();
  }

  v5 = [(SKMailbox *)self sas];
  v6 = [v5 initiator];

  if (v6)
  {
    _os_assumes_log();
  }

  v13 = objc_alloc_init(_TtC21transparencyStaticKey10GSASSetupB);
  v7 = [(SKMailbox *)self negotiatedSessionID];
  [(GSASSetupB *)v13 setSessionId:v7];

  v8 = [(SKMailbox *)self myPublicInfo];
  [(GSASSetupB *)v13 setPublicInfo:v8];

  v9 = [(SKMailbox *)self sas];
  v10 = [v9 selfRandom];
  [(GSASSetupB *)v13 setBRandom:v10];

  v11 = [(SKMailbox *)self peerSessionID];
  [(GSASSetupB *)v13 setPeerSessionId:v11];

  v12 = [(GSASSetupB *)v13 data];
  [(SKMailbox *)self sendMessage:4 data:v12];
}

- (void)recvDiscloseA:(id)a3
{
  v4 = a3;
  v5 = [(SKMailbox *)self stateMachineQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000270A0;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (BOOL)sendRevealA
{
  v3 = [(SKMailbox *)self negotiatedSessionID];
  v4 = [v3 length];

  if (!v4)
  {
    _os_assumes_log();
  }

  v5 = [(SKMailbox *)self sas];
  v6 = [v5 initiator];

  if ((v6 & 1) == 0)
  {
    _os_assumes_log();
  }

  v7 = [(SKMailbox *)self sas];
  v8 = [v7 selfRandom];

  if (v8)
  {
    v9 = objc_alloc_init(_TtC21transparencyStaticKey10GSASReveal);
    v10 = [(SKMailbox *)self negotiatedSessionID];
    [(GSASReveal *)v9 setSessionId:v10];

    [(GSASReveal *)v9 setARandom:v8];
    v11 = [(SKMailbox *)self peerSessionID];
    [(GSASReveal *)v9 setPeerSessionId:v11];

    v12 = [(GSASReveal *)v9 data];
    [(SKMailbox *)self sendMessage:5 data:v12];
  }

  return v8 != 0;
}

- (void)recvConfirm:(id)a3
{
  v4 = a3;
  v5 = [(SKMailbox *)self stateMachineQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000272E8;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)sendSelected
{
  v5 = objc_alloc_init(_TtC21transparencyStaticKey12GSASSelected);
  v3 = [(SKMailbox *)self negotiatedSessionID];
  [(GSASSelected *)v5 setSessionId:v3];

  v4 = [(GSASSelected *)v5 data];
  [(SKMailbox *)self sendMessage:2 data:v4];
}

- (void)recvSelected:(id)a3
{
  v4 = a3;
  v5 = [(SKMailbox *)self stateMachineQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002748C;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)sendConfirm
{
  v3 = [(SKMailbox *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10006E36C(self);
  }

  v4 = [(SKMailbox *)self negotiatedSessionID];
  v5 = [v4 length];

  if (!v5)
  {
    _os_assumes_log();
  }

  v6 = objc_alloc_init(_TtC21transparencyStaticKey11GSASConfirm);
  v7 = [(SKMailbox *)self negotiatedSessionID];
  [(GSASConfirm *)v6 setSessionId:v7];

  [(GSASConfirm *)v6 setSentTime:[(SKMailbox *)self sentTime]];
  v8 = [(SKMailbox *)self peerSessionID];
  [(GSASConfirm *)v6 setPeerSessionId:v8];

  v9 = [(GSASConfirm *)v6 data];
  [(SKMailbox *)self sendMessage:6 data:v9];
}

- (void)sendTearDown:(id)a3 idsHandle:(id)a4 because:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SKMailbox *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v15 = [v8 kt_hexString];
    v16 = 138544130;
    v17 = v15;
    v18 = 2160;
    v19 = 1752392040;
    v20 = 2112;
    v21 = v9;
    v22 = 2114;
    v23 = v10;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "sending teardown of session %{public}@ to peer %{mask.hash}@ because %{public}@", &v16, 0x2Au);
  }

  if (v8 && v9)
  {
    v12 = objc_alloc_init(_TtC21transparencyStaticKey12GSASTeardown);
    [(GSASTeardown *)v12 setSessionId:v8];
    v13 = [(GSASTeardown *)v12 data];
    v14 = [(SKMailbox *)self sourceIDS];
    [(SKMailbox *)self sendMessage:3 data:v13 targets:v9 sourceID:v14];
  }
}

- (void)recvTeardown:(id)a3
{
  v4 = a3;
  v5 = [(SKMailbox *)self stateMachineQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100027840;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)sendTeardown
{
  if (![(SKMailbox *)self sentTeardown])
  {
    [(SKMailbox *)self setSentTeardown:1];
    v8 = objc_alloc_init(_TtC21transparencyStaticKey12GSASTeardown);
    v3 = [(SKMailbox *)self peerSessionID];

    if (v3)
    {
      v4 = [(SKMailbox *)self peerSessionID];
      [(GSASTeardown *)v8 setSessionId:v4];

      v5 = [(GSASTeardown *)v8 data];
      [(SKMailbox *)self sendMessage:3 data:v5];
    }

    v6 = [(SKMailbox *)self localSessionID];
    [(GSASTeardown *)v8 setSessionId:v6];

    v7 = [(GSASTeardown *)v8 data];
    [(SKMailbox *)self sendMessage:3 data:v7];
  }
}

- (BOOL)validateAnnounce:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v14 = 0;
    v5 = [[_TtC21transparencyStaticKey12GSASAnnounce alloc] initWithData:v4 error:&v14];
    v6 = v14;
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v11 = [(GSASAnnounce *)v5 sessionId];
      v12 = [v11 length];

      if (v12)
      {
        [(SKMailbox *)self setPeerAnnounce:v5];
        v10 = 1;
LABEL_16:

        goto LABEL_17;
      }

      v9 = [(SKMailbox *)self log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10006E438();
      }
    }

    else
    {
      v9 = [(SKMailbox *)self log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10006E46C();
      }
    }

    v10 = 0;
    goto LABEL_16;
  }

  v7 = [(SKMailbox *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10006E4DC();
  }

  v10 = 0;
LABEL_17:

  return v10;
}

- (BOOL)announceMismatch
{
  v3 = [(SKMailbox *)self gotAnnounceData];

  if (v3)
  {
    v4 = [_TtC21transparencyStaticKey12GSASAnnounce alloc];
    v5 = [(SKMailbox *)self gotAnnounceData];
    v18 = 0;
    v6 = [(GSASAnnounce *)v4 initWithData:v5 error:&v18];
    v7 = v18;

    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v11 = [(GSASAnnounce *)v6 sessionId];
      v12 = [(SKMailbox *)self peerSessionID];
      v13 = [v11 isEqual:v12];

      if (v13)
      {
        v14 = [(GSASAnnounce *)v6 peerSessionId];
        v15 = [(SKMailbox *)self localSessionID];
        v16 = [v14 isEqual:v15];

        if (v16)
        {
          v10 = 0;
LABEL_19:

          goto LABEL_20;
        }

        v9 = [(SKMailbox *)self log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10006E5DC(self, v6);
        }
      }

      else
      {
        v9 = [(SKMailbox *)self log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10006E510(self, v6);
        }
      }
    }

    else
    {
      v9 = [(SKMailbox *)self log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10006E6A8();
      }
    }

    v10 = 1;
    goto LABEL_19;
  }

  v7 = [(SKMailbox *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10006E718();
  }

  v10 = 1;
LABEL_20:

  return v10;
}

- (id)_onqueueNextStateMachineTransition:(id)a3 flags:(id)a4 pendingFlags:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SKMailbox *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v9 dumpFlags];
    v13 = [v12 componentsJoinedByString:{@", "}];
    *buf = 138543618;
    v78 = v8;
    v79 = 2114;
    v80 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "in state %{public}@ with flags: %{public}@", buf, 0x16u);
  }

  if ([v8 isEqual:off_1000ADE18])
  {
    if ([v9 _onqueueContains:off_1000ADDD0])
    {
      [v9 _onqueueRemoveFlag:off_1000ADDD0];
      v14 = [(SKMailbox *)self myPublicInfo];

      if (v14)
      {
        [(SKMailbox *)self sendAnnounce];
        [(SKMailbox *)self onQueueUpdateState];
        v15 = off_1000ADE28;
        v16 = @"send-announce";
      }

      else
      {
        v27 = [(SKMailbox *)self log];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_10006E74C();
        }

        v15 = off_1000ADE68;
        v16 = @"announce-missing-my-peer-info";
      }

      goto LABEL_32;
    }

    if ([v9 _onqueueContains:off_1000ADDD8])
    {
      [v9 _onqueueRemoveFlag:off_1000ADDD8];
      v15 = off_1000ADE20;
      v16 = @"got-announce";
LABEL_32:
      v26 = [KTStateTransitionOperation named:v16 entering:v15];
      goto LABEL_87;
    }

    v22 = [(SKMailbox *)self log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v9 dumpFlags];
      v24 = [v23 componentsJoinedByString:{@", "}];
      *buf = 138543362;
      v78 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "SMStateInitial waiting for start: %{public}@", buf, 0xCu);
    }

    goto LABEL_21;
  }

  if (![v8 isEqual:off_1000ADE20])
  {
    if ([v8 isEqual:off_1000ADE28])
    {
      if (![v9 _onqueueContains:off_1000ADE10])
      {
        if (![v9 _onqueueContains:off_1000ADE08])
        {
          if ([v9 _onqueueContains:off_1000ADDD8])
          {
            [v9 _onqueueRemoveFlag:off_1000ADDD8];
            v28 = [(SKMailbox *)self gotAnnounceData];
            v29 = [(SKMailbox *)self validateAnnounce:v28];

            if ((v29 & 1) == 0)
            {
              v15 = off_1000ADE68;
              v16 = @"no valid error";
              goto LABEL_32;
            }

            v30 = [(SKMailbox *)self peerSessionID];
            v31 = [(SKMailbox *)self peerAnnounce];
            v32 = [v31 sessionId];
            v33 = [v30 isEqual:v32];

            v34 = [(SKMailbox *)self peerAnnounce];
            v35 = [v34 sessionId];
            [(SKMailbox *)self setPeerSessionID:v35];

            v36 = [(SKMailbox *)self peerAnnounce];
            v37 = [v36 peerSessionId];
            v38 = [(SKMailbox *)self localSessionID];
            v39 = [v37 isEqual:v38];

            if (v39)
            {
              if ((v33 & 1) == 0)
              {
                [(SKMailbox *)self sendAnnounce];
              }

              v15 = off_1000ADE30;
              v16 = @"decide AB";
              goto LABEL_32;
            }

            if ([(SKMailbox *)self sentAnnounce]>= 0xB)
            {
              v15 = off_1000ADE70;
              v16 = @"announce-sent-too-many-announce";
              goto LABEL_32;
            }

            [(SKMailbox *)self sendAnnounce];
          }

          else if ([v9 _onqueueContains:off_1000ADE00])
          {
            [v9 _onqueueRemoveFlag:off_1000ADE00];
            v15 = off_1000ADE68;
            v16 = @"wait-announce-teardown";
            goto LABEL_32;
          }

          goto LABEL_21;
        }

        v17 = @"wait-req-start-over";
        goto LABEL_85;
      }

      [v9 _onqueueRemoveFlag:off_1000ADE10];
      goto LABEL_15;
    }

    if ([v8 isEqual:off_1000ADE30])
    {
      v18 = off_1000ADE40;
      v19 = off_1000ADE68;
      v67 = _NSConcreteStackBlock;
      v68 = 3221225472;
      v69 = sub_100028B58;
      v70 = &unk_100095E58;
      v71 = self;
      v20 = @"decide-ab";
      v21 = &v67;
      goto LABEL_24;
    }

    if ([v8 isEqual:off_1000ADE38])
    {
      if ([v9 _onqueueContains:off_1000ADDD8])
      {
        if ([(SKMailbox *)self announceMismatch])
        {
          v17 = @"waitA-start-over";
          goto LABEL_81;
        }

        [v9 _onqueueRemoveFlag:off_1000ADDD8];
      }

      if ([v9 _onqueueContains:off_1000ADE08])
      {
        v17 = @"waitA-req-start-over";
        goto LABEL_85;
      }

      if (![v9 _onqueueContains:off_1000ADDE0])
      {
        goto LABEL_21;
      }

      [v9 _onqueueRemoveFlag:off_1000ADDE0];
      v18 = off_1000ADE48;
      v19 = off_1000ADE70;
      v62 = _NSConcreteStackBlock;
      v63 = 3221225472;
      v64 = sub_1000290E8;
      v65 = &unk_100095E58;
      v66 = self;
      v20 = @"commit-a";
      v21 = &v62;
      goto LABEL_24;
    }

    if ([v8 isEqual:off_1000ADE40])
    {
      if ([v9 _onqueueContains:off_1000ADDD8])
      {
        if ([(SKMailbox *)self announceMismatch])
        {
          v17 = @"replyB-start-over";
          goto LABEL_81;
        }

        [v9 _onqueueRemoveFlag:off_1000ADDD8];
      }

      if ([v9 _onqueueContains:off_1000ADE08])
      {
        v17 = @"replyB-req-start-over";
        goto LABEL_85;
      }

      if (![v9 _onqueueContains:off_1000ADDE8])
      {
        goto LABEL_21;
      }

      [v9 _onqueueRemoveFlag:off_1000ADDE8];
      [v9 _onqueueRemoveFlag:off_1000ADE10];
      v18 = off_1000ADE50;
      v19 = off_1000ADE68;
      v57 = _NSConcreteStackBlock;
      v58 = 3221225472;
      v59 = sub_10002939C;
      v60 = &unk_100095E58;
      v61 = self;
      v20 = @"reply-b";
      v21 = &v57;
      goto LABEL_24;
    }

    if ([v8 isEqual:off_1000ADE48])
    {
      if ([v9 _onqueueContains:off_1000ADE10])
      {
        [v9 _onqueueRemoveFlag:off_1000ADE10];
        v40 = [(SKMailbox *)self gotSelected];
        v41 = [v40 sessionId];
        v42 = [(SKMailbox *)self negotiatedSessionID];
        v43 = [v41 isEqual:v42];

        if ((v43 & 1) == 0)
        {
LABEL_15:
          v17 = @"wait-select-confirm";
          goto LABEL_85;
        }
      }

      if ([v9 _onqueueContains:off_1000ADDD8])
      {
        if ([(SKMailbox *)self announceMismatch])
        {
          v17 = @"discloseA-start-over";
          goto LABEL_81;
        }

        [v9 _onqueueRemoveFlag:off_1000ADDD8];
      }

      if ([v9 _onqueueContains:off_1000ADE08])
      {
        v17 = @"discloseA-req-start-over";
        goto LABEL_85;
      }

      if (![v9 _onqueueContains:off_1000ADDF0])
      {
        goto LABEL_21;
      }

      [v9 _onqueueRemoveFlag:off_1000ADDF0];
      v18 = off_1000ADE50;
      v19 = off_1000ADE68;
      v52 = _NSConcreteStackBlock;
      v53 = 3221225472;
      v54 = sub_1000295F0;
      v55 = &unk_100095E58;
      v56 = self;
      v20 = @"disclose-a";
      v21 = &v52;
      goto LABEL_24;
    }

    if ([v8 isEqual:off_1000ADE50])
    {
      if ([v9 _onqueueContains:off_1000ADDF8])
      {
        [v9 _onqueueRemoveFlag:off_1000ADDF8];
        v18 = off_1000ADE58;
        v19 = off_1000ADE68;
        v47 = _NSConcreteStackBlock;
        v48 = 3221225472;
        v49 = sub_100029850;
        v50 = &unk_100095E58;
        v51 = self;
        v20 = @"Confirm";
        v21 = &v47;
        goto LABEL_24;
      }

      if (![v9 _onqueueContains:off_1000ADDD8])
      {
        if (![v9 _onqueueContains:off_1000ADE08])
        {
          goto LABEL_21;
        }

        v17 = @"confirm-req-start-over";
        goto LABEL_85;
      }

      v17 = @"confirm-start-over";
LABEL_81:
      v44 = self;
      v45 = 0;
LABEL_86:
      v26 = [(SKMailbox *)v44 onQueueStartOver:v17 clearAnnounce:v45 flags:v9];
      goto LABEL_87;
    }

    if ([v8 isEqual:off_1000ADE58])
    {
      if ([v9 _onqueueContains:off_1000ADDD8])
      {
        if ([(SKMailbox *)self announceMismatch])
        {
          v17 = @"finish-start-over";
          goto LABEL_81;
        }

        [v9 _onqueueRemoveFlag:off_1000ADDD8];
      }

      if ([v9 _onqueueContains:off_1000ADE00])
      {
        [v9 _onqueueRemoveFlag:off_1000ADE00];
        v15 = off_1000ADE60;
        v16 = @"finish-teardown";
        goto LABEL_32;
      }

      if ([v9 _onqueueContains:off_1000ADE08])
      {
        v17 = @"finish-req-start-over";
        goto LABEL_85;
      }
    }

    else
    {
      if ([v8 isEqual:off_1000ADE60])
      {
        [(SKMailbox *)self onQueueUpdateState];
        if (![v9 _onqueueContains:off_1000ADDD8])
        {
          if (![v9 _onqueueContains:off_1000ADE08])
          {
            goto LABEL_21;
          }

          v17 = @"disconnected-start-over";
          goto LABEL_85;
        }

        v17 = @"disconnected-start-over";
        goto LABEL_81;
      }

      if (![v8 isEqual:off_1000ADE68])
      {
        if ([v8 isEqual:off_1000ADE70])
        {
          goto LABEL_21;
        }

        if (![v8 isEqual:off_1000ADE78])
        {
          abort();
        }

        v17 = @"peer-reset-start-over";
        goto LABEL_85;
      }

      if ([v9 _onqueueContains:off_1000ADE08])
      {
        v17 = @"error-start-over";
        goto LABEL_85;
      }

      [(SKMailbox *)self sendTeardown];
      [(SKMailbox *)self stopTransaction];
    }

    [(SKMailbox *)self onQueueUpdateState];
    goto LABEL_21;
  }

  [v9 _onqueueRemoveFlag:off_1000ADDD8];
  if ([v9 _onqueueContains:off_1000ADE08])
  {
    v17 = @"got-req-start-over";
LABEL_85:
    v44 = self;
    v45 = 1;
    goto LABEL_86;
  }

  if (![v9 _onqueueContains:off_1000ADDD0])
  {
    if ([v9 _onqueueContains:off_1000ADE00])
    {
      v15 = off_1000ADE68;
      v16 = @"got-announce-teardown";
      goto LABEL_32;
    }

LABEL_21:
    v25 = 0;
    goto LABEL_88;
  }

  [v9 _onqueueRemoveFlag:off_1000ADDD0];
  v18 = off_1000ADE30;
  v19 = off_1000ADE68;
  v72 = _NSConcreteStackBlock;
  v73 = 3221225472;
  v74 = sub_100028968;
  v75 = &unk_100095E58;
  v76 = self;
  v20 = @"got-announce-send";
  v21 = &v72;
LABEL_24:
  v26 = [KTStateTransitionOperation named:v20 intending:v18 errorState:v19 withBlockTakingSelf:v21, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76];
LABEL_87:
  v25 = v26;
LABEL_88:

  return v25;
}

- (void)reset
{
  v3 = [(SKMailbox *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "reset", v4, 2u);
  }

  [(SKMailbox *)self setPeerSessionID:0];
  [(SKMailbox *)self setNegotiatedSessionID:0];
  [(SKMailbox *)self setPeerAnnounce:0];
  [(SKMailbox *)self setSas:0];
  [(SKMailbox *)self setSentTeardown:0];
  [(SKMailbox *)self setSentAnnounce:0];
}

- (void)restart
{
  v3 = [(SKMailbox *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(SKMailbox *)self localSessionID];
    v5 = [v4 kt_hexString];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: restarting session", &v7, 0xCu);
  }

  v6 = [(SKMailbox *)self stateMachine];
  [v6 handleFlag:off_1000ADE08];
}

- (id)onQueueStartOver:(id)a3 clearAnnounce:(BOOL)a4 flags:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(SKMailbox *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(SKMailbox *)self localSessionID];
    v12 = [v11 kt_hexString];
    v15 = 138543362;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: starting over session", &v15, 0xCu);
  }

  [(SKMailbox *)self reset];
  if (v5)
  {
    [v8 _onqueueRemoveFlag:off_1000ADDD8];
    [v8 _onqueueSetFlag:off_1000ADDD0];
  }

  else
  {
    [v8 _onqueueSetFlag:off_1000ADDD0];
    if (([v8 _onqueueContains:off_1000ADDD8] & 1) == 0)
    {
      _os_assumes_log();
    }
  }

  [v8 _onqueueRemoveFlag:off_1000ADDE8];
  [v8 _onqueueRemoveFlag:off_1000ADDF0];
  [v8 _onqueueRemoveFlag:off_1000ADDF8];
  [v8 _onqueueRemoveFlag:off_1000ADE00];
  [v8 _onqueueRemoveFlag:off_1000ADE08];
  [v8 _onqueueRemoveFlag:off_1000ADE10];
  v13 = [KTStateTransitionOperation named:v9 entering:off_1000ADE18];

  return v13;
}

- (BOOL)matchSession:(id)a3 op:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SKMailbox *)self negotiatedSessionID];
  v9 = v8 == 0;

  if (!v8)
  {
    v12 = [(SKMailbox *)self log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: sessionID not known yet", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v10 = [(SKMailbox *)self negotiatedSessionID];
  v11 = [v6 isEqual:v10];

  if ((v11 & 1) == 0)
  {
    v13 = [(SKMailbox *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v11 = [v6 kt_hexString];
      v17 = [(SKMailbox *)self negotiatedSessionID];
      v18 = [v17 kt_hexString];
      *buf = 138543874;
      v20 = v7;
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v18;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: negotiated sessionID mismatch (sessionID: %@ neg: %@)", buf, 0x20u);
    }

    v12 = [(SKMailbox *)self destinationIDSID];
    v14 = v12;
    if (!v12)
    {
      v11 = [(SKMailbox *)self peer];
      v14 = [v11 peer];
    }

    v15 = [NSString stringWithFormat:@"%@-mismatch-sessionId", v7];
    [(SKMailbox *)self sendTearDown:v6 idsHandle:v14 because:v15];

    if (!v12)
    {
    }

LABEL_12:

    goto LABEL_13;
  }

  v9 = 1;
LABEL_13:

  return v9;
}

- (id)matchPeerSessionID:(id)a3 op:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    goto LABEL_4;
  }

  v8 = [(SKMailbox *)self localSessionID];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = [(SKMailbox *)self localSessionID];
  v10 = [v6 isEqual:v9];

  if ((v10 & 1) == 0)
  {
    v8 = off_1000ADE78;
    [(SKMailbox *)self setPeerIDMismatchCounter:[(SKMailbox *)self peerIDMismatchCounter]+ 1];
    if ([(SKMailbox *)self peerIDMismatchCounter]>= 3)
    {
      v11 = off_1000ADE70;

      v8 = v11;
    }

    v12 = [(SKMailbox *)self log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = [v6 kt_hexString];
      v15 = [(SKMailbox *)self peerSessionID];
      v16 = [v15 kt_hexString];
      v17 = 138544386;
      v18 = v7;
      v19 = 2114;
      v20 = v14;
      v21 = 2114;
      v22 = v16;
      v23 = 2114;
      v24 = v8;
      v25 = 1024;
      v26 = [(SKMailbox *)self peerIDMismatchCounter];
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@: peerSessionID mismatch (peer: %{public}@ announce: %{public}@) next state: %{public}@ (try %u)", &v17, 0x30u);
    }
  }

  else
  {
LABEL_4:
    v8 = 0;
  }

LABEL_10:

  return v8;
}

- (SKSessionProtocol)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end