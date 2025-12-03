@interface MediaInfo
- (MediaInfo)init;
- (MediaInfoDelegate)delegate;
- (double)preferredIntervalForCommand:(unsigned int)command;
- (float)defaultPlaybackRate;
- (float)playbackRate;
- (id)playerElapsedTime;
- (id)playerName;
- (id)playerPlaybackState;
- (id)playerVolume;
- (id)queueCount;
- (id)queueIndex;
- (id)queueRepeatMode;
- (id)queueShuffleMode;
- (id)supportedCommands;
- (id)trackAlbum;
- (id)trackArtist;
- (id)trackDuration;
- (id)trackTitle;
- (void)applicationDidChange:(id)change;
- (void)avEffectiveVolumeDidChangeNotification:(id)notification;
- (void)avServerConnectionDiedNotification;
- (void)dealloc;
- (void)infoDidChange:(id)change;
- (void)registerForAVNotifications;
- (void)sendCommand:(unsigned __int8)command;
- (void)setCurrentSupportedCommands:(__CFArray *)commands;
- (void)supportedCommandsDidChange:(__CFArray *)change;
- (void)unregisterForAVNotifications;
- (void)volumeDidChangeForCategory:(id)category;
@end

@implementation MediaInfo

- (MediaInfo)init
{
  v13.receiver = self;
  v13.super_class = MediaInfo;
  v2 = [(MediaInfo *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_currentPlaybackState = 0;
    v2->_currentSettings = 0x100000001;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"mrSupportedCommandsDidChangeNotification" name:kMRMediaRemoteSupportedCommandsDidChangeNotification object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v3 selector:"mrApplicationDidChangeNotification:" name:kMRMediaRemoteNowPlayingApplicationDidChangeNotification object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v3 selector:"mrPlaybackStateDidChangeNotification:" name:kMRMediaRemoteNowPlayingApplicationPlaybackStateDidChangeNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v3 selector:"mrInfoDidChangeNotification" name:kMRMediaRemoteNowPlayingInfoDidChangeNotification object:0];

    MRMediaRemoteSetWantsSupportedCommandsChangedNotifications();
    v12 = v3;
    MRMediaRemoteCopySupportedCommands();
    MRMediaRemoteRegisterForNowPlayingNotifications();

    v11 = v12;
    MRMediaRemoteGetNowPlayingApplicationDisplayID();

    v10 = v11;
    MRMediaRemoteGetNowPlayingApplicationPlaybackState();

    v9 = v10;
    MRMediaRemoteGetNowPlayingInfoWithOptionalArtwork();

    [(MediaInfo *)v9 registerForAVNotifications:_NSConcreteStackBlock];
  }

  return v3;
}

- (void)sendCommand:(unsigned __int8)command
{
  switch(command)
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xCu:
    case 0xDu:

      MRMediaRemoteSendCommand();
      return;
    case 5u:
      v5 = +[AVSystemController sharedAVSystemController];
      v7 = 1031798784;
      goto LABEL_5;
    case 6u:
      v5 = +[AVSystemController sharedAVSystemController];
      v7 = -1115684864;
LABEL_5:
      LODWORD(v6) = v7;
      [v5 changeVolumeBy:@"Audio/Video" forCategory:{v6, v5}];

      return;
    case 9u:
      v12 = kMRMediaRemoteOptionSkipInterval;
      [(MediaInfo *)self preferredIntervalForCommand:17];
      v3 = [NSNumber numberWithDouble:?];
      v13 = v3;
      v4 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];

      goto LABEL_9;
    case 0xAu:
      v10 = kMRMediaRemoteOptionSkipInterval;
      [(MediaInfo *)self preferredIntervalForCommand:18];
      v8 = [NSNumber numberWithDouble:?];
      v11 = v8;
      v4 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

LABEL_9:
      MRMediaRemoteSendCommand();

      break;
    default:
      return;
  }
}

- (id)supportedCommands
{
  v3 = [NSMutableSet setWithObjects:&off_1000C3DC8, &off_1000C3DE0, 0];
  currentSettings = [(MediaInfo *)self currentSettings];
  var0 = currentSettings.var0;
  IntegerValueForKey = HIDWORD(*&currentSettings);
  if ([(MediaInfo *)self currentSupportedCommands]&& CFArrayGetCount([(MediaInfo *)self currentSupportedCommands]) >= 1)
  {
    v7 = 0;
    do
    {
      CFArrayGetValueAtIndex([(MediaInfo *)self currentSupportedCommands], v7);
      Command = MRMediaRemoteCommandInfoGetCommand();
      v9 = &off_1000C3DF8;
      switch(Command)
      {
        case 0:
          goto LABEL_18;
        case 1:
          v9 = &off_1000C3E10;
          goto LABEL_18;
        case 2:
          v9 = &off_1000C3E28;
          goto LABEL_18;
        case 4:
          v9 = &off_1000C3E40;
          goto LABEL_18;
        case 5:
          v9 = &off_1000C3E58;
          goto LABEL_18;
        case 6:
          v9 = &off_1000C3E88;
          goto LABEL_18;
        case 7:
          v9 = &off_1000C3E70;
          goto LABEL_18;
        case 17:
          v9 = &off_1000C3EA0;
          goto LABEL_18;
        case 18:
          v9 = &off_1000C3EB8;
          goto LABEL_18;
        case 21:
          v9 = &off_1000C3ED0;
          goto LABEL_18;
        case 22:
          v9 = &off_1000C3EE8;
          goto LABEL_18;
        case 23:
          v9 = &off_1000C3F00;
LABEL_18:
          [v3 addObject:v9];
          break;
        case 25:
          var0 = MRMediaRemoteCommandInfoGetIntegerValueForKey();
          break;
        case 26:
          IntegerValueForKey = MRMediaRemoteCommandInfoGetIntegerValueForKey();
          break;
        default:
          break;
      }

      ++v7;
    }

    while (v7 < CFArrayGetCount([(MediaInfo *)self currentSupportedCommands]));
  }

  [(MediaInfo *)self setCurrentSettings:var0 | (IntegerValueForKey << 32)];

  return v3;
}

- (id)playerName
{
  currentIdentifier = [(MediaInfo *)self currentIdentifier];

  if (currentIdentifier)
  {
    currentIdentifier2 = [(MediaInfo *)self currentIdentifier];
    v5 = [LSApplicationProxy applicationProxyForIdentifier:currentIdentifier2];

    localizedName = [v5 localizedName];
  }

  else
  {
    localizedName = 0;
  }

  return localizedName;
}

- (id)playerPlaybackState
{
  [(MediaInfo *)self playbackRate];
  if (v3 < 0.0)
  {
    return &off_1000C3E28;
  }

  if (v3 == 0.0)
  {
    return &off_1000C3DF8;
  }

  v5 = v3;
  v4 = &off_1000C3E10;
  if (v3 > 1.0)
  {
    [(MediaInfo *)self defaultPlaybackRate];
    if (v5 != v6)
    {
      return &off_1000C3E40;
    }
  }

  return v4;
}

- (id)playerVolume
{
  v7 = 0;
  v2 = +[AVSystemController sharedAVSystemController];
  v3 = [v2 getVolume:&v7 forCategory:@"Audio/Video"];

  if (v3)
  {
    LODWORD(v4) = v7;
    v5 = [NSNumber numberWithFloat:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)playerElapsedTime
{
  currentInfo = [(MediaInfo *)self currentInfo];
  v4 = [currentInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoTimestamp];

  if (v4)
  {
    currentInfo2 = [(MediaInfo *)self currentInfo];
    v6 = [currentInfo2 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoElapsedTime];

    if (v6)
    {
      [v6 doubleValue];
      v8 = v7 + 0.0;
    }

    else
    {
      v8 = 0.0;
    }

    [(MediaInfo *)self playbackRate];
    if (v10 != 0.0)
    {
      v11 = v10;
      v12 = +[NSDate date];
      [v12 timeIntervalSinceDate:v4];
      v14 = v13;

      v8 = v8 + v14 * v11;
    }

    v9 = [NSNumber numberWithDouble:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)queueIndex
{
  currentInfo = [(MediaInfo *)self currentInfo];
  v3 = [currentInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoQueueIndex];

  return v3;
}

- (id)queueCount
{
  currentInfo = [(MediaInfo *)self currentInfo];
  v3 = [currentInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoTotalQueueCount];

  return v3;
}

- (id)queueShuffleMode
{
  v2 = ([(MediaInfo *)self currentSettings]>> 32) - 1;
  if (v2 > 2)
  {
    return 0;
  }

  else
  {
    return (&off_1000BE808)[v2];
  }
}

- (id)queueRepeatMode
{
  v2 = [(MediaInfo *)self currentSettings]- 1;
  if (v2 > 2)
  {
    return 0;
  }

  else
  {
    return (&off_1000BE808)[v2];
  }
}

- (id)trackArtist
{
  currentInfo = [(MediaInfo *)self currentInfo];
  v3 = [currentInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoArtist];

  return v3;
}

- (id)trackAlbum
{
  currentInfo = [(MediaInfo *)self currentInfo];
  v3 = [currentInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoAlbum];

  return v3;
}

- (id)trackTitle
{
  currentInfo = [(MediaInfo *)self currentInfo];
  v3 = [currentInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoTitle];

  return v3;
}

- (id)trackDuration
{
  currentInfo = [(MediaInfo *)self currentInfo];
  v3 = [currentInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoDuration];

  return v3;
}

- (void)setCurrentSupportedCommands:(__CFArray *)commands
{
  currentSupportedCommands = self->_currentSupportedCommands;
  if (currentSupportedCommands)
  {
    CFRelease(currentSupportedCommands);
  }

  if (commands)
  {
    v6 = CFRetain(commands);
  }

  else
  {
    v6 = 0;
  }

  self->_currentSupportedCommands = v6;
}

- (void)dealloc
{
  [(MediaInfo *)self unregisterForAVNotifications];
  MRMediaRemoteUnregisterForNowPlayingNotifications();
  MRMediaRemoteSetWantsSupportedCommandsChangedNotifications();
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(MediaInfo *)self setCurrentSupportedCommands:0];
  v4.receiver = self;
  v4.super_class = MediaInfo;
  [(MediaInfo *)&v4 dealloc];
}

- (void)registerForAVNotifications
{
  v11[0] = AVSystemController_EffectiveVolumeDidChangeNotification;
  v11[1] = AVSystemController_ServerConnectionDiedNotification;
  v3 = [NSArray arrayWithObjects:v11 count:2];
  v4 = +[AVSystemController sharedAVSystemController];
  [v4 setAttribute:v3 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

  v5 = +[NSNotificationCenter defaultCenter];
  v6 = AVSystemController_EffectiveVolumeDidChangeNotification;
  v7 = +[AVSystemController sharedAVSystemController];
  [v5 addObserver:self selector:"avEffectiveVolumeDidChangeNotification:" name:v6 object:v7];

  v8 = +[NSNotificationCenter defaultCenter];
  v9 = AVSystemController_ServerConnectionDiedNotification;
  v10 = +[AVSystemController sharedAVSystemController];
  [v8 addObserver:self selector:"avServerConnectionDiedNotification" name:v9 object:v10];
}

- (void)unregisterForAVNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:AVSystemController_ServerConnectionDiedNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:AVSystemController_EffectiveVolumeDidChangeNotification object:0];
}

- (void)supportedCommandsDidChange:(__CFArray *)change
{
  [(MediaInfo *)self setCurrentSupportedCommands:change];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained supportedCommandsDidChange];
}

- (void)applicationDidChange:(id)change
{
  if (!change)
  {
    change = @"com.apple.Music";
  }

  [(MediaInfo *)self setCurrentIdentifier:change];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained mediaPlayerDidChange];
}

- (void)infoDidChange:(id)change
{
  [(MediaInfo *)self setCurrentInfo:change];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained mediaInfoDidChange];
}

- (void)volumeDidChangeForCategory:(id)category
{
  if ([category isEqualToString:@"Audio/Video"])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained mediaVolumeDidChange];
  }
}

- (void)avEffectiveVolumeDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v4 = [userInfo objectForKeyedSubscript:AVSystemController_EffectiveVolumeNotificationParameter_Category];
  [(MediaInfo *)self volumeDidChangeForCategory:v4];
}

- (void)avServerConnectionDiedNotification
{
  [(MediaInfo *)self unregisterForAVNotifications];

  [(MediaInfo *)self registerForAVNotifications];
}

- (float)playbackRate
{
  currentInfo = [(MediaInfo *)self currentInfo];
  v4 = [currentInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoPlaybackRate];

  if (v4)
  {
    [v4 floatValue];
    v6 = v5;
  }

  else if ([(MediaInfo *)self currentPlaybackState]== 1)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (float)defaultPlaybackRate
{
  currentInfo = [(MediaInfo *)self currentInfo];
  v3 = [currentInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoDefaultPlaybackRate];

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

- (double)preferredIntervalForCommand:(unsigned int)command
{
  if (CFArrayGetCount([(MediaInfo *)self currentSupportedCommands]) < 1)
  {
LABEL_5:
    v6 = 0;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex([(MediaInfo *)self currentSupportedCommands], v5);
      if (MRMediaRemoteCommandInfoGetCommand() == command)
      {
        break;
      }

      if (++v5 >= CFArrayGetCount([(MediaInfo *)self currentSupportedCommands]))
      {
        goto LABEL_5;
      }
    }

    v6 = MRMediaRemoteCommandInfoCopyValueForKey();
  }

  firstObject = [v6 firstObject];
  v8 = firstObject;
  if (firstObject)
  {
    [firstObject doubleValue];
    v10 = v9;
  }

  else
  {
    v10 = 15.0;
  }

  return v10;
}

- (MediaInfoDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end