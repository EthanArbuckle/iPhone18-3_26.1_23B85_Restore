@interface BTAVRCP_PodcastsFolder
- (id)replyAttributesForUid:(unint64_t)a3 attributeIDs:(id)a4;
- (id)replyItemAtIndex:(unint64_t)a3 attributeIDs:(id)a4;
- (id)unplayedEpisodesFolderName;
- (unint64_t)childrenCount;
- (unsigned)createFolderWithUid:(unint64_t)a3 folder:(id *)a4;
- (unsigned)playItemWithUid:(unint64_t)a3;
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
  v2 = [(BTAVRCP_VFSFolder *)self query];
  v3 = [v2 collections];
  v4 = [v3 count];

  return v4 + 1;
}

- (unsigned)createFolderWithUid:(unint64_t)a3 folder:(id *)a4
{
  if ([(BTAVRCP_VFSFolder *)self uid]== a3)
  {
    v7 = [BTAVRCP_PodcastItemsFolder alloc];
    v8 = [(BTAVRCP_PodcastsFolder *)self unplayedEpisodesFolderName];
    *a4 = [(BTAVRCP_VFSFolder *)v7 initWithName:v8 uid:a3];

    v9 = *a4;
    v10 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanFalse forProperty:MPMediaItemPropertyHasBeenPlayed];
    [v9 storePredicate:v10];
  }

  else
  {
    v11 = [(BTAVRCP_VFSFolder *)self query];
    v10 = [v11 collectionWithUid:a3 property:MPMediaItemPropertyPodcastPersistentID];

    if (!v10)
    {
      v18 = 9;
      goto LABEL_6;
    }

    v12 = [v10 representativeItem];
    v13 = [v12 valueForProperty:MPMediaItemPropertyPodcastPersistentID];

    v14 = [v10 representativeItem];
    v15 = [v14 valueForProperty:MPMediaItemPropertyPodcastTitle];

    v16 = -[BTAVRCP_VFSFolder initWithName:uid:]([BTAVRCP_PodcastItemsFolder alloc], "initWithName:uid:", v15, [v13 unsignedLongLongValue]);
    *a4 = v16;
    v17 = [MPMediaPropertyPredicate predicateWithValue:v13 forProperty:MPMediaItemPropertyPodcastPersistentID];
    [(BTAVRCP_VFSFolder *)v16 storePredicate:v17];
  }

  v18 = 4;
LABEL_6:

  return v18;
}

- (id)replyItemAtIndex:(unint64_t)a3 attributeIDs:(id)a4
{
  if (!a3)
  {
    v7 = [NSNumber numberWithUnsignedLongLong:[(BTAVRCP_VFSFolder *)self uid:0]];
    v8 = [(BTAVRCP_PodcastsFolder *)self unplayedEpisodesFolderName];
    v12 = [(BTAVRCP_VFSFolder *)self replyFolderWithType:1 uid:v7 name:v8];
    goto LABEL_5;
  }

  v5 = a3 - 1;
  v6 = [(BTAVRCP_VFSFolder *)self query];
  v7 = [v6 collectionAtIndex:v5];

  if (v7)
  {
    v8 = [v7 representativeItem];
    v9 = [v8 valueForProperty:MPMediaItemPropertyPodcastPersistentID];
    v10 = [v7 representativeItem];
    v11 = [v10 valueForProperty:MPMediaItemPropertyPodcastTitle];
    v12 = [(BTAVRCP_VFSFolder *)self replyFolderWithType:1 uid:v9 name:v11];

LABEL_5:
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (id)replyAttributesForUid:(unint64_t)a3 attributeIDs:(id)a4
{
  v5 = [(BTAVRCP_VFSFolder *)self query:a3];
  v6 = [v5 collectionWithUid:a3 property:MPMediaItemPropertyPodcastPersistentID];

  if (v6)
  {
    return &__NSDictionary0__struct;
  }

  else
  {
    return 0;
  }
}

- (unsigned)playItemWithUid:(unint64_t)a3
{
  v4 = [(BTAVRCP_VFSFolder *)self query];
  v5 = [v4 collectionWithUid:a3 property:MPMediaItemPropertyPodcastPersistentID];

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