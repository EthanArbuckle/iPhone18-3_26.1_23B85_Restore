@interface BTAVRCP_PlaylistsFolder
- (BOOL)playlistIsFolder:(id)folder;
- (BOOL)showRecentlyAddedFolder;
- (BTAVRCP_PlaylistsFolder)initWithName:(id)name uid:(unint64_t)uid parentPlaylistID:(id)d isRecentlyAdded:(BOOL)added;
- (id)baseQuery;
- (id)replyAttributesForUid:(unint64_t)uid attributeIDs:(id)ds;
- (id)replyItemAtIndex:(unint64_t)index attributeIDs:(id)ds;
- (unint64_t)childrenCount;
- (unsigned)createFolderWithUid:(unint64_t)uid folder:(id *)folder;
- (unsigned)playItemWithUid:(unint64_t)uid;
@end

@implementation BTAVRCP_PlaylistsFolder

- (BTAVRCP_PlaylistsFolder)initWithName:(id)name uid:(unint64_t)uid parentPlaylistID:(id)d isRecentlyAdded:(BOOL)added
{
  dCopy = d;
  v15.receiver = self;
  v15.super_class = BTAVRCP_PlaylistsFolder;
  v12 = [(BTAVRCP_VFSFolder *)&v15 initWithName:name uid:uid];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_parentPlaylistID, d);
    v13->_isRecentlyAdded = added;
  }

  return v13;
}

- (BOOL)showRecentlyAddedFolder
{
  if ([(BTAVRCP_PlaylistsFolder *)self isRecentlyAdded])
  {
    return 0;
  }

  parentPlaylistID = [(BTAVRCP_PlaylistsFolder *)self parentPlaylistID];
  if ([parentPlaylistID isEqualToNumber:&off_100019BA0])
  {
    query = [(BTAVRCP_VFSFolder *)self query];
    collections = [query collections];
    v3 = [collections count] > 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)playlistIsFolder:(id)folder
{
  v3 = [folder valueForProperty:MPMediaPlaylistPropertyIsFolder];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)baseQuery
{
  if ([(BTAVRCP_PlaylistsFolder *)self isRecentlyAdded])
  {
    v3 = +[MPMediaQuery playlistsRecentlyAddedQuery];
  }

  else
  {
    v3 = +[MPMediaQuery playlistsQuery];
    parentPlaylistID = [(BTAVRCP_PlaylistsFolder *)self parentPlaylistID];
    v5 = [MPMediaPropertyPredicate predicateWithValue:parentPlaylistID forProperty:MPMediaPlaylistPropertyParentPersistentID];
    [v3 addFilterPredicate:v5];
  }

  return v3;
}

- (unint64_t)childrenCount
{
  query = [(BTAVRCP_VFSFolder *)self query];
  collections = [query collections];
  v5 = [collections count];

  return v5 + [(BTAVRCP_PlaylistsFolder *)self showRecentlyAddedFolder];
}

- (unsigned)createFolderWithUid:(unint64_t)uid folder:(id *)folder
{
  if ([(BTAVRCP_VFSFolder *)self uid]== uid && [(BTAVRCP_PlaylistsFolder *)self showRecentlyAddedFolder])
  {
    v7 = [BTAVRCP_PlaylistsFolder alloc];
    recentlyAddedFolderName = [(BTAVRCP_VFSFolder *)self recentlyAddedFolderName];
    parentPlaylistID = [(BTAVRCP_PlaylistsFolder *)self parentPlaylistID];
    *folder = [(BTAVRCP_PlaylistsFolder *)v7 initWithName:recentlyAddedFolderName uid:uid parentPlaylistID:parentPlaylistID isRecentlyAdded:1];
LABEL_10:

    v12 = 4;
    goto LABEL_11;
  }

  query = [(BTAVRCP_VFSFolder *)self query];
  recentlyAddedFolderName = [query collectionWithUid:uid property:MPMediaPlaylistPropertyPersistentID];

  if (recentlyAddedFolderName)
  {
    parentPlaylistID = [recentlyAddedFolderName valueForProperty:MPMediaPlaylistPropertyPersistentID];
    v11 = [recentlyAddedFolderName valueForProperty:MPMediaPlaylistPropertyName];
    if ([(BTAVRCP_PlaylistsFolder *)self playlistIsFolder:recentlyAddedFolderName])
    {
      *folder = -[BTAVRCP_PlaylistsFolder initWithName:uid:parentPlaylistID:isRecentlyAdded:]([BTAVRCP_PlaylistsFolder alloc], "initWithName:uid:parentPlaylistID:isRecentlyAdded:", v11, [parentPlaylistID unsignedLongLongValue], parentPlaylistID, 0);
    }

    else
    {
      v13 = -[BTAVRCP_VFSFolder initWithName:uid:]([BTAVRCP_PlaylistItemsFolder alloc], "initWithName:uid:", v11, [parentPlaylistID unsignedLongLongValue]);
      *folder = v13;
      v14 = [MPMediaPropertyPredicate predicateWithValue:parentPlaylistID forProperty:MPMediaPlaylistPropertyPersistentID];
      [(BTAVRCP_VFSFolder *)v13 storePredicate:v14];
    }

    goto LABEL_10;
  }

  v12 = 9;
LABEL_11:

  return v12;
}

- (id)replyItemAtIndex:(unint64_t)index attributeIDs:(id)ds
{
  indexCopy = index;
  if ([(BTAVRCP_PlaylistsFolder *)self showRecentlyAddedFolder:index])
  {
    if (!indexCopy)
    {
      v7 = [NSNumber numberWithUnsignedLongLong:[(BTAVRCP_VFSFolder *)self uid]];
      recentlyAddedFolderName = [(BTAVRCP_VFSFolder *)self recentlyAddedFolderName];
      v12 = [(BTAVRCP_VFSFolder *)self replyFolderWithType:5 uid:v7 name:recentlyAddedFolderName];
      goto LABEL_11;
    }

    --indexCopy;
  }

  query = [(BTAVRCP_VFSFolder *)self query];
  v7 = [query collectionAtIndex:indexCopy];

  if (!v7)
  {
    v12 = 0;
    goto LABEL_12;
  }

  v8 = [(BTAVRCP_PlaylistsFolder *)self playlistIsFolder:v7];
  recentlyAddedFolderName = [v7 valueForProperty:MPMediaPlaylistPropertyPersistentID];
  v10 = [v7 valueForProperty:MPMediaPlaylistPropertyName];
  if (v8)
  {
    v11 = 5;
  }

  else
  {
    v11 = 1;
  }

  v12 = [(BTAVRCP_VFSFolder *)self replyFolderWithType:v11 uid:recentlyAddedFolderName name:v10];

LABEL_11:
LABEL_12:

  return v12;
}

- (id)replyAttributesForUid:(unint64_t)uid attributeIDs:(id)ds
{
  v5 = [(BTAVRCP_VFSFolder *)self query:uid];
  v6 = [v5 collectionWithUid:uid property:MPMediaPlaylistPropertyPersistentID];

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
  v5 = [query collectionWithUid:uid property:MPMediaPlaylistPropertyPersistentID];

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