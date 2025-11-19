@interface NMRPlaybackQueue
- ($0AC6E346AE4835514AAA8AC86D8F4844)_rangeOfItemsNeedingMetadataForMediaRemoteQueue:(void *)a3;
- ($0AC6E346AE4835514AAA8AC86D8F4844)observedRange;
- (BOOL)_needsMetadataForMediaRemoteItem:(void *)a3;
- (BOOL)_needsUpdateForMediaRemoteQueue:(void *)a3;
- (NMRPlaybackQueue)init;
- (NMRPlaybackQueueDelegate)delegate;
- (NSData)fullPlaybackQueueData;
- (id)_contentItemIdentifiers;
- (id)_itemWithIdentifier:(id)a3;
- (id)_metadataForItemWithIdentifier:(id)a3;
- (id)deltaPlaybackQueueDataFromPreviousData:(id)a3 invalidatedMetadataIdentifiers:(id)a4;
- (void)_mediaRemotePlaybackQueueWithRange:(id)a3 includeMetadata:(BOOL)a4;
- (void)_refreshCurrentPlaybackQueueFromMediaRemoteWithCompletion:(id)a3;
- (void)_updateMetadataWithMediaRemoteItems:(id)a3;
- (void)_updateWithMediaRemoteQueue:(void *)a3;
- (void)beginObservingMediaRemotePlaybackQueueForOrigin:(id)a3;
- (void)copyFullMediaRemotePlaybackQueueIncludingMetadata:(BOOL)a3;
- (void)copyMediaRemotePlaybackQueueWithRange:(id)a3 includeMetadata:(BOOL)a4;
- (void)dealloc;
- (void)setNowPlayingInfo:(id)a3;
- (void)updateWithData:(id)a3;
@end

@implementation NMRPlaybackQueue

- (NMRPlaybackQueue)init
{
  v16.receiver = self;
  v16.super_class = NMRPlaybackQueue;
  v2 = [(NMRPlaybackQueue *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    upNextPlaybackQueue = v2->_upNextPlaybackQueue;
    v2->_upNextPlaybackQueue = v3;

    v2->_observedRange = xmmword_1000419E0;
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.NanoMediaRemote.PlaybackQueue", v5);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v6;

    objc_initWeak(&location, v2);
    v8 = [NMRMediaRemoteUpdater alloc];
    v9 = v2->_serialQueue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000F600;
    v13[3] = &unk_100048DA0;
    objc_copyWeak(&v14, &location);
    v10 = [(NMRMediaRemoteUpdater *)v8 initWithQueue:v9 updateBlock:v13];
    playbackQueueUpdater = v2->_playbackQueueUpdater;
    v2->_playbackQueueUpdater = v10;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, self);
  v4.receiver = self;
  v4.super_class = NMRPlaybackQueue;
  [(NMRPlaybackQueue *)&v4 dealloc];
}

- (void)beginObservingMediaRemotePlaybackQueueForOrigin:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_origin, a3);
  if (!self->_observingMediaRemote)
  {
    self->_observingMediaRemote = 1;
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, self, sub_10000F7B4, kMRPlaybackQueueContentItemsChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(LocalCenter, self, sub_10000F91C, kMRNowPlayingPlaybackQueueChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(LocalCenter, self, sub_10000F91C, kMRMediaRemoteNowPlayingApplicationDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  [(NMRMediaRemoteUpdater *)self->_playbackQueueUpdater executeUpdateBlock];
}

- (NSData)fullPlaybackQueueData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10000FB40;
  v10 = sub_10000FB50;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000FB58;
  v5[3] = &unk_100048DC8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)copyFullMediaRemotePlaybackQueueIncludingMetadata:(BOOL)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  serialQueue = self->_serialQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000FC54;
  v6[3] = &unk_100048DF0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)copyMediaRemotePlaybackQueueWithRange:(id)a3 includeMetadata:(BOOL)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000FD58;
  block[3] = &unk_100048E18;
  block[4] = self;
  block[5] = &v10;
  v8 = a3;
  v9 = a4;
  dispatch_sync(serialQueue, block);
  v5 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v5;
}

- (id)deltaPlaybackQueueDataFromPreviousData:(id)a3 invalidatedMetadataIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10002C180(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Building delta queue from previous data", buf, 2u);
  }

  *buf = 0;
  v20 = buf;
  v21 = 0x3032000000;
  v22 = sub_10000FB40;
  v23 = sub_10000FB50;
  v24 = 0;
  serialQueue = self->_serialQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000FF18;
  v14[3] = &unk_100048E68;
  v15 = v6;
  v16 = self;
  v17 = v7;
  v18 = buf;
  v10 = v7;
  v11 = v6;
  dispatch_sync(serialQueue, v14);
  v12 = *(v20 + 5);

  _Block_object_dispose(buf, 8);

  return v12;
}

- (void)updateWithData:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000109A4;
  v7[3] = &unk_100048C80;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (void)setNowPlayingInfo:(id)a3
{
  v5 = a3;
  nowPlayingInfo = self->_nowPlayingInfo;
  p_nowPlayingInfo = &self->_nowPlayingInfo;
  v8 = v5;
  if (([(NSDictionary *)nowPlayingInfo isEqual:?]& 1) == 0)
  {
    objc_storeStrong(p_nowPlayingInfo, a3);
  }
}

- (void)_refreshCurrentPlaybackQueueFromMediaRemoteWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NMRPlaybackQueue *)self observedRange];
  v7 = v6;
  v8 = sub_10002C180(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v14 = v5;
    v15 = 2048;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Requesting playback queue information for range: %ld -> %ld", buf, 0x16u);
  }

  [(NMRPlaybackQueue *)self _contentItemIdentifiers];
  v9 = MRPlaybackQueueRequestCreateWithCurrentState();
  MRPlaybackQueueRequestSetIncludeMetadata();
  [(NMROrigin *)self->_origin mediaRemoteOrigin];
  v10 = MRNowPlayingPlayerPathCreate();
  serialQueue = self->_serialQueue;
  v12 = v4;
  MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync();
  CFRelease(v9);
  CFRelease(v10);
}

- (id)_contentItemIdentifiers
{
  v2 = [(_NMRPlaybackQueue *)self->_upNextPlaybackQueue contentItems];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) identifier];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_mediaRemotePlaybackQueueWithRange:(id)a3 includeMetadata:(BOOL)a4
{
  v24 = a4;
  var1 = a3.var1;
  var0 = a3.var0;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (self->_nowPlayingInfo)
  {
    v7 = [(_NMRPlaybackQueue *)self->_upNextPlaybackQueue contentItems];
    v23 = objc_opt_new();
    v8 = [(_NMRPlaybackQueue *)self->_upNextPlaybackQueue location];
    v9 = [v7 count];
    if (var1 >= 1)
    {
      v10 = v8;
      v11 = v9 + v8 - 1;
      v12 = -v8;
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        if ((var0 & 0x8000000000000000) == 0)
        {
          if (var0 < v10 || var0 > v11)
          {
            break;
          }

          v14 = v7;
          v15 = [v7 objectAtIndexedSubscript:v12 + var0];
          v16 = sub_100010E64(v15, v24);
          if (!var0)
          {
            nowPlayingInfo = self->_nowPlayingInfo;
            MRContentItemSetNowPlayingInfo();
          }

          if (v16)
          {
            [v23 addObject:v16];
            CFRelease(v16);
            if (var0 < v13)
            {
              v13 = var0;
            }
          }

          v7 = v14;
        }

        ++var0;
        --var1;
      }

      while (var1);
    }

    [v23 count];
    v18 = MRPlaybackQueueCreate();
    v19 = sub_10002C180(2);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);

    if (v20)
    {
      v21 = sub_10002C180(2);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_100030F18(v18, v21);
      }
    }
  }

  else
  {
    v7 = sub_10002C180(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No now playing info yet, returning nil queue representation.", buf, 2u);
    }

    v18 = 0;
  }

  return v18;
}

- (void)_updateWithMediaRemoteQueue:(void *)a3
{
  dispatch_assert_queue_V2(self->_serialQueue);
  if (a3)
  {
    Range = MRPlaybackQueueGetRange();
    v6 = objc_opt_new();
    v7 = MRPlaybackQueueCopyContentItems();
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1000118AC;
    v17 = &unk_100048EE0;
    v18 = self;
    v8 = v6;
    v19 = v8;
    [v7 enumerateObjectsUsingBlock:&v14];
    v9 = objc_opt_new();
    [v9 setLocation:{Range, v14, v15, v16, v17, v18}];
    [v9 setContentItems:v8];
    objc_storeStrong(&self->_upNextPlaybackQueue, v9);
    v10 = sub_10002C180(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = sub_100010700(self->_upNextPlaybackQueue);
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Updated with new mediaRemote info, queue is now %@", buf, 0xCu);
    }
  }

  else
  {
    v12 = objc_opt_new();
    upNextPlaybackQueue = self->_upNextPlaybackQueue;
    self->_upNextPlaybackQueue = v12;

    _objc_release_x1();
  }
}

- (void)_updateMetadataWithMediaRemoteItems:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011B24;
  v7[3] = &unk_100048C80;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)_rangeOfItemsNeedingMetadataForMediaRemoteQueue:(void *)a3
{
  dispatch_assert_queue_V2(self->_serialQueue);
  Range = MRPlaybackQueueGetRange();
  v6 = v5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = Range + v5;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = Range;
  v7 = MRPlaybackQueueCopyContentItems();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100011F1C;
  v15[3] = &unk_100048F08;
  v15[7] = Range;
  v15[8] = v6;
  v15[4] = self;
  v15[5] = &v20;
  v15[6] = &v16;
  [v7 enumerateObjectsUsingBlock:v15];
  v8 = v17[3];
  v9 = v21[3];
  v10 = v8 < v9;
  v11 = v8 - v9;
  if (v10)
  {
    v12 = -1;
  }

  else
  {
    v12 = v11;
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  v13 = v12 + 1;
  v14 = v9;
  result.var1 = v13;
  result.var0 = v14;
  return result;
}

- (BOOL)_needsUpdateForMediaRemoteQueue:(void *)a3
{
  dispatch_assert_queue_V2(self->_serialQueue);
  if (a3)
  {
    Range = MRPlaybackQueueGetRange();
    v7 = v6;
    if (Range == -[_NMRPlaybackQueue location](self->_upNextPlaybackQueue, "location") && (-[_NMRPlaybackQueue contentItems](self->_upNextPlaybackQueue, "contentItems"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v7 == v9))
    {
      v10 = MRPlaybackQueueCopyContentItems();
      v11 = [(_NMRPlaybackQueue *)self->_upNextPlaybackQueue contentItems];
      if (v7 < 1)
      {
        v13 = 0;
      }

      else
      {
        v12 = 0;
        v13 = 1;
        do
        {
          [v10 objectAtIndexedSubscript:v12];

          v14 = [v11 objectAtIndexedSubscript:v12];
          v15 = MRContentItemGetIdentifier();
          v16 = [v14 identifier];
          v17 = [v15 isEqualToString:v16];

          if ((v17 & 1) == 0)
          {
            break;
          }

          v13 = ++v12 < v7;
        }

        while (v7 != v12);
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return [(_NMRPlaybackQueue *)self->_upNextPlaybackQueue contentItemsCount]!= 0;
  }

  return v13;
}

- (BOOL)_needsMetadataForMediaRemoteItem:(void *)a3
{
  v4 = MRContentItemGetIdentifier();
  v5 = [(NMRPlaybackQueue *)self _metadataForItemWithIdentifier:v4];
  LOBYTE(self) = v5 == 0;

  return self;
}

- (id)_metadataForItemWithIdentifier:(id)a3
{
  v3 = [(NMRPlaybackQueue *)self _itemWithIdentifier:a3];
  v4 = [v3 metadata];

  return v4;
}

- (id)_itemWithIdentifier:(id)a3
{
  upNextPlaybackQueue = self->_upNextPlaybackQueue;
  v4 = a3;
  v5 = [(_NMRPlaybackQueue *)upNextPlaybackQueue contentItems];
  v6 = sub_1000105B4(v4, v5);

  return v6;
}

- (NMRPlaybackQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)observedRange
{
  length = self->_observedRange.length;
  location = self->_observedRange.location;
  result.var1 = length;
  result.var0 = location;
  return result;
}

@end