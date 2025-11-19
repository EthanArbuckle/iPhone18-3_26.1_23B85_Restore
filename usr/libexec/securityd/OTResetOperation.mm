@interface OTResetOperation
- (id)init:(id)a3 contextID:(id)a4 reason:(int64_t)a5 idmsTargetContext:(id)a6 idmsCuttlefishPassword:(id)a7 notifyIdMS:(BOOL)a8 accountType:(int64_t)a9 intendedState:(id)a10 dependencies:(id)a11 errorState:(id)a12 cuttlefishXPCWrapper:(id)a13;
- (void)groupStart;
@end

@implementation OTResetOperation

- (void)groupStart
{
  v3 = sub_100006274("octagon-authkit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Attempting to reset octagon", buf, 2u);
  }

  v69[0] = kSecurityRTCFieldAccountIsW;
  v4 = [(OTResetOperation *)self deps];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 accountIsW]);
  v70[0] = v5;
  v69[1] = kSecurityRTCFieldAccountIsG;
  v6 = [(OTResetOperation *)self deps];
  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 accountIsG]);
  v70[1] = v7;
  v58 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:2];

  v8 = [AAFAnalyticsEventSecurity alloc];
  v9 = [(OTResetOperation *)self deps];
  v10 = [v9 activeAccount];
  v11 = [v10 altDSID];
  v12 = [(OTResetOperation *)self deps];
  v13 = [v12 flowID];
  v14 = [(OTResetOperation *)self deps];
  v15 = [v14 deviceSessionID];
  v16 = [(OTResetOperation *)self deps];
  LOBYTE(v40) = [v16 permittedToSendMetrics];
  v17 = [v8 initWithKeychainCircleMetrics:v58 altDSID:v11 flowID:v13 deviceSessionID:v15 eventName:kSecurityRTCEventNameOTResetOperation testsAreEnabled:0 canSendMetrics:v40 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

  objc_initWeak(&location, self);
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_1002033B8;
  v63[3] = &unk_100344D38;
  objc_copyWeak(&v65, &location);
  v56 = v17;
  v64 = v56;
  v18 = [NSBlockOperation blockOperationWithBlock:v63];
  [(OTResetOperation *)self setFinishedOp:v18];

  v19 = [(OTResetOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v19];

  v20 = [(OTResetOperation *)self deps];
  v21 = [v20 activeAccount];
  v59 = [v21 altDSID];

  if (v59)
  {
    v22 = [(OTResetOperation *)self deps];
    v23 = [v22 authKitAdapter];
    v62 = 0;
    v49 = [v23 accountIsDemoAccountByAltDSID:v59 error:&v62];
    v57 = v62;

    if (v57)
    {
      v24 = sub_100006274("SecError");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v68 = v57;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "octagon-authkit: failed to fetch demo account flag: %@", buf, 0xCu);
      }
    }

    IsInternalRelease = SecIsInternalRelease();
    v53 = [(OTResetOperation *)self cuttlefishXPCWrapper];
    v25 = [(OTResetOperation *)self deps];
    v52 = [v25 activeAccount];
    v47 = [(OTResetOperation *)self resetReason];
    v51 = [(OTResetOperation *)self idmsTargetContext];
    v50 = [(OTResetOperation *)self idmsCuttlefishPassword];
    v46 = [(OTResetOperation *)self notifyIdMS];
    v55 = [(OTResetOperation *)self deps];
    v45 = [v55 accountIsG];
    v54 = [(OTResetOperation *)self deps];
    v44 = [v54 accountIsW];
    v43 = [(OTResetOperation *)self accountType];
    v26 = [(OTResetOperation *)self deps];
    v27 = [v26 activeAccount];
    v28 = [v27 altDSID];
    v29 = [(OTResetOperation *)self deps];
    v30 = [v29 flowID];
    v31 = [(OTResetOperation *)self deps];
    v32 = [v31 deviceSessionID];
    v33 = [(OTResetOperation *)self deps];
    v34 = [v33 permittedToSendMetrics];
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_1002034F4;
    v60[3] = &unk_100344DA0;
    objc_copyWeak(&v61, &location);
    LOBYTE(v42) = v34;
    BYTE2(v41) = v44;
    BYTE1(v41) = v45;
    LOBYTE(v41) = v49;
    [v53 resetWithSpecificUser:v52 resetReason:v47 idmsTargetContext:v51 idmsCuttlefishPassword:v50 notifyIdMS:v46 internalAccount:IsInternalRelease demoAccount:v41 isGuitarfish:v43 accountIsW:v28 accountType:v30 altDSID:v32 flowID:v42 deviceSessionID:v60 canSendMetrics:? reply:?];

    objc_destroyWeak(&v61);
    v35 = v57;
  }

  else
  {
    v36 = sub_100006274("authkit");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [(OTResetOperation *)self deps];
      v38 = [v37 activeAccount];
      *buf = 138412290;
      v68 = v38;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "No configured altDSID: %@", buf, 0xCu);
    }

    v39 = [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:@"No altDSID configured"];
    [(CKKSResultOperation *)self setError:v39];

    v35 = [(OTResetOperation *)self finishedOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v35];
  }

  objc_destroyWeak(&v65);
  objc_destroyWeak(&location);
}

- (id)init:(id)a3 contextID:(id)a4 reason:(int64_t)a5 idmsTargetContext:(id)a6 idmsCuttlefishPassword:(id)a7 notifyIdMS:(BOOL)a8 accountType:(int64_t)a9 intendedState:(id)a10 dependencies:(id)a11 errorState:(id)a12 cuttlefishXPCWrapper:(id)a13
{
  v30 = a3;
  v29 = a4;
  v28 = a6;
  v27 = a7;
  v26 = a10;
  v25 = a11;
  v24 = a12;
  v18 = a13;
  v31.receiver = self;
  v31.super_class = OTResetOperation;
  v19 = [(CKKSGroupOperation *)&v31 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong((v19 + 134), a10);
    objc_storeStrong((v20 + 142), a12);
    objc_storeStrong((v20 + 182), a3);
    objc_storeStrong((v20 + 190), a4);
    objc_storeStrong((v20 + 198), a13);
    *(v20 + 150) = a5;
    objc_storeStrong((v20 + 158), a6);
    objc_storeStrong((v20 + 166), a7);
    v20[128] = a8;
    objc_storeStrong((v20 + 206), a11);
    *(v20 + 174) = a9;
  }

  return v20;
}

@end