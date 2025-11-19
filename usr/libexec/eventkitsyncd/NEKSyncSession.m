@interface NEKSyncSession
- (BOOL)syncSession:(id)a3 resetDataStoreWithError:(id *)a4;
- (NEKSyncSession)init;
- (unsigned)syncSession:(id)a3 enqueueChanges:(id)a4 error:(id *)a5;
- (void)dealloc;
- (void)syncSession:(id)a3 applyChanges:(id)a4 completion:(id)a5;
- (void)syncSession:(id)a3 didEndWithError:(id)a4;
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

- (unsigned)syncSession:(id)a3 enqueueChanges:(id)a4 error:(id *)a5
{
  v7 = a3;
  v35 = a4;
  v36 = self;
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
  v11 = [v7 identifier];
  v49 = [(NEKChangeTracker *)v10 initForSessionAction:0 withSessionIdentifier:v11];

  do
  {
    v12 = [(NEKSyncSession *)v36 changeSupplier];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10004FD50;
    v38[3] = &unk_1000B5C28;
    v41 = &v50;
    v13 = v35;
    v40 = v13;
    v38[4] = v36;
    v42 = &v54;
    v43 = &v44;
    v14 = v7;
    v39 = v14;
    [v12 conditionalPop:v38];
  }

  while (*(v51 + 24) != 1);
  if (v55[6] < 1)
  {
    v16 = [(NEKSyncSession *)v36 changeSupplier];
    v17 = [v16 error];

    if (v17)
    {
      v18 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v32 = [v14 identifier];
        v33 = [(NEKSyncSession *)v36 changeSupplier];
        v34 = [v33 error];
        *v58 = 138543618;
        v59 = v32;
        v60 = 2114;
        v61 = v34;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[Session: %{public}@] enqueueChanges finished pipe with error [%{public}@]", v58, 0x16u);
      }
    }

    else
    {
      v23 = [(NEKSyncSession *)v36 changeSupplier];
      v24 = [v23 error];
      if (v24)
      {
      }

      else
      {
        v26 = v36->_preSyncCensus == 0;

        if (!v26)
        {
          v18 = [NEKValidationWrapper validationWrapperForSameSpan:v36->_preSyncCensus];
          v27 = [v18 isEqual:v36->_preSyncCensus];
          v28 = *(qword_1000D18A8 + 8);
          v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
          if (v27)
          {
            if (v29)
            {
              v30 = [v14 identifier];
              sub_100073D3C(v30, v58, v28);
            }

            (*(v13 + 2))(v13, v18);
          }

          else
          {
            if (v29)
            {
              v31 = [v14 identifier];
              sub_100073CE4(v31, v58, v28);
            }
          }

          goto LABEL_11;
        }
      }

      v18 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v14 identifier];
        *v58 = 138543362;
        v59 = v25;
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
  ct_logger = v36->_ct_logger;
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

- (void)syncSession:(id)a3 applyChanges:(id)a4 completion:(id)a5
{
  v57 = a3;
  v8 = a4;
  v9 = a5;
  v56 = self;
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
      v13 = [v57 identifier];
      *buf = 138543362;
      v69 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Session: %{public}@] applyChanges ignoring changes, sync is disabled", buf, 0xCu);
    }

    v9[2](v9, 1, 0);
    goto LABEL_40;
  }

  v52 = v9;
  v14 = [NEKChangeTracker alloc];
  v15 = [v57 identifier];
  v16 = [(NEKChangeTracker *)v14 initForSessionAction:1 withSessionIdentifier:v15];

  context = objc_autoreleasePoolPush();
  v17 = [NEKStoreRoller alloc];
  v18 = [(NEKSyncSession *)v56 environment];
  v19 = [v18 syncController];
  v20 = [v19 eventStore];
  v21 = [(NEKStoreRoller *)v17 initWithEventStore:v20 cause:@"syncSession:applyChanges:(events)"];

  v22 = [(NEKSyncSession *)v56 environment];
  v23 = [v22 syncController];
  v24 = [v23 reminderStore];
  v55 = [v24 freshEventStoreFor:@"syncSession:applyChanges:(reminders)"];

  v54 = [[NSMutableArray alloc] initWithCapacity:10];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v53 = v8;
  obj = v8;
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
      v31 = [(NEKStoreRoller *)v21 someStore];
      if ([SYDegenerateChange isDegenerate:v29])
      {
        v32 = *(qword_1000D18A8 + 8);
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        v33 = v32;
        v34 = [v57 identifier];
        v35 = [v29 description];
        *buf = 138543618;
        v69 = v34;
        v70 = 2112;
        v71 = v35;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "[Session: %{public}@] applyChanges failed to deserialize [%@]", buf, 0x16u);
LABEL_23:

LABEL_24:
        goto LABEL_25;
      }

      if ([v29 changeType] == 3)
      {
        v33 = [(NEKSyncSession *)v56 environment];
        v34 = [v33 syncController];
        [v34 deleteSYObject:v29 eventStore:v31 reminderStore:v55 session:v57];
        goto LABEL_24;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = [(NEKSyncSession *)v56 environment];
        v34 = [v33 syncController];
        v67 = v29;
        v36 = &v67;
LABEL_22:
        v35 = [NSArray arrayWithObjects:v36 count:1];
        [v34 createOrUpdateSYObject:v35 eventStore:v31 reminderStore:v55 session:v57];
        goto LABEL_23;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = [(NEKSyncSession *)v56 environment];
        v34 = [v33 syncController];
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
            sub_100073E3C(v64, v37, v57, &v65);
          }

          v38 = [(NEKSyncSession *)v56 environment];
          v39 = [v38 syncController];
          [v39 createOrUpdateSYObject:v54 eventStore:v31 reminderStore:v55 session:v57];

          [v54 removeAllObjects];
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(NEKSyncSession *)v56 setValidationObject:v29];
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

  v41 = [(NEKStoreRoller *)v21 someStore];
  if ([v54 count])
  {
    v42 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      sub_100073EC0(v42, v57, v54);
    }

    v43 = [(NEKSyncSession *)v56 environment];
    v44 = [v43 syncController];
    [v44 createOrUpdateSYObject:v54 eventStore:v41 reminderStore:v55 session:v57];

    [v54 removeAllObjects];
  }

  v45 = [(NEKSyncSession *)v56 environment];
  v46 = [v45 syncController];
  v47 = [v46 eventStore];
  [v47 saveEventStore:v41];

  v48 = [(NEKSyncSession *)v56 environment];
  v49 = [v48 syncController];
  v50 = [v49 reminderStore];
  [v50 saveEventStore:v55];

  objc_autoreleasePoolPop(context);
  [v16 logChanges];
  v9 = v52;
  v52[2](v52, 1, 0);

  v8 = v53;
LABEL_40:
}

- (BOOL)syncSession:(id)a3 resetDataStoreWithError:(id *)a4
{
  v5 = a3;
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
    v8 = [(NEKSyncSession *)self environment];
    v9 = [v8 syncController];
    [v9 prepDatabasesForResetSync];
LABEL_9:

    goto LABEL_10;
  }

  v10 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v10;
    v9 = [v5 identifier];
    *buf = 138543362;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Session: %{public}@] resetDataStore ignoring reset request, sync is disabled", buf, 0xCu);
    goto LABEL_9;
  }

LABEL_10:

  return 1;
}

- (void)syncSession:(id)a3 didEndWithError:(id)a4
{
  v9 = a4;
  v5 = [v9 domain];
  v6 = [v5 isEqualToString:SYErrorDomain];

  if (v6)
  {
    v7 = [v9 code] != 2023;
  }

  else
  {
    v7 = 1;
  }

  v8 = [(NEKSyncSession *)self progressLiar];
  [v8 doneForRealNotifyingPairedSync:v7];

  [(NEKSyncSession *)self setProgressLiar:0];
}

@end