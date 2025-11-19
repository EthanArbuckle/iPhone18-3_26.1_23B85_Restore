@interface RDCoreSpotlightDelegateManager
- (RDCoreSpotlightDelegateManager)initWithIsolated:(BOOL)a3 coordinator:(id)a4;
- (void)_startCoreSpotlightDelegate:(id)a3 forStore:(id)a4;
- (void)activateCoreSpotlightDelegates;
- (void)createAndAttachCoreSpotlightDelegateForStoreWithDescription:(id)a3;
- (void)deleteIndicesForStore:(id)a3;
- (void)reindexAllSearchableItems;
- (void)reindexSearchableItemsWithIdentifiers:(id)a3;
- (void)stopCoreSpotlightDelegatesForStores:(id)a3;
- (void)validateIndexVersionWithCompletionHandler:(id)a3;
@end

@implementation RDCoreSpotlightDelegateManager

- (RDCoreSpotlightDelegateManager)initWithIsolated:(BOOL)a3 coordinator:(id)a4
{
  v7 = a4;
  v15.receiver = self;
  v15.super_class = RDCoreSpotlightDelegateManager;
  v8 = [(RDCoreSpotlightDelegateManager *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_enableCoreSpotlightIndexing = !a3;
    objc_storeStrong(&v8->_persistentStoreCoordinator, a4);
    *&v9->_isActivated = 0;
    v10 = +[NSMutableSet set];
    pendingReindexIdentifiers = v9->_pendingReindexIdentifiers;
    v9->_pendingReindexIdentifiers = v10;

    v12 = +[NSMutableSet set];
    earlyStoppedStoreIdentifiers = v9->_earlyStoppedStoreIdentifiers;
    v9->_earlyStoppedStoreIdentifiers = v12;
  }

  return v9;
}

- (void)validateIndexVersionWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(RDCoreSpotlightDelegateManager *)self enableCoreSpotlightIndexing])
  {
    [_TtC7remindd31RDCoreDataCoreSpotlightDelegate deleteAllIndicesIfVersionOutdatedWithCompletionHandler:v4];
  }

  else if (v4)
  {
    v4[2](v4, 0);
  }
}

- (void)createAndAttachCoreSpotlightDelegateForStoreWithDescription:(id)a3
{
  v4 = a3;
  v5 = [(RDCoreSpotlightDelegateManager *)self persistentStoreCoordinator];
  v6 = [v4 URL];
  v7 = [v5 persistentStoreForURL:v6];

  if (v7)
  {
    v8 = [[_TtC7remindd31RDCoreDataCoreSpotlightDelegate alloc] initForStoreWithDescription:v4 coordinator:v5];
    if ([(RDCoreSpotlightDelegateManager *)self isActivated])
    {
      [(RDCoreSpotlightDelegateManager *)self _startCoreSpotlightDelegate:v8 forStore:v7];
    }

    else
    {
      v9 = +[REMLogStore search];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = 138412802;
        v11 = v7;
        v12 = 2112;
        v13 = v5;
        v14 = 2112;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "CoreSpotlight delegates are not activated. Will delay starting delegates {store: %@, coordinator: %@, associatedDelegate: %@}", &v10, 0x20u);
      }

      [v7 setRd_associatedCoreSpotlightDelegate:v8];
    }
  }

  else
  {
    v8 = +[REMLogStore search];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not going to create CoreSpotlight delegate for store description because it doesn't exist in the PSC {coordinator: %@}", &v10, 0xCu);
    }
  }
}

- (void)deleteIndicesForStore:(id)a3
{
  v4 = a3;
  v5 = [(RDCoreSpotlightDelegateManager *)self persistentStoreCoordinator];
  objc_opt_class();
  v6 = [v4 coreSpotlightExporter];
  if (v6)
  {
    v7 = REMDynamicCast();
  }

  else
  {
    v8 = [v4 rd_associatedCoreSpotlightDelegate];
    v7 = REMDynamicCast();
  }

  if (!v7 && [(RDCoreSpotlightDelegateManager *)self enableCoreSpotlightIndexing])
  {
    v9 = +[REMLogStore search];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_10076C318();
    }
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000C9BB0;
  v12[3] = &unk_1008DC428;
  v13 = v4;
  v14 = v5;
  v10 = v5;
  v11 = v4;
  [v7 deleteAllIndicesWithCompletionHandler:v12];
}

- (void)activateCoreSpotlightDelegates
{
  v2 = self;
  if ([(RDCoreSpotlightDelegateManager *)self enableCoreSpotlightIndexing])
  {
    if ([(RDCoreSpotlightDelegateManager *)v2 isActivated])
    {
      v3 = +[REMLogStore search];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        sub_10076C458(v3);
      }

      goto LABEL_33;
    }

    v3 = [(RDCoreSpotlightDelegateManager *)v2 persistentStoreCoordinator];
    v4 = +[REMLogStore search];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Activating CoreSpotlight delegates {coordinator: %@}", buf, 0xCu);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v5 = [v3 persistentStores];
    v6 = [v5 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v30;
      *&v7 = 138412546;
      v27 = v7;
      v28 = v2;
      do
      {
        v10 = 0;
        do
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v29 + 1) + 8 * v10);
          objc_opt_class();
          v12 = [v11 rd_associatedCoreSpotlightDelegate];
          v13 = REMDynamicCast();

          [v11 setRd_associatedCoreSpotlightDelegate:0];
          if (!v13)
          {
            v15 = +[REMLogStore search];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = v27;
              v34 = v11;
              v35 = 2112;
              v36 = v3;
              _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "The store does not have an associated CoreSpotlight delegate. This is expected if (and only if) the store has been requested to be removed. {store: %@, coordinator: %@}", buf, 0x16u);
            }

            goto LABEL_20;
          }

          v14 = [v11 coreSpotlightExporter];

          if (v14)
          {
            v15 = +[REMLogStore search];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
            {
              [v11 coreSpotlightExporter];
              v17 = v16 = v3;
              *buf = 138413058;
              v34 = v11;
              v35 = 2112;
              v36 = v16;
              v37 = 2112;
              v38 = v17;
              v39 = 2112;
              v40 = v13;
              _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "The store already has an active CoreSpotlight delegate {store: %@, coordinator: %@, activeDelegate: %@, associatedDelegate: %@}", buf, 0x2Au);

              v3 = v16;
              v2 = v28;
            }

LABEL_20:

            goto LABEL_22;
          }

          [(RDCoreSpotlightDelegateManager *)v2 _startCoreSpotlightDelegate:v13 forStore:v11];
LABEL_22:

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v5 countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v8);
    }

    [(RDCoreSpotlightDelegateManager *)v2 setIsActivated:1];
    if ([(RDCoreSpotlightDelegateManager *)v2 pendingReindexAll])
    {
      v18 = +[REMLogStore search];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = v3;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Executing pending reindex all request {coordinator: %@}", buf, 0xCu);
      }

      [(RDCoreSpotlightDelegateManager *)v2 reindexAllSearchableItems];
    }

    else
    {
      v19 = [(RDCoreSpotlightDelegateManager *)v2 pendingReindexIdentifiers];
      v20 = [v19 count];

      if (v20)
      {
        v21 = +[REMLogStore search];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [(RDCoreSpotlightDelegateManager *)v2 pendingReindexIdentifiers];
          *buf = 138412546;
          v34 = v3;
          v35 = 2112;
          v36 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Executing pending reindex items request {coordinator: %@, identifiers: %@}", buf, 0x16u);
        }

        v23 = [(RDCoreSpotlightDelegateManager *)v2 pendingReindexIdentifiers];
        v24 = [v23 allObjects];
        [(RDCoreSpotlightDelegateManager *)v2 reindexSearchableItemsWithIdentifiers:v24];
      }
    }

    [(RDCoreSpotlightDelegateManager *)v2 setPendingReindexAll:0, v27];
    v25 = [(RDCoreSpotlightDelegateManager *)v2 pendingReindexIdentifiers];
    [v25 removeAllObjects];

    v26 = [(RDCoreSpotlightDelegateManager *)v2 earlyStoppedStoreIdentifiers];
    [v26 removeAllObjects];
  }

  else
  {
    v3 = +[REMLogStore search];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10076C414(v3);
    }
  }

LABEL_33:
}

- (void)stopCoreSpotlightDelegatesForStores:(id)a3
{
  v4 = a3;
  v23 = [(RDCoreSpotlightDelegateManager *)self persistentStoreCoordinator];
  v5 = +[REMLogStore search];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = v23;
    v31 = 2112;
    v32 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stopping CoreSpotlight delegates {coordinator: %@, stores: %@}", buf, 0x16u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v25;
    *&v8 = 138412546;
    v22 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        v13 = [(RDCoreSpotlightDelegateManager *)self isActivated];
        objc_opt_class();
        if (v13)
        {
          v14 = [v12 coreSpotlightExporter];
          v15 = REMDynamicCast();

          if (!v15)
          {
            v16 = +[REMLogStore search];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
            {
              *buf = v22;
              v30 = v12;
              v31 = 2112;
              v32 = v23;
              _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "The store does not have an active CoreSpotlight delegate {store: %@, coordinator: %@}", buf, 0x16u);
            }
          }

          [v15 stopSpotlightIndexing];
        }

        else
        {
          v17 = [v12 rd_associatedCoreSpotlightDelegate];
          v15 = REMDynamicCast();

          if (!v15)
          {
            v18 = +[REMLogStore search];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
            {
              *buf = v22;
              v30 = v12;
              v31 = 2112;
              v32 = v23;
              _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "The store does not have an associated CoreSpotlight delegate {store: %@, coordinator: %@}", buf, 0x16u);
            }
          }

          [v15 setShouldStart:0];
          v19 = [v12 identifier];

          if (v19)
          {
            v20 = [(RDCoreSpotlightDelegateManager *)self earlyStoppedStoreIdentifiers];
            v21 = [v12 identifier];
            [v20 addObject:v21];
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }
}

- (void)reindexAllSearchableItems
{
  v23 = [(RDCoreSpotlightDelegateManager *)self persistentStoreCoordinator];
  v2 = +[REMLogStore search];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v23;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received request to -reindexAllSearchableItems {coordinator: %@}", buf, 0xCu);
  }

  if ([(RDCoreSpotlightDelegateManager *)self isActivated])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v3 = [v23 persistentStores];
    v4 = [v3 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v27;
      p_name = &DebugPerformerMockDABabysittableAccount.name;
      *&v5 = 138412546;
      v22 = v5;
      do
      {
        v9 = 0;
        do
        {
          if (*v27 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v10 = *(*(&v26 + 1) + 8 * v9);
          objc_opt_class();
          v11 = [v10 coreSpotlightExporter];
          v12 = REMDynamicCast();

          if (v12)
          {
            [v12 reindexAllSearchableItemsWithAcknowledgementHandler:0];
          }

          else
          {
            v13 = [v10 identifier];
            if (!v13)
            {
              goto LABEL_13;
            }

            v14 = v13;
            v15 = [(RDCoreSpotlightDelegateManager *)self earlyStoppedStoreIdentifiers];
            [v10 identifier];
            v16 = v7;
            v17 = p_name;
            v19 = v18 = v3;
            v25 = [v15 containsObject:v19];

            v3 = v18;
            p_name = v17;
            v7 = v16;

            if ((v25 & 1) == 0)
            {
LABEL_13:
              v20 = +[REMLogStore search];
              if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
              {
                *buf = v22;
                v31 = v10;
                v32 = 2112;
                v33 = v23;
                _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "The store does not have an active CoreSpotlight delegate {store: %@, coordinator: %@}", buf, 0x16u);
              }
            }
          }

          v9 = v9 + 1;
        }

        while (v6 != v9);
        v6 = [v3 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v21 = +[REMLogStore search];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "The spotlight delegates are not activated yet. Going to defer reindexing all. {coordinator: %@}", buf, 0xCu);
    }

    [(RDCoreSpotlightDelegateManager *)self setPendingReindexAll:1];
  }
}

- (void)reindexSearchableItemsWithIdentifiers:(id)a3
{
  v4 = a3;
  v28 = self;
  v26 = [(RDCoreSpotlightDelegateManager *)self persistentStoreCoordinator];
  v5 = +[REMLogStore search];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v35 = v26;
    v36 = 2112;
    v37 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received request to -reindexSearchableItemsWithIdentifiers: {coordinator: %@, identifiers: %@}", buf, 0x16u);
  }

  if ([(RDCoreSpotlightDelegateManager *)self isActivated])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = [v26 persistentStores];
    v7 = [v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v30;
      *&v8 = 138412546;
      v25 = v8;
      v27 = *v30;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          objc_opt_class();
          v13 = [v12 coreSpotlightExporter];
          v14 = REMDynamicCast();

          if (v14)
          {
            [v14 reindexSearchableItemsWithIdentifiers:v4 acknowledgementHandler:0];
          }

          else
          {
            v15 = [v12 identifier];
            if (!v15)
            {
              goto LABEL_13;
            }

            v16 = v15;
            [(RDCoreSpotlightDelegateManager *)v28 earlyStoppedStoreIdentifiers];
            v17 = v6;
            v19 = v18 = v4;
            [v12 identifier];
            v21 = v20 = v9;
            v22 = [v19 containsObject:v21];

            v9 = v20;
            v4 = v18;
            v6 = v17;
            v10 = v27;

            if ((v22 & 1) == 0)
            {
LABEL_13:
              v23 = +[REMLogStore search];
              if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
              {
                *buf = v25;
                v35 = v12;
                v36 = 2112;
                v37 = v26;
                _os_log_fault_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "The store does not have an active CoreSpotlight delegate {store: %@, coordinator: %@}", buf, 0x16u);
              }
            }
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v24 = +[REMLogStore search];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "The spotlight delegates are not activated yet. Going to defer reindexing items. {coordinator: %@}", buf, 0xCu);
    }

    v6 = [(RDCoreSpotlightDelegateManager *)self pendingReindexIdentifiers];
    [v6 addObjectsFromArray:v4];
  }
}

- (void)_startCoreSpotlightDelegate:(id)a3 forStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 shouldStart])
  {
    v8 = [(RDCoreSpotlightDelegateManager *)self persistentStoreCoordinator];
    v9 = +[REMLogStore search];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 138412802;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Starting CoreSpotlight delegate {store: %@, coordinator: %@, delegate: %@}", &v12, 0x20u);
    }

    [v6 startSpotlightIndexing];
    v10 = [v7 coreSpotlightExporter];

    if (!v10)
    {
      v11 = +[REMLogStore search];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v12 = 138412802;
        v13 = v7;
        v14 = 2112;
        v15 = v8;
        v16 = 2112;
        v17 = v6;
        _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "The store still doesn't have active CoreSpotlight delegate after kicking start the associated delegate {store: %@, coordinator: %@, associatedDelegate: %@}", &v12, 0x20u);
      }
    }
  }
}

@end