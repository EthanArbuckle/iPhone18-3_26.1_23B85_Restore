@interface BTAVRCP_AlbumsFolder
- (BOOL)showRecentlyAddedFolder;
- (BTAVRCP_AlbumsFolder)initWithName:(id)a3 uid:(unint64_t)a4 isRecentlyAdded:(BOOL)a5;
- (id)albumName:(id)a3;
- (id)baseQuery;
- (id)replyAttributesForUid:(unint64_t)a3 attributeIDs:(id)a4;
- (id)replyItemAtIndex:(unint64_t)a3 attributeIDs:(id)a4;
- (unint64_t)childrenCount;
- (unsigned)createFolderWithUid:(unint64_t)a3 folder:(id *)a4;
- (unsigned)playItemWithUid:(unint64_t)a3;
@end

@implementation BTAVRCP_AlbumsFolder

- (BTAVRCP_AlbumsFolder)initWithName:(id)a3 uid:(unint64_t)a4 isRecentlyAdded:(BOOL)a5
{
  v7.receiver = self;
  v7.super_class = BTAVRCP_AlbumsFolder;
  result = [(BTAVRCP_VFSFolder *)&v7 initWithName:a3 uid:a4];
  if (result)
  {
    result->_isRecentlyAdded = a5;
  }

  return result;
}

- (BOOL)showRecentlyAddedFolder
{
  if ([(BTAVRCP_AlbumsFolder *)self isRecentlyAdded])
  {
    return 0;
  }

  v4 = [(BTAVRCP_VFSFolder *)self query];
  v5 = [v4 collections];
  v3 = [v5 count] > 1;

  return v3;
}

- (id)albumName:(id)a3
{
  v3 = [a3 representativeItem];
  v4 = [v3 valueForProperty:MPMediaItemPropertyAlbumTitle];

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
  v3 = [(BTAVRCP_VFSFolder *)self query];
  v4 = [v3 collections];
  v5 = [v4 count];

  return v5 + [(BTAVRCP_AlbumsFolder *)self showRecentlyAddedFolder];
}

- (unsigned)createFolderWithUid:(unint64_t)a3 folder:(id *)a4
{
  if ([(BTAVRCP_VFSFolder *)self uid]== a3 && [(BTAVRCP_AlbumsFolder *)self showRecentlyAddedFolder])
  {
    v7 = [BTAVRCP_AlbumsFolder alloc];
    v8 = [(BTAVRCP_VFSFolder *)self recentlyAddedFolderName];
    *a4 = [(BTAVRCP_AlbumsFolder *)v7 initWithName:v8 uid:a3 isRecentlyAdded:1];
  }

  else
  {
    v9 = [(BTAVRCP_VFSFolder *)self query];
    v8 = [v9 collectionWithUid:a3 property:MPMediaItemPropertyAlbumPersistentID];

    if (!v8)
    {
      v15 = 9;
      goto LABEL_8;
    }

    v10 = [v8 representativeItem];
    v11 = [v10 valueForProperty:MPMediaItemPropertyAlbumPersistentID];

    v12 = [(BTAVRCP_AlbumsFolder *)self albumName:v8];
    v13 = -[BTAVRCP_VFSFolder initWithName:uid:]([BTAVRCP_AlbumItemsFolder alloc], "initWithName:uid:", v12, [v11 unsignedLongLongValue]);
    *a4 = v13;
    v14 = [MPMediaPropertyPredicate predicateWithValue:v11 forProperty:MPMediaItemPropertyAlbumPersistentID];
    [(BTAVRCP_VFSFolder *)v13 storePredicate:v14];
  }

  v15 = 4;
LABEL_8:

  return v15;
}

- (id)replyItemAtIndex:(unint64_t)a3 attributeIDs:(id)a4
{
  v4 = a3;
  if ([(BTAVRCP_AlbumsFolder *)self showRecentlyAddedFolder:a3])
  {
    if (!v4)
    {
      v7 = [NSNumber numberWithUnsignedLongLong:[(BTAVRCP_VFSFolder *)self uid]];
      v8 = [(BTAVRCP_VFSFolder *)self recentlyAddedFolderName];
      v11 = [(BTAVRCP_VFSFolder *)self replyFolderWithType:2 uid:v7 name:v8];
      goto LABEL_8;
    }

    --v4;
  }

  v6 = [(BTAVRCP_VFSFolder *)self query];
  v7 = [v6 collectionAtIndex:v4];

  if (!v7)
  {
    v11 = 0;
    goto LABEL_9;
  }

  v8 = [v7 representativeItem];
  v9 = [v8 valueForProperty:MPMediaItemPropertyAlbumPersistentID];
  v10 = [(BTAVRCP_AlbumsFolder *)self albumName:v7];
  v11 = [(BTAVRCP_VFSFolder *)self replyFolderWithType:1 uid:v9 name:v10];

LABEL_8:
LABEL_9:

  return v11;
}

- (id)replyAttributesForUid:(unint64_t)a3 attributeIDs:(id)a4
{
  v5 = [(BTAVRCP_VFSFolder *)self query:a3];
  v6 = [v5 collectionWithUid:a3 property:MPMediaItemPropertyAlbumPersistentID];

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
  v5 = [v4 collectionWithUid:a3 property:MPMediaItemPropertyAlbumPersistentID];

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