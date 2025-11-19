@interface NMRLinkAgentOriginController
- (NMRLinkAgentOriginController)initWithOrigin:(id)a3 externalOriginIdentifier:(id)a4;
- (NMRLinkAgentOriginControllerDelegate)delegate;
- (id)_currentFullPlaybackQueueIgnoringDigestMatches:(BOOL)a3 digest:(id)a4 digestMatched:(BOOL *)a5;
- (id)_currentNowPlayingApplicationInfoIgnoringDigestMatches:(BOOL)a3 digest:(id)a4 digestMatched:(BOOL *)a5;
- (id)_currentNowPlayingIgnoringDigestMatches:(BOOL)a3 digest:(id)a4 digestMatched:(BOOL *)a5;
- (id)_currentSupportedCommandsIgnoringDigestMatches:(BOOL)a3 digest:(id)a4 digestMatches:(BOOL *)a5;
- (void)_handleMRNotification:(id)a3;
- (void)_performUpdateBlock:(id)a3 forCFNotificationWithName:(id)a4 userInfo:(id)a5;
- (void)_refreshArtworkWithCompletion:(id)a3;
- (void)_refreshCurrentNowPlayingApplicationInfoWithCompletion:(id)a3;
- (void)_refreshCurrentNowPlayingInfoWithCompletion:(id)a3;
- (void)_refreshCurrentSupportedCommands;
- (void)_registerForMediaRemoteNotifications;
- (void)_scheduleEagerUpdate:(unsigned int)a3;
- (void)_updateNowPlayingInfoWithContentItem:(void *)a3;
- (void)dealloc;
- (void)eagerUpdateTimerFired;
- (void)handleMediaRemoteGetArtworkRequest:(id)a3 completion:(id)a4;
- (void)handleMediaRemoteGetStateRequest:(id)a3 completion:(id)a4;
- (void)handleMediaRemoteSendCommandRequest:(id)a3 completion:(id)a4;
- (void)handlePlaybackQueueRequest:(id)a3 completion:(id)a4;
- (void)playbackQueue:(id)a3 contentItemsDidChange:(id)a4;
- (void)updatePlaybackQueuePendingRecordsWithIdentifier:(id)a3 success:(BOOL)a4;
@end

@implementation NMRLinkAgentOriginController

- (NMRLinkAgentOriginController)initWithOrigin:(id)a3 externalOriginIdentifier:(id)a4
{
  v47 = a3;
  v46 = a4;
  v59.receiver = self;
  v59.super_class = NMRLinkAgentOriginController;
  v7 = [(NMRLinkAgentOriginController *)&v59 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_origin, a3);
    objc_storeStrong(&v8->_externalOriginIdentifier, a4);
    v9 = sub_10002C180(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(NMROrigin *)v8->_origin displayName];
      v11 = [(NMROrigin *)v8->_origin uniqueIdentifier];
      *buf = 138412802;
      v61 = v10;
      v62 = 2112;
      v63 = v11;
      v64 = 2112;
      v65 = v47;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[LinkAgent] (%@-%@) Creating origin controller for %@", buf, 0x20u);
    }

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_USER_INITIATED, 0);

    v14 = dispatch_queue_create("com.apple.nanomediaremotelinkagent.NMRLinkAgentServer", v13);
    serialQueue = v8->_serialQueue;
    v8->_serialQueue = v14;

    v16 = dispatch_queue_create("com.apple.nanomediaremotelinkagent.NMRLinkAgentServer.appstate", v13);
    refreshingQueue = v8->_refreshingQueue;
    v8->_refreshingQueue = v16;

    v18 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v8->_serialQueue);
    eagerUpdateTimer = v8->_eagerUpdateTimer;
    v8->_eagerUpdateTimer = v18;

    v20 = v18;
    objc_initWeak(buf, v8);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100014368;
    handler[3] = &unk_100048F30;
    v21 = v20;
    v57 = v21;
    objc_copyWeak(&v58, buf);
    dispatch_source_set_event_handler(v21, handler);
    dispatch_resume(v21);
    v22 = objc_opt_new();
    playbackQueue = v8->_playbackQueue;
    v8->_playbackQueue = v22;

    [(NMRPlaybackQueue *)v8->_playbackQueue setDelegate:v8];
    v24 = objc_opt_new();
    playbackQueuePendingSendRecords = v8->_playbackQueuePendingSendRecords;
    v8->_playbackQueuePendingSendRecords = v24;

    v26 = objc_opt_new();
    playbackQueueInvalidatedMetadataIdentifiers = v8->_playbackQueueInvalidatedMetadataIdentifiers;
    v8->_playbackQueueInvalidatedMetadataIdentifiers = v26;

    v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v29 = dispatch_queue_create("com.apple.nanomediaremotelinkagent.NMRLinkAgentServer.playbackQueueMessages", v28);
    playbackQueueMessageQueue = v8->_playbackQueueMessageQueue;
    v8->_playbackQueueMessageQueue = v29;

    v31 = [NMRMediaRemoteUpdater alloc];
    v32 = v8->_refreshingQueue;
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_1000143CC;
    v53[3] = &unk_100048F80;
    objc_copyWeak(&v55, buf);
    v33 = v8;
    v54 = v33;
    v34 = [(NMRMediaRemoteUpdater *)v31 initWithQueue:v32 updateBlock:v53];
    nowPlayingInfoUpdater = v33->_nowPlayingInfoUpdater;
    v33->_nowPlayingInfoUpdater = v34;

    v36 = [NMRMediaRemoteUpdater alloc];
    v37 = v8->_refreshingQueue;
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_10001473C;
    v51[3] = &unk_100048DA0;
    objc_copyWeak(&v52, buf);
    v38 = [(NMRMediaRemoteUpdater *)v36 initWithQueue:v37 updateBlock:v51];
    applicationInfoUpdater = v33->_applicationInfoUpdater;
    v33->_applicationInfoUpdater = v38;

    v40 = [NMRMediaRemoteUpdater alloc];
    v41 = v8->_refreshingQueue;
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000147A0;
    v48[3] = &unk_100048F80;
    objc_copyWeak(&v50, buf);
    v42 = v33;
    v49 = v42;
    v43 = [(NMRMediaRemoteUpdater *)v40 initWithQueue:v41 updateBlock:v48];
    artworkUpdater = v42->_artworkUpdater;
    v42->_artworkUpdater = v43;

    [(NMRLinkAgentOriginController *)v42 _registerForMediaRemoteNotifications];
    objc_destroyWeak(&v50);
    objc_destroyWeak(&v52);

    objc_destroyWeak(&v55);
    objc_destroyWeak(&v58);

    objc_destroyWeak(buf);
  }

  return v8;
}

- (void)dealloc
{
  v3 = sub_10002C180(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NMROrigin *)self->_origin displayName];
    v5 = [(NMROrigin *)self->_origin uniqueIdentifier];
    origin = self->_origin;
    *buf = 138412802;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = origin;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[LinkAgent] (%@-%@) Destroying origin controller for %@", buf, 0x20u);
  }

  v7.receiver = self;
  v7.super_class = NMRLinkAgentOriginController;
  [(NMRLinkAgentOriginController *)&v7 dealloc];
}

- (void)_scheduleEagerUpdate:(unsigned int)a3
{
  if (a3 > 3)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = *(&off_100049180 + a3);
  }

  v6 = sub_10002C180(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NMROrigin *)self->_origin displayName];
    v8 = [(NMROrigin *)self->_origin uniqueIdentifier];
    v11 = 138412802;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[LinkAgent] (%@-%@) Scheduling eager update because of %@.", &v11, 0x20u);
  }

  if (((0x80u >> (a3 & 7)) & atomic_fetch_or(&self->_eagerUpdateFlags + (a3 >> 3), 0x80u >> (a3 & 7))) == 0)
  {
    eagerUpdateTimer = self->_eagerUpdateTimer;
    v10 = dispatch_time(0, 100000000);
    dispatch_source_set_timer(eagerUpdateTimer, v10, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  }
}

- (void)eagerUpdateTimerFired
{
  dispatch_assert_queue_V2(self->_serialQueue);
  atomic_fetch_and(&self->_eagerUpdateFlags, 0x7Fu);
  atomic_fetch_and(&self->_eagerUpdateFlags, 0xBFu);
  atomic_fetch_and(&self->_eagerUpdateFlags, 0xDFu);
  atomic_fetch_and(&self->_eagerUpdateFlags, 0xEFu);
  v3 = [(NSDictionary *)self->_currentNowPlayingInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoTitle];
  v4 = [(NSDictionary *)self->_currentNowPlayingInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoArtist];
  v5 = [NSString stringWithFormat:@"%@-%@", v3, v4];

  v6 = sub_10002C180(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NMROrigin *)self->_origin displayName];
    v8 = [(NMROrigin *)self->_origin uniqueIdentifier];
    currentApplicationBundleIdentifier = self->_currentApplicationBundleIdentifier;
    v10 = [(NSArray *)self->_currentSupportedCommands count];
    *buf = 138414082;
    v27 = v7;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = @"YES";
    v32 = 2112;
    v33 = @"YES";
    v34 = 2112;
    v35 = @"YES";
    v36 = 2112;
    v37 = currentApplicationBundleIdentifier;
    v38 = 2112;
    v39 = v5;
    v40 = 2048;
    v41 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[LinkAgent] (%@-%@) Sending eager state update (now playing: %@, now playing app: %@, commands: %@), app: %@, info: %@, %tu total commands.", buf, 0x52u);
  }

  v11 = [(NMRLinkAgentOriginController *)self _currentNowPlayingIgnoringDigestMatches:1 digest:0 digestMatched:0];
  v12 = [(NMRLinkAgentOriginController *)self _currentNowPlayingApplicationInfoIgnoringDigestMatches:1 digest:0 digestMatched:0];
  v13 = [(NMRLinkAgentOriginController *)self _currentSupportedCommandsIgnoringDigestMatches:1 digest:0 digestMatches:0];
  v14 = [(NMRPlaybackQueue *)self->_playbackQueue deltaPlaybackQueueDataFromPreviousData:self->_playbackQueueSentData invalidatedMetadataIdentifiers:self->_playbackQueueInvalidatedMetadataIdentifiers];
  v15 = [NMRMediaRemoteSetStateMessage messageWithNowPlayingInfo:v11 applicationInfo:v12 supportedCommands:v13 playbackQueue:v14 originIdentifier:self->_externalOriginIdentifier];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v25 = 0;
  [WeakRetained originController:self sendSetStateMessage:v15 resultingMessageIdentifier:&v25];
  v17 = v25;

  if (v17 && v14)
  {
    v18 = [(NMRPlaybackQueue *)self->_playbackQueue fullPlaybackQueueData];
    objc_initWeak(buf, self);
    playbackQueueMessageQueue = self->_playbackQueueMessageQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000150F0;
    block[3] = &unk_100048FA8;
    objc_copyWeak(&v24, buf);
    v22 = v18;
    v23 = v17;
    v20 = v18;
    dispatch_async(playbackQueueMessageQueue, block);

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }
}

- (void)handleMediaRemoteGetStateRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015258;
  block[3] = &unk_100048FD0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(serialQueue, block);
}

- (void)handleMediaRemoteGetArtworkRequest:(id)a3 completion:(id)a4
{
  v5 = a4;
  serialQueue = self->_serialQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001548C;
  v8[3] = &unk_100048FF8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(serialQueue, v8);
}

- (void)handlePlaybackQueueRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000157CC;
  block[3] = &unk_100048FD0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(serialQueue, block);
}

- (void)handleMediaRemoteSendCommandRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000158A4;
  block[3] = &unk_100048FD0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(serialQueue, block);
}

- (void)updatePlaybackQueuePendingRecordsWithIdentifier:(id)a3 success:(BOOL)a4
{
  v6 = a3;
  playbackQueueMessageQueue = self->_playbackQueueMessageQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015D40;
  block[3] = &unk_100049048;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(playbackQueueMessageQueue, block);
}

- (void)playbackQueue:(id)a3 contentItemsDidChange:(id)a4
{
  v5 = a4;
  serialQueue = self->_serialQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100015FC8;
  v8[3] = &unk_100048C80;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(serialQueue, v8);
}

- (void)_updateNowPlayingInfoWithContentItem:(void *)a3
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = sub_10002C180(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NMROrigin *)self->_origin displayName];
    v7 = [(NMROrigin *)self->_origin uniqueIdentifier];
    v8 = MRContentItemCopyMinimalReadableDescription();
    *buf = 138412802;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    *&buf[22] = 2112;
    v75 = CFAutorelease(v8);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[LinkAgent] (%@-%@) Updating now playing content item %@", buf, 0x20u);
  }

  if (sub_10001615C(self->_nowPlayingContentItemRef, a3))
  {
    nowPlayingContentItemRef = self->_nowPlayingContentItemRef;
    MRContentItemMerge();
    v10 = self->_nowPlayingContentItemRef;
  }

  else
  {
    if (a3)
    {
      CFRetain(a3);
    }

    v11 = self->_nowPlayingContentItemRef;
    if (v11)
    {
      CFRelease(v11);
    }

    self->_nowPlayingContentItemRef = a3;
  }

  v12 = MRContentItemCopyNowPlayingInfo();
  v13 = [v12 mutableCopy];

  v14 = self->_nowPlayingContentItemRef;
  v15 = MRContentItemGetArtworkData();
  v16 = v15;
  v69 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [v15 bytes], objc_msgSend(v15, "length"));
  v17 = sub_100008964(v69);
  if (v17)
  {
    [(NSDictionary *)v13 setObject:v17 forKeyedSubscript:@"NMRAugmentedNowPlayingInfoArtworkDataDigest"];
  }

  v18 = [(NSDictionary *)v13 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoIsMusicApp];
  v19 = [v18 BOOLValue];

  if ((v19 & 1) == 0)
  {
    [(NSDictionary *)v13 removeObjectForKey:kMRMediaRemoteNowPlayingInfoUniqueIdentifier];
  }

  p_currentNowPlayingInfo = &self->_currentNowPlayingInfo;
  currentNowPlayingInfo = self->_currentNowPlayingInfo;
  v22 = v13;
  if (!currentNowPlayingInfo)
  {
    goto LABEL_41;
  }

  v22 = v13;
  if (!v13)
  {
    goto LABEL_41;
  }

  v23 = currentNowPlayingInfo;
  v24 = v13;
  v25 = v24;
  if (v23 == v24)
  {
  }

  else
  {
    v26 = [(NSDictionary *)v23 count];
    if (v26 != [(NSDictionary *)v25 count])
    {

      v22 = v13;
LABEL_41:
      v62 = v22;
      v63 = self->_currentNowPlayingInfo;
      self->_currentNowPlayingInfo = v13;

      previousIgnoredNowPlayingInfo = self->_previousIgnoredNowPlayingInfo;
      self->_previousIgnoredNowPlayingInfo = 0;

      [(NMRLinkAgentOriginController *)self _scheduleEagerUpdate:0];
      goto LABEL_42;
    }

    v70 = 0;
    v71 = &v70;
    v72 = 0x2020000000;
    v73 = 1;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100018624;
    v75 = &unk_100049160;
    v27 = v25;
    v76 = v27;
    v77 = &v70;
    [(NSDictionary *)v23 enumerateKeysAndObjectsUsingBlock:buf];
    v28 = *(v71 + 24);

    _Block_object_dispose(&v70, 8);
    v22 = v13;
    if ((v28 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v29 = self->_currentNowPlayingInfo;
  v30 = kMRMediaRemoteNowPlayingInfoElapsedTime;
  v31 = [(NSDictionary *)v25 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoElapsedTime];
  [v31 doubleValue];
  v33 = v32;

  v34 = [(NSDictionary *)v29 objectForKeyedSubscript:v30];
  [v34 doubleValue];
  v36 = v35;

  location = &self->_previousIgnoredNowPlayingInfo;
  v37 = kMRMediaRemoteNowPlayingInfoTimestamp;
  v68 = [(NSDictionary *)self->_previousIgnoredNowPlayingInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoTimestamp];
  [v68 timeIntervalSinceNow];
  if (v38 >= 0.0)
  {
    v39 = v38;
  }

  else
  {
    v39 = -v38;
  }

  v40 = v29;
  v41 = [(NSDictionary *)v40 objectForKeyedSubscript:v37];
  if (v41)
  {
    v42 = [(NSDictionary *)v40 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoPlaybackRate];
    [v42 floatValue];
    v44 = v43;

    v45 = [(NSDictionary *)v40 objectForKeyedSubscript:v30];
    [v45 doubleValue];
    v47 = v46;

    v48 = +[NSDate date];
    [v48 timeIntervalSinceDate:v41];
    v50 = v49;

    v51 = v47 + fmax(v50 * v44, 0.0);
  }

  else
  {
    v51 = 0.0;
  }

  v52 = [(NSDictionary *)v40 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoDuration];
  [v52 doubleValue];
  v54 = v53;

  if (v51 < v54)
  {
    v54 = v51;
  }

  v55 = v54 - v33;
  if (v54 - v33 < 0.0)
  {
    v55 = -(v54 - v33);
  }

  v56 = v39 > 30.0;
  if (v55 > 5.0)
  {
    v56 = 1;
  }

  v57 = v33 < v36 || v56;
  v58 = sub_10002C180(2);
  v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
  if (v57)
  {
    if (v59)
    {
      v60 = [(NMROrigin *)self->_origin displayName];
      v61 = [(NMROrigin *)self->_origin uniqueIdentifier];
      *buf = 138412546;
      *&buf[4] = v60;
      *&buf[12] = 2112;
      *&buf[14] = v61;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "[LinkAgent] (%@-%@) Allowing now-playing update with only elapsed time difference", buf, 0x16u);
    }

    v22 = v25;
    goto LABEL_41;
  }

  if (v59)
  {
    v65 = [(NMROrigin *)self->_origin displayName];
    v66 = [(NMROrigin *)self->_origin uniqueIdentifier];
    *buf = 138412546;
    *&buf[4] = v65;
    *&buf[12] = 2112;
    *&buf[14] = v66;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "[LinkAgent] (%@-%@) Suppressing now-playing update with only elapsed time difference", buf, 0x16u);
  }

  if (!*location)
  {
    objc_storeStrong(location, v13);
  }

  objc_storeStrong(p_currentNowPlayingInfo, v13);
LABEL_42:
}

- (void)_refreshCurrentNowPlayingInfoWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_refreshingQueue);
  v5 = sub_10002C180(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NMROrigin *)self->_origin displayName];
    v7 = [(NMROrigin *)self->_origin uniqueIdentifier];
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[LinkAgent] (%@-%@) Fetching now playing info", buf, 0x16u);
  }

  [(NMROrigin *)self->_origin mediaRemoteOrigin];
  v8 = MRNowPlayingPlayerPathCreate();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v16 = sub_100016C20;
  v17 = sub_100016C30;
  v18 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016C38;
  block[3] = &unk_100048DF0;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(serialQueue, block);
  if (*(*&buf[8] + 40))
  {
    v10 = MRPlaybackQueueRequestCreateWithCurrentState();
  }

  else
  {
    v10 = MRPlaybackQueueRequestCreate();
  }

  v11 = v10;
  MRPlaybackQueueRequestSetIncludeMetadata();
  MRPlaybackQueueRequestSetIncludeArtwork();
  v12 = self->_serialQueue;
  v13 = v4;
  MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync();
  if (v8)
  {
    CFRelease(v8);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  _Block_object_dispose(buf, 8);
}

- (void)_refreshArtworkWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_refreshingQueue);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100016C20;
  v22 = sub_100016C30;
  v23 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017270;
  block[3] = &unk_100048DF0;
  block[4] = self;
  block[5] = &v18;
  dispatch_sync(serialQueue, block);
  if (v19[5])
  {
    v6 = sub_10002C180(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(NMROrigin *)self->_origin displayName];
      v8 = [(NMROrigin *)self->_origin uniqueIdentifier];
      v9 = v19[5];
      *buf = 138412802;
      v26 = v7;
      v27 = 2112;
      v28 = v8;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[LinkAgent] (%@-%@) Fetching artwork for %@", buf, 0x20u);
    }

    [(NMROrigin *)self->_origin mediaRemoteOrigin];
    v10 = MRNowPlayingPlayerPathCreate();
    v24 = v19[5];
    [NSArray arrayWithObjects:&v24 count:1];
    v11 = MRPlaybackQueueRequestCreateWithIdentifiers();
    MRPlaybackQueueRequestSetIncludeArtwork();
    v12 = self->_serialQueue;
    v16 = v4;
    MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync();
    if (v10)
    {
      CFRelease(v10);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  else
  {
    v13 = sub_10002C180(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(NMROrigin *)self->_origin displayName];
      v15 = [(NMROrigin *)self->_origin uniqueIdentifier];
      *buf = 138412546;
      v26 = v14;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[LinkAgent] (%@-%@) No contentItemIdentifier, not fetching artwork", buf, 0x16u);
    }

    if (v4)
    {
      v4[2](v4);
    }
  }

  _Block_object_dispose(&v18, 8);
}

- (void)_refreshCurrentSupportedCommands
{
  [(NMROrigin *)self->_origin mediaRemoteOrigin];
  serialQueue = self->_serialQueue;
  MRMediaRemoteGetSupportedCommandsForOrigin();
}

- (void)_refreshCurrentNowPlayingApplicationInfoWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_10002C180(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NMROrigin *)self->_origin displayName];
    v7 = [(NMROrigin *)self->_origin uniqueIdentifier];
    *buf = 138412546;
    v29 = v6;
    v30 = 2112;
    v31 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[LinkAgent] (%@-%@) Fetching now playing application info", buf, 0x16u);
  }

  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  [(NMROrigin *)self->_origin mediaRemoteOrigin];
  serialQueue = self->_serialQueue;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100017848;
  v25 = &unk_1000490C0;
  v26 = self;
  v27 = v8;
  MRMediaRemoteGetNowPlayingApplicationPlaybackStateForOrigin();
  dispatch_group_enter(v27);
  [(NMROrigin *)self->_origin mediaRemoteOrigin];
  v10 = self->_serialQueue;
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100017968;
  v19 = &unk_1000490E8;
  v20 = self;
  v21 = v27;
  v11 = v27;
  MRMediaRemoteGetNowPlayingClientForOrigin();
  v12 = self->_serialQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100017B34;
  v14[3] = &unk_100048FF8;
  v14[4] = self;
  v15 = v4;
  v13 = v4;
  dispatch_group_notify(v11, v12, v14);
}

- (id)_currentNowPlayingIgnoringDigestMatches:(BOOL)a3 digest:(id)a4 digestMatched:(BOOL *)a5
{
  currentNowPlayingInfo = self->_currentNowPlayingInfo;
  v8 = a4;
  v9 = sub_10000E670(currentNowPlayingInfo);
  v10 = sub_100008964(v9);
  v11 = sub_100008A18(v10, v8);

  if (a5)
  {
    *a5 = v11;
  }

  if (!a3 && ((v11 ^ 1) & 1) == 0)
  {

    v9 = 0;
  }

  return v9;
}

- (id)_currentNowPlayingApplicationInfoIgnoringDigestMatches:(BOOL)a3 digest:(id)a4 digestMatched:(BOOL *)a5
{
  v8 = a4;
  v9 = objc_opt_new();
  [v9 setCompanionBundleIdentifier:self->_currentApplicationBundleIdentifier];
  [v9 setLocalizedDisplayName:self->_currentApplicationLocalizedDisplayName];
  [v9 setPlaybackState:self->_currentApplicationPlaybackState];
  [v9 setProcessID:self->_currentApplicationProcessID];
  v10 = [v9 protobufData];
  v11 = sub_100008964(v10);
  v12 = sub_100008A18(v11, v8);

  if (a5)
  {
    *a5 = v12;
  }

  if (!a3 && ((v12 ^ 1) & 1) == 0)
  {

    v10 = 0;
  }

  return v10;
}

- (id)_currentSupportedCommandsIgnoringDigestMatches:(BOOL)a3 digest:(id)a4 digestMatches:(BOOL *)a5
{
  currentSupportedCommands = self->_currentSupportedCommands;
  v8 = a4;
  v9 = sub_100007F68(currentSupportedCommands);
  v10 = sub_100008964(v9);
  v11 = sub_100008A18(v10, v8);

  if (a5)
  {
    *a5 = v11;
  }

  if (!a3 && ((v11 ^ 1) & 1) == 0)
  {

    v9 = 0;
  }

  return v9;
}

- (id)_currentFullPlaybackQueueIgnoringDigestMatches:(BOOL)a3 digest:(id)a4 digestMatched:(BOOL *)a5
{
  playbackQueue = self->_playbackQueue;
  v8 = a4;
  v9 = [(NMRPlaybackQueue *)playbackQueue fullPlaybackQueueData];
  v10 = sub_100008964(v9);
  v11 = sub_100008A18(v10, v8);

  if (a5)
  {
    *a5 = v11;
  }

  if (!a3 && ((v11 ^ 1) & 1) == 0)
  {

    v9 = 0;
  }

  return v9;
}

- (void)_registerForMediaRemoteNotifications
{
  v4 = +[NSNotificationCenter defaultCenter];
  serialQueue = self->_serialQueue;
  MRMediaRemoteRegisterForNowPlayingNotifications();
  [v4 addObserver:self selector:"_handleMRNotification:" name:kMRNowPlayingPlaybackQueueChangedNotification object:0];
  [v4 addObserver:self selector:"_handleMRNotification:" name:kMRPlaybackQueueContentItemsChangedNotification object:0];
  [v4 addObserver:self selector:"_handleMRNotification:" name:kMRPlaybackQueueContentItemArtworkChangedNotification object:0];
  MRMediaRemoteSetWantsSupportedCommandsChangedNotifications();
  [v4 addObserver:self selector:"_handleMRNotification:" name:kMRMediaRemoteSupportedCommandsDidChangeNotification object:0];
  [v4 addObserver:self selector:"_handleMRNotification:" name:kMRMediaRemoteNowPlayingApplicationPlaybackStateDidChangeNotification object:0];
  [v4 addObserver:self selector:"_handleMRNotification:" name:kMRMediaRemoteNowPlayingApplicationDidChangeNotification object:0];
  [v4 addObserver:self selector:"_handleMRNotification:" name:kMRMediaRemoteNowPlayingApplicationIsPlayingDidChangeNotification object:0];
  [(NMRMediaRemoteUpdater *)self->_nowPlayingInfoUpdater executeUpdateBlock];
  [(NMRMediaRemoteUpdater *)self->_applicationInfoUpdater executeUpdateBlock];
  [(NMRLinkAgentOriginController *)self _refreshCurrentSupportedCommands];
  [(NMRPlaybackQueue *)self->_playbackQueue beginObservingMediaRemotePlaybackQueueForOrigin:self->_origin];
}

- (void)_handleMRNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v4 userInfo];
  [v6 objectForKeyedSubscript:kMRMediaRemoteOriginUserInfoKey];

  [(NMROrigin *)self->_origin mediaRemoteOrigin];
  if (MROriginEqualToOrigin())
  {
    v7 = [v4 name];
    if ([v7 isEqualToString:kMRNowPlayingPlaybackQueueChangedNotification])
    {
      goto LABEL_3;
    }

    if ([v7 isEqualToString:kMRPlaybackQueueContentItemsChangedNotification])
    {
      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_1000181F4;
      v18 = &unk_100049110;
      v19 = self;
      v9 = &v15;
    }

    else
    {
      if (![v7 isEqualToString:kMRPlaybackQueueContentItemArtworkChangedNotification])
      {
        if ([v7 isEqualToString:kMRMediaRemoteSupportedCommandsDidChangeNotification])
        {
          [(NMRLinkAgentOriginController *)self _refreshCurrentSupportedCommands];
          goto LABEL_10;
        }

        if (![v7 isEqualToString:kMRMediaRemoteNowPlayingApplicationDidChangeNotification])
        {
          if (([v7 isEqualToString:kMRMediaRemoteNowPlayingApplicationPlaybackStateDidChangeNotification] & 1) == 0 && !objc_msgSend(v7, "isEqualToString:", kMRMediaRemoteNowPlayingApplicationIsPlayingDidChangeNotification))
          {
            goto LABEL_10;
          }

          applicationInfoUpdater = self->_applicationInfoUpdater;
          goto LABEL_4;
        }

        [(NMRLinkAgentOriginController *)self _refreshCurrentSupportedCommands];
        [(NMRMediaRemoteUpdater *)self->_applicationInfoUpdater executeUpdateBlock];
LABEL_3:
        applicationInfoUpdater = self->_nowPlayingInfoUpdater;
LABEL_4:
        [(NMRMediaRemoteUpdater *)applicationInfoUpdater executeUpdateBlock];
LABEL_10:

        goto LABEL_11;
      }

      v10 = _NSConcreteStackBlock;
      v11 = 3221225472;
      v12 = sub_100018200;
      v13 = &unk_100049110;
      v14 = self;
      v9 = &v10;
    }

    [(NMRLinkAgentOriginController *)self _performUpdateBlock:v9 forCFNotificationWithName:v7 userInfo:v5, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)_performUpdateBlock:(id)a3 forCFNotificationWithName:(id)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  serialQueue = self->_serialQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000182FC;
  v15[3] = &unk_100049138;
  v15[4] = self;
  v16 = v10;
  v17 = v9;
  v18 = v8;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(serialQueue, v15);
}

- (NMRLinkAgentOriginControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end