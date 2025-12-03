@interface BTAVRCP_ComposersFolder
- (BOOL)composerHasSingleAlbum:(id)album;
- (BOOL)showRecentlyAddedFolder;
- (BTAVRCP_ComposersFolder)initWithName:(id)name uid:(unint64_t)uid isRecentlyAdded:(BOOL)added;
- (id)baseQuery;
- (id)replyAttributesForUid:(unint64_t)uid attributeIDs:(id)ds;
- (id)replyItemAtIndex:(unint64_t)index attributeIDs:(id)ds;
- (unint64_t)childrenCount;
- (unsigned)createFolderWithUid:(unint64_t)uid folder:(id *)folder;
- (unsigned)playItemWithUid:(unint64_t)uid;
@end

@implementation BTAVRCP_ComposersFolder

- (BTAVRCP_ComposersFolder)initWithName:(id)name uid:(unint64_t)uid isRecentlyAdded:(BOOL)added
{
  v7.receiver = self;
  v7.super_class = BTAVRCP_ComposersFolder;
  result = [(BTAVRCP_VFSFolder *)&v7 initWithName:name uid:uid];
  if (result)
  {
    result->_isRecentlyAdded = added;
  }

  return result;
}

- (BOOL)showRecentlyAddedFolder
{
  if ([(BTAVRCP_ComposersFolder *)self isRecentlyAdded])
  {
    return 0;
  }

  query = [(BTAVRCP_VFSFolder *)self query];
  collections = [query collections];
  v3 = [collections count] > 1;

  return v3;
}

- (BOOL)composerHasSingleAlbum:(id)album
{
  v3 = [album valueForProperty:MPMediaItemCollectionPropertyAlbumCount];
  v4 = [v3 unsignedIntegerValue] < 2;

  return v4;
}

- (id)baseQuery
{
  v3 = +[MPMediaQuery composersQuery];
  if ([(BTAVRCP_ComposersFolder *)self isRecentlyAdded])
  {
    [v3 setGroupingType:15];
  }

  return v3;
}

- (unint64_t)childrenCount
{
  query = [(BTAVRCP_VFSFolder *)self query];
  collections = [query collections];
  v5 = [collections count];

  return v5 + [(BTAVRCP_ComposersFolder *)self showRecentlyAddedFolder];
}

- (unsigned)createFolderWithUid:(unint64_t)uid folder:(id *)folder
{
  if ([(BTAVRCP_VFSFolder *)self uid]== uid && [(BTAVRCP_ComposersFolder *)self showRecentlyAddedFolder])
  {
    v7 = [BTAVRCP_ComposersFolder alloc];
    recentlyAddedFolderName = [(BTAVRCP_VFSFolder *)self recentlyAddedFolderName];
    *folder = [(BTAVRCP_ComposersFolder *)v7 initWithName:recentlyAddedFolderName uid:uid isRecentlyAdded:1];
LABEL_10:
    v18 = 4;
    goto LABEL_11;
  }

  query = [(BTAVRCP_VFSFolder *)self query];
  recentlyAddedFolderName = [query collectionWithUid:uid property:MPMediaItemPropertyComposerPersistentID];

  if (recentlyAddedFolderName)
  {
    representativeItem = [recentlyAddedFolderName representativeItem];
    v11 = [representativeItem valueForProperty:MPMediaItemPropertyComposerPersistentID];

    representativeItem2 = [recentlyAddedFolderName representativeItem];
    v13 = [representativeItem2 valueForProperty:MPMediaItemPropertyComposer];

    if ([(BTAVRCP_ComposersFolder *)self composerHasSingleAlbum:recentlyAddedFolderName])
    {
      v14 = -[BTAVRCP_VFSFolder initWithName:uid:]([BTAVRCP_AlbumItemsFolder alloc], "initWithName:uid:", v13, [v11 unsignedLongLongValue]);
      *folder = v14;
      representativeItem3 = [recentlyAddedFolderName representativeItem];
      v16 = [representativeItem3 predicateForProperty:MPMediaItemPropertyAlbumPersistentID];
      [(BTAVRCP_VFSFolder *)v14 storePredicate:v16];

      v17 = *folder;
    }

    else
    {
      v17 = -[BTAVRCP_AlbumsFolder initWithName:uid:]([BTAVRCP_AlbumsFolder alloc], "initWithName:uid:", v13, [v11 unsignedLongLongValue]);
      *folder = v17;
    }

    v19 = [MPMediaPropertyPredicate predicateWithValue:v11 forProperty:MPMediaItemPropertyComposerPersistentID];
    [(BTAVRCP_VFSFolder *)v17 storePredicate:v19];

    goto LABEL_10;
  }

  v18 = 9;
LABEL_11:

  return v18;
}

- (id)replyItemAtIndex:(unint64_t)index attributeIDs:(id)ds
{
  indexCopy = index;
  if ([(BTAVRCP_ComposersFolder *)self showRecentlyAddedFolder:index])
  {
    if (!indexCopy)
    {
      v7 = [NSNumber numberWithUnsignedLongLong:[(BTAVRCP_VFSFolder *)self uid]];
      recentlyAddedFolderName = [(BTAVRCP_VFSFolder *)self recentlyAddedFolderName];
      v14 = [(BTAVRCP_VFSFolder *)self replyFolderWithType:3 uid:v7 name:recentlyAddedFolderName];
      goto LABEL_11;
    }

    --indexCopy;
  }

  query = [(BTAVRCP_VFSFolder *)self query];
  v7 = [query collectionAtIndex:indexCopy];

  if (!v7)
  {
    v14 = 0;
    goto LABEL_12;
  }

  v8 = [(BTAVRCP_ComposersFolder *)self composerHasSingleAlbum:v7];
  recentlyAddedFolderName = [v7 representativeItem];
  v10 = [recentlyAddedFolderName valueForProperty:MPMediaItemPropertyComposerPersistentID];
  representativeItem = [v7 representativeItem];
  v12 = [representativeItem valueForProperty:MPMediaItemPropertyComposer];
  if (v8)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v14 = [(BTAVRCP_VFSFolder *)self replyFolderWithType:v13 uid:v10 name:v12];

LABEL_11:
LABEL_12:

  return v14;
}

- (id)replyAttributesForUid:(unint64_t)uid attributeIDs:(id)ds
{
  v5 = [(BTAVRCP_VFSFolder *)self query:uid];
  v6 = [v5 collectionWithUid:uid property:MPMediaItemPropertyComposerPersistentID];

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
  v5 = [query collectionWithUid:uid property:MPMediaItemPropertyComposerPersistentID];

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