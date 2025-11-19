@interface OTPrepareAndRecoverTLKSharesForInheritancePeerOperation
- (OTPrepareAndRecoverTLKSharesForInheritancePeerOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 ik:(id)a6 deviceInfo:(id)a7 policyOverride:(id)a8 isInheritedAccount:(BOOL)a9 epoch:(unint64_t)a10;
- (void)groupStart;
- (void)proceedWithFilteredTLKShares:(id)a3;
@end

@implementation OTPrepareAndRecoverTLKSharesForInheritancePeerOperation

- (void)proceedWithFilteredTLKShares:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self deps];
  v6 = [v5 cuttlefishXPCWrapper];
  v7 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self deps];
  v8 = [v7 activeAccount];
  v9 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self tphcrk];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100146058;
  v11[3] = &unk_100338010;
  objc_copyWeak(&v13, &location);
  v10 = v4;
  v12 = v10;
  [v6 recoverTLKSharesForInheritorWithSpecificUser:v8 crk:v9 tlkShares:v10 reply:v11];

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

  v5 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v5];

  v6 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self ik];
  v7 = [v6 recoveryKeyData];
  v40 = [v7 base64EncodedStringWithOptions:0];

  [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self setSalt:&stru_100348050];
  v8 = [TrustedPeersHelperCustodianRecoveryKey alloc];
  v9 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self ik];
  v10 = [v9 uuid];
  v11 = [v10 UUIDString];
  v12 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self salt];
  v13 = [(TrustedPeersHelperCustodianRecoveryKey *)v8 initWithUUID:v11 encryptionKey:0 signingKey:0 recoveryString:v40 salt:v12 kind:2];
  [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self setTphcrk:v13];

  *buf = 0;
  v47 = buf;
  v48 = 0x3032000000;
  v49 = sub_1001469AC;
  v50 = sub_1001469BC;
  v51 = 0;
  v14 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self deps];
  v15 = [v14 stateHolder];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1001469C4;
  v45[3] = &unk_100337FC0;
  v45[4] = buf;
  v44 = 0;
  v16 = [v15 persistAccountChanges:v45 error:&v44];
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
  v39 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self deps];
  v34 = [v39 cuttlefishXPCWrapper];
  v38 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self deps];
  v33 = [v38 activeAccount];
  v30 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self epoch];
  v37 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self deviceInfo];
  v32 = [v37 machineID];
  v36 = +[NSUUID UUID];
  v31 = [v36 UUIDString];
  v35 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self deviceInfo];
  v19 = [v35 modelID];
  v20 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self deviceInfo];
  v21 = [v20 deviceName];
  v22 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self deviceInfo];
  v23 = [v22 serialNumber];
  v24 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self deviceInfo];
  v25 = [v24 osVersion];
  v26 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self policyOverride];
  v27 = *(v47 + 5);
  v28 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)self tphcrk];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100146A1C;
  v42[3] = &unk_100337FE8;
  objc_copyWeak(&v43, v52);
  LODWORD(v29) = 0;
  [v34 prepareInheritancePeerWithSpecificUser:v33 epoch:v30 machineID:v32 bottleSalt:&stru_100348050 bottleID:v31 modelID:v19 deviceName:v21 serialNumber:v23 osVersion:v25 policyVersion:v26 policySecrets:0 syncUserControllableViews:v29 secureElementIdentity:v27 signingPrivKeyPersistentRef:0 encPrivKeyPersistentRef:0 crk:v28 reply:v42];

  objc_destroyWeak(&v43);
  objc_destroyWeak(v52);

  _Block_object_dispose(buf, 8);
}

- (OTPrepareAndRecoverTLKSharesForInheritancePeerOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 ik:(id)a6 deviceInfo:(id)a7 policyOverride:(id)a8 isInheritedAccount:(BOOL)a9 epoch:(unint64_t)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v25 = a6;
  v24 = a7;
  v23 = a8;
  v26.receiver = self;
  v26.super_class = OTPrepareAndRecoverTLKSharesForInheritancePeerOperation;
  v20 = [(CKKSGroupOperation *)&v26 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_deps, a3);
    objc_storeStrong(&v21->_intendedState, a4);
    objc_storeStrong(&v21->_nextState, a5);
    objc_storeStrong(&v21->_ik, a6);
    objc_storeStrong(&v21->_deviceInfo, a7);
    v21->_epoch = a10;
    objc_storeStrong(&v21->_intendedState, a4);
    objc_storeStrong(&v21->_nextState, a5);
    objc_storeStrong(&v21->_policyOverride, a8);
  }

  return v21;
}

@end