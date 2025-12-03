@interface NEKSyncSession
- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error;
- (NEKSyncSession)init;
- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error;
- (void)dealloc;
- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion;
- (void)syncSession:(id)session didEndWithError:(id)error;
@end

@implementation NEKSyncSession

- (NEKSyncSession)init
{
  v3 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100073C3C(v3);
  }

  v7.receiver = self;
  v7.super_class = NEKSyncSession;
  v4 = [(NEKSyncSession *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_isFirst = 1;
    v4->_ct_logger = ct_green_tea_logger_create();
  }

  return v5;
}

- (void)dealloc
{
  ct_logger = self->_ct_logger;
  ct_green_tea_logger_destroy();
  v4.receiver = self;
  v4.super_class = NEKSyncSession;
  [(NEKSyncSession *)&v4 dealloc];
}

- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error
{
  sessionCopy = session;
  changesCopy = changes;
  selfCopy = self;
  if (self->_isFirst && +[NEKValidationWrapper validationEnabled])
  {
    self->_isFirst = 0;
    v8 = +[NEKValidationWrapper validationWrapperForRightNow];
    preSyncCensus = self->_preSyncCensus;
    self->_preSyncCensus = v8;
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_10004FD38;
  v48 = sub_10004FD48;
  v10 = [NEKChangeTracker alloc];
  identifier = [sessionCopy identifier];
  v49 = [(NEKChangeTracker *)v10 initForSessionAction:0 withSessionIdentifier:identifier];

  do
  {
    changeSupplier = [(NEKSyncSession *)selfCopy changeSupplier];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10004FD50;
    v38[3] = &unk_1000B5C28;
    v41 = &v50;
    v13 = changesCopy;
    v40 = v13;
    v38[4] = selfCopy;
    v42 = &v54;
    v43 = &v44;
    v14 = sessionCopy;
    v39 = v14;
    [changeSupplier conditionalPop:v38];
  }

  while (*(v51 + 24) != 1);
  if (v55[6] < 1)
  {
    changeSupplier2 = [(NEKSyncSession *)selfCopy changeSupplier];
    error = [changeSupplier2 error];

    if (error)
    {
      v18 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        identifier2 = [v14 identifier];
        changeSupplier3 = [(NEKSyncSession *)selfCopy changeSupplier];
        error2 = [changeSupplier3 error];
        *v58 = 138543618;
        v59 = identifier2;
        v60 = 2114;
        v61 = error2;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[Session: %{public}@] enqueueChanges finished pipe with error [%{public}@]", v58, 0x16u);
      }
    }

    else
    {
      changeSupplier4 = [(NEKSyncSession *)selfCopy changeSupplier];
      error3 = [changeSupplier4 error];
      if (error3)
      {
      }

      else
      {
        v26 = selfCopy->_preSyncCensus == 0;

        if (!v26)
        {
          v18 = [NEKValidationWrapper validationWrapperForSameSpan:selfCopy->_preSyncCensus];
          v27 = [v18 isEqual:selfCopy->_preSyncCensus];
          v28 = *(qword_1000D18A8 + 8);
          v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
          if (v27)
          {
            if (v29)
            {
              identifier3 = [v14 identifier];
              sub_100073D3C(identifier3, v58, v28);
            }

            (*(v13 + 2))(v13, v18);
          }

          else
          {
            if (v29)
            {
              identifier4 = [v14 identifier];
              sub_100073CE4(identifier4, v58, v28);
            }
          }

          goto LABEL_11;
        }
      }

      v18 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        identifier5 = [v14 identifier];
        *v58 = 138543362;
        v59 = identifier5;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[Session: %{public}@] enqueueChanges finished pipe without error", v58, 0xCu);
      }
    }

LABEL_11:

    v15 = 2;
    goto LABEL_12;
  }

  [v45[5] logChanges];
  v15 = 1;
LABEL_12:
  ct_logger = selfCopy->_ct_logger;
  v20 = getCTGreenTeaOsLogHandle();
  v21 = v20;
  if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Sending events", buf, 2u);
  }

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);

  return v15;
}

- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion
{
  sessionCopy = session;
  changesCopy = changes;
  completionCopy = completion;
  selfCopy = self;
  if (self->_isFirst)
  {
    self->_isFirst = 0;
  }

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"internal_disableSync", @"com.apple.EventKitSync", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat && AppBooleanValue)
  {
    v11 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      identifier = [sessionCopy identifier];
      *buf = 138543362;
      v69 = identifier;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Session: %{public}@] applyChanges ignoring changes, sync is disabled", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 1, 0);
    goto LABEL_40;
  }

  v52 = completionCopy;
  v14 = [NEKChangeTracker alloc];
  identifier2 = [sessionCopy identifier];
  v16 = [(NEKChangeTracker *)v14 initForSessionAction:1 withSessionIdentifier:identifier2];

  context = objc_autoreleasePoolPush();
  v17 = [NEKStoreRoller alloc];
  environment = [(NEKSyncSession *)selfCopy environment];
  syncController = [environment syncController];
  eventStore = [syncController eventStore];
  v21 = [(NEKStoreRoller *)v17 initWithEventStore:eventStore cause:@"syncSession:applyChanges:(events)"];

  environment2 = [(NEKSyncSession *)selfCopy environment];
  syncController2 = [environment2 syncController];
  reminderStore = [syncController2 reminderStore];
  v55 = [reminderStore freshEventStoreFor:@"syncSession:applyChanges:(reminders)"];

  v54 = [[NSMutableArray alloc] initWithCapacity:10];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v53 = changesCopy;
  obj = changesCopy;
  v25 = [obj countByEnumeratingWithState:&v59 objects:v72 count:16];
  if (!v25)
  {
    goto LABEL_35;
  }

  v26 = v25;
  v27 = *v60;
  do
  {
    v28 = 0;
    do
    {
      if (*v60 != v27)
      {
        objc_enumerationMutation(obj);
      }

      v29 = *(*(&v59 + 1) + 8 * v28);
      v30 = objc_autoreleasePoolPush();
      [v16 recordChange:v29];
      someStore = [(NEKStoreRoller *)v21 someStore];
      if ([SYDegenerateChange isDegenerate:v29])
      {
        v32 = *(qword_1000D18A8 + 8);
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        environment3 = v32;
        identifier3 = [sessionCopy identifier];
        v35 = [v29 description];
        *buf = 138543618;
        v69 = identifier3;
        v70 = 2112;
        v71 = v35;
        _os_log_error_impl(&_mh_execute_header, environment3, OS_LOG_TYPE_ERROR, "[Session: %{public}@] applyChanges failed to deserialize [%@]", buf, 0x16u);
LABEL_23:

LABEL_24:
        goto LABEL_25;
      }

      if ([v29 changeType] == 3)
      {
        environment3 = [(NEKSyncSession *)selfCopy environment];
        identifier3 = [environment3 syncController];
        [identifier3 deleteSYObject:v29 eventStore:someStore reminderStore:v55 session:sessionCopy];
        goto LABEL_24;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        environment3 = [(NEKSyncSession *)selfCopy environment];
        identifier3 = [environment3 syncController];
        v67 = v29;
        v36 = &v67;
LABEL_22:
        v35 = [NSArray arrayWithObjects:v36 count:1];
        [identifier3 createOrUpdateSYObject:v35 eventStore:someStore reminderStore:v55 session:sessionCopy];
        goto LABEL_23;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        environment3 = [(NEKSyncSession *)selfCopy environment];
        identifier3 = [environment3 syncController];
        v66 = v29;
        v36 = &v66;
        goto LABEL_22;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v54 addObject:v29];
        if ([v54 count] == 10)
        {
          v37 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            sub_100073E3C(v64, v37, sessionCopy, &v65);
          }

          environment4 = [(NEKSyncSession *)selfCopy environment];
          syncController3 = [environment4 syncController];
          [syncController3 createOrUpdateSYObject:v54 eventStore:someStore reminderStore:v55 session:sessionCopy];

          [v54 removeAllObjects];
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(NEKSyncSession *)selfCopy setValidationObject:v29];
        }
      }

LABEL_25:

      objc_autoreleasePoolPop(v30);
      v28 = v28 + 1;
    }

    while (v26 != v28);
    v40 = [obj countByEnumeratingWithState:&v59 objects:v72 count:16];
    v26 = v40;
  }

  while (v40);
LABEL_35:

  someStore2 = [(NEKStoreRoller *)v21 someStore];
  if ([v54 count])
  {
    v42 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      sub_100073EC0(v42, sessionCopy, v54);
    }

    environment5 = [(NEKSyncSession *)selfCopy environment];
    syncController4 = [environment5 syncController];
    [syncController4 createOrUpdateSYObject:v54 eventStore:someStore2 reminderStore:v55 session:sessionCopy];

    [v54 removeAllObjects];
  }

  environment6 = [(NEKSyncSession *)selfCopy environment];
  syncController5 = [environment6 syncController];
  eventStore2 = [syncController5 eventStore];
  [eventStore2 saveEventStore:someStore2];

  environment7 = [(NEKSyncSession *)selfCopy environment];
  syncController6 = [environment7 syncController];
  reminderStore2 = [syncController6 reminderStore];
  [reminderStore2 saveEventStore:v55];

  objc_autoreleasePoolPop(context);
  [v16 logChanges];
  completionCopy = v52;
  v52[2](v52, 1, 0);

  changesCopy = v53;
LABEL_40:
}

- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error
{
  sessionCopy = session;
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"internal_disableSync", @"com.apple.EventKitSync", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v7 = AppBooleanValue == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    environment = [(NEKSyncSession *)self environment];
    syncController = [environment syncController];
    [syncController prepDatabasesForResetSync];
LABEL_9:

    goto LABEL_10;
  }

  v10 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    environment = v10;
    syncController = [sessionCopy identifier];
    *buf = 138543362;
    v15 = syncController;
    _os_log_impl(&_mh_execute_header, environment, OS_LOG_TYPE_DEFAULT, "[Session: %{public}@] resetDataStore ignoring reset request, sync is disabled", buf, 0xCu);
    goto LABEL_9;
  }

LABEL_10:

  return 1;
}

- (void)syncSession:(id)session didEndWithError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:SYErrorDomain];

  if (v6)
  {
    v7 = [errorCopy code] != 2023;
  }

  else
  {
    v7 = 1;
  }

  progressLiar = [(NEKSyncSession *)self progressLiar];
  [progressLiar doneForRealNotifyingPairedSync:v7];

  [(NEKSyncSession *)self setProgressLiar:0];
}

@end