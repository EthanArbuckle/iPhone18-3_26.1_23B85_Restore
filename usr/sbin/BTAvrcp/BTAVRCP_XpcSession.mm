@interface BTAVRCP_XpcSession
- (id)attributeIDsFromArgs:(id)args;
- (id)library;
- (id)nowPlayingInfo;
- (unsigned)getNowPlayingAttributeIDs:(id)ds reply:(id)reply;
- (void)dealloc;
- (void)getMediaPlayersFromStart:(unint64_t)start toEnd:(unint64_t)end replyBlock:(id)block;
- (void)handleChangePathMsg:(id)msg replyBlock:(id)block;
- (void)handleGetElementAttributesMsg:(id)msg replyBlock:(id)block;
- (void)handleGetFolderItemsMsg:(id)msg replyBlock:(id)block;
- (void)handleGetImageMsg:(id)msg replyBlock:(id)block;
- (void)handleGetImagePropertiesMsg:(id)msg replyBlock:(id)block;
- (void)handleGetItemAttributesMsg:(id)msg replyBlock:(id)block;
- (void)handleGetPlayStatusMsg:(id)msg replyBlock:(id)block;
- (void)handleGetSettingsMsg:(id)msg replyBlock:(id)block;
- (void)handleGetTotalNumberOfItemsMsg:(id)msg replyBlock:(id)block;
- (void)handleMsg:(id)msg;
- (void)handlePlayItemMsg:(id)msg replyBlock:(id)block;
- (void)handleRegisterForChangesMsg:(id)msg replyBlock:(id)block;
- (void)handleRegisterForPlaybackStateChangesMsg:(id)msg replyBlock:(id)block;
- (void)handleRegisterForPlayerChangesMsg:(id)msg replyBlock:(id)block;
- (void)handleRegisterForSettingsChangesMsg:(id)msg replyBlock:(id)block;
- (void)handleRegisterForTrackChangesMsg:(id)msg replyBlock:(id)block;
- (void)handleSearchMsg:(id)msg replyBlock:(id)block;
- (void)handleSendCommandMsg:(id)msg replyBlock:(id)block;
- (void)handleSetAddressedPlayerMsg:(id)msg replyBlock:(id)block;
- (void)handleSetBrowsedPlayerMsg:(id)msg replyBlock:(id)block;
- (void)handleSetSettingsMsg:(id)msg replyBlock:(id)block;
- (void)libraryDidChange;
- (void)playbackStateDidChange:(int64_t)change;
- (void)sendMsg:(id)msg args:(id)args;
- (void)sendReplyToMsg:(id)msg status:(unsigned __int8)status args:(id)args;
- (void)settingsDidChange:(id)change;
- (void)trackDidChange:(unint64_t)change;
@end

@implementation BTAVRCP_XpcSession

- (void)dealloc
{
  if ([(BTAVRCP_XpcSession *)self isRewinding])
  {
    MRMediaRemoteSendCommand();
  }

  if ([(BTAVRCP_XpcSession *)self isForwarding])
  {
    MRMediaRemoteSendCommand();
  }

  v3.receiver = self;
  v3.super_class = BTAVRCP_XpcSession;
  [(BTAVRCP_XpcSession *)&v3 dealloc];
}

- (id)nowPlayingInfo
{
  lazyNowPlayingInfo = [(BTAVRCP_XpcSession *)self lazyNowPlayingInfo];

  if (!lazyNowPlayingInfo)
  {
    v4 = objc_alloc_init(BTAVRCP_NowPlayingInfo);
    [(BTAVRCP_XpcSession *)self setLazyNowPlayingInfo:v4];

    lazyNowPlayingInfo2 = [(BTAVRCP_XpcSession *)self lazyNowPlayingInfo];
    [lazyNowPlayingInfo2 setDelegate:self];
  }

  return [(BTAVRCP_XpcSession *)self lazyNowPlayingInfo];
}

- (id)library
{
  lazyLibrary = [(BTAVRCP_XpcSession *)self lazyLibrary];

  if (!lazyLibrary)
  {
    v4 = objc_alloc_init(BTAVRCP_Library);
    [(BTAVRCP_XpcSession *)self setLazyLibrary:v4];

    lazyLibrary2 = [(BTAVRCP_XpcSession *)self lazyLibrary];
    [lazyLibrary2 setDelegate:self];
  }

  return [(BTAVRCP_XpcSession *)self lazyLibrary];
}

- (void)handleSendCommandMsg:(id)msg replyBlock:(id)block
{
  blockCopy = block;
  msgCopy = msg;
  int64 = xpc_dictionary_get_int64(msgCopy, "kCommand");
  string = xpc_dictionary_get_string(msgCopy, "kSource");

  v9 = objc_alloc_init(NSMutableDictionary);
  [v9 setObject:@"com.apple.AVRCP" forKey:kMRMediaRemoteOptionRemoteControlInterfaceIdentifier];
  if (string)
  {
    v10 = [NSString stringWithUTF8String:string];
    [v9 setObject:v10 forKey:kMRMediaRemoteOptionSourceID];
  }

  if (int64 > 9)
  {
    if (int64 == 10)
    {
      selfCopy2 = self;
      v14 = 1;
    }

    else
    {
      if (int64 != 11)
      {
        goto LABEL_14;
      }

      selfCopy2 = self;
      v14 = 0;
    }

    [(BTAVRCP_XpcSession *)selfCopy2 setIsRewinding:v14];
  }

  else
  {
    if (int64 == 8)
    {
      selfCopy4 = self;
      v12 = 1;
    }

    else
    {
      if (int64 != 9)
      {
        goto LABEL_14;
      }

      selfCopy4 = self;
      v12 = 0;
    }

    [(BTAVRCP_XpcSession *)selfCopy4 setIsForwarding:v12];
  }

LABEL_14:
  nowPlayingInfo = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  isLocalOrigin = [nowPlayingInfo isLocalOrigin];

  if (isLocalOrigin)
  {
    MRMediaRemoteSendCommand();
  }

  blockCopy[2](blockCopy, 4, 0);
}

- (void)handleSetSettingsMsg:(id)msg replyBlock:(id)block
{
  blockCopy = block;
  msgCopy = msg;
  int64 = xpc_dictionary_get_int64(msgCopy, "kRepeatMode");
  v7 = xpc_dictionary_get_int64(msgCopy, "kShuffleMode");

  if (int64 != -1)
  {
    MRMediaRemoteSetRepeatMode();
  }

  if (v7 != -1)
  {
    MRMediaRemoteSetShuffleMode();
  }

  blockCopy[2](blockCopy, 4, 0);
}

- (void)handleGetSettingsMsg:(id)msg replyBlock:(id)block
{
  blockCopy = block;
  nowPlayingInfo = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  settings = [nowPlayingInfo settings];

  v11[0] = @"kRepeatMode";
  v8 = [NSNumber numberWithInt:settings];
  v11[1] = @"kShuffleMode";
  v12[0] = v8;
  v9 = [NSNumber numberWithInt:HIDWORD(settings)];
  v12[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  blockCopy[2](blockCopy, 4, v10);
}

- (void)handleGetPlayStatusMsg:(id)msg replyBlock:(id)block
{
  blockCopy = block;
  v12 = +[NSMutableDictionary dictionary];
  nowPlayingInfo = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  trackDuration = [nowPlayingInfo trackDuration];
  [v12 setValue:trackDuration forKey:@"kTrackDuration"];

  nowPlayingInfo2 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  trackPosition = [nowPlayingInfo2 trackPosition];
  [v12 setValue:trackPosition forKey:@"kTrackPosition"];

  nowPlayingInfo3 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [nowPlayingInfo3 playbackState]);
  [v12 setValue:v11 forKey:@"kPlaybackState"];

  blockCopy[2](blockCopy, 4, v12);
}

- (void)handleGetElementAttributesMsg:(id)msg replyBlock:(id)block
{
  blockCopy = block;
  v5 = +[NSMutableDictionary dictionary];
  nowPlayingInfo = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  trackTitle = [nowPlayingInfo trackTitle];

  if (trackTitle)
  {
    [v5 setValue:trackTitle forKey:@"kTitle"];
  }

  nowPlayingInfo2 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  trackAlbum = [nowPlayingInfo2 trackAlbum];

  if (trackAlbum)
  {
    [v5 setValue:trackAlbum forKey:@"kAlbum"];
  }

  nowPlayingInfo3 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  trackArtist = [nowPlayingInfo3 trackArtist];

  if (trackArtist)
  {
    [v5 setValue:trackArtist forKey:@"kArtist"];
  }

  nowPlayingInfo4 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  trackGenre = [nowPlayingInfo4 trackGenre];

  if (trackGenre)
  {
    [v5 setValue:trackGenre forKey:@"kGenre"];
  }

  nowPlayingInfo5 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  trackQueueIndex = [nowPlayingInfo5 trackQueueIndex];

  if (trackQueueIndex)
  {
    [v5 setValue:trackQueueIndex forKey:@"kQueueIndex"];
  }

  nowPlayingInfo6 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  trackQueueCount = [nowPlayingInfo6 trackQueueCount];

  if (trackQueueCount)
  {
    [v5 setValue:trackQueueCount forKey:@"kQueueCount"];
  }

  nowPlayingInfo7 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  trackDuration = [nowPlayingInfo7 trackDuration];

  if (trackDuration)
  {
    [v5 setValue:trackDuration forKey:@"kDuration"];
  }

  nowPlayingInfo8 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  trackImageHandle = [nowPlayingInfo8 trackImageHandle];

  if (trackImageHandle)
  {
    [v5 setValue:trackImageHandle forKey:@"kImageHandle"];
  }

  blockCopy[2](blockCopy, 4, v5);
}

- (void)handleRegisterForChangesMsg:(id)msg replyBlock:(id)block
{
  blockCopy = block;
  nowPlayingInfo = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  blockCopy[2](blockCopy, 4, 0);
}

- (void)handleRegisterForPlayerChangesMsg:(id)msg replyBlock:(id)block
{
  v10 = @"kPlayerId";
  blockCopy = block;
  nowPlayingInfo = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [nowPlayingInfo playerId]);
  v11 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  (*(block + 2))(blockCopy, 4, v9);
}

- (void)handleRegisterForPlaybackStateChangesMsg:(id)msg replyBlock:(id)block
{
  v10 = @"kPlaybackState";
  blockCopy = block;
  nowPlayingInfo = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [nowPlayingInfo playbackState]);
  v11 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  (*(block + 2))(blockCopy, 4, v9);
}

- (void)handleRegisterForTrackChangesMsg:(id)msg replyBlock:(id)block
{
  v10 = @"kUid";
  blockCopy = block;
  nowPlayingInfo = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v8 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [nowPlayingInfo trackId]);
  v11 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  (*(block + 2))(blockCopy, 4, v9);
}

- (void)handleRegisterForSettingsChangesMsg:(id)msg replyBlock:(id)block
{
  blockCopy = block;
  nowPlayingInfo = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  settings = [nowPlayingInfo settings];

  v11[0] = @"kRepeatMode";
  v8 = [NSNumber numberWithInt:settings];
  v11[1] = @"kShuffleMode";
  v12[0] = v8;
  v9 = [NSNumber numberWithInt:HIDWORD(settings)];
  v12[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  blockCopy[2](blockCopy, 4, v10);
}

- (void)handleSetAddressedPlayerMsg:(id)msg replyBlock:(id)block
{
  blockCopy = block;
  xpc_dictionary_get_int64(msg, "kPlayerId");
  nowPlayingInfo = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  [nowPlayingInfo playerId];

  blockCopy[2]();
}

- (void)handleSetBrowsedPlayerMsg:(id)msg replyBlock:(id)block
{
  blockCopy = block;
  LODWORD(msg) = xpc_dictionary_get_int64(msg, "kPlayerId");
  nowPlayingInfo = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  playerId = [nowPlayingInfo playerId];

  if (playerId == msg)
  {
    nowPlayingInfo2 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
    isBrowsablePlayer = [nowPlayingInfo2 isBrowsablePlayer];

    if (isBrowsablePlayer)
    {
      library = [(BTAVRCP_XpcSession *)self library];
      [library getCurrentPath:blockCopy];

      goto LABEL_7;
    }

    v11 = blockCopy[2];
  }

  else
  {
    v11 = blockCopy[2];
  }

  v11();
LABEL_7:
}

- (void)handleChangePathMsg:(id)msg replyBlock:(id)block
{
  xdict = msg;
  blockCopy = block;
  int64 = xpc_dictionary_get_int64(xdict, "kUidCounter");
  if (xpc_dictionary_get_BOOL(xdict, "kDotDot"))
  {
    v8 = 0;
  }

  else
  {
    v8 = xpc_dictionary_get_int64(xdict, "kUid");
  }

  if (int64)
  {
    blockCopy[2](blockCopy, 5, 0);
  }

  else
  {
    library = [(BTAVRCP_XpcSession *)self library];
    [library changePath:v8 replyBlock:blockCopy];
  }
}

- (void)handleGetFolderItemsMsg:(id)msg replyBlock:(id)block
{
  blockCopy = block;
  msgCopy = msg;
  int64 = xpc_dictionary_get_int64(msgCopy, "kScope");
  v8 = xpc_dictionary_get_int64(msgCopy, "kStartItem");
  LODWORD(v9) = xpc_dictionary_get_int64(msgCopy, "kEndItem");
  v10 = [(BTAVRCP_XpcSession *)self attributeIDsFromArgs:msgCopy];

  if (v8 > v9)
  {
    goto LABEL_2;
  }

  if (v8 + 20 <= v9)
  {
    v9 = v8 + 19;
  }

  else
  {
    v9 = v9;
  }

  if ([v10 containsObject:&off_100019B88])
  {
    v12 = &off_100019C80;
  }

  else
  {
    v12 = 0;
  }

  if (int64 > 1u)
  {
    v13 = blockCopy;
    if (int64 == 2)
    {
      library = [(BTAVRCP_XpcSession *)self library];
      [library getSearchItemsFromStart:v8 toEnd:v9 attributeIDs:v12 replyBlock:blockCopy];
      goto LABEL_21;
    }

    if (int64 == 3)
    {
      nowPlayingInfo = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
      isMusicApp = [nowPlayingInfo isMusicApp];

      if (!isMusicApp)
      {
LABEL_2:
        v11 = blockCopy[2];
LABEL_3:
        v11();
        goto LABEL_22;
      }

      library = [(BTAVRCP_XpcSession *)self library];
      [library getNowPlayingItemsFromStart:v8 toEnd:v9 attributeIDs:v12 replyBlock:blockCopy];
      goto LABEL_21;
    }

LABEL_18:
    v11 = v13[2];
    goto LABEL_3;
  }

  v13 = blockCopy;
  if (!int64)
  {
    [(BTAVRCP_XpcSession *)self getMediaPlayersFromStart:v8 toEnd:v9 replyBlock:blockCopy];
    goto LABEL_22;
  }

  if (int64 != 1)
  {
    goto LABEL_18;
  }

  library = [(BTAVRCP_XpcSession *)self library];
  [library getVFSItemsFromStart:v8 toEnd:v9 attributeIDs:v12 replyBlock:blockCopy];
LABEL_21:

LABEL_22:
}

- (void)handleGetItemAttributesMsg:(id)msg replyBlock:(id)block
{
  blockCopy = block;
  msgCopy = msg;
  v7 = +[NSMutableDictionary dictionary];
  int64 = xpc_dictionary_get_int64(msgCopy, "kScope");
  v9 = xpc_dictionary_get_int64(msgCopy, "kUid");
  v10 = xpc_dictionary_get_int64(msgCopy, "kUidCounter");
  v11 = [(BTAVRCP_XpcSession *)self attributeIDsFromArgs:msgCopy];

  if (v10)
  {
    v12 = 5;
    goto LABEL_15;
  }

  switch(int64)
  {
    case 3:
      if (v9 == -1)
      {
        v12 = 9;
      }

      else if (v9 && (-[BTAVRCP_XpcSession nowPlayingInfo](self, "nowPlayingInfo"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 trackId], v15, v9 != v16))
      {
        nowPlayingInfo = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
        isMusicApp = [nowPlayingInfo isMusicApp];

        if (isMusicApp)
        {
          library = [(BTAVRCP_XpcSession *)self library];
          v14 = [library getNowPlayingItemWithUid:v9 attributeIDs:v11 reply:v7];
          goto LABEL_8;
        }

        v12 = 11;
      }

      else
      {
        v12 = [(BTAVRCP_XpcSession *)self getNowPlayingAttributeIDs:v11 reply:v7];
      }

      break;
    case 2:
      library = [(BTAVRCP_XpcSession *)self library];
      v14 = [library getSearchItemWithUid:v9 attributeIDs:v11 reply:v7];
      goto LABEL_8;
    case 1:
      library = [(BTAVRCP_XpcSession *)self library];
      v14 = [library getVFSItemWithUid:v9 attributeIDs:v11 reply:v7];
LABEL_8:
      v12 = v14;

      break;
    default:
      v12 = 10;
      break;
  }

LABEL_15:
  blockCopy[2](blockCopy, v12, v7);
}

- (void)handleSearchMsg:(id)msg replyBlock:(id)block
{
  blockCopy = block;
  string = xpc_dictionary_get_string(msg, "kSearchString");
  library = [(BTAVRCP_XpcSession *)self library];
  v8 = [NSString stringWithUTF8String:string];
  [library search:v8 replyBlock:blockCopy];
}

- (void)handleGetTotalNumberOfItemsMsg:(id)msg replyBlock:(id)block
{
  blockCopy = block;
  int64 = xpc_dictionary_get_int64(msg, "kScope");
  v8 = 0;
  if (int64 > 1u)
  {
    if (int64 == 2)
    {
      library = [(BTAVRCP_XpcSession *)self library];
      getSearchItemsCount = [library getSearchItemsCount];
      goto LABEL_11;
    }

    if (int64 == 3)
    {
      nowPlayingInfo = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
      isMusicApp = [nowPlayingInfo isMusicApp];

      if (!isMusicApp)
      {
        v8 = 0;
        goto LABEL_12;
      }

      library = [(BTAVRCP_XpcSession *)self library];
      getSearchItemsCount = [library getNowPlayingItemsCount];
      goto LABEL_11;
    }
  }

  else if (int64)
  {
    if (int64 == 1)
    {
      library = [(BTAVRCP_XpcSession *)self library];
      getSearchItemsCount = [library getVFSItemsCount];
LABEL_11:
      v8 = getSearchItemsCount;
    }
  }

  else
  {
    v8 = 1;
  }

LABEL_12:
  v15 = @"kNumItems";
  v13 = [NSNumber numberWithUnsignedInteger:v8];
  v16 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  blockCopy[2](blockCopy, 4, v14);
}

- (void)handlePlayItemMsg:(id)msg replyBlock:(id)block
{
  blockCopy = block;
  msgCopy = msg;
  int64 = xpc_dictionary_get_int64(msgCopy, "kScope");
  v8 = xpc_dictionary_get_int64(msgCopy, "kUid");
  v9 = xpc_dictionary_get_int64(msgCopy, "kUidCounter");

  if (v9)
  {
    v10 = 5;
    goto LABEL_13;
  }

  switch(int64)
  {
    case 3:
      nowPlayingInfo = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
      isMusicApp = [nowPlayingInfo isMusicApp];

      if (isMusicApp)
      {
        library = [(BTAVRCP_XpcSession *)self library];
        v12 = [library playNowPlayingItemWithUid:v8];
        goto LABEL_10;
      }

      v10 = 9;
      break;
    case 2:
      library = [(BTAVRCP_XpcSession *)self library];
      v12 = [library playSearchItemWithUid:v8];
      goto LABEL_10;
    case 1:
      library = [(BTAVRCP_XpcSession *)self library];
      v12 = [library playVFSItemWithUid:v8];
LABEL_10:
      v10 = v12;

      break;
    default:
      v10 = 10;
      break;
  }

LABEL_13:
  blockCopy[2](blockCopy, v10, 0);
}

- (void)handleGetImagePropertiesMsg:(id)msg replyBlock:(id)block
{
  blockCopy = block;
  v12 = +[NSMutableDictionary dictionary];
  nowPlayingInfo = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  encodings = [nowPlayingInfo encodings];
  [v12 setValue:encodings forKey:@"kEncodings"];

  nowPlayingInfo2 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  widths = [nowPlayingInfo2 widths];
  [v12 setValue:widths forKey:@"kWidths"];

  nowPlayingInfo3 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  heights = [nowPlayingInfo3 heights];
  [v12 setValue:heights forKey:@"kHeights"];

  blockCopy[2](blockCopy, 0, v12);
}

- (void)handleGetImageMsg:(id)msg replyBlock:(id)block
{
  blockCopy = block;
  msgCopy = msg;
  int64 = xpc_dictionary_get_int64(msgCopy, "kWidth");
  v9 = xpc_dictionary_get_int64(msgCopy, "kHeight");

  nowPlayingInfo = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  widths = [nowPlayingInfo widths];
  v12 = [NSNumber numberWithUnsignedLongLong:int64];
  [widths indexOfObject:v12];

  nowPlayingInfo2 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  heights = [nowPlayingInfo2 heights];
  v15 = [NSNumber numberWithUnsignedLongLong:v9];
  [heights indexOfObject:v15];

  v16 = MRPlaybackQueueRequestCreate();
  MRMediaRemoteGetLocalOrigin();
  v17 = MRNowPlayingPlayerPathCreate();
  MRPlaybackQueueRequestSetIncludeArtwork();
  v18 = blockCopy;
  MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync();
  if (v16)
  {
    CFRelease(v16);
  }

  if (v17)
  {
    CFRelease(v17);
  }
}

- (void)handleMsg:(id)msg
{
  msgCopy = msg;
  string = xpc_dictionary_get_string(msgCopy, "kMsgId");
  v6 = xpc_dictionary_get_value(msgCopy, "kMsgArgs");
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005934;
  v11[3] = &unk_100018AA0;
  v11[4] = self;
  v12 = msgCopy;
  v7 = msgCopy;
  v8 = objc_retainBlock(v11);
  string = [NSString stringWithFormat:@"handle%sMsg:replyBlock:", string];
  v10 = NSSelectorFromString(string);

  [self v10];
}

- (void)sendReplyToMsg:(id)msg status:(unsigned __int8)status args:(id)args
{
  statusCopy = status;
  argsCopy = args;
  xdict = xpc_dictionary_create_reply(msg);
  xpc_dictionary_set_int64(xdict, "kMsgStatus", statusCopy);
  v9 = _CFXPCCreateXPCObjectFromCFObject();

  xpc_dictionary_set_value(xdict, "kMsgArgs", v9);
  [(BTXpcSession *)self sendReply:xdict];
}

- (void)sendMsg:(id)msg args:(id)args
{
  argsCopy = args;
  msgCopy = msg;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = [msgCopy cStringUsingEncoding:4];

  xpc_dictionary_set_string(v7, "kMsgId", v8);
  if (argsCopy)
  {
    v9 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(v7, "kMsgArgs", v9);
  }

  [(BTXpcSession *)self sendMsg:v7];
}

- (void)playbackStateDidChange:(int64_t)change
{
  v6 = @"kPlaybackState";
  v4 = [NSNumber numberWithInteger:change];
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(BTAVRCP_XpcSession *)self sendMsg:@"PlaybackStateDidChange" args:v5];
}

- (void)trackDidChange:(unint64_t)change
{
  v6 = @"kUid";
  v4 = [NSNumber numberWithUnsignedLongLong:change];
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(BTAVRCP_XpcSession *)self sendMsg:@"TrackDidChange" args:v5];
}

- (void)settingsDidChange:(id)change
{
  var1 = change.var1;
  v8[0] = @"kRepeatMode";
  v5 = [NSNumber numberWithInt:?];
  v8[1] = @"kShuffleMode";
  v9[0] = v5;
  v6 = [NSNumber numberWithInt:var1];
  v9[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  [(BTAVRCP_XpcSession *)self sendMsg:@"SettingsDidChange" args:v7];
}

- (void)libraryDidChange
{
  [(BTAVRCP_XpcSession *)self sendMsg:@"LibraryDidChange" args:0];
  nowPlayingInfo = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  -[BTAVRCP_XpcSession trackDidChange:](self, "trackDidChange:", [nowPlayingInfo trackId]);
}

- (id)attributeIDsFromArgs:(id)args
{
  v3 = xpc_dictionary_get_value(args, "kAttributeIDs");
  if (v3)
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)getMediaPlayersFromStart:(unint64_t)start toEnd:(unint64_t)end replyBlock:(id)block
{
  if (start)
  {
    v5 = *(block + 2);
    blockCopy = block;
    v5();
  }

  else
  {
    v22[0] = @"kPlayerId";
    blockCopy2 = block;
    nowPlayingInfo = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
    v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [nowPlayingInfo playerId]);
    v23[0] = v10;
    v22[1] = @"kPlaybackState";
    nowPlayingInfo2 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [nowPlayingInfo2 playbackState]);
    v23[1] = v12;
    v22[2] = @"kIsBrowsable";
    nowPlayingInfo3 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
    v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [nowPlayingInfo3 isBrowsablePlayer]);
    v23[2] = v14;
    v22[3] = @"kName";
    nowPlayingInfo4 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
    playerName = [nowPlayingInfo4 playerName];
    v23[3] = playerName;
    blockCopy = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];

    v19 = blockCopy;
    v20 = @"kItems";
    v17 = [NSArray arrayWithObjects:&v19 count:1];
    v21 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    blockCopy2[2](blockCopy2, 4, v18);
  }
}

- (unsigned)getNowPlayingAttributeIDs:(id)ds reply:(id)reply
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006198;
  v7[3] = &unk_100018AC8;
  v7[4] = self;
  replyCopy = reply;
  v5 = replyCopy;
  [ds enumerateAttributeIDs:v7];

  return 4;
}

@end