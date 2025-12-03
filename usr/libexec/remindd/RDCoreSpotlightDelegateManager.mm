@interface RDCoreSpotlightDelegateManager
- (RDCoreSpotlightDelegateManager)initWithIsolated:(BOOL)isolated coordinator:(id)coordinator;
- (void)_startCoreSpotlightDelegate:(id)delegate forStore:(id)store;
- (void)activateCoreSpotlightDelegates;
- (void)createAndAttachCoreSpotlightDelegateForStoreWithDescription:(id)description;
- (void)deleteIndicesForStore:(id)store;
- (void)reindexAllSearchableItems;
- (void)reindexSearchableItemsWithIdentifiers:(id)identifiers;
- (void)stopCoreSpotlightDelegatesForStores:(id)stores;
- (void)validateIndexVersionWithCompletionHandler:(id)handler;
@end

@implementation RDCoreSpotlightDelegateManager

- (RDCoreSpotlightDelegateManager)initWithIsolated:(BOOL)isolated coordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v15.receiver = self;
  v15.super_class = RDCoreSpotlightDelegateManager;
  v8 = [(RDCoreSpotlightDelegateManager *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_enableCoreSpotlightIndexing = !isolated;
    objc_storeStrong(&v8->_persistentStoreCoordinator, coordinator);
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

- (void)validateIndexVersionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(RDCoreSpotlightDelegateManager *)self enableCoreSpotlightIndexing])
  {
    [_TtC7remindd31RDCoreDataCoreSpotlightDelegate deleteAllIndicesIfVersionOutdatedWithCompletionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)createAndAttachCoreSpotlightDelegateForStoreWithDescription:(id)description
{
  descriptionCopy = description;
  persistentStoreCoordinator = [(RDCoreSpotlightDelegateManager *)self persistentStoreCoordinator];
  v6 = [descriptionCopy URL];
  v7 = [persistentStoreCoordinator persistentStoreForURL:v6];

  if (v7)
  {
    v8 = [[_TtC7remindd31RDCoreDataCoreSpotlightDelegate alloc] initForStoreWithDescription:descriptionCopy coordinator:persistentStoreCoordinator];
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
        v13 = persistentStoreCoordinator;
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
      v11 = persistentStoreCoordinator;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not going to create CoreSpotlight delegate for store description because it doesn't exist in the PSC {coordinator: %@}", &v10, 0xCu);
    }
  }
}

- (void)deleteIndicesForStore:(id)store
{
  storeCopy = store;
  persistentStoreCoordinator = [(RDCoreSpotlightDelegateManager *)self persistentStoreCoordinator];
  objc_opt_class();
  coreSpotlightExporter = [storeCopy coreSpotlightExporter];
  if (coreSpotlightExporter)
  {
    v7 = REMDynamicCast();
  }

  else
  {
    rd_associatedCoreSpotlightDelegate = [storeCopy rd_associatedCoreSpotlightDelegate];
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
  v13 = storeCopy;
  v14 = persistentStoreCoordinator;
  v10 = persistentStoreCoordinator;
  v11 = storeCopy;
  [v7 deleteAllIndicesWithCompletionHandler:v12];
}

- (void)activateCoreSpotlightDelegates
{
  selfCopy = self;
  if ([(RDCoreSpotlightDelegateManager *)self enableCoreSpotlightIndexing])
  {
    if ([(RDCoreSpotlightDelegateManager *)selfCopy isActivated])
    {
      persistentStoreCoordinator = +[REMLogStore search];
      if (os_log_type_enabled(persistentStoreCoordinator, OS_LOG_TYPE_FAULT))
      {
        sub_10076C458(persistentStoreCoordinator);
      }

      goto LABEL_33;
    }

    persistentStoreCoordinator = [(RDCoreSpotlightDelegateManager *)selfCopy persistentStoreCoordinator];
    v4 = +[REMLogStore search];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = persistentStoreCoordinator;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Activating CoreSpotlight delegates {coordinator: %@}", buf, 0xCu);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    persistentStores = [persistentStoreCoordinator persistentStores];
    v6 = [persistentStores countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v30;
      *&v7 = 138412546;
      v27 = v7;
      v28 = selfCopy;
      do
      {
        v10 = 0;
        do
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(persistentStores);
          }

          v11 = *(*(&v29 + 1) + 8 * v10);
          objc_opt_class();
          rd_associatedCoreSpotlightDelegate = [v11 rd_associatedCoreSpotlightDelegate];
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
              v36 = persistentStoreCoordinator;
              _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "The store does not have an associated CoreSpotlight delegate. This is expected if (and only if) the store has been requested to be removed. {store: %@, coordinator: %@}", buf, 0x16u);
            }

            goto LABEL_20;
          }

          coreSpotlightExporter = [v11 coreSpotlightExporter];

          if (coreSpotlightExporter)
          {
            v15 = +[REMLogStore search];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
            {
              [v11 coreSpotlightExporter];
              v17 = v16 = persistentStoreCoordinator;
              *buf = 138413058;
              v34 = v11;
              v35 = 2112;
              v36 = v16;
              v37 = 2112;
              v38 = v17;
              v39 = 2112;
              v40 = v13;
              _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "The store already has an active CoreSpotlight delegate {store: %@, coordinator: %@, activeDelegate: %@, associatedDelegate: %@}", buf, 0x2Au);

              persistentStoreCoordinator = v16;
              selfCopy = v28;
            }

LABEL_20:

            goto LABEL_22;
          }

          [(RDCoreSpotlightDelegateManager *)selfCopy _startCoreSpotlightDelegate:v13 forStore:v11];
LABEL_22:

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [persistentStores countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v8);
    }

    [(RDCoreSpotlightDelegateManager *)selfCopy setIsActivated:1];
    if ([(RDCoreSpotlightDelegateManager *)selfCopy pendingReindexAll])
    {
      v18 = +[REMLogStore search];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = persistentStoreCoordinator;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Executing pending reindex all request {coordinator: %@}", buf, 0xCu);
      }

      [(RDCoreSpotlightDelegateManager *)selfCopy reindexAllSearchableItems];
    }

    else
    {
      pendingReindexIdentifiers = [(RDCoreSpotlightDelegateManager *)selfCopy pendingReindexIdentifiers];
      v20 = [pendingReindexIdentifiers count];

      if (v20)
      {
        v21 = +[REMLogStore search];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          pendingReindexIdentifiers2 = [(RDCoreSpotlightDelegateManager *)selfCopy pendingReindexIdentifiers];
          *buf = 138412546;
          v34 = persistentStoreCoordinator;
          v35 = 2112;
          v36 = pendingReindexIdentifiers2;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Executing pending reindex items request {coordinator: %@, identifiers: %@}", buf, 0x16u);
        }

        pendingReindexIdentifiers3 = [(RDCoreSpotlightDelegateManager *)selfCopy pendingReindexIdentifiers];
        allObjects = [pendingReindexIdentifiers3 allObjects];
        [(RDCoreSpotlightDelegateManager *)selfCopy reindexSearchableItemsWithIdentifiers:allObjects];
      }
    }

    [(RDCoreSpotlightDelegateManager *)selfCopy setPendingReindexAll:0, v27];
    pendingReindexIdentifiers4 = [(RDCoreSpotlightDelegateManager *)selfCopy pendingReindexIdentifiers];
    [pendingReindexIdentifiers4 removeAllObjects];

    earlyStoppedStoreIdentifiers = [(RDCoreSpotlightDelegateManager *)selfCopy earlyStoppedStoreIdentifiers];
    [earlyStoppedStoreIdentifiers removeAllObjects];
  }

  else
  {
    persistentStoreCoordinator = +[REMLogStore search];
    if (os_log_type_enabled(persistentStoreCoordinator, OS_LOG_TYPE_ERROR))
    {
      sub_10076C414(persistentStoreCoordinator);
    }
  }

LABEL_33:
}

- (void)stopCoreSpotlightDelegatesForStores:(id)stores
{
  storesCopy = stores;
  persistentStoreCoordinator = [(RDCoreSpotlightDelegateManager *)self persistentStoreCoordinator];
  v5 = +[REMLogStore search];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = persistentStoreCoordinator;
    v31 = 2112;
    v32 = storesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stopping CoreSpotlight delegates {coordinator: %@, stores: %@}", buf, 0x16u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = storesCopy;
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
        isActivated = [(RDCoreSpotlightDelegateManager *)self isActivated];
        objc_opt_class();
        if (isActivated)
        {
          coreSpotlightExporter = [v12 coreSpotlightExporter];
          v15 = REMDynamicCast();

          if (!v15)
          {
            v16 = +[REMLogStore search];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
            {
              *buf = v22;
              v30 = v12;
              v31 = 2112;
              v32 = persistentStoreCoordinator;
              _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "The store does not have an active CoreSpotlight delegate {store: %@, coordinator: %@}", buf, 0x16u);
            }
          }

          [v15 stopSpotlightIndexing];
        }

        else
        {
          rd_associatedCoreSpotlightDelegate = [v12 rd_associatedCoreSpotlightDelegate];
          v15 = REMDynamicCast();

          if (!v15)
          {
            v18 = +[REMLogStore search];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
            {
              *buf = v22;
              v30 = v12;
              v31 = 2112;
              v32 = persistentStoreCoordinator;
              _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "The store does not have an associated CoreSpotlight delegate {store: %@, coordinator: %@}", buf, 0x16u);
            }
          }

          [v15 setShouldStart:0];
          identifier = [v12 identifier];

          if (identifier)
          {
            earlyStoppedStoreIdentifiers = [(RDCoreSpotlightDelegateManager *)self earlyStoppedStoreIdentifiers];
            identifier2 = [v12 identifier];
            [earlyStoppedStoreIdentifiers addObject:identifier2];
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
  persistentStoreCoordinator = [(RDCoreSpotlightDelegateManager *)self persistentStoreCoordinator];
  v2 = +[REMLogStore search];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = persistentStoreCoordinator;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received request to -reindexAllSearchableItems {coordinator: %@}", buf, 0xCu);
  }

  if ([(RDCoreSpotlightDelegateManager *)self isActivated])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    persistentStores = [persistentStoreCoordinator persistentStores];
    v4 = [persistentStores countByEnumeratingWithState:&v26 objects:v34 count:16];
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
            objc_enumerationMutation(persistentStores);
          }

          v10 = *(*(&v26 + 1) + 8 * v9);
          objc_opt_class();
          coreSpotlightExporter = [v10 coreSpotlightExporter];
          v12 = REMDynamicCast();

          if (v12)
          {
            [v12 reindexAllSearchableItemsWithAcknowledgementHandler:0];
          }

          else
          {
            identifier = [v10 identifier];
            if (!identifier)
            {
              goto LABEL_13;
            }

            v14 = identifier;
            earlyStoppedStoreIdentifiers = [(RDCoreSpotlightDelegateManager *)self earlyStoppedStoreIdentifiers];
            [v10 identifier];
            v16 = v7;
            v17 = p_name;
            v19 = v18 = persistentStores;
            v25 = [earlyStoppedStoreIdentifiers containsObject:v19];

            persistentStores = v18;
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
                v33 = persistentStoreCoordinator;
                _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "The store does not have an active CoreSpotlight delegate {store: %@, coordinator: %@}", buf, 0x16u);
              }
            }
          }

          v9 = v9 + 1;
        }

        while (v6 != v9);
        v6 = [persistentStores countByEnumeratingWithState:&v26 objects:v34 count:16];
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
      v31 = persistentStoreCoordinator;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "The spotlight delegates are not activated yet. Going to defer reindexing all. {coordinator: %@}", buf, 0xCu);
    }

    [(RDCoreSpotlightDelegateManager *)self setPendingReindexAll:1];
  }
}

- (void)reindexSearchableItemsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  selfCopy = self;
  persistentStoreCoordinator = [(RDCoreSpotlightDelegateManager *)self persistentStoreCoordinator];
  v5 = +[REMLogStore search];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v35 = persistentStoreCoordinator;
    v36 = 2112;
    v37 = identifiersCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received request to -reindexSearchableItemsWithIdentifiers: {coordinator: %@, identifiers: %@}", buf, 0x16u);
  }

  if ([(RDCoreSpotlightDelegateManager *)self isActivated])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    persistentStores = [persistentStoreCoordinator persistentStores];
    v7 = [persistentStores countByEnumeratingWithState:&v29 objects:v33 count:16];
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
            objc_enumerationMutation(persistentStores);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          objc_opt_class();
          coreSpotlightExporter = [v12 coreSpotlightExporter];
          v14 = REMDynamicCast();

          if (v14)
          {
            [v14 reindexSearchableItemsWithIdentifiers:identifiersCopy acknowledgementHandler:0];
          }

          else
          {
            identifier = [v12 identifier];
            if (!identifier)
            {
              goto LABEL_13;
            }

            v16 = identifier;
            [(RDCoreSpotlightDelegateManager *)selfCopy earlyStoppedStoreIdentifiers];
            v17 = persistentStores;
            v19 = v18 = identifiersCopy;
            [v12 identifier];
            v21 = v20 = v9;
            v22 = [v19 containsObject:v21];

            v9 = v20;
            identifiersCopy = v18;
            persistentStores = v17;
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
                v37 = persistentStoreCoordinator;
                _os_log_fault_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "The store does not have an active CoreSpotlight delegate {store: %@, coordinator: %@}", buf, 0x16u);
              }
            }
          }
        }

        v9 = [persistentStores countByEnumeratingWithState:&v29 objects:v33 count:16];
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
      v35 = persistentStoreCoordinator;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "The spotlight delegates are not activated yet. Going to defer reindexing items. {coordinator: %@}", buf, 0xCu);
    }

    persistentStores = [(RDCoreSpotlightDelegateManager *)self pendingReindexIdentifiers];
    [persistentStores addObjectsFromArray:identifiersCopy];
  }
}

- (void)_startCoreSpotlightDelegate:(id)delegate forStore:(id)store
{
  delegateCopy = delegate;
  storeCopy = store;
  if ([delegateCopy shouldStart])
  {
    persistentStoreCoordinator = [(RDCoreSpotlightDelegateManager *)self persistentStoreCoordinator];
    v9 = +[REMLogStore search];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 138412802;
      v13 = storeCopy;
      v14 = 2112;
      v15 = persistentStoreCoordinator;
      v16 = 2112;
      v17 = delegateCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Starting CoreSpotlight delegate {store: %@, coordinator: %@, delegate: %@}", &v12, 0x20u);
    }

    [delegateCopy startSpotlightIndexing];
    coreSpotlightExporter = [storeCopy coreSpotlightExporter];

    if (!coreSpotlightExporter)
    {
      v11 = +[REMLogStore search];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v12 = 138412802;
        v13 = storeCopy;
        v14 = 2112;
        v15 = persistentStoreCoordinator;
        v16 = 2112;
        v17 = delegateCopy;
        _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "The store still doesn't have active CoreSpotlight delegate after kicking start the associated delegate {store: %@, coordinator: %@, associatedDelegate: %@}", &v12, 0x20u);
      }
    }
  }
}

@end