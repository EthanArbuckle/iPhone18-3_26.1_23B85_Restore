@interface OTPrepareAndRecoverTLKSharesForInheritancePeerOperation
- (OTPrepareAndRecoverTLKSharesForInheritancePeerOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState ik:(id)ik deviceInfo:(id)info policyOverride:(id)override isInheritedAccount:(BOOL)account epoch:(unint64_t)self0;
- (void)groupStart;
- (void)proceedWithFilteredTLKShares:(id)shares;
@end

@implementation OTPrepareAndRecoverTLKSharesForInheritancePeerOperation

- (void)proceedWithFilteredTLKShares:(id)shares
{
  sharesCopy = shares;
  objc_initWeak(&location, self);
  deps = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self deps];
  cuttlefishXPCWrapper = [deps cuttlefishXPCWrapper];
  deps2 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self deps];
  activeAccount = [deps2 activeAccount];
  tphcrk = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self tphcrk];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100146058;
  v11[3] = &unk_100338010;
  objc_copyWeak(&v13, &location);
  v10 = sharesCopy;
  v12 = v10;
  [cuttlefishXPCWrapper recoverTLKSharesForInheritorWithSpecificUser:activeAccount crk:tphcrk tlkShares:v10 reply:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)groupStart
{
  v3 = sub_100006274("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "creating inheritance peer and recovering shares using an inheritance key", buf, 2u);
  }

  v4 = objc_alloc_init(NSOperation);
  [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self setFinishOp:v4];

  finishOp = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishOp];

  v6 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self ik];
  recoveryKeyData = [v6 recoveryKeyData];
  v40 = [recoveryKeyData base64EncodedStringWithOptions:0];

  [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self setSalt:&stru_100348050];
  v8 = [TrustedPeersHelperCustodianRecoveryKey alloc];
  v9 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self ik];
  uuid = [v9 uuid];
  uUIDString = [uuid UUIDString];
  salt = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self salt];
  v13 = [(TrustedPeersHelperCustodianRecoveryKey *)v8 initWithUUID:uUIDString encryptionKey:0 signingKey:0 recoveryString:v40 salt:salt kind:2];
  [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self setTphcrk:v13];

  *buf = 0;
  v47 = buf;
  v48 = 0x3032000000;
  v49 = sub_1001469AC;
  v50 = sub_1001469BC;
  v51 = 0;
  deps = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self deps];
  stateHolder = [deps stateHolder];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1001469C4;
  v45[3] = &unk_100337FC0;
  v45[4] = buf;
  v44 = 0;
  v16 = [stateHolder persistAccountChanges:v45 error:&v44];
  v41 = v44;

  if (v41)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  if ((v17 & 1) == 0)
  {
    v18 = sub_100006274("SecError");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v52 = 138412290;
      v53 = v41;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "octagon: failed to save 'se' state: %@", v52, 0xCu);
    }
  }

  objc_initWeak(v52, self);
  deps2 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self deps];
  cuttlefishXPCWrapper = [deps2 cuttlefishXPCWrapper];
  deps3 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self deps];
  activeAccount = [deps3 activeAccount];
  epoch = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self epoch];
  deviceInfo = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self deviceInfo];
  machineID = [deviceInfo machineID];
  v36 = +[NSUUID UUID];
  uUIDString2 = [v36 UUIDString];
  deviceInfo2 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self deviceInfo];
  modelID = [deviceInfo2 modelID];
  deviceInfo3 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self deviceInfo];
  deviceName = [deviceInfo3 deviceName];
  deviceInfo4 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self deviceInfo];
  serialNumber = [deviceInfo4 serialNumber];
  deviceInfo5 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self deviceInfo];
  osVersion = [deviceInfo5 osVersion];
  policyOverride = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self policyOverride];
  v27 = *(v47 + 5);
  tphcrk = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self tphcrk];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100146A1C;
  v42[3] = &unk_100337FE8;
  objc_copyWeak(&v43, v52);
  LODWORD(v29) = 0;
  [cuttlefishXPCWrapper prepareInheritancePeerWithSpecificUser:activeAccount epoch:epoch machineID:machineID bottleSalt:&stru_100348050 bottleID:uUIDString2 modelID:modelID deviceName:deviceName serialNumber:serialNumber osVersion:osVersion policyVersion:policyOverride policySecrets:0 syncUserControllableViews:v29 secureElementIdentity:v27 signingPrivKeyPersistentRef:0 encPrivKeyPersistentRef:0 crk:tphcrk reply:v42];

  objc_destroyWeak(&v43);
  objc_destroyWeak(v52);

  _Block_object_dispose(buf, 8);
}

- (OTPrepareAndRecoverTLKSharesForInheritancePeerOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState ik:(id)ik deviceInfo:(id)info policyOverride:(id)override isInheritedAccount:(BOOL)account epoch:(unint64_t)self0
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  ikCopy = ik;
  infoCopy = info;
  overrideCopy = override;
  v26.receiver = self;
  v26.super_class = OTPrepareAndRecoverTLKSharesForInheritancePeerOperation;
  v20 = [(CKKSGroupOperation *)&v26 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_deps, dependencies);
    objc_storeStrong(&v21->_intendedState, state);
    objc_storeStrong(&v21->_nextState, errorState);
    objc_storeStrong(&v21->_ik, ik);
    objc_storeStrong(&v21->_deviceInfo, info);
    v21->_epoch = epoch;
    objc_storeStrong(&v21->_intendedState, state);
    objc_storeStrong(&v21->_nextState, errorState);
    objc_storeStrong(&v21->_policyOverride, override);
  }

  return v21;
}

@end