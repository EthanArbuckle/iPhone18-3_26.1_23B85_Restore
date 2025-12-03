@interface OTRemovePeersOperation
- (OTRemovePeersOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState peerIDs:(id)ds;
- (void)groupStart;
@end

@implementation OTRemovePeersOperation

- (void)groupStart
{
  v3 = sub_100006274("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    peerIDs = [(OTRemovePeersOperation *)self peerIDs];
    *buf = 138412290;
    v15 = peerIDs;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Attempting to remove peers: %@", buf, 0xCu);
  }

  v5 = objc_alloc_init(NSOperation);
  [(OTRemovePeersOperation *)self setFinishedOp:v5];

  finishedOp = [(OTRemovePeersOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

  objc_initWeak(buf, self);
  deps = [(OTRemovePeersOperation *)self deps];
  cuttlefishXPCWrapper = [deps cuttlefishXPCWrapper];
  deps2 = [(OTRemovePeersOperation *)self deps];
  activeAccount = [deps2 activeAccount];
  peerIDs2 = [(OTRemovePeersOperation *)self peerIDs];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001A12C0;
  v12[3] = &unk_100344DA0;
  objc_copyWeak(&v13, buf);
  [cuttlefishXPCWrapper distrustPeerIDsWithSpecificUser:activeAccount peerIDs:peerIDs2 reply:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

- (OTRemovePeersOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState peerIDs:(id)ds
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  dsCopy = ds;
  v20.receiver = self;
  v20.super_class = OTRemovePeersOperation;
  v15 = [(CKKSGroupOperation *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deps, dependencies);
    objc_storeStrong(&v16->_intendedState, state);
    objc_storeStrong(&v16->_nextState, errorState);
    v17 = [NSSet setWithArray:dsCopy];
    peerIDs = v16->_peerIDs;
    v16->_peerIDs = v17;
  }

  return v16;
}

@end