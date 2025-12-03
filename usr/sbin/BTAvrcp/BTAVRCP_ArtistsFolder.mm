@interface BTAVRCP_ArtistsFolder
- (BOOL)artistHasSingleAlbum:(id)album;
- (BOOL)showRecentlyAddedFolder;
- (BTAVRCP_ArtistsFolder)initWithName:(id)name uid:(unint64_t)uid isRecentlyAdded:(BOOL)added;
- (id)artistName:(id)name;
- (id)baseQuery;
- (id)replyAttributesForUid:(unint64_t)uid attributeIDs:(id)ds;
- (id)replyItemAtIndex:(unint64_t)index attributeIDs:(id)ds;
- (unint64_t)childrenCount;
- (unsigned)createFolderWithUid:(unint64_t)uid folder:(id *)folder;
- (unsigned)playItemWithUid:(unint64_t)uid;
@end

@implementation BTAVRCP_ArtistsFolder

- (BTAVRCP_ArtistsFolder)initWithName:(id)name uid:(unint64_t)uid isRecentlyAdded:(BOOL)added
{
  v7.receiver = self;
  v7.super_class = BTAVRCP_ArtistsFolder;
  result = [(BTAVRCP_VFSFolder *)&v7 initWithName:name uid:uid];
  if (result)
  {
    result->_isRecentlyAdded = added;
  }

  return result;
}

- (BOOL)showRecentlyAddedFolder
{
  if ([(BTAVRCP_ArtistsFolder *)self isRecentlyAdded])
  {
    return 0;
  }

  query = [(BTAVRCP_VFSFolder *)self query];
  collections = [query collections];
  v3 = [collections count] > 1;

  return v3;
}

- (BOOL)artistHasSingleAlbum:(id)album
{
  v3 = [album valueForProperty:MPMediaItemCollectionPropertyAlbumCount];
  v4 = [v3 unsignedIntegerValue] < 2;

  return v4;
}

- (id)artistName:(id)name
{
  representativeItem = [name representativeItem];
  effectiveAlbumArtist = [representativeItem effectiveAlbumArtist];

  if (![effectiveAlbumArtist length])
  {
    v5 = +[NSBundle mobileBluetoothBundle];
    v6 = [v5 localizedStringForKey:@"UNKNOWN_ARTIST" value:@"Unknown Artist" table:0];

    effectiveAlbumArtist = v6;
  }

  return effectiveAlbumArtist;
}

- (id)baseQuery
{
  v3 = +[MPMediaQuery artistsQuery];
  if ([(BTAVRCP_ArtistsFolder *)self isRecentlyAdded])
  {
    v4 = 14;
  }

  else
  {
    v4 = 3;
  }

  [v3 setGroupingType:v4];

  return v3;
}

- (unint64_t)childrenCount
{
  query = [(BTAVRCP_VFSFolder *)self query];
  collections = [query collections];
  v5 = [collections count];

  return v5 + [(BTAVRCP_ArtistsFolder *)self showRecentlyAddedFolder];
}

- (unsigned)createFolderWithUid:(unint64_t)uid folder:(id *)folder
{
  if ([(BTAVRCP_VFSFolder *)self uid]== uid && [(BTAVRCP_ArtistsFolder *)self showRecentlyAddedFolder])
  {
    v7 = [BTAVRCP_ArtistsFolder alloc];
    recentlyAddedFolderName = [(BTAVRCP_VFSFolder *)self recentlyAddedFolderName];
    *folder = [(BTAVRCP_ArtistsFolder *)v7 initWithName:recentlyAddedFolderName uid:uid isRecentlyAdded:1];
LABEL_10:
    v17 = 4;
    goto LABEL_11;
  }

  query = [(BTAVRCP_VFSFolder *)self query];
  recentlyAddedFolderName = [query collectionWithUid:uid property:MPMediaItemPropertyAlbumArtistPersistentID];

  if (recentlyAddedFolderName)
  {
    representativeItem = [recentlyAddedFolderName representativeItem];
    v11 = [representativeItem valueForProperty:MPMediaItemPropertyAlbumArtistPersistentID];

    v12 = [(BTAVRCP_ArtistsFolder *)self artistName:recentlyAddedFolderName];
    if ([(BTAVRCP_ArtistsFolder *)self artistHasSingleAlbum:recentlyAddedFolderName])
    {
      v13 = -[BTAVRCP_VFSFolder initWithName:uid:]([BTAVRCP_AlbumItemsFolder alloc], "initWithName:uid:", v12, [v11 unsignedLongLongValue]);
      *folder = v13;
      representativeItem2 = [recentlyAddedFolderName representativeItem];
      v15 = [representativeItem2 predicateForProperty:MPMediaItemPropertyAlbumPersistentID];
      [(BTAVRCP_VFSFolder *)v13 storePredicate:v15];

      v16 = *folder;
    }

    else
    {
      v16 = -[BTAVRCP_AlbumsFolder initWithName:uid:]([BTAVRCP_AlbumsFolder alloc], "initWithName:uid:", v12, [v11 unsignedLongLongValue]);
      *folder = v16;
    }

    v18 = [MPMediaPropertyPredicate predicateWithValue:v11 forProperty:MPMediaItemPropertyAlbumArtistPersistentID];
    [(BTAVRCP_VFSFolder *)v16 storePredicate:v18];

    goto LABEL_10;
  }

  v17 = 9;
LABEL_11:

  return v17;
}

- (id)replyItemAtIndex:(unint64_t)index attributeIDs:(id)ds
{
  indexCopy = index;
  if ([(BTAVRCP_ArtistsFolder *)self showRecentlyAddedFolder:index])
  {
    if (!indexCopy)
    {
      v7 = [NSNumber numberWithUnsignedLongLong:[(BTAVRCP_VFSFolder *)self uid]];
      recentlyAddedFolderName = [(BTAVRCP_VFSFolder *)self recentlyAddedFolderName];
      v13 = [(BTAVRCP_VFSFolder *)self replyFolderWithType:3 uid:v7 name:recentlyAddedFolderName];
      goto LABEL_11;
    }

    --indexCopy;
  }

  query = [(BTAVRCP_VFSFolder *)self query];
  v7 = [query collectionAtIndex:indexCopy];

  if (!v7)
  {
    v13 = 0;
    goto LABEL_12;
  }

  v8 = [(BTAVRCP_ArtistsFolder *)self artistHasSingleAlbum:v7];
  recentlyAddedFolderName = [v7 representativeItem];
  v10 = [recentlyAddedFolderName valueForProperty:MPMediaItemPropertyAlbumArtistPersistentID];
  v11 = [(BTAVRCP_ArtistsFolder *)self artistName:v7];
  if (v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v13 = [(BTAVRCP_VFSFolder *)self replyFolderWithType:v12 uid:v10 name:v11];

LABEL_11:
LABEL_12:

  return v13;
}

- (id)replyAttributesForUid:(unint64_t)uid attributeIDs:(id)ds
{
  v5 = [(BTAVRCP_VFSFolder *)self query:uid];
  v6 = [v5 collectionWithUid:uid property:MPMediaItemPropertyAlbumArtistPersistentID];

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
  v5 = [query collectionWithUid:uid property:MPMediaItemPropertyAlbumArtistPersistentID];

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