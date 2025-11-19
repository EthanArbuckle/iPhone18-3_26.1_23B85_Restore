@interface MCSService
+ (id)sharedInstance;
- (BOOL)currentTrackInfoItemDifferentFrom:(id)a3 forKey:(id)a4;
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
- (unsigned)mcsMediaControlOpcodeToMrCommand:(unsigned __int8)a3;
- (unsigned)mrPlaybackStateFromMCSMediaControlOpcode:(unsigned __int8)a3;
- (void)applicationDidChange:(id)a3;
- (void)handleMediaControlPointWrite:(id)a3;
- (void)handleSubscribersForCharacteristic:(id)a3 withNotificationHandler:(id)a4;
- (void)handleTrackPositionWrite:(id)a3;
- (void)infoDidChange:(id)a3;
- (void)mediaControlPointNotification:(unsigned __int8)a3 result:(unsigned __int8)a4;
- (void)notifyMediaControlPointOpcodesSupported;
- (void)notifyMediaPlayerName;
- (void)notifyMediaState;
- (void)notifyPlayingOrder;
- (void)notifyTrackChanged;
- (void)notifyTrackDuration;
- (void)notifyTrackPosition;
- (void)notifyTrackTitle;
- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheralManager:(id)a3 central:(id)a4 didSubscribeToCharacteristic:(id)a5;
- (void)peripheralManager:(id)a3 central:(id)a4 didUnsubscribeFromCharacteristic:(id)a5;
- (void)peripheralManager:(id)a3 didReceiveReadRequest:(id)a4;
- (void)peripheralManager:(id)a3 didReceiveWriteRequests:(id)a4;
- (void)playbackQueueDidChange:(void *)a3;
- (void)supportedCommandsDidChange:(__CFArray *)a3;
@end

@implementation MCSService

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029DD8;
  block[3] = &unk_1000953F0;
  block[4] = a1;
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
    v65 = [(Service *)v2 service];
    [v65 setCharacteristics:v64];
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

- (void)supportedCommandsDidChange:(__CFArray *)a3
{
  if (a3)
  {
    v4 = CFRetain(a3);
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

- (void)applicationDidChange:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = +[NSString string];
  }

  playerName = self->_playerName;
  self->_playerName = v5;

  [(MCSService *)self notifyMediaPlayerName];
}

- (void)infoDidChange:(id)a3
{
  v4 = a3;
  v5 = [(MCSService *)self currentTrackInfo];
  [(MCSService *)self setCurrentTrackInfo:v4];

  v6 = [(MCSService *)self currentTrackInfo];

  if (v5)
  {
    if (!v6)
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

  else if (!v6)
  {
    goto LABEL_20;
  }

  v8 = kMRMediaRemoteNowPlayingInfoTitle;
  v9 = [(MCSService *)self currentTrackInfoItemDifferentFrom:v5 forKey:kMRMediaRemoteNowPlayingInfoTitle];
  v10 = [(MCSService *)self currentTrackInfoItemDifferentFrom:v5 forKey:kMRMediaRemoteNowPlayingInfoDuration];
  if (v9)
  {
    v11 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [(MCSService *)self currentTrackInfo];
      v14 = [v13 objectForKeyedSubscript:v8];
      v15 = [v5 objectForKeyedSubscript:v8];
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

  if ([(MCSService *)self currentTrackInfoItemDifferentFrom:v5 forKey:kMRMediaRemoteNowPlayingInfoTrackNumber])
  {
    [(MCSService *)self notifyTrackChanged];
  }

  if ([(MCSService *)self mediaPlaybackState]== 2 || [(MCSService *)self mediaPlaybackState]== 3)
  {
    [(MCSService *)self notifyTrackPosition];
  }

  v16 = [(MCSService *)self prevMediaPlaybackState];
  if (v16 != [(MCSService *)self mediaPlaybackState])
  {
    [(MCSService *)self setPrevMediaPlaybackState:[(MCSService *)self mediaPlaybackState]];
    [(MCSService *)self notifyMediaState];
  }

LABEL_20:
}

- (void)playbackQueueDidChange:(void *)a3
{
  v4 = [NSNumber numberWithUnsignedLong:MRPlaybackQueueGetContentItemsCount()];
  [(MCSService *)self setPlaybackQueueCount:v4];

  [(MCSService *)self notifyPlayingOrder];
}

- (void)peripheralManager:(id)a3 didReceiveReadRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v7 characteristic];
    v11 = [v10 UUID];
    v35 = 136315394;
    v36 = "[MCSService peripheralManager:didReceiveReadRequest:]";
    v37 = 2112;
    v38 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s : called for %@", &v35, 0x16u);
  }

  v12 = [v7 characteristic];
  v13 = [(MCSService *)self mediaPlayerNameCharacteristic];

  if (v12 == v13)
  {
    v32 = [(MCSService *)self mediaPlayerNameData];
LABEL_25:
    v33 = v32;
    goto LABEL_26;
  }

  v14 = [v7 characteristic];
  v15 = [(MCSService *)self trackTitleCharacteristic];

  if (v14 == v15)
  {
    v33 = [(MCSService *)self trackTitleData];
    if (![v33 length])
    {
      v34 = +[NSData data];
      [v7 setValue:v34];

LABEL_27:
      v31 = 0;
      goto LABEL_28;
    }

LABEL_26:
    [v7 setValue:v33];
    goto LABEL_27;
  }

  v16 = [v7 characteristic];
  v17 = [(MCSService *)self trackDurationCharacteristic];

  if (v16 == v17)
  {
    v32 = [(MCSService *)self trackDurationData];
    goto LABEL_25;
  }

  v18 = [v7 characteristic];
  v19 = [(MCSService *)self trackPositionCharacteristic];

  if (v18 == v19)
  {
    v32 = [(MCSService *)self trackPositionData];
    goto LABEL_25;
  }

  v20 = [v7 characteristic];
  v21 = [(MCSService *)self playingOrderCharacteristic];

  if (v20 == v21)
  {
    v32 = [(MCSService *)self playingOrderData];
    goto LABEL_25;
  }

  v22 = [v7 characteristic];
  v23 = [(MCSService *)self playingOrdersSupportedCharacteristic];

  if (v22 == v23)
  {
    v32 = [(MCSService *)self playingOrdersSupportedData];
    goto LABEL_25;
  }

  v24 = [v7 characteristic];
  v25 = [(MCSService *)self mediaStateCharacteristic];

  if (v24 == v25)
  {
    v32 = [(MCSService *)self mediaStateData];
    goto LABEL_25;
  }

  v26 = [v7 characteristic];
  v27 = [(MCSService *)self mediaControlPointOpcodesSupportedCharacteristic];

  if (v26 == v27)
  {
    v32 = [(MCSService *)self mediaControlPointOpcodesSupportedData];
    goto LABEL_25;
  }

  v28 = [v7 characteristic];
  v29 = [(MCSService *)self contentControlIdCharacteristic];

  if (v28 == v29)
  {
    v32 = [(MCSService *)self contentControlIdData];
    goto LABEL_25;
  }

  v30 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005C7A0(v30, v7);
  }

  v31 = 10;
LABEL_28:
  [(Service *)self respondToRequest:v7 withResult:v31];
}

- (void)peripheralManager:(id)a3 central:(id)a4 didSubscribeToCharacteristic:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(MCSService *)self subscribedCentrals];
  v10 = [v8 UUID];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (!v11)
  {
    v12 = +[NSMutableArray array];
    v13 = [(MCSService *)self subscribedCentrals];
    v14 = [v8 UUID];
    [v13 setObject:v12 forKeyedSubscript:v14];
  }

  v15 = [(MCSService *)self subscribedCentrals];
  v16 = [v8 UUID];
  v17 = [v15 objectForKeyedSubscript:v16];
  v18 = [v17 containsObject:v7];

  if ((v18 & 1) == 0)
  {
    v19 = [(MCSService *)self subscribedCentrals];
    v20 = [v8 UUID];
    v21 = [v19 objectForKeyedSubscript:v20];
    [v21 addObject:v7];

    v22 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      v24 = [v7 identifier];
      v25 = [v24 UUIDString];
      v26 = [v8 UUID];
      v27 = [(MCSService *)self subscribedCentrals];
      v28 = [v8 UUID];
      v29 = [v27 objectForKeyedSubscript:v28];
      v30 = 136315906;
      v31 = "[MCSService peripheralManager:central:didSubscribeToCharacteristic:]";
      v32 = 2112;
      v33 = v25;
      v34 = 2112;
      v35 = v26;
      v36 = 2048;
      v37 = [v29 count];
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, " %s: central %@ is now subscribed to characteristic %@, number of subscribers is now %lu", &v30, 0x2Au);
    }
  }
}

- (void)peripheralManager:(id)a3 central:(id)a4 didUnsubscribeFromCharacteristic:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v7 identifier];
    v12 = [v11 UUIDString];
    v13 = [v8 UUID];
    v17 = 136315650;
    v18 = "[MCSService peripheralManager:central:didUnsubscribeFromCharacteristic:]";
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %s: central %@ is now unsubscribed to characteristic %@", &v17, 0x20u);
  }

  v14 = [(MCSService *)self subscribedCentrals];
  v15 = [v8 UUID];
  v16 = [v14 objectForKeyedSubscript:v15];
  [v16 removeObject:v7];
}

- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v9)
  {
    v11 = [v8 isNotifying];
    v12 = qword_1000A9FE0;
    v13 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (!v13)
      {
        goto LABEL_10;
      }

      v14 = v12;
      v15 = [v8 UUID];
      v17 = 136315394;
      v18 = "[MCSService peripheral:didUpdateNotificationStateForCharacteristic:error:]";
      v19 = 2112;
      v20 = v15;
      v16 = "%s : Started notifying for characteristic %@";
    }

    else
    {
      if (!v13)
      {
        goto LABEL_10;
      }

      v14 = v12;
      v15 = [v8 UUID];
      v17 = 136315394;
      v18 = "[MCSService peripheral:didUpdateNotificationStateForCharacteristic:error:]";
      v19 = 2112;
      v20 = v15;
      v16 = "%s : Stopped notifying for characteristic %@";
    }

    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v16, &v17, 0x16u);

    goto LABEL_10;
  }

  v10 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005C86C(v10, v8, v9);
  }

LABEL_10:
}

- (void)peripheralManager:(id)a3 didReceiveWriteRequests:(id)a4
{
  v5 = a4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        v12 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          v14 = [v11 characteristic];
          *buf = v25;
          v31 = "[MCSService peripheralManager:didReceiveWriteRequests:]";
          v32 = 2112;
          v33 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s : %@", buf, 0x16u);
        }

        v15 = [v11 characteristic];
        v16 = [(MCSService *)self mediaControlPointCharacteristic];
        v17 = [v15 isEqual:v16];

        if (v17)
        {
          [(MCSService *)self handleMediaControlPointWrite:v11];
        }

        else
        {
          v18 = [v11 characteristic];
          v19 = [(MCSService *)self trackPositionCharacteristic];
          v20 = [v18 isEqual:v19];

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
              v23 = [v11 characteristic];
              v24 = [v23 UUID];
              *buf = v25;
              v31 = "[MCSService peripheralManager:didReceiveWriteRequests:]";
              v32 = 2112;
              v33 = v24;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s : This characteristic %@ is not writable", buf, 0x16u);
            }

            [(Service *)self respondToRequest:v11 withResult:10];
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v8);
  }
}

- (void)handleMediaControlPointWrite:(id)a3
{
  v4 = a3;
  v5 = [v4 value];
  v6 = [DataInputStream inputStreamWithData:v5 byteOrder:1];

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

  v11 = [(MCSService *)self playerName];
  v12 = [v11 length];

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
    [(Service *)self respondToRequest:v4 withResult:v14];
    [(MCSService *)self mediaControlPointNotification:v15 result:v13];
    goto LABEL_18;
  }

  [(Service *)self respondToRequest:v4 withResult:0];
  [(MCSService *)self mediaControlPointNotification:v15 result:1];
  [(MCSService *)self playbackStateDidChange:[(MCSService *)self mrPlaybackStateFromMCSMediaControlOpcode:v15]];
LABEL_18:
}

- (void)handleTrackPositionWrite:(id)a3
{
  v4 = a3;
  v5 = [v4 value];
  v6 = [DataInputStream inputStreamWithData:v5 byteOrder:1];

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
  [(Service *)self respondToRequest:v4 withResult:0];

  [(MCSService *)self notifyTrackPosition];
}

- (id)mediaPlayerNameData
{
  v3 = [DataOutputStream outputStreamWithByteOrder:1];
  v4 = [(MCSService *)self playerName];
  if (v4)
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
    v14 = [v5 UTF8String];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s : Media Player Name - %s", &v11, 0x16u);
  }

  [v3 writeString:v5];
  v9 = [v3 data];

  return v9;
}

- (id)trackTitleData
{
  v3 = [DataOutputStream outputStreamWithByteOrder:1];
  v4 = [(MCSService *)self currentTrackInfo];
  v5 = [v4 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoTitle];
  v6 = v5;
  v7 = &stru_100098610;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [(__CFString *)v8 dataUsingEncoding:4];
  [v3 writeData:v9];
  v10 = [v3 data];
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

  return v10;
}

- (id)trackDurationData
{
  v3 = [DataOutputStream outputStreamWithByteOrder:1];
  v4 = [(MCSService *)self currentTrackInfo];
  v5 = kMRMediaRemoteNowPlayingInfoDuration;
  v6 = [v4 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoDuration];
  if (v6)
  {
    v7 = [(MCSService *)self currentTrackInfo];
    v8 = [v7 objectForKeyedSubscript:v5];
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
  v12 = [v3 data];

  return v12;
}

- (id)trackPositionData
{
  v3 = [DataOutputStream outputStreamWithByteOrder:1];
  v4 = [(MCSService *)self currentTrackInfo];
  v5 = [v4 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoElapsedTime];

  v6 = 0.0;
  if (v5)
  {
    v7 = [(MCSService *)self currentTrackInfo];
    v8 = [v7 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoTimestamp];

    v9 = [(MCSService *)self currentTrackInfo];
    v10 = [v9 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoPlaybackRate];

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
  v21 = [v3 data];

  return v21;
}

- (id)playingOrderData
{
  v3 = [DataOutputStream outputStreamWithByteOrder:1];
  v4 = [(MCSService *)self currentTrackInfo];
  v5 = kMRMediaRemoteNowPlayingInfoRepeatMode;
  v6 = [v4 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoRepeatMode];
  if (v6)
  {
    v7 = [(MCSService *)self currentTrackInfo];
    v8 = [v7 objectForKeyedSubscript:v5];
    v9 = [v8 intValue];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(MCSService *)self currentTrackInfo];
  v11 = kMRMediaRemoteNowPlayingInfoShuffleMode;
  v12 = [v10 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoShuffleMode];
  if (v12)
  {
    v13 = [(MCSService *)self currentTrackInfo];
    v14 = [v13 objectForKeyedSubscript:v11];
    v15 = ([v14 intValue] & 0xFFFFFFFE) == 2;
  }

  else
  {
    v15 = 0;
  }

  v16 = [(MCSService *)self playbackQueueCount];
  v17 = [v16 unsignedIntValue];

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

  if (v9 == 3)
  {
    v18 = v19;
  }

  if (v9 == 2)
  {
    v20 = 2;
  }

  else
  {
    v20 = v18;
  }

  if (v17 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  [v3 writeUint8:v21];
  v22 = [v3 data];

  return v22;
}

- (id)playingOrdersSupportedData
{
  v3 = [DataOutputStream outputStreamWithByteOrder:1];
  v4 = [(MCSService *)self supportedCommands];
  v5 = [v4 indexOfObjectPassingTest:&stru_1000954D0];

  v6 = [(MCSService *)self supportedCommands];
  v7 = [v6 indexOfObjectPassingTest:&stru_1000954F0];

  v8 = [(MCSService *)self playbackQueueCount];
  v9 = [v8 unsignedIntValue];

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

  if (v9 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = v10;
  }

  [v3 writeUint16:v15];
  v16 = [v3 data];

  return v16;
}

- (id)mediaStateData
{
  v3 = [DataOutputStream outputStreamWithByteOrder:1];
  [v3 writeUint8:{-[MCSService mediaPlaybackState](self, "mediaPlaybackState")}];
  v4 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 data];
    v9 = 136315394;
    v10 = "[MCSService mediaStateData]";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s : Media State Data: %@", &v9, 0x16u);
  }

  v7 = [v3 data];

  return v7;
}

- (id)mediaControlPointOpcodesSupportedData
{
  v3 = [DataOutputStream outputStreamWithByteOrder:1];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(MCSService *)self supportedCommands];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
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

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  [v3 writeUint32:v7];
  v12 = [v3 data];

  return v12;
}

- (id)contentControlIdData
{
  v2 = [DataOutputStream outputStreamWithByteOrder:1];
  [v2 writeUint8:0];
  v3 = [v2 data];

  return v3;
}

- (void)notifyTrackChanged
{
  v3 = [(MCSService *)self trackChangedCharacteristic];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002CFE8;
  v4[3] = &unk_100095518;
  v4[4] = self;
  [(MCSService *)self handleSubscribersForCharacteristic:v3 withNotificationHandler:v4];
}

- (void)notifyMediaPlayerName
{
  v3 = [(MCSService *)self mediaPlayerNameCharacteristic];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002D10C;
  v4[3] = &unk_100095518;
  v4[4] = self;
  [(MCSService *)self handleSubscribersForCharacteristic:v3 withNotificationHandler:v4];
}

- (void)notifyTrackTitle
{
  v3 = [(MCSService *)self trackTitleCharacteristic];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002D228;
  v4[3] = &unk_100095518;
  v4[4] = self;
  [(MCSService *)self handleSubscribersForCharacteristic:v3 withNotificationHandler:v4];
}

- (void)notifyTrackDuration
{
  v3 = [(MCSService *)self trackDurationCharacteristic];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002D344;
  v4[3] = &unk_100095518;
  v4[4] = self;
  [(MCSService *)self handleSubscribersForCharacteristic:v3 withNotificationHandler:v4];
}

- (void)notifyTrackPosition
{
  v3 = [(MCSService *)self trackPositionCharacteristic];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002D460;
  v4[3] = &unk_100095518;
  v4[4] = self;
  [(MCSService *)self handleSubscribersForCharacteristic:v3 withNotificationHandler:v4];
}

- (void)notifyPlayingOrder
{
  v3 = [(MCSService *)self playingOrderCharacteristic];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002D57C;
  v4[3] = &unk_100095518;
  v4[4] = self;
  [(MCSService *)self handleSubscribersForCharacteristic:v3 withNotificationHandler:v4];
}

- (void)notifyMediaState
{
  v3 = [(MCSService *)self mediaStateCharacteristic];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002D698;
  v4[3] = &unk_100095518;
  v4[4] = self;
  [(MCSService *)self handleSubscribersForCharacteristic:v3 withNotificationHandler:v4];
}

- (void)mediaControlPointNotification:(unsigned __int8)a3 result:(unsigned __int8)a4
{
  v7 = [(MCSService *)self mediaControlPointCharacteristic];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002D7CC;
  v8[3] = &unk_100095540;
  v9 = a3;
  v10 = a4;
  v8[4] = self;
  [(MCSService *)self handleSubscribersForCharacteristic:v7 withNotificationHandler:v8];
}

- (void)notifyMediaControlPointOpcodesSupported
{
  v3 = [(MCSService *)self mediaControlPointOpcodesSupportedCharacteristic];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002D9F0;
  v4[3] = &unk_100095518;
  v4[4] = self;
  [(MCSService *)self handleSubscribersForCharacteristic:v3 withNotificationHandler:v4];
}

- (void)handleSubscribersForCharacteristic:(id)a3 withNotificationHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MCSService *)self subscribedCentrals];
  v9 = [v6 UUID];
  v10 = [v8 objectForKeyedSubscript:v9];

  if ([v10 count])
  {
    v7[2](v7, v10);
  }

  else
  {
    v11 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [v6 UUID];
      v14 = 136315394;
      v15 = "[MCSService handleSubscribersForCharacteristic:withNotificationHandler:]";
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s : No subscribers for update to characteristic %@", &v14, 0x16u);
    }
  }
}

- (BOOL)currentTrackInfoItemDifferentFrom:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [a3 objectForKeyedSubscript:v6];
  v8 = [(MCSService *)self currentTrackInfo];
  v9 = [v8 objectForKeyedSubscript:v6];

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

- (unsigned)mrPlaybackStateFromMCSMediaControlOpcode:(unsigned __int8)a3
{
  result = 1;
  if (a3 > 4)
  {
    if ((a3 - 48) >= 2)
    {
      if (a3 == 5)
      {
        return 3;
      }

      return 0;
    }
  }

  else
  {
    if ((a3 - 3) < 2)
    {
      return 5;
    }

    if (a3 != 1)
    {
      if (a3 == 2)
      {
        return 2;
      }

      return 0;
    }
  }

  return result;
}

- (unsigned)mcsMediaControlOpcodeToMrCommand:(unsigned __int8)a3
{
  if (a3 <= 3)
  {
    switch(a3)
    {
      case 1u:
        return 0;
      case 2u:
        return 1;
      case 3u:
        return 10;
    }
  }

  else if (a3 > 47)
  {
    if (a3 == 48)
    {
      return 5;
    }

    if (a3 == 49)
    {
      return 4;
    }
  }

  else
  {
    if (a3 == 4)
    {
      return 8;
    }

    if (a3 == 5)
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