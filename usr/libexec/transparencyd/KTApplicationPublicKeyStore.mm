@interface KTApplicationPublicKeyStore
- (BOOL)detectEpochChangeAndResetData:(unint64_t)data patLogBeginningMs:(unint64_t)ms mapStillPopulating:(BOOL)populating dataStore:(id)store;
- (BOOL)detectResetForPAT:(unint64_t)t;
- (BOOL)detectResetForTLT:(unint64_t)t;
- (BOOL)inResetWindow;
- (BOOL)readyWithRefresh:(BOOL)refresh;
- (BOOL)storeExpired;
- (BOOL)triggerRefreshFromServerStatus:(int)status;
- (BOOL)unsupported;
- (BOOL)updateWithPublicKeyResponse:(id)response dataStore:(id)store error:(id *)error;
- (KTApplicationPublicKeyStore)initWithApplication:(id)application dataStore:(id)store diskState:(id)state contextStore:(id)contextStore settings:(id)settings error:(id *)error;
- (KTApplicationPublicKeyStore)initWithApplication:(id)application dataStore:(id)store response:(id)response contextStore:(id)contextStore settings:(id)settings error:(id *)error;
- (KTContextStore)contextStore;
- (KTPublicKeyStoreDelegateProtocol)delegate;
- (NSString)treeRollInfoURL;
- (TransparencyTrustedKeyStore)appSmtKeyStore;
- (TransparencyTrustedKeyStore)appSthKeyStore;
- (TransparencyTrustedKeyStore)tltKeyStore;
- (VRFPublicKey)vrfKey;
- (id)copyKeyStoreState;
- (id)createTLTApplicationPublicKeyStore;
- (int)patEarliestVersion;
- (int)tltEarliestVersion;
- (unint64_t)patLogBeginningMs;
- (unint64_t)shutDown;
- (unint64_t)tltLogBeginningMs;
- (void)clearDataForPAT:(unint64_t)t dataStore:(id)store;
- (void)clearDataForTLT:(unint64_t)t dataStore:(id)store;
- (void)clearState:(id *)state;
- (void)notifyTreeResetDetected:(BOOL)detected logTimestamp:(unint64_t)timestamp;
- (void)startKeyStoreStateSampler;
@end

@implementation KTApplicationPublicKeyStore

- (BOOL)readyWithRefresh:(BOOL)refresh
{
  refreshCopy = refresh;
  keyBag = [(KTApplicationPublicKeyStore *)self keyBag];
  vrfKey = [keyBag vrfKey];
  if (!vrfKey)
  {
    goto LABEL_15;
  }

  v7 = vrfKey;
  keyBag2 = [(KTApplicationPublicKeyStore *)self keyBag];
  appSthKeyStore = [keyBag2 appSthKeyStore];
  if (!appSthKeyStore)
  {

LABEL_15:
    return 0;
  }

  v10 = appSthKeyStore;
  keyBag3 = [(KTApplicationPublicKeyStore *)self keyBag];
  tltKeyStore = [keyBag3 tltKeyStore];

  if (!tltKeyStore)
  {
    return 0;
  }

  keyBag4 = [(KTApplicationPublicKeyStore *)self keyBag];
  vrfKey2 = [keyBag4 vrfKey];
  needsRefresh = [vrfKey2 needsRefresh];

  if (needsRefresh)
  {
    if (qword_10039CC18 != -1)
    {
      sub_10025DC98();
    }

    v16 = qword_10039CC20;
    if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      application = [(KTApplicationPublicKeyStore *)self application];
      v49 = 138412290;
      v50 = application;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Trusted VRF key need refresh: %@", &v49, 0xCu);
    }
  }

  keyBag5 = [(KTApplicationPublicKeyStore *)self keyBag];
  appSthKeyStore2 = [keyBag5 appSthKeyStore];
  signatureVerifier = [appSthKeyStore2 signatureVerifier];
  needsRefresh2 = [signatureVerifier needsRefresh];

  if (needsRefresh2)
  {
    if (qword_10039CC18 != -1)
    {
      sub_10025DCAC();
    }

    v23 = qword_10039CC20;
    v24 = 0;
    if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v23;
      application2 = [(KTApplicationPublicKeyStore *)self application];
      v49 = 138412290;
      v50 = application2;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Trusted application STH signing keys need refresh: %@", &v49, 0xCu);

      v24 = 0;
    }
  }

  else
  {
    v24 = needsRefresh ^ 1;
  }

  application3 = [(KTApplicationPublicKeyStore *)self application];
  v29 = [application3 isEqualToString:kKTApplicationIdentifierTLT];

  if ((v29 & 1) == 0)
  {
    keyBag6 = [(KTApplicationPublicKeyStore *)self keyBag];
    appSmtKeyStore = [keyBag6 appSmtKeyStore];
    if (appSmtKeyStore)
    {
      v32 = appSmtKeyStore;
      keyBag7 = [(KTApplicationPublicKeyStore *)self keyBag];
      appSmtKeyStore2 = [keyBag7 appSmtKeyStore];
      signatureVerifier2 = [appSmtKeyStore2 signatureVerifier];
      needsRefresh3 = [signatureVerifier2 needsRefresh];

      if (!needsRefresh3)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    if (qword_10039CC18 != -1)
    {
      sub_10025DCD4();
    }

    v37 = qword_10039CC20;
    v24 = 0;
    if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v37;
      application4 = [(KTApplicationPublicKeyStore *)self application];
      v49 = 138412290;
      v50 = application4;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Trusted application SMT signing keys need refresh: %@", &v49, 0xCu);

      v24 = 0;
    }
  }

LABEL_28:
  keyBag8 = [(KTApplicationPublicKeyStore *)self keyBag];
  tltKeyStore2 = [keyBag8 tltKeyStore];
  signatureVerifier3 = [tltKeyStore2 signatureVerifier];
  needsRefresh4 = [signatureVerifier3 needsRefresh];

  if (needsRefresh4)
  {
    if (qword_10039CC18 != -1)
    {
      sub_10025DCFC();
    }

    v44 = qword_10039CC20;
    v24 = 0;
    if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v44;
      application5 = [(KTApplicationPublicKeyStore *)self application];
      v49 = 138412290;
      v50 = application5;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Trusted TLT signing keys need refresh: %@", &v49, 0xCu);

      v24 = 0;
    }
  }

  if ((v24 & 1) == 0 && refreshCopy)
  {
    delegate = [(KTApplicationPublicKeyStore *)self delegate];
    application6 = [(KTApplicationPublicKeyStore *)self application];
    [delegate storeNeedsUpdate:application6];

    return 0;
  }

  return v24;
}

- (BOOL)storeExpired
{
  receiptTime = [(KTApplicationPublicKeyStore *)self receiptTime];
  [receiptTime timeIntervalSinceNow];
  v5 = v4;
  v6 = -kKTPublicKeysResponseRefresh;

  if (v5 < v6)
  {
    if (qword_10039CC18 != -1)
    {
      sub_10025DD24();
    }

    v7 = qword_10039CC20;
    if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      application = [(KTApplicationPublicKeyStore *)self application];
      v11 = 138412290;
      v12 = application;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Public Keys Response older than refresh time period: %@", &v11, 0xCu);
    }
  }

  return v5 < v6;
}

- (BOOL)triggerRefreshFromServerStatus:(int)status
{
  if (status != 6)
  {
    return 0;
  }

  receiptTime = [(KTApplicationPublicKeyStore *)self receiptTime];
  [receiptTime timeIntervalSinceNow];
  v6 = v5;
  v7 = -kKTPublicKeysResponseRefreshInvalidRequest;

  if (v6 >= v7)
  {
    return 0;
  }

  if (qword_10039CC18 != -1)
  {
    sub_10025DD38();
  }

  v8 = qword_10039CC20;
  if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    application = [(KTApplicationPublicKeyStore *)self application];
    v23 = 138543362;
    v24 = application;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Got invalid request status and public keys response for %{public}@ is old; setting key store as needs refresh", &v23, 0xCu);
  }

  keyBag = [(KTApplicationPublicKeyStore *)self keyBag];
  vrfKey = [keyBag vrfKey];
  v13 = 1;
  [vrfKey setNeedsRefresh:1];

  keyBag2 = [(KTApplicationPublicKeyStore *)self keyBag];
  appSmtKeyStore = [keyBag2 appSmtKeyStore];
  signatureVerifier = [appSmtKeyStore signatureVerifier];
  [signatureVerifier setNeedsRefresh:1];

  keyBag3 = [(KTApplicationPublicKeyStore *)self keyBag];
  appSthKeyStore = [keyBag3 appSthKeyStore];
  signatureVerifier2 = [appSthKeyStore signatureVerifier];
  [signatureVerifier2 setNeedsRefresh:1];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  application2 = [(KTApplicationPublicKeyStore *)self application];
  [WeakRetained storeNeedsUpdate:application2];

  return v13;
}

- (void)clearState:(id *)state
{
  obj = self;
  objc_sync_enter(obj);
  [(KTApplicationPublicKeyStore *)obj setKeyBag:0];
  objc_sync_exit(obj);
}

- (VRFPublicKey)vrfKey
{
  keyBag = [(KTApplicationPublicKeyStore *)self keyBag];
  vrfKey = [keyBag vrfKey];

  return vrfKey;
}

- (TransparencyTrustedKeyStore)appSmtKeyStore
{
  keyBag = [(KTApplicationPublicKeyStore *)self keyBag];
  appSmtKeyStore = [keyBag appSmtKeyStore];

  return appSmtKeyStore;
}

- (TransparencyTrustedKeyStore)appSthKeyStore
{
  keyBag = [(KTApplicationPublicKeyStore *)self keyBag];
  appSthKeyStore = [keyBag appSthKeyStore];

  return appSthKeyStore;
}

- (TransparencyTrustedKeyStore)tltKeyStore
{
  keyBag = [(KTApplicationPublicKeyStore *)self keyBag];
  tltKeyStore = [keyBag tltKeyStore];

  return tltKeyStore;
}

- (BOOL)unsupported
{
  keyBag = [(KTApplicationPublicKeyStore *)self keyBag];
  unsupported = [keyBag unsupported];

  return unsupported;
}

- (unint64_t)patLogBeginningMs
{
  keyBag = [(KTApplicationPublicKeyStore *)self keyBag];
  patLogBeginningMs = [keyBag patLogBeginningMs];

  return patLogBeginningMs;
}

- (unint64_t)tltLogBeginningMs
{
  keyBag = [(KTApplicationPublicKeyStore *)self keyBag];
  tltLogBeginningMs = [keyBag tltLogBeginningMs];

  return tltLogBeginningMs;
}

- (int)tltEarliestVersion
{
  keyBag = [(KTApplicationPublicKeyStore *)self keyBag];
  tltEarliestVersion = [keyBag tltEarliestVersion];

  return tltEarliestVersion;
}

- (int)patEarliestVersion
{
  keyBag = [(KTApplicationPublicKeyStore *)self keyBag];
  patEarliestVersion = [keyBag patEarliestVersion];

  return patEarliestVersion;
}

- (unint64_t)shutDown
{
  keyBag = [(KTApplicationPublicKeyStore *)self keyBag];
  shutDown = [keyBag shutDown];

  return shutDown;
}

- (NSString)treeRollInfoURL
{
  keyBag = [(KTApplicationPublicKeyStore *)self keyBag];
  treeRollInfoURL = [keyBag treeRollInfoURL];

  return treeRollInfoURL;
}

- (id)copyKeyStoreState
{
  keyBag = [(KTApplicationPublicKeyStore *)self keyBag];
  diskStoreDictionary = [keyBag diskStoreDictionary];

  return diskStoreDictionary;
}

- (void)notifyTreeResetDetected:(BOOL)detected logTimestamp:(unint64_t)timestamp
{
  detectedCopy = detected;
  v7 = +[TransparencyAnalytics logger];
  v8 = v7;
  if (detectedCopy)
  {
    [v7 noteEventNamed:@"ktTLTResetEvent"];

    notify_post("com.apple.Transparency.TLTReset");
    notify_post("com.apple.Transparency.KT.IDSReset");
    notify_post("com.apple.Transparency.KT.FTReset");
    notify_post("com.apple.Transparency.KT.MPReset");
  }

  else
  {
    application = [(KTApplicationPublicKeyStore *)self application];
    v11 = [TransparencyAnalytics formatEventName:@"TreeResetEvent" application:application];
    [v8 noteEventNamed:v11];

    application2 = [(KTApplicationPublicKeyStore *)self application];
    LODWORD(v11) = [application2 isEqualToString:kKTApplicationIdentifierIDS];

    if (v11)
    {
      notify_post("com.apple.Transparency.KT.IDSReset");
      delegate = [(KTApplicationPublicKeyStore *)self delegate];
      application3 = [(KTApplicationPublicKeyStore *)self application];
      v15 = [delegate optInStateForKeyStore:application3 error:0];

      contextStore = [(KTApplicationPublicKeyStore *)self contextStore];
      followup = [contextStore followup];
      application4 = [(KTApplicationPublicKeyStore *)self application];
      v19 = +[NSUUID UUID];
      treeRollInfoURL = [(KTApplicationPublicKeyStore *)self treeRollInfoURL];
      v29 = @"logBeginMs";
      v21 = [NSNumber numberWithUnsignedLongLong:timestamp];
      v30 = v21;
      v22 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      [followup postFollowup:application4 type:3 eventId:v19 errorCode:0 optInState:v15 infoLink:treeRollInfoURL additionalInfo:v22 error:0];

      return;
    }

    application5 = [(KTApplicationPublicKeyStore *)self application];
    v24 = [application5 isEqualToString:kKTApplicationIdentifierIDSFaceTime];

    if (v24)
    {
      v9 = "com.apple.Transparency.KT.FTReset";
      goto LABEL_4;
    }

    application6 = [(KTApplicationPublicKeyStore *)self application];
    v26 = [application6 isEqualToString:kKTApplicationIdentifierIDSMultiplex];

    if (v26)
    {
      v9 = "com.apple.Transparency.KT.MPReset";
      goto LABEL_4;
    }

    application7 = [(KTApplicationPublicKeyStore *)self application];
    v28 = [application7 isEqualToString:kKTApplicationIdentifierCloudKit];

    if (!v28)
    {
      return;
    }
  }

  v9 = "com.apple.Transparency.KT.CKReset";
LABEL_4:

  notify_post(v9);
}

- (BOOL)detectResetForTLT:(unint64_t)t
{
  keyBag = [(KTApplicationPublicKeyStore *)self keyBag];
  if (![keyBag tltLogBeginningMs])
  {

    return 0;
  }

  keyBag2 = [(KTApplicationPublicKeyStore *)self keyBag];
  tltLogBeginningMs = [keyBag2 tltLogBeginningMs];

  if (tltLogBeginningMs >= t)
  {
    return 0;
  }

  if (qword_10039CC18 != -1)
  {
    sub_10025DD4C();
  }

  v8 = qword_10039CC20;
  if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    keyBag3 = [(KTApplicationPublicKeyStore *)self keyBag];
    v12 = 134218240;
    tltLogBeginningMs2 = [keyBag3 tltLogBeginningMs];
    v14 = 2048;
    tCopy = t;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Detected a TLT reset from %llu to %llu", &v12, 0x16u);
  }

  return 1;
}

- (void)clearDataForTLT:(unint64_t)t dataStore:(id)store
{
  storeCopy = store;
  contextStore = [(KTApplicationPublicKeyStore *)self contextStore];
  [contextStore clearGossip];

  v8 = kKTApplicationIdentifierTLT;
  v23 = 0;
  LOBYTE(t) = [storeCopy deleteSTHs:kKTApplicationIdentifierTLT logBeginMsLessThan:t error:&v23];
  v9 = v23;
  if ((t & 1) == 0)
  {
    if (qword_10039CC18 != -1)
    {
      sub_10025DD60();
    }

    v10 = qword_10039CC20;
    if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "failed to delete TLT STHs from prior epoch: %@", buf, 0xCu);
    }
  }

  v22 = v9;
  v11 = [storeCopy deleteDownloadRecords:v8 error:&v22];
  v12 = v22;

  if ((v11 & 1) == 0)
  {
    if (qword_10039CC18 != -1)
    {
      sub_10025DD88();
    }

    v13 = qword_10039CC20;
    if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "failed to delete TLT download records: %@", buf, 0xCu);
    }
  }

  v21 = v12;
  v14 = [storeCopy deleteServerRPCs:v8 error:&v21];
  v15 = v21;

  if ((v14 & 1) == 0)
  {
    if (qword_10039CC18 != -1)
    {
      sub_10025DDB0();
    }

    v16 = qword_10039CC20;
    if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "failed to delete TLT server RPCs: %@", buf, 0xCu);
    }
  }

  v20 = v15;
  v17 = [storeCopy resetRequestsForTLTReset:&v20];
  v18 = v20;

  if ((v17 & 1) == 0)
  {
    if (qword_10039CC18 != -1)
    {
      sub_10025DDD8();
    }

    v19 = qword_10039CC20;
    if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "failed to delete stored requests for all applications: %@", buf, 0xCu);
    }
  }
}

- (BOOL)detectResetForPAT:(unint64_t)t
{
  keyBag = [(KTApplicationPublicKeyStore *)self keyBag];
  if (![keyBag patLogBeginningMs])
  {

    return 0;
  }

  keyBag2 = [(KTApplicationPublicKeyStore *)self keyBag];
  patLogBeginningMs = [keyBag2 patLogBeginningMs];

  if (patLogBeginningMs >= t)
  {
    return 0;
  }

  if (qword_10039CC18 != -1)
  {
    sub_10025DE00();
  }

  v8 = qword_10039CC20;
  if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    keyBag3 = [(KTApplicationPublicKeyStore *)self keyBag];
    v12 = 134218240;
    patLogBeginningMs2 = [keyBag3 patLogBeginningMs];
    v14 = 2048;
    tCopy = t;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Detected a PAT reset from %llu to %llu", &v12, 0x16u);
  }

  return 1;
}

- (void)clearDataForPAT:(unint64_t)t dataStore:(id)store
{
  storeCopy = store;
  keyBag = [(KTApplicationPublicKeyStore *)self keyBag];
  trustedAppSigningKeys = [keyBag trustedAppSigningKeys];
  allKeys = [trustedAppSigningKeys allKeys];

  application = [(KTApplicationPublicKeyStore *)self application];
  v44 = 0;
  v11 = [storeCopy deleteSMTsWithSPKINotIn:allKeys application:application error:&v44];
  v12 = v44;

  if ((v11 & 1) == 0)
  {
    if (qword_10039CC18 != -1)
    {
      sub_10025DE14();
    }

    v13 = qword_10039CC20;
    if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      application2 = [(KTApplicationPublicKeyStore *)self application];
      *buf = 138412546;
      v46 = application2;
      v47 = 2112;
      v48 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "failed to delete %@ PAT SMTs from prior epoch: %@", buf, 0x16u);
    }
  }

  application3 = [(KTApplicationPublicKeyStore *)self application];
  v43 = v12;
  v17 = [storeCopy deleteSTHs:application3 logBeginMsLessThan:t error:&v43];
  v18 = v43;

  if ((v17 & 1) == 0)
  {
    if (qword_10039CC18 != -1)
    {
      sub_10025DE3C();
    }

    v19 = qword_10039CC20;
    if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
    {
      v20 = v19;
      application4 = [(KTApplicationPublicKeyStore *)self application];
      *buf = 138412546;
      v46 = application4;
      v47 = 2112;
      v48 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "failed to delete %@ PAT STHs from prior epoch: %@", buf, 0x16u);
    }
  }

  application5 = [(KTApplicationPublicKeyStore *)self application];
  v42 = v18;
  v23 = [storeCopy deleteDownloadRecords:application5 error:&v42];
  v24 = v42;

  if ((v23 & 1) == 0)
  {
    if (qword_10039CC18 != -1)
    {
      sub_10025DE64();
    }

    v25 = qword_10039CC20;
    if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
    {
      v26 = v25;
      application6 = [(KTApplicationPublicKeyStore *)self application];
      *buf = 138412546;
      v46 = application6;
      v47 = 2112;
      v48 = v24;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "failed to delete %@ download records: %@", buf, 0x16u);
    }
  }

  application7 = [(KTApplicationPublicKeyStore *)self application];
  v41 = v24;
  v29 = [storeCopy deleteServerRPCs:application7 error:&v41];
  v30 = v41;

  if ((v29 & 1) == 0)
  {
    if (qword_10039CC18 != -1)
    {
      sub_10025DE8C();
    }

    v31 = qword_10039CC20;
    if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
    {
      v32 = v31;
      application8 = [(KTApplicationPublicKeyStore *)self application];
      *buf = 138412546;
      v46 = application8;
      v47 = 2112;
      v48 = v30;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "failed to delete %@ server RPCs: %@", buf, 0x16u);
    }
  }

  application9 = [(KTApplicationPublicKeyStore *)self application];
  v40 = v30;
  v35 = [storeCopy resetRequestsForApplication:application9 error:&v40];
  v36 = v40;

  if ((v35 & 1) == 0)
  {
    if (qword_10039CC18 != -1)
    {
      sub_10025DEB4();
    }

    v37 = qword_10039CC20;
    if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
    {
      v38 = v37;
      application10 = [(KTApplicationPublicKeyStore *)self application];
      *buf = 138412546;
      v46 = application10;
      v47 = 2112;
      v48 = v36;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "failed to delete stored requests for %@: %@", buf, 0x16u);
    }
  }
}

- (BOOL)detectEpochChangeAndResetData:(unint64_t)data patLogBeginningMs:(unint64_t)ms mapStillPopulating:(BOOL)populating dataStore:(id)store
{
  populatingCopy = populating;
  storeCopy = store;
  v11 = [(KTApplicationPublicKeyStore *)self detectResetForTLT:data];
  if (v11)
  {
    [(KTApplicationPublicKeyStore *)self clearDataForTLT:data dataStore:storeCopy];
    [(KTApplicationPublicKeyStore *)self notifyTreeResetDetected:1 logTimestamp:data];
  }

  v12 = [(KTApplicationPublicKeyStore *)self detectResetForPAT:ms];
  if (v12)
  {
    [(KTApplicationPublicKeyStore *)self clearDataForPAT:ms dataStore:storeCopy];
    if (populatingCopy)
    {
      if (qword_10039CC18 != -1)
      {
        sub_10025DEF0();
      }

      v13 = qword_10039CC20;
      if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 134217984;
        msCopy2 = ms;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notifying about PAT reset %llu", &v16, 0xCu);
      }

      [(KTApplicationPublicKeyStore *)self notifyTreeResetDetected:0 logTimestamp:ms];
    }

    else
    {
      if (qword_10039CC18 != -1)
      {
        sub_10025DEDC();
      }

      v14 = qword_10039CC20;
      if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 134217984;
        msCopy2 = ms;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not notifying about PAT reset %llu", &v16, 0xCu);
      }
    }
  }

  return v11 | v12;
}

- (BOOL)inResetWindow
{
  keyBag = [(KTApplicationPublicKeyStore *)self keyBag];
  patLogBeginningMs = [keyBag patLogBeginningMs];
  v4 = (patLogBeginningMs + kKTMaximumResetFailureWindowMs);
  +[NSDate kt_currentTimeMs];
  v6 = v5 < v4;

  return v6;
}

- (void)startKeyStoreStateSampler
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = sub_10020416C;
  v7[4] = sub_10020417C;
  application = [(KTApplicationPublicKeyStore *)self application];
  application2 = [(KTApplicationPublicKeyStore *)self application];
  v4 = [NSString stringWithFormat:@"KeyStoreState-%@", application2];

  v5 = +[TransparencyAnalytics logger];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100204184;
  v6[3] = &unk_100329D78;
  v6[4] = self;
  v6[5] = v7;
  [v5 addMultiSamplerForName:v4 withTimeInterval:v6 block:SFAnalyticsSamplerIntervalOncePerReport];

  _Block_object_dispose(v7, 8);
}

- (KTApplicationPublicKeyStore)initWithApplication:(id)application dataStore:(id)store response:(id)response contextStore:(id)contextStore settings:(id)settings error:(id *)error
{
  applicationCopy = application;
  storeCopy = store;
  responseCopy = response;
  contextStoreCopy = contextStore;
  settingsCopy = settings;
  v26.receiver = self;
  v26.super_class = KTApplicationPublicKeyStore;
  v20 = [(KTApplicationPublicKeyStore *)&v26 init];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v20->_application, application);
  [(KTApplicationPublicKeyStore *)v21 setSettings:settingsCopy];
  if ([(KTApplicationPublicKeyStore *)v21 updateWithPublicKeyResponse:responseCopy dataStore:storeCopy error:error])
  {
    [(KTApplicationPublicKeyStore *)v21 startKeyStoreStateSampler];
    [(KTApplicationPublicKeyStore *)v21 setContextStore:contextStoreCopy];
LABEL_4:
    v22 = v21;
    goto LABEL_13;
  }

  if (qword_10039CC18 != -1)
  {
    sub_10025DF04();
  }

  v23 = qword_10039CC20;
  if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v24 = *error;
    }

    else
    {
      v24 = 0;
    }

    *buf = 138543618;
    v28 = applicationCopy;
    v29 = 2112;
    v30 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "failed to create key bag from public key response for %{public}@: %@", buf, 0x16u);
  }

  v22 = 0;
LABEL_13:

  return v22;
}

- (BOOL)updateWithPublicKeyResponse:(id)response dataStore:(id)store error:(id *)error
{
  responseCopy = response;
  storeCopy = store;
  v10 = [TransparencyPublicKeyBag alloc];
  application = [(KTApplicationPublicKeyStore *)self application];
  settings = [(KTApplicationPublicKeyStore *)self settings];
  v13 = [(TransparencyPublicKeyBag *)v10 initWithPublicKeysResponse:responseCopy application:application settings:settings error:error];

  if (!v13)
  {
LABEL_35:
    [(KTApplicationPublicKeyStore *)self setKeyBag:0];
    v35 = 0;
    goto LABEL_36;
  }

  vrfKey = [(TransparencyPublicKeyBag *)v13 vrfKey];

  if (!vrfKey)
  {
    if (error)
    {
      application2 = [(KTApplicationPublicKeyStore *)self application];
      *error = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-166 description:@"missing VRF key in KT %@ key bag", application2];
    }

    if (qword_10039CC18 != -1)
    {
      sub_10025DF90();
    }

    v37 = qword_10039CC20;
    if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
    {
      v38 = v37;
      application3 = [(KTApplicationPublicKeyStore *)self application];
      *buf = 138543362;
      v53 = application3;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "missing VRF key in KT %{public}@ key bag", buf, 0xCu);
    }

    goto LABEL_35;
  }

  if ([(KTApplicationPublicKeyStore *)self detectEpochChangeAndResetData:[(TransparencyPublicKeyBag *)v13 tltLogBeginningMs] patLogBeginningMs:[(TransparencyPublicKeyBag *)v13 patLogBeginningMs] mapStillPopulating:[(TransparencyPublicKeyBag *)v13 mapStillPopulating] dataStore:storeCopy])
  {
    if (qword_10039CC18 != -1)
    {
      sub_10025DF2C();
    }

    v15 = qword_10039CC20;
    if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "processPatConfigProof detected a tree reset", buf, 2u);
    }
  }

  selfCopy = self;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  verifiedLogHeads = [(TransparencyPublicKeyBag *)v13 verifiedLogHeads];
  v17 = [verifiedLogHeads countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v49;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v49 != v19)
        {
          objc_enumerationMutation(verifiedLogHeads);
        }

        v21 = *(*(&v48 + 1) + 8 * i);
        [v21 setDataStore:storeCopy];
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_100204BAC;
        v46[3] = &unk_1003180E0;
        v46[4] = v21;
        v47 = storeCopy;
        [v47 performBlockAndWait:v46];
      }

      v18 = [verifiedLogHeads countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v18);
  }

  verifiedSignedMapHead = [(TransparencyPublicKeyBag *)v13 verifiedSignedMapHead];

  if (verifiedSignedMapHead)
  {
    verifiedSignedMapHead2 = [(TransparencyPublicKeyBag *)v13 verifiedSignedMapHead];
    [verifiedSignedMapHead2 setDataStore:storeCopy];
    application4 = [(KTApplicationPublicKeyStore *)selfCopy application];
    v45 = 0;
    v25 = [storeCopy newestMapRevision:application4 logBeginMs:objc_msgSend(verifiedSignedMapHead2 error:{"overrideBeginTime"), &v45}];
    v26 = v45;

    if (v26)
    {
      if (qword_10039CC18 != -1)
      {
        sub_10025DF40();
      }

      v27 = qword_10039CC20;
      if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v53 = v26;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "processPamHeadInPatProof couldn't fetch newest map revision: %@", buf, 0xCu);
      }
    }

    parsedMapHead = [verifiedSignedMapHead2 parsedMapHead];
    revision = [parsedMapHead revision];

    if (revision > v25)
    {
      if (qword_10039CC18 != -1)
      {
        sub_10025DF68();
      }

      v30 = qword_10039CC20;
      if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_INFO))
      {
        v31 = v30;
        application5 = [(KTApplicationPublicKeyStore *)selfCopy application];
        parsedMapHead2 = [verifiedSignedMapHead2 parsedMapHead];
        revision2 = [parsedMapHead2 revision];
        *buf = 138412546;
        v53 = application5;
        v54 = 2048;
        v55 = revision2;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "processPamHeadInPatProof storing SMH for %@ rev %llu", buf, 0x16u);
      }

      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_100204DFC;
      v42[3] = &unk_1003180E0;
      v43 = verifiedSignedMapHead2;
      v44 = storeCopy;
      [v44 performBlockAndWait:v42];
    }
  }

  [(KTApplicationPublicKeyStore *)selfCopy setKeyBag:v13];
  v35 = 1;
LABEL_36:

  return v35;
}

- (KTApplicationPublicKeyStore)initWithApplication:(id)application dataStore:(id)store diskState:(id)state contextStore:(id)contextStore settings:(id)settings error:(id *)error
{
  applicationCopy = application;
  stateCopy = state;
  contextStoreCopy = contextStore;
  settingsCopy = settings;
  v27.receiver = self;
  v27.super_class = KTApplicationPublicKeyStore;
  v18 = [(KTApplicationPublicKeyStore *)&v27 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v18->_application, application);
  [(KTApplicationPublicKeyStore *)v19 setSettings:settingsCopy];
  v20 = [TransparencyPublicKeyBag alloc];
  settings = [(KTApplicationPublicKeyStore *)v19 settings];
  v22 = [(TransparencyPublicKeyBag *)v20 initWithDiskKeyStore:stateCopy application:applicationCopy settings:settings error:error];

  if (v22)
  {
    [(KTApplicationPublicKeyStore *)v19 setKeyBag:v22];
    [(KTApplicationPublicKeyStore *)v19 startKeyStoreStateSampler];
    [(KTApplicationPublicKeyStore *)v19 setContextStore:contextStoreCopy];

LABEL_4:
    v23 = v19;
    goto LABEL_13;
  }

  if (qword_10039CC18 != -1)
  {
    sub_10025E01C();
  }

  v24 = qword_10039CC20;
  if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v25 = *error;
    }

    else
    {
      v25 = 0;
    }

    *buf = 138543618;
    v29 = applicationCopy;
    v30 = 2112;
    v31 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "failed to create key bag from disk for %{public}@: %@", buf, 0x16u);
  }

  v23 = 0;
LABEL_13:

  return v23;
}

- (id)createTLTApplicationPublicKeyStore
{
  v3 = objc_alloc_init(KTApplicationPublicKeyStore);
  [(KTApplicationPublicKeyStore *)v3 setApplication:kKTApplicationIdentifierTLT];
  keyBag = [(KTApplicationPublicKeyStore *)self keyBag];
  copyTltBag = [keyBag copyTltBag];
  [(KTApplicationPublicKeyStore *)v3 setKeyBag:copyTltBag];

  receiptTime = [(KTApplicationPublicKeyStore *)self receiptTime];
  [(KTApplicationPublicKeyStore *)v3 setReceiptTime:receiptTime];

  contextStore = [(KTApplicationPublicKeyStore *)self contextStore];
  [(KTApplicationPublicKeyStore *)v3 setContextStore:contextStore];

  settings = [(KTApplicationPublicKeyStore *)self settings];
  [(KTApplicationPublicKeyStore *)v3 setSettings:settings];

  return v3;
}

- (KTContextStore)contextStore
{
  WeakRetained = objc_loadWeakRetained(&self->_contextStore);

  return WeakRetained;
}

- (KTPublicKeyStoreDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end