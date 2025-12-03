@interface NDTaskStorageDB
+ (id)_preset_unarchiveObjectWithData:(id)data;
+ (id)nsurlsessiondPath;
+ (void)removeItemAtPath:(id)path;
- (BOOL)_createDBSchemaForPath:(id)path;
- (BOOL)_onqueue_initDB;
- (BOOL)handleSchemaVersionChange;
- (BOOL)migrateSchemaToLatestVersion:(int64_t)version;
- (id)_getAllBundleIDsFromSessionTasks;
- (id)_getAllSessionIDsForBundle:(id)bundle;
- (id)_getAllTasksFromDBForSession:(id)session sessionUUID:(id)d;
- (id)_getConfigurationForBundleID:(id)d sessionID:(id)iD;
- (id)_getOptionsForBundleID:(id)d sessionID:(id)iD;
- (id)_initDB:(id)b;
- (id)_onqueue_convertSqlRowToTaskInfoEntry:(sqlite3_stmt *)entry;
- (id)_onqueue_getAllBundleIDsFromSessionTasks;
- (id)_onqueue_getAllSessionIDsForBundle:(id)bundle;
- (id)_onqueue_getConfigurationForBundleID:(id)d sessionID:(id)iD;
- (id)_onqueue_getOptionsForBundleID:(id)d sessionID:(id)iD;
- (id)_sqlBlobHelper:(sqlite3_stmt *)helper forColumn:(int)column;
- (void)_beginSqliteTransaction;
- (void)_cleanupDB;
- (void)_commitSqliteTransaction;
- (void)_deleteAllDataInDB;
- (void)_deleteAllSessionsForBundleID:(id)d;
- (void)_deleteAllTaskEntriesForSession:(id)session sessionUUID:(id)d;
- (void)_deleteSessionForBundleID:(id)d sessionID:(id)iD;
- (void)_deleteTaskEntriesWithIdentifiers:(id)identifiers forSession:(id)session sessionUUID:(id)d;
- (void)_onqueue_deleteAllSessionsForBundleID:(id)d;
- (void)_onqueue_deleteAllTaskEntriesForSession:(id)session sessionUUID:(id)d;
- (void)_onqueue_deleteEntryForTask:(unint64_t)task forSession:(id)session sessionUUID:(id)d;
- (void)_onqueue_deleteSessionForBundleID:(id)d sessionID:(id)iD;
- (void)_onqueue_garbageCollect;
- (void)_onqueue_insertOrUpdateAllEntriesForTask:(id)task sessionUUID:(id)d;
- (void)_onqueue_updateBytesPerSecondLimitForTask:(id)task sessionUUID:(id)d;
- (void)_onqueue_updateConfigurationForBundleID:(id)d sessionID:(id)iD with:(id)with;
- (void)_onqueue_updateConfigurationForBundleID:(id)d sessionID:(id)iD withData:(id)data;
- (void)_onqueue_updateCurrentRequestForTask:(id)task sessionUUID:(id)d;
- (void)_onqueue_updateDownloadFileURLForTask:(id)task sessionUUID:(id)d;
- (void)_onqueue_updateExpectedProgressTargetForTask:(id)task sessionUUID:(id)d;
- (void)_onqueue_updateLoadingPriorityForTask:(id)task sessionUUID:(id)d;
- (void)_onqueue_updateOptionsForBundleID:(id)d sessionID:(id)iD with:(id)with;
- (void)_onqueue_updateOptionsForBundleID:(id)d sessionID:(id)iD withData:(id)data;
- (void)_onqueue_updateRespondedToWillBeginDelayedRequestCallbackForTask:(id)task sessionUUID:(id)d;
- (void)_onqueue_updateResponseForTask:(id)task sessionUUID:(id)d;
- (void)_onqueue_updateResumableUploadDataForTask:(id)task sessionUUID:(id)d;
- (void)_onqueue_updateSetPriorityEntriesForTask:(id)task sessionUUID:(id)d;
- (void)_onqueue_updateShouldCancelOnDisconnectForTask:(id)task sessionUUID:(id)d;
- (void)_onqueue_updateSuspendPathEntriesForTask:(id)task sessionUUID:(id)d;
- (void)_onqueue_updateTLSSupportedProtocolVersionForTask:(id)task sessionUUID:(id)d;
- (void)_onqueue_updateTaskDescriptionForTask:(id)task sessionUUID:(id)d;
- (void)_updateConfigurationForBundleID:(id)d sessionID:(id)iD with:(id)with;
- (void)_updateDBEntriesForTasksInSession:(id)session taskInfos:(id)infos updates:(id)updates;
- (void)_updateDBEntryForTask:(id)task updateType:(unint64_t)type sessionUUID:(id)d;
- (void)_updateOptionsForBundleID:(id)d sessionID:(id)iD with:(id)with;
@end

@implementation NDTaskStorageDB

- (void)_commitSqliteTransaction
{
  errmsg = 0;
  if (sqlite3_exec(self->_dbConnection, "COMMIT TRANSACTION", 0, 0, &errmsg))
  {
    v2 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v5 = errmsg;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Error committing sqlite transaction: %s", buf, 0xCu);
    }
  }
}

- (void)_beginSqliteTransaction
{
  errmsg = 0;
  if (sqlite3_exec(self->_dbConnection, "BEGIN TRANSACTION", 0, 0, &errmsg))
  {
    v2 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v5 = errmsg;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Error beginning sqlite transaction: %s", buf, 0xCu);
    }
  }
}

- (void)_onqueue_updateOptionsForBundleID:(id)d sessionID:(id)iD withData:(id)data
{
  dCopy = d;
  iDCopy = iD;
  dataCopy = data;
  v11 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
  {
    v33 = 138543618;
    v34 = dCopy;
    v35 = 2112;
    v36 = iDCopy;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "_updateOptionsForBundleID: %{public}@ sessionID: %@ withData", &v33, 0x16u);
  }

  p_insertOrUpdateSessionOptionsStmt = &self->_insertOrUpdateSessionOptionsStmt;
  insertOrUpdateSessionOptionsStmt = self->_insertOrUpdateSessionOptionsStmt;
  if (!insertOrUpdateSessionOptionsStmt)
  {
    if (sqlite3_prepare_v2(self->_dbConnection, "REPLACE INTO sessions (bundle_id, session_id, options, configuration) \tvalues (?, ?, ?, (SELECT configuration FROM sessions WHERE bundle_id = ? AND session_id = ?))", -1, &self->_insertOrUpdateSessionOptionsStmt, 0))
    {
      v17 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        v33 = 138543618;
        v34 = dCopy;
        v35 = 2112;
        v36 = iDCopy;
        v16 = "Failed to init the _insertOrUpdateSessionOptionsStmt statement for bundleID: %{public}@ sessionID: %@";
        v18 = v17;
        v19 = 22;
LABEL_14:
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v16, &v33, v19);
        goto LABEL_31;
      }

      goto LABEL_31;
    }

    insertOrUpdateSessionOptionsStmt = *p_insertOrUpdateSessionOptionsStmt;
  }

  v14 = dCopy;
  if (sqlite3_bind_text(insertOrUpdateSessionOptionsStmt, 1, [dCopy UTF8String], -1, 0))
  {
    v15 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
    {
      v33 = 138543362;
      v34 = dCopy;
      v16 = "Failed to bind bundleID (%{public}@) to the insert statement";
LABEL_13:
      v18 = v15;
      v19 = 12;
      goto LABEL_14;
    }
  }

  else
  {
    v20 = *p_insertOrUpdateSessionOptionsStmt;
    v21 = iDCopy;
    if (sqlite3_bind_text(v20, 2, [iDCopy UTF8String], -1, 0))
    {
      v15 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        v33 = 138412290;
        v34 = iDCopy;
        v16 = "Failed to bind sessionID (%@) to the insert statement";
        goto LABEL_13;
      }
    }

    else
    {
      v22 = *p_insertOrUpdateSessionOptionsStmt;
      v23 = dataCopy;
      if (sqlite3_bind_blob(v22, 3, [dataCopy bytes], objc_msgSend(dataCopy, "length"), 0xFFFFFFFFFFFFFFFFLL))
      {
        v24 = qword_1000EB210;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v30 = dataCopy;
          bytes = [dataCopy bytes];
          v33 = 138412290;
          v34 = bytes;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to bind options blob (%@) to the insert statement", &v33, 0xCu);
        }
      }

      else
      {
        v25 = *p_insertOrUpdateSessionOptionsStmt;
        v26 = dCopy;
        if (sqlite3_bind_text(v25, 4, [dCopy UTF8String], -1, 0))
        {
          v15 = qword_1000EB210;
          if (!os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_31;
          }

          v33 = 138543362;
          v34 = dCopy;
          v16 = "Failed to bind bundleID (%{public}@) to the insert statement";
          goto LABEL_13;
        }

        v27 = *p_insertOrUpdateSessionOptionsStmt;
        v28 = iDCopy;
        if (sqlite3_bind_text(v27, 5, [iDCopy UTF8String], -1, 0))
        {
          v15 = qword_1000EB210;
          if (!os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_31;
          }

          v33 = 138412290;
          v34 = iDCopy;
          v16 = "Failed to bind sessionID (%@) to the insert statement";
          goto LABEL_13;
        }

        if (sqlite3_step(*p_insertOrUpdateSessionOptionsStmt) != 101)
        {
          v29 = qword_1000EB210;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v32 = sqlite3_errmsg(self->_dbConnection);
            v33 = 138543874;
            v34 = dCopy;
            v35 = 2112;
            v36 = iDCopy;
            v37 = 2080;
            v38 = v32;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to insert options with bundle ID %{public}@ and session ID %@ into db. Error = %s", &v33, 0x20u);
          }
        }

        sqlite3_reset(*p_insertOrUpdateSessionOptionsStmt);
      }
    }
  }

LABEL_31:
}

- (void)_onqueue_updateOptionsForBundleID:(id)d sessionID:(id)iD with:(id)with
{
  dCopy = d;
  iDCopy = iD;
  withCopy = with;
  v11 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138543618;
    v14 = dCopy;
    v15 = 2112;
    v16 = iDCopy;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "_updateOptionsForBundleID: %{public}@ sessionID: %@", &v13, 0x16u);
  }

  v12 = [NSKeyedArchiver archivedDataWithRootObject:withCopy requiringSecureCoding:1 error:0];
  [(NDTaskStorageDB *)self _onqueue_updateOptionsForBundleID:dCopy sessionID:iDCopy withData:v12];
}

- (void)_updateOptionsForBundleID:(id)d sessionID:(id)iD with:(id)with
{
  dCopy = d;
  iDCopy = iD;
  withCopy = with;
  workQueue = self->_workQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000100AC;
  v15[3] = &unk_1000D5370;
  v15[4] = self;
  v16 = dCopy;
  v17 = iDCopy;
  v18 = withCopy;
  v12 = withCopy;
  v13 = iDCopy;
  v14 = dCopy;
  dispatch_sync(workQueue, v15);
}

- (void)_onqueue_updateConfigurationForBundleID:(id)d sessionID:(id)iD withData:(id)data
{
  dCopy = d;
  iDCopy = iD;
  dataCopy = data;
  v11 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
  {
    v33 = 138543618;
    v34 = dCopy;
    v35 = 2112;
    v36 = iDCopy;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "_updateConfigurationForBundleID: %{public}@ sessionID: %@ withData", &v33, 0x16u);
  }

  p_insertOrUpdateSessionConfigurationStmt = &self->_insertOrUpdateSessionConfigurationStmt;
  insertOrUpdateSessionConfigurationStmt = self->_insertOrUpdateSessionConfigurationStmt;
  if (!insertOrUpdateSessionConfigurationStmt)
  {
    if (sqlite3_prepare_v2(self->_dbConnection, "REPLACE INTO sessions (bundle_id, session_id, configuration, options)  values (?, ?, ?, (SELECT options FROM sessions WHERE bundle_id = ? AND session_id = ?))", -1, &self->_insertOrUpdateSessionConfigurationStmt, 0))
    {
      v17 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        v33 = 138543618;
        v34 = dCopy;
        v35 = 2112;
        v36 = iDCopy;
        v16 = "Failed to init the _insertOrUpdateSessionConfigurationStmt statement for bundleID: %{public}@ sessionID: %@";
        v18 = v17;
        v19 = 22;
LABEL_14:
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v16, &v33, v19);
        goto LABEL_31;
      }

      goto LABEL_31;
    }

    insertOrUpdateSessionConfigurationStmt = *p_insertOrUpdateSessionConfigurationStmt;
  }

  v14 = dCopy;
  if (sqlite3_bind_text(insertOrUpdateSessionConfigurationStmt, 1, [dCopy UTF8String], -1, 0))
  {
    v15 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
    {
      v33 = 138543362;
      v34 = dCopy;
      v16 = "Failed to bind bundleID (%{public}@) to the insert statement";
LABEL_13:
      v18 = v15;
      v19 = 12;
      goto LABEL_14;
    }
  }

  else
  {
    v20 = *p_insertOrUpdateSessionConfigurationStmt;
    v21 = iDCopy;
    if (sqlite3_bind_text(v20, 2, [iDCopy UTF8String], -1, 0))
    {
      v15 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        v33 = 138412290;
        v34 = iDCopy;
        v16 = "Failed to bind sessionID (%@) to the insert statement";
        goto LABEL_13;
      }
    }

    else
    {
      v22 = *p_insertOrUpdateSessionConfigurationStmt;
      v23 = dataCopy;
      if (sqlite3_bind_blob(v22, 3, [dataCopy bytes], objc_msgSend(dataCopy, "length"), 0xFFFFFFFFFFFFFFFFLL))
      {
        v24 = qword_1000EB210;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v30 = dataCopy;
          bytes = [dataCopy bytes];
          v33 = 138412290;
          v34 = bytes;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to bind config blob (%@) to the insert statement", &v33, 0xCu);
        }
      }

      else
      {
        v25 = *p_insertOrUpdateSessionConfigurationStmt;
        v26 = dCopy;
        if (sqlite3_bind_text(v25, 4, [dCopy UTF8String], -1, 0))
        {
          v15 = qword_1000EB210;
          if (!os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_31;
          }

          v33 = 138543362;
          v34 = dCopy;
          v16 = "Failed to bind bundleID (%{public}@) to the insert statement";
          goto LABEL_13;
        }

        v27 = *p_insertOrUpdateSessionConfigurationStmt;
        v28 = iDCopy;
        if (sqlite3_bind_text(v27, 5, [iDCopy UTF8String], -1, 0))
        {
          v15 = qword_1000EB210;
          if (!os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_31;
          }

          v33 = 138412290;
          v34 = iDCopy;
          v16 = "Failed to bind sessionID (%@) to the insert statement";
          goto LABEL_13;
        }

        if (sqlite3_step(*p_insertOrUpdateSessionConfigurationStmt) != 101)
        {
          v29 = qword_1000EB210;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v32 = sqlite3_errmsg(self->_dbConnection);
            v33 = 138543874;
            v34 = dCopy;
            v35 = 2112;
            v36 = iDCopy;
            v37 = 2080;
            v38 = v32;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to insert configuration with bundle ID %{public}@ and session ID %@ into db. Error = %s", &v33, 0x20u);
          }
        }

        sqlite3_reset(*p_insertOrUpdateSessionConfigurationStmt);
      }
    }
  }

LABEL_31:
}

- (void)_onqueue_updateConfigurationForBundleID:(id)d sessionID:(id)iD with:(id)with
{
  dCopy = d;
  iDCopy = iD;
  withCopy = with;
  v11 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138543618;
    v14 = dCopy;
    v15 = 2112;
    v16 = iDCopy;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "_updateConfigurationForBundleID: %{public}@ sessionID: %@", &v13, 0x16u);
  }

  v12 = [NSKeyedArchiver archivedDataWithRootObject:withCopy requiringSecureCoding:1 error:0];
  [(NDTaskStorageDB *)self _onqueue_updateConfigurationForBundleID:dCopy sessionID:iDCopy withData:v12];
}

- (void)_updateConfigurationForBundleID:(id)d sessionID:(id)iD with:(id)with
{
  dCopy = d;
  iDCopy = iD;
  withCopy = with;
  workQueue = self->_workQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001080C;
  v15[3] = &unk_1000D5370;
  v15[4] = self;
  v16 = dCopy;
  v17 = iDCopy;
  v18 = withCopy;
  v12 = withCopy;
  v13 = iDCopy;
  v14 = dCopy;
  dispatch_sync(workQueue, v15);
}

- (void)_onqueue_deleteAllSessionsForBundleID:(id)d
{
  dCopy = d;
  v5 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138543362;
    v16 = dCopy;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "_deleteAllSessionsForBundleID: %{public}@", &v15, 0xCu);
  }

  dbConnection = self->_dbConnection;
  if (!dbConnection || !self->_dbInitialized)
  {
    v12 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "sqlite db not initialized", &v15, 2u);
    }

    goto LABEL_20;
  }

  p_deleteAllSessionsForBundleIDStmt = &self->_deleteAllSessionsForBundleIDStmt;
  deleteAllSessionsForBundleIDStmt = self->_deleteAllSessionsForBundleIDStmt;
  if (deleteAllSessionsForBundleIDStmt)
  {
    goto LABEL_6;
  }

  if (!sqlite3_prepare_v2(dbConnection, "DELETE from sessions WHERE bundle_id = ?", -1, &self->_deleteAllSessionsForBundleIDStmt, 0))
  {
    deleteAllSessionsForBundleIDStmt = *p_deleteAllSessionsForBundleIDStmt;
LABEL_6:
    v9 = dCopy;
    if (sqlite3_bind_text(deleteAllSessionsForBundleIDStmt, 1, [dCopy UTF8String], -1, 0))
    {
      v10 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        v15 = 138543362;
        v16 = dCopy;
        v11 = "Failed to bind bundleID (%{public}@) to the delete statement";
LABEL_14:
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v11, &v15, 0xCu);
        goto LABEL_20;
      }
    }

    else
    {
      if (sqlite3_step(*p_deleteAllSessionsForBundleIDStmt) != 101)
      {
        v13 = qword_1000EB210;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = sqlite3_errmsg(self->_dbConnection);
          v15 = 138543618;
          v16 = dCopy;
          v17 = 2080;
          v18 = v14;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to execute session deletion for bundleID (%{public}@). Error = %s", &v15, 0x16u);
        }
      }

      sqlite3_reset(*p_deleteAllSessionsForBundleIDStmt);
    }

    goto LABEL_20;
  }

  v10 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
  {
    v15 = 138543362;
    v16 = dCopy;
    v11 = "Failed to init the _deleteAllSessionsStmt statement for bundleID: %{public}@";
    goto LABEL_14;
  }

LABEL_20:
}

- (void)_deleteAllSessionsForBundleID:(id)d
{
  dCopy = d;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100010BD0;
  v7[3] = &unk_1000D6420;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(workQueue, v7);
}

- (void)_onqueue_deleteSessionForBundleID:(id)d sessionID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
  {
    v23 = 138543618;
    v24 = dCopy;
    v25 = 2112;
    v26 = iDCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "_deleteSessionForBundleID: %{public}@ sessionID: %@", &v23, 0x16u);
  }

  dbConnection = self->_dbConnection;
  if (!dbConnection || !self->_dbInitialized)
  {
    v15 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "sqlite db not initialized", &v23, 2u);
    }

    goto LABEL_11;
  }

  p_deleteSessionStmt = &self->_deleteSessionStmt;
  deleteSessionStmt = self->_deleteSessionStmt;
  if (!deleteSessionStmt)
  {
    if (sqlite3_prepare_v2(dbConnection, "DELETE from sessions WHERE bundle_id = ? AND session_id = ?", -1, &self->_deleteSessionStmt, 0))
    {
      v16 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        v23 = 138543618;
        v24 = dCopy;
        v25 = 2112;
        v26 = iDCopy;
        v14 = "Failed to init the _deleteSessionStmt statement for bundleID: %{public}@ sessionID: %@";
        v17 = v16;
        v18 = 22;
LABEL_19:
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v14, &v23, v18);
        goto LABEL_11;
      }

      goto LABEL_11;
    }

    deleteSessionStmt = *p_deleteSessionStmt;
  }

  v12 = dCopy;
  if (sqlite3_bind_text(deleteSessionStmt, 1, [dCopy UTF8String], -1, 0))
  {
    v13 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
    {
      v23 = 138543362;
      v24 = dCopy;
      v14 = "Failed to bind bundleID (%{public}@) to the delete statement";
LABEL_18:
      v17 = v13;
      v18 = 12;
      goto LABEL_19;
    }
  }

  else
  {
    v19 = *p_deleteSessionStmt;
    v20 = iDCopy;
    if (sqlite3_bind_text(v19, 2, [iDCopy UTF8String], -1, 0))
    {
      v13 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        v23 = 138412290;
        v24 = iDCopy;
        v14 = "Failed to bind sessionID (%@) to the delete statement";
        goto LABEL_18;
      }
    }

    else
    {
      if (sqlite3_step(*p_deleteSessionStmt) != 101)
      {
        v21 = qword_1000EB210;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = sqlite3_errmsg(self->_dbConnection);
          v23 = 138543874;
          v24 = dCopy;
          v25 = 2112;
          v26 = iDCopy;
          v27 = 2080;
          v28 = v22;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to execute session deletion for bundleID (%{public}@) and sessionID (%@). Error = %s", &v23, 0x20u);
        }
      }

      sqlite3_reset(*p_deleteSessionStmt);
    }
  }

LABEL_11:
}

- (void)_deleteSessionForBundleID:(id)d sessionID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010FE8;
  block[3] = &unk_1000D6130;
  block[4] = self;
  v12 = dCopy;
  v13 = iDCopy;
  v9 = iDCopy;
  v10 = dCopy;
  dispatch_sync(workQueue, block);
}

- (id)_onqueue_getOptionsForBundleID:(id)d sessionID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
  {
    v24 = 138543618;
    v25 = dCopy;
    v26 = 2112;
    v27 = iDCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "_getOptionsForBundleID: %{public}@ sessionID: %@", &v24, 0x16u);
  }

  dbConnection = self->_dbConnection;
  if (!dbConnection || !self->_dbInitialized)
  {
    v15 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "sqlite db not initialized", &v24, 2u);
    }

    goto LABEL_11;
  }

  p_selectSessionOptionsStmt = &self->_selectSessionOptionsStmt;
  selectSessionOptionsStmt = self->_selectSessionOptionsStmt;
  if (!selectSessionOptionsStmt)
  {
    if (sqlite3_prepare_v2(dbConnection, "SELECT options from sessions WHERE bundle_id = ? AND session_id = ? LIMIT 1", -1, &self->_selectSessionOptionsStmt, 0))
    {
      v18 = qword_1000EB210;
      if (!os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v24 = 138543618;
      v25 = dCopy;
      v26 = 2112;
      v27 = iDCopy;
      v14 = "Failed to init the _selectSessionOptionsStmt statement for bundleID: %{public}@ sessionID: %@";
LABEL_18:
      v19 = v18;
      v20 = 22;
LABEL_23:
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v14, &v24, v20);
      goto LABEL_11;
    }

    selectSessionOptionsStmt = *p_selectSessionOptionsStmt;
  }

  v12 = dCopy;
  if (sqlite3_bind_text(selectSessionOptionsStmt, 1, [dCopy UTF8String], -1, 0))
  {
    v13 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
    {
      v24 = 138543362;
      v25 = dCopy;
      v14 = "Failed to bind bundleID (%{public}@) to the select statement";
LABEL_22:
      v19 = v13;
      v20 = 12;
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  v21 = *p_selectSessionOptionsStmt;
  v22 = iDCopy;
  if (sqlite3_bind_text(v21, 2, [iDCopy UTF8String], -1, 0))
  {
    v13 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
    {
      v24 = 138412290;
      v25 = iDCopy;
      v14 = "Failed to bind sessionID (%@) to the select statement";
      goto LABEL_22;
    }

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  if (sqlite3_step(*p_selectSessionOptionsStmt) == 100)
  {
    v23 = [(NDTaskStorageDB *)self _sqlBlobHelper:self->_selectSessionOptionsStmt forColumn:0];
  }

  else
  {
    v23 = 0;
  }

  sqlite3_reset(*p_selectSessionOptionsStmt);
  if (!v23)
  {
    v18 = qword_1000EB210;
    if (!os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v24 = 138543618;
    v25 = dCopy;
    v26 = 2112;
    v27 = iDCopy;
    v14 = "Failed to retrieve any options data from DB for bundleID: %{public}@ and sessionID: %@";
    goto LABEL_18;
  }

  v16 = [NDTaskStorageDB _preset_unarchiveObjectWithData:v23];

LABEL_12:

  return v16;
}

- (id)_getOptionsForBundleID:(id)d sessionID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000114BC;
  v21 = sub_1000114CC;
  v22 = 0;
  workQueue = self->_workQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000114D4;
  v13[3] = &unk_1000D5F58;
  v13[4] = self;
  v14 = dCopy;
  v15 = iDCopy;
  v16 = &v17;
  v9 = iDCopy;
  v10 = dCopy;
  dispatch_sync(workQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)_onqueue_getConfigurationForBundleID:(id)d sessionID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
  {
    v24 = 138543618;
    v25 = dCopy;
    v26 = 2112;
    v27 = iDCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "_getConfigurationForBundleID: %{public}@ sessionID: %@", &v24, 0x16u);
  }

  dbConnection = self->_dbConnection;
  if (!dbConnection || !self->_dbInitialized)
  {
    v15 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "sqlite db not initialized", &v24, 2u);
    }

    goto LABEL_11;
  }

  p_selectSessionConfigurationStmt = &self->_selectSessionConfigurationStmt;
  selectSessionConfigurationStmt = self->_selectSessionConfigurationStmt;
  if (!selectSessionConfigurationStmt)
  {
    if (sqlite3_prepare_v2(dbConnection, "SELECT configuration from sessions WHERE bundle_id = ? AND session_id = ? LIMIT 1", -1, &self->_selectSessionConfigurationStmt, 0))
    {
      v18 = qword_1000EB210;
      if (!os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v24 = 138543618;
      v25 = dCopy;
      v26 = 2112;
      v27 = iDCopy;
      v14 = "Failed to init the _selectSessionConfigurationStmt statement for bundleID: %{public}@ sessionID: %@";
LABEL_18:
      v19 = v18;
      v20 = 22;
LABEL_23:
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v14, &v24, v20);
      goto LABEL_11;
    }

    selectSessionConfigurationStmt = *p_selectSessionConfigurationStmt;
  }

  v12 = dCopy;
  if (sqlite3_bind_text(selectSessionConfigurationStmt, 1, [dCopy UTF8String], -1, 0))
  {
    v13 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
    {
      v24 = 138543362;
      v25 = dCopy;
      v14 = "Failed to bind bundleID (%{public}@) to the select statement";
LABEL_22:
      v19 = v13;
      v20 = 12;
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  v21 = *p_selectSessionConfigurationStmt;
  v22 = iDCopy;
  if (sqlite3_bind_text(v21, 2, [iDCopy UTF8String], -1, 0))
  {
    v13 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
    {
      v24 = 138412290;
      v25 = iDCopy;
      v14 = "Failed to bind sessionID (%@) to the select statement";
      goto LABEL_22;
    }

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  if (sqlite3_step(*p_selectSessionConfigurationStmt) == 100)
  {
    v23 = [(NDTaskStorageDB *)self _sqlBlobHelper:self->_selectSessionConfigurationStmt forColumn:0];
  }

  else
  {
    v23 = 0;
  }

  sqlite3_reset(*p_selectSessionConfigurationStmt);
  if (!v23)
  {
    v18 = qword_1000EB210;
    if (!os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v24 = 138543618;
    v25 = dCopy;
    v26 = 2112;
    v27 = iDCopy;
    v14 = "Failed to retrieve any configuration data from DB for bundleID: %{public}@ and sessionID: %@";
    goto LABEL_18;
  }

  v16 = [NDTaskStorageDB _preset_unarchiveObjectWithData:v23];

LABEL_12:

  return v16;
}

- (id)_getConfigurationForBundleID:(id)d sessionID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000114BC;
  v21 = sub_1000114CC;
  v22 = 0;
  workQueue = self->_workQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000119E8;
  v13[3] = &unk_1000D5F58;
  v13[4] = self;
  v14 = dCopy;
  v15 = iDCopy;
  v16 = &v17;
  v9 = iDCopy;
  v10 = dCopy;
  dispatch_sync(workQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)_onqueue_getAllBundleIDsFromSessionTasks
{
  v3 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v14[0]) = 0;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "getAllBundleIDsFromSessionTasks", v14, 2u);
  }

  v4 = +[NSMutableArray array];
  p_selectUniqueBundleIDsStmt = &self->_selectUniqueBundleIDsStmt;
  selectUniqueBundleIDsStmt = self->_selectUniqueBundleIDsStmt;
  if (selectUniqueBundleIDsStmt)
  {
    goto LABEL_4;
  }

  if (!sqlite3_prepare_v2(self->_dbConnection, "SELECT DISTINCT bundle_id FROM session_tasks", -1, &self->_selectUniqueBundleIDsStmt, 0))
  {
    selectUniqueBundleIDsStmt = *p_selectUniqueBundleIDsStmt;
    if (!*p_selectUniqueBundleIDsStmt)
    {
LABEL_12:
      v11 = v4;
      goto LABEL_17;
    }

LABEL_4:
    v7 = 0;
    while (sqlite3_step(selectUniqueBundleIDsStmt) == 100)
    {
      v8 = sqlite3_column_text(*p_selectUniqueBundleIDsStmt, 0);
      if (v8)
      {
        v9 = [NSString stringWithUTF8String:v8];
        [v4 addObject:v9];
      }

      selectUniqueBundleIDsStmt = *p_selectUniqueBundleIDsStmt;
      ++v7;
    }

    v10 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
    {
      v14[0] = 67109120;
      v14[1] = v7;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "_getAllBundleIDsFromSessionTasks entries: %d", v14, 8u);
    }

    sqlite3_reset(*p_selectUniqueBundleIDsStmt);
    goto LABEL_12;
  }

  v12 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v14[0]) = 0;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to init the _selectUniqueBundleIDsStmt statement", v14, 2u);
  }

  v11 = 0;
LABEL_17:

  return v11;
}

- (id)_getAllBundleIDsFromSessionTasks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000114BC;
  v10 = sub_1000114CC;
  v11 = 0;
  workQueue = self->_workQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100011D5C;
  v5[3] = &unk_1000D5BA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_deleteTaskEntriesWithIdentifiers:(id)identifiers forSession:(id)session sessionUUID:(id)d
{
  identifiersCopy = identifiers;
  sessionCopy = session;
  dCopy = d;
  v11 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v21 = dCopy;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "_deleteEntriesWithIdentifiers for session %{public}@", buf, 0xCu);
  }

  workQueue = self->_workQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100011F7C;
  v16[3] = &unk_1000D5370;
  v16[4] = self;
  v17 = identifiersCopy;
  v18 = sessionCopy;
  v19 = dCopy;
  v13 = dCopy;
  v14 = sessionCopy;
  v15 = identifiersCopy;
  dispatch_sync(workQueue, v16);
}

- (void)_updateDBEntriesForTasksInSession:(id)session taskInfos:(id)infos updates:(id)updates
{
  sessionCopy = session;
  infosCopy = infos;
  updatesCopy = updates;
  v11 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v21 = sessionCopy;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "_updateDBEntriesForTasks for session %{public}@", buf, 0xCu);
  }

  workQueue = self->_workQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100012224;
  v16[3] = &unk_1000D5370;
  v16[4] = self;
  v17 = updatesCopy;
  v18 = infosCopy;
  v19 = sessionCopy;
  v13 = sessionCopy;
  v14 = infosCopy;
  v15 = updatesCopy;
  dispatch_sync(workQueue, v16);
}

- (id)_onqueue_getAllSessionIDsForBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = +[NSMutableArray array];
  v6 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
  {
    v19 = 138543362;
    v20[0] = bundleCopy;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "_getAllSessionIDsForBundle for bundleID %{public}@", &v19, 0xCu);
  }

  p_getAllSessionsStmt = &self->_getAllSessionsStmt;
  getAllSessionsStmt = self->_getAllSessionsStmt;
  if (!getAllSessionsStmt)
  {
    if (sqlite3_prepare_v2(self->_dbConnection, "SELECT DISTINCT session_id FROM session_tasks WHERE bundle_id = ?", -1, &self->_getAllSessionsStmt, 0))
    {
      v10 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        v19 = 138543362;
        v20[0] = bundleCopy;
        v11 = "Failed to init the _getAllSessionsStmt statement for session_tasks for bundle: %{public}@";
        goto LABEL_25;
      }

LABEL_9:
      v12 = 0;
      goto LABEL_20;
    }

    getAllSessionsStmt = *p_getAllSessionsStmt;
  }

  v9 = bundleCopy;
  if (sqlite3_bind_text(getAllSessionsStmt, 1, [bundleCopy UTF8String], -1, 0))
  {
    v10 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
    {
      v19 = 138543362;
      v20[0] = bundleCopy;
      v11 = "Failed to bind bundleID (%{public}@) to the select statement";
LABEL_25:
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v11, &v19, 0xCu);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v13 = *p_getAllSessionsStmt;
  if (*p_getAllSessionsStmt)
  {
    v14 = 0;
    while (sqlite3_step(v13) == 100)
    {
      v15 = sqlite3_column_text(*p_getAllSessionsStmt, 0);
      if (v15)
      {
        v16 = [NSString stringWithUTF8String:v15];
        [v5 addObject:v16];
      }

      v13 = *p_getAllSessionsStmt;
      ++v14;
    }

    v17 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
    {
      v19 = 67109378;
      LODWORD(v20[0]) = v14;
      WORD2(v20[0]) = 2114;
      *(v20 + 6) = bundleCopy;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "_getAllSessionIDsForBundle entries: %d for bundle: %{public}@", &v19, 0x12u);
    }

    sqlite3_reset(*p_getAllSessionsStmt);
  }

  v12 = v5;
LABEL_20:

  return v12;
}

- (id)_getAllSessionIDsForBundle:(id)bundle
{
  bundleCopy = bundle;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000114BC;
  v16 = sub_1000114CC;
  v17 = 0;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012864;
  block[3] = &unk_1000D6158;
  v10 = bundleCopy;
  v11 = &v12;
  block[4] = self;
  v6 = bundleCopy;
  dispatch_sync(workQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)_cleanupDB
{
  v3 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
  {
    path = self->_path;
    *buf = 138412290;
    v8 = path;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "_cleanupDB at path: %@", buf, 0xCu);
  }

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012A18;
  block[3] = &unk_1000D63D0;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

- (void)_deleteAllDataInDB
{
  v3 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
  {
    path = self->_path;
    *buf = 138412290;
    v8 = path;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "_deleteAllTaskEntriesInDB at path: %@", buf, 0xCu);
  }

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012D04;
  block[3] = &unk_1000D63D0;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

- (void)_deleteAllTaskEntriesForSession:(id)session sessionUUID:(id)d
{
  sessionCopy = session;
  dCopy = d;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012DD0;
  block[3] = &unk_1000D6130;
  block[4] = self;
  v12 = sessionCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = sessionCopy;
  dispatch_sync(workQueue, block);
}

- (id)_getAllTasksFromDBForSession:(id)session sessionUUID:(id)d
{
  sessionCopy = session;
  dCopy = d;
  v8 = +[NSMutableArray array];
  workQueue = self->_workQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100012EF0;
  v16[3] = &unk_1000D5370;
  v17 = dCopy;
  selfCopy = self;
  v19 = sessionCopy;
  v10 = v8;
  v20 = v10;
  v11 = sessionCopy;
  v12 = dCopy;
  dispatch_sync(workQueue, v16);
  v13 = v20;
  v14 = v10;

  return v10;
}

- (void)_updateDBEntryForTask:(id)task updateType:(unint64_t)type sessionUUID:(id)d
{
  taskCopy = task;
  dCopy = d;
  v10 = qword_1000EB210;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = 134218498;
    typeCopy2 = [taskCopy identifier];
    v16 = 2048;
    typeCopy = type;
    v18 = 2114;
    v19 = dCopy;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "_updateDBEntryForTask: %lu type %lu session: %{public}@", &v14, 0x20u);
  }

  switch(type)
  {
    case 0uLL:
      [(NDTaskStorageDB *)self _onqueue_updateTaskDescriptionForTask:taskCopy sessionUUID:dCopy];
      break;
    case 1uLL:
      [(NDTaskStorageDB *)self _onqueue_updateResponseForTask:taskCopy sessionUUID:dCopy];
      break;
    case 2uLL:
      [(NDTaskStorageDB *)self _onqueue_updateResumableUploadDataForTask:taskCopy sessionUUID:dCopy];
      break;
    case 3uLL:
      [(NDTaskStorageDB *)self _onqueue_updateDownloadFileURLForTask:taskCopy sessionUUID:dCopy];
      break;
    case 4uLL:
      [(NDTaskStorageDB *)self _onqueue_updateLoadingPriorityForTask:taskCopy sessionUUID:dCopy];
      break;
    case 5uLL:
      [(NDTaskStorageDB *)self _onqueue_updateBytesPerSecondLimitForTask:taskCopy sessionUUID:dCopy];
      break;
    case 6uLL:
      [(NDTaskStorageDB *)self _onqueue_updateExpectedProgressTargetForTask:taskCopy sessionUUID:dCopy];
      break;
    case 7uLL:
      [(NDTaskStorageDB *)self _onqueue_updateTLSSupportedProtocolVersionForTask:taskCopy sessionUUID:dCopy];
      break;
    case 8uLL:
      [(NDTaskStorageDB *)self _onqueue_updateCurrentRequestForTask:taskCopy sessionUUID:dCopy];
      break;
    case 9uLL:
      [(NDTaskStorageDB *)self _onqueue_updateRespondedToWillBeginDelayedRequestCallbackForTask:taskCopy sessionUUID:dCopy];
      break;
    case 0xAuLL:
      [(NDTaskStorageDB *)self _onqueue_updateShouldCancelOnDisconnectForTask:taskCopy sessionUUID:dCopy];
      break;
    case 0xBuLL:
      [(NDTaskStorageDB *)self _onqueue_updateSuspendPathEntriesForTask:taskCopy sessionUUID:dCopy];
      break;
    case 0xCuLL:
      [(NDTaskStorageDB *)self _onqueue_updateSetPriorityEntriesForTask:taskCopy sessionUUID:dCopy];
      break;
    case 0xDuLL:
      identifier = [taskCopy identifier];
      sessionID = [taskCopy sessionID];
      [(NDTaskStorageDB *)self _onqueue_deleteEntryForTask:identifier forSession:sessionID sessionUUID:dCopy];

      break;
    case 0xEuLL:
      [(NDTaskStorageDB *)self _onqueue_insertOrUpdateAllEntriesForTask:taskCopy sessionUUID:dCopy];
      break;
    default:
      v11 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        v14 = 134217984;
        typeCopy2 = type;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Invalid update type %lu", &v14, 0xCu);
      }

      break;
  }
}

- (id)_initDB:(id)b
{
  bCopy = b;
  v6 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = bCopy;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "_initDB at dir: %@", &buf, 0xCu);
  }

  v21.receiver = self;
  v21.super_class = NDTaskStorageDB;
  v7 = [(NDTaskStorageDB *)&v21 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_dbDir, b);
    v8->_dbConnection = 0;
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_UTILITY, 0);
    v11 = dispatch_queue_create("com.apple.nsurlsessiond.session-archive-queue", v10);
    workQueue = v8->_workQueue;
    v8->_workQueue = v11;

    *&v8->_dbInitialized = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v23 = 0x2020000000;
    v24 = 0;
    v13 = v8->_workQueue;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100013720;
    v18[3] = &unk_1000D5BA8;
    p_buf = &buf;
    v14 = v8;
    v19 = v14;
    dispatch_sync(v13, v18);
    if (*(*(&buf + 1) + 24) == 1)
    {
      v15 = v14;

      _Block_object_dispose(&buf, 8);
      goto LABEL_10;
    }

    _Block_object_dispose(&buf, 8);
  }

  v16 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "_initDB failed", &buf, 2u);
  }

  v15 = 0;
LABEL_10:

  return v15;
}

- (void)_onqueue_updateSetPriorityEntriesForTask:(id)task sessionUUID:(id)d
{
  taskCopy = task;
  dCopy = d;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v26 = 134218242;
    identifier = [taskCopy identifier];
    v28 = 2114;
    v29 = dCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "_onqueue_updateSetPriorityEntriesForTask: %lu for session: %{public}@", &v26, 0x16u);
  }

  dbConnection = self->_dbConnection;
  if (dbConnection && self->_dbInitialized)
  {
    p_updateSetPriorityEntriesForTaskStmt = &self->_updateSetPriorityEntriesForTaskStmt;
    updateSetPriorityEntriesForTaskStmt = self->_updateSetPriorityEntriesForTaskStmt;
    if (!updateSetPriorityEntriesForTaskStmt)
    {
      if (sqlite3_prepare_v2(dbConnection, "UPDATE session_tasks SET discretionary = ?, base_priority = ?, base_priority_set_explicitly = ? WHERE session_id = ? AND identifier = ?", -1, &self->_updateSetPriorityEntriesForTaskStmt, 0))
      {
        v14 = qword_1000EB210;
        if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v26) = 0;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to init _updateSetPriorityEntriesForTaskStmt for session_tasks", &v26, 2u);
        }

        goto LABEL_12;
      }

      updateSetPriorityEntriesForTaskStmt = *p_updateSetPriorityEntriesForTaskStmt;
    }

    if (sqlite3_bind_int(updateSetPriorityEntriesForTaskStmt, 1, [taskCopy isDiscretionary]))
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        isDiscretionary = [taskCopy isDiscretionary];
        v26 = 134217984;
        identifier = isDiscretionary;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind discretionary (%lu) to the select statement", &v26, 0xCu);
      }

LABEL_32:

      goto LABEL_12;
    }

    if (sqlite3_bind_int(*p_updateSetPriorityEntriesForTaskStmt, 2, [taskCopy basePriority]))
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        basePriority = [taskCopy basePriority];
        v26 = 134217984;
        identifier = basePriority;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind basePriority (%lu) to the select statement", &v26, 0xCu);
      }

      goto LABEL_32;
    }

    if (sqlite3_bind_int(*p_updateSetPriorityEntriesForTaskStmt, 3, [taskCopy basePrioritySetExplicitly]))
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        basePrioritySetExplicitly = [taskCopy basePrioritySetExplicitly];
        v26 = 134217984;
        identifier = basePrioritySetExplicitly;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind basePrioritySetExplicitly (%lu) to the select statement", &v26, 0xCu);
      }

      goto LABEL_32;
    }

    v15 = *p_updateSetPriorityEntriesForTaskStmt;
    sessionID = [taskCopy sessionID];
    v17 = sessionID;
    LOBYTE(v15) = sqlite3_bind_text(v15, 4, [sessionID UTF8String], -1, 0) == 0;

    if ((v15 & 1) == 0)
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sessionID2 = [taskCopy sessionID];
        v26 = 138412290;
        identifier = sessionID2;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind sessionID (%@) to the select statement", &v26, 0xCu);
      }

      goto LABEL_32;
    }

    if (sqlite3_bind_int(*p_updateSetPriorityEntriesForTaskStmt, 5, [taskCopy identifier]))
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        identifier2 = [taskCopy identifier];
        v26 = 134217984;
        identifier = identifier2;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind identifier (%lu) to the select statement", &v26, 0xCu);
      }

      goto LABEL_32;
    }

    if (sqlite3_step(*p_updateSetPriorityEntriesForTaskStmt) != 101)
    {
      v20 = qword_1000EB210;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        identifier3 = [taskCopy identifier];
        v25 = sqlite3_errmsg(self->_dbConnection);
        v26 = 134218242;
        identifier = identifier3;
        v28 = 2080;
        v29 = v25;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to update setPriority related entries for task %lu into db. Error= %s", &v26, 0x16u);
      }
    }

    sqlite3_reset(*p_updateSetPriorityEntriesForTaskStmt);
  }

  else
  {
    v13 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "sqlite db not initialized", &v26, 2u);
    }
  }

LABEL_12:
}

- (void)_onqueue_updateSuspendPathEntriesForTask:(id)task sessionUUID:(id)d
{
  taskCopy = task;
  dCopy = d;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v25 = 134218242;
    identifier = [taskCopy identifier];
    v27 = 2114;
    v28 = dCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "_onqueue_updateSuspendPathEntriesForTask: %lu for session %{public}@", &v25, 0x16u);
  }

  dbConnection = self->_dbConnection;
  if (dbConnection && self->_dbInitialized)
  {
    p_updateSuspendPathEntriesForTaskStmt = &self->_updateSuspendPathEntriesForTaskStmt;
    updateSuspendPathEntriesForTaskStmt = self->_updateSuspendPathEntriesForTaskStmt;
    if (!updateSuspendPathEntriesForTaskStmt)
    {
      if (sqlite3_prepare_v2(dbConnection, "UPDATE session_tasks SET state = ?, suspend_count = ? WHERE session_id = ? AND identifier = ?", -1, &self->_updateSuspendPathEntriesForTaskStmt, 0))
      {
        v14 = qword_1000EB210;
        if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v25) = 0;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to init _updateSuspendPathEntriesForTaskStmt for session_tasks", &v25, 2u);
        }

        goto LABEL_12;
      }

      updateSuspendPathEntriesForTaskStmt = *p_updateSuspendPathEntriesForTaskStmt;
    }

    if (sqlite3_bind_int64(updateSuspendPathEntriesForTaskStmt, 1, [taskCopy state]))
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        state = [taskCopy state];
        v25 = 134217984;
        identifier = state;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind state (%lu) to the select statement", &v25, 0xCu);
      }

LABEL_28:

      goto LABEL_12;
    }

    if (sqlite3_bind_int64(*p_updateSuspendPathEntriesForTaskStmt, 2, [taskCopy suspendCount]))
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        suspendCount = [taskCopy suspendCount];
        v25 = 134217984;
        identifier = suspendCount;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind suspendCount (%lu) to the select statement", &v25, 0xCu);
      }

      goto LABEL_28;
    }

    v15 = *p_updateSuspendPathEntriesForTaskStmt;
    sessionID = [taskCopy sessionID];
    v17 = sessionID;
    LOBYTE(v15) = sqlite3_bind_text(v15, 3, [sessionID UTF8String], -1, 0) == 0;

    if ((v15 & 1) == 0)
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sessionID2 = [taskCopy sessionID];
        v25 = 138412290;
        identifier = sessionID2;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind sessionID (%@) to the select statement", &v25, 0xCu);
      }

      goto LABEL_28;
    }

    if (sqlite3_bind_int(*p_updateSuspendPathEntriesForTaskStmt, 4, [taskCopy identifier]))
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        identifier2 = [taskCopy identifier];
        v25 = 134217984;
        identifier = identifier2;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind identifier (%lu) to the select statement", &v25, 0xCu);
      }

      goto LABEL_28;
    }

    if (sqlite3_step(*p_updateSuspendPathEntriesForTaskStmt) != 101)
    {
      v19 = qword_1000EB210;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        identifier3 = [taskCopy identifier];
        v24 = sqlite3_errmsg(self->_dbConnection);
        v25 = 134218242;
        identifier = identifier3;
        v27 = 2080;
        v28 = v24;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to update suspend related entries for task %lu into db. Error= %s", &v25, 0x16u);
      }
    }

    sqlite3_reset(*p_updateSuspendPathEntriesForTaskStmt);
  }

  else
  {
    v13 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "sqlite db not initialized", &v25, 2u);
    }
  }

LABEL_12:
}

- (void)_onqueue_updateDownloadFileURLForTask:(id)task sessionUUID:(id)d
{
  taskCopy = task;
  dCopy = d;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v27 = 134218242;
    identifier = [taskCopy identifier];
    v29 = 2114;
    v30 = dCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "_onqueue_updateDownloadFileURLForTask: %lu for session: %{public}@", &v27, 0x16u);
  }

  dbConnection = self->_dbConnection;
  if (dbConnection && self->_dbInitialized)
  {
    p_updateDownloadFileURLForTaskStmt = &self->_updateDownloadFileURLForTaskStmt;
    if (!self->_updateDownloadFileURLForTaskStmt && sqlite3_prepare_v2(dbConnection, "UPDATE session_tasks SET download_file_url = ? WHERE session_id = ? AND identifier = ?", -1, &self->_updateDownloadFileURLForTaskStmt, 0))
    {
      v18 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v27) = 0;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to init _updateDownloadFileURLForTaskStmt for session_tasks", &v27, 2u);
      }

      goto LABEL_22;
    }

    downloadFileURL = [taskCopy downloadFileURL];
    v12 = [NSKeyedArchiver archivedDataWithRootObject:downloadFileURL requiringSecureCoding:1 error:0];

    v13 = *p_updateDownloadFileURLForTaskStmt;
    v14 = v12;
    if (sqlite3_bind_blob(v13, 1, [v12 bytes], objc_msgSend(v12, "length"), 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = qword_1000EB210;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        downloadFileURL2 = [taskCopy downloadFileURL];
        v27 = 138412290;
        identifier = downloadFileURL2;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to bind downloadFileURL (%@) to the select statement", &v27, 0xCu);
      }
    }

    else
    {
      v19 = *p_updateDownloadFileURLForTaskStmt;
      sessionID = [taskCopy sessionID];
      v21 = sessionID;
      LOBYTE(v19) = sqlite3_bind_text(v19, 2, [sessionID UTF8String], -1, 0) == 0;

      if (v19)
      {
        if (!sqlite3_bind_int(*p_updateDownloadFileURLForTaskStmt, 3, [taskCopy identifier]))
        {
          if (sqlite3_step(*p_updateDownloadFileURLForTaskStmt) != 101)
          {
            v23 = qword_1000EB210;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              identifier2 = [taskCopy identifier];
              v26 = sqlite3_errmsg(self->_dbConnection);
              v27 = 134218242;
              identifier = identifier2;
              v29 = 2080;
              v30 = v26;
              _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to update downloadFileURL for task %lu into db. Error= %s", &v27, 0x16u);
            }
          }

          sqlite3_reset(*p_updateDownloadFileURLForTaskStmt);
          goto LABEL_21;
        }

        v15 = qword_1000EB210;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          identifier3 = [taskCopy identifier];
          v27 = 134217984;
          identifier = identifier3;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to bind identifier (%lu) to the select statement", &v27, 0xCu);
        }
      }

      else
      {
        v15 = qword_1000EB210;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sessionID2 = [taskCopy sessionID];
          v27 = 138412290;
          identifier = sessionID2;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to bind sessionID (%@) to the select statement", &v27, 0xCu);
        }
      }
    }

LABEL_21:
    goto LABEL_22;
  }

  v17 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v27) = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "sqlite db not initialized", &v27, 2u);
  }

LABEL_22:
}

- (void)_onqueue_updateRespondedToWillBeginDelayedRequestCallbackForTask:(id)task sessionUUID:(id)d
{
  taskCopy = task;
  dCopy = d;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v24 = 134218242;
    identifier = [taskCopy identifier];
    v26 = 2114;
    v27 = dCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "_onqueue_updateRespondedToWillBeginDelayedRequestCallbackForTask: %lu for session: %{public}@", &v24, 0x16u);
  }

  dbConnection = self->_dbConnection;
  if (dbConnection && self->_dbInitialized)
  {
    p_updateRespondedToWillBeginDelayedRequestCallbackForTaskStmt = &self->_updateRespondedToWillBeginDelayedRequestCallbackForTaskStmt;
    updateRespondedToWillBeginDelayedRequestCallbackForTaskStmt = self->_updateRespondedToWillBeginDelayedRequestCallbackForTaskStmt;
    if (!updateRespondedToWillBeginDelayedRequestCallbackForTaskStmt)
    {
      if (sqlite3_prepare_v2(dbConnection, "UPDATE session_tasks SET responded_to_will_begin_delayed_request_callback = ? WHERE session_id = ? AND identifier = ?", -1, &self->_updateRespondedToWillBeginDelayedRequestCallbackForTaskStmt, 0))
      {
        v14 = qword_1000EB210;
        if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v24) = 0;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to init _updateRespondedToWillBeginDelayedRequestCallbackForTaskStmt for session_tasks", &v24, 2u);
        }

        goto LABEL_12;
      }

      updateRespondedToWillBeginDelayedRequestCallbackForTaskStmt = *p_updateRespondedToWillBeginDelayedRequestCallbackForTaskStmt;
    }

    if (sqlite3_bind_int(updateRespondedToWillBeginDelayedRequestCallbackForTaskStmt, 1, [taskCopy respondedToWillBeginDelayedRequestCallback]))
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        respondedToWillBeginDelayedRequestCallback = [taskCopy respondedToWillBeginDelayedRequestCallback];
        v24 = 134217984;
        identifier = respondedToWillBeginDelayedRequestCallback;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind identifier (%lu) to the select statement", &v24, 0xCu);
      }

LABEL_24:

      goto LABEL_12;
    }

    v15 = *p_updateRespondedToWillBeginDelayedRequestCallbackForTaskStmt;
    sessionID = [taskCopy sessionID];
    v17 = sessionID;
    LOBYTE(v15) = sqlite3_bind_text(v15, 2, [sessionID UTF8String], -1, 0) == 0;

    if ((v15 & 1) == 0)
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sessionID2 = [taskCopy sessionID];
        v24 = 138412290;
        identifier = sessionID2;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind sessionID (%@) to the select statement", &v24, 0xCu);
      }

      goto LABEL_24;
    }

    if (sqlite3_bind_int(*p_updateRespondedToWillBeginDelayedRequestCallbackForTaskStmt, 3, [taskCopy identifier]))
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        identifier2 = [taskCopy identifier];
        v24 = 134217984;
        identifier = identifier2;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind identifier (%lu) to the select statement", &v24, 0xCu);
      }

      goto LABEL_24;
    }

    if (sqlite3_step(*p_updateRespondedToWillBeginDelayedRequestCallbackForTaskStmt) != 101)
    {
      v18 = qword_1000EB210;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        identifier3 = [taskCopy identifier];
        v23 = sqlite3_errmsg(self->_dbConnection);
        v24 = 134218242;
        identifier = identifier3;
        v26 = 2080;
        v27 = v23;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to update respondedToWillBeginDelayedRequestCallback for task %lu into db. Error= %s", &v24, 0x16u);
      }
    }

    sqlite3_reset(*p_updateRespondedToWillBeginDelayedRequestCallbackForTaskStmt);
  }

  else
  {
    v13 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "sqlite db not initialized", &v24, 2u);
    }
  }

LABEL_12:
}

- (void)_onqueue_deleteAllTaskEntriesForSession:(id)session sessionUUID:(id)d
{
  sessionCopy = session;
  dCopy = d;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v23 = dCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "_onqueue_deleteAllTaskEntriesForSession session: %{public}@", buf, 0xCu);
  }

  dbConnection = self->_dbConnection;
  if (!dbConnection || !self->_dbInitialized)
  {
    v15 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "sqlite db not initialized", buf, 2u);
    }

    goto LABEL_11;
  }

  p_deleteEntriesForSessionStmt = &self->_deleteEntriesForSessionStmt;
  deleteEntriesForSessionStmt = self->_deleteEntriesForSessionStmt;
  if (!deleteEntriesForSessionStmt)
  {
    if (sqlite3_prepare_v2(dbConnection, "DELETE FROM session_tasks WHERE session_id = ?", -1, &self->_deleteEntriesForSessionStmt, 0))
    {
      v16 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v14 = "Failed to init _deleteEntriesForSessionStmt for session_tasks";
        v17 = v16;
        v18 = 2;
LABEL_23:
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v14, buf, v18);
        goto LABEL_11;
      }

      goto LABEL_11;
    }

    deleteEntriesForSessionStmt = *p_deleteEntriesForSessionStmt;
  }

  v12 = sessionCopy;
  if (sqlite3_bind_text(deleteEntriesForSessionStmt, 1, [sessionCopy UTF8String], -1, 0))
  {
    v13 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = dCopy;
      v14 = "Failed to bind sessionID (%@) to the select statement";
LABEL_22:
      v17 = v13;
      v18 = 12;
      goto LABEL_23;
    }
  }

  else
  {
    if (sqlite3_step(*p_deleteEntriesForSessionStmt) != 101)
    {
      v19 = qword_1000EB210;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = sqlite3_errmsg(self->_dbConnection);
        *buf = 136315138;
        v23 = v20;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to delete tasks from db. Error= %s", buf, 0xCu);
      }
    }

    sqlite3_reset(*p_deleteEntriesForSessionStmt);
    errmsg = 0;
    if (sqlite3_exec(self->_dbConnection, "PRAGMA incremental_vacuum(10);", 0, 0, &errmsg))
    {
      v13 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v23 = errmsg;
        v14 = "Failed to auto vacuum when garbage collecting: %s";
        goto LABEL_22;
      }
    }
  }

LABEL_11:
}

- (void)_onqueue_deleteEntryForTask:(unint64_t)task forSession:(id)session sessionUUID:(id)d
{
  sessionCopy = session;
  dCopy = d;
  v10 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
  {
    v24 = 134218242;
    taskCopy3 = task;
    v26 = 2114;
    v27 = dCopy;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "_onqueue_deleteEntryForTaskWithIdentifier: %lu for session: %{public}@", &v24, 0x16u);
  }

  dbConnection = self->_dbConnection;
  if (!dbConnection || !self->_dbInitialized)
  {
    v18 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "sqlite db not initialized", &v24, 2u);
    }

    goto LABEL_11;
  }

  p_deleteEntryForTaskStmt = &self->_deleteEntryForTaskStmt;
  deleteEntryForTaskStmt = self->_deleteEntryForTaskStmt;
  if (!deleteEntryForTaskStmt)
  {
    if (sqlite3_prepare_v2(dbConnection, "DELETE FROM session_tasks WHERE session_id = ? AND identifier = ?", -1, &self->_deleteEntryForTaskStmt, 0))
    {
      v19 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v24) = 0;
        v16 = "Failed to init _deleteEntryForTaskStmt for session_tasks";
        v17 = v19;
        v20 = 2;
LABEL_19:
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v16, &v24, v20);
        goto LABEL_11;
      }

      goto LABEL_11;
    }

    deleteEntryForTaskStmt = *p_deleteEntryForTaskStmt;
  }

  v14 = sessionCopy;
  if (sqlite3_bind_text(deleteEntryForTaskStmt, 1, [sessionCopy UTF8String], -1, 0))
  {
    v15 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
    {
      v24 = 138412290;
      taskCopy3 = dCopy;
      v16 = "Failed to bind sessionID (%@) to the select statement";
      v17 = v15;
LABEL_18:
      v20 = 12;
      goto LABEL_19;
    }
  }

  else if (sqlite3_bind_int(*p_deleteEntryForTaskStmt, 2, task))
  {
    v21 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
    {
      v24 = 134217984;
      taskCopy3 = task;
      v16 = "Failed to bind identifier (%lu) to the delete statement";
      v17 = v21;
      goto LABEL_18;
    }
  }

  else
  {
    if (sqlite3_step(*p_deleteEntryForTaskStmt) != 101)
    {
      v22 = qword_1000EB210;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = sqlite3_errmsg(self->_dbConnection);
        v24 = 134218242;
        taskCopy3 = task;
        v26 = 2080;
        v27 = v23;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to delete task with identifier %lu from db. Error= %s", &v24, 0x16u);
      }
    }

    sqlite3_reset(*p_deleteEntryForTaskStmt);
  }

LABEL_11:
}

- (void)_onqueue_updateExpectedProgressTargetForTask:(id)task sessionUUID:(id)d
{
  taskCopy = task;
  dCopy = d;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v24 = 134218242;
    identifier = [taskCopy identifier];
    v26 = 2114;
    v27 = dCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "_onqueue_updateExpectedProgressTargetForTask: %lu for session: %{public}@", &v24, 0x16u);
  }

  dbConnection = self->_dbConnection;
  if (dbConnection && self->_dbInitialized)
  {
    p_updateExpectedProgressTargetForTaskStmt = &self->_updateExpectedProgressTargetForTaskStmt;
    updateExpectedProgressTargetForTaskStmt = self->_updateExpectedProgressTargetForTaskStmt;
    if (!updateExpectedProgressTargetForTaskStmt)
    {
      if (sqlite3_prepare_v2(dbConnection, "UPDATE session_tasks SET expected_progress_target = ? WHERE session_id = ? AND identifier = ?", -1, &self->_updateExpectedProgressTargetForTaskStmt, 0))
      {
        v14 = qword_1000EB210;
        if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v24) = 0;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to init _updateExpectedProgressTargetForTaskStmt for session_tasks", &v24, 2u);
        }

        goto LABEL_12;
      }

      updateExpectedProgressTargetForTaskStmt = *p_updateExpectedProgressTargetForTaskStmt;
    }

    if (sqlite3_bind_int64(updateExpectedProgressTargetForTaskStmt, 1, [taskCopy expectedProgressTarget]))
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        expectedProgressTarget = [taskCopy expectedProgressTarget];
        v24 = 134217984;
        identifier = expectedProgressTarget;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind expectedProgressTarget (%lu) to the select statement", &v24, 0xCu);
      }

LABEL_24:

      goto LABEL_12;
    }

    v15 = *p_updateExpectedProgressTargetForTaskStmt;
    sessionID = [taskCopy sessionID];
    v17 = sessionID;
    LOBYTE(v15) = sqlite3_bind_text(v15, 2, [sessionID UTF8String], -1, 0) == 0;

    if ((v15 & 1) == 0)
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sessionID2 = [taskCopy sessionID];
        v24 = 138412290;
        identifier = sessionID2;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind sessionID (%@) to the select statement", &v24, 0xCu);
      }

      goto LABEL_24;
    }

    if (sqlite3_bind_int(*p_updateExpectedProgressTargetForTaskStmt, 3, [taskCopy identifier]))
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        identifier2 = [taskCopy identifier];
        v24 = 134217984;
        identifier = identifier2;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind identifier (%lu) to the select statement", &v24, 0xCu);
      }

      goto LABEL_24;
    }

    if (sqlite3_step(*p_updateExpectedProgressTargetForTaskStmt) != 101)
    {
      v18 = qword_1000EB210;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        identifier3 = [taskCopy identifier];
        v23 = sqlite3_errmsg(self->_dbConnection);
        v24 = 134218242;
        identifier = identifier3;
        v26 = 2080;
        v27 = v23;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to update expectedProgressTarget for task %lu into db. Error= %s", &v24, 0x16u);
      }
    }

    sqlite3_reset(*p_updateExpectedProgressTargetForTaskStmt);
  }

  else
  {
    v13 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "sqlite db not initialized", &v24, 2u);
    }
  }

LABEL_12:
}

- (void)_onqueue_updateLoadingPriorityForTask:(id)task sessionUUID:(id)d
{
  taskCopy = task;
  dCopy = d;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v25 = 134218242;
    identifier = [taskCopy identifier];
    v27 = 2114;
    v28 = dCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "_onqueue_updateLoadingPriorityForTask: %lu for session: %{public}@", &v25, 0x16u);
  }

  dbConnection = self->_dbConnection;
  if (dbConnection && self->_dbInitialized)
  {
    p_updateLoadingPriorityForTaskStmt = &self->_updateLoadingPriorityForTaskStmt;
    updateLoadingPriorityForTaskStmt = self->_updateLoadingPriorityForTaskStmt;
    if (!updateLoadingPriorityForTaskStmt)
    {
      if (sqlite3_prepare_v2(dbConnection, "UPDATE session_tasks SET loading_priority = ? WHERE session_id = ? AND identifier = ?", -1, &self->_updateLoadingPriorityForTaskStmt, 0))
      {
        v15 = qword_1000EB210;
        if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v25) = 0;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to init _updateLoadingPriorityForTaskStmt for session_tasks", &v25, 2u);
        }

        goto LABEL_12;
      }

      updateLoadingPriorityForTaskStmt = *p_updateLoadingPriorityForTaskStmt;
    }

    [taskCopy loadingPriority];
    if (sqlite3_bind_double(updateLoadingPriorityForTaskStmt, 1, v12))
    {
      v13 = qword_1000EB210;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [taskCopy loadingPriority];
        v25 = 134217984;
        identifier = v20;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to bind loadingPriority (%f) to the select statement", &v25, 0xCu);
      }

LABEL_24:

      goto LABEL_12;
    }

    v16 = *p_updateLoadingPriorityForTaskStmt;
    sessionID = [taskCopy sessionID];
    v18 = sessionID;
    LOBYTE(v16) = sqlite3_bind_text(v16, 2, [sessionID UTF8String], -1, 0) == 0;

    if ((v16 & 1) == 0)
    {
      v13 = qword_1000EB210;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sessionID2 = [taskCopy sessionID];
        v25 = 138412290;
        identifier = sessionID2;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to bind sessionID (%@) to the select statement", &v25, 0xCu);
      }

      goto LABEL_24;
    }

    if (sqlite3_bind_int(*p_updateLoadingPriorityForTaskStmt, 3, [taskCopy identifier]))
    {
      v13 = qword_1000EB210;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        identifier2 = [taskCopy identifier];
        v25 = 134217984;
        identifier = identifier2;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to bind identifier (%lu) to the select statement", &v25, 0xCu);
      }

      goto LABEL_24;
    }

    if (sqlite3_step(*p_updateLoadingPriorityForTaskStmt) != 101)
    {
      v19 = qword_1000EB210;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        identifier3 = [taskCopy identifier];
        v24 = sqlite3_errmsg(self->_dbConnection);
        v25 = 134218242;
        identifier = identifier3;
        v27 = 2080;
        v28 = v24;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to update loadingPriority for task %lu into db. Error= %s", &v25, 0x16u);
      }
    }

    sqlite3_reset(*p_updateLoadingPriorityForTaskStmt);
  }

  else
  {
    v14 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "sqlite db not initialized", &v25, 2u);
    }
  }

LABEL_12:
}

- (void)_onqueue_updateBytesPerSecondLimitForTask:(id)task sessionUUID:(id)d
{
  taskCopy = task;
  dCopy = d;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v24 = 134218242;
    identifier = [taskCopy identifier];
    v26 = 2114;
    v27 = dCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "_onqueue_updateBytesPerSecondLimitForTask: %lu for session: %{public}@", &v24, 0x16u);
  }

  dbConnection = self->_dbConnection;
  if (dbConnection && self->_dbInitialized)
  {
    p_updateBytesPerSecondLimitForTaskStmt = &self->_updateBytesPerSecondLimitForTaskStmt;
    updateBytesPerSecondLimitForTaskStmt = self->_updateBytesPerSecondLimitForTaskStmt;
    if (!updateBytesPerSecondLimitForTaskStmt)
    {
      if (sqlite3_prepare_v2(dbConnection, "UPDATE session_tasks SET bytes_per_second_limit = ? WHERE session_id = ? AND identifier = ?", -1, &self->_updateBytesPerSecondLimitForTaskStmt, 0))
      {
        v14 = qword_1000EB210;
        if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v24) = 0;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to init _updateBytesPerSecondLimitForTaskStmt for session_tasks", &v24, 2u);
        }

        goto LABEL_12;
      }

      updateBytesPerSecondLimitForTaskStmt = *p_updateBytesPerSecondLimitForTaskStmt;
    }

    if (sqlite3_bind_int64(updateBytesPerSecondLimitForTaskStmt, 1, [taskCopy bytesPerSecondLimit]))
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        bytesPerSecondLimit = [taskCopy bytesPerSecondLimit];
        v24 = 134217984;
        identifier = bytesPerSecondLimit;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind bytesPerSecondLimit (%lu) to the select statement", &v24, 0xCu);
      }

LABEL_24:

      goto LABEL_12;
    }

    v15 = *p_updateBytesPerSecondLimitForTaskStmt;
    sessionID = [taskCopy sessionID];
    v17 = sessionID;
    LOBYTE(v15) = sqlite3_bind_text(v15, 2, [sessionID UTF8String], -1, 0) == 0;

    if ((v15 & 1) == 0)
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sessionID2 = [taskCopy sessionID];
        v24 = 138412290;
        identifier = sessionID2;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind sessionID (%@) to the select statement", &v24, 0xCu);
      }

      goto LABEL_24;
    }

    if (sqlite3_bind_int(*p_updateBytesPerSecondLimitForTaskStmt, 3, [taskCopy identifier]))
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        identifier2 = [taskCopy identifier];
        v24 = 134217984;
        identifier = identifier2;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind identifier (%lu) to the select statement", &v24, 0xCu);
      }

      goto LABEL_24;
    }

    if (sqlite3_step(*p_updateBytesPerSecondLimitForTaskStmt) != 101)
    {
      v18 = qword_1000EB210;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        identifier3 = [taskCopy identifier];
        v23 = sqlite3_errmsg(self->_dbConnection);
        v24 = 134218242;
        identifier = identifier3;
        v26 = 2080;
        v27 = v23;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to update bytesPerSecondLimit for task %lu into db. Error= %s", &v24, 0x16u);
      }
    }

    sqlite3_reset(*p_updateBytesPerSecondLimitForTaskStmt);
  }

  else
  {
    v13 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "sqlite db not initialized", &v24, 2u);
    }
  }

LABEL_12:
}

- (void)_onqueue_updateTLSSupportedProtocolVersionForTask:(id)task sessionUUID:(id)d
{
  taskCopy = task;
  dCopy = d;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v25 = 134218242;
    identifier = [taskCopy identifier];
    v27 = 2114;
    v28 = dCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "_onqueue_updateTLSSupportedProtocolVersionForTask: %lu, for session: %{public}@", &v25, 0x16u);
  }

  dbConnection = self->_dbConnection;
  if (dbConnection && self->_dbInitialized)
  {
    p_updateTLSSupportedProtocolVersionForTaskStmt = &self->_updateTLSSupportedProtocolVersionForTaskStmt;
    updateTLSSupportedProtocolVersionForTaskStmt = self->_updateTLSSupportedProtocolVersionForTaskStmt;
    if (!updateTLSSupportedProtocolVersionForTaskStmt)
    {
      if (sqlite3_prepare_v2(dbConnection, "UPDATE session_tasks SET tls_minimum_supported_protocol_version = ?, tls_maximum_supported_protocol_version = ? WHERE session_id = ? AND identifier = ?", -1, &self->_updateTLSSupportedProtocolVersionForTaskStmt, 0))
      {
        v14 = qword_1000EB210;
        if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v25) = 0;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to init _updateTLSSupportedProtocolVersionForTaskStmt for session_tasks", &v25, 2u);
        }

        goto LABEL_12;
      }

      updateTLSSupportedProtocolVersionForTaskStmt = *p_updateTLSSupportedProtocolVersionForTaskStmt;
    }

    if (sqlite3_bind_int(updateTLSSupportedProtocolVersionForTaskStmt, 1, [taskCopy _TLSMinimumSupportedProtocolVersion]))
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        _TLSMinimumSupportedProtocolVersion = [taskCopy _TLSMinimumSupportedProtocolVersion];
        v25 = 134217984;
        identifier = _TLSMinimumSupportedProtocolVersion;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind _TLSMinimumSupportedProtocolVersion (%lu) to the select statement", &v25, 0xCu);
      }

LABEL_28:

      goto LABEL_12;
    }

    if (sqlite3_bind_int(*p_updateTLSSupportedProtocolVersionForTaskStmt, 2, [taskCopy _TLSMaximumSupportedProtocolVersion]))
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        _TLSMaximumSupportedProtocolVersion = [taskCopy _TLSMaximumSupportedProtocolVersion];
        v25 = 134217984;
        identifier = _TLSMaximumSupportedProtocolVersion;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind _TLSMaximumSupportedProtocolVersion (%lu) to the select statement", &v25, 0xCu);
      }

      goto LABEL_28;
    }

    v15 = *p_updateTLSSupportedProtocolVersionForTaskStmt;
    sessionID = [taskCopy sessionID];
    v17 = sessionID;
    LOBYTE(v15) = sqlite3_bind_text(v15, 3, [sessionID UTF8String], -1, 0) == 0;

    if ((v15 & 1) == 0)
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sessionID2 = [taskCopy sessionID];
        v25 = 138412290;
        identifier = sessionID2;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind sessionID (%@) to the select statement", &v25, 0xCu);
      }

      goto LABEL_28;
    }

    if (sqlite3_bind_int(*p_updateTLSSupportedProtocolVersionForTaskStmt, 4, [taskCopy identifier]))
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        identifier2 = [taskCopy identifier];
        v25 = 134217984;
        identifier = identifier2;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind identifier (%lu) to the select statement", &v25, 0xCu);
      }

      goto LABEL_28;
    }

    if (sqlite3_step(*p_updateTLSSupportedProtocolVersionForTaskStmt) != 101)
    {
      v19 = qword_1000EB210;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        identifier3 = [taskCopy identifier];
        v24 = sqlite3_errmsg(self->_dbConnection);
        v25 = 134218242;
        identifier = identifier3;
        v27 = 2080;
        v28 = v24;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to update TLSSupportedProtocolVersions for task %lu into db. Error= %s", &v25, 0x16u);
      }
    }

    sqlite3_reset(*p_updateTLSSupportedProtocolVersionForTaskStmt);
  }

  else
  {
    v13 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "sqlite db not initialized", &v25, 2u);
    }
  }

LABEL_12:
}

- (void)_onqueue_updateCurrentRequestForTask:(id)task sessionUUID:(id)d
{
  taskCopy = task;
  dCopy = d;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v27 = 134218242;
    identifier = [taskCopy identifier];
    v29 = 2114;
    v30 = dCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "_onqueue_updateCurrentRequestForTask: %lu for session: %{public}@", &v27, 0x16u);
  }

  dbConnection = self->_dbConnection;
  if (dbConnection && self->_dbInitialized)
  {
    p_updateCurrentRequestForTaskStmt = &self->_updateCurrentRequestForTaskStmt;
    if (!self->_updateCurrentRequestForTaskStmt && sqlite3_prepare_v2(dbConnection, "UPDATE session_tasks SET current_request = ? WHERE session_id = ? AND identifier = ?", -1, &self->_updateCurrentRequestForTaskStmt, 0))
    {
      v17 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v27) = 0;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to init _updateCurrentRequestForTaskStmt for session_tasks", &v27, 2u);
      }

      goto LABEL_28;
    }

    currentRequest = [taskCopy currentRequest];
    v12 = [NSKeyedArchiver archivedDataWithRootObject:currentRequest requiringSecureCoding:1 error:0];

    v13 = *p_updateCurrentRequestForTaskStmt;
    v14 = v12;
    if (sqlite3_bind_blob(v13, 1, [v12 bytes], objc_msgSend(v12, "length"), 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v27) = 0;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to bind currentRequestData to the select statement", &v27, 2u);
      }
    }

    else
    {
      v18 = *p_updateCurrentRequestForTaskStmt;
      sessionID = [taskCopy sessionID];
      v20 = sessionID;
      LOBYTE(v18) = sqlite3_bind_text(v18, 2, [sessionID UTF8String], -1, 0) == 0;

      if (v18)
      {
        if (!sqlite3_bind_int(*p_updateCurrentRequestForTaskStmt, 3, [taskCopy identifier]))
        {
          if (sqlite3_step(*p_updateCurrentRequestForTaskStmt) != 101)
          {
            v22 = qword_1000EB210;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              identifier2 = [taskCopy identifier];
              v26 = sqlite3_errmsg(self->_dbConnection);
              v27 = 134218242;
              identifier = identifier2;
              v29 = 2080;
              v30 = v26;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to update currentRequest for task %lu into db. Error= %s", &v27, 0x16u);
            }
          }

          sqlite3_reset(*p_updateCurrentRequestForTaskStmt);
          goto LABEL_27;
        }

        v21 = qword_1000EB210;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          identifier3 = [taskCopy identifier];
          v27 = 134217984;
          identifier = identifier3;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to bind identifier (%lu) to the select statement", &v27, 0xCu);
        }
      }

      else
      {
        v21 = qword_1000EB210;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sessionID2 = [taskCopy sessionID];
          v27 = 138412290;
          identifier = sessionID2;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to bind sessionID (%@) to the select statement", &v27, 0xCu);
        }
      }
    }

LABEL_27:

    goto LABEL_28;
  }

  v16 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v27) = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "sqlite db not initialized", &v27, 2u);
  }

LABEL_28:
}

- (void)_onqueue_updateShouldCancelOnDisconnectForTask:(id)task sessionUUID:(id)d
{
  taskCopy = task;
  dCopy = d;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v24 = 134218242;
    identifier = [taskCopy identifier];
    v26 = 2114;
    v27 = dCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "_onqueue_updateShouldCancelOnDisconnectForTask: %lu for session: %{public}@", &v24, 0x16u);
  }

  dbConnection = self->_dbConnection;
  if (dbConnection && self->_dbInitialized)
  {
    p_updateShouldCancelOnDisconnectForTaskStmt = &self->_updateShouldCancelOnDisconnectForTaskStmt;
    updateShouldCancelOnDisconnectForTaskStmt = self->_updateShouldCancelOnDisconnectForTaskStmt;
    if (!updateShouldCancelOnDisconnectForTaskStmt)
    {
      if (sqlite3_prepare_v2(dbConnection, "UPDATE session_tasks SET should_cancel_on_disconnect = ? WHERE session_id = ? AND identifier = ?", -1, &self->_updateShouldCancelOnDisconnectForTaskStmt, 0))
      {
        v14 = qword_1000EB210;
        if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v24) = 0;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to init _updateShouldCancelOnDisconnectForTaskStmt for session_tasks", &v24, 2u);
        }

        goto LABEL_12;
      }

      updateShouldCancelOnDisconnectForTaskStmt = *p_updateShouldCancelOnDisconnectForTaskStmt;
    }

    if (sqlite3_bind_int(updateShouldCancelOnDisconnectForTaskStmt, 1, [taskCopy shouldCancelOnDisconnect]))
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        shouldCancelOnDisconnect = [taskCopy shouldCancelOnDisconnect];
        v24 = 134217984;
        identifier = shouldCancelOnDisconnect;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind shouldCancelOnDisconnect (%lu) to the select statement", &v24, 0xCu);
      }

LABEL_24:

      goto LABEL_12;
    }

    v15 = *p_updateShouldCancelOnDisconnectForTaskStmt;
    sessionID = [taskCopy sessionID];
    v17 = sessionID;
    LOBYTE(v15) = sqlite3_bind_text(v15, 2, [sessionID UTF8String], -1, 0) == 0;

    if ((v15 & 1) == 0)
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sessionID2 = [taskCopy sessionID];
        v24 = 138412290;
        identifier = sessionID2;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind sessionID (%@) to the select statement", &v24, 0xCu);
      }

      goto LABEL_24;
    }

    if (sqlite3_bind_int(*p_updateShouldCancelOnDisconnectForTaskStmt, 3, [taskCopy identifier]))
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        identifier2 = [taskCopy identifier];
        v24 = 134217984;
        identifier = identifier2;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind identifier (%lu) to the select statement", &v24, 0xCu);
      }

      goto LABEL_24;
    }

    if (sqlite3_step(*p_updateShouldCancelOnDisconnectForTaskStmt) != 101)
    {
      v18 = qword_1000EB210;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        identifier3 = [taskCopy identifier];
        v23 = sqlite3_errmsg(self->_dbConnection);
        v24 = 134218242;
        identifier = identifier3;
        v26 = 2080;
        v27 = v23;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to update shouldCancelOnDisconnect for task %lu into db. Error= %s", &v24, 0x16u);
      }
    }

    sqlite3_reset(*p_updateShouldCancelOnDisconnectForTaskStmt);
  }

  else
  {
    v13 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "sqlite db not initialized", &v24, 2u);
    }
  }

LABEL_12:
}

- (void)_onqueue_updateTaskDescriptionForTask:(id)task sessionUUID:(id)d
{
  taskCopy = task;
  dCopy = d;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v27 = 134218242;
    identifier = [taskCopy identifier];
    v29 = 2114;
    v30 = dCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "_onqueue_updateTaskDescriptionForTask: %lu for session: %{public}@", &v27, 0x16u);
  }

  dbConnection = self->_dbConnection;
  if (dbConnection && self->_dbInitialized)
  {
    p_updateTaskDescriptionForTaskStmt = &self->_updateTaskDescriptionForTaskStmt;
    updateTaskDescriptionForTaskStmt = self->_updateTaskDescriptionForTaskStmt;
    if (!updateTaskDescriptionForTaskStmt)
    {
      if (sqlite3_prepare_v2(dbConnection, "UPDATE session_tasks SET task_description = ? WHERE session_id = ? AND identifier = ?", -1, &self->_updateTaskDescriptionForTaskStmt, 0))
      {
        v17 = qword_1000EB210;
        if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v27) = 0;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to init _updateTaskDescriptionForTaskStmt for session_tasks", &v27, 2u);
        }

        goto LABEL_12;
      }

      updateTaskDescriptionForTaskStmt = *p_updateTaskDescriptionForTaskStmt;
    }

    taskDescription = [taskCopy taskDescription];
    v13 = taskDescription;
    v14 = sqlite3_bind_text(updateTaskDescriptionForTaskStmt, 1, [taskDescription UTF8String], -1, 0) == 0;

    if (!v14)
    {
      v15 = qword_1000EB210;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        taskDescription2 = [taskCopy taskDescription];
        v27 = 138412290;
        identifier = taskDescription2;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to bind taskDescription (%@) to the select statement", &v27, 0xCu);
      }

LABEL_24:

      goto LABEL_12;
    }

    v18 = *p_updateTaskDescriptionForTaskStmt;
    sessionID = [taskCopy sessionID];
    v20 = sessionID;
    LOBYTE(v18) = sqlite3_bind_text(v18, 2, [sessionID UTF8String], -1, 0) == 0;

    if ((v18 & 1) == 0)
    {
      v15 = qword_1000EB210;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sessionID2 = [taskCopy sessionID];
        v27 = 138412290;
        identifier = sessionID2;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to bind sessionID (%@) to the select statement", &v27, 0xCu);
      }

      goto LABEL_24;
    }

    if (sqlite3_bind_int(*p_updateTaskDescriptionForTaskStmt, 3, [taskCopy identifier]))
    {
      v15 = qword_1000EB210;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        identifier2 = [taskCopy identifier];
        v27 = 134217984;
        identifier = identifier2;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to bind identifier (%lu) to the select statement", &v27, 0xCu);
      }

      goto LABEL_24;
    }

    if (sqlite3_step(*p_updateTaskDescriptionForTaskStmt) != 101)
    {
      v21 = qword_1000EB210;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        identifier3 = [taskCopy identifier];
        v26 = sqlite3_errmsg(self->_dbConnection);
        v27 = 134218242;
        identifier = identifier3;
        v29 = 2080;
        v30 = v26;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to update task description for task %lu into db. Error= %s", &v27, 0x16u);
      }
    }

    sqlite3_reset(*p_updateTaskDescriptionForTaskStmt);
  }

  else
  {
    v16 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "sqlite db not initialized", &v27, 2u);
    }
  }

LABEL_12:
}

- (void)_onqueue_updateResumableUploadDataForTask:(id)task sessionUUID:(id)d
{
  taskCopy = task;
  dCopy = d;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v26 = 134218242;
    identifier = [taskCopy identifier];
    v28 = 2114;
    v29 = dCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "_onqueue_updateResumableUploadDataForTask: %lu for session: %{public}@", &v26, 0x16u);
  }

  dbConnection = self->_dbConnection;
  if (dbConnection && self->_dbInitialized)
  {
    p_updateResumableUploadDataForTaskStmt = &self->_updateResumableUploadDataForTaskStmt;
    if (!self->_updateResumableUploadDataForTaskStmt && sqlite3_prepare_v2(dbConnection, "UPDATE session_tasks SET resumable_upload_data = ? WHERE session_id = ? AND identifier = ?", -1, &self->_updateResumableUploadDataForTaskStmt, 0))
    {
      v16 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v26) = 0;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to init _updateResumableUploadDataForTaskStmt for session_tasks", &v26, 2u);
      }

      goto LABEL_28;
    }

    resumableUploadData = [taskCopy resumableUploadData];
    v12 = *p_updateResumableUploadDataForTaskStmt;
    v13 = resumableUploadData;
    if (sqlite3_bind_blob(v12, 1, [resumableUploadData bytes], objc_msgSend(resumableUploadData, "length"), 0xFFFFFFFFFFFFFFFFLL))
    {
      v14 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v26) = 0;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to bind resumableUploadData to the select statement", &v26, 2u);
      }
    }

    else
    {
      v17 = *p_updateResumableUploadDataForTaskStmt;
      sessionID = [taskCopy sessionID];
      v19 = sessionID;
      LOBYTE(v17) = sqlite3_bind_text(v17, 2, [sessionID UTF8String], -1, 0) == 0;

      if (v17)
      {
        if (!sqlite3_bind_int(*p_updateResumableUploadDataForTaskStmt, 3, [taskCopy identifier]))
        {
          if (sqlite3_step(*p_updateResumableUploadDataForTaskStmt) != 101)
          {
            v21 = qword_1000EB210;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              identifier2 = [taskCopy identifier];
              v25 = sqlite3_errmsg(self->_dbConnection);
              v26 = 134218242;
              identifier = identifier2;
              v28 = 2080;
              v29 = v25;
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to update resumableUploadData for task %lu into db. Error= %s", &v26, 0x16u);
            }
          }

          sqlite3_reset(*p_updateResumableUploadDataForTaskStmt);
          goto LABEL_27;
        }

        v20 = qword_1000EB210;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          identifier3 = [taskCopy identifier];
          v26 = 134217984;
          identifier = identifier3;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to bind identifier (%lu) to the select statement", &v26, 0xCu);
        }
      }

      else
      {
        v20 = qword_1000EB210;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sessionID2 = [taskCopy sessionID];
          v26 = 138412290;
          identifier = sessionID2;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to bind sessionID (%@) to the select statement", &v26, 0xCu);
        }
      }
    }

LABEL_27:

    goto LABEL_28;
  }

  v15 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "sqlite db not initialized", &v26, 2u);
  }

LABEL_28:
}

- (void)_onqueue_updateResponseForTask:(id)task sessionUUID:(id)d
{
  taskCopy = task;
  dCopy = d;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v27 = 134218242;
    identifier = [taskCopy identifier];
    v29 = 2114;
    v30 = dCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "_onqueue_updateResponseForTask: %lu for session: %{public}@", &v27, 0x16u);
  }

  dbConnection = self->_dbConnection;
  if (dbConnection && self->_dbInitialized)
  {
    p_updateResponseForTaskStmt = &self->_updateResponseForTaskStmt;
    if (!self->_updateResponseForTaskStmt && sqlite3_prepare_v2(dbConnection, "UPDATE session_tasks SET response = ? WHERE session_id = ? AND identifier = ?", -1, &self->_updateResponseForTaskStmt, 0))
    {
      v17 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v27) = 0;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to init _updateResponseForTaskStmt for session_tasks", &v27, 2u);
      }

      goto LABEL_28;
    }

    response = [taskCopy response];
    v12 = [NSKeyedArchiver archivedDataWithRootObject:response requiringSecureCoding:1 error:0];

    v13 = *p_updateResponseForTaskStmt;
    v14 = v12;
    if (sqlite3_bind_blob(v13, 1, [v12 bytes], objc_msgSend(v12, "length"), 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v27) = 0;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to bind responseData to the select statement", &v27, 2u);
      }
    }

    else
    {
      v18 = *p_updateResponseForTaskStmt;
      sessionID = [taskCopy sessionID];
      v20 = sessionID;
      LOBYTE(v18) = sqlite3_bind_text(v18, 2, [sessionID UTF8String], -1, 0) == 0;

      if (v18)
      {
        if (!sqlite3_bind_int(*p_updateResponseForTaskStmt, 3, [taskCopy identifier]))
        {
          if (sqlite3_step(*p_updateResponseForTaskStmt) != 101)
          {
            v22 = qword_1000EB210;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              identifier2 = [taskCopy identifier];
              v26 = sqlite3_errmsg(self->_dbConnection);
              v27 = 134218242;
              identifier = identifier2;
              v29 = 2080;
              v30 = v26;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to update response for task %lu into db. Error= %s", &v27, 0x16u);
            }
          }

          sqlite3_reset(*p_updateResponseForTaskStmt);
          goto LABEL_27;
        }

        v21 = qword_1000EB210;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          identifier3 = [taskCopy identifier];
          v27 = 134217984;
          identifier = identifier3;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to bind identifier (%lu) to the select statement", &v27, 0xCu);
        }
      }

      else
      {
        v21 = qword_1000EB210;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sessionID2 = [taskCopy sessionID];
          v27 = 138412290;
          identifier = sessionID2;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to bind sessionID (%@) to the select statement", &v27, 0xCu);
        }
      }
    }

LABEL_27:

    goto LABEL_28;
  }

  v16 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v27) = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "sqlite db not initialized", &v27, 2u);
  }

LABEL_28:
}

- (void)_onqueue_insertOrUpdateAllEntriesForTask:(id)task sessionUUID:(id)d
{
  taskCopy = task;
  dCopy = d;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    identifier = [taskCopy identifier];
    v237 = 2114;
    v238 = dCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "_onqueue_insertOrUpdateAllEntriesForTask: %lu for session: %{public}@", buf, 0x16u);
  }

  dbConnection = self->_dbConnection;
  if (dbConnection && self->_dbInitialized)
  {
    p_insertOrUpdateAllEntriesStmt = &self->_insertOrUpdateAllEntriesStmt;
    insertOrUpdateAllEntriesStmt = self->_insertOrUpdateAllEntriesStmt;
    if (!insertOrUpdateAllEntriesStmt)
    {
      if (sqlite3_prepare_v2(dbConnection, "INSERT OR REPLACE INTO session_tasks(\tidentifier, task_kind, creation_time, state, suspend_count, task_description, original_request, current_request, response, earliest_begin_date,\tresponded_to_will_begin_delayed_request_callback, error, retry_error, file_url, download_file_url, bundle_id, session_id, has_started, should_cancel_on_disconnect,\tbase_priority, base_priority_set_explicitly, discretionary, discretionary_override, unique_identifier, storage_partition_identifier, count_of_bytes_client_expects_to_send,\tcount_of_bytes_client_expects_to_receive, count_of_bytes_received, count_of_bytes_sent, count_of_bytes_expected_to_send, count_of_bytes_expected_to_receive,\tbytes_per_second_limit, persona_unique_string, expected_progress_target, may_be_demoted_to_discretionary, tls_minimum_supported_protocol_version,\ttls_maximum_supported_protocol_version, has_sz_extractor, does_sz_extractor_consume_extracted_data, updated_streaming_zip_modification_date, started_user_initiated,\tadditional_properties, path_to_download_task_file, retry_count, loading_priority, qos, background_trailers, task_metrics,\tav_url, av_destination_url, av_options, av_initialized_with_av_asset, av_temporary_destination_url, av_asset_title, av_asset_artwork_data, av_asset_url, av_asset_download_token,\tav_asset_download_child_download_session_identifier, av_enable_spi_delegate_callbacks, av_download_config, av_asset_options_plist, resumable_upload_data, rowid) \tvalues (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,\t\t\t(SELECT max(rowid) FROM session_tasks)+1)", -1, &self->_insertOrUpdateAllEntriesStmt, 0))
      {
        v12 = qword_1000EB210;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v17 = sqlite3_errmsg(self->_dbConnection);
          *buf = 136315138;
          identifier = v17;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed init the insert statement for session_tasks db. Error = %s", buf, 0xCu);
        }

        goto LABEL_37;
      }

      insertOrUpdateAllEntriesStmt = *p_insertOrUpdateAllEntriesStmt;
    }

    if (sqlite3_bind_int(insertOrUpdateAllEntriesStmt, 1, [taskCopy identifier]))
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        identifier2 = [taskCopy identifier];
        *buf = 134217984;
        identifier = identifier2;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind identifier (%lu) to the select statement", buf, 0xCu);
      }

LABEL_37:

      goto LABEL_12;
    }

    if (sqlite3_bind_int64(*p_insertOrUpdateAllEntriesStmt, 2, [taskCopy taskKind]))
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        taskKind = [taskCopy taskKind];
        *buf = 134217984;
        identifier = taskKind;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind taskKind (%lu) to the select statement", buf, 0xCu);
      }

      goto LABEL_37;
    }

    v14 = *p_insertOrUpdateAllEntriesStmt;
    [taskCopy creationTime];
    if (sqlite3_bind_double(v14, 3, v15))
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [taskCopy creationTime];
        *buf = 134217984;
        identifier = v22;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind creationTime (%f) to the select statement", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (sqlite3_bind_int64(*p_insertOrUpdateAllEntriesStmt, 4, [taskCopy state]))
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        state = [taskCopy state];
        *buf = 134217984;
        identifier = state;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind state (%lu) to the select statement", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (sqlite3_bind_int64(*p_insertOrUpdateAllEntriesStmt, 5, [taskCopy suspendCount]))
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        suspendCount = [taskCopy suspendCount];
        *buf = 134217984;
        identifier = suspendCount;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind suspendCount (%lu) to the select statement", buf, 0xCu);
      }

      goto LABEL_37;
    }

    v19 = *p_insertOrUpdateAllEntriesStmt;
    taskDescription = [taskCopy taskDescription];
    v21 = taskDescription;
    LOBYTE(v19) = sqlite3_bind_text(v19, 6, [taskDescription UTF8String], -1, 0) == 0;

    if ((v19 & 1) == 0)
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        taskDescription2 = [taskCopy taskDescription];
        *buf = 138412290;
        identifier = taskDescription2;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to bind taskDescription (%@) to the select statement", buf, 0xCu);
      }

      goto LABEL_37;
    }

    originalRequest = [taskCopy originalRequest];
    v24 = originalRequest == 0;

    if (v24)
    {
      v26 = 0;
    }

    else
    {
      originalRequest2 = [taskCopy originalRequest];
      v26 = [NSKeyedArchiver archivedDataWithRootObject:originalRequest2 requiringSecureCoding:1 error:0];
    }

    v28 = *p_insertOrUpdateAllEntriesStmt;
    v29 = v26;
    if (sqlite3_bind_blob(v28, 7, [v26 bytes], objc_msgSend(v26, "length"), 0xFFFFFFFFFFFFFFFFLL))
    {
      v30 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to bind originalRequest to the select statement", buf, 2u);
      }

      goto LABEL_306;
    }

    currentRequest = [taskCopy currentRequest];
    v32 = currentRequest == 0;

    if (v32)
    {
      v34 = 0;
    }

    else
    {
      currentRequest2 = [taskCopy currentRequest];
      v34 = [NSKeyedArchiver archivedDataWithRootObject:currentRequest2 requiringSecureCoding:1 error:0];
    }

    v36 = *p_insertOrUpdateAllEntriesStmt;
    v37 = v34;
    if (sqlite3_bind_blob(v36, 8, [v34 bytes], objc_msgSend(v34, "length"), 0xFFFFFFFFFFFFFFFFLL))
    {
      v38 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to bind currentRequestData to the select statement", buf, 2u);
      }

      goto LABEL_305;
    }

    response = [taskCopy response];
    v40 = response == 0;

    if (v40)
    {
      v42 = 0;
    }

    else
    {
      response2 = [taskCopy response];
      v42 = [NSKeyedArchiver archivedDataWithRootObject:response2 requiringSecureCoding:1 error:0];
    }

    v44 = *p_insertOrUpdateAllEntriesStmt;
    v45 = v42;
    if (sqlite3_bind_blob(v44, 9, [v42 bytes], objc_msgSend(v42, "length"), 0xFFFFFFFFFFFFFFFFLL))
    {
      v46 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to bind responseData to the select statement", buf, 2u);
      }

      goto LABEL_304;
    }

    v47 = *p_insertOrUpdateAllEntriesStmt;
    earliestBeginDate = [taskCopy earliestBeginDate];
    [earliestBeginDate timeIntervalSince1970];
    LOBYTE(v47) = sqlite3_bind_double(v47, 10, v49) == 0;

    if ((v47 & 1) == 0)
    {
      v50 = qword_1000EB210;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        earliestBeginDate2 = [taskCopy earliestBeginDate];
        [earliestBeginDate2 timeIntervalSince1970];
        *buf = 134217984;
        identifier = v68;
        _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Failed to bind earlierBeginDate (%f) to the select statement", buf, 0xCu);
      }
    }

    if (sqlite3_bind_int(*p_insertOrUpdateAllEntriesStmt, 11, [taskCopy respondedToWillBeginDelayedRequestCallback]))
    {
      v51 = qword_1000EB210;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        respondedToWillBeginDelayedRequestCallback = [taskCopy respondedToWillBeginDelayedRequestCallback];
        *buf = 134217984;
        identifier = respondedToWillBeginDelayedRequestCallback;
        _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Failed to bind identifier (%lu) to the select statement", buf, 0xCu);
      }

      goto LABEL_304;
    }

    error = [taskCopy error];
    v53 = error == 0;

    if (v53)
    {
      v233 = 0;
    }

    else
    {
      error2 = [taskCopy error];
      v233 = [NSKeyedArchiver archivedDataWithRootObject:error2 requiringSecureCoding:1 error:0];
    }

    v55 = *p_insertOrUpdateAllEntriesStmt;
    v56 = v233;
    if (sqlite3_bind_blob(v55, 12, [v233 bytes], objc_msgSend(v233, "length"), 0xFFFFFFFFFFFFFFFFLL))
    {
      v57 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Failed to bind errorData to the select statement", buf, 2u);
      }

      goto LABEL_303;
    }

    retryError = [taskCopy retryError];
    v59 = retryError == 0;

    if (v59)
    {
      v232 = 0;
    }

    else
    {
      retryError2 = [taskCopy retryError];
      v232 = [NSKeyedArchiver archivedDataWithRootObject:retryError2 requiringSecureCoding:1 error:0];
    }

    v61 = *p_insertOrUpdateAllEntriesStmt;
    v62 = v232;
    if (sqlite3_bind_blob(v61, 13, [v232 bytes], objc_msgSend(v232, "length"), 0xFFFFFFFFFFFFFFFFLL))
    {
      v63 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Failed to bind retryErrorData to the select statement", buf, 2u);
      }

      goto LABEL_302;
    }

    fileURL = [taskCopy fileURL];
    v65 = fileURL == 0;

    if (v65)
    {
      v231 = 0;
    }

    else
    {
      fileURL2 = [taskCopy fileURL];
      v231 = [NSKeyedArchiver archivedDataWithRootObject:fileURL2 requiringSecureCoding:1 error:0];
    }

    v70 = *p_insertOrUpdateAllEntriesStmt;
    v71 = v231;
    if (sqlite3_bind_blob(v70, 14, [v231 bytes], objc_msgSend(v231, "length"), 0xFFFFFFFFFFFFFFFFLL))
    {
      log = qword_1000EB210;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        fileURL3 = [taskCopy fileURL];
        *buf = 138412290;
        identifier = fileURL3;
        _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to bind fileURL (%@) to the select statement", buf, 0xCu);
      }

      goto LABEL_301;
    }

    downloadFileURL = [taskCopy downloadFileURL];
    v74 = downloadFileURL == 0;

    if (v74)
    {
      log = 0;
    }

    else
    {
      downloadFileURL2 = [taskCopy downloadFileURL];
      log = [NSKeyedArchiver archivedDataWithRootObject:downloadFileURL2 requiringSecureCoding:1 error:0];
    }

    v76 = *p_insertOrUpdateAllEntriesStmt;
    v77 = log;
    if (sqlite3_bind_blob(v76, 15, [log bytes], [log length], 0xFFFFFFFFFFFFFFFFLL))
    {
      v78 = qword_1000EB210;
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        downloadFileURL3 = [taskCopy downloadFileURL];
        *buf = 138412290;
        identifier = downloadFileURL3;
        _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "Failed to bind downloadFileURL (%@) to the select statement", buf, 0xCu);
      }

LABEL_120:

LABEL_301:
LABEL_302:

LABEL_303:
LABEL_304:

LABEL_305:
LABEL_306:

      goto LABEL_12;
    }

    v79 = *p_insertOrUpdateAllEntriesStmt;
    bundleID = [taskCopy bundleID];
    v81 = bundleID;
    LOBYTE(v79) = sqlite3_bind_text(v79, 16, [bundleID UTF8String], -1, 0) == 0;

    if ((v79 & 1) == 0)
    {
      v78 = qword_1000EB210;
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        bundleID2 = [taskCopy bundleID];
        *buf = 138543362;
        identifier = bundleID2;
        _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "Failed to bind bundleID (%{public}@) to the select statement", buf, 0xCu);
      }

      goto LABEL_120;
    }

    v82 = *p_insertOrUpdateAllEntriesStmt;
    sessionID = [taskCopy sessionID];
    v84 = sessionID;
    LOBYTE(v82) = sqlite3_bind_text(v82, 17, [sessionID UTF8String], -1, 0) == 0;

    if ((v82 & 1) == 0)
    {
      v78 = qword_1000EB210;
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        sessionID2 = [taskCopy sessionID];
        *buf = 138412290;
        identifier = sessionID2;
        _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "Failed to bind sessionID (%@) to the select statement", buf, 0xCu);
      }

      goto LABEL_120;
    }

    if (sqlite3_bind_int(*p_insertOrUpdateAllEntriesStmt, 18, [taskCopy hasStarted]))
    {
      v78 = qword_1000EB210;
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        hasStarted = [taskCopy hasStarted];
        *buf = 134217984;
        identifier = hasStarted;
        _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "Failed to bind creationTime (%lu) to the select statement", buf, 0xCu);
      }

      goto LABEL_120;
    }

    if (sqlite3_bind_int(*p_insertOrUpdateAllEntriesStmt, 19, [taskCopy shouldCancelOnDisconnect]))
    {
      v78 = qword_1000EB210;
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        shouldCancelOnDisconnect = [taskCopy shouldCancelOnDisconnect];
        *buf = 134217984;
        identifier = shouldCancelOnDisconnect;
        _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "Failed to bind shouldCancelOnDisconnect (%lu) to the select statement", buf, 0xCu);
      }

      goto LABEL_120;
    }

    if (sqlite3_bind_int(*p_insertOrUpdateAllEntriesStmt, 20, [taskCopy basePriority]))
    {
      v78 = qword_1000EB210;
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        basePriority = [taskCopy basePriority];
        *buf = 134217984;
        identifier = basePriority;
        _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "Failed to bind basePriority (%lu) to the select statement", buf, 0xCu);
      }

      goto LABEL_120;
    }

    if (sqlite3_bind_int(*p_insertOrUpdateAllEntriesStmt, 21, [taskCopy basePrioritySetExplicitly]))
    {
      v78 = qword_1000EB210;
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        basePrioritySetExplicitly = [taskCopy basePrioritySetExplicitly];
        *buf = 134217984;
        identifier = basePrioritySetExplicitly;
        _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "Failed to bind basePrioritySetExplicitly (%lu) to the select statement", buf, 0xCu);
      }

      goto LABEL_120;
    }

    if (sqlite3_bind_int(*p_insertOrUpdateAllEntriesStmt, 22, [taskCopy isDiscretionary]))
    {
      v78 = qword_1000EB210;
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        isDiscretionary = [taskCopy isDiscretionary];
        *buf = 134217984;
        identifier = isDiscretionary;
        _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "Failed to bind discretionary (%lu) to the select statement", buf, 0xCu);
      }

      goto LABEL_120;
    }

    if (sqlite3_bind_int(*p_insertOrUpdateAllEntriesStmt, 23, [taskCopy discretionaryOverride]))
    {
      v78 = qword_1000EB210;
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        discretionaryOverride = [taskCopy discretionaryOverride];
        *buf = 134217984;
        identifier = discretionaryOverride;
        _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "Failed to bind discretionaryOverride (%lu) to the select statement", buf, 0xCu);
      }

      goto LABEL_120;
    }

    uniqueIdentifier = [taskCopy uniqueIdentifier];
    [uniqueIdentifier getUUIDBytes:v234];

    if (sqlite3_bind_blob(*p_insertOrUpdateAllEntriesStmt, 24, v234, 16, 0xFFFFFFFFFFFFFFFFLL))
    {
      v92 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "Failed to bind uniqueIdentifier to the select statement", buf, 2u);
      }

      goto LABEL_301;
    }

    v94 = *p_insertOrUpdateAllEntriesStmt;
    storagePartitionIdentifier = [taskCopy storagePartitionIdentifier];
    v96 = storagePartitionIdentifier;
    LOBYTE(v94) = sqlite3_bind_text(v94, 25, [storagePartitionIdentifier UTF8String], -1, 0) == 0;

    if ((v94 & 1) == 0)
    {
      v97 = qword_1000EB210;
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        storagePartitionIdentifier2 = [taskCopy storagePartitionIdentifier];
        *buf = 138412290;
        identifier = storagePartitionIdentifier2;
        _os_log_error_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "Failed to bind storagePartitionIdentifier (%@) to the select statement", buf, 0xCu);
      }

LABEL_183:

      goto LABEL_301;
    }

    if (sqlite3_bind_int64(*p_insertOrUpdateAllEntriesStmt, 26, [taskCopy countOfBytesClientExpectsToSend]))
    {
      v97 = qword_1000EB210;
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        countOfBytesClientExpectsToSend = [taskCopy countOfBytesClientExpectsToSend];
        *buf = 134217984;
        identifier = countOfBytesClientExpectsToSend;
        _os_log_error_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "Failed to bind countOfBytesClientExpectsToSend (%lu) to the select statement", buf, 0xCu);
      }

      goto LABEL_183;
    }

    if (sqlite3_bind_int64(*p_insertOrUpdateAllEntriesStmt, 27, [taskCopy countOfBytesClientExpectsToReceive]))
    {
      v97 = qword_1000EB210;
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        countOfBytesClientExpectsToReceive = [taskCopy countOfBytesClientExpectsToReceive];
        *buf = 134217984;
        identifier = countOfBytesClientExpectsToReceive;
        _os_log_error_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "Failed to bind countOfBytesClientExpectsToReceive (%lu) to the select statement", buf, 0xCu);
      }

      goto LABEL_183;
    }

    if (sqlite3_bind_int64(*p_insertOrUpdateAllEntriesStmt, 28, [taskCopy countOfBytesReceived]))
    {
      v97 = qword_1000EB210;
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        countOfBytesReceived = [taskCopy countOfBytesReceived];
        *buf = 134217984;
        identifier = countOfBytesReceived;
        _os_log_error_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "Failed to bind countOfBytesReceived (%lu) to the select statement", buf, 0xCu);
      }

      goto LABEL_183;
    }

    if (sqlite3_bind_int64(*p_insertOrUpdateAllEntriesStmt, 29, [taskCopy countOfBytesSent]))
    {
      v97 = qword_1000EB210;
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        countOfBytesSent = [taskCopy countOfBytesSent];
        *buf = 134217984;
        identifier = countOfBytesSent;
        _os_log_error_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "Failed to bind countOfBytesSent (%lu) to the select statement", buf, 0xCu);
      }

      goto LABEL_183;
    }

    if (sqlite3_bind_int64(*p_insertOrUpdateAllEntriesStmt, 30, [taskCopy countOfBytesExpectedToSend]))
    {
      v97 = qword_1000EB210;
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        countOfBytesExpectedToSend = [taskCopy countOfBytesExpectedToSend];
        *buf = 134217984;
        identifier = countOfBytesExpectedToSend;
        _os_log_error_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "Failed to bind countOfBytesExpectedToSend (%lu) to the select statement", buf, 0xCu);
      }

      goto LABEL_183;
    }

    if (sqlite3_bind_int64(*p_insertOrUpdateAllEntriesStmt, 31, [taskCopy countOfBytesExpectedToReceive]))
    {
      v97 = qword_1000EB210;
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        countOfBytesExpectedToReceive = [taskCopy countOfBytesExpectedToReceive];
        *buf = 134217984;
        identifier = countOfBytesExpectedToReceive;
        _os_log_error_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "Failed to bind countOfBytesExpectedToReceive (%lu) to the select statement", buf, 0xCu);
      }

      goto LABEL_183;
    }

    if (sqlite3_bind_int64(*p_insertOrUpdateAllEntriesStmt, 32, [taskCopy bytesPerSecondLimit]))
    {
      v97 = qword_1000EB210;
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        bytesPerSecondLimit = [taskCopy bytesPerSecondLimit];
        *buf = 134217984;
        identifier = bytesPerSecondLimit;
        _os_log_error_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "Failed to bind bytesPerSecondLimit (%lu) to the select statement", buf, 0xCu);
      }

      goto LABEL_183;
    }

    v105 = *p_insertOrUpdateAllEntriesStmt;
    personaUniqueString = [taskCopy personaUniqueString];
    v107 = personaUniqueString;
    LOBYTE(v105) = sqlite3_bind_text(v105, 33, [personaUniqueString UTF8String], -1, 0) == 0;

    if ((v105 & 1) == 0)
    {
      v97 = qword_1000EB210;
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        personaUniqueString2 = [taskCopy personaUniqueString];
        *buf = 138412290;
        identifier = personaUniqueString2;
        _os_log_error_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "Failed to bind personaUniqueString (%@) to the select statement", buf, 0xCu);
      }

      goto LABEL_183;
    }

    if (sqlite3_bind_int64(*p_insertOrUpdateAllEntriesStmt, 34, [taskCopy expectedProgressTarget]))
    {
      v97 = qword_1000EB210;
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        expectedProgressTarget = [taskCopy expectedProgressTarget];
        *buf = 134217984;
        identifier = expectedProgressTarget;
        _os_log_error_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "Failed to bind expectedProgressTarget (%lu) to the select statement", buf, 0xCu);
      }

      goto LABEL_183;
    }

    if (sqlite3_bind_int(*p_insertOrUpdateAllEntriesStmt, 35, [taskCopy mayBeDemotedToDiscretionary]))
    {
      v97 = qword_1000EB210;
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        mayBeDemotedToDiscretionary = [taskCopy mayBeDemotedToDiscretionary];
        *buf = 134217984;
        identifier = mayBeDemotedToDiscretionary;
        _os_log_error_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "Failed to bind mayBeDemotedToDiscretionary (%lu) to the select statement", buf, 0xCu);
      }

      goto LABEL_183;
    }

    if (sqlite3_bind_int(*p_insertOrUpdateAllEntriesStmt, 36, [taskCopy _TLSMinimumSupportedProtocolVersion]))
    {
      v97 = qword_1000EB210;
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        _TLSMinimumSupportedProtocolVersion = [taskCopy _TLSMinimumSupportedProtocolVersion];
        *buf = 134217984;
        identifier = _TLSMinimumSupportedProtocolVersion;
        _os_log_error_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "Failed to bind _TLSMinimumSupportedProtocolVersion (%lu) to the select statement", buf, 0xCu);
      }

      goto LABEL_183;
    }

    if (sqlite3_bind_int(*p_insertOrUpdateAllEntriesStmt, 37, [taskCopy _TLSMaximumSupportedProtocolVersion]))
    {
      v97 = qword_1000EB210;
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        _TLSMaximumSupportedProtocolVersion = [taskCopy _TLSMaximumSupportedProtocolVersion];
        *buf = 134217984;
        identifier = _TLSMaximumSupportedProtocolVersion;
        _os_log_error_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "Failed to bind _TLSMaximumSupportedProtocolVersion (%lu) to the select statement", buf, 0xCu);
      }

      goto LABEL_183;
    }

    if (sqlite3_bind_int(*p_insertOrUpdateAllEntriesStmt, 40, [taskCopy _updatedStreamingZipModificationDate]))
    {
      v97 = qword_1000EB210;
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        _updatedStreamingZipModificationDate = [taskCopy _updatedStreamingZipModificationDate];
        *buf = 134217984;
        identifier = _updatedStreamingZipModificationDate;
        _os_log_error_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "Failed to bind _updatedStreamingZipModificationDate (%lu) to the select statement", buf, 0xCu);
      }

      goto LABEL_183;
    }

    if (sqlite3_bind_int(*p_insertOrUpdateAllEntriesStmt, 41, [taskCopy startedUserInitiated]))
    {
      v97 = qword_1000EB210;
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        startedUserInitiated = [taskCopy startedUserInitiated];
        *buf = 134217984;
        identifier = startedUserInitiated;
        _os_log_error_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "Failed to bind startedUserInitiated (%lu) to the select statement", buf, 0xCu);
      }

      goto LABEL_183;
    }

    additionalProperties = [taskCopy additionalProperties];
    v119 = additionalProperties == 0;

    if (v119)
    {
      v227 = 0;
    }

    else
    {
      additionalProperties2 = [taskCopy additionalProperties];
      v227 = [NSKeyedArchiver archivedDataWithRootObject:additionalProperties2 requiringSecureCoding:1 error:0];
    }

    v121 = *p_insertOrUpdateAllEntriesStmt;
    v122 = v227;
    if (sqlite3_bind_blob(v121, 42, [v227 bytes], objc_msgSend(v227, "length"), 0xFFFFFFFFFFFFFFFFLL))
    {
      v123 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v123, OS_LOG_TYPE_ERROR, "Failed to bind additionalProperties to the select statement", buf, 2u);
      }

      goto LABEL_300;
    }

    v124 = *p_insertOrUpdateAllEntriesStmt;
    pathToDownloadTaskFile = [taskCopy pathToDownloadTaskFile];
    v126 = pathToDownloadTaskFile;
    LOBYTE(v124) = sqlite3_bind_text(v124, 43, [pathToDownloadTaskFile UTF8String], -1, 0) == 0;

    if ((v124 & 1) == 0)
    {
      v127 = qword_1000EB210;
      if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
      {
        pathToDownloadTaskFile2 = [taskCopy pathToDownloadTaskFile];
        *buf = 138412290;
        identifier = pathToDownloadTaskFile2;
        _os_log_error_impl(&_mh_execute_header, v127, OS_LOG_TYPE_ERROR, "Failed to bind pathToDownloadTaskFile (%@) to the select statement", buf, 0xCu);
      }
    }

    if (sqlite3_bind_int(*p_insertOrUpdateAllEntriesStmt, 44, [taskCopy retryCount]))
    {
      v129 = qword_1000EB210;
      if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
      {
        retryCount = [taskCopy retryCount];
        *buf = 134217984;
        identifier = retryCount;
        _os_log_error_impl(&_mh_execute_header, v129, OS_LOG_TYPE_ERROR, "Failed to bind retryCount (%lu) to the select statement", buf, 0xCu);
      }

LABEL_205:

LABEL_300:
      goto LABEL_301;
    }

    v131 = *p_insertOrUpdateAllEntriesStmt;
    [taskCopy loadingPriority];
    if (sqlite3_bind_double(v131, 45, v132))
    {
      v129 = qword_1000EB210;
      if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
      {
        [taskCopy loadingPriority];
        *buf = 134217984;
        identifier = v133;
        _os_log_error_impl(&_mh_execute_header, v129, OS_LOG_TYPE_ERROR, "Failed to bind loadingPriority (%f) to the select statement", buf, 0xCu);
      }

      goto LABEL_205;
    }

    if (sqlite3_bind_int64(*p_insertOrUpdateAllEntriesStmt, 46, [taskCopy qos]))
    {
      v129 = qword_1000EB210;
      if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
      {
        v134 = [taskCopy qos];
        *buf = 134217984;
        identifier = v134;
        _os_log_error_impl(&_mh_execute_header, v129, OS_LOG_TYPE_ERROR, "Failed to bind qos (%lu) to the select statement", buf, 0xCu);
      }

      goto LABEL_205;
    }

    _backgroundTrailers = [taskCopy _backgroundTrailers];
    v136 = _backgroundTrailers == 0;

    if (v136)
    {
      v219 = 0;
    }

    else
    {
      _backgroundTrailers2 = [taskCopy _backgroundTrailers];
      v219 = [NSKeyedArchiver archivedDataWithRootObject:_backgroundTrailers2 requiringSecureCoding:1 error:0];
    }

    v138 = *p_insertOrUpdateAllEntriesStmt;
    v139 = v219;
    if (sqlite3_bind_blob(v138, 47, [v219 bytes], objc_msgSend(v219, "length"), 0xFFFFFFFFFFFFFFFFLL))
    {
      v140 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v140, OS_LOG_TYPE_ERROR, "Failed to bind backgroundTrailersData to the select statement", buf, 2u);
      }

      goto LABEL_299;
    }

    taskMetrics = [taskCopy taskMetrics];
    v142 = taskMetrics == 0;

    if (v142)
    {
      v218 = 0;
    }

    else
    {
      taskMetrics2 = [taskCopy taskMetrics];
      v218 = [NSKeyedArchiver archivedDataWithRootObject:taskMetrics2 requiringSecureCoding:1 error:0];
    }

    v144 = *p_insertOrUpdateAllEntriesStmt;
    v145 = v218;
    if (sqlite3_bind_blob(v144, 48, [v218 bytes], objc_msgSend(v218, "length"), 0xFFFFFFFFFFFFFFFFLL))
    {
      v146 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v146, OS_LOG_TYPE_ERROR, "Failed to bind taskMetricsData to the select statement", buf, 2u);
      }

      goto LABEL_298;
    }

    v147 = [taskCopy URL];
    v148 = v147 == 0;

    if (v148)
    {
      v220 = 0;
    }

    else
    {
      v149 = [taskCopy URL];
      v220 = [NSKeyedArchiver archivedDataWithRootObject:v149 requiringSecureCoding:1 error:0];
    }

    v150 = *p_insertOrUpdateAllEntriesStmt;
    v151 = v220;
    if (sqlite3_bind_blob(v150, 49, [v220 bytes], objc_msgSend(v220, "length"), 0xFFFFFFFFFFFFFFFFLL))
    {
      v224 = qword_1000EB210;
      if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
      {
        v152 = [taskCopy URL];
        *buf = 138412290;
        identifier = v152;
        _os_log_error_impl(&_mh_execute_header, v224, OS_LOG_TYPE_ERROR, "Failed to bind URL (%@) to the select statement", buf, 0xCu);
      }

      goto LABEL_297;
    }

    destinationURL = [taskCopy destinationURL];
    v154 = destinationURL == 0;

    if (v154)
    {
      v224 = 0;
    }

    else
    {
      destinationURL2 = [taskCopy destinationURL];
      v224 = [NSKeyedArchiver archivedDataWithRootObject:destinationURL2 requiringSecureCoding:1 error:0];
    }

    v156 = *p_insertOrUpdateAllEntriesStmt;
    v157 = v224;
    if (sqlite3_bind_blob(v156, 50, [v224 bytes], [v224 length], 0))
    {
      v223 = qword_1000EB210;
      if (os_log_type_enabled(v223, OS_LOG_TYPE_ERROR))
      {
        destinationURL3 = [taskCopy destinationURL];
        *buf = 138412290;
        identifier = destinationURL3;
        _os_log_error_impl(&_mh_execute_header, v223, OS_LOG_TYPE_ERROR, "Failed to bind destinationURL (%@) to the select statement", buf, 0xCu);
      }

      goto LABEL_296;
    }

    options = [taskCopy options];
    v160 = options == 0;

    if (v160)
    {
      v223 = 0;
    }

    else
    {
      options2 = [taskCopy options];
      v223 = [NSPropertyListSerialization dataWithPropertyList:options2 format:200 options:0 error:0];
    }

    v162 = *p_insertOrUpdateAllEntriesStmt;
    v163 = v223;
    if (sqlite3_bind_blob(v162, 51, [v223 bytes], [v223 length], 0xFFFFFFFFFFFFFFFFLL))
    {
      v164 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v164, OS_LOG_TYPE_ERROR, "Failed to bind optionsData to the select statement", buf, 2u);
      }

      goto LABEL_296;
    }

    if (sqlite3_bind_int(*p_insertOrUpdateAllEntriesStmt, 52, [taskCopy initializedWithAVAsset]))
    {
      v165 = qword_1000EB210;
      if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
      {
        initializedWithAVAsset = [taskCopy initializedWithAVAsset];
        *buf = 134217984;
        identifier = initializedWithAVAsset;
        _os_log_error_impl(&_mh_execute_header, v165, OS_LOG_TYPE_ERROR, "Failed to bind initializedWithAVAsset (%lu) to the select statement", buf, 0xCu);
      }

      goto LABEL_296;
    }

    temporaryDestinationURL = [taskCopy temporaryDestinationURL];
    v168 = temporaryDestinationURL == 0;

    if (v168)
    {
      v222 = 0;
    }

    else
    {
      temporaryDestinationURL2 = [taskCopy temporaryDestinationURL];
      v222 = [NSKeyedArchiver archivedDataWithRootObject:temporaryDestinationURL2 requiringSecureCoding:1 error:0];
    }

    v170 = *p_insertOrUpdateAllEntriesStmt;
    v171 = v222;
    if (sqlite3_bind_blob(v170, 53, [v222 bytes], objc_msgSend(v222, "length"), 0))
    {
      v172 = qword_1000EB210;
      if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
      {
        temporaryDestinationURL3 = [taskCopy temporaryDestinationURL];
        *buf = 138412290;
        identifier = temporaryDestinationURL3;
        _os_log_error_impl(&_mh_execute_header, v172, OS_LOG_TYPE_ERROR, "Failed to bind temporaryDestinationURL (%@) to the select statement", buf, 0xCu);
      }

LABEL_246:

LABEL_295:
LABEL_296:

LABEL_297:
LABEL_298:

LABEL_299:
      goto LABEL_300;
    }

    v174 = *p_insertOrUpdateAllEntriesStmt;
    assetTitle = [taskCopy assetTitle];
    v176 = assetTitle;
    LOBYTE(v174) = sqlite3_bind_text(v174, 54, [assetTitle UTF8String], -1, 0) == 0;

    if ((v174 & 1) == 0)
    {
      v172 = qword_1000EB210;
      if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
      {
        assetTitle2 = [taskCopy assetTitle];
        *buf = 138412290;
        identifier = assetTitle2;
        _os_log_error_impl(&_mh_execute_header, v172, OS_LOG_TYPE_ERROR, "Failed to bind assetTitle (%@) to the select statement", buf, 0xCu);
      }

      goto LABEL_246;
    }

    v225 = *p_insertOrUpdateAllEntriesStmt;
    assetArtworkData = [taskCopy assetArtworkData];
    v178 = assetArtworkData;
    bytes = [assetArtworkData bytes];
    assetArtworkData2 = [taskCopy assetArtworkData];
    LOBYTE(bytes) = sqlite3_bind_blob(v225, 55, bytes, [assetArtworkData2 length], 0xFFFFFFFFFFFFFFFFLL) == 0;

    if ((bytes & 1) == 0)
    {
      v181 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v181, OS_LOG_TYPE_ERROR, "Failed to bind assetArtworkDataData to the select statement", buf, 2u);
      }

      goto LABEL_295;
    }

    aVAssetURL = [taskCopy AVAssetURL];
    v183 = aVAssetURL == 0;

    if (v183)
    {
      v226 = 0;
    }

    else
    {
      aVAssetURL2 = [taskCopy AVAssetURL];
      v226 = [NSKeyedArchiver archivedDataWithRootObject:aVAssetURL2 requiringSecureCoding:1 error:0];
    }

    v185 = *p_insertOrUpdateAllEntriesStmt;
    v186 = v226;
    if (sqlite3_bind_blob(v185, 56, [v226 bytes], objc_msgSend(v226, "length"), 0))
    {
      v229 = qword_1000EB210;
      if (os_log_type_enabled(v229, OS_LOG_TYPE_ERROR))
      {
        aVAssetURL3 = [taskCopy AVAssetURL];
        *buf = 138412290;
        identifier = aVAssetURL3;
        _os_log_error_impl(&_mh_execute_header, v229, OS_LOG_TYPE_ERROR, "Failed to bind AVAssetURL (%@) to the select statement", buf, 0xCu);
      }

      goto LABEL_294;
    }

    if (sqlite3_bind_int64(*p_insertOrUpdateAllEntriesStmt, 57, [taskCopy AVAssetDownloadToken]))
    {
      v229 = qword_1000EB210;
      if (os_log_type_enabled(v229, OS_LOG_TYPE_ERROR))
      {
        aVAssetDownloadToken = [taskCopy AVAssetDownloadToken];
        *buf = 134217984;
        identifier = aVAssetDownloadToken;
        v189 = "Failed to bind AVAssetDownloadToken (%lu) to the select statement";
LABEL_269:
        v195 = v229;
        v196 = 12;
LABEL_276:
        _os_log_error_impl(&_mh_execute_header, v195, OS_LOG_TYPE_ERROR, v189, buf, v196);
        goto LABEL_294;
      }

      goto LABEL_294;
    }

    v190 = *p_insertOrUpdateAllEntriesStmt;
    avAssetDownloadChildDownloadSessionIdentifier = [taskCopy avAssetDownloadChildDownloadSessionIdentifier];
    v192 = avAssetDownloadChildDownloadSessionIdentifier;
    LOBYTE(v190) = sqlite3_bind_text(v190, 58, [avAssetDownloadChildDownloadSessionIdentifier UTF8String], -1, 0) == 0;

    if ((v190 & 1) == 0)
    {
      v229 = qword_1000EB210;
      if (os_log_type_enabled(v229, OS_LOG_TYPE_ERROR))
      {
        avAssetDownloadChildDownloadSessionIdentifier2 = [taskCopy avAssetDownloadChildDownloadSessionIdentifier];
        *buf = 138412290;
        identifier = avAssetDownloadChildDownloadSessionIdentifier2;
        _os_log_error_impl(&_mh_execute_header, v229, OS_LOG_TYPE_ERROR, "Failed to bind avAssetDownloadChildDownloadSessionIdentifier (%@) to the select statement", buf, 0xCu);
      }

      goto LABEL_294;
    }

    if (sqlite3_bind_int(*p_insertOrUpdateAllEntriesStmt, 59, [taskCopy enableSPIDelegateCallbacks]))
    {
      v229 = qword_1000EB210;
      if (os_log_type_enabled(v229, OS_LOG_TYPE_ERROR))
      {
        enableSPIDelegateCallbacks = [taskCopy enableSPIDelegateCallbacks];
        *buf = 134217984;
        identifier = enableSPIDelegateCallbacks;
        v189 = "Failed to bind enableSPIDelegateCallbacks (%lu) to the select statement";
        goto LABEL_269;
      }

LABEL_294:

      goto LABEL_295;
    }

    downloadConfig = [taskCopy downloadConfig];
    v198 = downloadConfig == 0;

    if (v198)
    {
      v229 = 0;
    }

    else
    {
      downloadConfig2 = [taskCopy downloadConfig];
      v229 = [NSKeyedArchiver archivedDataWithRootObject:downloadConfig2 requiringSecureCoding:1 error:0];
    }

    v200 = *p_insertOrUpdateAllEntriesStmt;
    v201 = v229;
    if (sqlite3_bind_blob(v200, 60, [v229 bytes], [v229 length], 0xFFFFFFFFFFFFFFFFLL))
    {
      v202 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v189 = "Failed to bind downloadConfigData to the select statement";
        v195 = v202;
        v196 = 2;
        goto LABEL_276;
      }

      goto LABEL_294;
    }

    assetOptionsPlist = [taskCopy assetOptionsPlist];
    v204 = assetOptionsPlist == 0;

    if (v204 || ([taskCopy assetOptionsPlist], v205 = objc_claimAutoreleasedReturnValue(), +[NSPropertyListSerialization dataWithPropertyList:format:options:error:](NSPropertyListSerialization, "dataWithPropertyList:format:options:error:", v205, 200, 0, 0), v221 = objc_claimAutoreleasedReturnValue(), v205, !v221))
    {
      v221 = 0;
      v209 = 61;
    }

    else
    {
      v206 = *p_insertOrUpdateAllEntriesStmt;
      v207 = v221;
      if (sqlite3_bind_blob(v206, 61, [v221 bytes], objc_msgSend(v221, "length"), 0xFFFFFFFFFFFFFFFFLL))
      {
        v208 = qword_1000EB210;
        if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v208, OS_LOG_TYPE_ERROR, "Failed to bind assetOptionsData to the select statement", buf, 2u);
        }

LABEL_293:

        goto LABEL_294;
      }

      v209 = 62;
    }

    v216 = v209;
    resumableUploadData = [taskCopy resumableUploadData];
    v210 = *p_insertOrUpdateAllEntriesStmt;
    v211 = resumableUploadData;
    if (sqlite3_bind_blob(v210, v216, [resumableUploadData bytes], objc_msgSend(resumableUploadData, "length"), 0xFFFFFFFFFFFFFFFFLL))
    {
      v212 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v212, OS_LOG_TYPE_ERROR, "Failed to bind resumableUploadData to the select statement", buf, 2u);
      }
    }

    else
    {
      if (sqlite3_step(*p_insertOrUpdateAllEntriesStmt) != 101)
      {
        v213 = qword_1000EB210;
        if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
        {
          identifier3 = [taskCopy identifier];
          v215 = sqlite3_errmsg(self->_dbConnection);
          *buf = 134218242;
          identifier = identifier3;
          v237 = 2080;
          v238 = v215;
          _os_log_error_impl(&_mh_execute_header, v213, OS_LOG_TYPE_ERROR, "Failed to insert task %lu into db. Error= %s", buf, 0x16u);
        }
      }

      sqlite3_reset(*p_insertOrUpdateAllEntriesStmt);
    }

    goto LABEL_293;
  }

  v13 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "sqlite db not initialized", buf, 2u);
  }

LABEL_12:
}

- (id)_onqueue_convertSqlRowToTaskInfoEntry:(sqlite3_stmt *)entry
{
  if (!entry)
  {
    v5 = 0;
LABEL_63:
    v5 = v5;
    v64 = v5;
    goto LABEL_67;
  }

  v5 = objc_alloc_init(__NSCFURLSessionTaskInfo);
  [v5 setIdentifier:{sqlite3_column_int(entry, 0)}];
  [v5 setTaskKind:{sqlite3_column_int64(entry, 1)}];
  [v5 setCreationTime:{sqlite3_column_double(entry, 2)}];
  [v5 setState:{sqlite3_column_int64(entry, 3)}];
  [v5 setSuspendCount:{sqlite3_column_int64(entry, 4)}];
  v6 = sqlite3_column_text(entry, 5);
  if (v6)
  {
    v7 = [NSString stringWithUTF8String:v6];
    [v5 setTaskDescription:v7];
  }

  v79 = [(NDTaskStorageDB *)self _sqlBlobHelper:entry forColumn:6];
  if ([v79 length] <= 0x20000)
  {
    if (v79)
    {
      v8 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v79 error:0];
      [v5 setOriginalRequest:v8];

      originalRequest = [v5 originalRequest];
      _allProtocolProperties = [originalRequest _allProtocolProperties];
      v11 = estimatedPropertyListSize();

      if (v11 > 0x4000)
      {
        v12 = qword_1000EB210;
        if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Dropping oversized protocol properties on request", buf, 2u);
        }

        originalRequest2 = [v5 originalRequest];
        v14 = [originalRequest2 mutableCopy];

        [v14 _removeAllProtocolProperties];
        [v5 setOriginalRequest:v14];
      }
    }

    v78 = [(NDTaskStorageDB *)self _sqlBlobHelper:entry forColumn:7];
    if (v78)
    {
      v15 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v78 error:0];
      [v5 setCurrentRequest:v15];

      currentRequest = [v5 currentRequest];
      _allProtocolProperties2 = [currentRequest _allProtocolProperties];
      v18 = estimatedPropertyListSize();

      if (v18 > 0x4000)
      {
        v19 = qword_1000EB210;
        if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
        {
          *v80 = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Dropping oversized protocol properties on request", v80, 2u);
        }

        currentRequest2 = [v5 currentRequest];
        v21 = [currentRequest2 mutableCopy];

        [v21 _removeAllProtocolProperties];
        [v5 setCurrentRequest:v21];
      }
    }

    v22 = [(NDTaskStorageDB *)self _sqlBlobHelper:entry forColumn:8];
    v67 = v22;
    if (v22)
    {
      v23 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v22 error:0, v22];
      [v5 setResponse:v23];
    }

    if (sqlite3_column_double(entry, 9) != 0.0)
    {
      v24 = [NSDate dateWithTimeIntervalSince1970:?];
      [v5 setEarliestBeginDate:v24];
    }

    [v5 setRespondedToWillBeginDelayedRequestCallback:{sqlite3_column_int(entry, 10) != 0}];
    v77 = [(NDTaskStorageDB *)self _sqlBlobHelper:entry forColumn:11];
    if (v77)
    {
      v25 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v77 error:0];
      [v5 setError:v25];
    }

    v76 = [(NDTaskStorageDB *)self _sqlBlobHelper:entry forColumn:12, v67];
    if (v76)
    {
      v26 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v76 error:0];
      [v5 setRetryError:v26];
    }

    v75 = [(NDTaskStorageDB *)self _sqlBlobHelper:entry forColumn:13];
    if (v75)
    {
      v27 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v75 error:0];
      [v5 setFileURL:v27];
    }

    v74 = [(NDTaskStorageDB *)self _sqlBlobHelper:entry forColumn:14];
    if (v74)
    {
      v28 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v74 error:0];
      [v5 setDownloadFileURL:v28];
    }

    v29 = sqlite3_column_text(entry, 15);
    if (v29)
    {
      v30 = [NSString stringWithUTF8String:v29];
      [v5 setBundleID:v30];
    }

    v31 = sqlite3_column_text(entry, 16);
    if (v31)
    {
      v32 = [NSString stringWithUTF8String:v31];
      [v5 setSessionID:v32];
    }

    [v5 setHasStarted:{sqlite3_column_int(entry, 17) != 0}];
    [v5 setShouldCancelOnDisconnect:{sqlite3_column_int(entry, 18) != 0}];
    [v5 setBasePriority:{sqlite3_column_int(entry, 19)}];
    [v5 setBasePrioritySetExplicitly:{sqlite3_column_int(entry, 20) != 0}];
    [v5 setDiscretionary:{sqlite3_column_int(entry, 21) != 0}];
    [v5 setDiscretionaryOverride:{sqlite3_column_int(entry, 22)}];
    v73 = [(NDTaskStorageDB *)self _sqlBlobHelper:entry forColumn:23];
    if (v73)
    {
      v33 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v73, "bytes")}];
      [v5 setUniqueIdentifier:v33];
    }

    v34 = sqlite3_column_text(entry, 24);
    if (v34)
    {
      v35 = [NSString stringWithUTF8String:v34];
      [v5 setStoragePartitionIdentifier:v35];
    }

    [v5 setCountOfBytesClientExpectsToSend:{sqlite3_column_int64(entry, 25)}];
    [v5 setCountOfBytesClientExpectsToReceive:{sqlite3_column_int64(entry, 26)}];
    [v5 setCountOfBytesReceived:{sqlite3_column_int64(entry, 27)}];
    [v5 setCountOfBytesSent:{sqlite3_column_int64(entry, 28)}];
    [v5 setCountOfBytesExpectedToSend:{sqlite3_column_int64(entry, 29)}];
    [v5 setCountOfBytesExpectedToReceive:{sqlite3_column_int64(entry, 30)}];
    [v5 setBytesPerSecondLimit:{sqlite3_column_int64(entry, 31)}];
    v36 = sqlite3_column_text(entry, 32);
    if (v36)
    {
      v37 = [NSString stringWithUTF8String:v36];
      [v5 setPersonaUniqueString:v37];
    }

    [v5 setExpectedProgressTarget:{sqlite3_column_int64(entry, 33)}];
    [v5 setMayBeDemotedToDiscretionary:{sqlite3_column_int(entry, 34) != 0}];
    [v5 set_TLSMinimumSupportedProtocolVersion:{sqlite3_column_int(entry, 35)}];
    [v5 set_TLSMaximumSupportedProtocolVersion:{sqlite3_column_int(entry, 36)}];
    [v5 set_updatedStreamingZipModificationDate:{sqlite3_column_int(entry, 39) != 0}];
    [v5 setStartedUserInitiated:{sqlite3_column_int(entry, 40) != 0}];
    v72 = [(NDTaskStorageDB *)self _sqlBlobHelper:entry forColumn:41];
    if (v72)
    {
      v38 = +[__NSCFURLSessionXPC taskAdditionalPropertiesClasses];
      v39 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v38 fromData:v72 error:0];
      [v5 setAdditionalProperties:v39];
    }

    v40 = sqlite3_column_text(entry, 42);
    if (v40)
    {
      v41 = [NSString stringWithUTF8String:v40];
      [v5 setPathToDownloadTaskFile:v41];
    }

    [v5 setRetryCount:{sqlite3_column_int(entry, 43)}];
    [v5 setLoadingPriority:{sqlite3_column_double(entry, 44)}];
    [v5 setQos:{sqlite3_column_int64(entry, 45)}];
    v71 = [(NDTaskStorageDB *)self _sqlBlobHelper:entry forColumn:46];
    if (v71)
    {
      v42 = objc_opt_class();
      v43 = [NSKeyedUnarchiver unarchivedDictionaryWithKeysOfClass:v42 objectsOfClass:objc_opt_class() fromData:v71 error:0];
      [v5 set_backgroundTrailers:v43];
    }

    v70 = [(NDTaskStorageDB *)self _sqlBlobHelper:entry forColumn:47];
    if (v70)
    {
      v44 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v70 error:0];
      [v5 setTaskMetrics:v44];
    }

    v69 = [(NDTaskStorageDB *)self _sqlBlobHelper:entry forColumn:48];
    if (v69)
    {
      v45 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v69 error:0];
      [v5 setURL:v45];
    }

    v46 = [(NDTaskStorageDB *)self _sqlBlobHelper:entry forColumn:49];
    if (v46)
    {
      v47 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v46 error:0];
      [v5 setDestinationURL:v47];
    }

    v48 = [(NDTaskStorageDB *)self _sqlBlobHelper:entry forColumn:50];
    if (v48)
    {
      v49 = [NSPropertyListSerialization propertyListWithData:v48 options:0 format:0 error:0];
      [v5 setOptions:v49];
    }

    [v5 setInitializedWithAVAsset:{sqlite3_column_int(entry, 51) != 0}];
    v50 = [(NDTaskStorageDB *)self _sqlBlobHelper:entry forColumn:52];
    if (v50)
    {
      v51 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v50 error:0];
      [v5 setTemporaryDestinationURL:v51];
    }

    v52 = sqlite3_column_text(entry, 53);
    if (v52)
    {
      v53 = [NSString stringWithUTF8String:v52];
      [v5 setAssetTitle:v53];
    }

    v54 = [(NDTaskStorageDB *)self _sqlBlobHelper:entry forColumn:54];
    [v5 setAssetArtworkData:v54];

    v55 = [(NDTaskStorageDB *)self _sqlBlobHelper:entry forColumn:55];
    if (v55)
    {
      v56 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v55 error:0];
      [v5 setAVAssetURL:v56];
    }

    [v5 setAVAssetDownloadToken:{sqlite3_column_int64(entry, 56)}];
    v57 = sqlite3_column_text(entry, 57);
    if (v57)
    {
      v58 = [NSString stringWithUTF8String:v57];
      [v5 setAvAssetDownloadChildDownloadSessionIdentifier:v58];
    }

    [v5 setEnableSPIDelegateCallbacks:{sqlite3_column_int(entry, 58) != 0}];
    v59 = [(NDTaskStorageDB *)self _sqlBlobHelper:entry forColumn:59];
    v60 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v59 error:0];
    [v5 setDownloadConfig:v60];

    v61 = [(NDTaskStorageDB *)self _sqlBlobHelper:entry forColumn:60];
    if (v61)
    {
      v62 = [NSPropertyListSerialization propertyListWithData:v61 options:0 format:0 error:0];
      [v5 setAssetOptionsPlist:v62];
    }

    v63 = [(NDTaskStorageDB *)self _sqlBlobHelper:entry forColumn:61];
    [v5 setResumableUploadData:v63];

    goto LABEL_63;
  }

  v65 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *v82 = 0;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Dropping oversized request", v82, 2u);
  }

  v64 = 0;
LABEL_67:

  return v64;
}

- (id)_sqlBlobHelper:(sqlite3_stmt *)helper forColumn:(int)column
{
  v6 = sqlite3_column_bytes(helper, column);
  if (v6 < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [[NSData alloc] initWithBytes:sqlite3_column_blob(helper length:{column), v6}];
  }

  return v7;
}

- (BOOL)_onqueue_initDB
{
  if (self->_dbInitialized)
  {
    LOBYTE(self) = 1;
  }

  else
  {
    selfCopy = self;
    dbInitializationStarted = self->_dbInitializationStarted;
    LOBYTE(self) = 1;
    if (!dbInitializationStarted)
    {
      selfCopy->_dbInitializationStarted = 1;
      path = selfCopy->_path;
      if (!path)
      {
        v5 = [(NSURL *)selfCopy->_dbDir URLByAppendingPathComponent:@"tasks.sqlite" isDirectory:0];
        v6 = selfCopy->_path;
        selfCopy->_path = v5;

        path = selfCopy->_path;
      }

      if ([(NDTaskStorageDB *)selfCopy _createDBSchemaForPath:path])
      {
        LOBYTE(self) = 1;
        selfCopy->_dbInitialized = 1;
      }

      else
      {
        v7 = qword_1000EB210;
        LODWORD(self) = os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR);
        if (self)
        {
          v8 = selfCopy->_path;
          v10 = 138412290;
          v11 = v8;
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unable to create persistent store for background tasks at location %@.", &v10, 0xCu);
          LOBYTE(self) = 0;
        }
      }
    }
  }

  return self;
}

- (void)_onqueue_garbageCollect
{
  v3 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Garbage collection started", buf, 2u);
  }

  dbConnection = self->_dbConnection;
  if (dbConnection && self->_dbInitialized)
  {
    deleteTaskEntriesStmt = self->_deleteTaskEntriesStmt;
    if (!deleteTaskEntriesStmt)
    {
      if (sqlite3_prepare_v2(dbConnection, "DELETE FROM session_tasks", -1, &self->_deleteTaskEntriesStmt, 0))
      {
        v11 = qword_1000EB210;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v14 = sqlite3_errmsg(self->_dbConnection);
          *buf = 136315138;
          v18 = v14;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to init the _deleteEntriesStmt statement for session_tasks. Error = %s", buf, 0xCu);
        }

        goto LABEL_24;
      }

      deleteTaskEntriesStmt = self->_deleteTaskEntriesStmt;
    }

    if (sqlite3_step(deleteTaskEntriesStmt) != 101)
    {
      v6 = qword_1000EB210;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v12 = sqlite3_errmsg(self->_dbConnection);
        *buf = 136315138;
        v18 = v12;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to delete expired entries from session_tasks table of DB. Error= %s", buf, 0xCu);
      }
    }

    sqlite3_reset(self->_deleteTaskEntriesStmt);
    deleteSessionEntriesStmt = self->_deleteSessionEntriesStmt;
    if (deleteSessionEntriesStmt)
    {
      goto LABEL_11;
    }

    if (!sqlite3_prepare_v2(self->_dbConnection, "DELETE FROM sessions", -1, &self->_deleteSessionEntriesStmt, 0))
    {
      deleteSessionEntriesStmt = self->_deleteSessionEntriesStmt;
LABEL_11:
      if (sqlite3_step(deleteSessionEntriesStmt) != 101)
      {
        v8 = qword_1000EB210;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v13 = sqlite3_errmsg(self->_dbConnection);
          *buf = 136315138;
          v18 = v13;
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to delete expired entries from sessions table of DB. Error= %s", buf, 0xCu);
        }
      }

      sqlite3_reset(self->_deleteSessionEntriesStmt);
      errmsg = 0;
      if (sqlite3_exec(self->_dbConnection, "PRAGMA incremental_vacuum(10);", 0, 0, &errmsg))
      {
        v9 = qword_1000EB210;
        if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v18 = errmsg;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to auto vacuum when garbage collecting: %s", buf, 0xCu);
        }
      }

      return;
    }

    v11 = qword_1000EB210;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = sqlite3_errmsg(self->_dbConnection);
      *buf = 136315138;
      v18 = v15;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to init the _deleteSessionEntriesStmt statement for sessions. Error = %s", buf, 0xCu);
    }

LABEL_24:

    return;
  }

  v10 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sqlite db not initialized", buf, 2u);
  }
}

- (BOOL)_createDBSchemaForPath:(id)path
{
  pathCopy = path;
  fileSystemRepresentation = [pathCopy fileSystemRepresentation];
  v6 = fileSystemRepresentation;
  if (fileSystemRepresentation)
  {
    v7 = dirname_r(fileSystemRepresentation, errmsg);
    v8 = statfs(v7, &v25);
    f_flags = v25.f_flags;
    v10 = [pathCopy checkResourceIsReachableAndReturnError:0];
    if (((v8 != -1) & ((f_flags & 0x80) >> 7)) != 0)
    {
      v11 = 3145734;
    }

    else
    {
      v11 = 6;
    }

    if (sqlite3_open_v2(v6, &self->_dbConnection, v11, 0))
    {
      sqlite3_close(self->_dbConnection);
      v12 = 0;
      self->_dbConnection = 0;
      goto LABEL_36;
    }

    v14 = [NSString stringWithFormat:@"%@%d", @"PRAGMA user_version = ", 3, 0];
    uTF8String = [v14 UTF8String];

    sqlite3_busy_timeout(self->_dbConnection, 1000);
    if (v10)
    {
      if ([(NDTaskStorageDB *)self handleSchemaVersionChange])
      {
LABEL_12:
        v12 = 1;
LABEL_33:
        v21 = qword_1000EB210;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          absoluteString = [pathCopy absoluteString];
          v25.f_bsize = 138412290;
          *&v25.f_iosize = absoluteString;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Opened db at path: %@", &v25, 0xCu);
        }

        goto LABEL_36;
      }

      v18 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v25.f_bsize) = 0;
        v19 = "Failed to handle db version change";
LABEL_24:
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v19, &v25, 2u);
        goto LABEL_32;
      }

      goto LABEL_32;
    }

    if (sqlite3_exec(self->_dbConnection, "PRAGMA auto_vacuum = 2;", 0, 0, errmsg))
    {
      v16 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v25.f_bsize) = 0;
        v17 = "Failed to set auto_vacuum to incremental";
LABEL_38:
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v17, &v25, 2u);
      }
    }

    else
    {
      if (!sqlite3_exec(self->_dbConnection, "PRAGMA journal_mode = WAL", 0, 0, errmsg))
      {
        v20 = 1;
LABEL_21:
        if (sqlite3_exec(self->_dbConnection, uTF8String, 0, 0, errmsg))
        {
          v18 = qword_1000EB210;
          if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v25.f_bsize) = 0;
            v19 = "Failed to set user_version";
            goto LABEL_24;
          }
        }

        else
        {
          if (!v20)
          {
            goto LABEL_32;
          }

          if (sqlite3_exec(self->_dbConnection, "CREATE TABLE IF NOT EXISTS session_tasks (\tidentifier int NOT NULL, task_kind int, creation_time real, state int, suspend_count int, task_description text, original_request blob, current_request blob, response blob,\tearliest_begin_date real, responded_to_will_begin_delayed_request_callback int, error blob, retry_error blob, file_url text, download_file_url text, bundle_id text, session_id text NOT NULL,\thas_started int, should_cancel_on_disconnect int, base_priority int, base_priority_set_explicitly int, discretionary int, discretionary_override int, unique_identifier blob NOT NULL,\tstorage_partition_identifier text, count_of_bytes_client_expects_to_send int, count_of_bytes_client_expects_to_receive int, count_of_bytes_received int, count_of_bytes_sent int,\tcount_of_bytes_expected_to_send int, count_of_bytes_expected_to_receive int, bytes_per_second_limit int, persona_unique_string text, expected_progress_target int, may_be_demoted_to_discretionary int,\ttls_minimum_supported_protocol_version int, tls_maximum_supported_protocol_version int, has_sz_extractor int, does_sz_extractor_consume_extracted_data int, updated_streaming_zip_modification_date int,\tstarted_user_initiated int, additional_properties blob, path_to_download_task_file text, retry_count int, loading_priority real, qos int, background_trailers blob, task_metrics blob,\tav_url text, av_destination_url text, av_options blob, av_initialized_with_av_asset int, av_temporary_destination_url text, av_asset_title text, av_asset_artwork_data blob, av_asset_url text,\tav_asset_download_token int, av_asset_download_child_download_session_identifier text, av_enable_spi_delegate_callbacks int, av_download_config blob, av_asset_options_plist blob, resumable_upload_data blob,\tUNIQUE(identifier, session_id));", 0, 0, errmsg))
          {
            v18 = qword_1000EB210;
            if (!os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_32;
            }

            LOWORD(v25.f_bsize) = 0;
            v19 = "Failed to create tasks schema";
            goto LABEL_24;
          }

          if (!sqlite3_exec(self->_dbConnection, "CREATE TABLE IF NOT EXISTS sessions(bundle_id text NOT NULL, session_id text NOT NULL, options blob, configuration blob, UNIQUE(bundle_id, session_id));", 0, 0, errmsg))
          {
            goto LABEL_12;
          }

          v18 = qword_1000EB210;
          if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v25.f_bsize) = 0;
            v19 = "Failed to create sessions schema";
            goto LABEL_24;
          }
        }

LABEL_32:
        v12 = 0;
        goto LABEL_33;
      }

      v16 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v25.f_bsize) = 0;
        v17 = "Failed to set journal mode";
        goto LABEL_38;
      }
    }

    v20 = 0;
    goto LABEL_21;
  }

  v13 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v25.f_bsize) = 0;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to get dbPath", &v25, 2u);
  }

  v12 = 0;
LABEL_36:

  return v12;
}

- (BOOL)handleSchemaVersionChange
{
  ppStmt = 0;
  dbConnection = self->_dbConnection;
  if (!dbConnection || sqlite3_prepare_v2(dbConnection, "PRAGMA user_version", -1, &ppStmt, 0))
  {
    return 1;
  }

  if (sqlite3_step(ppStmt) == 100)
  {
    v5 = sqlite3_column_int(ppStmt, 0);
    v6 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "schema version on disk is %ld", buf, 0xCu);
    }
  }

  else
  {
    v5 = -1;
  }

  sqlite3_finalize(ppStmt);
  result = 1;
  if ((v5 & 0x8000000000000000) == 0 && v5 != 3)
  {
    return [(NDTaskStorageDB *)self migrateSchemaToLatestVersion:v5];
  }

  return result;
}

- (BOOL)migrateSchemaToLatestVersion:(int64_t)version
{
  errmsg = 0;
  dbConnection = self->_dbConnection;
  if (!dbConnection)
  {
    LOBYTE(v6) = 0;
    return v6;
  }

  v6 = 1;
  if (version <= 1)
  {
    if (version)
    {
      if (version != 1)
      {
        goto LABEL_41;
      }
    }

    else if (sqlite3_exec(dbConnection, "ALTER TABLE session_tasks ADD COLUMN av_asset_options_plist blob;", 0, 0, 0))
    {
      v7 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to migrate to version 1", buf, 2u);
      }

      LOBYTE(v6) = 0;
    }

    if (sqlite3_exec(self->_dbConnection, "ALTER TABLE session_tasks ADD COLUMN resumable_upload_data blob;", 0, 0, 0))
    {
      v8 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to migrate to version 2", buf, 2u);
      }

      LOBYTE(v6) = 0;
    }

    goto LABEL_18;
  }

  if (version == 2)
  {
LABEL_18:
    v9 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Migrating to schema v3", buf, 2u);
    }

    v10 = sqlite3_exec(self->_dbConnection, "CREATE TABLE IF NOT EXISTS sessions(bundle_id text NOT NULL, session_id text NOT NULL, options blob, configuration blob, UNIQUE(bundle_id, session_id));", 0, 0, 0);
    v11 = qword_1000EB210;
    if (v10)
    {
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to migrate to version 3", buf, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Getting all bundle IDs for migration", buf, 2u);
      }

      _onqueue_getAllBundleIDsFromSessionTasks = [(NDTaskStorageDB *)self _onqueue_getAllBundleIDsFromSessionTasks];
      v31 = +[NSFileManager defaultManager];
      v13 = qword_1000EB210;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [_onqueue_getAllBundleIDsFromSessionTasks count];
        *buf = 134217984;
        versionCopy3 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Got bundle IDs (%tu)", buf, 0xCu);
      }

      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10001CAD4;
      v32[3] = &unk_1000D51B0;
      v32[4] = self;
      v15 = v31;
      v33 = v15;
      [_onqueue_getAllBundleIDsFromSessionTasks enumerateObjectsUsingBlock:v32];
      v16 = qword_1000EB210;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = +[NDTaskStorageDB nsurlsessiondPath];
        v18 = [v17 stringByAppendingPathComponent:@"bundles.plist"];
        *buf = 138412290;
        versionCopy3 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Removing item at path: %@", buf, 0xCu);
      }

      v19 = +[NDTaskStorageDB nsurlsessiondPath];
      v20 = [v19 stringByAppendingPathComponent:@"bundles.plist"];
      [NDTaskStorageDB removeItemAtPath:v20];

      if (v6)
      {
        v6 = 1;
LABEL_41:
        v25 = [NSString stringWithFormat:@"%@%d", @"PRAGMA user_version = ", 3];
        v26 = self->_dbConnection;
        v27 = v25;
        if (sqlite3_exec(v26, [v25 UTF8String], 0, 0, &errmsg))
        {
          v28 = qword_1000EB210;
          if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to set user_version", buf, 2u);
          }

          v6 = 0;
        }

        goto LABEL_46;
      }
    }

    v21 = sqlite3_exec(self->_dbConnection, "DROP TABLE IF EXISTS session_tasks", 0, 0, &errmsg);
    v22 = qword_1000EB210;
    if (v21 && os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to drop table", buf, 2u);
      v22 = qword_1000EB210;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      versionCopy3 = version;
      v37 = 1024;
      v38 = 3;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Dropped db table session_tasks as migration from version %ld to %d failed", buf, 0x12u);
    }

    v23 = sqlite3_exec(self->_dbConnection, "DROP TABLE IF EXISTS sessions", 0, 0, &errmsg);
    v24 = qword_1000EB210;
    if (v23 && os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to drop table", buf, 2u);
      v24 = qword_1000EB210;
    }

    v6 = 0;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      versionCopy3 = version;
      v37 = 1024;
      v38 = 3;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Dropped db table sessions as migration from version %ld to %d failed", buf, 0x12u);
      v6 = 0;
    }

    goto LABEL_41;
  }

  if (version != 3)
  {
    goto LABEL_41;
  }

LABEL_46:
  v29 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    versionCopy3 = version;
    v37 = 1024;
    v38 = 3;
    v39 = 1024;
    v40 = v6;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Migrated schema version from %ld to %d success = %d", buf, 0x18u);
  }

  return v6;
}

+ (id)nsurlsessiondPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndex:0];
  v4 = [v3 stringByAppendingPathComponent:@"com.apple.nsurlsessiond"];

  return v4;
}

+ (void)removeItemAtPath:(id)path
{
  pathCopy = path;
  v4 = +[NSFileManager defaultManager];
  v9 = 0;
  v5 = [v4 removeItemAtPath:pathCopy error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    v7 = qword_1000EB210;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      code = [v6 code];
      *buf = 138412802;
      v11 = pathCopy;
      v12 = 2112;
      v13 = v6;
      v14 = 2048;
      v15 = code;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error removing item at path: %@, error: %@ [%ld]", buf, 0x20u);
    }
  }
}

+ (id)_preset_unarchiveObjectWithData:(id)data
{
  dataCopy = data;
  if (qword_1000EB110 != -1)
  {
    dispatch_once(&qword_1000EB110, &stru_1000D5160);
  }

  v9 = 0;
  v4 = [NSKeyedUnarchiver unarchivedObjectOfClasses:qword_1000EB108 fromData:dataCopy error:&v9];
  v5 = v9;
  if (!v4)
  {
    v6 = qword_1000EB210;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      code = [v5 code];
      *buf = 138412546;
      v11 = v5;
      v12 = 1024;
      v13 = code;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failure trying to unarchive data with error: %@ [%d]", buf, 0x12u);
    }
  }

  return v4;
}

@end