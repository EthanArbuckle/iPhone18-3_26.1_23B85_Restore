@interface BTAVRCP_AlbumsFolder
- (BOOL)showRecentlyAddedFolder;
- (BTAVRCP_AlbumsFolder)initWithName:(id)name uid:(unint64_t)uid isRecentlyAdded:(BOOL)added;
- (id)albumName:(id)name;
- (id)baseQuery;
- (id)replyAttributesForUid:(unint64_t)uid attributeIDs:(id)ds;
- (id)replyItemAtIndex:(unint64_t)index attributeIDs:(id)ds;
- (unint64_t)childrenCount;
- (unsigned)createFolderWithUid:(unint64_t)uid folder:(id *)folder;
- (unsigned)playItemWithUid:(unint64_t)uid;
@end

@implementation BTAVRCP_AlbumsFolder

- (BTAVRCP_AlbumsFolder)initWithName:(id)name uid:(unint64_t)uid isRecentlyAdded:(BOOL)added
{
  v7.receiver = self;
  v7.super_class = BTAVRCP_AlbumsFolder;
  result = [(BTAVRCP_VFSFolder *)&v7 initWithName:name uid:uid];
  if (result)
  {
    result->_isRecentlyAdded = added;
  }

  return result;
}

- (BOOL)showRecentlyAddedFolder
{
  if ([(BTAVRCP_AlbumsFolder *)self isRecentlyAdded])
  {
    return 0;
  }

  query = [(BTAVRCP_VFSFolder *)self query];
  collections = [query collections];
  v3 = [collections count] > 1;

  return v3;
}

- (id)albumName:(id)name
{
  representativeItem = [name representativeItem];
  v4 = [representativeItem valueForProperty:MPMediaItemPropertyAlbumTitle];

  if (![v4 length])
  {
    v5 = +[NSBundle mobileBluetoothBundle];
    v6 = [v5 localizedStringForKey:@"UNKNOWN_ALBUM" value:@"Unknown Album" table:0];

    v4 = v6;
  }

  return v4;
}

- (id)baseQuery
{
  v3 = +[MPMediaQuery albumsQuery];
  if ([(BTAVRCP_AlbumsFolder *)self isRecentlyAdded])
  {
    [v3 setGroupingType:13];
  }

  return v3;
}

- (unint64_t)childrenCount
{
  query = [(BTAVRCP_VFSFolder *)self query];
  collections = [query collections];
  v5 = [collections count];

  return v5 + [(BTAVRCP_AlbumsFolder *)self showRecentlyAddedFolder];
}

- (unsigned)createFolderWithUid:(unint64_t)uid folder:(id *)folder
{
  if ([(BTAVRCP_VFSFolder *)self uid]== uid && [(BTAVRCP_AlbumsFolder *)self showRecentlyAddedFolder])
  {
    v7 = [BTAVRCP_AlbumsFolder alloc];
    recentlyAddedFolderName = [(BTAVRCP_VFSFolder *)self recentlyAddedFolderName];
    *folder = [(BTAVRCP_AlbumsFolder *)v7 initWithName:recentlyAddedFolderName uid:uid isRecentlyAdded:1];
  }

  else
  {
    query = [(BTAVRCP_VFSFolder *)self query];
    recentlyAddedFolderName = [query collectionWithUid:uid property:MPMediaItemPropertyAlbumPersistentID];

    if (!recentlyAddedFolderName)
    {
      v15 = 9;
      goto LABEL_8;
    }

    representativeItem = [recentlyAddedFolderName representativeItem];
    v11 = [representativeItem valueForProperty:MPMediaItemPropertyAlbumPersistentID];

    v12 = [(BTAVRCP_AlbumsFolder *)self albumName:recentlyAddedFolderName];
    v13 = -[BTAVRCP_VFSFolder initWithName:uid:]([BTAVRCP_AlbumItemsFolder alloc], "initWithName:uid:", v12, [v11 unsignedLongLongValue]);
    *folder = v13;
    v14 = [MPMediaPropertyPredicate predicateWithValue:v11 forProperty:MPMediaItemPropertyAlbumPersistentID];
    [(BTAVRCP_VFSFolder *)v13 storePredicate:v14];
  }

  v15 = 4;
LABEL_8:

  return v15;
}

- (id)replyItemAtIndex:(unint64_t)index attributeIDs:(id)ds
{
  indexCopy = index;
  if ([(BTAVRCP_AlbumsFolder *)self showRecentlyAddedFolder:index])
  {
    if (!indexCopy)
    {
      v7 = [NSNumber numberWithUnsignedLongLong:[(BTAVRCP_VFSFolder *)self uid]];
      recentlyAddedFolderName = [(BTAVRCP_VFSFolder *)self recentlyAddedFolderName];
      v11 = [(BTAVRCP_VFSFolder *)self replyFolderWithType:2 uid:v7 name:recentlyAddedFolderName];
      goto LABEL_8;
    }

    --indexCopy;
  }

  query = [(BTAVRCP_VFSFolder *)self query];
  v7 = [query collectionAtIndex:indexCopy];

  if (!v7)
  {
    v11 = 0;
    goto LABEL_9;
  }

  recentlyAddedFolderName = [v7 representativeItem];
  v9 = [recentlyAddedFolderName valueForProperty:MPMediaItemPropertyAlbumPersistentID];
  v10 = [(BTAVRCP_AlbumsFolder *)self albumName:v7];
  v11 = [(BTAVRCP_VFSFolder *)self replyFolderWithType:1 uid:v9 name:v10];

LABEL_8:
LABEL_9:

  return v11;
}

- (id)replyAttributesForUid:(unint64_t)uid attributeIDs:(id)ds
{
  v5 = [(BTAVRCP_VFSFolder *)self query:uid];
  v6 = [v5 collectionWithUid:uid property:MPMediaItemPropertyAlbumPersistentID];

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
  v5 = [query collectionWithUid:uid property:MPMediaItemPropertyAlbumPersistentID];

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