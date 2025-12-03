@interface BTAVRCP_PodcastsFolder
- (id)replyAttributesForUid:(unint64_t)uid attributeIDs:(id)ds;
- (id)replyItemAtIndex:(unint64_t)index attributeIDs:(id)ds;
- (id)unplayedEpisodesFolderName;
- (unint64_t)childrenCount;
- (unsigned)createFolderWithUid:(unint64_t)uid folder:(id *)folder;
- (unsigned)playItemWithUid:(unint64_t)uid;
@end

@implementation BTAVRCP_PodcastsFolder

- (id)unplayedEpisodesFolderName
{
  v2 = +[NSBundle mobileBluetoothBundle];
  v3 = [v2 localizedStringForKey:@"UNPLAYED_EPISODES" value:@"Unplayed Episodes" table:0];

  return v3;
}

- (unint64_t)childrenCount
{
  query = [(BTAVRCP_VFSFolder *)self query];
  collections = [query collections];
  v4 = [collections count];

  return v4 + 1;
}

- (unsigned)createFolderWithUid:(unint64_t)uid folder:(id *)folder
{
  if ([(BTAVRCP_VFSFolder *)self uid]== uid)
  {
    v7 = [BTAVRCP_PodcastItemsFolder alloc];
    unplayedEpisodesFolderName = [(BTAVRCP_PodcastsFolder *)self unplayedEpisodesFolderName];
    *folder = [(BTAVRCP_VFSFolder *)v7 initWithName:unplayedEpisodesFolderName uid:uid];

    v9 = *folder;
    v10 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanFalse forProperty:MPMediaItemPropertyHasBeenPlayed];
    [v9 storePredicate:v10];
  }

  else
  {
    query = [(BTAVRCP_VFSFolder *)self query];
    v10 = [query collectionWithUid:uid property:MPMediaItemPropertyPodcastPersistentID];

    if (!v10)
    {
      v18 = 9;
      goto LABEL_6;
    }

    representativeItem = [v10 representativeItem];
    v13 = [representativeItem valueForProperty:MPMediaItemPropertyPodcastPersistentID];

    representativeItem2 = [v10 representativeItem];
    v15 = [representativeItem2 valueForProperty:MPMediaItemPropertyPodcastTitle];

    v16 = -[BTAVRCP_VFSFolder initWithName:uid:]([BTAVRCP_PodcastItemsFolder alloc], "initWithName:uid:", v15, [v13 unsignedLongLongValue]);
    *folder = v16;
    v17 = [MPMediaPropertyPredicate predicateWithValue:v13 forProperty:MPMediaItemPropertyPodcastPersistentID];
    [(BTAVRCP_VFSFolder *)v16 storePredicate:v17];
  }

  v18 = 4;
LABEL_6:

  return v18;
}

- (id)replyItemAtIndex:(unint64_t)index attributeIDs:(id)ds
{
  if (!index)
  {
    v7 = [NSNumber numberWithUnsignedLongLong:[(BTAVRCP_VFSFolder *)self uid:0]];
    unplayedEpisodesFolderName = [(BTAVRCP_PodcastsFolder *)self unplayedEpisodesFolderName];
    v12 = [(BTAVRCP_VFSFolder *)self replyFolderWithType:1 uid:v7 name:unplayedEpisodesFolderName];
    goto LABEL_5;
  }

  v5 = index - 1;
  query = [(BTAVRCP_VFSFolder *)self query];
  v7 = [query collectionAtIndex:v5];

  if (v7)
  {
    unplayedEpisodesFolderName = [v7 representativeItem];
    v9 = [unplayedEpisodesFolderName valueForProperty:MPMediaItemPropertyPodcastPersistentID];
    representativeItem = [v7 representativeItem];
    v11 = [representativeItem valueForProperty:MPMediaItemPropertyPodcastTitle];
    v12 = [(BTAVRCP_VFSFolder *)self replyFolderWithType:1 uid:v9 name:v11];

LABEL_5:
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (id)replyAttributesForUid:(unint64_t)uid attributeIDs:(id)ds
{
  v5 = [(BTAVRCP_VFSFolder *)self query:uid];
  v6 = [v5 collectionWithUid:uid property:MPMediaItemPropertyPodcastPersistentID];

  if (v6)
  {
    return &__NSDictionary0__struct;
  }

  else
  {
    return 0;
  }
}

- (unsigned)playItemWithUid:(unint64_t)uid
{
  query = [(BTAVRCP_VFSFolder *)self query];
  v5 = [query collectionWithUid:uid property:MPMediaItemPropertyPodcastPersistentID];

  if (v5)
  {
    return 12;
  }

  else
  {
    return 9;
  }
}

@end