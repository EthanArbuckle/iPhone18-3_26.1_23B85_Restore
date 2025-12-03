@interface MSDBackgroundDownload
+ (id)sharedInstance;
- (id)initiateBackgroundDownload;
- (void)_abortBackgroundDownload;
- (void)_pauseBackgroundDownloadForReason:(id)reason;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MSDBackgroundDownload *)selfCopy isBackgroundDownloadQueueEmpty])
  {
    [(MSDBackgroundDownload *)selfCopy setIsBackgroundDownloadQueueEmpty:0];
    v3 = +[MSDWorkQueueSet sharedInstance];
    backgroundDownloadQueue = [v3 backgroundDownloadQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000794E8;
    block[3] = &unk_100169B70;
    block[4] = selfCopy;
    dispatch_async(backgroundDownloadQueue, block);
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

  objc_sync_exit(selfCopy);
}

- (void)quitBackgroundDownload
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000DB388(self, v3);
  }

  [(MSDBackgroundDownload *)self _abortBackgroundDownload];
  bundleDownloadInProgress = [(MSDBackgroundDownload *)self bundleDownloadInProgress];
  [bundleDownloadInProgress stopBundleUpdateTimer];
}

- (void)_abortBackgroundDownload
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  device = [(MSDBackgroundDownload *)selfCopy device];
  backgroundDownloadState = [device backgroundDownloadState];

  if (backgroundDownloadState == 1)
  {
    device2 = [(MSDBackgroundDownload *)selfCopy device];
    [device2 setBackgroundDownloadState:2];

    device3 = [(MSDBackgroundDownload *)selfCopy device];
    [device3 setBackgroundDownloadActive:0];

    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Aborting background download...", v10, 2u);
    }

    if ([(MSDBackgroundDownload *)selfCopy freezeBackgroundDownload])
    {
      componentManager = [(MSDBackgroundDownload *)selfCopy componentManager];
      [componentManager resumeProcessing];
    }

    componentManager2 = [(MSDBackgroundDownload *)selfCopy componentManager];
    [componentManager2 abortProcessing];
  }

  objc_sync_exit(selfCopy);
}

- (void)_pauseBackgroundDownloadForReason:(id)reason
{
  reasonCopy = reason;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(MSDBackgroundDownload *)selfCopy freezeBackgroundDownload])
  {
    bundleDownloadInProgress = [(MSDBackgroundDownload *)selfCopy bundleDownloadInProgress];
    bundleState = [bundleDownloadInProgress bundleState];

    if (bundleState == 1)
    {
      [(MSDBackgroundDownload *)selfCopy setFreezeBackgroundDownload:1];
      v8 = sub_100063A54();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = reasonCopy;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Pausing background download for reason: %{public}@", &v13, 0xCu);
      }

      [(MSDBackgroundDownload *)selfCopy setBgDownloadPauseReason:reasonCopy];
      v9 = +[NSDate now];
      [v9 timeIntervalSince1970];
      [(MSDBackgroundDownload *)selfCopy setBgDownloadPauseStartTime:v10];

      bundleDownloadInProgress2 = [(MSDBackgroundDownload *)selfCopy bundleDownloadInProgress];
      [bundleDownloadInProgress2 stopBundleUpdateTimer];

      [(MSDBackgroundDownload *)selfCopy _sendDownloadStatusUpdateNotification];
      componentManager = [(MSDBackgroundDownload *)selfCopy componentManager];
      [componentManager pauseProcessing];
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)_resumeBackgroundDownload
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MSDBackgroundDownload *)selfCopy freezeBackgroundDownload])
  {
    bundleDownloadInProgress = [(MSDBackgroundDownload *)selfCopy bundleDownloadInProgress];
    bundleState = [bundleDownloadInProgress bundleState];

    if (bundleState == 1)
    {
      [(MSDBackgroundDownload *)selfCopy setFreezeBackgroundDownload:0];
      v5 = sub_100063A54();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resuming background download...", v14, 2u);
      }

      v6 = [NSDate dateWithTimeIntervalSince1970:[(MSDBackgroundDownload *)selfCopy bgDownloadPauseStartTime]];
      v7 = +[NSDate now];
      [v7 timeIntervalSinceDate:v6];
      v9 = v8;

      v10 = +[MSDAnalyticsEventHandler sharedInstance];
      bgDownloadPauseReason = [(MSDBackgroundDownload *)selfCopy bgDownloadPauseReason];
      [v10 sendBgDownloadPausedEvent:v9 forReason:bgDownloadPauseReason];

      bundleDownloadInProgress2 = [(MSDBackgroundDownload *)selfCopy bundleDownloadInProgress];
      [bundleDownloadInProgress2 startBundleUpdateTimer];

      [(MSDBackgroundDownload *)selfCopy _sendDownloadStatusUpdateNotification];
      componentManager = [(MSDBackgroundDownload *)selfCopy componentManager];
      [componentManager resumeProcessing];
    }
  }

  objc_sync_exit(selfCopy);
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
  device = [(MSDBackgroundDownload *)self device];
  retrieveSignedManifest = [device retrieveSignedManifest];

  if (retrieveSignedManifest)
  {
    bundleDownloadInProgress = [(MSDBackgroundDownload *)self bundleDownloadInProgress];
    if (!bundleDownloadInProgress || (v6 = bundleDownloadInProgress, [(MSDBackgroundDownload *)self bundleDownloadInProgress], v7 = objc_claimAutoreleasedReturnValue(), v8 = [MSDBundleProgressTracker isBundleInstance:v7 identicalWithNewBundle:retrieveSignedManifest], v7, v6, (v8 & 1) == 0))
    {
      device2 = [(MSDBackgroundDownload *)self device];
      [device2 cleanUpBackgroundState:1];

      v10 = +[MSDProgressUpdater sharedInstance];
      [v10 startBundleUpdateMonitor:retrieveSignedManifest inMode:1];

      v11 = +[MSDProgressUpdater sharedInstance];
      backgroundBundle = [v11 backgroundBundle];
      [(MSDBackgroundDownload *)self setBundleDownloadInProgress:backgroundBundle];

      device3 = [(MSDBackgroundDownload *)self device];
      [device3 setBackgroundDownloadActive:1];
    }

    v14 = sub_100063A54();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = retrieveSignedManifest;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "signedManifest in background download: %{public}@", &v17, 0xCu);
    }

    v15 = retrieveSignedManifest;
  }

  return retrieveSignedManifest;
}

@end