@interface CKKSHealKeyHierarchyOperation
- (BOOL)ensureKeyPresent:(id)present viewState:(id)state;
- (CKKSHealKeyHierarchyOperation)initWithDependencies:(id)dependencies allowFullRefetchResult:(BOOL)result intending:(id)intending errorState:(id)state;
- (void)attemptToHealView:(id)view currentTrustStates:(id)states;
- (void)groupStart;
@end

@implementation CKKSHealKeyHierarchyOperation

- (BOOL)ensureKeyPresent:(id)present viewState:(id)state
{
  presentCopy = present;
  stateCopy = state;
  v38 = 0;
  v8 = [presentCopy loadKeyMaterialFromKeychain:&v38];
  v9 = v38;
  if ((v8 & 1) == 0)
  {
    zoneID = [stateCopy zoneID];
    zoneName = [zoneID zoneName];
    v13 = sub_100019104(@"ckksheal", zoneName);

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v40 = presentCopy;
      v41 = 2112;
      v42 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Couldn't load key(%@) from keychain. Attempting recovery: %@", buf, 0x16u);
    }

    v37 = 0;
    v14 = [presentCopy unwrapViaKeyHierarchy:&v37];
    v15 = v37;

    if (v14)
    {
      v36 = 0;
      v16 = [presentCopy saveKeyMaterialToKeychain:&v36];
      v17 = v36;
      v18 = v17;
      if (v16)
      {

        v10 = 1;
LABEL_25:

        goto LABEL_26;
      }

      deps = [(CKKSHealKeyHierarchyOperation *)self deps];
      lockStateTracker = [deps lockStateTracker];
      v29 = [lockStateTracker isLockedError:v18];

      zoneID2 = [stateCopy zoneID];
      zoneName2 = [zoneID2 zoneName];
      v32 = sub_100019104(@"ckksheal", zoneName2);

      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
      if (v29)
      {
        if (v33)
        {
          *buf = 138412546;
          v40 = presentCopy;
          v41 = 2112;
          v42 = v18;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Couldn't save key(%@) to keychain due to the lock state: %@", buf, 0x16u);
        }

        v34 = off_100344480;
      }

      else
      {
        if (v33)
        {
          *buf = 138412546;
          v40 = presentCopy;
          v41 = 2112;
          v42 = v18;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Couldn't save key(%@) to keychain: %@", buf, 0x16u);
        }

        v34 = &off_100344510;
      }

      [stateCopy setViewKeyHierarchyState:*v34];
    }

    else
    {
      deps2 = [(CKKSHealKeyHierarchyOperation *)self deps];
      lockStateTracker2 = [deps2 lockStateTracker];
      v21 = [lockStateTracker2 isLockedError:v15];

      zoneID3 = [stateCopy zoneID];
      zoneName3 = [zoneID3 zoneName];
      v24 = sub_100019104(@"ckksheal", zoneName3);

      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
      if (v21)
      {
        if (v25)
        {
          *buf = 138412546;
          v40 = presentCopy;
          v41 = 2112;
          v42 = v15;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Couldn't unwrap key(%@) using key hierarchy due to the lock state: %@", buf, 0x16u);
        }

        v26 = off_100344480;
      }

      else
      {
        if (v25)
        {
          *buf = 138412546;
          v40 = presentCopy;
          v41 = 2112;
          v42 = v15;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Couldn't unwrap key(%@) using key hierarchy. Keys are broken, quitting: %@", buf, 0x16u);
        }

        v26 = &off_100344510;
      }

      [stateCopy setViewKeyHierarchyState:*v26];
    }

    v10 = 0;
    goto LABEL_25;
  }

  v10 = 1;
LABEL_26:

  return v10;
}

- (void)attemptToHealView:(id)view currentTrustStates:(id)states
{
  viewCopy = view;
  statesCopy = states;
  objc_initWeak(&location, self);
  v8 = [AAFAnalyticsEventSecurity alloc];
  v50[0] = kSecurityRTCFieldFullRefetchNeeded;
  v50[1] = kSecurityRTCFieldIsPrioritized;
  v51[0] = &__kCFBooleanFalse;
  v51[1] = &__kCFBooleanFalse;
  v9 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:2];
  deps = [(CKKSHealKeyHierarchyOperation *)self deps];
  activeAccount = [deps activeAccount];
  altDSID = [activeAccount altDSID];
  deps2 = [(CKKSHealKeyHierarchyOperation *)self deps];
  sendMetric = [deps2 sendMetric];
  v15 = [v8 initWithCKKSMetrics:v9 altDSID:altDSID eventName:kSecurityRTCEventNameHealKeyHierarchy testsAreEnabled:0 category:kSecurityRTCEventCategoryAccountDataAccessRecovery sendMetric:sendMetric];

  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v47 = 1;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_1000F1F5C;
  v44 = sub_1000F1F6C;
  v45 = objc_alloc_init(NSMutableArray);
  deps3 = [(CKKSHealKeyHierarchyOperation *)self deps];
  databaseProvider = [deps3 databaseProvider];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000F1F74;
  v32[3] = &unk_100336ED8;
  v27 = viewCopy;
  v33 = v27;
  selfCopy = self;
  v18 = v15;
  v35 = v18;
  v19 = statesCopy;
  v36 = v19;
  v37 = v46;
  objc_copyWeak(&v39, &location);
  v38 = &v40;
  [databaseProvider dispatchSyncWithSQLTransaction:v32];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = v41[5];
  v21 = [v20 countByEnumeratingWithState:&v28 objects:v49 count:16];
  if (v21)
  {
    v22 = *v29;
    do
    {
      v23 = 0;
      do
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v28 + 1) + 8 * v23);
        deps4 = [(CKKSHealKeyHierarchyOperation *)self deps];
        ckdatabase = [deps4 ckdatabase];
        [ckdatabase addOperation:v24];

        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [v20 countByEnumeratingWithState:&v28 objects:v49 count:16];
    }

    while (v21);
  }

  objc_destroyWeak(&v39);
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(v46, 8);
  objc_destroyWeak(&location);
}

- (void)groupStart
{
  selfCopy = self;
  objc_initWeak(&location, self);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000F5A58;
  v25[3] = &unk_100337A10;
  objc_copyWeak(&v26, &location);
  v3 = [CKKSResultOperation named:@"determine-next-state" withBlockTakingSelf:v25];
  [(CKKSHealKeyHierarchyOperation *)selfCopy setSetResultStateOperation:v3];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  deps = [(CKKSHealKeyHierarchyOperation *)selfCopy deps];
  obj = [deps activeManagedViews];

  currentTrustStates = 0;
  v6 = [obj countByEnumeratingWithState:&v21 objects:v30 count:16];
  if (v6)
  {
    v8 = *v22;
    *&v7 = 138412290;
    v19 = v7;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        viewKeyHierarchyState = [v10 viewKeyHierarchyState];
        v12 = [viewKeyHierarchyState isEqualToString:@"unhealthy"];

        if (v12)
        {
          if (!currentTrustStates)
          {
            deps2 = [(CKKSHealKeyHierarchyOperation *)selfCopy deps];
            currentTrustStates = [deps2 currentTrustStates];
          }

          [(CKKSHealKeyHierarchyOperation *)selfCopy attemptToHealView:v10 currentTrustStates:currentTrustStates];
        }

        else
        {
          v14 = selfCopy;
          zoneID = [v10 zoneID];
          zoneName = [zoneID zoneName];
          v17 = sub_100019104(@"ckksheal", zoneName);

          selfCopy = v14;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v19;
            v29 = v10;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "View %@ is in okay state; ignoring", buf, 0xCu);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v30 count:16];
    }

    while (v6);
  }

  setResultStateOperation = [(CKKSHealKeyHierarchyOperation *)selfCopy setResultStateOperation];
  [(CKKSGroupOperation *)selfCopy runBeforeGroupFinished:setResultStateOperation];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

- (CKKSHealKeyHierarchyOperation)initWithDependencies:(id)dependencies allowFullRefetchResult:(BOOL)result intending:(id)intending errorState:(id)state
{
  dependenciesCopy = dependencies;
  intendingCopy = intending;
  stateCopy = state;
  v19.receiver = self;
  v19.super_class = CKKSHealKeyHierarchyOperation;
  v14 = [(CKKSGroupOperation *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong((v14 + 142), dependencies);
    v15[128] = result;
    objc_storeStrong((v15 + 134), intending);
    objc_storeStrong((v15 + 150), state);
    v15[129] = 0;
    v16 = +[NSHashTable weakObjectsHashTable];
    v17 = *(v15 + 166);
    *(v15 + 166) = v16;
  }

  return v15;
}

@end