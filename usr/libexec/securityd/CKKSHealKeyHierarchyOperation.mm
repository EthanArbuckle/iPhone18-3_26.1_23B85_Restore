@interface CKKSHealKeyHierarchyOperation
- (BOOL)ensureKeyPresent:(id)a3 viewState:(id)a4;
- (CKKSHealKeyHierarchyOperation)initWithDependencies:(id)a3 allowFullRefetchResult:(BOOL)a4 intending:(id)a5 errorState:(id)a6;
- (void)attemptToHealView:(id)a3 currentTrustStates:(id)a4;
- (void)groupStart;
@end

@implementation CKKSHealKeyHierarchyOperation

- (BOOL)ensureKeyPresent:(id)a3 viewState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v38 = 0;
  v8 = [v6 loadKeyMaterialFromKeychain:&v38];
  v9 = v38;
  if ((v8 & 1) == 0)
  {
    v11 = [v7 zoneID];
    v12 = [v11 zoneName];
    v13 = sub_100019104(@"ckksheal", v12);

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v40 = v6;
      v41 = 2112;
      v42 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Couldn't load key(%@) from keychain. Attempting recovery: %@", buf, 0x16u);
    }

    v37 = 0;
    v14 = [v6 unwrapViaKeyHierarchy:&v37];
    v15 = v37;

    if (v14)
    {
      v36 = 0;
      v16 = [v6 saveKeyMaterialToKeychain:&v36];
      v17 = v36;
      v18 = v17;
      if (v16)
      {

        v10 = 1;
LABEL_25:

        goto LABEL_26;
      }

      v27 = [(CKKSHealKeyHierarchyOperation *)self deps];
      v28 = [v27 lockStateTracker];
      v29 = [v28 isLockedError:v18];

      v30 = [v7 zoneID];
      v31 = [v30 zoneName];
      v32 = sub_100019104(@"ckksheal", v31);

      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
      if (v29)
      {
        if (v33)
        {
          *buf = 138412546;
          v40 = v6;
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
          v40 = v6;
          v41 = 2112;
          v42 = v18;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Couldn't save key(%@) to keychain: %@", buf, 0x16u);
        }

        v34 = &off_100344510;
      }

      [v7 setViewKeyHierarchyState:*v34];
    }

    else
    {
      v19 = [(CKKSHealKeyHierarchyOperation *)self deps];
      v20 = [v19 lockStateTracker];
      v21 = [v20 isLockedError:v15];

      v22 = [v7 zoneID];
      v23 = [v22 zoneName];
      v24 = sub_100019104(@"ckksheal", v23);

      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
      if (v21)
      {
        if (v25)
        {
          *buf = 138412546;
          v40 = v6;
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
          v40 = v6;
          v41 = 2112;
          v42 = v15;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Couldn't unwrap key(%@) using key hierarchy. Keys are broken, quitting: %@", buf, 0x16u);
        }

        v26 = &off_100344510;
      }

      [v7 setViewKeyHierarchyState:*v26];
    }

    v10 = 0;
    goto LABEL_25;
  }

  v10 = 1;
LABEL_26:

  return v10;
}

- (void)attemptToHealView:(id)a3 currentTrustStates:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [AAFAnalyticsEventSecurity alloc];
  v50[0] = kSecurityRTCFieldFullRefetchNeeded;
  v50[1] = kSecurityRTCFieldIsPrioritized;
  v51[0] = &__kCFBooleanFalse;
  v51[1] = &__kCFBooleanFalse;
  v9 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:2];
  v10 = [(CKKSHealKeyHierarchyOperation *)self deps];
  v11 = [v10 activeAccount];
  v12 = [v11 altDSID];
  v13 = [(CKKSHealKeyHierarchyOperation *)self deps];
  v14 = [v13 sendMetric];
  v15 = [v8 initWithCKKSMetrics:v9 altDSID:v12 eventName:kSecurityRTCEventNameHealKeyHierarchy testsAreEnabled:0 category:kSecurityRTCEventCategoryAccountDataAccessRecovery sendMetric:v14];

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
  v16 = [(CKKSHealKeyHierarchyOperation *)self deps];
  v17 = [v16 databaseProvider];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000F1F74;
  v32[3] = &unk_100336ED8;
  v27 = v6;
  v33 = v27;
  v34 = self;
  v18 = v15;
  v35 = v18;
  v19 = v7;
  v36 = v19;
  v37 = v46;
  objc_copyWeak(&v39, &location);
  v38 = &v40;
  [v17 dispatchSyncWithSQLTransaction:v32];

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
        v25 = [(CKKSHealKeyHierarchyOperation *)self deps];
        v26 = [v25 ckdatabase];
        [v26 addOperation:v24];

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
  v2 = self;
  objc_initWeak(&location, self);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000F5A58;
  v25[3] = &unk_100337A10;
  objc_copyWeak(&v26, &location);
  v3 = [CKKSResultOperation named:@"determine-next-state" withBlockTakingSelf:v25];
  [(CKKSHealKeyHierarchyOperation *)v2 setSetResultStateOperation:v3];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(CKKSHealKeyHierarchyOperation *)v2 deps];
  obj = [v4 activeManagedViews];

  v5 = 0;
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
        v11 = [v10 viewKeyHierarchyState];
        v12 = [v11 isEqualToString:@"unhealthy"];

        if (v12)
        {
          if (!v5)
          {
            v13 = [(CKKSHealKeyHierarchyOperation *)v2 deps];
            v5 = [v13 currentTrustStates];
          }

          [(CKKSHealKeyHierarchyOperation *)v2 attemptToHealView:v10 currentTrustStates:v5];
        }

        else
        {
          v14 = v2;
          v15 = [v10 zoneID];
          v16 = [v15 zoneName];
          v17 = sub_100019104(@"ckksheal", v16);

          v2 = v14;
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

  v18 = [(CKKSHealKeyHierarchyOperation *)v2 setResultStateOperation];
  [(CKKSGroupOperation *)v2 runBeforeGroupFinished:v18];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

- (CKKSHealKeyHierarchyOperation)initWithDependencies:(id)a3 allowFullRefetchResult:(BOOL)a4 intending:(id)a5 errorState:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = CKKSHealKeyHierarchyOperation;
  v14 = [(CKKSGroupOperation *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong((v14 + 142), a3);
    v15[128] = a4;
    objc_storeStrong((v15 + 134), a5);
    objc_storeStrong((v15 + 150), a6);
    v15[129] = 0;
    v16 = +[NSHashTable weakObjectsHashTable];
    v17 = *(v15 + 166);
    *(v15 + 166) = v16;
  }

  return v15;
}

@end