@interface SKMailbox
+ (id)allSMFlags;
+ (id)allSMStates;
+ (id)generateSessionID;
- (BOOL)announceMismatch;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchSession:(id)session op:(id)op;
- (BOOL)sendRevealA;
- (BOOL)validateAnnounce:(id)announce;
- (NSSet)peerHandles;
- (SKMailbox)initWithLogging:(id)logging publicInfo:(id)info peerIDSID:(id)d session:(id)session;
- (SKSessionProtocol)session;
- (id)_onqueueNextStateMachineTransition:(id)transition flags:(id)flags pendingFlags:(id)pendingFlags;
- (id)mapMailbox;
- (id)matchPeerSessionID:(id)d op:(id)op;
- (id)onQueueMapMailbox;
- (id)onQueueStartOver:(id)over clearAnnounce:(BOOL)announce flags:(id)flags;
- (int64_t)sentTime;
- (unint64_t)hash;
- (void)dealloc;
- (void)haltStateMachine;
- (void)onQueueUpdateState;
- (void)recvAnnounce:(id)announce;
- (void)recvCommit:(id)commit;
- (void)recvConfirm:(id)confirm;
- (void)recvDiscloseA:(id)a;
- (void)recvReplyB:(id)b;
- (void)recvSelected:(id)selected;
- (void)recvTeardown:(id)teardown;
- (void)reset;
- (void)restart;
- (void)sendAnnounce;
- (void)sendCommitA;
- (void)sendConfirm;
- (void)sendSelected;
- (void)sendSetupB;
- (void)sendTearDown:(id)down idsHandle:(id)handle because:(id)because;
- (void)sendTeardown;
- (void)setPeer:(id)peer;
- (void)startSession;
- (void)stopTransaction;
- (void)updateState;
- (void)updateTimer;
- (void)updateTransaction;
@end

@implementation SKMailbox

- (SKMailbox)initWithLogging:(id)logging publicInfo:(id)info peerIDSID:(id)d session:(id)session
{
  loggingCopy = logging;
  infoCopy = info;
  dCopy = d;
  sessionCopy = session;
  v35.receiver = self;
  v35.super_class = SKMailbox;
  v14 = [(SKMailbox *)&v35 init];
  if (v14)
  {
    v15 = +[SKMailbox generateSessionID];
    [(SKMailbox *)v14 setHandleID:v15];

    v16 = +[SKMailbox generateSessionID];
    [(SKMailbox *)v14 setLocalSessionID:v16];

    [(SKMailbox *)v14 setMyPublicInfo:infoCopy];
    [(SKMailbox *)v14 setPeerIDSID:dCopy];
    v31 = loggingCopy;
    [(SKMailbox *)v14 setLog:loggingCopy];
    [(SKMailbox *)v14 setSession:sessionCopy];
    [(SKMailbox *)v14 setPeerIDMismatchCounter:0];
    [(SKMailbox *)v14 setBeforeRatelimit:10];
    v17 = dispatch_queue_create("updateQueue", 0);
    [(SKMailbox *)v14 setUpdateQueue:v17];

    v18 = dispatch_queue_create("KTStaticKeyMailbox", 0);
    [(SKMailbox *)v14 setStateMachineQueue:v18];

    v19 = [KTStateMachine alloc];
    allSMStates = [objc_opt_class() allSMStates];
    allSMFlags = [objc_opt_class() allSMFlags];
    v22 = off_1000ADE18;
    stateMachineQueue = [(SKMailbox *)v14 stateMachineQueue];
    v24 = +[TransparencyIDSConfigBag sharedInstance];
    v25 = [(KTStateMachine *)v19 initWithName:@"KTStateMachine" states:allSMStates flags:allSMFlags initialState:v22 queue:stateMachineQueue stateEngine:v14 lockStateTracker:0 reachabilityTracker:0 idsConfigBag:v24];
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

    stateMachine = [(SKMailbox *)v14 stateMachine];
    [stateMachine startOperation];

    v29 = v14;
    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
    loggingCopy = v31;
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
  stateMachine = [(SKMailbox *)self stateMachine];
  [stateMachine haltOperation];
}

- (void)dealloc
{
  v3 = [(SKMailbox *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    localSessionID = [(SKMailbox *)self localSessionID];
    kt_hexString = [localSessionID kt_hexString];
    *buf = 138543362;
    v9 = kt_hexString;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "dealloc: %{public}@", buf, 0xCu);
  }

  [(SKMailbox *)self stopTransaction];
  session = [(SKMailbox *)self session];
  [session teardownMailbox:self];

  v7.receiver = self;
  v7.super_class = SKMailbox;
  [(SKMailbox *)&v7 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    localSessionID = [equalCopy localSessionID];
    localSessionID2 = [(SKMailbox *)self localSessionID];
    v7 = [localSessionID isEqual:localSessionID2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  localSessionID = [(SKMailbox *)self localSessionID];
  v3 = [localSessionID hash];

  return v3;
}

- (void)setPeer:(id)peer
{
  peerCopy = peer;
  peerStorage = [(SKMailbox *)self peerStorage];

  if (!peerStorage)
  {
    [(SKMailbox *)self setPeerStorage:peerCopy];
  }
}

- (NSSet)peerHandles
{
  peer = [(SKMailbox *)self peer];
  v3Peer = [peer peer];
  v5 = [NSMutableSet setWithObject:v3Peer];

  peer2 = [(SKMailbox *)self peer];
  otherNamesForPeer = [peer2 otherNamesForPeer];

  if (otherNamesForPeer)
  {
    peer3 = [(SKMailbox *)self peer];
    otherNamesForPeer2 = [peer3 otherNamesForPeer];
    [v5 unionSet:otherNamesForPeer2];
  }

  return v5;
}

- (void)startSession
{
  stateMachine = [(SKMailbox *)self stateMachine];
  [stateMachine handleFlag:off_1000ADDD0];
}

- (void)updateTransaction
{
  v3 = [(SKMailbox *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    handleID = [(SKMailbox *)self handleID];
    kt_hexString = [handleID kt_hexString];
    transaction = [(SKMailbox *)self transaction];
    v7 = @"yes";
    if (!transaction)
    {
      v7 = @"no";
    }

    v10 = 138543618;
    v11 = kt_hexString;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "updateTransaction: %{public}@ exists: %{public}@", &v10, 0x16u);
  }

  transaction2 = [(SKMailbox *)self transaction];

  if (!transaction2)
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
    handleID = [(SKMailbox *)self handleID];
    kt_hexString = [handleID kt_hexString];
    v6 = 138543362;
    v7 = kt_hexString;
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
  stateMachineQueue = [(SKMailbox *)self stateMachineQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025D08;
  block[3] = &unk_100094F10;
  block[4] = self;
  dispatch_sync(stateMachineQueue, block);
}

- (void)onQueueUpdateState
{
  stateMachineQueue = [(SKMailbox *)self stateMachineQueue];
  dispatch_assert_queue_V2(stateMachineQueue);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  stateUpdate = [(SKMailbox *)selfCopy stateUpdate];
  objc_sync_exit(selfCopy);

  if (stateUpdate)
  {
    updateQueue = [(SKMailbox *)selfCopy updateQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100025E0C;
    v7[3] = &unk_100095DF0;
    v7[4] = selfCopy;
    v8 = stateUpdate;
    dispatch_async(updateQueue, v7);
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
  stateMachineQueue = [(SKMailbox *)self stateMachineQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100025F9C;
  v6[3] = &unk_100094EE8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateMachineQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)onQueueMapMailbox
{
  stateMachine = [(SKMailbox *)self stateMachine];
  currentState = [stateMachine currentState];

  v5 = objc_alloc_init(KTIDSSession);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  handleID = [(SKMailbox *)selfCopy handleID];
  kt_hexString = [handleID kt_hexString];
  [v5 setSessionID:kt_hexString];

  peerPublicInfo = [(SKMailbox *)selfCopy peerPublicInfo];

  if (peerPublicInfo)
  {
    peerPublicInfo2 = [(SKMailbox *)selfCopy peerPublicInfo];
    v11 = [KTAccountPublicID ktAccountPublicIDWithPublicKeyInfo:peerPublicInfo2 error:0];
    [v5 setPeerAccountIdentity:v11];
  }

  objc_sync_exit(selfCopy);

  if (([currentState isEqual:off_1000ADE18] & 1) != 0 || objc_msgSend(currentState, "isEqual:", off_1000ADE20))
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

  if ([currentState isEqual:off_1000ADE28] || objc_msgSend(currentState, "isEqual:", off_1000ADE30) || objc_msgSend(currentState, "isEqual:", off_1000ADE40) || objc_msgSend(currentState, "isEqual:", off_1000ADE48) || objc_msgSend(currentState, "isEqual:", off_1000ADE50))
  {
LABEL_12:
    [v5 setState:kTransparencyStaticKeyStateNegotiating];
    v13 = v5;
    v14 = 0;
    goto LABEL_13;
  }

  if (([currentState isEqual:off_1000ADE58] & 1) == 0 && !objc_msgSend(currentState, "isEqual:", off_1000ADE60))
  {
    if ([currentState isEqual:off_1000ADE68])
    {
      v12 = &kTransparencyStaticKeyStateCodeError;
      goto LABEL_6;
    }

    if (![currentState isEqual:off_1000ADE70] && !objc_msgSend(currentState, "isEqual:", off_1000ADE78))
    {
      v22 = [(SKMailbox *)selfCopy log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10006E2D4();
      }

      v12 = &kTransparencyStaticKeyStateNegotiating;
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  [v5 setPeerDisconnected:{objc_msgSend(currentState, "isEqual:", off_1000ADE60)}];
  v16 = [(SKMailbox *)selfCopy sas];
  shortAuthenticationString = [v16 shortAuthenticationString];
  [v5 setSasCode:shortAuthenticationString];

  sasCode = [v5 sasCode];

  if (sasCode)
  {
    v19 = &kTransparencyStaticKeyStateCodeAvailable;
  }

  else
  {
    peerDisconnected = [v5 peerDisconnected];
    v19 = &kTransparencyStaticKeyStateCodeError;
    if (peerDisconnected)
    {
      v19 = &kTransparencyStaticKeyStateNegotiating;
    }
  }

  [v5 setState:*v19];
  expire = [(SKMailbox *)selfCopy expire];
  [v5 setSessionExpire:expire];

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

- (void)recvAnnounce:(id)announce
{
  announceCopy = announce;
  stateMachineQueue = [(SKMailbox *)self stateMachineQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000267FC;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = announceCopy;
  v6 = announceCopy;
  dispatch_sync(stateMachineQueue, v7);
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
    handleID = [(SKMailbox *)self handleID];
    kt_hexString = [handleID kt_hexString];
    peerSessionID = [(SKMailbox *)self peerSessionID];
    kt_hexString2 = [peerSessionID kt_hexString];
    v12 = 138543874;
    v13 = kt_hexString;
    v14 = 2114;
    v15 = kt_hexString2;
    v16 = 2048;
    sentAnnounce = [(SKMailbox *)self sentAnnounce];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "send announce %{public}@ peer: %{public}@ count: %lu", &v12, 0x20u);
  }

  [(SKMailbox *)self setSentAnnounce:[(SKMailbox *)self sentAnnounce]+ 1];
  v8 = objc_alloc_init(_TtC21transparencyStaticKey12GSASAnnounce);
  localSessionID = [(SKMailbox *)self localSessionID];
  [(GSASAnnounce *)v8 setSessionId:localSessionID];

  peerSessionID2 = [(SKMailbox *)self peerSessionID];
  [(GSASAnnounce *)v8 setPeerSessionId:peerSessionID2];

  data = [(GSASAnnounce *)v8 data];
  [(SKMailbox *)self sendMessage:0 data:data];
}

- (void)recvCommit:(id)commit
{
  commitCopy = commit;
  stateMachineQueue = [(SKMailbox *)self stateMachineQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100026BE0;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = commitCopy;
  v6 = commitCopy;
  dispatch_sync(stateMachineQueue, v7);
}

- (void)sendCommitA
{
  negotiatedSessionID = [(SKMailbox *)self negotiatedSessionID];
  v4 = [negotiatedSessionID length];

  if (!v4)
  {
    _os_assumes_log();
  }

  v5 = [(SKMailbox *)self sas];
  initiator = [v5 initiator];

  if ((initiator & 1) == 0)
  {
    _os_assumes_log();
  }

  v12 = objc_alloc_init(_TtC21transparencyStaticKey10GSASCommit);
  negotiatedSessionID2 = [(SKMailbox *)self negotiatedSessionID];
  [(GSASCommit *)v12 setSessionId:negotiatedSessionID2];

  myPublicInfo = [(SKMailbox *)self myPublicInfo];
  [(GSASCommit *)v12 setPublicInfo:myPublicInfo];

  v9 = [(SKMailbox *)self sas];
  undisclosedInitiatorRandom = [v9 undisclosedInitiatorRandom];
  [(GSASCommit *)v12 setACommitRandom:undisclosedInitiatorRandom];

  data = [(GSASCommit *)v12 data];
  [(SKMailbox *)self sendMessage:1 data:data];
}

- (void)recvReplyB:(id)b
{
  bCopy = b;
  stateMachineQueue = [(SKMailbox *)self stateMachineQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100026E30;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = bCopy;
  v6 = bCopy;
  dispatch_sync(stateMachineQueue, v7);
}

- (void)sendSetupB
{
  negotiatedSessionID = [(SKMailbox *)self negotiatedSessionID];
  v4 = [negotiatedSessionID length];

  if (!v4)
  {
    _os_assumes_log();
  }

  v5 = [(SKMailbox *)self sas];
  initiator = [v5 initiator];

  if (initiator)
  {
    _os_assumes_log();
  }

  v13 = objc_alloc_init(_TtC21transparencyStaticKey10GSASSetupB);
  negotiatedSessionID2 = [(SKMailbox *)self negotiatedSessionID];
  [(GSASSetupB *)v13 setSessionId:negotiatedSessionID2];

  myPublicInfo = [(SKMailbox *)self myPublicInfo];
  [(GSASSetupB *)v13 setPublicInfo:myPublicInfo];

  v9 = [(SKMailbox *)self sas];
  selfRandom = [v9 selfRandom];
  [(GSASSetupB *)v13 setBRandom:selfRandom];

  peerSessionID = [(SKMailbox *)self peerSessionID];
  [(GSASSetupB *)v13 setPeerSessionId:peerSessionID];

  data = [(GSASSetupB *)v13 data];
  [(SKMailbox *)self sendMessage:4 data:data];
}

- (void)recvDiscloseA:(id)a
{
  aCopy = a;
  stateMachineQueue = [(SKMailbox *)self stateMachineQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000270A0;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = aCopy;
  v6 = aCopy;
  dispatch_sync(stateMachineQueue, v7);
}

- (BOOL)sendRevealA
{
  negotiatedSessionID = [(SKMailbox *)self negotiatedSessionID];
  v4 = [negotiatedSessionID length];

  if (!v4)
  {
    _os_assumes_log();
  }

  v5 = [(SKMailbox *)self sas];
  initiator = [v5 initiator];

  if ((initiator & 1) == 0)
  {
    _os_assumes_log();
  }

  v7 = [(SKMailbox *)self sas];
  selfRandom = [v7 selfRandom];

  if (selfRandom)
  {
    v9 = objc_alloc_init(_TtC21transparencyStaticKey10GSASReveal);
    negotiatedSessionID2 = [(SKMailbox *)self negotiatedSessionID];
    [(GSASReveal *)v9 setSessionId:negotiatedSessionID2];

    [(GSASReveal *)v9 setARandom:selfRandom];
    peerSessionID = [(SKMailbox *)self peerSessionID];
    [(GSASReveal *)v9 setPeerSessionId:peerSessionID];

    data = [(GSASReveal *)v9 data];
    [(SKMailbox *)self sendMessage:5 data:data];
  }

  return selfRandom != 0;
}

- (void)recvConfirm:(id)confirm
{
  confirmCopy = confirm;
  stateMachineQueue = [(SKMailbox *)self stateMachineQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000272E8;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = confirmCopy;
  v6 = confirmCopy;
  dispatch_sync(stateMachineQueue, v7);
}

- (void)sendSelected
{
  v5 = objc_alloc_init(_TtC21transparencyStaticKey12GSASSelected);
  negotiatedSessionID = [(SKMailbox *)self negotiatedSessionID];
  [(GSASSelected *)v5 setSessionId:negotiatedSessionID];

  data = [(GSASSelected *)v5 data];
  [(SKMailbox *)self sendMessage:2 data:data];
}

- (void)recvSelected:(id)selected
{
  selectedCopy = selected;
  stateMachineQueue = [(SKMailbox *)self stateMachineQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002748C;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = selectedCopy;
  v6 = selectedCopy;
  dispatch_sync(stateMachineQueue, v7);
}

- (void)sendConfirm
{
  v3 = [(SKMailbox *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10006E36C(self);
  }

  negotiatedSessionID = [(SKMailbox *)self negotiatedSessionID];
  v5 = [negotiatedSessionID length];

  if (!v5)
  {
    _os_assumes_log();
  }

  v6 = objc_alloc_init(_TtC21transparencyStaticKey11GSASConfirm);
  negotiatedSessionID2 = [(SKMailbox *)self negotiatedSessionID];
  [(GSASConfirm *)v6 setSessionId:negotiatedSessionID2];

  [(GSASConfirm *)v6 setSentTime:[(SKMailbox *)self sentTime]];
  peerSessionID = [(SKMailbox *)self peerSessionID];
  [(GSASConfirm *)v6 setPeerSessionId:peerSessionID];

  data = [(GSASConfirm *)v6 data];
  [(SKMailbox *)self sendMessage:6 data:data];
}

- (void)sendTearDown:(id)down idsHandle:(id)handle because:(id)because
{
  downCopy = down;
  handleCopy = handle;
  becauseCopy = because;
  v11 = [(SKMailbox *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    kt_hexString = [downCopy kt_hexString];
    v16 = 138544130;
    v17 = kt_hexString;
    v18 = 2160;
    v19 = 1752392040;
    v20 = 2112;
    v21 = handleCopy;
    v22 = 2114;
    v23 = becauseCopy;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "sending teardown of session %{public}@ to peer %{mask.hash}@ because %{public}@", &v16, 0x2Au);
  }

  if (downCopy && handleCopy)
  {
    v12 = objc_alloc_init(_TtC21transparencyStaticKey12GSASTeardown);
    [(GSASTeardown *)v12 setSessionId:downCopy];
    data = [(GSASTeardown *)v12 data];
    sourceIDS = [(SKMailbox *)self sourceIDS];
    [(SKMailbox *)self sendMessage:3 data:data targets:handleCopy sourceID:sourceIDS];
  }
}

- (void)recvTeardown:(id)teardown
{
  teardownCopy = teardown;
  stateMachineQueue = [(SKMailbox *)self stateMachineQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100027840;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = teardownCopy;
  v6 = teardownCopy;
  dispatch_sync(stateMachineQueue, v7);
}

- (void)sendTeardown
{
  if (![(SKMailbox *)self sentTeardown])
  {
    [(SKMailbox *)self setSentTeardown:1];
    v8 = objc_alloc_init(_TtC21transparencyStaticKey12GSASTeardown);
    peerSessionID = [(SKMailbox *)self peerSessionID];

    if (peerSessionID)
    {
      peerSessionID2 = [(SKMailbox *)self peerSessionID];
      [(GSASTeardown *)v8 setSessionId:peerSessionID2];

      data = [(GSASTeardown *)v8 data];
      [(SKMailbox *)self sendMessage:3 data:data];
    }

    localSessionID = [(SKMailbox *)self localSessionID];
    [(GSASTeardown *)v8 setSessionId:localSessionID];

    data2 = [(GSASTeardown *)v8 data];
    [(SKMailbox *)self sendMessage:3 data:data2];
  }
}

- (BOOL)validateAnnounce:(id)announce
{
  announceCopy = announce;
  if (announceCopy)
  {
    v14 = 0;
    v5 = [[_TtC21transparencyStaticKey12GSASAnnounce alloc] initWithData:announceCopy error:&v14];
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
      sessionId = [(GSASAnnounce *)v5 sessionId];
      v12 = [sessionId length];

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
  gotAnnounceData = [(SKMailbox *)self gotAnnounceData];

  if (gotAnnounceData)
  {
    v4 = [_TtC21transparencyStaticKey12GSASAnnounce alloc];
    gotAnnounceData2 = [(SKMailbox *)self gotAnnounceData];
    v18 = 0;
    v6 = [(GSASAnnounce *)v4 initWithData:gotAnnounceData2 error:&v18];
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
      sessionId = [(GSASAnnounce *)v6 sessionId];
      peerSessionID = [(SKMailbox *)self peerSessionID];
      v13 = [sessionId isEqual:peerSessionID];

      if (v13)
      {
        peerSessionId = [(GSASAnnounce *)v6 peerSessionId];
        localSessionID = [(SKMailbox *)self localSessionID];
        v16 = [peerSessionId isEqual:localSessionID];

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

- (id)_onqueueNextStateMachineTransition:(id)transition flags:(id)flags pendingFlags:(id)pendingFlags
{
  transitionCopy = transition;
  flagsCopy = flags;
  pendingFlagsCopy = pendingFlags;
  v11 = [(SKMailbox *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    dumpFlags = [flagsCopy dumpFlags];
    v13 = [dumpFlags componentsJoinedByString:{@", "}];
    *buf = 138543618;
    v78 = transitionCopy;
    v79 = 2114;
    v80 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "in state %{public}@ with flags: %{public}@", buf, 0x16u);
  }

  if ([transitionCopy isEqual:off_1000ADE18])
  {
    if ([flagsCopy _onqueueContains:off_1000ADDD0])
    {
      [flagsCopy _onqueueRemoveFlag:off_1000ADDD0];
      myPublicInfo = [(SKMailbox *)self myPublicInfo];

      if (myPublicInfo)
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

    if ([flagsCopy _onqueueContains:off_1000ADDD8])
    {
      [flagsCopy _onqueueRemoveFlag:off_1000ADDD8];
      v15 = off_1000ADE20;
      v16 = @"got-announce";
LABEL_32:
      selfCopy8 = [KTStateTransitionOperation named:v16 entering:v15];
      goto LABEL_87;
    }

    v22 = [(SKMailbox *)self log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      dumpFlags2 = [flagsCopy dumpFlags];
      v24 = [dumpFlags2 componentsJoinedByString:{@", "}];
      *buf = 138543362;
      v78 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "SMStateInitial waiting for start: %{public}@", buf, 0xCu);
    }

    goto LABEL_21;
  }

  if (![transitionCopy isEqual:off_1000ADE20])
  {
    if ([transitionCopy isEqual:off_1000ADE28])
    {
      if (![flagsCopy _onqueueContains:off_1000ADE10])
      {
        if (![flagsCopy _onqueueContains:off_1000ADE08])
        {
          if ([flagsCopy _onqueueContains:off_1000ADDD8])
          {
            [flagsCopy _onqueueRemoveFlag:off_1000ADDD8];
            gotAnnounceData = [(SKMailbox *)self gotAnnounceData];
            v29 = [(SKMailbox *)self validateAnnounce:gotAnnounceData];

            if ((v29 & 1) == 0)
            {
              v15 = off_1000ADE68;
              v16 = @"no valid error";
              goto LABEL_32;
            }

            peerSessionID = [(SKMailbox *)self peerSessionID];
            peerAnnounce = [(SKMailbox *)self peerAnnounce];
            sessionId = [peerAnnounce sessionId];
            v33 = [peerSessionID isEqual:sessionId];

            peerAnnounce2 = [(SKMailbox *)self peerAnnounce];
            sessionId2 = [peerAnnounce2 sessionId];
            [(SKMailbox *)self setPeerSessionID:sessionId2];

            peerAnnounce3 = [(SKMailbox *)self peerAnnounce];
            peerSessionId = [peerAnnounce3 peerSessionId];
            localSessionID = [(SKMailbox *)self localSessionID];
            v39 = [peerSessionId isEqual:localSessionID];

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

          else if ([flagsCopy _onqueueContains:off_1000ADE00])
          {
            [flagsCopy _onqueueRemoveFlag:off_1000ADE00];
            v15 = off_1000ADE68;
            v16 = @"wait-announce-teardown";
            goto LABEL_32;
          }

          goto LABEL_21;
        }

        v17 = @"wait-req-start-over";
        goto LABEL_85;
      }

      [flagsCopy _onqueueRemoveFlag:off_1000ADE10];
      goto LABEL_15;
    }

    if ([transitionCopy isEqual:off_1000ADE30])
    {
      v18 = off_1000ADE40;
      v19 = off_1000ADE68;
      v67 = _NSConcreteStackBlock;
      v68 = 3221225472;
      v69 = sub_100028B58;
      v70 = &unk_100095E58;
      selfCopy = self;
      v20 = @"decide-ab";
      v21 = &v67;
      goto LABEL_24;
    }

    if ([transitionCopy isEqual:off_1000ADE38])
    {
      if ([flagsCopy _onqueueContains:off_1000ADDD8])
      {
        if ([(SKMailbox *)self announceMismatch])
        {
          v17 = @"waitA-start-over";
          goto LABEL_81;
        }

        [flagsCopy _onqueueRemoveFlag:off_1000ADDD8];
      }

      if ([flagsCopy _onqueueContains:off_1000ADE08])
      {
        v17 = @"waitA-req-start-over";
        goto LABEL_85;
      }

      if (![flagsCopy _onqueueContains:off_1000ADDE0])
      {
        goto LABEL_21;
      }

      [flagsCopy _onqueueRemoveFlag:off_1000ADDE0];
      v18 = off_1000ADE48;
      v19 = off_1000ADE70;
      v62 = _NSConcreteStackBlock;
      v63 = 3221225472;
      v64 = sub_1000290E8;
      v65 = &unk_100095E58;
      selfCopy2 = self;
      v20 = @"commit-a";
      v21 = &v62;
      goto LABEL_24;
    }

    if ([transitionCopy isEqual:off_1000ADE40])
    {
      if ([flagsCopy _onqueueContains:off_1000ADDD8])
      {
        if ([(SKMailbox *)self announceMismatch])
        {
          v17 = @"replyB-start-over";
          goto LABEL_81;
        }

        [flagsCopy _onqueueRemoveFlag:off_1000ADDD8];
      }

      if ([flagsCopy _onqueueContains:off_1000ADE08])
      {
        v17 = @"replyB-req-start-over";
        goto LABEL_85;
      }

      if (![flagsCopy _onqueueContains:off_1000ADDE8])
      {
        goto LABEL_21;
      }

      [flagsCopy _onqueueRemoveFlag:off_1000ADDE8];
      [flagsCopy _onqueueRemoveFlag:off_1000ADE10];
      v18 = off_1000ADE50;
      v19 = off_1000ADE68;
      v57 = _NSConcreteStackBlock;
      v58 = 3221225472;
      v59 = sub_10002939C;
      v60 = &unk_100095E58;
      selfCopy3 = self;
      v20 = @"reply-b";
      v21 = &v57;
      goto LABEL_24;
    }

    if ([transitionCopy isEqual:off_1000ADE48])
    {
      if ([flagsCopy _onqueueContains:off_1000ADE10])
      {
        [flagsCopy _onqueueRemoveFlag:off_1000ADE10];
        gotSelected = [(SKMailbox *)self gotSelected];
        sessionId3 = [gotSelected sessionId];
        negotiatedSessionID = [(SKMailbox *)self negotiatedSessionID];
        v43 = [sessionId3 isEqual:negotiatedSessionID];

        if ((v43 & 1) == 0)
        {
LABEL_15:
          v17 = @"wait-select-confirm";
          goto LABEL_85;
        }
      }

      if ([flagsCopy _onqueueContains:off_1000ADDD8])
      {
        if ([(SKMailbox *)self announceMismatch])
        {
          v17 = @"discloseA-start-over";
          goto LABEL_81;
        }

        [flagsCopy _onqueueRemoveFlag:off_1000ADDD8];
      }

      if ([flagsCopy _onqueueContains:off_1000ADE08])
      {
        v17 = @"discloseA-req-start-over";
        goto LABEL_85;
      }

      if (![flagsCopy _onqueueContains:off_1000ADDF0])
      {
        goto LABEL_21;
      }

      [flagsCopy _onqueueRemoveFlag:off_1000ADDF0];
      v18 = off_1000ADE50;
      v19 = off_1000ADE68;
      v52 = _NSConcreteStackBlock;
      v53 = 3221225472;
      v54 = sub_1000295F0;
      v55 = &unk_100095E58;
      selfCopy4 = self;
      v20 = @"disclose-a";
      v21 = &v52;
      goto LABEL_24;
    }

    if ([transitionCopy isEqual:off_1000ADE50])
    {
      if ([flagsCopy _onqueueContains:off_1000ADDF8])
      {
        [flagsCopy _onqueueRemoveFlag:off_1000ADDF8];
        v18 = off_1000ADE58;
        v19 = off_1000ADE68;
        v47 = _NSConcreteStackBlock;
        v48 = 3221225472;
        v49 = sub_100029850;
        v50 = &unk_100095E58;
        selfCopy5 = self;
        v20 = @"Confirm";
        v21 = &v47;
        goto LABEL_24;
      }

      if (![flagsCopy _onqueueContains:off_1000ADDD8])
      {
        if (![flagsCopy _onqueueContains:off_1000ADE08])
        {
          goto LABEL_21;
        }

        v17 = @"confirm-req-start-over";
        goto LABEL_85;
      }

      v17 = @"confirm-start-over";
LABEL_81:
      selfCopy7 = self;
      v45 = 0;
LABEL_86:
      selfCopy8 = [(SKMailbox *)selfCopy7 onQueueStartOver:v17 clearAnnounce:v45 flags:flagsCopy];
      goto LABEL_87;
    }

    if ([transitionCopy isEqual:off_1000ADE58])
    {
      if ([flagsCopy _onqueueContains:off_1000ADDD8])
      {
        if ([(SKMailbox *)self announceMismatch])
        {
          v17 = @"finish-start-over";
          goto LABEL_81;
        }

        [flagsCopy _onqueueRemoveFlag:off_1000ADDD8];
      }

      if ([flagsCopy _onqueueContains:off_1000ADE00])
      {
        [flagsCopy _onqueueRemoveFlag:off_1000ADE00];
        v15 = off_1000ADE60;
        v16 = @"finish-teardown";
        goto LABEL_32;
      }

      if ([flagsCopy _onqueueContains:off_1000ADE08])
      {
        v17 = @"finish-req-start-over";
        goto LABEL_85;
      }
    }

    else
    {
      if ([transitionCopy isEqual:off_1000ADE60])
      {
        [(SKMailbox *)self onQueueUpdateState];
        if (![flagsCopy _onqueueContains:off_1000ADDD8])
        {
          if (![flagsCopy _onqueueContains:off_1000ADE08])
          {
            goto LABEL_21;
          }

          v17 = @"disconnected-start-over";
          goto LABEL_85;
        }

        v17 = @"disconnected-start-over";
        goto LABEL_81;
      }

      if (![transitionCopy isEqual:off_1000ADE68])
      {
        if ([transitionCopy isEqual:off_1000ADE70])
        {
          goto LABEL_21;
        }

        if (![transitionCopy isEqual:off_1000ADE78])
        {
          abort();
        }

        v17 = @"peer-reset-start-over";
        goto LABEL_85;
      }

      if ([flagsCopy _onqueueContains:off_1000ADE08])
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

  [flagsCopy _onqueueRemoveFlag:off_1000ADDD8];
  if ([flagsCopy _onqueueContains:off_1000ADE08])
  {
    v17 = @"got-req-start-over";
LABEL_85:
    selfCopy7 = self;
    v45 = 1;
    goto LABEL_86;
  }

  if (![flagsCopy _onqueueContains:off_1000ADDD0])
  {
    if ([flagsCopy _onqueueContains:off_1000ADE00])
    {
      v15 = off_1000ADE68;
      v16 = @"got-announce-teardown";
      goto LABEL_32;
    }

LABEL_21:
    v25 = 0;
    goto LABEL_88;
  }

  [flagsCopy _onqueueRemoveFlag:off_1000ADDD0];
  v18 = off_1000ADE30;
  v19 = off_1000ADE68;
  v72 = _NSConcreteStackBlock;
  v73 = 3221225472;
  v74 = sub_100028968;
  v75 = &unk_100095E58;
  selfCopy8 = self;
  v20 = @"got-announce-send";
  v21 = &v72;
LABEL_24:
  selfCopy8 = [KTStateTransitionOperation named:v20 intending:v18 errorState:v19 withBlockTakingSelf:v21, v47, v48, v49, v50, selfCopy5, v52, v53, v54, v55, selfCopy4, v57, v58, v59, v60, selfCopy3, v62, v63, v64, v65, selfCopy2, v67, v68, v69, v70, selfCopy, v72, v73, v74, v75, selfCopy8];
LABEL_87:
  v25 = selfCopy8;
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
    localSessionID = [(SKMailbox *)self localSessionID];
    kt_hexString = [localSessionID kt_hexString];
    v7 = 138543362;
    v8 = kt_hexString;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: restarting session", &v7, 0xCu);
  }

  stateMachine = [(SKMailbox *)self stateMachine];
  [stateMachine handleFlag:off_1000ADE08];
}

- (id)onQueueStartOver:(id)over clearAnnounce:(BOOL)announce flags:(id)flags
{
  announceCopy = announce;
  flagsCopy = flags;
  overCopy = over;
  v10 = [(SKMailbox *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    localSessionID = [(SKMailbox *)self localSessionID];
    kt_hexString = [localSessionID kt_hexString];
    v15 = 138543362;
    v16 = kt_hexString;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: starting over session", &v15, 0xCu);
  }

  [(SKMailbox *)self reset];
  if (announceCopy)
  {
    [flagsCopy _onqueueRemoveFlag:off_1000ADDD8];
    [flagsCopy _onqueueSetFlag:off_1000ADDD0];
  }

  else
  {
    [flagsCopy _onqueueSetFlag:off_1000ADDD0];
    if (([flagsCopy _onqueueContains:off_1000ADDD8] & 1) == 0)
    {
      _os_assumes_log();
    }
  }

  [flagsCopy _onqueueRemoveFlag:off_1000ADDE8];
  [flagsCopy _onqueueRemoveFlag:off_1000ADDF0];
  [flagsCopy _onqueueRemoveFlag:off_1000ADDF8];
  [flagsCopy _onqueueRemoveFlag:off_1000ADE00];
  [flagsCopy _onqueueRemoveFlag:off_1000ADE08];
  [flagsCopy _onqueueRemoveFlag:off_1000ADE10];
  v13 = [KTStateTransitionOperation named:overCopy entering:off_1000ADE18];

  return v13;
}

- (BOOL)matchSession:(id)session op:(id)op
{
  sessionCopy = session;
  opCopy = op;
  negotiatedSessionID = [(SKMailbox *)self negotiatedSessionID];
  v9 = negotiatedSessionID == 0;

  if (!negotiatedSessionID)
  {
    destinationIDSID = [(SKMailbox *)self log];
    if (os_log_type_enabled(destinationIDSID, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = opCopy;
      _os_log_impl(&_mh_execute_header, destinationIDSID, OS_LOG_TYPE_DEFAULT, "%{public}@: sessionID not known yet", buf, 0xCu);
    }

    goto LABEL_12;
  }

  negotiatedSessionID2 = [(SKMailbox *)self negotiatedSessionID];
  kt_hexString = [sessionCopy isEqual:negotiatedSessionID2];

  if ((kt_hexString & 1) == 0)
  {
    v13 = [(SKMailbox *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      kt_hexString = [sessionCopy kt_hexString];
      negotiatedSessionID3 = [(SKMailbox *)self negotiatedSessionID];
      kt_hexString2 = [negotiatedSessionID3 kt_hexString];
      *buf = 138543874;
      v20 = opCopy;
      v21 = 2112;
      v22 = kt_hexString;
      v23 = 2112;
      v24 = kt_hexString2;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: negotiated sessionID mismatch (sessionID: %@ neg: %@)", buf, 0x20u);
    }

    destinationIDSID = [(SKMailbox *)self destinationIDSID];
    peer = destinationIDSID;
    if (!destinationIDSID)
    {
      kt_hexString = [(SKMailbox *)self peer];
      peer = [kt_hexString peer];
    }

    opCopy = [NSString stringWithFormat:@"%@-mismatch-sessionId", opCopy];
    [(SKMailbox *)self sendTearDown:sessionCopy idsHandle:peer because:opCopy];

    if (!destinationIDSID)
    {
    }

LABEL_12:

    goto LABEL_13;
  }

  v9 = 1;
LABEL_13:

  return v9;
}

- (id)matchPeerSessionID:(id)d op:(id)op
{
  dCopy = d;
  opCopy = op;
  if (!dCopy)
  {
    goto LABEL_4;
  }

  localSessionID = [(SKMailbox *)self localSessionID];
  if (!localSessionID)
  {
    goto LABEL_10;
  }

  localSessionID2 = [(SKMailbox *)self localSessionID];
  v10 = [dCopy isEqual:localSessionID2];

  if ((v10 & 1) == 0)
  {
    localSessionID = off_1000ADE78;
    [(SKMailbox *)self setPeerIDMismatchCounter:[(SKMailbox *)self peerIDMismatchCounter]+ 1];
    if ([(SKMailbox *)self peerIDMismatchCounter]>= 3)
    {
      v11 = off_1000ADE70;

      localSessionID = v11;
    }

    v12 = [(SKMailbox *)self log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      kt_hexString = [dCopy kt_hexString];
      peerSessionID = [(SKMailbox *)self peerSessionID];
      kt_hexString2 = [peerSessionID kt_hexString];
      v17 = 138544386;
      v18 = opCopy;
      v19 = 2114;
      v20 = kt_hexString;
      v21 = 2114;
      v22 = kt_hexString2;
      v23 = 2114;
      v24 = localSessionID;
      v25 = 1024;
      peerIDMismatchCounter = [(SKMailbox *)self peerIDMismatchCounter];
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@: peerSessionID mismatch (peer: %{public}@ announce: %{public}@) next state: %{public}@ (try %u)", &v17, 0x30u);
    }
  }

  else
  {
LABEL_4:
    localSessionID = 0;
  }

LABEL_10:

  return localSessionID;
}

- (SKSessionProtocol)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end