@interface SWCDownloadScheduler
- (SWCDownloadScheduler)initWithDownloader:(id)downloader database:(id)database;
- (id)_init;
- (id)_updateableEntries;
- (void)_performUpdateWithActivity:(id)activity;
- (void)_performUpdatesWithTransaction:(id)transaction;
- (void)_scheduleUpdateTimer;
- (void)update;
@end

@implementation SWCDownloadScheduler

- (SWCDownloadScheduler)initWithDownloader:(id)downloader database:(id)database
{
  downloaderCopy = downloader;
  databaseCopy = database;
  v12.receiver = self;
  v12.super_class = SWCDownloadScheduler;
  v9 = [(SWCDownloadScheduler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_downloader, downloader);
    objc_storeStrong(&v10->_database, database);
    v10->_enabled = 1;
  }

  return v10;
}

- (void)update
{
  v3 = os_transaction_create();
  [(SWCDownloadScheduler *)self _performUpdatesWithTransaction:?];
}

- (id)_init
{
  v5.receiver = self;
  v5.super_class = SWCDownloadScheduler;
  v2 = [(SWCDownloadScheduler *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SWCDownloadScheduler *)v2 _scheduleUpdateTimer];
  }

  return v3;
}

- (void)_scheduleUpdateTimer
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
    xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_ALLOW_BATTERY, 1);
    xpc_dictionary_set_int64(v4, XPC_ACTIVITY_INTERVAL, 3600);
    xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
    xpc_dictionary_set_string(v4, XPC_ACTIVITY_NETWORK_TRANSFER_DIRECTION, XPC_ACTIVITY_NETWORK_TRANSFER_DIRECTION_DOWNLOAD);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000121B4;
    handler[3] = &unk_100034DA0;
    handler[4] = self;
    xpc_activity_register("com.apple.SharedWebCredentials.recheck", v4, handler);
  }
}

- (void)_performUpdateWithActivity:(id)activity
{
  activityCopy = activity;
  v5 = os_transaction_create();
  state = xpc_activity_get_state(activityCopy);
  if (qword_10003ACF8 != -1)
  {
    dispatch_once(&qword_10003ACF8, &stru_100034DE8);
  }

  v7 = qword_10003ACF0;
  if (os_log_type_enabled(qword_10003ACF0, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v16 = state;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Update activity state: %lli", buf, 0xCu);
    if (state == 2)
    {
      if (qword_10003ACF8 != -1)
      {
        dispatch_once(&qword_10003ACF8, &stru_100034DE8);
      }

      goto LABEL_8;
    }

    if (qword_10003ACF8 != -1)
    {
      dispatch_once(&qword_10003ACF8, &stru_100034DE8);
    }
  }

  else if (state == 2)
  {
LABEL_8:
    v8 = qword_10003ACF0;
    if (os_log_type_enabled(qword_10003ACF0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Performing SWC update.", buf, 2u);
    }

    if (xpc_activity_set_state(activityCopy, 4))
    {
      v9 = +[SWCDatabase queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100012538;
      block[3] = &unk_100034DC8;
      block[4] = self;
      v13 = v5;
      v14 = activityCopy;
      dispatch_async(v9, block);
    }

    else
    {
      if (qword_10003ACF8 != -1)
      {
        dispatch_once(&qword_10003ACF8, &stru_100034DE8);
      }

      v11 = qword_10003ACF0;
      if (os_log_type_enabled(qword_10003ACF0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Continue activity state failed; downloads will not proceed at this time.", buf, 2u);
      }
    }

    goto LABEL_20;
  }

  v10 = qword_10003ACF0;
  if (os_log_type_enabled(qword_10003ACF0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v16 = state;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Activity block was fired with state %lli; not running now.", buf, 0xCu);
  }

LABEL_20:
}

- (id)_updateableEntries
{
  v3 = objc_alloc_init(NSMutableOrderedSet);
  v4 = +[NSDate date];
  database = self->_database;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000126A0;
  v14 = &unk_100034CE0;
  v6 = v4;
  v15 = v6;
  v7 = v3;
  v16 = v7;
  [(SWCDatabase *)database enumerateEntriesWithBlock:&v11];
  if (![v7 count])
  {

    v7 = 0;
  }

  v8 = v16;
  v9 = v7;

  return v7;
}

- (void)_performUpdatesWithTransaction:(id)transaction
{
  if ([(SWCDownloadScheduler *)self isEnabled])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    _updateableEntries = [(SWCDownloadScheduler *)self _updateableEntries];
    v5 = [_updateableEntries countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v5)
    {
      v7 = *v18;
      *&v6 = 138412290;
      v16 = v6;
      do
      {
        v8 = 0;
        do
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(_updateableEntries);
          }

          v9 = *(*(&v17 + 1) + 8 * v8);
          if ([v9 needsFirstDownload])
          {
            downloader = self->_downloader;
            domain = [v9 domain];
            applicationIdentifier = [v9 applicationIdentifier];
            [(SWCDownloader *)downloader downloadAASAFileForDomain:domain applicationIdentifier:applicationIdentifier completionHandler:0];
          }

          else
          {
            if (qword_10003ACF8 != -1)
            {
              dispatch_once(&qword_10003ACF8, &stru_100034DE8);
            }

            v13 = qword_10003ACF0;
            if (os_log_type_enabled(qword_10003ACF0, OS_LOG_TYPE_DEBUG))
            {
              *buf = v16;
              v22 = v9;
              _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Updating entry %@", buf, 0xCu);
            }

            v14 = self->_downloader;
            domain = [v9 domain];
            applicationIdentifier = [v9 applicationIdentifier];
            [(SWCDownloader *)v14 updateAASAFileForDomain:domain applicationIdentifier:applicationIdentifier completionHandler:0];
          }

          v8 = v8 + 1;
        }

        while (v5 != v8);
        v5 = [_updateableEntries countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v5);
    }
  }

  else
  {
    if (qword_10003ACF8 != -1)
    {
      dispatch_once(&qword_10003ACF8, &stru_100034DE8);
    }

    v15 = qword_10003ACF0;
    if (os_log_type_enabled(qword_10003ACF0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Ignoring call to schedule downloads because the scheduler is disabled", buf, 2u);
    }
  }
}

@end