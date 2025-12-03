@interface BTAVRCP_ItemsFolder
- (id)replyAttributesForUid:(unint64_t)uid attributeIDs:(id)ds;
- (id)replyItemAtIndex:(unint64_t)index attributeIDs:(id)ds;
- (unint64_t)childrenCount;
- (unsigned)createFolderWithUid:(unint64_t)uid folder:(id *)folder;
- (unsigned)playItemWithUid:(unint64_t)uid;
@end

@implementation BTAVRCP_ItemsFolder

- (unint64_t)childrenCount
{
  query = [(BTAVRCP_VFSFolder *)self query];
  items = [query items];
  v4 = [items count];

  return v4;
}

- (unsigned)createFolderWithUid:(unint64_t)uid folder:(id *)folder
{
  v5 = [(BTAVRCP_VFSFolder *)self query:uid];
  v6 = [v5 itemWithUid:uid];

  if (v6)
  {
    return 8;
  }

  else
  {
    return 9;
  }
}

- (id)replyItemAtIndex:(unint64_t)index attributeIDs:(id)ds
{
  dsCopy = ds;
  query = [(BTAVRCP_VFSFolder *)self query];
  v8 = [query itemAtIndex:index];

  v9 = [v8 replyItemWithAttributeIDs:dsCopy];

  return v9;
}

- (id)replyAttributesForUid:(unint64_t)uid attributeIDs:(id)ds
{
  dsCopy = ds;
  query = [(BTAVRCP_VFSFolder *)self query];
  v8 = [query itemWithUid:uid];

  v9 = [v8 replyAttributesForIDs:dsCopy];

  return v9;
}

- (unsigned)playItemWithUid:(unint64_t)uid
{
  query = [(BTAVRCP_VFSFolder *)self query];
  v6 = [query itemWithUid:uid];

  if (v6)
  {
    targetApp = [(BTAVRCP_ItemsFolder *)self targetApp];
    if ([targetApp isEqualToString:off_10001EE50])
    {
      v8 = +[MPMusicPlayerController systemMusicPlayer];
      query2 = [(BTAVRCP_VFSFolder *)self query];
      [v8 setQueueWithQuery:query2 firstItem:v6];

      [v8 play];
    }

    else
    {
      MRSystemAppPlaybackQueueCreate();
      query3 = [(BTAVRCP_VFSFolder *)self query];
      [NSKeyedArchiver archivedDataWithRootObject:query3];
      MRSystemAppPlaybackQueueSetLocalQueryData();

      [v6 persistentID];
      MRSystemAppPlaybackQueueSetLocalQueryFirstItemPID();
      MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback();
      MRMediaRemoteSetAppPlaybackQueue();
      MRSystemAppPlaybackQueueDestroy();
    }

    v10 = 4;
  }

  else
  {
    v10 = 9;
  }

  return v10;
}

@end