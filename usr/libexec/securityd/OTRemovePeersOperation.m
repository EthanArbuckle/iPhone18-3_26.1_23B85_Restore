@interface OTRemovePeersOperation
- (OTRemovePeersOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 peerIDs:(id)a6;
- (void)groupStart;
@end

@implementation OTRemovePeersOperation

- (void)groupStart
{
  v3 = sub_100006274("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(OTRemovePeersOperation *)self peerIDs];
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Attempting to remove peers: %@", buf, 0xCu);
  }

  v5 = objc_alloc_init(NSOperation);
  [(OTRemovePeersOperation *)self setFinishedOp:v5];

  v6 = [(OTRemovePeersOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v6];

  objc_initWeak(buf, self);
  v7 = [(OTRemovePeersOperation *)self deps];
  v8 = [v7 cuttlefishXPCWrapper];
  v9 = [(OTRemovePeersOperation *)self deps];
  v10 = [v9 activeAccount];
  v11 = [(OTRemovePeersOperation *)self peerIDs];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001A12C0;
  v12[3] = &unk_100344DA0;
  objc_copyWeak(&v13, buf);
  [v8 distrustPeerIDsWithSpecificUser:v10 peerIDs:v11 reply:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

- (OTRemovePeersOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 peerIDs:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = OTRemovePeersOperation;
  v15 = [(CKKSGroupOperation *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deps, a3);
    objc_storeStrong(&v16->_intendedState, a4);
    objc_storeStrong(&v16->_nextState, a5);
    v17 = [NSSet setWithArray:v14];
    peerIDs = v16->_peerIDs;
    v16->_peerIDs = v17;
  }

  return v16;
}

@end