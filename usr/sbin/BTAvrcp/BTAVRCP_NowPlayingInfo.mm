@interface BTAVRCP_NowPlayingInfo
- (BOOL)isBrowsablePlayer;
- (BOOL)isMusicApp;
- (BTAVRCP_NowPlayingInfo)init;
- (BTAVRCP_NowPlayingInfoDelegate)delegate;
- (float)_defaultPlaybackRate;
- (float)_playbackRate;
- (id)playerName;
- (id)trackAlbum;
- (id)trackArtist;
- (id)trackDuration;
- (id)trackGenre;
- (id)trackImageHandle;
- (id)trackPosition;
- (id)trackQueueCount;
- (id)trackQueueIndex;
- (id)trackTitle;
- (int)playerId;
- (int64_t)playbackState;
- (unint64_t)_getEncodingForMimeType:(id)a3;
- (unint64_t)_trackHash;
- (unint64_t)trackId;
- (void)_activeOriginDidChange:(void *)a3;
- (void)_appDidChange:(id)a3;
- (void)_appIsPlayingDidChangeNotification:(id)a3;
- (void)_infoDidChange:(id)a3;
- (void)_initializeState;
- (void)_playbackQueueDidChange;
- (void)_playbackStateDidChange;
- (void)_settingsDidChange:(id)a3;
- (void)_supportedCommandsDidChange:(id)a3;
- (void)_trackDidChange;
- (void)dealloc;
@end

@implementation BTAVRCP_NowPlayingInfo

- (BTAVRCP_NowPlayingInfo)init
{
  v14.receiver = self;
  v14.super_class = BTAVRCP_NowPlayingInfo;
  v2 = [(BTAVRCP_NowPlayingInfo *)&v14 init];
  if (v2)
  {
    v3 = [NSSet alloc];
    v15[0] = off_10001EE50;
    v15[1] = off_10001EE58;
    v15[2] = off_10001EE60;
    v4 = [NSArray arrayWithObjects:v15 count:3];
    v5 = [v3 initWithArray:v4];
    v6 = *(v2 + 3);
    *(v2 + 3) = v5;

    objc_storeStrong(v2 + 5, off_10001EE50);
    v2[8] = 0;
    *(v2 + 56) = xmmword_100012FE0;
    *(v2 + 9) = 0x100000001;
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_infoDidChangeNotification" name:kMRMediaRemoteNowPlayingInfoDidChangeNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"_appDidChangeNotification:" name:kMRMediaRemoteNowPlayingApplicationDidChangeNotification object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"_appIsPlayingDidChangeNotification:" name:kMRMediaRemoteNowPlayingApplicationIsPlayingDidChangeNotification object:0];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v2 selector:"_playbackQueueDidChangeNotification" name:MPMusicPlayerControllerQueueDidChangeNotification object:0];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v2 selector:"_activeOriginDidChangeNotification" name:kMRMediaRemoteActiveOriginDidChangeNotification object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v2 selector:"_supportedCommandsDidChangeNotification" name:kMRMediaRemoteSupportedCommandsDidChangeNotification object:0];

    MRMediaRemoteRegisterForNowPlayingNotifications();
    MRMediaRemoteSetWantsOriginChangeNotifications();
    MRMediaRemoteSetWantsSupportedCommandsChangedNotifications();
    [v2 _initializeState];
  }

  return v2;
}

- (void)_initializeState
{
  v3 = dispatch_get_global_queue(2, 0);
  v4 = objc_alloc_init(BTAVRCP_Syncifier);
  v5 = [(BTAVRCP_Syncifier *)v4 createSwitcher];
  MRMediaRemoteGetNowPlayingInfoWithOptionalArtwork();
  v6 = [(BTAVRCP_Syncifier *)v4 createSwitcher];
  MRMediaRemoteGetNowPlayingApplicationDisplayID();
  v7 = [(BTAVRCP_Syncifier *)v4 createSwitcher];
  MRMediaRemoteGetNowPlayingApplicationIsPlaying();
  v8 = [(BTAVRCP_Syncifier *)v4 createSwitcher];
  MRMediaRemoteGetActiveOrigin();
  v9 = [(BTAVRCP_Syncifier *)v4 createSwitcher];
  MRMediaRemoteCopySupportedCommands();
  if (![(BTAVRCP_Syncifier *)v4 wait:3.0, _NSConcreteStackBlock, 3221225472, sub_10000C090, &unk_100018D10, self])
  {
    v10 = qword_10001EFD0;
    if (os_log_type_enabled(qword_10001EFD0, OS_LOG_TYPE_ERROR))
    {
      sub_10000EB48(v10);
    }
  }
}

- (void)dealloc
{
  if (os_log_type_enabled(qword_10001EFD0, OS_LOG_TYPE_DEBUG))
  {
    sub_10000EB8C();
  }

  MRMediaRemoteUnregisterForNowPlayingNotifications();
  MRMediaRemoteSetWantsOriginChangeNotifications();
  MRMediaRemoteSetWantsSupportedCommandsChangedNotifications();
  if ([(BTAVRCP_NowPlayingInfo *)self mrActiveOrigin])
  {
    CFRelease([(BTAVRCP_NowPlayingInfo *)self mrActiveOrigin]);
  }

  v3.receiver = self;
  v3.super_class = BTAVRCP_NowPlayingInfo;
  [(BTAVRCP_NowPlayingInfo *)&v3 dealloc];
}

- (unint64_t)_getEncodingForMimeType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"image/jpeg"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"image/png"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_appIsPlayingDidChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:kMRMediaRemoteNowPlayingApplicationIsPlayingUserInfoKey];
  v6 = [v5 BOOLValue];

  [(BTAVRCP_NowPlayingInfo *)self _appIsPlayingDidChange:v6];
}

- (void)_infoDidChange:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(qword_10001EFD0, OS_LOG_TYPE_DEBUG))
  {
    sub_10000EBCC();
  }

  [(BTAVRCP_NowPlayingInfo *)self setMrInfo:v4];
  [(BTAVRCP_NowPlayingInfo *)self _playbackStateDidChange];
  [(BTAVRCP_NowPlayingInfo *)self _trackDidChange];
}

- (void)_appDidChange:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = off_10001EE50;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;
  if (os_log_type_enabled(qword_10001EFD0, OS_LOG_TYPE_DEBUG))
  {
    sub_10000EC3C();
  }

  v8 = [(BTAVRCP_NowPlayingInfo *)self mrAppIdentifier];
  v9 = [(__CFString *)v7 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    [(BTAVRCP_NowPlayingInfo *)self setMrAppIdentifier:v7];
    v10 = [(BTAVRCP_NowPlayingInfo *)self delegate];
    [v10 playerDidChange:{-[BTAVRCP_NowPlayingInfo playerId](self, "playerId")}];
  }
}

- (void)_playbackQueueDidChange
{
  if (os_log_type_enabled(qword_10001EFD0, OS_LOG_TYPE_DEBUG))
  {
    sub_10000ED38();
  }

  v3 = [(BTAVRCP_NowPlayingInfo *)self delegate];
  [v3 playbackQueueDidChange];
}

- (void)_activeOriginDidChange:(void *)a3
{
  v5 = qword_10001EFD0;
  if (os_log_type_enabled(qword_10001EFD0, OS_LOG_TYPE_DEBUG))
  {
    sub_10000ED78(v5, a3);
  }

  if ([(BTAVRCP_NowPlayingInfo *)self mrActiveOrigin]!= a3)
  {
    if ([(BTAVRCP_NowPlayingInfo *)self mrActiveOrigin])
    {
      CFRelease([(BTAVRCP_NowPlayingInfo *)self mrActiveOrigin]);
    }

    [(BTAVRCP_NowPlayingInfo *)self setMrActiveOrigin:a3];
    if ([(BTAVRCP_NowPlayingInfo *)self mrActiveOrigin])
    {
      CFRetain([(BTAVRCP_NowPlayingInfo *)self mrActiveOrigin]);
    }
  }
}

- (void)_supportedCommandsDidChange:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(qword_10001EFD0, OS_LOG_TYPE_DEBUG))
  {
    sub_10000EE18();
  }

  if ([v4 count])
  {
    v5 = 0;
    IntegerValueForKey = 1;
    v7 = 1;
    do
    {
      [v4 objectAtIndex:v5];
      Command = MRMediaRemoteCommandInfoGetCommand();
      if (Command == 26)
      {
        IntegerValueForKey = MRMediaRemoteCommandInfoGetIntegerValueForKey();
      }

      else if (Command == 25)
      {
        v7 = MRMediaRemoteCommandInfoGetIntegerValueForKey();
      }

      ++v5;
    }

    while (v5 < [v4 count]);
    v9 = v7 | (IntegerValueForKey << 32);
  }

  else
  {
    v9 = 0x100000001;
  }

  [(BTAVRCP_NowPlayingInfo *)self _settingsDidChange:v9];
}

- (id)trackTitle
{
  v2 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
  v3 = [v2 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoTitle];

  return v3;
}

- (id)trackAlbum
{
  v3 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
  v4 = [v3 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoAlbum];

  if (!v4)
  {
    v5 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v4 = [v5 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoRadioStationName];
  }

  return v4;
}

- (id)trackArtist
{
  v2 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
  v3 = [v2 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoArtist];

  return v3;
}

- (id)trackGenre
{
  v2 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
  v3 = [v2 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoGenre];

  return v3;
}

- (id)trackQueueIndex
{
  v3 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
  v4 = [v3 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoQueueIndex];

  if (v4)
  {
    v5 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 unsignedIntValue] + 1);
  }

  else
  {
    v6 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v5 = [v6 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoTrackNumber];
  }

  return v5;
}

- (id)trackQueueCount
{
  v3 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
  v4 = [v3 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoQueueIndex];

  v5 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
  v6 = v5;
  v7 = &kMRMediaRemoteNowPlayingInfoTotalTrackCount;
  if (v4)
  {
    v7 = &kMRMediaRemoteNowPlayingInfoTotalQueueCount;
  }

  v8 = [v5 objectForKeyedSubscript:*v7];

  return v8;
}

- (id)trackDuration
{
  v2 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
  v3 = [v2 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoDuration];

  if (v3)
  {
    [v3 doubleValue];
    v5 = [NSNumber numberWithDouble:v4 * 1000.0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)trackPosition
{
  v3 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
  v4 = [v3 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoTimestamp];

  if (v4)
  {
    v5 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v6 = [v5 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoElapsedTime];

    if (v6)
    {
      [v6 doubleValue];
      v8 = v7 * 1000.0 + 0.0;
    }

    else
    {
      v8 = 0.0;
    }

    [(BTAVRCP_NowPlayingInfo *)self _playbackRate];
    if (v10 != 0.0)
    {
      v11 = v10;
      v12 = +[NSDate date];
      [v12 timeIntervalSinceDate:v4];
      v14 = v13;

      v8 = v8 + v14 * v11 * 1000.0;
    }

    v9 = [NSNumber numberWithDouble:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)trackImageHandle
{
  v3 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
  v4 = [v3 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoArtworkIdentifier];

  if (v4)
  {
    currentArtworkIdentifier = self->_currentArtworkIdentifier;
    p_currentArtworkIdentifier = &self->_currentArtworkIdentifier;
    if (([v4 isEqualToString:currentArtworkIdentifier] & 1) == 0)
    {
      ++qword_10001EF88;
      objc_storeStrong(p_currentArtworkIdentifier, v4);
    }

    v7 = [NSString stringWithFormat:@"%tu", qword_10001EF88];
  }

  else
  {
    v8 = qword_10001EFD0;
    if (os_log_type_enabled(qword_10001EFD0, OS_LOG_TYPE_ERROR))
    {
      sub_10000EE88(self, v8);
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)isBrowsablePlayer
{
  v3 = [(BTAVRCP_NowPlayingInfo *)self browsablePlayers];
  v4 = [(BTAVRCP_NowPlayingInfo *)self mrAppIdentifier];
  v5 = [v3 containsObject:v4];

  return v5;
}

- (int)playerId
{
  if ([(BTAVRCP_NowPlayingInfo *)self isBrowsablePlayer])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)playerName
{
  v2 = [(BTAVRCP_NowPlayingInfo *)self mrAppIdentifier];
  v3 = [LSApplicationProxy applicationProxyForIdentifier:v2];

  v4 = [v3 localizedName];

  if (v4)
  {
    v5 = [v3 localizedName];
  }

  else
  {
    v6 = +[NSBundle mobileBluetoothBundle];
    v5 = [v6 localizedStringForKey:@"UNKNOWN_MEDIA_PLAYER" value:@"Unknown Media Player" table:0];
  }

  return v5;
}

- (float)_playbackRate
{
  v3 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
  v4 = [v3 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoPlaybackRate];

  if (v4)
  {
    [v4 floatValue];
    v6 = v5;
  }

  else if ([(BTAVRCP_NowPlayingInfo *)self mrAppIsPlaying])
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (float)_defaultPlaybackRate
{
  v2 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
  v3 = [v2 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoDefaultPlaybackRate];

  if (v3)
  {
    [v3 floatValue];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (int64_t)playbackState
{
  if (![(BTAVRCP_NowPlayingInfo *)self mrAppIsPlaying])
  {
    return 2 * ([(BTAVRCP_NowPlayingInfo *)self trackId]!= -1);
  }

  [(BTAVRCP_NowPlayingInfo *)self _playbackRate];
  if (v3 < 0.0)
  {
    return 4;
  }

  v5 = v3;
  if (v3 <= 1.0)
  {
    return 1;
  }

  [(BTAVRCP_NowPlayingInfo *)self _defaultPlaybackRate];
  if (v5 <= v6)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (void)_playbackStateDidChange
{
  v3 = [(BTAVRCP_NowPlayingInfo *)self playbackState];
  if (v3 != [(BTAVRCP_NowPlayingInfo *)self currentPlaybackState])
  {
    [(BTAVRCP_NowPlayingInfo *)self setCurrentPlaybackState:v3];
    v4 = [(BTAVRCP_NowPlayingInfo *)self delegate];
    [v4 playbackStateDidChange:v3];
  }
}

- (unint64_t)_trackHash
{
  v3 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];

  if (v3)
  {
    v31 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v30 = [v31 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoAlbum];
    v4 = [v30 hash];
    v29 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v28 = [v29 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoArtist];
    v5 = [v28 hash] ^ v4;
    v27 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v26 = [v27 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoTitle];
    v6 = [v26 hash];
    v25 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v24 = [v25 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoGenre];
    v7 = v5 ^ v6 ^ [v24 hash];
    v23 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v22 = [v23 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoQueueIndex];
    v8 = [v22 hash];
    v21 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v9 = [v21 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoTotalQueueCount];
    v10 = v8 ^ [v9 hash];
    v11 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v12 = [v11 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoTrackNumber];
    v13 = v7 ^ v10 ^ [v12 hash];
    v14 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v15 = [v14 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoTotalTrackCount];
    v16 = [v15 hash];
    v17 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v18 = [v17 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoDuration];
    v19 = v13 ^ v16 ^ [v18 hash];
  }

  else if ([(BTAVRCP_NowPlayingInfo *)self isBrowsablePlayer])
  {
    return -1;
  }

  else
  {
    return [(BTAVRCP_NowPlayingInfo *)self mrAppIsPlaying]- 1;
  }

  return v19;
}

- (unint64_t)trackId
{
  v3 = [(BTAVRCP_NowPlayingInfo *)self isBrowsablePlayer];
  v4 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoUniqueIdentifier];

    if (v6)
    {
      goto LABEL_7;
    }

    v7 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v6 = [v7 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoiTunesStoreIdentifier];

    if (v6)
    {
      goto LABEL_7;
    }

    v8 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v6 = [v8 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoExternalContentIdentifier];

    if (v6)
    {
      goto LABEL_7;
    }

    v9 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v6 = [v9 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoiTunesStoreSubscriptionAdamIdentifier];

    if (v6 || (-[BTAVRCP_NowPlayingInfo mrInfo](self, "mrInfo"), v10 = objc_claimAutoreleasedReturnValue(), [v10 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoRadioStationIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v10, v6))
    {
LABEL_7:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v6 unsignedLongLongValue];
      }

      else
      {
        v11 = [v6 hash];
      }

      v12 = v11;
    }

    else
    {
      return -1;
    }
  }

  else if (v4)
  {

    return 0;
  }

  else
  {
    return [(BTAVRCP_NowPlayingInfo *)self mrAppIsPlaying]- 1;
  }

  return v12;
}

- (void)_trackDidChange
{
  v3 = [(BTAVRCP_NowPlayingInfo *)self _trackHash];
  if (v3 != [(BTAVRCP_NowPlayingInfo *)self currentTrackHash])
  {
    [(BTAVRCP_NowPlayingInfo *)self setCurrentTrackHash:v3];
    v4 = [(BTAVRCP_NowPlayingInfo *)self delegate];
    [v4 trackDidChange:{-[BTAVRCP_NowPlayingInfo trackId](self, "trackId")}];
  }
}

- (void)_settingsDidChange:(id)a3
{
  if (a3.var0 != [(BTAVRCP_NowPlayingInfo *)self currentSettings]|| ([(BTAVRCP_NowPlayingInfo *)self currentSettings]^ *&a3) >> 32)
  {
    [(BTAVRCP_NowPlayingInfo *)self setCurrentSettings:a3];
    v5 = [(BTAVRCP_NowPlayingInfo *)self delegate];
    [v5 settingsDidChange:{-[BTAVRCP_NowPlayingInfo currentSettings](self, "currentSettings")}];
  }
}

- (BOOL)isMusicApp
{
  v2 = [(BTAVRCP_NowPlayingInfo *)self mrAppIdentifier];
  v3 = [v2 isEqualToString:off_10001EE50];

  return v3;
}

- (BTAVRCP_NowPlayingInfoDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end