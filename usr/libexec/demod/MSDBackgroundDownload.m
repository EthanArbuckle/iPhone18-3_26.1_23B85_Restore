@interface MSDBackgroundDownload
+ (id)sharedInstance;
- (id)initiateBackgroundDownload;
- (void)_abortBackgroundDownload;
- (void)_pauseBackgroundDownloadForReason:(id)a3;
- (void)_resumeBackgroundDownload;
- (void)_sendDownloadStatusUpdateNotification;
- (void)kickOffBackgroundDownload;
- (void)quitBackgroundDownload;
@end

@implementation MSDBackgroundDownload

+ (id)sharedInstance
{
  if (qword_1001A58B0 != -1)
  {
    sub_1000DB1F4();
  }

  v3 = qword_1001A58A8;

  return v3;
}

- (void)kickOffBackgroundDownload
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(MSDBackgroundDownload *)v2 isBackgroundDownloadQueueEmpty])
  {
    [(MSDBackgroundDownload *)v2 setIsBackgroundDownloadQueueEmpty:0];
    v3 = +[MSDWorkQueueSet sharedInstance];
    v4 = [v3 backgroundDownloadQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000794E8;
    block[3] = &unk_100169B70;
    block[4] = v2;
    dispatch_async(v4, block);
  }

  else
  {
    v3 = sub_100063A54();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Background download is already scheduled, skipping call to schedule background donwload", buf, 2u);
    }
  }

  objc_sync_exit(v2);
}

- (void)quitBackgroundDownload
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000DB388(self, v3);
  }

  [(MSDBackgroundDownload *)self _abortBackgroundDownload];
  v4 = [(MSDBackgroundDownload *)self bundleDownloadInProgress];
  [v4 stopBundleUpdateTimer];
}

- (void)_abortBackgroundDownload
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MSDBackgroundDownload *)v2 device];
  v4 = [v3 backgroundDownloadState];

  if (v4 == 1)
  {
    v5 = [(MSDBackgroundDownload *)v2 device];
    [v5 setBackgroundDownloadState:2];

    v6 = [(MSDBackgroundDownload *)v2 device];
    [v6 setBackgroundDownloadActive:0];

    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Aborting background download...", v10, 2u);
    }

    if ([(MSDBackgroundDownload *)v2 freezeBackgroundDownload])
    {
      v8 = [(MSDBackgroundDownload *)v2 componentManager];
      [v8 resumeProcessing];
    }

    v9 = [(MSDBackgroundDownload *)v2 componentManager];
    [v9 abortProcessing];
  }

  objc_sync_exit(v2);
}

- (void)_pauseBackgroundDownloadForReason:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (![(MSDBackgroundDownload *)v5 freezeBackgroundDownload])
  {
    v6 = [(MSDBackgroundDownload *)v5 bundleDownloadInProgress];
    v7 = [v6 bundleState];

    if (v7 == 1)
    {
      [(MSDBackgroundDownload *)v5 setFreezeBackgroundDownload:1];
      v8 = sub_100063A54();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Pausing background download for reason: %{public}@", &v13, 0xCu);
      }

      [(MSDBackgroundDownload *)v5 setBgDownloadPauseReason:v4];
      v9 = +[NSDate now];
      [v9 timeIntervalSince1970];
      [(MSDBackgroundDownload *)v5 setBgDownloadPauseStartTime:v10];

      v11 = [(MSDBackgroundDownload *)v5 bundleDownloadInProgress];
      [v11 stopBundleUpdateTimer];

      [(MSDBackgroundDownload *)v5 _sendDownloadStatusUpdateNotification];
      v12 = [(MSDBackgroundDownload *)v5 componentManager];
      [v12 pauseProcessing];
    }
  }

  objc_sync_exit(v5);
}

- (void)_resumeBackgroundDownload
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(MSDBackgroundDownload *)v2 freezeBackgroundDownload])
  {
    v3 = [(MSDBackgroundDownload *)v2 bundleDownloadInProgress];
    v4 = [v3 bundleState];

    if (v4 == 1)
    {
      [(MSDBackgroundDownload *)v2 setFreezeBackgroundDownload:0];
      v5 = sub_100063A54();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resuming background download...", v14, 2u);
      }

      v6 = [NSDate dateWithTimeIntervalSince1970:[(MSDBackgroundDownload *)v2 bgDownloadPauseStartTime]];
      v7 = +[NSDate now];
      [v7 timeIntervalSinceDate:v6];
      v9 = v8;

      v10 = +[MSDAnalyticsEventHandler sharedInstance];
      v11 = [(MSDBackgroundDownload *)v2 bgDownloadPauseReason];
      [v10 sendBgDownloadPausedEvent:v9 forReason:v11];

      v12 = [(MSDBackgroundDownload *)v2 bundleDownloadInProgress];
      [v12 startBundleUpdateTimer];

      [(MSDBackgroundDownload *)v2 _sendDownloadStatusUpdateNotification];
      v13 = [(MSDBackgroundDownload *)v2 componentManager];
      [v13 resumeProcessing];
    }
  }

  objc_sync_exit(v2);
}

- (void)_sendDownloadStatusUpdateNotification
{
  v5 = +[NSNotificationCenter defaultCenter];
  v3 = [NSNumber numberWithBool:[(MSDBackgroundDownload *)self freezeBackgroundDownload]];
  v4 = [NSDictionary dictionaryWithObjectsAndKeys:v3, @"kMSDDownloadPausedKey", 0];

  [v5 postNotificationName:@"MSDNotificationPauseDownload" object:0 userInfo:v4];
}

- (id)initiateBackgroundDownload
{
  v3 = [(MSDBackgroundDownload *)self device];
  v4 = [v3 retrieveSignedManifest];

  if (v4)
  {
    v5 = [(MSDBackgroundDownload *)self bundleDownloadInProgress];
    if (!v5 || (v6 = v5, [(MSDBackgroundDownload *)self bundleDownloadInProgress], v7 = objc_claimAutoreleasedReturnValue(), v8 = [MSDBundleProgressTracker isBundleInstance:v7 identicalWithNewBundle:v4], v7, v6, (v8 & 1) == 0))
    {
      v9 = [(MSDBackgroundDownload *)self device];
      [v9 cleanUpBackgroundState:1];

      v10 = +[MSDProgressUpdater sharedInstance];
      [v10 startBundleUpdateMonitor:v4 inMode:1];

      v11 = +[MSDProgressUpdater sharedInstance];
      v12 = [v11 backgroundBundle];
      [(MSDBackgroundDownload *)self setBundleDownloadInProgress:v12];

      v13 = [(MSDBackgroundDownload *)self device];
      [v13 setBackgroundDownloadActive:1];
    }

    v14 = sub_100063A54();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "signedManifest in background download: %{public}@", &v17, 0xCu);
    }

    v15 = v4;
  }

  return v4;
}

@end