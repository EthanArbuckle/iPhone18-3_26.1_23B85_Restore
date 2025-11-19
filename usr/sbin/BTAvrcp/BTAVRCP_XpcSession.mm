@interface BTAVRCP_XpcSession
- (id)attributeIDsFromArgs:(id)a3;
- (id)library;
- (id)nowPlayingInfo;
- (unsigned)getNowPlayingAttributeIDs:(id)a3 reply:(id)a4;
- (void)dealloc;
- (void)getMediaPlayersFromStart:(unint64_t)a3 toEnd:(unint64_t)a4 replyBlock:(id)a5;
- (void)handleChangePathMsg:(id)a3 replyBlock:(id)a4;
- (void)handleGetElementAttributesMsg:(id)a3 replyBlock:(id)a4;
- (void)handleGetFolderItemsMsg:(id)a3 replyBlock:(id)a4;
- (void)handleGetImageMsg:(id)a3 replyBlock:(id)a4;
- (void)handleGetImagePropertiesMsg:(id)a3 replyBlock:(id)a4;
- (void)handleGetItemAttributesMsg:(id)a3 replyBlock:(id)a4;
- (void)handleGetPlayStatusMsg:(id)a3 replyBlock:(id)a4;
- (void)handleGetSettingsMsg:(id)a3 replyBlock:(id)a4;
- (void)handleGetTotalNumberOfItemsMsg:(id)a3 replyBlock:(id)a4;
- (void)handleMsg:(id)a3;
- (void)handlePlayItemMsg:(id)a3 replyBlock:(id)a4;
- (void)handleRegisterForChangesMsg:(id)a3 replyBlock:(id)a4;
- (void)handleRegisterForPlaybackStateChangesMsg:(id)a3 replyBlock:(id)a4;
- (void)handleRegisterForPlayerChangesMsg:(id)a3 replyBlock:(id)a4;
- (void)handleRegisterForSettingsChangesMsg:(id)a3 replyBlock:(id)a4;
- (void)handleRegisterForTrackChangesMsg:(id)a3 replyBlock:(id)a4;
- (void)handleSearchMsg:(id)a3 replyBlock:(id)a4;
- (void)handleSendCommandMsg:(id)a3 replyBlock:(id)a4;
- (void)handleSetAddressedPlayerMsg:(id)a3 replyBlock:(id)a4;
- (void)handleSetBrowsedPlayerMsg:(id)a3 replyBlock:(id)a4;
- (void)handleSetSettingsMsg:(id)a3 replyBlock:(id)a4;
- (void)libraryDidChange;
- (void)playbackStateDidChange:(int64_t)a3;
- (void)sendMsg:(id)a3 args:(id)a4;
- (void)sendReplyToMsg:(id)a3 status:(unsigned __int8)a4 args:(id)a5;
- (void)settingsDidChange:(id)a3;
- (void)trackDidChange:(unint64_t)a3;
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
  v3 = [(BTAVRCP_XpcSession *)self lazyNowPlayingInfo];

  if (!v3)
  {
    v4 = objc_alloc_init(BTAVRCP_NowPlayingInfo);
    [(BTAVRCP_XpcSession *)self setLazyNowPlayingInfo:v4];

    v5 = [(BTAVRCP_XpcSession *)self lazyNowPlayingInfo];
    [v5 setDelegate:self];
  }

  return [(BTAVRCP_XpcSession *)self lazyNowPlayingInfo];
}

- (id)library
{
  v3 = [(BTAVRCP_XpcSession *)self lazyLibrary];

  if (!v3)
  {
    v4 = objc_alloc_init(BTAVRCP_Library);
    [(BTAVRCP_XpcSession *)self setLazyLibrary:v4];

    v5 = [(BTAVRCP_XpcSession *)self lazyLibrary];
    [v5 setDelegate:self];
  }

  return [(BTAVRCP_XpcSession *)self lazyLibrary];
}

- (void)handleSendCommandMsg:(id)a3 replyBlock:(id)a4
{
  v17 = a4;
  v6 = a3;
  int64 = xpc_dictionary_get_int64(v6, "kCommand");
  string = xpc_dictionary_get_string(v6, "kSource");

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
      v13 = self;
      v14 = 1;
    }

    else
    {
      if (int64 != 11)
      {
        goto LABEL_14;
      }

      v13 = self;
      v14 = 0;
    }

    [(BTAVRCP_XpcSession *)v13 setIsRewinding:v14];
  }

  else
  {
    if (int64 == 8)
    {
      v11 = self;
      v12 = 1;
    }

    else
    {
      if (int64 != 9)
      {
        goto LABEL_14;
      }

      v11 = self;
      v12 = 0;
    }

    [(BTAVRCP_XpcSession *)v11 setIsForwarding:v12];
  }

LABEL_14:
  v15 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v16 = [v15 isLocalOrigin];

  if (v16)
  {
    MRMediaRemoteSendCommand();
  }

  v17[2](v17, 4, 0);
}

- (void)handleSetSettingsMsg:(id)a3 replyBlock:(id)a4
{
  v8 = a4;
  v5 = a3;
  int64 = xpc_dictionary_get_int64(v5, "kRepeatMode");
  v7 = xpc_dictionary_get_int64(v5, "kShuffleMode");

  if (int64 != -1)
  {
    MRMediaRemoteSetRepeatMode();
  }

  if (v7 != -1)
  {
    MRMediaRemoteSetShuffleMode();
  }

  v8[2](v8, 4, 0);
}

- (void)handleGetSettingsMsg:(id)a3 replyBlock:(id)a4
{
  v5 = a4;
  v6 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v7 = [v6 settings];

  v11[0] = @"kRepeatMode";
  v8 = [NSNumber numberWithInt:v7];
  v11[1] = @"kShuffleMode";
  v12[0] = v8;
  v9 = [NSNumber numberWithInt:HIDWORD(v7)];
  v12[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v5[2](v5, 4, v10);
}

- (void)handleGetPlayStatusMsg:(id)a3 replyBlock:(id)a4
{
  v5 = a4;
  v12 = +[NSMutableDictionary dictionary];
  v6 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v7 = [v6 trackDuration];
  [v12 setValue:v7 forKey:@"kTrackDuration"];

  v8 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v9 = [v8 trackPosition];
  [v12 setValue:v9 forKey:@"kTrackPosition"];

  v10 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 playbackState]);
  [v12 setValue:v11 forKey:@"kPlaybackState"];

  v5[2](v5, 4, v12);
}

- (void)handleGetElementAttributesMsg:(id)a3 replyBlock:(id)a4
{
  v22 = a4;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v7 = [v6 trackTitle];

  if (v7)
  {
    [v5 setValue:v7 forKey:@"kTitle"];
  }

  v8 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v9 = [v8 trackAlbum];

  if (v9)
  {
    [v5 setValue:v9 forKey:@"kAlbum"];
  }

  v10 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v11 = [v10 trackArtist];

  if (v11)
  {
    [v5 setValue:v11 forKey:@"kArtist"];
  }

  v12 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v13 = [v12 trackGenre];

  if (v13)
  {
    [v5 setValue:v13 forKey:@"kGenre"];
  }

  v14 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v15 = [v14 trackQueueIndex];

  if (v15)
  {
    [v5 setValue:v15 forKey:@"kQueueIndex"];
  }

  v16 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v17 = [v16 trackQueueCount];

  if (v17)
  {
    [v5 setValue:v17 forKey:@"kQueueCount"];
  }

  v18 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v19 = [v18 trackDuration];

  if (v19)
  {
    [v5 setValue:v19 forKey:@"kDuration"];
  }

  v20 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v21 = [v20 trackImageHandle];

  if (v21)
  {
    [v5 setValue:v21 forKey:@"kImageHandle"];
  }

  v22[2](v22, 4, v5);
}

- (void)handleRegisterForChangesMsg:(id)a3 replyBlock:(id)a4
{
  v6 = a4;
  v5 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v6[2](v6, 4, 0);
}

- (void)handleRegisterForPlayerChangesMsg:(id)a3 replyBlock:(id)a4
{
  v10 = @"kPlayerId";
  v6 = a4;
  v7 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 playerId]);
  v11 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  (*(a4 + 2))(v6, 4, v9);
}

- (void)handleRegisterForPlaybackStateChangesMsg:(id)a3 replyBlock:(id)a4
{
  v10 = @"kPlaybackState";
  v6 = a4;
  v7 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 playbackState]);
  v11 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  (*(a4 + 2))(v6, 4, v9);
}

- (void)handleRegisterForTrackChangesMsg:(id)a3 replyBlock:(id)a4
{
  v10 = @"kUid";
  v6 = a4;
  v7 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v8 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v7 trackId]);
  v11 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  (*(a4 + 2))(v6, 4, v9);
}

- (void)handleRegisterForSettingsChangesMsg:(id)a3 replyBlock:(id)a4
{
  v5 = a4;
  v6 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v7 = [v6 settings];

  v11[0] = @"kRepeatMode";
  v8 = [NSNumber numberWithInt:v7];
  v11[1] = @"kShuffleMode";
  v12[0] = v8;
  v9 = [NSNumber numberWithInt:HIDWORD(v7)];
  v12[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v5[2](v5, 4, v10);
}

- (void)handleSetAddressedPlayerMsg:(id)a3 replyBlock:(id)a4
{
  v7 = a4;
  xpc_dictionary_get_int64(a3, "kPlayerId");
  v6 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  [v6 playerId];

  v7[2]();
}

- (void)handleSetBrowsedPlayerMsg:(id)a3 replyBlock:(id)a4
{
  v12 = a4;
  LODWORD(a3) = xpc_dictionary_get_int64(a3, "kPlayerId");
  v6 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v7 = [v6 playerId];

  if (v7 == a3)
  {
    v8 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
    v9 = [v8 isBrowsablePlayer];

    if (v9)
    {
      v10 = [(BTAVRCP_XpcSession *)self library];
      [v10 getCurrentPath:v12];

      goto LABEL_7;
    }

    v11 = v12[2];
  }

  else
  {
    v11 = v12[2];
  }

  v11();
LABEL_7:
}

- (void)handleChangePathMsg:(id)a3 replyBlock:(id)a4
{
  xdict = a3;
  v6 = a4;
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
    v6[2](v6, 5, 0);
  }

  else
  {
    v9 = [(BTAVRCP_XpcSession *)self library];
    [v9 changePath:v8 replyBlock:v6];
  }
}

- (void)handleGetFolderItemsMsg:(id)a3 replyBlock:(id)a4
{
  v17 = a4;
  v6 = a3;
  int64 = xpc_dictionary_get_int64(v6, "kScope");
  v8 = xpc_dictionary_get_int64(v6, "kStartItem");
  LODWORD(v9) = xpc_dictionary_get_int64(v6, "kEndItem");
  v10 = [(BTAVRCP_XpcSession *)self attributeIDsFromArgs:v6];

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
    v13 = v17;
    if (int64 == 2)
    {
      v14 = [(BTAVRCP_XpcSession *)self library];
      [v14 getSearchItemsFromStart:v8 toEnd:v9 attributeIDs:v12 replyBlock:v17];
      goto LABEL_21;
    }

    if (int64 == 3)
    {
      v15 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
      v16 = [v15 isMusicApp];

      if (!v16)
      {
LABEL_2:
        v11 = v17[2];
LABEL_3:
        v11();
        goto LABEL_22;
      }

      v14 = [(BTAVRCP_XpcSession *)self library];
      [v14 getNowPlayingItemsFromStart:v8 toEnd:v9 attributeIDs:v12 replyBlock:v17];
      goto LABEL_21;
    }

LABEL_18:
    v11 = v13[2];
    goto LABEL_3;
  }

  v13 = v17;
  if (!int64)
  {
    [(BTAVRCP_XpcSession *)self getMediaPlayersFromStart:v8 toEnd:v9 replyBlock:v17];
    goto LABEL_22;
  }

  if (int64 != 1)
  {
    goto LABEL_18;
  }

  v14 = [(BTAVRCP_XpcSession *)self library];
  [v14 getVFSItemsFromStart:v8 toEnd:v9 attributeIDs:v12 replyBlock:v17];
LABEL_21:

LABEL_22:
}

- (void)handleGetItemAttributesMsg:(id)a3 replyBlock:(id)a4
{
  v19 = a4;
  v6 = a3;
  v7 = +[NSMutableDictionary dictionary];
  int64 = xpc_dictionary_get_int64(v6, "kScope");
  v9 = xpc_dictionary_get_int64(v6, "kUid");
  v10 = xpc_dictionary_get_int64(v6, "kUidCounter");
  v11 = [(BTAVRCP_XpcSession *)self attributeIDsFromArgs:v6];

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
        v17 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
        v18 = [v17 isMusicApp];

        if (v18)
        {
          v13 = [(BTAVRCP_XpcSession *)self library];
          v14 = [v13 getNowPlayingItemWithUid:v9 attributeIDs:v11 reply:v7];
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
      v13 = [(BTAVRCP_XpcSession *)self library];
      v14 = [v13 getSearchItemWithUid:v9 attributeIDs:v11 reply:v7];
      goto LABEL_8;
    case 1:
      v13 = [(BTAVRCP_XpcSession *)self library];
      v14 = [v13 getVFSItemWithUid:v9 attributeIDs:v11 reply:v7];
LABEL_8:
      v12 = v14;

      break;
    default:
      v12 = 10;
      break;
  }

LABEL_15:
  v19[2](v19, v12, v7);
}

- (void)handleSearchMsg:(id)a3 replyBlock:(id)a4
{
  v6 = a4;
  string = xpc_dictionary_get_string(a3, "kSearchString");
  v9 = [(BTAVRCP_XpcSession *)self library];
  v8 = [NSString stringWithUTF8String:string];
  [v9 search:v8 replyBlock:v6];
}

- (void)handleGetTotalNumberOfItemsMsg:(id)a3 replyBlock:(id)a4
{
  v6 = a4;
  int64 = xpc_dictionary_get_int64(a3, "kScope");
  v8 = 0;
  if (int64 > 1u)
  {
    if (int64 == 2)
    {
      v9 = [(BTAVRCP_XpcSession *)self library];
      v10 = [v9 getSearchItemsCount];
      goto LABEL_11;
    }

    if (int64 == 3)
    {
      v11 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
      v12 = [v11 isMusicApp];

      if (!v12)
      {
        v8 = 0;
        goto LABEL_12;
      }

      v9 = [(BTAVRCP_XpcSession *)self library];
      v10 = [v9 getNowPlayingItemsCount];
      goto LABEL_11;
    }
  }

  else if (int64)
  {
    if (int64 == 1)
    {
      v9 = [(BTAVRCP_XpcSession *)self library];
      v10 = [v9 getVFSItemsCount];
LABEL_11:
      v8 = v10;
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
  v6[2](v6, 4, v14);
}

- (void)handlePlayItemMsg:(id)a3 replyBlock:(id)a4
{
  v15 = a4;
  v6 = a3;
  int64 = xpc_dictionary_get_int64(v6, "kScope");
  v8 = xpc_dictionary_get_int64(v6, "kUid");
  v9 = xpc_dictionary_get_int64(v6, "kUidCounter");

  if (v9)
  {
    v10 = 5;
    goto LABEL_13;
  }

  switch(int64)
  {
    case 3:
      v13 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
      v14 = [v13 isMusicApp];

      if (v14)
      {
        v11 = [(BTAVRCP_XpcSession *)self library];
        v12 = [v11 playNowPlayingItemWithUid:v8];
        goto LABEL_10;
      }

      v10 = 9;
      break;
    case 2:
      v11 = [(BTAVRCP_XpcSession *)self library];
      v12 = [v11 playSearchItemWithUid:v8];
      goto LABEL_10;
    case 1:
      v11 = [(BTAVRCP_XpcSession *)self library];
      v12 = [v11 playVFSItemWithUid:v8];
LABEL_10:
      v10 = v12;

      break;
    default:
      v10 = 10;
      break;
  }

LABEL_13:
  v15[2](v15, v10, 0);
}

- (void)handleGetImagePropertiesMsg:(id)a3 replyBlock:(id)a4
{
  v5 = a4;
  v12 = +[NSMutableDictionary dictionary];
  v6 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v7 = [v6 encodings];
  [v12 setValue:v7 forKey:@"kEncodings"];

  v8 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v9 = [v8 widths];
  [v12 setValue:v9 forKey:@"kWidths"];

  v10 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v11 = [v10 heights];
  [v12 setValue:v11 forKey:@"kHeights"];

  v5[2](v5, 0, v12);
}

- (void)handleGetImageMsg:(id)a3 replyBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  int64 = xpc_dictionary_get_int64(v7, "kWidth");
  v9 = xpc_dictionary_get_int64(v7, "kHeight");

  v10 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v11 = [v10 widths];
  v12 = [NSNumber numberWithUnsignedLongLong:int64];
  [v11 indexOfObject:v12];

  v13 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  v14 = [v13 heights];
  v15 = [NSNumber numberWithUnsignedLongLong:v9];
  [v14 indexOfObject:v15];

  v16 = MRPlaybackQueueRequestCreate();
  MRMediaRemoteGetLocalOrigin();
  v17 = MRNowPlayingPlayerPathCreate();
  MRPlaybackQueueRequestSetIncludeArtwork();
  v18 = v6;
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

- (void)handleMsg:(id)a3
{
  v4 = a3;
  string = xpc_dictionary_get_string(v4, "kMsgId");
  v6 = xpc_dictionary_get_value(v4, "kMsgArgs");
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005934;
  v11[3] = &unk_100018AA0;
  v11[4] = self;
  v12 = v4;
  v7 = v4;
  v8 = objc_retainBlock(v11);
  v9 = [NSString stringWithFormat:@"handle%sMsg:replyBlock:", string];
  v10 = NSSelectorFromString(v9);

  [self v10];
}

- (void)sendReplyToMsg:(id)a3 status:(unsigned __int8)a4 args:(id)a5
{
  v5 = a4;
  v8 = a5;
  xdict = xpc_dictionary_create_reply(a3);
  xpc_dictionary_set_int64(xdict, "kMsgStatus", v5);
  v9 = _CFXPCCreateXPCObjectFromCFObject();

  xpc_dictionary_set_value(xdict, "kMsgArgs", v9);
  [(BTXpcSession *)self sendReply:xdict];
}

- (void)sendMsg:(id)a3 args:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = [v6 cStringUsingEncoding:4];

  xpc_dictionary_set_string(v7, "kMsgId", v8);
  if (v10)
  {
    v9 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(v7, "kMsgArgs", v9);
  }

  [(BTXpcSession *)self sendMsg:v7];
}

- (void)playbackStateDidChange:(int64_t)a3
{
  v6 = @"kPlaybackState";
  v4 = [NSNumber numberWithInteger:a3];
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(BTAVRCP_XpcSession *)self sendMsg:@"PlaybackStateDidChange" args:v5];
}

- (void)trackDidChange:(unint64_t)a3
{
  v6 = @"kUid";
  v4 = [NSNumber numberWithUnsignedLongLong:a3];
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(BTAVRCP_XpcSession *)self sendMsg:@"TrackDidChange" args:v5];
}

- (void)settingsDidChange:(id)a3
{
  var1 = a3.var1;
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
  v3 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
  -[BTAVRCP_XpcSession trackDidChange:](self, "trackDidChange:", [v3 trackId]);
}

- (id)attributeIDsFromArgs:(id)a3
{
  v3 = xpc_dictionary_get_value(a3, "kAttributeIDs");
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

- (void)getMediaPlayersFromStart:(unint64_t)a3 toEnd:(unint64_t)a4 replyBlock:(id)a5
{
  if (a3)
  {
    v5 = *(a5 + 2);
    v6 = a5;
    v5();
  }

  else
  {
    v22[0] = @"kPlayerId";
    v8 = a5;
    v9 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
    v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 playerId]);
    v23[0] = v10;
    v22[1] = @"kPlaybackState";
    v11 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 playbackState]);
    v23[1] = v12;
    v22[2] = @"kIsBrowsable";
    v13 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
    v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 isBrowsablePlayer]);
    v23[2] = v14;
    v22[3] = @"kName";
    v15 = [(BTAVRCP_XpcSession *)self nowPlayingInfo];
    v16 = [v15 playerName];
    v23[3] = v16;
    v6 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];

    v19 = v6;
    v20 = @"kItems";
    v17 = [NSArray arrayWithObjects:&v19 count:1];
    v21 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v8[2](v8, 4, v18);
  }
}

- (unsigned)getNowPlayingAttributeIDs:(id)a3 reply:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006198;
  v7[3] = &unk_100018AC8;
  v7[4] = self;
  v8 = a4;
  v5 = v8;
  [a3 enumerateAttributeIDs:v7];

  return 4;
}

@end