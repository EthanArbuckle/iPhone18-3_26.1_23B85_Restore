@interface CKKSViewManager
+ (id)manager;
+ (void)callSyncCallbackWithErrorNoAccount:(id)a3;
- (BOOL)allowClientRPC:(id *)a3;
- (BOOL)peekCallbackForUUID:(id)a3;
- (BOOL)waitForTrustReady;
- (CKKSViewManager)initWithContainer:(id)a3 sosAdapter:(id)a4 accountStateTracker:(id)a5 lockStateTracker:(id)a6 reachabilityTracker:(id)a7 personaAdapter:(id)a8 cloudKitClassDependencies:(id)a9 accountsAdapter:(id)a10;
- (id)ckksAccountSyncForContainer:(id)a3 contextID:(id)a4;
- (id)claimCallbackForUUID:(id)a3;
- (id)currentTLKsFilteredByPolicy:(BOOL)a3 error:(id *)a4;
- (id)defaultViewError;
- (id)getGlobalRateLimiter;
- (id)pendingCallbackUUIDs;
- (id)restartCKKSAccountSync:(id)a3;
- (id)restartCKKSAccountSyncWithoutSettingPolicy:(id)a3;
- (id)sanitizeErrorDomain:(id)a3;
- (void)cloudkitAccountStateChange:(id)a3 to:(id)a4;
- (void)deleteSEView:(id)a3 reply:(id)a4;
- (void)dropAllActors;
- (void)haltAll;
- (void)handleKeychainEventDbConnection:(__OpaqueSecDbConnection *)a3 source:(unint64_t)a4 added:(SecDbItem *)a5 deleted:(SecDbItem *)a6;
- (void)initialSyncStatus:(id)a3 reply:(id)a4;
- (void)lockStateChangeNotification:(BOOL)a3;
- (void)modifyTLKSharesForSEView:(id)a3 adding:(id)a4 deleting:(id)a5 reply:(id)a6;
- (void)notifyNewTLKsInKeychain;
- (void)pcsMirrorKeysForServices:(id)a3 reply:(id)a4;
- (void)proposeTLKForSEView:(id)a3 proposedTLK:(id)a4 wrappedOldTLK:(id)a5 tlkShares:(id)a6 reply:(id)a7;
- (void)registerSyncStatusCallback:(id)a3 callback:(id)a4;
- (void)rpcCKMetric:(id)a3 attributes:(id)a4 reply:(id)a5;
- (void)rpcGetCKDeviceIDWithReply:(id)a3;
- (void)rpcPushOutgoingChanges:(id)a3 reply:(id)a4;
- (void)rpcResetCloudKit:(id)a3 reason:(id)a4 reply:(id)a5;
- (void)rpcResetLocal:(id)a3 reply:(id)a4;
- (void)rpcResync:(id)a3 reply:(id)a4;
- (void)rpcResyncLocal:(id)a3 reply:(id)a4;
- (void)setCurrentItemForAccessGroup:(id)a3 hash:(id)a4 accessGroup:(id)a5 identifier:(id)a6 viewHint:(id)a7 replacing:(id)a8 hash:(id)a9 complete:(id)a10;
- (void)setupAnalytics;
- (void)syncBackupAndNotifyAboutSync;
- (void)toggleHavoc:(id)a3;
- (void)unsetCurrentItemsForAccessGroup:(id)a3 identifiers:(id)a4 viewHint:(id)a5 complete:(id)a6;
- (void)xpc24HrNotification;
@end

@implementation CKKSViewManager

+ (id)manager
{
  v2 = +[OTManager manager];
  v3 = [v2 viewManager];

  return v3;
}

- (void)dropAllActors
{
  v2 = +[OTManager manager];
  [v2 dropAllActors];
}

- (void)haltAll
{
  v2 = +[OTManager manager];
  [v2 haltAll];
}

- (void)xpc24HrNotification
{
  v3 = sub_100019104(@"ckks", 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received a 24hr notification from XPC", buf, 2u);
  }

  if (![(CKKSViewManager *)self waitForTrustReady])
  {
    v4 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Trust not ready, still going ahead", v8, 2u);
    }
  }

  v5 = [(CKKSViewManager *)self ckksAccountSyncForContainer:@"com.apple.security.keychain" contextID:@"defaultContext"];
  v6 = [CKOperationGroup CKKSGroupWithName:@"periodic-device-state-update"];
  v7 = [v5 updateDeviceState:1 waitForKeyHierarchyInitialization:30000000000 ckoperationGroup:v6];
  [v5 xpc24HrNotification];
}

- (void)initialSyncStatus:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[OTManager manager];
  v9 = objc_alloc_init(OTControlArguments);
  v15 = 0;
  v10 = [v8 ckksForClientRPC:v9 createIfMissing:1 allowNonPrimaryAccounts:1 error:&v15];
  v11 = v15;

  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    [v10 initialSyncStatus:v6 reply:v7];
  }

  else
  {
    v13 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v17 = @"com.apple.security.keychain";
      v18 = 2112;
      v19 = @"defaultContext";
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No CKKS view for %@, %@, error: %@", buf, 0x20u);
    }

    if (v11)
    {
      v7[2](v7, 0, v11);
    }

    else
    {
      v14 = [(CKKSViewManager *)self defaultViewError];
      v7[2](v7, 0, v14);
    }
  }
}

- (void)pcsMirrorKeysForServices:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[OTManager manager];
  v9 = objc_alloc_init(OTControlArguments);
  v15 = 0;
  v10 = [v8 ckksForClientRPC:v9 createIfMissing:1 allowNonPrimaryAccounts:1 error:&v15];
  v11 = v15;

  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    [v10 pcsMirrorKeysForServices:v6 reply:v7];
  }

  else
  {
    v13 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v17 = @"com.apple.security.keychain";
      v18 = 2112;
      v19 = @"defaultContext";
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No CKKS view for %@, %@, error: %@", buf, 0x20u);
    }

    if (v11)
    {
      v7[2](v7, 0, v11);
    }

    else
    {
      v14 = [(CKKSViewManager *)self defaultViewError];
      v7[2](v7, 0, v14);
    }
  }
}

- (void)toggleHavoc:(id)a3
{
  v4 = a3;
  v15 = 0;
  v5 = [(CKKSViewManager *)self allowClientRPC:&v15];
  v6 = v15;
  if (v5)
  {
    v7 = +[OTManager manager];
    v8 = objc_alloc_init(OTControlArguments);
    v14 = 0;
    v9 = [v7 ckksForClientRPC:v8 createIfMissing:1 allowNonPrimaryAccounts:1 error:&v14];
    v10 = v14;

    if (!v9 || v10)
    {
      v12 = sub_100019104(@"ckks", 0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v17 = @"com.apple.security.keychain";
        v18 = 2112;
        v19 = @"defaultContext";
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No CKKS view for %@, %@, error: %@", buf, 0x20u);
      }

      if (v10)
      {
        v4[2](v4, 0, v10);
      }

      else
      {
        v13 = [(CKKSViewManager *)self defaultViewError];
        v4[2](v4, 0, v13);
      }
    }

    else
    {
      [v9 toggleHavoc:v4];
    }
  }

  else
  {
    v11 = sub_100006274("ckks");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rejecting a toggleHavoc RPC: %@", buf, 0xCu);
    }

    v4[2](v4, 0, v6);
  }
}

- (void)deleteSEView:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v8 = [(CKKSViewManager *)self allowClientRPC:&v22];
  v9 = v22;
  if (v8)
  {
    v10 = +[OTManager manager];
    v11 = objc_alloc_init(OTControlArguments);
    v21 = 0;
    v12 = [v10 ckksForClientRPC:v11 createIfMissing:1 allowNonPrimaryAccounts:1 error:&v21];
    v13 = v21;

    if (!v12 || v13)
    {
      v15 = sub_100019104(@"ckks", 0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v26 = @"com.apple.security.keychain";
        v27 = 2112;
        v28 = @"defaultContext";
        v29 = 2112;
        v30 = v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No CKKS view for %@, %@, error: %@", buf, 0x20u);
      }

      if (v13)
      {
        v7[2](v7, v13);
      }

      else
      {
        v23 = NSLocalizedDescriptionKey;
        v16 = [NSString stringWithFormat:@"No CKKS for %@, %@", @"com.apple.security.keychain", @"defaultContext"];
        v24 = v16;
        v17 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        v18 = [NSError errorWithDomain:@"CKKSErrorDomain" code:11 userInfo:v17];
        v7[2](v7, v18);
      }
    }

    else
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1001581C8;
      v19[3] = &unk_1003386E8;
      v19[4] = self;
      v20 = v7;
      [v12 resetExternallyManagedCloudKitView:v6 reply:v19];
    }
  }

  else
  {
    v14 = sub_100006274("ckks");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rejecting a deleteSEView RPC: %@", buf, 0xCu);
    }

    v7[2](v7, v9);
  }
}

- (void)modifyTLKSharesForSEView:(id)a3 adding:(id)a4 deleting:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v29 = 0;
  v14 = [(CKKSViewManager *)self allowClientRPC:&v29];
  v15 = v29;
  if (v14)
  {
    v16 = +[OTManager manager];
    v17 = objc_alloc_init(OTControlArguments);
    v28 = 0;
    v18 = [v16 ckksForClientRPC:v17 createIfMissing:1 allowNonPrimaryAccounts:1 error:&v28];
    v19 = v28;

    if (!v18 || v19)
    {
      v22 = sub_100019104(@"ckks", 0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v33 = @"com.apple.security.keychain";
        v34 = 2112;
        v35 = @"defaultContext";
        v36 = 2112;
        v37 = v19;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "No CKKS view for %@, %@, error: %@", buf, 0x20u);
      }

      if (v19)
      {
        v13[2](v13, v19);
LABEL_14:

        goto LABEL_15;
      }

      v30 = NSLocalizedDescriptionKey;
      v25 = [NSString stringWithFormat:@"No CKKS for %@, %@", @"com.apple.security.keychain", @"defaultContext"];
      v31 = v25;
      v23 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v24 = [NSError errorWithDomain:@"CKKSErrorDomain" code:11 userInfo:v23];
      v13[2](v13, v24);

      v20 = v25;
    }

    else
    {
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100158590;
      v26[3] = &unk_1003386E8;
      v26[4] = self;
      v27 = v13;
      [v18 modifyTLKSharesForExternallyManagedView:v10 adding:v11 deleting:v12 reply:v26];
      v20 = v27;
    }

    goto LABEL_14;
  }

  v21 = sub_100006274("ckks");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v15;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Rejecting a modifyTLKShares RPC: %@", buf, 0xCu);
  }

  v13[2](v13, v15);
LABEL_15:
}

- (void)proposeTLKForSEView:(id)a3 proposedTLK:(id)a4 wrappedOldTLK:(id)a5 tlkShares:(id)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v33 = 0;
  v17 = [(CKKSViewManager *)self allowClientRPC:&v33];
  v18 = v33;
  if (v17)
  {
    v29 = v12;
    v19 = +[OTManager manager];
    v20 = objc_alloc_init(OTControlArguments);
    v32 = 0;
    v21 = [v19 ckksForClientRPC:v20 createIfMissing:1 allowNonPrimaryAccounts:1 error:&v32];
    v22 = v32;

    if (!v21 || v22)
    {
      v25 = sub_100019104(@"ckks", 0);
      v12 = v29;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v37 = @"com.apple.security.keychain";
        v38 = 2112;
        v39 = @"defaultContext";
        v40 = 2112;
        v41 = v22;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "No CKKS view for %@, %@, error: %@", buf, 0x20u);
      }

      if (v22)
      {
        v16[2](v16, v22);
LABEL_14:

        goto LABEL_15;
      }

      v34 = NSLocalizedDescriptionKey;
      v28 = [NSString stringWithFormat:@"No CKKS for %@, %@", @"com.apple.security.keychain", @"defaultContext"];
      v35 = v28;
      v26 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v27 = [NSError errorWithDomain:@"CKKSErrorDomain" code:11 userInfo:v26];
      v16[2](v16, v27);

      v12 = v29;
      v23 = v28;
    }

    else
    {
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100158D98;
      v30[3] = &unk_1003386E8;
      v30[4] = self;
      v31 = v16;
      v12 = v29;
      [v21 proposeTLKForExternallyManagedView:v29 proposedTLK:v13 wrappedOldTLK:v14 tlkShares:v15 reply:v30];
      v23 = v31;
    }

    goto LABEL_14;
  }

  v24 = sub_100006274("ckks");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v18;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Rejecting a proposeTLK RPC: %@", buf, 0xCu);
  }

  v16[2](v16, v18);
LABEL_15:
}

- (id)sanitizeErrorDomain:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = [v5 isEqualToString:@"securityd"];

    if (v6)
    {
      v7 = [v4 code];
      v8 = [v4 userInfo];
      v9 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v7 userInfo:v8];
      v10 = CKXPCSuitableError();
    }

    else
    {
      v10 = CKXPCSuitableError();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)rpcCKMetric:(id)a3 attributes:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v11 = [(CKKSViewManager *)self allowClientRPC:&v21];
  v12 = v21;
  if (v11)
  {
    if (v8)
    {
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_100159108;
      v19 = &unk_1003386C0;
      v20 = [[SecEventMetric alloc] initWithEventName:v8];
      v13 = v20;
      [v9 enumerateKeysAndObjectsUsingBlock:&v16];
      v14 = [SecMetrics managerObject:v16];
      [v14 submitEvent:v13];

      v10[2](v10, 0);
    }

    else
    {
      v13 = [NSError errorWithDomain:@"CKKSErrorDomain" code:51 description:@"No metric name"];
      (v10)[2](v10, v13);
    }
  }

  else
  {
    v15 = sub_100006274("ckks");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Rejecting a ckmetric RPC: %@", buf, 0xCu);
    }

    (v10)[2](v10, v12);
  }
}

- (void)rpcGetCKDeviceIDWithReply:(id)a3
{
  v10 = 0;
  v4 = a3;
  v5 = [(CKKSViewManager *)self allowClientRPC:&v10];
  v6 = v10;
  if (v5)
  {
    v7 = [(CKKSViewManager *)self accountTracker];
    v8 = [v7 ckdeviceID];
    v4[2](v4, v8);

    v4 = v7;
  }

  else
  {
    v9 = sub_100006274("ckks");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Rejecting a push RPC: %@", buf, 0xCu);
    }

    v4[2](v4, @"error");
  }
}

- (void)rpcPushOutgoingChanges:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v34 = 0;
  v8 = [(CKKSViewManager *)self allowClientRPC:&v34];
  v9 = v34;
  if (v8)
  {
    v10 = +[OTManager manager];
    v11 = objc_alloc_init(OTControlArguments);
    v33 = 0;
    v12 = [v10 ckksForClientRPC:v11 createIfMissing:1 allowNonPrimaryAccounts:1 error:&v33];
    v13 = v33;

    if (!v12 || v13)
    {
      v19 = sub_100019104(@"ckks", 0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v36 = @"com.apple.security.keychain";
        v37 = 2112;
        v38 = @"defaultContext";
        v39 = 2112;
        v40 = v13;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "No CKKS view for %@, %@, error: %@", buf, 0x20u);
      }

      if (v13)
      {
        v7[2](v7, v13);
      }

      else
      {
        v20 = [(CKKSViewManager *)self defaultViewError];
        v7[2](v7, v20);
      }
    }

    else
    {
      v14 = objc_alloc_init(CKKSResultOperation);
      [(CKKSResultOperation *)v14 setName:@"rpc-push"];
      objc_initWeak(&location, v14);
      v26 = _NSConcreteStackBlock;
      v27 = 3221225472;
      v28 = sub_1001596C8;
      v29 = &unk_1003445C0;
      objc_copyWeak(&v31, &location);
      v30 = v7;
      [(CKKSResultOperation *)v14 setCompletionBlock:&v26];
      v15 = [(__CFString *)v12 zoneName];
      v16 = sub_100019104(@"ckks-rpc", v15);

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v12;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Beginning push for %@", buf, 0xCu);
      }

      if (v6)
      {
        v17 = [NSSet setWithObject:v6];
      }

      else
      {
        v17 = 0;
      }

      v21 = [CKOperationGroup CKKSGroupWithName:@"rpc-push", v13, v26, v27, v28, v29];
      v22 = [(__CFString *)v12 rpcProcessOutgoingQueue:v17 operationGroup:v21];

      if (v6)
      {
      }

      [(CKKSResultOperation *)v14 addSuccessDependency:v22];
      v23 = [(CKKSViewManager *)self operationQueue];
      v24 = [(CKKSResultOperation *)v14 timeout:300000000000];
      [v23 addOperation:v24];

      v13 = v25;
      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v18 = sub_100006274("ckks");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v9;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Rejecting a push RPC: %@", buf, 0xCu);
    }

    v7[2](v7, v9);
  }
}

- (void)rpcResyncLocal:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27 = 0;
  v8 = [(CKKSViewManager *)self allowClientRPC:&v27];
  v9 = v27;
  if (v8)
  {
    v10 = +[OTManager manager];
    v11 = objc_alloc_init(OTControlArguments);
    v26 = 0;
    v12 = [v10 ckksForClientRPC:v11 createIfMissing:1 allowNonPrimaryAccounts:1 error:&v26];
    v13 = v26;

    if (!v12 || v13)
    {
      v20 = sub_100019104(@"ckks", 0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v29 = @"com.apple.security.keychain";
        v30 = 2112;
        v31 = @"defaultContext";
        v32 = 2112;
        v33 = v13;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No CKKS view for %@, %@, error: %@", buf, 0x20u);
      }

      if (v13)
      {
        v7[2](v7, v13);
      }

      else
      {
        v21 = [(CKKSViewManager *)self defaultViewError];
        v7[2](v7, v21);
      }
    }

    else
    {
      v14 = objc_alloc_init(CKKSResultOperation);
      [(CKKSResultOperation *)v14 setName:@"rpc-resync-local"];
      objc_initWeak(&location, v14);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10015A3CC;
      v22[3] = &unk_1003445C0;
      objc_copyWeak(&v24, &location);
      v23 = v7;
      [(CKKSResultOperation *)v14 setCompletionBlock:v22];
      v15 = [(__CFString *)v12 zoneName];
      v16 = sub_100019104(@"ckksresync", v15);

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v12;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Beginning resync (local) for %@", buf, 0xCu);
      }

      v17 = [(__CFString *)v12 resyncLocal];
      [(CKKSResultOperation *)v14 addSuccessDependency:v17];
      v18 = [(CKKSResultOperation *)v14 timeout:240000000000];

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v19 = sub_100006274("ckks");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Rejecting a resync-local RPC: %@", buf, 0xCu);
    }

    v7[2](v7, v9);
  }
}

- (void)rpcResync:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28 = 0;
  v8 = [(CKKSViewManager *)self allowClientRPC:&v28];
  v9 = v28;
  if (v8)
  {
    v10 = +[OTManager manager];
    v11 = objc_alloc_init(OTControlArguments);
    v27 = 0;
    v12 = [v10 ckksForClientRPC:v11 createIfMissing:1 allowNonPrimaryAccounts:1 error:&v27];
    v13 = v27;

    if (!v12 || v13)
    {
      v21 = sub_100019104(@"ckks", 0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v30 = @"com.apple.security.keychain";
        v31 = 2112;
        v32 = @"defaultContext";
        v33 = 2112;
        v34 = v13;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "No CKKS view for %@, %@, error: %@", buf, 0x20u);
      }

      if (v13)
      {
        v7[2](v7, v13);
      }

      else
      {
        v22 = [(CKKSViewManager *)self defaultViewError];
        v7[2](v7, v22);
      }
    }

    else
    {
      v14 = objc_alloc_init(CKKSResultOperation);
      [(CKKSResultOperation *)v14 setName:@"rpc-resync-cloudkit"];
      objc_initWeak(&location, v14);
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10015A8E4;
      v23[3] = &unk_1003445C0;
      objc_copyWeak(&v25, &location);
      v24 = v7;
      [(CKKSResultOperation *)v14 setCompletionBlock:v23];
      v15 = [(__CFString *)v12 zoneName];
      v16 = sub_100019104(@"ckksresync", v15);

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v12;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Beginning resync (CloudKit) for %@", buf, 0xCu);
      }

      v17 = [(__CFString *)v12 resyncWithCloud];
      [(CKKSResultOperation *)v14 addSuccessDependency:v17];
      v18 = [(CKKSResultOperation *)v14 timeout:240000000000];
      v19 = [(CKKSViewManager *)self operationQueue];
      [v19 addOperation:v14];

      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v20 = sub_100006274("ckks");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v9;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Rejecting a resync RPC: %@", buf, 0xCu);
    }

    v7[2](v7, v9);
  }
}

- (void)rpcResetCloudKit:(id)a3 reason:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v20 = 0;
  v9 = [(CKKSViewManager *)self allowClientRPC:&v20];
  v10 = v20;
  if (v9)
  {
    v11 = +[OTManager manager];
    v12 = objc_alloc_init(OTControlArguments);
    v19 = 0;
    v13 = [v11 ckksForClientRPC:v12 createIfMissing:1 allowNonPrimaryAccounts:1 error:&v19];
    v14 = v19;

    if (!v13 || v14)
    {
      v17 = sub_100019104(@"ckks", 0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v22 = @"com.apple.security.keychain";
        v23 = 2112;
        v24 = @"defaultContext";
        v25 = 2112;
        v26 = v14;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No CKKS view for %@, %@, error: %@", buf, 0x20u);
      }

      if (v14)
      {
        v8[2](v8, v14);
LABEL_17:

        goto LABEL_18;
      }

      v15 = [(CKKSViewManager *)self defaultViewError];
      v8[2](v8, v15);
    }

    else
    {
      if (v7)
      {
        v15 = [NSSet setWithObject:v7];
      }

      else
      {
        v15 = 0;
      }

      v18 = [v13 rpcResetCloudKit:v15 reply:v8];
    }

    goto LABEL_17;
  }

  v16 = sub_100006274("ckks");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Rejecting a resetCloudKit RPC: %@", buf, 0xCu);
  }

  v8[2](v8, v10);
LABEL_18:
}

- (void)rpcResetLocal:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0;
  v8 = [(CKKSViewManager *)self allowClientRPC:&v19];
  v9 = v19;
  if (v8)
  {
    v10 = +[OTManager manager];
    v11 = objc_alloc_init(OTControlArguments);
    v18 = 0;
    v12 = [v10 ckksForClientRPC:v11 createIfMissing:1 allowNonPrimaryAccounts:1 error:&v18];
    v13 = v18;

    if (!v12 || v13)
    {
      v16 = sub_100019104(@"ckks", 0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v21 = @"com.apple.security.keychain";
        v22 = 2112;
        v23 = @"defaultContext";
        v24 = 2112;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "No CKKS view for %@, %@, error: %@", buf, 0x20u);
      }

      if (v13)
      {
        v7[2](v7, v13);
LABEL_17:

        goto LABEL_18;
      }

      v14 = [(CKKSViewManager *)self defaultViewError];
      v7[2](v7, v14);
    }

    else
    {
      if (v6)
      {
        v14 = [NSSet setWithObject:v6];
      }

      else
      {
        v14 = 0;
      }

      v17 = [v12 rpcResetLocal:v14 reply:v7];
    }

    goto LABEL_17;
  }

  v15 = sub_100006274("ckks");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Rejecting a resetLocal RPC: %@", buf, 0xCu);
  }

  v7[2](v7, v9);
LABEL_18:
}

- (id)currentTLKsFilteredByPolicy:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v7 = +[OTManager manager];
  v8 = objc_alloc_init(OTControlArguments);
  v51 = 0;
  v9 = [v7 ckksForClientRPC:v8 createIfMissing:1 allowNonPrimaryAccounts:1 error:&v51];
  v10 = v51;

  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    v12 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v54 = @"com.apple.security.keychain";
      v55 = 2112;
      v56 = @"defaultContext";
      v57 = 2112;
      v58 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No CKKS view for %@, %@, error: %@", buf, 0x20u);
    }

    if (a4)
    {
      if (v10)
      {
        v13 = v10;
        v42 = 0;
        *a4 = v10;
      }

      else
      {
        [(CKKSViewManager *)self defaultViewError];
        *a4 = v42 = 0;
      }
    }

    else
    {
      v42 = 0;
    }

    goto LABEL_47;
  }

  v14 = [v9 findKeySets:0];
  v15 = [v14 timeout:10000000000];
  [v14 waitUntilFinished];
  v16 = [v14 error];

  if (!v16)
  {
    v43 = a4;
    v41 = v10;
    v44 = v9;
    v42 = +[NSMutableArray array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = [v14 intendedZoneIDs];
    v19 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (!v19)
    {
      goto LABEL_43;
    }

    v20 = v19;
    v21 = *v48;
    while (1)
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v48 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v47 + 1) + 8 * i);
        if (!v5)
        {
          goto LABEL_23;
        }

        v24 = [v44 syncingPolicy];
        v25 = [v24 viewsToPiggybackTLKs];
        v26 = [v23 zoneName];
        v27 = [v25 containsObject:v26];

        if (v27)
        {
LABEL_23:
          v28 = [v14 keysets];
          v29 = [v28 objectForKeyedSubscript:v23];

          if (v29)
          {
            v30 = [(__CFString *)v29 tlk];

            if (v30)
            {
              v31 = [(__CFString *)v29 tlk];
              v46 = 0;
              v32 = [v31 ensureKeyLoadedForContextID:&stru_100348050 cache:0 error:&v46];
              v33 = v46;

              if (v32)
              {
                v34 = v33 == 0;
              }

              else
              {
                v34 = 0;
              }

              if (v34)
              {
                v39 = [v32 copy];
                [v42 addObject:v39];
              }

              else
              {
                v35 = sub_100019104(@"ckks", 0);
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v54 = v33;
                  _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Error loading key: %@", buf, 0xCu);
                }

                if (v43)
                {
                  v36 = v33;
                  *v43 = v33;
                }
              }

              goto LABEL_40;
            }

            v33 = sub_100019104(@"ckks", 0);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v54 = v29;
              v37 = v33;
              v38 = "Do not have TLK: %@";
LABEL_37:
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, v38, buf, 0xCu);
            }
          }

          else
          {
            v33 = sub_100019104(@"ckks", 0);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v54 = 0;
              v37 = v33;
              v38 = "Do not have keyset: %@";
              goto LABEL_37;
            }
          }

LABEL_40:

          continue;
        }
      }

      v20 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (!v20)
      {
LABEL_43:

        v9 = v44;
        v10 = v41;
        goto LABEL_46;
      }
    }
  }

  v17 = sub_100019104(@"ckks", 0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = [v14 error];
    *buf = 138412290;
    v54 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Error getting keyset: %@", buf, 0xCu);
  }

  if (a4)
  {
    [v14 error];
    *a4 = v42 = 0;
  }

  else
  {
    v42 = 0;
  }

LABEL_46:

LABEL_47:

  return v42;
}

- (void)syncBackupAndNotifyAboutSync
{
  v2 = sub_100245E3C();
  v3 = v2;
  if (v2)
  {
    [v2 performTransaction:&stru_100338678];
  }

  else
  {
    v4 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to get account object", v5, 2u);
    }
  }
}

- (void)notifyNewTLKsInKeychain
{
  v3 = sub_100019104(@"ckksbackup", 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "New TLKs have arrived", v4, 2u);
  }

  [(CKKSViewManager *)self syncBackupAndNotifyAboutSync];
}

- (void)unsetCurrentItemsForAccessGroup:(id)a3 identifiers:(id)a4 viewHint:(id)a5 complete:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[OTManager manager];
  v15 = objc_alloc_init(OTControlArguments);
  v21 = 0;
  v16 = [v14 ckksForClientRPC:v15 createIfMissing:1 allowNonPrimaryAccounts:1 error:&v21];
  v17 = v21;

  if (v16)
  {
    v18 = v17 == 0;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    [v16 unsetCurrentItemsForAccessGroup:v10 identifiers:v11 viewHint:v12 complete:v13];
  }

  else
  {
    v19 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v23 = @"com.apple.security.keychain";
      v24 = 2112;
      v25 = @"defaultContext";
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "No CKKS view for %@, %@, error: %@", buf, 0x20u);
    }

    if (v17)
    {
      v13[2](v13, v17);
    }

    else
    {
      v20 = [(CKKSViewManager *)self defaultViewError];
      v13[2](v13, v20);
    }
  }
}

- (void)setCurrentItemForAccessGroup:(id)a3 hash:(id)a4 accessGroup:(id)a5 identifier:(id)a6 viewHint:(id)a7 replacing:(id)a8 hash:(id)a9 complete:(id)a10
{
  v31 = a3;
  v30 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = +[OTManager manager];
  v22 = objc_alloc_init(OTControlArguments);
  v32 = 0;
  v23 = [v21 ckksForClientRPC:v22 createIfMissing:1 allowNonPrimaryAccounts:1 error:&v32];
  v24 = v32;

  if (!v23 || v24)
  {
    v27 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v34 = @"com.apple.security.keychain";
      v35 = 2112;
      v36 = @"defaultContext";
      v37 = 2112;
      v38 = v24;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "No CKKS view for %@, %@, error: %@", buf, 0x20u);
    }

    if (v24)
    {
      v20[2](v20, v24);
    }

    else
    {
      v28 = [(CKKSViewManager *)self defaultViewError];
      v20[2](v20, v28);
    }

    v26 = v30;
    v25 = v31;
  }

  else
  {
    v26 = v30;
    v25 = v31;
    [v23 setCurrentItemForAccessGroup:v31 hash:v30 accessGroup:v15 identifier:v16 viewHint:v17 replacing:v18 hash:v19 complete:v20];
  }
}

- (id)defaultViewError
{
  v6 = NSLocalizedDescriptionKey;
  v2 = [NSString stringWithFormat:@"No syncing view for %@, %@", @"com.apple.security.keychain", @"defaultContext"];
  v7 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = [NSError errorWithDomain:@"CKKSErrorDomain" code:11 userInfo:v3];

  return v4;
}

- (void)handleKeychainEventDbConnection:(__OpaqueSecDbConnection *)a3 source:(unint64_t)a4 added:(SecDbItem *)a5 deleted:(SecDbItem *)a6
{
  if (a5 | a6)
  {
    if (!a5)
    {
      v13 = 0;
      v12 = 0;
      goto LABEL_15;
    }

    v11 = sub_100015BFC(a5, &off_100342650, 0);
    if ([v11 length])
    {
      if (v11)
      {
        v12 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v11, "bytes")}];
        v13 = 0;
LABEL_14:

LABEL_15:
        if (!a6)
        {
          v17 = 0;
          v20 = 0;
          v19 = v12 != 0;
          if (v12)
          {
            goto LABEL_34;
          }

          goto LABEL_32;
        }

        v53 = a3;
        v14 = a4;
        v15 = self;
        v16 = sub_100015BFC(a6, &off_100342650, 0);
        if ([v16 length])
        {
          if (v16)
          {
            v17 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v16, "bytes")}];

            v18 = 0;
            v19 = v12 != 0;
            v20 = v17 != 0;
            if (v12 && v17)
            {
              v21 = [v12 UUIDString];
              v22 = [v17 UUIDString];
              v23 = [v21 isEqualToString:v22];

              if ((v23 & 1) == 0)
              {
                v38 = sub_100019104(@"handleKeychainEventDbConnection", 0);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  *v61 = v12;
                  *&v61[8] = 2112;
                  v62 = v17;
                  v39 = "musr for added and deleted are different. added's musr:%@, deleted's musr: %@";
                  v40 = v38;
                  v41 = 22;
                  goto LABEL_56;
                }

LABEL_57:

LABEL_68:
                goto LABEL_69;
              }

              v18 = 0;
              v20 = 1;
              v19 = 1;
            }

LABEL_29:
            self = v15;
            if (!a5 || v18 == v13)
            {
              a4 = v14;
              a3 = v53;
              if (v19)
              {
                goto LABEL_34;
              }

LABEL_32:
              if (!v20)
              {
                v24 = 0;
                goto LABEL_38;
              }

LABEL_34:
              if (v19)
              {
                v25 = v12;
              }

              else
              {
                v25 = v17;
              }

              v24 = [v25 UUIDString];
              if (((v24 != 0) & ~v13) != 0)
              {
                if (qword_10039E108 != -1)
                {
                  dispatch_once(&qword_10039E108, &stru_1003420B8);
                }

                if (byte_10039E100 == 1)
                {
                  v52 = v12;
                  v54 = a3;
                  v50 = a4;
                  v51 = v17;
                  v49 = self;
                  v29 = [(CKKSViewManager *)self accountsAdapter];
                  v30 = [v29 inflateAllTPSpecificUsers:@"com.apple.security.keychain" octagonContextID:@"defaultContext"];

                  v57 = 0u;
                  v58 = 0u;
                  v55 = 0u;
                  v56 = 0u;
                  v27 = v30;
                  v31 = [v27 countByEnumeratingWithState:&v55 objects:v59 count:16];
                  if (!v31)
                  {
LABEL_51:

LABEL_64:
                    v48 = sub_100019104(@"handleKeychainEventDbConnection", 0);
                    v17 = v51;
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "did not find an active account for the persona", buf, 2u);
                    }

                    v12 = v52;
                    goto LABEL_67;
                  }

                  v32 = v31;
                  v33 = *v56;
LABEL_45:
                  v34 = 0;
                  while (1)
                  {
                    if (*v56 != v33)
                    {
                      objc_enumerationMutation(v27);
                    }

                    v35 = *(*(&v55 + 1) + 8 * v34);
                    v36 = [v35 personaUniqueString];
                    v37 = [v36 isEqualToString:v24];

                    if (v37)
                    {
                      break;
                    }

                    if (v32 == ++v34)
                    {
                      v32 = [v27 countByEnumeratingWithState:&v55 objects:v59 count:16];
                      if (v32)
                      {
                        goto LABEL_45;
                      }

                      goto LABEL_51;
                    }
                  }

                  v42 = v35;

                  if (!v42)
                  {
                    goto LABEL_64;
                  }

                  v43 = sub_100019104(@"handleKeychainEventDbConnection", 0);
                  v17 = v51;
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    *v61 = v42;
                    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "using tpspecific user: %@", buf, 0xCu);
                  }

                  v44 = +[OTManager manager];
                  v45 = [v42 cloudkitContainerName];
                  v46 = [v42 octagonContextID];
                  v47 = [v44 ckksAccountSyncForContainer:v45 contextID:v46 possibleAccount:v42];

                  v27 = v47;
                  v12 = v52;
                  a3 = v54;
                  self = v49;
                  a4 = v50;
                  if (v27)
                  {
                    goto LABEL_39;
                  }
                }

                goto LABEL_62;
              }

LABEL_38:
              v26 = +[OTManager manager];
              v27 = [v26 ckksAccountSyncForContainer:@"com.apple.security.keychain" contextID:@"defaultContext" possibleAccount:0];

              if (v27)
              {
LABEL_39:
                v28 = [(CKKSViewManager *)self globalRateLimiter];
                [v27 handleKeychainEventDbConnection:a3 source:a4 added:a5 deleted:a6 rateLimiter:v28];

LABEL_67:
                goto LABEL_68;
              }

LABEL_62:
              v27 = sub_100019104(@"handleKeychainEventDbConnection", 0);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "ckks view is nil! returning.", buf, 2u);
              }

              goto LABEL_67;
            }

            v38 = sub_100019104(@"handleKeychainEventDbConnection", 0);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109376;
              *v61 = v13;
              *&v61[4] = 1024;
              *&v61[6] = v18;
              v39 = "added's SingleUserKeychainUUID is different from deleted's. added's musr:%d, deleted's musr: %d";
              v40 = v38;
              v41 = 14;
LABEL_56:
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, v39, buf, v41);
              goto LABEL_57;
            }

            goto LABEL_57;
          }

          v18 = 0;
        }

        else
        {
          if (qword_10039DFD8 != -1)
          {
            dispatch_once(&qword_10039DFD8, &stru_100338EF0);
          }

          v18 = [v16 isEqualToData:qword_10039DFE0];
        }

        v20 = 0;
        v17 = 0;
        v19 = v12 != 0;
        goto LABEL_29;
      }

      v13 = 0;
    }

    else
    {
      if (qword_10039DFD8 != -1)
      {
        dispatch_once(&qword_10039DFD8, &stru_100338EF0);
      }

      v13 = [v11 isEqualToData:qword_10039DFE0];
    }

    v12 = 0;
    goto LABEL_14;
  }

  v12 = sub_100019104(@"handleKeychainEventDbConnection", 0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "both added and deleted SecDbItemRefs are nil, returning", buf, 2u);
  }

LABEL_69:
}

- (void)cloudkitAccountStateChange:(id)a3 to:(id)a4
{
  v19 = a3;
  v6 = a4;
  if ([v6 accountStatus] != 1 || (objc_msgSend(v6, "hasValidCredentials", v19) & 1) == 0)
  {
    obj = [(CKKSViewManager *)self pendingSyncCallbacks];
    objc_sync_enter(obj);
    v7 = [(CKKSViewManager *)self pendingSyncCallbacks];
    v8 = [v7 count];

    if (v8)
    {
      v9 = sub_100019104(@"ckkscallback", 0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No CK account; failing all pending sync callbacks", buf, 2u);
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = [(CKKSViewManager *)self pendingSyncCallbacks];
      v11 = [v10 allKeys];

      v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v12)
      {
        v13 = *v22;
        do
        {
          v14 = 0;
          do
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v21 + 1) + 8 * v14);
            v16 = [(CKKSViewManager *)self pendingSyncCallbacks];
            v17 = [v16 objectForKeyedSubscript:v15];
            [CKKSViewManager callSyncCallbackWithErrorNoAccount:v17];

            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v12);
      }

      v18 = [(CKKSViewManager *)self pendingSyncCallbacks];
      [v18 removeAllObjects];
    }

    objc_sync_exit(obj);
  }
}

- (id)pendingCallbackUUIDs
{
  v3 = [(CKKSViewManager *)self pendingSyncCallbacks];
  objc_sync_enter(v3);
  v4 = [(CKKSViewManager *)self pendingSyncCallbacks];
  v5 = [v4 allKeys];
  v6 = [v5 copy];

  objc_sync_exit(v3);

  return v6;
}

- (BOOL)peekCallbackForUUID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CKKSViewManager *)self pendingSyncCallbacks];
    objc_sync_enter(v5);
    v6 = [(CKKSViewManager *)self pendingSyncCallbacks];
    v7 = [v6 allKeys];
    v8 = [v7 containsObject:v4];

    objc_sync_exit(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)claimCallbackForUUID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CKKSViewManager *)self pendingSyncCallbacks];
    objc_sync_enter(v5);
    v6 = [(CKKSViewManager *)self pendingSyncCallbacks];
    v7 = [v6 objectForKeyedSubscript:v4];

    if (v7)
    {
      v8 = sub_100019104(@"ckkscallback", 0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "fetched UUID: %@", &v12, 0xCu);
      }
    }

    v9 = [(CKKSViewManager *)self pendingSyncCallbacks];
    [v9 setObject:0 forKeyedSubscript:v4];

    v10 = objc_retainBlock(v7);
    objc_sync_exit(v5);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)registerSyncStatusCallback:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKKSViewManager *)self pendingSyncCallbacks];
  objc_sync_enter(v8);
  v9 = sub_100019104(@"ckkscallback", 0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "registered callback for UUID: %@", &v12, 0xCu);
  }

  v10 = objc_retainBlock(v7);
  v11 = [(CKKSViewManager *)self pendingSyncCallbacks];
  [v11 setObject:v10 forKeyedSubscript:v6];

  objc_sync_exit(v8);
}

- (id)restartCKKSAccountSyncWithoutSettingPolicy:(id)a3
{
  v3 = a3;
  v4 = +[OTManager manager];
  v5 = [v4 restartCKKSAccountSyncWithoutSettingPolicy:v3];

  return v5;
}

- (id)ckksAccountSyncForContainer:(id)a3 contextID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[OTManager manager];
  v8 = [v7 ckksAccountSyncForContainer:v6 contextID:v5 possibleAccount:0];

  if (!v8)
  {
    v9 = sub_100019104(@"ckksAccountSyncForContainer", 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "failed to get CKKSKeychainView", v11, 2u);
    }
  }

  return v8;
}

- (id)restartCKKSAccountSync:(id)a3
{
  v4 = a3;
  v5 = [v4 syncingPolicy];
  v6 = [(CKKSViewManager *)self restartCKKSAccountSyncWithoutSettingPolicy:v4];

  [v6 setCurrentSyncingPolicy:v5 policyIsFresh:0];

  return v6;
}

- (void)lockStateChangeNotification:(BOOL)a3
{
  if (a3)
  {
    v4 = +[CKKSAnalytics logger];
    v3 = +[NSDate date];
    [v4 setDateProperty:v3 forKey:@"lastUnlock"];
  }
}

- (id)getGlobalRateLimiter
{
  if (qword_10039DF58 != -1)
  {
    dispatch_once(&qword_10039DF58, &stru_100338658);
  }

  globalRateLimiter = self->_globalRateLimiter;
  p_globalRateLimiter = &self->_globalRateLimiter;
  v3 = globalRateLimiter;
  if (globalRateLimiter)
  {
    v6 = v3;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_10015D35C;
    v13 = sub_10015D36C;
    v14 = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10015D374;
    block[3] = &unk_100345B48;
    block[4] = &v9;
    dispatch_sync(qword_10039DF50, block);
    objc_storeStrong(p_globalRateLimiter, v10[5]);
    v6 = *p_globalRateLimiter;
    _Block_object_dispose(&v9, 8);
  }

  return v6;
}

- (void)setupAnalytics
{
  objc_initWeak(&location, self);
  v3 = +[CKKSAnalytics logger];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10015D818;
  v24[3] = &unk_100338610;
  objc_copyWeak(&v25, &location);
  v4 = SFAnalyticsSamplerIntervalOncePerReport;
  v5 = [v3 AddMultiSamplerForName:@"CKKS-healthSummary" withTimeInterval:v24 block:SFAnalyticsSamplerIntervalOncePerReport];

  v6 = [(CKKSViewManager *)self ckksAccountSyncForContainer:@"com.apple.security.keychain" contextID:@"defaultContext"];
  v7 = v6;
  if (v6)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [v6 viewList];
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v27 count:16];
    if (v9)
    {
      v10 = *v21;
      do
      {
        v11 = 0;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v20 + 1) + 8 * v11);
          v13 = +[CKKSAnalytics logger];
          v14 = [NSString stringWithFormat:@"CKKS-%@-healthSummary", v12];
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_10015DB5C;
          v16[3] = &unk_100338638;
          objc_copyWeak(&v19, &location);
          v17 = v7;
          v18 = v12;
          v15 = [v13 AddMultiSamplerForName:v14 withTimeInterval:v16 block:v4];

          objc_destroyWeak(&v19);
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v20 objects:v27 count:16];
      }

      while (v9);
    }
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (BOOL)waitForTrustReady
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015E7C8;
  block[3] = &unk_100345B48;
  block[4] = &v5;
  if (qword_10039DF48 != -1)
  {
    dispatch_once(&qword_10039DF48, block);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)allowClientRPC:(id *)a3
{
  if (qword_10039E108 != -1)
  {
    dispatch_once(&qword_10039E108, &stru_1003420B8);
  }

  if (byte_10039E100)
  {
    return 1;
  }

  v5 = [(CKKSViewManager *)self personaAdapter];
  v6 = [v5 currentThreadIsForPrimaryiCloudAccount];

  if (v6)
  {
    return 1;
  }

  v8 = sub_100006274("ckks");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Rejecting client RPC for non-primary persona", v11, 2u);
  }

  if (!a3)
  {
    return 0;
  }

  v9 = [NSError errorWithDomain:@"CKKSErrorDomain" code:65 description:@"CKKS APIs do not support non-primary users"];
  v10 = v9;
  result = 0;
  *a3 = v9;
  return result;
}

- (CKKSViewManager)initWithContainer:(id)a3 sosAdapter:(id)a4 accountStateTracker:(id)a5 lockStateTracker:(id)a6 reachabilityTracker:(id)a7 personaAdapter:(id)a8 cloudKitClassDependencies:(id)a9 accountsAdapter:(id)a10
{
  v38 = a3;
  v37 = a4;
  v36 = a5;
  v35 = a6;
  v34 = a7;
  v33 = a8;
  v17 = a9;
  v32 = a10;
  v39.receiver = self;
  v39.super_class = CKKSViewManager;
  v18 = [(CKKSViewManager *)&v39 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_cloudKitClassDependencies, a9);
    objc_storeStrong(&v19->_sosPeerAdapter, a4);
    viewAllowList = v19->_viewAllowList;
    v19->_viewAllowList = 0;

    objc_storeStrong(&v19->_container, a3);
    objc_storeStrong(&v19->_accountTracker, a5);
    objc_storeStrong(&v19->_lockStateTracker, a6);
    [(CKKSLockStateTracker *)v19->_lockStateTracker addLockStateObserver:v19];
    objc_storeStrong(&v19->_reachabilityTracker, a7);
    objc_storeStrong(&v19->_personaAdapter, a8);
    objc_storeStrong(&v19->_accountsAdapter, a10);
    v21 = +[OctagonAPSReceiver receiverForNamedDelegatePort:apsConnectionClass:](OctagonAPSReceiver, "receiverForNamedDelegatePort:apsConnectionClass:", @"com.apple.securityd.aps", [v17 apsConnectionClass]);
    v22 = objc_alloc_init(NSOperationQueue);
    operationQueue = v19->_operationQueue;
    v19->_operationQueue = v22;

    v24 = objc_alloc_init(NSMutableDictionary);
    pendingSyncCallbacks = v19->_pendingSyncCallbacks;
    v19->_pendingSyncCallbacks = v24;

    v26 = objc_alloc_init(CKKSCondition);
    completedSecCKKSInitialize = v19->_completedSecCKKSInitialize;
    v19->_completedSecCKKSInitialize = v26;

    v28 = +[NSXPCListener anonymousListener];
    listener = v19->_listener;
    v19->_listener = v28;

    [(NSXPCListener *)v19->_listener setDelegate:v19];
    [(NSXPCListener *)v19->_listener resume];
    v30 = [(CKKSAccountStateTracker *)v19->_accountTracker registerForNotificationsOfCloudKitAccountStatusChange:v19];
  }

  return v19;
}

+ (void)callSyncCallbackWithErrorNoAccount:(id)a3
{
  v4 = a3;
  v5 = [NSError errorWithDomain:@"securityd" code:-67729 description:@"No iCloud account available item is not expected to sync"];;
  (*(a3 + 2))(v4, 0, v5);
}

@end