@interface OTOperationDependencies
- (CKKSKeychainView)ckks;
- (EscrowChecker)escrowChecker;
- (id)initForContainer:(id)container contextID:(id)d activeAccount:(id)account stateHolder:(id)holder flagHandler:(id)handler sosAdapter:(id)adapter octagonAdapter:(id)octagonAdapter accountsAdapter:(id)self0 authKitAdapter:(id)self1 personaAdapter:(id)self2 deviceInfoAdapter:(id)self3 secureBackupAdapter:(id)self4 laContextAdapter:(id)self5 ckksAccountSync:(id)self6 lockStateTracker:(id)self7 cuttlefishXPCWrapper:(id)self8 escrowRequestClass:(Class)self9 notifierClass:(Class)notifierClass flowID:(id)iD deviceSessionID:(id)sessionID permittedToSendMetrics:(BOOL)metrics accountIsG:(BOOL)g accountIsW:(BOOL)w reachabilityTracker:(id)reachabilityTracker escrowChecker:(id)checker;
@end

@implementation OTOperationDependencies

- (EscrowChecker)escrowChecker
{
  WeakRetained = objc_loadWeakRetained(&self->_escrowChecker);

  return WeakRetained;
}

- (CKKSKeychainView)ckks
{
  WeakRetained = objc_loadWeakRetained(&self->_ckks);

  return WeakRetained;
}

- (id)initForContainer:(id)container contextID:(id)d activeAccount:(id)account stateHolder:(id)holder flagHandler:(id)handler sosAdapter:(id)adapter octagonAdapter:(id)octagonAdapter accountsAdapter:(id)self0 authKitAdapter:(id)self1 personaAdapter:(id)self2 deviceInfoAdapter:(id)self3 secureBackupAdapter:(id)self4 laContextAdapter:(id)self5 ckksAccountSync:(id)self6 lockStateTracker:(id)self7 cuttlefishXPCWrapper:(id)self8 escrowRequestClass:(Class)self9 notifierClass:(Class)notifierClass flowID:(id)iD deviceSessionID:(id)sessionID permittedToSendMetrics:(BOOL)metrics accountIsG:(BOOL)g accountIsW:(BOOL)w reachabilityTracker:(id)reachabilityTracker escrowChecker:(id)checker
{
  containerCopy = container;
  dCopy = d;
  accountCopy = account;
  accountCopy2 = account;
  holderCopy = holder;
  handlerCopy = handler;
  adapterCopy = adapter;
  adapterCopy2 = adapter;
  octagonAdapterCopy = octagonAdapter;
  accountsAdapterCopy = accountsAdapter;
  kitAdapterCopy = kitAdapter;
  personaAdapterCopy = personaAdapter;
  infoAdapterCopy = infoAdapter;
  backupAdapterCopy = backupAdapter;
  contextAdapterCopy = contextAdapter;
  syncCopy = sync;
  trackerCopy = tracker;
  wrapperCopy = wrapper;
  iDCopy = iD;
  sessionIDCopy = sessionID;
  reachabilityTrackerCopy = reachabilityTracker;
  checkerCopy = checker;
  v59.receiver = self;
  v59.super_class = OTOperationDependencies;
  v35 = [(OTOperationDependencies *)&v59 init];
  v36 = v35;
  if (v35)
  {
    objc_storeStrong(&v35->_containerName, container);
    objc_storeStrong(&v36->_contextID, d);
    objc_storeStrong(&v36->_activeAccount, accountCopy);
    objc_storeStrong(&v36->_stateHolder, holder);
    objc_storeStrong(&v36->_flagHandler, handler);
    objc_storeStrong(&v36->_sosAdapter, adapterCopy);
    objc_storeStrong(&v36->_octagonAdapter, octagonAdapter);
    objc_storeStrong(&v36->_accountsAdapter, accountsAdapter);
    objc_storeStrong(&v36->_authKitAdapter, kitAdapter);
    objc_storeStrong(&v36->_personaAdapter, personaAdapter);
    objc_storeStrong(&v36->_deviceInformationAdapter, infoAdapter);
    objc_storeStrong(&v36->_secureBackupAdapter, backupAdapter);
    objc_storeStrong(&v36->_laContextAdapter, contextAdapter);
    objc_storeWeak(&v36->_ckks, syncCopy);
    objc_storeStrong(&v36->_lockStateTracker, tracker);
    objc_storeStrong(&v36->_cuttlefishXPCWrapper, wrapper);
    objc_storeStrong(&v36->_escrowRequestClass, class);
    objc_storeStrong(&v36->_notifierClass, notifierClass);
    objc_storeStrong(&v36->_flowID, iD);
    objc_storeStrong(&v36->_deviceSessionID, sessionID);
    v36->_permittedToSendMetrics = metrics;
    objc_storeStrong(&v36->_reachabilityTracker, reachabilityTracker);
    v36->_accountIsG = g;
    v36->_accountIsW = w;
    objc_storeWeak(&v36->_escrowChecker, checkerCopy);
  }

  return v36;
}

@end