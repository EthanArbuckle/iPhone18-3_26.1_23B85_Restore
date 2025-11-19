@interface ReadingListFetcher
+ (id)sharedReadingListFetcher;
- (BOOL)_allBackgroundTaskAgentJobsAreUnsatisfied;
- (BOOL)_anyBackgroundTaskAgentJobIsScheduled;
- (BOOL)_rescheduleRestartingServiceBTAJobWithJob:(id)a3;
- (BOOL)_shouldLoadBookmarkConsideringPreviousAttempts:(id)a3;
- (ReadingListFetcher)init;
- (double)currentProgress;
- (id)_nextItemToFetch;
- (id)connectionPropertiesForLocallyAddedItem:(BOOL)a3;
- (id)pendingBookmarkChangesFilePath;
- (unint64_t)_diskSpaceAvailable;
- (void)_cancelFetchIfNecessary;
- (void)_createOrResetPowerAssertion;
- (void)_fetchNextItem;
- (void)_initBackgroundTaskAgentJobs;
- (void)_powerlog:(id)a3;
- (void)_queueChangeForBookmark:(id)a3 key:(id)a4 value:(id)a5;
- (void)_refreshRemainingItemCount;
- (void)_releasePowerAssertion;
- (void)_removePendingChangesFileIfPossible;
- (void)_scheduleBTAJobsWithDelayIfNecessary;
- (void)_scheduleBTATimerFired;
- (void)_scheduleOrRemoveBackgroundTaskAgentJobs;
- (void)_scheduleRestartingServiceBTAJobWithDelay:(double)a3;
- (void)_startFetchingInternal;
- (void)_stopFetchingInternal;
- (void)_unscheduleAllBTAJobs;
- (void)_writeChangesInMemoryToPlist;
- (void)applyPendingBookmarkChanges;
- (void)applyPendingBookmarkChangesSoon;
- (void)backgroundTaskAgentJobDidBecomeSatisfied:(id)a3 withJobDetails:(id)a4;
- (void)backgroundTaskAgentJobDidBecomeUnsatisfied:(id)a3 withJobDetails:(id)a4;
- (void)backgroundTaskAgentJobDidExpire:(id)a3 withJobDetails:(id)a4;
- (void)backgroundTaskAgentJobDidGetJobRequestError:(id)a3 withJobDetails:(id)a4;
- (void)clearChangesForBookmark:(id)a3;
- (void)dealloc;
- (void)didFinishFetchingDocument:(id)a3;
- (void)document:(id)a3 didUpdateProgress:(double)a4;
- (void)queueChangeForBookmark:(id)a3 archiveStatus:(int64_t)a4;
- (void)start;
- (void)tryApplyPendingBookmarkChanges;
- (void)updateArchivingMode;
- (void)willStartFetchingReaderPage:(id)a3;
@end

@implementation ReadingListFetcher

- (ReadingListFetcher)init
{
  v16.receiver = self;
  v16.super_class = ReadingListFetcher;
  v2 = [(ReadingListFetcher *)&v16 init];
  if (v2)
  {
    v2->_readingListCellularFetchingEnabled = MGGetBoolAnswer();
    [(ReadingListFetcher *)v2 _initBackgroundTaskAgentJobs];
    v2->_powerAssertionID = 0;
    [(ReadingListFetcher *)v2 updateArchivingMode];
    v3 = [(ReadingListFetcher *)v2 pendingBookmarkChangesFilePath];
    v4 = [NSData dataWithContentsOfFile:v3];

    if (v4)
    {
      v15 = 0;
      v5 = [NSPropertyListSerialization propertyListWithData:v4 options:2 format:0 error:&v15];
      v6 = v15;
      if (v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&v2->_pendingBookmarkChanges, v5);
          v7 = [(NSMutableDictionary *)v2->_pendingBookmarkChanges objectForKey:@"CompletedItemCount"];
          v2->_completedItemCount = [v7 unsignedIntegerValue];
          [(ReadingListFetcher *)v2 tryApplyPendingBookmarkChanges];
          v8 = v2;

LABEL_13:
          goto LABEL_14;
        }

        v10 = sub_100009E64();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_100009EE0();
        }
      }

      else
      {
        v9 = sub_100009E64();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [v6 safari_privacyPreservingDescription];
          objc_claimAutoreleasedReturnValue();
          sub_100009F14();
        }
      }
    }

    v11 = objc_alloc_init(NSMutableDictionary);
    pendingBookmarkChanges = v2->_pendingBookmarkChanges;
    v2->_pendingBookmarkChanges = v11;

    v13 = v2;
    goto LABEL_13;
  }

LABEL_14:

  return v2;
}

+ (id)sharedReadingListFetcher
{
  v2 = qword_100022D38;
  if (!qword_100022D38)
  {
    v3 = objc_alloc_init(ReadingListFetcher);
    v4 = qword_100022D38;
    qword_100022D38 = v3;

    v2 = qword_100022D38;
  }

  return v2;
}

- (void)dealloc
{
  [(ReadingListFetcher *)self _releasePowerAssertion];
  v3.receiver = self;
  v3.super_class = ReadingListFetcher;
  [(ReadingListFetcher *)&v3 dealloc];
}

- (void)_scheduleBTAJobsWithDelayIfNecessary
{
  if (!self->_delayBeforeSchedulingBTATimer)
  {
    if (!dword_100022D44)
    {
      mach_timebase_info(&dword_100022D40);
    }

    v3 = mach_absolute_time() * dword_100022D40 / dword_100022D44;
    v4 = (v3 / 0x3B9ACA00);
    v5 = sub_100009E64();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100009F58(v5, (v3 / 0x3B9ACA00));
    }

    if (v3 > 0x8BB2C96FFFLL || (+[NSUserDefaults safari_browserDefaults](NSUserDefaults, "safari_browserDefaults"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 BOOLForKey:_SFReadingListFetcherScheduleBackgroundTasksImmediatelyKey], v6, (v7 & 1) != 0))
    {
      [(ReadingListFetcher *)self _scheduleOrRemoveBackgroundTaskAgentJobs];
    }

    else
    {
      v8 = [NSTimer scheduledTimerWithTimeInterval:self target:"_scheduleBTATimerFired" selector:0 userInfo:0 repeats:600.0 - v4];
      delayBeforeSchedulingBTATimer = self->_delayBeforeSchedulingBTATimer;
      self->_delayBeforeSchedulingBTATimer = v8;
    }
  }
}

- (void)_scheduleBTATimerFired
{
  delayBeforeSchedulingBTATimer = self->_delayBeforeSchedulingBTATimer;
  self->_delayBeforeSchedulingBTATimer = 0;

  [(ReadingListFetcher *)self _scheduleOrRemoveBackgroundTaskAgentJobs];
}

- (void)start
{
  if (self->_bookmarkToFetch)
  {
    v3 = sub_100009E64();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100009FD4();
    }

    [(ReadingListFetcher *)self _cancelFetchIfNecessary];
    [(ReadingListFetcher *)self _refreshRemainingItemCount];
  }

  [(ReadingListFetcher *)self _scheduleBTAJobsWithDelayIfNecessary];
}

- (void)_fetchNextItem
{
  v3 = [(ReadingListFetcher *)self _nextItemToFetch];
  bookmarkToFetch = self->_bookmarkToFetch;
  self->_bookmarkToFetch = v3;

  v5 = self->_itemsAttemptedToFetch + 1;
  self->_itemsAttemptedToFetch = v5;
  if (v5 >= 6)
  {
    v6 = self->_bookmarkToFetch;
    self->_aborted = v6 != 0;
    self->_bookmarkToFetch = 0;
  }

  v7 = self->_bookmarkToFetch;
  v8 = sub_100009E64();
  if (v7)
  {
    v9 = v8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [(WebBookmark *)self->_bookmarkToFetch address];
      v11 = [(WebBookmark *)self->_bookmarkToFetch UUID];
      sub_10000A008(v10, v11, v33, v9);
    }

    if ([(ReadingListFetcher *)self _shouldLoadBookmarkConsideringPreviousAttempts:self->_bookmarkToFetch])
    {
      if ([(ReadingListFetcher *)self _isDiskSpaceLow])
      {
        v12 = sub_100009E64();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Disk space is low, attempting to reclaim space", buf, 2u);
        }

        v13 = +[WebBookmarkCollection safariBookmarkCollection];
        v14 = [v13 rollOutLastReadingListItem];

        if ((v14 & 1) == 0)
        {
          v15 = sub_100009E64();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_10000A0AC();
          }

          if (+[WebBookmarkCollection lockSync])
          {
            [(WebBookmark *)self->_bookmarkToFetch setArchiveStatus:5];
            v16 = +[WebBookmarkCollection safariBookmarkCollection];
            v17 = [v16 saveBookmark:self->_bookmarkToFetch startReadingListFetcher:0];

            if ((v17 & 1) == 0)
            {
              [(ReadingListFetcher *)self queueChangeForBookmark:self->_bookmarkToFetch archiveStatus:5];
            }

            +[WebBookmarkCollection unlockSync];
          }

          else
          {
            v28 = sub_100009E64();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              sub_10000A0E0();
            }
          }

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100002E30;
          block[3] = &unk_10001C740;
          block[4] = self;
          dispatch_async(&_dispatch_main_q, block);
          return;
        }
      }

      else
      {
        v21 = +[WebBookmarkCollection safariBookmarkCollection];
        [v21 rollOutReadingListItemIfNeededToMakeRoomForOneNewItem];
      }

      v31[0] = @"subevent";
      v31[1] = @"item";
      v32[0] = @"startItemFetch";
      v22 = [(WebBookmark *)self->_bookmarkToFetch UUID];
      v32[1] = v22;
      v23 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
      [(ReadingListFetcher *)self _powerlog:v23];

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, WebBookmarksReadingListFetchingNotification, 0, 0, 0);
      if (self->_document)
      {
        v25 = sub_100009E64();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_10000A114();
        }

        [(ReadingListFetcherDocument *)self->_document clearWebView];
      }

      v26 = objc_alloc_init(ReadingListFetcherDocument);
      document = self->_document;
      self->_document = v26;

      [(ReadingListFetcherDocument *)self->_document loadBookmark:self->_bookmarkToFetch];
      [(ReadingListFetcher *)self _createOrResetPowerAssertion];
    }

    else
    {
      v20 = sub_100009E64();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10000A078();
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10000A148();
    }

    v18 = +[SafariFetcherServer sharedServer];
    [v18 deliverReadingListFetchingProgress:1.0];

    v19 = sub_100009E64();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_10000A17C();
    }

    [(NSMutableDictionary *)self->_pendingBookmarkChanges removeObjectForKey:@"CompletedItemCount"];
    self->_completedItemCount = 0;
    self->_remainingItemCount = 0;
    [(ReadingListFetcher *)self _scheduleOrRemoveBackgroundTaskAgentJobs];
    [(ReadingListFetcher *)self _stopFetchingInternal];
  }
}

- (BOOL)_shouldLoadBookmarkConsideringPreviousAttempts:(id)a3
{
  v4 = a3;
  v5 = [v4 UUID];
  v6 = [(NSMutableDictionary *)self->_pendingBookmarkChanges objectForKey:v5];
  v7 = v6;
  if (!v6)
  {
    v13 = sub_100009E64();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v34[0] = v5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Attempting initial load of Reading List item with UUID %{public}@", buf, 0xCu);
    }

    v14 = [NSMutableDictionary alloc];
    v15 = [NSNumber numberWithUnsignedShort:1, @"NumFailedLoads"];
    v32 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v7 = [v14 initWithDictionary:v16];

    [(NSMutableDictionary *)self->_pendingBookmarkChanges setObject:v7 forKey:v5];
    if (+[WebBookmarkCollection lockSync])
    {
      [v4 setArchiveStatus:3];
      v17 = +[WebBookmarkCollection safariBookmarkCollection];
      v18 = [v17 saveBookmark:v4 startReadingListFetcher:0];

      if ((v18 & 1) == 0)
      {
        [(ReadingListFetcher *)self queueChangeForBookmark:v4 archiveStatus:3];
      }

      +[WebBookmarkCollection unlockSync];
    }

    else
    {
      v29 = sub_100009E64();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_10000A2B0(v5, v29);
      }
    }

    goto LABEL_22;
  }

  v8 = [v6 objectForKey:@"NumFailedLoads"];
  v9 = [v8 unsignedShortValue];

  if (v9 < 3)
  {
    v10 = v9 + 1;
    v11 = [NSNumber numberWithUnsignedShort:v10];
    [v7 setObject:v11 forKey:@"NumFailedLoads"];

    v12 = sub_100009E64();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      LODWORD(v34[0]) = v10;
      WORD2(v34[0]) = 2114;
      *(v34 + 6) = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Attempting subsequent load %ud of Reading List item with UUID %{public}@", buf, 0x12u);
    }

    [(NSMutableDictionary *)self->_pendingBookmarkChanges setObject:v7 forKey:v5];
LABEL_22:
    [(ReadingListFetcher *)self _writeChangesInMemoryToPlist];
    v28 = 1;
    goto LABEL_23;
  }

  v19 = sub_100009E64();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_10000A1B0(v5, v19);
  }

  v20 = +[WebBookmarkCollection lockSync];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_16;
  }

  [v4 setArchiveStatus:4];
  v22 = +[NSDate date];
  [v4 setDateLastArchived:v22];

  v23 = +[WebBookmarkCollection safariBookmarkCollection];
  v24 = [v23 saveBookmark:v4 startReadingListFetcher:0];

  +[WebBookmarkCollection unlockSync];
  if ((v24 & 1) == 0)
  {
LABEL_16:
    v25 = sub_100009E64();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10000A228(v21, v25);
    }

    [(ReadingListFetcher *)self queueChangeForBookmark:v4 archiveStatus:4];
    v26 = +[NSDate date];
    [(ReadingListFetcher *)self queueChangeForBookmark:v4 dateLastArchived:v26];
  }

  v27 = +[SafariFetcherServer sharedServer];
  [v27 deliverReadingListFetchingDidStopForItemWithUUID:v5];

  [(ReadingListFetcher *)self didFinishFetchingDocument:0];
  v28 = 0;
LABEL_23:

  return v28;
}

- (double)currentProgress
{
  result = 0.0;
  if (*&self->_completedItemCount != 0)
  {
    completedItemCount = self->_completedItemCount;
    [(ReadingListFetcherDocument *)self->_document progress];
    return (v5 + completedItemCount) / (self->_completedItemCount + self->_remainingItemCount);
  }

  return result;
}

- (void)document:(id)a3 didUpdateProgress:(double)a4
{
  if (self->_document == a3)
  {
    v6 = +[SafariFetcherServer sharedServer];
    [(ReadingListFetcher *)self currentProgress];
    [v6 deliverReadingListFetchingProgress:?];

    v7 = sub_100009E64();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10000A35C();
    }
  }

  else
  {
    v4 = sub_100009E64();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000A328();
    }
  }
}

- (void)willStartFetchingReaderPage:(id)a3
{
  if (self->_document == a3)
  {

    [(ReadingListFetcher *)self _createOrResetPowerAssertion];
  }

  else
  {
    v4 = sub_100009E64();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000A390();
    }
  }
}

- (void)didFinishFetchingDocument:(id)a3
{
  v4 = a3;
  document = self->_document;
  if (document && ![(ReadingListFetcherDocument *)document wasCancelled])
  {
    v6 = ![(ReadingListFetcherDocument *)self->_document loadFailed];
  }

  else
  {
    v6 = 0;
  }

  bookmarkToFetch = self->_bookmarkToFetch;
  if (bookmarkToFetch)
  {
    v19[0] = @"subevent";
    v19[1] = @"item";
    v20[0] = @"endItemFetch";
    v8 = [(WebBookmark *)bookmarkToFetch UUID];
    v20[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    [(ReadingListFetcher *)self _powerlog:v9];
  }

  [(ReadingListFetcherDocument *)self->_document clearWebView];
  v10 = self->_document;
  self->_document = 0;

  v11 = self->_bookmarkToFetch;
  self->_bookmarkToFetch = 0;

  if (!v6)
  {
    v17 = sub_100009E64();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10000A3C4();
    }

    if (self->_aborted)
    {
      goto LABEL_14;
    }

LABEL_15:
    [(ReadingListFetcher *)self _writeChangesInMemoryToPlist];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000037C4;
    v18[3] = &unk_10001C740;
    v18[4] = self;
    dispatch_async(&_dispatch_main_q, v18);
    goto LABEL_16;
  }

  ++self->_completedItemCount;
  [(ReadingListFetcher *)self _refreshRemainingItemCount];
  pendingBookmarkChanges = self->_pendingBookmarkChanges;
  v13 = [NSNumber numberWithUnsignedInteger:self->_completedItemCount];
  [(NSMutableDictionary *)pendingBookmarkChanges setObject:v13 forKey:@"CompletedItemCount"];

  if (!self->_aborted)
  {
    goto LABEL_15;
  }

  v14 = [(ReadingListFetcher *)self _nextItemToFetch];
  v15 = v14 == 0;

  if (v15)
  {
    v16 = +[SafariFetcherServer sharedServer];
    [v16 deliverReadingListFetchingProgress:1.0];

    [(NSMutableDictionary *)self->_pendingBookmarkChanges removeObjectForKey:@"CompletedItemCount"];
    self->_completedItemCount = 0;
    self->_remainingItemCount = 0;
    [(ReadingListFetcher *)self _scheduleOrRemoveBackgroundTaskAgentJobs];
  }

LABEL_14:
  [(ReadingListFetcher *)self _stopFetchingInternal];
LABEL_16:
}

- (void)tryApplyPendingBookmarkChanges
{
  if ([(NSMutableDictionary *)self->_pendingBookmarkChanges count])
  {
    if ((+[WebBookmarkCollection lockSync]& 1) != 0)
    {
      [(NSTimer *)self->_retryBookmarkChangesTimer invalidate];
      retryBookmarkChangesTimer = self->_retryBookmarkChangesTimer;
      self->_retryBookmarkChangesTimer = 0;

      [(ReadingListFetcher *)self applyPendingBookmarkChanges];
      +[WebBookmarkCollection unlockSync];
      if (byte_100022D48 == 1)
      {
        xpc_transaction_end();
        byte_100022D48 = 0;
      }
    }

    else
    {
      v4 = sub_100009E64();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Failed to acquire lock when attempting to apply pending bookmark changes, will retry soon", v5, 2u);
      }

      if ((byte_100022D48 & 1) == 0)
      {
        xpc_transaction_begin();
        byte_100022D48 = 1;
      }

      [(ReadingListFetcher *)self applyPendingBookmarkChangesSoon];
    }
  }
}

- (void)applyPendingBookmarkChanges
{
  v3 = sub_100009E64();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000A3F8();
  }

  v4 = objc_alloc_init(NSMutableArray);
  v5 = +[WebBookmarkCollection safariBookmarkCollection];
  pendingBookmarkChanges = self->_pendingBookmarkChanges;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000039F8;
  v12 = &unk_10001C768;
  v7 = v5;
  v13 = v7;
  v8 = v4;
  v14 = v8;
  [(NSMutableDictionary *)pendingBookmarkChanges enumerateKeysAndObjectsUsingBlock:&v9];
  [(NSMutableDictionary *)self->_pendingBookmarkChanges removeObjectsForKeys:v8, v9, v10, v11, v12];
  [(ReadingListFetcher *)self _writeChangesInMemoryToPlist];
}

- (void)applyPendingBookmarkChangesSoon
{
  [(NSTimer *)self->_retryBookmarkChangesTimer invalidate];
  v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"tryApplyPendingBookmarkChanges" selector:0 userInfo:0 repeats:3.0];
  retryBookmarkChangesTimer = self->_retryBookmarkChangesTimer;
  self->_retryBookmarkChangesTimer = v3;

  _objc_release_x1();
}

- (id)pendingBookmarkChangesFilePath
{
  v2 = +[WebBookmarkCollection readingListArchivesDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"PendingBookmarkChanges.plist"];

  return v3;
}

- (void)_writeChangesInMemoryToPlist
{
  if ([(NSMutableDictionary *)self->_pendingBookmarkChanges count])
  {
    v3 = [(NSMutableDictionary *)self->_pendingBookmarkChanges copy];
    v4 = dispatch_get_global_queue(-2, 0);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100003E10;
    v6[3] = &unk_10001C790;
    v7 = v3;
    v8 = self;
    v5 = v3;
    dispatch_async(v4, v6);
  }

  else
  {

    [(ReadingListFetcher *)self _removePendingChangesFileIfPossible];
  }
}

- (void)_removePendingChangesFileIfPossible
{
  if (![(NSMutableDictionary *)self->_pendingBookmarkChanges count])
  {
    v3 = dispatch_get_global_queue(-2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000409C;
    block[3] = &unk_10001C740;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

- (id)_nextItemToFetch
{
  v3 = +[NSUserDefaults safari_browserDefaults];
  v4 = [v3 safari_shouldAutomaticallyDownloadReadingListItems];

  v5 = +[WebBookmarkCollection safariBookmarkCollection];
  v6 = [v5 firstReadingListBookmarkNeedingArchiveInMode:self->_archivingMode automaticArchivingEnabled:v4];

  pendingBookmarkChanges = self->_pendingBookmarkChanges;
  v31 = v6;
  v8 = [v6 UUID];
  v9 = [(NSMutableDictionary *)pendingBookmarkChanges objectForKey:v8];

  v30 = v9;
  v33 = [v9 objectForKey:@"NumFailedLoads"];
  if (v9 && v33 && (![v31 shouldReattemptArchiveWithAutomaticArchivingEnabled:v4] || !objc_msgSend(v33, "unsignedIntegerValue")))
  {
    v11 = +[WebBookmarkCollection safariBookmarkCollection];
    v12 = [v11 readingListBookmarksNeedingArchiveInMode:self->_archivingMode automaticArchivingEnabled:v4];

    v29 = v12;
    [v12 bookmarkArray];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    obj = v35 = 0u;
    v10 = 0;
    v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v13)
    {
      v14 = *v35;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v34 + 1) + 8 * i);
          v17 = self->_pendingBookmarkChanges;
          v18 = [v16 UUID];
          v19 = [(NSMutableDictionary *)v17 objectForKey:v18];

          if (!v19 || ([v19 objectForKey:@"NumFailedLoads"], v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 == 0, v20, v21))
          {
            v27 = v16;

            v26 = v10;
            v10 = v27;
            goto LABEL_21;
          }

          if (!v10)
          {
            v22 = [v19 objectForKey:@"ArchiveStatus"];
            v23 = [v22 unsignedIntValue];

            v24 = [v19 objectForKey:@"NumFailedLoads"];
            v25 = [v24 unsignedShortValue];

            v10 = 0;
            if (v23 == 3 && v25 <= 3)
            {
              v10 = v16;
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v26 = obj;
LABEL_21:
  }

  else
  {
    v10 = v31;
  }

  return v10;
}

- (void)_refreshRemainingItemCount
{
  remainingItemCount = self->_remainingItemCount;
  v4 = +[NSUserDefaults safari_browserDefaults];
  v5 = [v4 safari_shouldAutomaticallyDownloadReadingListItems];

  v6 = +[WebBookmarkCollection safariBookmarkCollection];
  self->_remainingItemCount = [v6 countReadingListBookmarksNeedingArchiveInMode:self->_archivingMode automaticArchivingEnabled:v5];

  if (remainingItemCount != self->_remainingItemCount)
  {
    v7 = +[SafariFetcherServer sharedServer];
    [(ReadingListFetcher *)self currentProgress];
    [v7 deliverReadingListFetchingProgress:?];

    v8 = sub_100009E64();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10000A53C();
    }
  }
}

- (void)_cancelFetchIfNecessary
{
  if (self->_bookmarkToFetch)
  {
    v3 = +[WebBookmarkCollection safariBookmarkCollection];
    v4 = [(WebBookmark *)self->_bookmarkToFetch UUID];
    v5 = [v3 bookmarkWithUUID:v4];

    if (!v5)
    {
      document = self->_document;

      [(ReadingListFetcherDocument *)document cancelLoad];
    }
  }
}

- (void)_createOrResetPowerAssertion
{
  p_powerAssertionID = &self->_powerAssertionID;
  powerAssertionID = self->_powerAssertionID;
  if (powerAssertionID)
  {
    v4 = IOPMAssertionSetProperty(powerAssertionID, @"TimeoutSeconds", &off_10001CF18);
    if (v4)
    {
      v5 = v4;
      v6 = sub_100009E64();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = mach_error_string(v5);
        sub_10000A570(v7, v16, v5);
      }
    }

    v8 = IOPMAssertionSetProperty(*p_powerAssertionID, @"AssertLevel", kCFBooleanTrue);
    if (v8)
    {
      v9 = sub_100009E64();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = mach_error_string(v8);
        sub_10000A5AC(v10, &v15, v8);
      }
    }
  }

  else
  {
    v11 = IOPMAssertionCreateWithDescription(@"NoIdleSleepAssertion", @"Reading List Fetcher", @"safarifetcherd is archiving reading list items", 0, 0, 90.0, @"TimeoutActionTurnOff", p_powerAssertionID);
    if (v11)
    {
      v12 = v11;
      v13 = sub_100009E64();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = mach_error_string(v12);
        sub_10000A5E8(v14, v16, v12);
      }

      *p_powerAssertionID = 0;
    }
  }
}

- (void)_releasePowerAssertion
{
  powerAssertionID = self->_powerAssertionID;
  if (powerAssertionID)
  {
    IOPMAssertionRelease(powerAssertionID);
    self->_powerAssertionID = 0;
  }
}

- (BOOL)_anyBackgroundTaskAgentJobIsScheduled
{
  if ([self->_lowBackgroundTaskAgentJob isScheduled]|| [self->_mediumBackgroundTaskAgentJob isScheduled])
  {
    return 1;
  }

  highBackgroundTaskAgentJob = self->_highBackgroundTaskAgentJob;

  return [highBackgroundTaskAgentJob isScheduled];
}

- (BOOL)_allBackgroundTaskAgentJobsAreUnsatisfied
{
  if ([self->_lowBackgroundTaskAgentJob isSatisfied]|| [self->_mediumBackgroundTaskAgentJob isSatisfied])
  {
    return 0;
  }

  else
  {
    return ![self->_highBackgroundTaskAgentJob isSatisfied];
  }
}

- (void)_scheduleOrRemoveBackgroundTaskAgentJobs
{
  v3 = +[NSUserDefaults safari_browserDefaults];
  v4 = [v3 safari_shouldAutomaticallyDownloadReadingListItems];

  v5 = +[WebBookmarkCollection safariBookmarkCollection];
  v6 = [v5 countReadingListBookmarksNeedingArchiveInMode:0 automaticArchivingEnabled:v4];

  if (!v6)
  {
    [self->_highBackgroundTaskAgentJob unschedule];
LABEL_7:
    [self->_mediumBackgroundTaskAgentJob unschedule];
    goto LABEL_8;
  }

  v7 = +[WebBookmarkCollection safariBookmarkCollection];
  v8 = [v7 countReadingListBookmarksNeedingArchiveInMode:1 automaticArchivingEnabled:v4];

  if (!v8)
  {
    [self->_highBackgroundTaskAgentJob schedule];
    goto LABEL_7;
  }

  v9 = +[WebBookmarkCollection safariBookmarkCollection];
  v10 = [v9 countReadingListBookmarksNeedingArchiveInMode:2 automaticArchivingEnabled:v4];

  [self->_highBackgroundTaskAgentJob schedule];
  [self->_mediumBackgroundTaskAgentJob schedule];
  if (v10)
  {
    [self->_lowBackgroundTaskAgentJob schedule];
    goto LABEL_9;
  }

LABEL_8:
  [self->_lowBackgroundTaskAgentJob unschedule];
LABEL_9:

  [(ReadingListFetcher *)self updateArchivingMode];
}

- (void)_initBackgroundTaskAgentJobs
{
  v3 = [[BackgroundTaskAgentJob alloc] initWithName:@"com.apple.safarifetcherd.readinglistfetcher.high" startDelay:3.0];
  highBackgroundTaskAgentJob = self->_highBackgroundTaskAgentJob;
  self->_highBackgroundTaskAgentJob = v3;

  [self->_highBackgroundTaskAgentJob setDelegate:self];
  v5 = [self->_highBackgroundTaskAgentJob requirements];
  v6 = XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY;
  xdict = v5;
  xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_ALLOW_BATTERY, 0);
  v7 = [[BackgroundTaskAgentJob alloc] initWithName:@"com.apple.safarifetcherd.readinglistfetcher.medium" startDelay:3.0];
  mediumBackgroundTaskAgentJob = self->_mediumBackgroundTaskAgentJob;
  self->_mediumBackgroundTaskAgentJob = v7;

  [self->_mediumBackgroundTaskAgentJob setDelegate:self];
  v9 = [self->_mediumBackgroundTaskAgentJob requirements];
  xpc_dictionary_set_BOOL(v9, v6, !self->_readingListCellularFetchingEnabled);
  xpc_dictionary_set_BOOL(v9, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  v10 = [[BackgroundTaskAgentJob alloc] initWithName:@"com.apple.safarifetcherd.readinglistfetcher.low" startDelay:3.0];
  lowBackgroundTaskAgentJob = self->_lowBackgroundTaskAgentJob;
  self->_lowBackgroundTaskAgentJob = v10;

  [self->_lowBackgroundTaskAgentJob setDelegate:self];
  v12 = [self->_lowBackgroundTaskAgentJob requirements];
  xpc_dictionary_set_BOOL(v12, XPC_ACTIVITY_ALLOW_BATTERY, 1);
}

- (void)_scheduleRestartingServiceBTAJobWithDelay:(double)a3
{
  retryBackgroundTaskAgentJob = self->_retryBackgroundTaskAgentJob;
  if (retryBackgroundTaskAgentJob)
  {
    [retryBackgroundTaskAgentJob unschedule];
    v6 = self->_retryBackgroundTaskAgentJob;
    self->_retryBackgroundTaskAgentJob = 0;
  }

  v7 = [[BackgroundTaskAgentJob alloc] initWithName:@"com.apple.safarifetcherd.readinglistfetcher.watchdog" startDelay:a3];
  v8 = self->_retryBackgroundTaskAgentJob;
  self->_retryBackgroundTaskAgentJob = v7;

  [self->_retryBackgroundTaskAgentJob setDelegate:self];
  xdict = [self->_retryBackgroundTaskAgentJob requirements];
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 0);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  [self->_retryBackgroundTaskAgentJob schedule];
}

- (void)_unscheduleAllBTAJobs
{
  [self->_highBackgroundTaskAgentJob unschedule];
  highBackgroundTaskAgentJob = self->_highBackgroundTaskAgentJob;
  self->_highBackgroundTaskAgentJob = 0;

  [self->_mediumBackgroundTaskAgentJob unschedule];
  mediumBackgroundTaskAgentJob = self->_mediumBackgroundTaskAgentJob;
  self->_mediumBackgroundTaskAgentJob = 0;

  [self->_lowBackgroundTaskAgentJob unschedule];
  lowBackgroundTaskAgentJob = self->_lowBackgroundTaskAgentJob;
  self->_lowBackgroundTaskAgentJob = 0;

  [self->_retryBackgroundTaskAgentJob unschedule];
  retryBackgroundTaskAgentJob = self->_retryBackgroundTaskAgentJob;
  self->_retryBackgroundTaskAgentJob = 0;
}

- (BOOL)_rescheduleRestartingServiceBTAJobWithJob:(id)a3
{
  retryBackgroundTaskAgentJob = self->_retryBackgroundTaskAgentJob;
  if (retryBackgroundTaskAgentJob == a3)
  {
    [(ReadingListFetcher *)self _scheduleRestartingServiceBTAJobWithDelay:600.0];
  }

  return retryBackgroundTaskAgentJob == a3;
}

- (void)backgroundTaskAgentJobDidExpire:(id)a3 withJobDetails:(id)a4
{
  v5 = a3;
  if (![(ReadingListFetcher *)self _rescheduleRestartingServiceBTAJobWithJob:?])
  {
    [(ReadingListFetcher *)self updateArchivingMode];
    [v5 unschedule];
    [v5 schedule];
    if ([(ReadingListFetcher *)self _allBackgroundTaskAgentJobsAreUnsatisfied])
    {
      if (self->_bookmarkToFetch)
      {
        [(ReadingListFetcher *)self abortAfterCurrentFetchCompletes];
      }
    }
  }
}

- (void)backgroundTaskAgentJobDidGetJobRequestError:(id)a3 withJobDetails:(id)a4
{
  v5 = a3;
  if (![(ReadingListFetcher *)self _rescheduleRestartingServiceBTAJobWithJob:v5])
  {
    [(ReadingListFetcher *)self updateArchivingMode];
    v6 = sub_100009E64();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [v5 name];
      objc_claimAutoreleasedReturnValue();
      sub_10000A624();
    }

    if ([(ReadingListFetcher *)self _allBackgroundTaskAgentJobsAreUnsatisfied]&& self->_bookmarkToFetch)
    {
      [(ReadingListFetcher *)self abortAfterCurrentFetchCompletes];
    }
  }
}

- (void)backgroundTaskAgentJobDidBecomeSatisfied:(id)a3 withJobDetails:(id)a4
{
  v5 = a3;
  if (![(ReadingListFetcher *)self _rescheduleRestartingServiceBTAJobWithJob:?])
  {
    [(ReadingListFetcher *)self updateArchivingMode];
    if (!self->_bookmarkToFetch)
    {
      [(ReadingListFetcher *)self _startFetchingInternal];
    }
  }
}

- (void)backgroundTaskAgentJobDidBecomeUnsatisfied:(id)a3 withJobDetails:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(ReadingListFetcher *)self _rescheduleRestartingServiceBTAJobWithJob:v6])
  {
    [(ReadingListFetcher *)self updateArchivingMode];
    if ([(ReadingListFetcher *)self _allBackgroundTaskAgentJobsAreUnsatisfied])
    {
      if (self->_highBackgroundTaskAgentJob == v6)
      {
        if (xpc_dictionary_get_BOOL(v7, kBackgroundTaskAgentJobStatusNetwork))
        {
          if (xpc_dictionary_get_BOOL(v7, kBackgroundTaskAgentJobStatusPowerPluggedin))
          {
            v8 = sub_100009E64();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
            {
              [(BackgroundTaskAgentJob *)v6 name];
              objc_claimAutoreleasedReturnValue();
              sub_10000A784();
            }

            goto LABEL_18;
          }

          v9 = sub_100009E64();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            [(BackgroundTaskAgentJob *)v6 name];
            objc_claimAutoreleasedReturnValue();
            sub_10000A740();
          }

          goto LABEL_23;
        }

        v8 = sub_100009E64();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      if (self->_mediumBackgroundTaskAgentJob == v6 || self->_lowBackgroundTaskAgentJob == v6)
      {
        if (xpc_dictionary_get_BOOL(v7, kBackgroundTaskAgentJobStatusNetwork))
        {
          if (xpc_dictionary_get_BOOL(v7, kBackgroundTaskAgentJobStatusBatteryLevel))
          {
            v8 = sub_100009E64();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              [(BackgroundTaskAgentJob *)v6 name];
              objc_claimAutoreleasedReturnValue();
              sub_10000A6FC();
            }

            goto LABEL_18;
          }

          v9 = sub_100009E64();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            [(BackgroundTaskAgentJob *)v6 name];
            objc_claimAutoreleasedReturnValue();
            sub_10000A6B8();
          }

LABEL_23:

          [(ReadingListFetcher *)self abortAfterCurrentFetchCompletes];
          goto LABEL_24;
        }

        v8 = sub_100009E64();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
LABEL_17:
          [(BackgroundTaskAgentJob *)v6 name];
          objc_claimAutoreleasedReturnValue();
          sub_10000A674();
        }

LABEL_18:

        [(ReadingListFetcher *)self abortImmediately];
      }
    }
  }

LABEL_24:
}

- (void)_powerlog:(id)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_100022D50;
  v11 = off_100022D50;
  if (!off_100022D50)
  {
    v5 = sub_100005F74();
    v9[3] = dlsym(v5, "PLShouldLogRegisteredEvent");
    off_100022D50 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    if (!v4(27, @"MobileSafari-ReadingListFetcher"))
    {
LABEL_9:

      return;
    }

    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v6 = off_100022D60;
    v11 = off_100022D60;
    if (!off_100022D60)
    {
      v7 = sub_100005F74();
      v9[3] = dlsym(v7, "PLLogRegisteredEvent");
      off_100022D60 = v9[3];
      v6 = v9[3];
    }

    _Block_object_dispose(&v8, 8);
    if (v6)
    {
      v6(27, @"MobileSafari-ReadingListFetcher", v3, &__NSArray0__struct);
      goto LABEL_9;
    }
  }

  dlerror();
  abort_report_np();
  __break(1u);
}

- (unint64_t)_diskSpaceAvailable
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v11 = kCPFreeSpaceEffortLevelKey;
  v12 = &off_10001CF28;
  v2 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v6 = dispatch_semaphore_create(0);
  v3 = v6;
  CPFreeSpaceRequestBytesAtPathWithCompletionBlock();
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v4 = v8[3];

  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)_startFetchingInternal
{
  v3 = sub_100009E64();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000A818();
  }

  xpc_transaction_begin();
  self->_aborted = 0;
  [(ReadingListFetcher *)self _scheduleRestartingServiceBTAJobWithDelay:600.0];
  if (!self->_bookmarkToFetch)
  {
    [(ReadingListFetcher *)self _fetchNextItem];
  }
}

- (void)_stopFetchingInternal
{
  [(ReadingListFetcher *)self tryApplyPendingBookmarkChanges];
  [(ReadingListFetcher *)self _releasePowerAssertion];
  [(ReadingListFetcher *)self _unscheduleAllBTAJobs];
  v3 = +[SafariFetcherServer sharedServer];
  [v3 deliverReadingListDidFinishFetching];

  v4 = sub_100009E64();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10000A84C();
  }

  if (self->_aborted)
  {
    v5 = sub_100009E64();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10000A880();
    }

    [(ReadingListFetcher *)self _scheduleRestartingServiceBTAJobWithDelay:300.0];
  }

  xpc_transaction_end();
  v6 = dispatch_time(0, 5000000000);
  dispatch_after(v6, &_dispatch_main_q, &stru_10001C7F8);
}

- (void)updateArchivingMode
{
  if ([self->_highBackgroundTaskAgentJob isSatisfied])
  {
    self->_archivingMode = 0;
  }

  else
  {
    if ([self->_mediumBackgroundTaskAgentJob isSatisfied]|| ![self->_lowBackgroundTaskAgentJob isSatisfied])
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    self->_archivingMode = v3;
  }
}

- (id)connectionPropertiesForLocallyAddedItem:(BOOL)a3
{
  p_connectionPropertiesAllowCellularFallback = &self->_connectionPropertiesAllowCellularFallback;
  if (!self->_connectionPropertiesAllowCellularFallback)
  {
    v21[0] = kCFStreamPropertyNoCellular;
    v21[1] = kCFStreamPropertySourceApplicationBundleIdentifier;
    v22[0] = &__kCFBooleanFalse;
    v22[1] = @"com.apple.mobilesafari";
    v6 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
    v19 = kCFURLConnectionSocketStreamProperties;
    v20 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v8 = *p_connectionPropertiesAllowCellularFallback;
    *p_connectionPropertiesAllowCellularFallback = v7;
  }

  p_connectionPropertiesForbidCellularFallback = &self->_connectionPropertiesForbidCellularFallback;
  if (!self->_connectionPropertiesForbidCellularFallback)
  {
    v17 = kCFStreamPropertyNoCellular;
    v18 = &__kCFBooleanTrue;
    v10 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v15 = kCFURLConnectionSocketStreamProperties;
    v16 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12 = *p_connectionPropertiesForbidCellularFallback;
    *p_connectionPropertiesForbidCellularFallback = v11;
  }

  if (!a3 && !self->_readingListCellularFetchingEnabled)
  {
    p_connectionPropertiesAllowCellularFallback = &self->_connectionPropertiesForbidCellularFallback;
  }

  v13 = *p_connectionPropertiesAllowCellularFallback;

  return v13;
}

- (void)_queueChangeForBookmark:(id)a3 key:(id)a4 value:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 UUID];
  v11 = [(NSMutableDictionary *)self->_pendingBookmarkChanges objectForKey:v10];
  v12 = v11;
  if (v11)
  {
    [v11 setObject:v9 forKey:v8];
    [(NSMutableDictionary *)self->_pendingBookmarkChanges setObject:v12 forKey:v10];
  }

  else
  {
    v13 = [NSMutableDictionary alloc];
    v15 = v8;
    v16 = v9;
    v14 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12 = [v13 initWithDictionary:v14];

    [(NSMutableDictionary *)self->_pendingBookmarkChanges setObject:v12 forKey:v10];
  }
}

- (void)queueChangeForBookmark:(id)a3 archiveStatus:(int64_t)a4
{
  v7 = a3;
  v6 = [NSNumber numberWithUnsignedInt:a4];
  [(ReadingListFetcher *)self _queueChangeForBookmark:v7 key:@"ArchiveStatus" value:v6];
}

- (void)clearChangesForBookmark:(id)a3
{
  pendingBookmarkChanges = self->_pendingBookmarkChanges;
  v4 = [a3 UUID];
  [(NSMutableDictionary *)pendingBookmarkChanges removeObjectForKey:?];
}

@end