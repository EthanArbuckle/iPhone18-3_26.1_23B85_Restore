@interface MCSService
+ (id)sharedInstance;
- (BOOL)currentTrackInfoItemDifferentFrom:(id)from forKey:(id)key;
- (MCSService)init;
- (id)contentControlIdData;
- (id)mediaControlPointOpcodesSupportedData;
- (id)mediaPlayerNameData;
- (id)mediaStateData;
- (id)playingOrderData;
- (id)playingOrdersSupportedData;
- (id)trackDurationData;
- (id)trackPositionData;
- (id)trackTitleData;
- (unsigned)mcsMediaControlOpcodeToMrCommand:(unsigned __int8)command;
- (unsigned)mrPlaybackStateFromMCSMediaControlOpcode:(unsigned __int8)opcode;
- (void)applicationDidChange:(id)change;
- (void)handleMediaControlPointWrite:(id)write;
- (void)handleSubscribersForCharacteristic:(id)characteristic withNotificationHandler:(id)handler;
- (void)handleTrackPositionWrite:(id)write;
- (void)infoDidChange:(id)change;
- (void)mediaControlPointNotification:(unsigned __int8)notification result:(unsigned __int8)result;
- (void)notifyMediaControlPointOpcodesSupported;
- (void)notifyMediaPlayerName;
- (void)notifyMediaState;
- (void)notifyPlayingOrder;
- (void)notifyTrackChanged;
- (void)notifyTrackDuration;
- (void)notifyTrackPosition;
- (void)notifyTrackTitle;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheralManager:(id)manager central:(id)central didSubscribeToCharacteristic:(id)characteristic;
- (void)peripheralManager:(id)manager central:(id)central didUnsubscribeFromCharacteristic:(id)characteristic;
- (void)peripheralManager:(id)manager didReceiveReadRequest:(id)request;
- (void)peripheralManager:(id)manager didReceiveWriteRequests:(id)requests;
- (void)playbackQueueDidChange:(void *)change;
- (void)supportedCommandsDidChange:(__CFArray *)change;
@end

@implementation MCSService

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029DD8;
  block[3] = &unk_1000953F0;
  block[4] = self;
  if (qword_1000AA018 != -1)
  {
    dispatch_once(&qword_1000AA018, block);
  }

  v2 = qword_1000AA010;

  return v2;
}

- (MCSService)init
{
  v70.receiver = self;
  v70.super_class = MCSService;
  v2 = [(MCSService *)&v70 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    currentTrackInfo = v2->_currentTrackInfo;
    v2->_currentTrackInfo = v3;

    v2->_mediaPlaybackState = 0;
    v2->_prevMediaPlaybackState = 0;
    v5 = +[NSString string];
    playerName = v2->_playerName;
    v2->_playerName = v5;

    v7 = +[NSArray array];
    supportedCommands = v2->_supportedCommands;
    v2->_supportedCommands = v7;

    v9 = [NSNumber numberWithInt:0];
    playbackQueueCount = v2->_playbackQueueCount;
    v2->_playbackQueueCount = v9;

    v11 = +[NSMutableDictionary dictionary];
    subscribedCentrals = v2->_subscribedCentrals;
    v2->_subscribedCentrals = v11;

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v2 selector:"mrSupportedCommandsDidChangeNotification" name:kMRMediaRemoteSupportedCommandsDidChangeNotification object:0];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v2 selector:"mrApplicationDidChangeNotification:" name:kMRMediaRemoteNowPlayingApplicationDidChangeNotification object:0];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v2 selector:"mrPlaybackStateDidChangeNotification:" name:kMRMediaRemoteNowPlayingApplicationPlaybackStateDidChangeNotification object:0];

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v2 selector:"mrNowPlayingInfoDidChangeNotification" name:kMRMediaRemoteNowPlayingInfoDidChangeNotification object:0];

    v17 = [CBMutableCharacteristic alloc];
    v18 = [CBUUID UUIDWithString:CBUUIDMediaPlayerNameCharacteristicString];
    v19 = [v17 initWithType:v18 properties:18 value:0 permissions:1];
    mediaPlayerNameCharacteristic = v2->_mediaPlayerNameCharacteristic;
    v2->_mediaPlayerNameCharacteristic = v19;

    v21 = [CBMutableCharacteristic alloc];
    v22 = [CBUUID UUIDWithString:CBUUIDTrackChangedCharacteristicString];
    v23 = [v21 initWithType:v22 properties:16 value:0 permissions:0];
    trackChangedCharacteristic = v2->_trackChangedCharacteristic;
    v2->_trackChangedCharacteristic = v23;

    v25 = [CBMutableCharacteristic alloc];
    v26 = [CBUUID UUIDWithString:CBUUIDTrackTitleCharacteristicString];
    v27 = [v25 initWithType:v26 properties:18 value:0 permissions:1];
    trackTitleCharacteristic = v2->_trackTitleCharacteristic;
    v2->_trackTitleCharacteristic = v27;

    v29 = [CBMutableCharacteristic alloc];
    v30 = [CBUUID UUIDWithString:CBUUIDTrackDurationCharacteristicString];
    v31 = [v29 initWithType:v30 properties:18 value:0 permissions:1];
    trackDurationCharacteristic = v2->_trackDurationCharacteristic;
    v2->_trackDurationCharacteristic = v31;

    v33 = [CBMutableCharacteristic alloc];
    v34 = [CBUUID UUIDWithString:CBUUIDTrackPositionCharacteristicString];
    v35 = [v33 initWithType:v34 properties:30 value:0 permissions:3];
    trackPositionCharacteristic = v2->_trackPositionCharacteristic;
    v2->_trackPositionCharacteristic = v35;

    v37 = [CBMutableCharacteristic alloc];
    v38 = [CBUUID UUIDWithString:CBUUIDPlayingOrderCharacteristicString];
    v39 = [v37 initWithType:v38 properties:30 value:0 permissions:3];
    playingOrderCharacteristic = v2->_playingOrderCharacteristic;
    v2->_playingOrderCharacteristic = v39;

    v41 = [CBMutableCharacteristic alloc];
    v42 = [CBUUID UUIDWithString:CBUUIDPlayingOrdersSupportedCharacteristicString];
    v43 = [v41 initWithType:v42 properties:2 value:0 permissions:1];
    playingOrdersSupportedCharacteristic = v2->_playingOrdersSupportedCharacteristic;
    v2->_playingOrdersSupportedCharacteristic = v43;

    v45 = [CBMutableCharacteristic alloc];
    v46 = [CBUUID UUIDWithString:CBUUIDMediaStateCharacteristicString];
    v47 = [v45 initWithType:v46 properties:18 value:0 permissions:1];
    mediaStateCharacteristic = v2->_mediaStateCharacteristic;
    v2->_mediaStateCharacteristic = v47;

    v49 = [CBMutableCharacteristic alloc];
    v50 = [CBUUID UUIDWithString:CBUUIDMediaControlPointCharacteristicString];
    v51 = [v49 initWithType:v50 properties:28 value:0 permissions:2];
    mediaControlPointCharacteristic = v2->_mediaControlPointCharacteristic;
    v2->_mediaControlPointCharacteristic = v51;

    v53 = [CBMutableCharacteristic alloc];
    v54 = [CBUUID UUIDWithString:CBUUIDMediaControlPointOpcodesSupportedCharacteristicString];
    v55 = [v53 initWithType:v54 properties:18 value:0 permissions:1];
    mediaControlPointOpcodesSupportedCharacteristic = v2->_mediaControlPointOpcodesSupportedCharacteristic;
    v2->_mediaControlPointOpcodesSupportedCharacteristic = v55;

    v57 = [CBMutableCharacteristic alloc];
    v58 = [CBUUID UUIDWithString:CBUUIDContentControlIdCharacteristicString];
    v59 = [v57 initWithType:v58 properties:2 value:0 permissions:1];
    contentControlIdCharacteristic = v2->_contentControlIdCharacteristic;
    v2->_contentControlIdCharacteristic = v59;

    v61 = [CBMutableService alloc];
    v62 = [CBUUID UUIDWithString:CBUUIDGenericMediaControlServiceString];
    v63 = [v61 initWithType:v62 primary:1];
    [(Service *)v2 setService:v63];

    v71[0] = v2->_mediaPlayerNameCharacteristic;
    v71[1] = v2->_trackChangedCharacteristic;
    v71[2] = v2->_trackTitleCharacteristic;
    v71[3] = v2->_trackDurationCharacteristic;
    v71[4] = v2->_trackPositionCharacteristic;
    v71[5] = v2->_playingOrderCharacteristic;
    v71[6] = v2->_playingOrdersSupportedCharacteristic;
    v71[7] = v2->_mediaStateCharacteristic;
    v71[8] = v2->_mediaControlPointCharacteristic;
    v71[9] = v2->_mediaControlPointOpcodesSupportedCharacteristic;
    v71[10] = v2->_contentControlIdCharacteristic;
    v64 = [NSArray arrayWithObjects:v71 count:11];
    service = [(Service *)v2 service];
    [service setCharacteristics:v64];
  }

  MRMediaRemoteSetWantsSupportedCommandsChangedNotifications();
  MRMediaRemoteSetWantsNowPlayingNotifications();
  v69 = v2;
  MRMediaRemoteGetSupportedCommands();
  v68 = v69;
  MRMediaRemoteGetNowPlayingApplicationPlaybackState();

  [(MCSService *)v68 attemptToFindNowPlayingApp];
  v66 = v68;

  return v66;
}

- (void)supportedCommandsDidChange:(__CFArray *)change
{
  if (change)
  {
    v4 = CFRetain(change);
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  obj = v4;
  if (![(NSArray *)self->_supportedCommands isEqualToArray:v4])
  {
    objc_storeStrong(&self->_supportedCommands, obj);
    [(MCSService *)self notifyMediaControlPointOpcodesSupported];
  }
}

- (void)applicationDidChange:(id)change
{
  changeCopy = change;
  v7 = changeCopy;
  if (changeCopy)
  {
    v5 = changeCopy;
  }

  else
  {
    v5 = +[NSString string];
  }

  playerName = self->_playerName;
  self->_playerName = v5;

  [(MCSService *)self notifyMediaPlayerName];
}

- (void)infoDidChange:(id)change
{
  changeCopy = change;
  currentTrackInfo = [(MCSService *)self currentTrackInfo];
  [(MCSService *)self setCurrentTrackInfo:changeCopy];

  currentTrackInfo2 = [(MCSService *)self currentTrackInfo];

  if (currentTrackInfo)
  {
    if (!currentTrackInfo2)
    {
      v7 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315138;
        v18 = "[MCSService infoDidChange:]";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s : Media information was lost, setting media state to inactive.", &v17, 0xCu);
      }

      self->_mediaPlaybackState = 0;
    }
  }

  else if (!currentTrackInfo2)
  {
    goto LABEL_20;
  }

  v8 = kMRMediaRemoteNowPlayingInfoTitle;
  v9 = [(MCSService *)self currentTrackInfoItemDifferentFrom:currentTrackInfo forKey:kMRMediaRemoteNowPlayingInfoTitle];
  v10 = [(MCSService *)self currentTrackInfoItemDifferentFrom:currentTrackInfo forKey:kMRMediaRemoteNowPlayingInfoDuration];
  if (v9)
  {
    v11 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      currentTrackInfo3 = [(MCSService *)self currentTrackInfo];
      v14 = [currentTrackInfo3 objectForKeyedSubscript:v8];
      v15 = [currentTrackInfo objectForKeyedSubscript:v8];
      v17 = 136315650;
      v18 = "[MCSService infoDidChange:]";
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s : new track - %@, previous track - %@ ", &v17, 0x20u);
    }

    [(MCSService *)self notifyTrackTitle];
  }

  if (v10)
  {
    [(MCSService *)self notifyTrackDuration];
  }

  if ([(MCSService *)self currentTrackInfoItemDifferentFrom:currentTrackInfo forKey:kMRMediaRemoteNowPlayingInfoTrackNumber])
  {
    [(MCSService *)self notifyTrackChanged];
  }

  if ([(MCSService *)self mediaPlaybackState]== 2 || [(MCSService *)self mediaPlaybackState]== 3)
  {
    [(MCSService *)self notifyTrackPosition];
  }

  prevMediaPlaybackState = [(MCSService *)self prevMediaPlaybackState];
  if (prevMediaPlaybackState != [(MCSService *)self mediaPlaybackState])
  {
    [(MCSService *)self setPrevMediaPlaybackState:[(MCSService *)self mediaPlaybackState]];
    [(MCSService *)self notifyMediaState];
  }

LABEL_20:
}

- (void)playbackQueueDidChange:(void *)change
{
  v4 = [NSNumber numberWithUnsignedLong:MRPlaybackQueueGetContentItemsCount()];
  [(MCSService *)self setPlaybackQueueCount:v4];

  [(MCSService *)self notifyPlayingOrder];
}

- (void)peripheralManager:(id)manager didReceiveReadRequest:(id)request
{
  managerCopy = manager;
  requestCopy = request;
  v8 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    characteristic = [requestCopy characteristic];
    uUID = [characteristic UUID];
    v35 = 136315394;
    v36 = "[MCSService peripheralManager:didReceiveReadRequest:]";
    v37 = 2112;
    v38 = uUID;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s : called for %@", &v35, 0x16u);
  }

  characteristic2 = [requestCopy characteristic];
  mediaPlayerNameCharacteristic = [(MCSService *)self mediaPlayerNameCharacteristic];

  if (characteristic2 == mediaPlayerNameCharacteristic)
  {
    mediaPlayerNameData = [(MCSService *)self mediaPlayerNameData];
LABEL_25:
    trackTitleData = mediaPlayerNameData;
    goto LABEL_26;
  }

  characteristic3 = [requestCopy characteristic];
  trackTitleCharacteristic = [(MCSService *)self trackTitleCharacteristic];

  if (characteristic3 == trackTitleCharacteristic)
  {
    trackTitleData = [(MCSService *)self trackTitleData];
    if (![trackTitleData length])
    {
      v34 = +[NSData data];
      [requestCopy setValue:v34];

LABEL_27:
      v31 = 0;
      goto LABEL_28;
    }

LABEL_26:
    [requestCopy setValue:trackTitleData];
    goto LABEL_27;
  }

  characteristic4 = [requestCopy characteristic];
  trackDurationCharacteristic = [(MCSService *)self trackDurationCharacteristic];

  if (characteristic4 == trackDurationCharacteristic)
  {
    mediaPlayerNameData = [(MCSService *)self trackDurationData];
    goto LABEL_25;
  }

  characteristic5 = [requestCopy characteristic];
  trackPositionCharacteristic = [(MCSService *)self trackPositionCharacteristic];

  if (characteristic5 == trackPositionCharacteristic)
  {
    mediaPlayerNameData = [(MCSService *)self trackPositionData];
    goto LABEL_25;
  }

  characteristic6 = [requestCopy characteristic];
  playingOrderCharacteristic = [(MCSService *)self playingOrderCharacteristic];

  if (characteristic6 == playingOrderCharacteristic)
  {
    mediaPlayerNameData = [(MCSService *)self playingOrderData];
    goto LABEL_25;
  }

  characteristic7 = [requestCopy characteristic];
  playingOrdersSupportedCharacteristic = [(MCSService *)self playingOrdersSupportedCharacteristic];

  if (characteristic7 == playingOrdersSupportedCharacteristic)
  {
    mediaPlayerNameData = [(MCSService *)self playingOrdersSupportedData];
    goto LABEL_25;
  }

  characteristic8 = [requestCopy characteristic];
  mediaStateCharacteristic = [(MCSService *)self mediaStateCharacteristic];

  if (characteristic8 == mediaStateCharacteristic)
  {
    mediaPlayerNameData = [(MCSService *)self mediaStateData];
    goto LABEL_25;
  }

  characteristic9 = [requestCopy characteristic];
  mediaControlPointOpcodesSupportedCharacteristic = [(MCSService *)self mediaControlPointOpcodesSupportedCharacteristic];

  if (characteristic9 == mediaControlPointOpcodesSupportedCharacteristic)
  {
    mediaPlayerNameData = [(MCSService *)self mediaControlPointOpcodesSupportedData];
    goto LABEL_25;
  }

  characteristic10 = [requestCopy characteristic];
  contentControlIdCharacteristic = [(MCSService *)self contentControlIdCharacteristic];

  if (characteristic10 == contentControlIdCharacteristic)
  {
    mediaPlayerNameData = [(MCSService *)self contentControlIdData];
    goto LABEL_25;
  }

  v30 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005C7A0(v30, requestCopy);
  }

  v31 = 10;
LABEL_28:
  [(Service *)self respondToRequest:requestCopy withResult:v31];
}

- (void)peripheralManager:(id)manager central:(id)central didSubscribeToCharacteristic:(id)characteristic
{
  centralCopy = central;
  characteristicCopy = characteristic;
  subscribedCentrals = [(MCSService *)self subscribedCentrals];
  uUID = [characteristicCopy UUID];
  v11 = [subscribedCentrals objectForKeyedSubscript:uUID];

  if (!v11)
  {
    v12 = +[NSMutableArray array];
    subscribedCentrals2 = [(MCSService *)self subscribedCentrals];
    uUID2 = [characteristicCopy UUID];
    [subscribedCentrals2 setObject:v12 forKeyedSubscript:uUID2];
  }

  subscribedCentrals3 = [(MCSService *)self subscribedCentrals];
  uUID3 = [characteristicCopy UUID];
  v17 = [subscribedCentrals3 objectForKeyedSubscript:uUID3];
  v18 = [v17 containsObject:centralCopy];

  if ((v18 & 1) == 0)
  {
    subscribedCentrals4 = [(MCSService *)self subscribedCentrals];
    uUID4 = [characteristicCopy UUID];
    v21 = [subscribedCentrals4 objectForKeyedSubscript:uUID4];
    [v21 addObject:centralCopy];

    v22 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      identifier = [centralCopy identifier];
      uUIDString = [identifier UUIDString];
      uUID5 = [characteristicCopy UUID];
      subscribedCentrals5 = [(MCSService *)self subscribedCentrals];
      uUID6 = [characteristicCopy UUID];
      v29 = [subscribedCentrals5 objectForKeyedSubscript:uUID6];
      v30 = 136315906;
      v31 = "[MCSService peripheralManager:central:didSubscribeToCharacteristic:]";
      v32 = 2112;
      v33 = uUIDString;
      v34 = 2112;
      v35 = uUID5;
      v36 = 2048;
      v37 = [v29 count];
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, " %s: central %@ is now subscribed to characteristic %@, number of subscribers is now %lu", &v30, 0x2Au);
    }
  }
}

- (void)peripheralManager:(id)manager central:(id)central didUnsubscribeFromCharacteristic:(id)characteristic
{
  centralCopy = central;
  characteristicCopy = characteristic;
  v9 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    identifier = [centralCopy identifier];
    uUIDString = [identifier UUIDString];
    uUID = [characteristicCopy UUID];
    v17 = 136315650;
    v18 = "[MCSService peripheralManager:central:didUnsubscribeFromCharacteristic:]";
    v19 = 2112;
    v20 = uUIDString;
    v21 = 2112;
    v22 = uUID;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %s: central %@ is now unsubscribed to characteristic %@", &v17, 0x20u);
  }

  subscribedCentrals = [(MCSService *)self subscribedCentrals];
  uUID2 = [characteristicCopy UUID];
  v16 = [subscribedCentrals objectForKeyedSubscript:uUID2];
  [v16 removeObject:centralCopy];
}

- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  if (!errorCopy)
  {
    isNotifying = [characteristicCopy isNotifying];
    v12 = qword_1000A9FE0;
    v13 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT);
    if (isNotifying)
    {
      if (!v13)
      {
        goto LABEL_10;
      }

      v14 = v12;
      uUID = [characteristicCopy UUID];
      v17 = 136315394;
      v18 = "[MCSService peripheral:didUpdateNotificationStateForCharacteristic:error:]";
      v19 = 2112;
      v20 = uUID;
      v16 = "%s : Started notifying for characteristic %@";
    }

    else
    {
      if (!v13)
      {
        goto LABEL_10;
      }

      v14 = v12;
      uUID = [characteristicCopy UUID];
      v17 = 136315394;
      v18 = "[MCSService peripheral:didUpdateNotificationStateForCharacteristic:error:]";
      v19 = 2112;
      v20 = uUID;
      v16 = "%s : Stopped notifying for characteristic %@";
    }

    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v16, &v17, 0x16u);

    goto LABEL_10;
  }

  v10 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005C86C(v10, characteristicCopy, errorCopy);
  }

LABEL_10:
}

- (void)peripheralManager:(id)manager didReceiveWriteRequests:(id)requests
{
  requestsCopy = requests;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [requestsCopy countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v27;
    *&v7 = 136315394;
    v25 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(requestsCopy);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        v12 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          characteristic = [v11 characteristic];
          *buf = v25;
          v31 = "[MCSService peripheralManager:didReceiveWriteRequests:]";
          v32 = 2112;
          v33 = characteristic;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s : %@", buf, 0x16u);
        }

        characteristic2 = [v11 characteristic];
        mediaControlPointCharacteristic = [(MCSService *)self mediaControlPointCharacteristic];
        v17 = [characteristic2 isEqual:mediaControlPointCharacteristic];

        if (v17)
        {
          [(MCSService *)self handleMediaControlPointWrite:v11];
        }

        else
        {
          characteristic3 = [v11 characteristic];
          trackPositionCharacteristic = [(MCSService *)self trackPositionCharacteristic];
          v20 = [characteristic3 isEqual:trackPositionCharacteristic];

          if (v20)
          {
            [(MCSService *)self handleTrackPositionWrite:v11];
          }

          else
          {
            v21 = qword_1000A9FE0;
            if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
            {
              v22 = v21;
              characteristic4 = [v11 characteristic];
              uUID = [characteristic4 UUID];
              *buf = v25;
              v31 = "[MCSService peripheralManager:didReceiveWriteRequests:]";
              v32 = 2112;
              v33 = uUID;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s : This characteristic %@ is not writable", buf, 0x16u);
            }

            [(Service *)self respondToRequest:v11 withResult:10];
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [requestsCopy countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v8);
  }
}

- (void)handleMediaControlPointWrite:(id)write
{
  writeCopy = write;
  value = [writeCopy value];
  v6 = [DataInputStream inputStreamWithData:value byteOrder:1];

  v15 = 0;
  [v6 readUint8:&v15];
  v7 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v15;
    v9 = v7;
    v10 = [(MCSService *)self mediaControlOpcodeToString:v8];
    *buf = 136315394;
    v17 = "[MCSService handleMediaControlPointWrite:]";
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s : Received opcode %@", buf, 0x16u);
  }

  playerName = [(MCSService *)self playerName];
  v12 = [playerName length];

  if (!v12)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005CA48();
    }

    v13 = 3;
    goto LABEL_16;
  }

  if ([(MCSService *)self mcsMediaControlOpcodeToMrCommand:v15]== 255)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005C9C8();
    }

    v13 = 2;
    v14 = 6;
    goto LABEL_17;
  }

  if (MRMediaRemoteSendCommand() != 1)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005C948();
    }

    v13 = 4;
LABEL_16:
    v14 = 14;
LABEL_17:
    [(Service *)self respondToRequest:writeCopy withResult:v14];
    [(MCSService *)self mediaControlPointNotification:v15 result:v13];
    goto LABEL_18;
  }

  [(Service *)self respondToRequest:writeCopy withResult:0];
  [(MCSService *)self mediaControlPointNotification:v15 result:1];
  [(MCSService *)self playbackStateDidChange:[(MCSService *)self mrPlaybackStateFromMCSMediaControlOpcode:v15]];
LABEL_18:
}

- (void)handleTrackPositionWrite:(id)write
{
  writeCopy = write;
  value = [writeCopy value];
  v6 = [DataInputStream inputStreamWithData:value byteOrder:1];

  v8 = 0;
  [v6 readUint32:&v8];
  v7 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[MCSService handleTrackPositionWrite:]";
    v11 = 2048;
    v12 = v8 / 100.0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s : setting track position to (*10ms): %f", buf, 0x16u);
  }

  MRMediaRemoteSetElapsedTime();
  [(Service *)self respondToRequest:writeCopy withResult:0];

  [(MCSService *)self notifyTrackPosition];
}

- (id)mediaPlayerNameData
{
  v3 = [DataOutputStream outputStreamWithByteOrder:1];
  playerName = [(MCSService *)self playerName];
  if (playerName)
  {
    [(MCSService *)self playerName];
  }

  else
  {
    +[NSString string];
  }
  v5 = ;

  v6 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v5;
    v8 = v6;
    v11 = 136315394;
    v12 = "[MCSService mediaPlayerNameData]";
    v13 = 2080;
    uTF8String = [v5 UTF8String];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s : Media Player Name - %s", &v11, 0x16u);
  }

  [v3 writeString:v5];
  data = [v3 data];

  return data;
}

- (id)trackTitleData
{
  v3 = [DataOutputStream outputStreamWithByteOrder:1];
  currentTrackInfo = [(MCSService *)self currentTrackInfo];
  v5 = [currentTrackInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoTitle];
  v6 = v5;
  v7 = &stru_100098610;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [(__CFString *)v8 dataUsingEncoding:4];
  [v3 writeData:v9];
  data = [v3 data];
  if ([(__CFString *)v8 length])
  {
    v11 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "[MCSService trackTitleData]";
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s : Track Title - %@", &v13, 0x16u);
    }
  }

  return data;
}

- (id)trackDurationData
{
  v3 = [DataOutputStream outputStreamWithByteOrder:1];
  currentTrackInfo = [(MCSService *)self currentTrackInfo];
  v5 = kMRMediaRemoteNowPlayingInfoDuration;
  v6 = [currentTrackInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoDuration];
  if (v6)
  {
    currentTrackInfo2 = [(MCSService *)self currentTrackInfo];
    v8 = [currentTrackInfo2 objectForKeyedSubscript:v5];
    [v8 doubleValue];
    v10 = (v9 * 100.0);
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

  v11 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[MCSService trackDurationData]";
    v16 = 1024;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s : Track Duration %u", &v14, 0x12u);
  }

  [v3 writeUint32:v10];
  data = [v3 data];

  return data;
}

- (id)trackPositionData
{
  v3 = [DataOutputStream outputStreamWithByteOrder:1];
  currentTrackInfo = [(MCSService *)self currentTrackInfo];
  v5 = [currentTrackInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoElapsedTime];

  v6 = 0.0;
  if (v5)
  {
    currentTrackInfo2 = [(MCSService *)self currentTrackInfo];
    v8 = [currentTrackInfo2 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoTimestamp];

    currentTrackInfo3 = [(MCSService *)self currentTrackInfo];
    v10 = [currentTrackInfo3 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoPlaybackRate];

    if (v8)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      [v5 doubleValue];
    }

    else
    {
      v13 = +[NSDate date];
      [v13 timeIntervalSinceDate:v8];
      v6 = v14;

      [v5 doubleValue];
      v16 = v15;
      [v10 floatValue];
      v18 = v16 + v6 * v17;
    }

    v12 = (v18 * 100.0);
  }

  else
  {
    v10 = 0;
    v8 = 0;
    v12 = 0xFFFFFFFFLL;
  }

  v19 = [&stru_100098610 stringByAppendingFormat:@"elapsedTime: %@, infoTimestamp: %@, playbackRate: %@, timeSinceInfo: %f, trackElapsedTime: %d", v5, v8, v10, *&v6, v12];
  v20 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "[MCSService trackPositionData]";
    v25 = 2112;
    v26 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s : Track Info - %@", buf, 0x16u);
  }

  [v3 writeUint32:v12];
  data = [v3 data];

  return data;
}

- (id)playingOrderData
{
  v3 = [DataOutputStream outputStreamWithByteOrder:1];
  currentTrackInfo = [(MCSService *)self currentTrackInfo];
  v5 = kMRMediaRemoteNowPlayingInfoRepeatMode;
  v6 = [currentTrackInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoRepeatMode];
  if (v6)
  {
    currentTrackInfo2 = [(MCSService *)self currentTrackInfo];
    v8 = [currentTrackInfo2 objectForKeyedSubscript:v5];
    intValue = [v8 intValue];
  }

  else
  {
    intValue = 0;
  }

  currentTrackInfo3 = [(MCSService *)self currentTrackInfo];
  v11 = kMRMediaRemoteNowPlayingInfoShuffleMode;
  v12 = [currentTrackInfo3 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoShuffleMode];
  if (v12)
  {
    currentTrackInfo4 = [(MCSService *)self currentTrackInfo];
    v14 = [currentTrackInfo4 objectForKeyedSubscript:v11];
    v15 = ([v14 intValue] & 0xFFFFFFFE) == 2;
  }

  else
  {
    v15 = 0;
  }

  playbackQueueCount = [(MCSService *)self playbackQueueCount];
  unsignedIntValue = [playbackQueueCount unsignedIntValue];

  if (v15)
  {
    v18 = 9;
  }

  else
  {
    v18 = 3;
  }

  if (v15)
  {
    v19 = 10;
  }

  else
  {
    v19 = 4;
  }

  if (intValue == 3)
  {
    v18 = v19;
  }

  if (intValue == 2)
  {
    v20 = 2;
  }

  else
  {
    v20 = v18;
  }

  if (unsignedIntValue >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  [v3 writeUint8:v21];
  data = [v3 data];

  return data;
}

- (id)playingOrdersSupportedData
{
  v3 = [DataOutputStream outputStreamWithByteOrder:1];
  supportedCommands = [(MCSService *)self supportedCommands];
  v5 = [supportedCommands indexOfObjectPassingTest:&stru_1000954D0];

  supportedCommands2 = [(MCSService *)self supportedCommands];
  v7 = [supportedCommands2 indexOfObjectPassingTest:&stru_1000954F0];

  playbackQueueCount = [(MCSService *)self playbackQueueCount];
  unsignedIntValue = [playbackQueueCount unsignedIntValue];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 1;
  }

  else
  {
    v10 = 3;
  }

  if (v5 == 0x7FFFFFFFFFFFFFFFLL || v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 260;
  }

  else
  {
    v12 = 782;
  }

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 4;
  }

  else
  {
    v13 = 14;
  }

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (unsignedIntValue >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = v10;
  }

  [v3 writeUint16:v15];
  data = [v3 data];

  return data;
}

- (id)mediaStateData
{
  v3 = [DataOutputStream outputStreamWithByteOrder:1];
  [v3 writeUint8:{-[MCSService mediaPlaybackState](self, "mediaPlaybackState")}];
  v4 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    data = [v3 data];
    v9 = 136315394;
    v10 = "[MCSService mediaStateData]";
    v11 = 2112;
    v12 = data;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s : Media State Data: %@", &v9, 0x16u);
  }

  data2 = [v3 data];

  return data2;
}

- (id)mediaControlPointOpcodesSupportedData
{
  v3 = [DataOutputStream outputStreamWithByteOrder:1];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  supportedCommands = [(MCSService *)self supportedCommands];
  v5 = [supportedCommands countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(supportedCommands);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        Command = MRMediaRemoteCommandInfoGetCommand();
        if (Command > 4)
        {
          if (Command > 9)
          {
            if (Command == 10)
            {
              v7 = v7 | 4;
            }

            else if (Command == 24)
            {
              v7 = v7 | 0x20;
            }
          }

          else if (Command == 5)
          {
            v7 = v7 | 0x800;
          }

          else if (Command == 8)
          {
            v7 = v7 | 8;
          }
        }

        else if (Command > 2)
        {
          if (Command == 3)
          {
            v7 = v7 | 0x10;
          }

          else
          {
            v7 = v7 | 0x1000;
          }
        }

        else if (Command)
        {
          if (Command == 1)
          {
            v7 = v7 | 2;
          }
        }

        else
        {
          v7 = v7 | 1;
        }
      }

      v6 = [supportedCommands countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  [v3 writeUint32:v7];
  data = [v3 data];

  return data;
}

- (id)contentControlIdData
{
  v2 = [DataOutputStream outputStreamWithByteOrder:1];
  [v2 writeUint8:0];
  data = [v2 data];

  return data;
}

- (void)notifyTrackChanged
{
  trackChangedCharacteristic = [(MCSService *)self trackChangedCharacteristic];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002CFE8;
  v4[3] = &unk_100095518;
  v4[4] = self;
  [(MCSService *)self handleSubscribersForCharacteristic:trackChangedCharacteristic withNotificationHandler:v4];
}

- (void)notifyMediaPlayerName
{
  mediaPlayerNameCharacteristic = [(MCSService *)self mediaPlayerNameCharacteristic];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002D10C;
  v4[3] = &unk_100095518;
  v4[4] = self;
  [(MCSService *)self handleSubscribersForCharacteristic:mediaPlayerNameCharacteristic withNotificationHandler:v4];
}

- (void)notifyTrackTitle
{
  trackTitleCharacteristic = [(MCSService *)self trackTitleCharacteristic];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002D228;
  v4[3] = &unk_100095518;
  v4[4] = self;
  [(MCSService *)self handleSubscribersForCharacteristic:trackTitleCharacteristic withNotificationHandler:v4];
}

- (void)notifyTrackDuration
{
  trackDurationCharacteristic = [(MCSService *)self trackDurationCharacteristic];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002D344;
  v4[3] = &unk_100095518;
  v4[4] = self;
  [(MCSService *)self handleSubscribersForCharacteristic:trackDurationCharacteristic withNotificationHandler:v4];
}

- (void)notifyTrackPosition
{
  trackPositionCharacteristic = [(MCSService *)self trackPositionCharacteristic];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002D460;
  v4[3] = &unk_100095518;
  v4[4] = self;
  [(MCSService *)self handleSubscribersForCharacteristic:trackPositionCharacteristic withNotificationHandler:v4];
}

- (void)notifyPlayingOrder
{
  playingOrderCharacteristic = [(MCSService *)self playingOrderCharacteristic];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002D57C;
  v4[3] = &unk_100095518;
  v4[4] = self;
  [(MCSService *)self handleSubscribersForCharacteristic:playingOrderCharacteristic withNotificationHandler:v4];
}

- (void)notifyMediaState
{
  mediaStateCharacteristic = [(MCSService *)self mediaStateCharacteristic];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002D698;
  v4[3] = &unk_100095518;
  v4[4] = self;
  [(MCSService *)self handleSubscribersForCharacteristic:mediaStateCharacteristic withNotificationHandler:v4];
}

- (void)mediaControlPointNotification:(unsigned __int8)notification result:(unsigned __int8)result
{
  mediaControlPointCharacteristic = [(MCSService *)self mediaControlPointCharacteristic];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002D7CC;
  v8[3] = &unk_100095540;
  notificationCopy = notification;
  resultCopy = result;
  v8[4] = self;
  [(MCSService *)self handleSubscribersForCharacteristic:mediaControlPointCharacteristic withNotificationHandler:v8];
}

- (void)notifyMediaControlPointOpcodesSupported
{
  mediaControlPointOpcodesSupportedCharacteristic = [(MCSService *)self mediaControlPointOpcodesSupportedCharacteristic];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002D9F0;
  v4[3] = &unk_100095518;
  v4[4] = self;
  [(MCSService *)self handleSubscribersForCharacteristic:mediaControlPointOpcodesSupportedCharacteristic withNotificationHandler:v4];
}

- (void)handleSubscribersForCharacteristic:(id)characteristic withNotificationHandler:(id)handler
{
  characteristicCopy = characteristic;
  handlerCopy = handler;
  subscribedCentrals = [(MCSService *)self subscribedCentrals];
  uUID = [characteristicCopy UUID];
  v10 = [subscribedCentrals objectForKeyedSubscript:uUID];

  if ([v10 count])
  {
    handlerCopy[2](handlerCopy, v10);
  }

  else
  {
    v11 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      uUID2 = [characteristicCopy UUID];
      v14 = 136315394;
      v15 = "[MCSService handleSubscribersForCharacteristic:withNotificationHandler:]";
      v16 = 2112;
      v17 = uUID2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s : No subscribers for update to characteristic %@", &v14, 0x16u);
    }
  }
}

- (BOOL)currentTrackInfoItemDifferentFrom:(id)from forKey:(id)key
{
  keyCopy = key;
  v7 = [from objectForKeyedSubscript:keyCopy];
  currentTrackInfo = [(MCSService *)self currentTrackInfo];
  v9 = [currentTrackInfo objectForKeyedSubscript:keyCopy];

  if (v7 && v9)
  {
    v10 = [v7 isEqual:v9] ^ 1;
  }

  else
  {
    LOBYTE(v10) = v7 != v9;
  }

  return v10;
}

- (unsigned)mrPlaybackStateFromMCSMediaControlOpcode:(unsigned __int8)opcode
{
  result = 1;
  if (opcode > 4)
  {
    if ((opcode - 48) >= 2)
    {
      if (opcode == 5)
      {
        return 3;
      }

      return 0;
    }
  }

  else
  {
    if ((opcode - 3) < 2)
    {
      return 5;
    }

    if (opcode != 1)
    {
      if (opcode == 2)
      {
        return 2;
      }

      return 0;
    }
  }

  return result;
}

- (unsigned)mcsMediaControlOpcodeToMrCommand:(unsigned __int8)command
{
  if (command <= 3)
  {
    switch(command)
    {
      case 1u:
        return 0;
      case 2u:
        return 1;
      case 3u:
        return 10;
    }
  }

  else if (command > 47)
  {
    if (command == 48)
    {
      return 5;
    }

    if (command == 49)
    {
      return 4;
    }
  }

  else
  {
    if (command == 4)
    {
      return 8;
    }

    if (command == 5)
    {
      return 3;
    }
  }

  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005CAC8();
  }

  return 255;
}

@end