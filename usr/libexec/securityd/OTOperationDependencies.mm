@interface OTOperationDependencies
- (CKKSKeychainView)ckks;
- (EscrowChecker)escrowChecker;
- (id)initForContainer:(id)a3 contextID:(id)a4 activeAccount:(id)a5 stateHolder:(id)a6 flagHandler:(id)a7 sosAdapter:(id)a8 octagonAdapter:(id)a9 accountsAdapter:(id)a10 authKitAdapter:(id)a11 personaAdapter:(id)a12 deviceInfoAdapter:(id)a13 secureBackupAdapter:(id)a14 laContextAdapter:(id)a15 ckksAccountSync:(id)a16 lockStateTracker:(id)a17 cuttlefishXPCWrapper:(id)a18 escrowRequestClass:(Class)a19 notifierClass:(Class)a20 flowID:(id)a21 deviceSessionID:(id)a22 permittedToSendMetrics:(BOOL)a23 accountIsG:(BOOL)a24 accountIsW:(BOOL)a25 reachabilityTracker:(id)a26 escrowChecker:(id)a27;
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

- (id)initForContainer:(id)a3 contextID:(id)a4 activeAccount:(id)a5 stateHolder:(id)a6 flagHandler:(id)a7 sosAdapter:(id)a8 octagonAdapter:(id)a9 accountsAdapter:(id)a10 authKitAdapter:(id)a11 personaAdapter:(id)a12 deviceInfoAdapter:(id)a13 secureBackupAdapter:(id)a14 laContextAdapter:(id)a15 ckksAccountSync:(id)a16 lockStateTracker:(id)a17 cuttlefishXPCWrapper:(id)a18 escrowRequestClass:(Class)a19 notifierClass:(Class)a20 flowID:(id)a21 deviceSessionID:(id)a22 permittedToSendMetrics:(BOOL)a23 accountIsG:(BOOL)a24 accountIsW:(BOOL)a25 reachabilityTracker:(id)a26 escrowChecker:(id)a27
{
  v58 = a3;
  v57 = a4;
  v39 = a5;
  v56 = a5;
  v55 = a6;
  v54 = a7;
  v40 = a8;
  v53 = a8;
  v52 = a9;
  v51 = a10;
  v50 = a11;
  v49 = a12;
  v48 = a13;
  v47 = a14;
  v46 = a15;
  v32 = a16;
  v33 = a17;
  v45 = a18;
  v44 = a21;
  v43 = a22;
  v42 = a26;
  v34 = a27;
  v59.receiver = self;
  v59.super_class = OTOperationDependencies;
  v35 = [(OTOperationDependencies *)&v59 init];
  v36 = v35;
  if (v35)
  {
    objc_storeStrong(&v35->_containerName, a3);
    objc_storeStrong(&v36->_contextID, a4);
    objc_storeStrong(&v36->_activeAccount, v39);
    objc_storeStrong(&v36->_stateHolder, a6);
    objc_storeStrong(&v36->_flagHandler, a7);
    objc_storeStrong(&v36->_sosAdapter, v40);
    objc_storeStrong(&v36->_octagonAdapter, a9);
    objc_storeStrong(&v36->_accountsAdapter, a10);
    objc_storeStrong(&v36->_authKitAdapter, a11);
    objc_storeStrong(&v36->_personaAdapter, a12);
    objc_storeStrong(&v36->_deviceInformationAdapter, a13);
    objc_storeStrong(&v36->_secureBackupAdapter, a14);
    objc_storeStrong(&v36->_laContextAdapter, a15);
    objc_storeWeak(&v36->_ckks, v32);
    objc_storeStrong(&v36->_lockStateTracker, a17);
    objc_storeStrong(&v36->_cuttlefishXPCWrapper, a18);
    objc_storeStrong(&v36->_escrowRequestClass, a19);
    objc_storeStrong(&v36->_notifierClass, a20);
    objc_storeStrong(&v36->_flowID, a21);
    objc_storeStrong(&v36->_deviceSessionID, a22);
    v36->_permittedToSendMetrics = a23;
    objc_storeStrong(&v36->_reachabilityTracker, a26);
    v36->_accountIsG = a24;
    v36->_accountIsW = a25;
    objc_storeWeak(&v36->_escrowChecker, v34);
  }

  return v36;
}

@end