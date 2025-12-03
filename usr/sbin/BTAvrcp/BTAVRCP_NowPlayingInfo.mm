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
- (unint64_t)_getEncodingForMimeType:(id)type;
- (unint64_t)_trackHash;
- (unint64_t)trackId;
- (void)_activeOriginDidChange:(void *)change;
- (void)_appDidChange:(id)change;
- (void)_appIsPlayingDidChangeNotification:(id)notification;
- (void)_infoDidChange:(id)change;
- (void)_initializeState;
- (void)_playbackQueueDidChange;
- (void)_playbackStateDidChange;
- (void)_settingsDidChange:(id)change;
- (void)_supportedCommandsDidChange:(id)change;
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
  createSwitcher = [(BTAVRCP_Syncifier *)v4 createSwitcher];
  MRMediaRemoteGetNowPlayingInfoWithOptionalArtwork();
  createSwitcher2 = [(BTAVRCP_Syncifier *)v4 createSwitcher];
  MRMediaRemoteGetNowPlayingApplicationDisplayID();
  createSwitcher3 = [(BTAVRCP_Syncifier *)v4 createSwitcher];
  MRMediaRemoteGetNowPlayingApplicationIsPlaying();
  createSwitcher4 = [(BTAVRCP_Syncifier *)v4 createSwitcher];
  MRMediaRemoteGetActiveOrigin();
  createSwitcher5 = [(BTAVRCP_Syncifier *)v4 createSwitcher];
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

- (unint64_t)_getEncodingForMimeType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"image/jpeg"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"image/png"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_appIsPlayingDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingApplicationIsPlayingUserInfoKey];
  bOOLValue = [v5 BOOLValue];

  [(BTAVRCP_NowPlayingInfo *)self _appIsPlayingDidChange:bOOLValue];
}

- (void)_infoDidChange:(id)change
{
  changeCopy = change;
  if (os_log_type_enabled(qword_10001EFD0, OS_LOG_TYPE_DEBUG))
  {
    sub_10000EBCC();
  }

  [(BTAVRCP_NowPlayingInfo *)self setMrInfo:changeCopy];
  [(BTAVRCP_NowPlayingInfo *)self _playbackStateDidChange];
  [(BTAVRCP_NowPlayingInfo *)self _trackDidChange];
}

- (void)_appDidChange:(id)change
{
  changeCopy = change;
  v5 = changeCopy;
  v6 = off_10001EE50;
  if (changeCopy)
  {
    v6 = changeCopy;
  }

  v7 = v6;
  if (os_log_type_enabled(qword_10001EFD0, OS_LOG_TYPE_DEBUG))
  {
    sub_10000EC3C();
  }

  mrAppIdentifier = [(BTAVRCP_NowPlayingInfo *)self mrAppIdentifier];
  v9 = [(__CFString *)v7 isEqualToString:mrAppIdentifier];

  if ((v9 & 1) == 0)
  {
    [(BTAVRCP_NowPlayingInfo *)self setMrAppIdentifier:v7];
    delegate = [(BTAVRCP_NowPlayingInfo *)self delegate];
    [delegate playerDidChange:{-[BTAVRCP_NowPlayingInfo playerId](self, "playerId")}];
  }
}

- (void)_playbackQueueDidChange
{
  if (os_log_type_enabled(qword_10001EFD0, OS_LOG_TYPE_DEBUG))
  {
    sub_10000ED38();
  }

  delegate = [(BTAVRCP_NowPlayingInfo *)self delegate];
  [delegate playbackQueueDidChange];
}

- (void)_activeOriginDidChange:(void *)change
{
  v5 = qword_10001EFD0;
  if (os_log_type_enabled(qword_10001EFD0, OS_LOG_TYPE_DEBUG))
  {
    sub_10000ED78(v5, change);
  }

  if ([(BTAVRCP_NowPlayingInfo *)self mrActiveOrigin]!= change)
  {
    if ([(BTAVRCP_NowPlayingInfo *)self mrActiveOrigin])
    {
      CFRelease([(BTAVRCP_NowPlayingInfo *)self mrActiveOrigin]);
    }

    [(BTAVRCP_NowPlayingInfo *)self setMrActiveOrigin:change];
    if ([(BTAVRCP_NowPlayingInfo *)self mrActiveOrigin])
    {
      CFRetain([(BTAVRCP_NowPlayingInfo *)self mrActiveOrigin]);
    }
  }
}

- (void)_supportedCommandsDidChange:(id)change
{
  changeCopy = change;
  if (os_log_type_enabled(qword_10001EFD0, OS_LOG_TYPE_DEBUG))
  {
    sub_10000EE18();
  }

  if ([changeCopy count])
  {
    v5 = 0;
    IntegerValueForKey = 1;
    v7 = 1;
    do
    {
      [changeCopy objectAtIndex:v5];
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

    while (v5 < [changeCopy count]);
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
  mrInfo = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
  v3 = [mrInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoTitle];

  return v3;
}

- (id)trackAlbum
{
  mrInfo = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
  v4 = [mrInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoAlbum];

  if (!v4)
  {
    mrInfo2 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v4 = [mrInfo2 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoRadioStationName];
  }

  return v4;
}

- (id)trackArtist
{
  mrInfo = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
  v3 = [mrInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoArtist];

  return v3;
}

- (id)trackGenre
{
  mrInfo = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
  v3 = [mrInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoGenre];

  return v3;
}

- (id)trackQueueIndex
{
  mrInfo = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
  v4 = [mrInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoQueueIndex];

  if (v4)
  {
    v5 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 unsignedIntValue] + 1);
  }

  else
  {
    mrInfo2 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v5 = [mrInfo2 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoTrackNumber];
  }

  return v5;
}

- (id)trackQueueCount
{
  mrInfo = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
  v4 = [mrInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoQueueIndex];

  mrInfo2 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
  v6 = mrInfo2;
  v7 = &kMRMediaRemoteNowPlayingInfoTotalTrackCount;
  if (v4)
  {
    v7 = &kMRMediaRemoteNowPlayingInfoTotalQueueCount;
  }

  v8 = [mrInfo2 objectForKeyedSubscript:*v7];

  return v8;
}

- (id)trackDuration
{
  mrInfo = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
  v3 = [mrInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoDuration];

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
  mrInfo = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
  v4 = [mrInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoTimestamp];

  if (v4)
  {
    mrInfo2 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v6 = [mrInfo2 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoElapsedTime];

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
  mrInfo = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
  v4 = [mrInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoArtworkIdentifier];

  if (v4)
  {
    currentArtworkIdentifier = self->_currentArtworkIdentifier;
    p_currentArtworkIdentifier = &self->_currentArtworkIdentifier;
    if (([v4 isEqualToString:currentArtworkIdentifier] & 1) == 0)
    {
      ++qword_10001EF88;
      objc_storeStrong(p_currentArtworkIdentifier, v4);
    }

    qword_10001EF88 = [NSString stringWithFormat:@"%tu", qword_10001EF88];
  }

  else
  {
    v8 = qword_10001EFD0;
    if (os_log_type_enabled(qword_10001EFD0, OS_LOG_TYPE_ERROR))
    {
      sub_10000EE88(self, v8);
    }

    qword_10001EF88 = 0;
  }

  return qword_10001EF88;
}

- (BOOL)isBrowsablePlayer
{
  browsablePlayers = [(BTAVRCP_NowPlayingInfo *)self browsablePlayers];
  mrAppIdentifier = [(BTAVRCP_NowPlayingInfo *)self mrAppIdentifier];
  v5 = [browsablePlayers containsObject:mrAppIdentifier];

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
  mrAppIdentifier = [(BTAVRCP_NowPlayingInfo *)self mrAppIdentifier];
  v3 = [LSApplicationProxy applicationProxyForIdentifier:mrAppIdentifier];

  localizedName = [v3 localizedName];

  if (localizedName)
  {
    localizedName2 = [v3 localizedName];
  }

  else
  {
    v6 = +[NSBundle mobileBluetoothBundle];
    localizedName2 = [v6 localizedStringForKey:@"UNKNOWN_MEDIA_PLAYER" value:@"Unknown Media Player" table:0];
  }

  return localizedName2;
}

- (float)_playbackRate
{
  mrInfo = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
  v4 = [mrInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoPlaybackRate];

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
  mrInfo = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
  v3 = [mrInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoDefaultPlaybackRate];

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
  playbackState = [(BTAVRCP_NowPlayingInfo *)self playbackState];
  if (playbackState != [(BTAVRCP_NowPlayingInfo *)self currentPlaybackState])
  {
    [(BTAVRCP_NowPlayingInfo *)self setCurrentPlaybackState:playbackState];
    delegate = [(BTAVRCP_NowPlayingInfo *)self delegate];
    [delegate playbackStateDidChange:playbackState];
  }
}

- (unint64_t)_trackHash
{
  mrInfo = [(BTAVRCP_NowPlayingInfo *)self mrInfo];

  if (mrInfo)
  {
    mrInfo2 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v30 = [mrInfo2 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoAlbum];
    v4 = [v30 hash];
    mrInfo3 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v28 = [mrInfo3 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoArtist];
    v5 = [v28 hash] ^ v4;
    mrInfo4 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v26 = [mrInfo4 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoTitle];
    v6 = [v26 hash];
    mrInfo5 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v24 = [mrInfo5 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoGenre];
    v7 = v5 ^ v6 ^ [v24 hash];
    mrInfo6 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v22 = [mrInfo6 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoQueueIndex];
    v8 = [v22 hash];
    mrInfo7 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v9 = [mrInfo7 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoTotalQueueCount];
    v10 = v8 ^ [v9 hash];
    mrInfo8 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v12 = [mrInfo8 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoTrackNumber];
    v13 = v7 ^ v10 ^ [v12 hash];
    mrInfo9 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v15 = [mrInfo9 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoTotalTrackCount];
    v16 = [v15 hash];
    mrInfo10 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v18 = [mrInfo10 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoDuration];
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
  isBrowsablePlayer = [(BTAVRCP_NowPlayingInfo *)self isBrowsablePlayer];
  mrInfo = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
  v5 = mrInfo;
  if (isBrowsablePlayer)
  {
    v6 = [mrInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoUniqueIdentifier];

    if (v6)
    {
      goto LABEL_7;
    }

    mrInfo2 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v6 = [mrInfo2 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoiTunesStoreIdentifier];

    if (v6)
    {
      goto LABEL_7;
    }

    mrInfo3 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v6 = [mrInfo3 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoExternalContentIdentifier];

    if (v6)
    {
      goto LABEL_7;
    }

    mrInfo4 = [(BTAVRCP_NowPlayingInfo *)self mrInfo];
    v6 = [mrInfo4 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoiTunesStoreSubscriptionAdamIdentifier];

    if (v6 || (-[BTAVRCP_NowPlayingInfo mrInfo](self, "mrInfo"), v10 = objc_claimAutoreleasedReturnValue(), [v10 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoRadioStationIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v10, v6))
    {
LABEL_7:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        unsignedLongLongValue = [v6 unsignedLongLongValue];
      }

      else
      {
        unsignedLongLongValue = [v6 hash];
      }

      v12 = unsignedLongLongValue;
    }

    else
    {
      return -1;
    }
  }

  else if (mrInfo)
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
  _trackHash = [(BTAVRCP_NowPlayingInfo *)self _trackHash];
  if (_trackHash != [(BTAVRCP_NowPlayingInfo *)self currentTrackHash])
  {
    [(BTAVRCP_NowPlayingInfo *)self setCurrentTrackHash:_trackHash];
    delegate = [(BTAVRCP_NowPlayingInfo *)self delegate];
    [delegate trackDidChange:{-[BTAVRCP_NowPlayingInfo trackId](self, "trackId")}];
  }
}

- (void)_settingsDidChange:(id)change
{
  if (change.var0 != [(BTAVRCP_NowPlayingInfo *)self currentSettings]|| ([(BTAVRCP_NowPlayingInfo *)self currentSettings]^ *&change) >> 32)
  {
    [(BTAVRCP_NowPlayingInfo *)self setCurrentSettings:change];
    delegate = [(BTAVRCP_NowPlayingInfo *)self delegate];
    [delegate settingsDidChange:{-[BTAVRCP_NowPlayingInfo currentSettings](self, "currentSettings")}];
  }
}

- (BOOL)isMusicApp
{
  mrAppIdentifier = [(BTAVRCP_NowPlayingInfo *)self mrAppIdentifier];
  v3 = [mrAppIdentifier isEqualToString:off_10001EE50];

  return v3;
}

- (BTAVRCP_NowPlayingInfoDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end