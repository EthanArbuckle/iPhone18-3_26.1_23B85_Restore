@interface BTAVRCP_GenresFolder
- (BOOL)showRecentlyAddedFolder;
- (BTAVRCP_GenresFolder)initWithName:(id)name uid:(unint64_t)uid isRecentlyAdded:(BOOL)added;
- (id)baseQuery;
- (id)replyAttributesForUid:(unint64_t)uid attributeIDs:(id)ds;
- (id)replyItemAtIndex:(unint64_t)index attributeIDs:(id)ds;
- (unint64_t)childrenCount;
- (unsigned)createFolderWithUid:(unint64_t)uid folder:(id *)folder;
- (unsigned)playItemWithUid:(unint64_t)uid;
@end

@implementation BTAVRCP_GenresFolder

- (BTAVRCP_GenresFolder)initWithName:(id)name uid:(unint64_t)uid isRecentlyAdded:(BOOL)added
{
  v7.receiver = self;
  v7.super_class = BTAVRCP_GenresFolder;
  result = [(BTAVRCP_VFSFolder *)&v7 initWithName:name uid:uid];
  if (result)
  {
    result->_isRecentlyAdded = added;
  }

  return result;
}

- (BOOL)showRecentlyAddedFolder
{
  if ([(BTAVRCP_GenresFolder *)self isRecentlyAdded])
  {
    return 0;
  }

  query = [(BTAVRCP_VFSFolder *)self query];
  collections = [query collections];
  v3 = [collections count] > 1;

  return v3;
}

- (id)baseQuery
{
  v3 = +[MPMediaQuery genresQuery];
  if ([(BTAVRCP_GenresFolder *)self isRecentlyAdded])
  {
    [v3 setGroupingType:16];
  }

  return v3;
}

- (unint64_t)childrenCount
{
  query = [(BTAVRCP_VFSFolder *)self query];
  collections = [query collections];
  v5 = [collections count];

  return v5 + [(BTAVRCP_GenresFolder *)self showRecentlyAddedFolder];
}

- (unsigned)createFolderWithUid:(unint64_t)uid folder:(id *)folder
{
  if ([(BTAVRCP_VFSFolder *)self uid]== uid && [(BTAVRCP_GenresFolder *)self showRecentlyAddedFolder])
  {
    v7 = [BTAVRCP_GenresFolder alloc];
    recentlyAddedFolderName = [(BTAVRCP_VFSFolder *)self recentlyAddedFolderName];
    *folder = [(BTAVRCP_GenresFolder *)v7 initWithName:recentlyAddedFolderName uid:uid isRecentlyAdded:1];
  }

  else
  {
    query = [(BTAVRCP_VFSFolder *)self query];
    recentlyAddedFolderName = [query collectionWithUid:uid property:MPMediaItemPropertyGenrePersistentID];

    if (!recentlyAddedFolderName)
    {
      v16 = 9;
      goto LABEL_8;
    }

    representativeItem = [recentlyAddedFolderName representativeItem];
    v11 = [representativeItem valueForProperty:MPMediaItemPropertyGenrePersistentID];

    representativeItem2 = [recentlyAddedFolderName representativeItem];
    v13 = [representativeItem2 valueForProperty:MPMediaItemPropertyGenre];

    v14 = -[BTAVRCP_ArtistsFolder initWithName:uid:]([BTAVRCP_ArtistsFolder alloc], "initWithName:uid:", v13, [v11 unsignedLongLongValue]);
    *folder = v14;
    v15 = [MPMediaPropertyPredicate predicateWithValue:v11 forProperty:MPMediaItemPropertyGenrePersistentID];
    [(BTAVRCP_VFSFolder *)v14 storePredicate:v15];
  }

  v16 = 4;
LABEL_8:

  return v16;
}

- (id)replyItemAtIndex:(unint64_t)index attributeIDs:(id)ds
{
  indexCopy = index;
  if ([(BTAVRCP_GenresFolder *)self showRecentlyAddedFolder:index])
  {
    if (!indexCopy)
    {
      v7 = [NSNumber numberWithUnsignedLongLong:[(BTAVRCP_VFSFolder *)self uid]];
      recentlyAddedFolderName = [(BTAVRCP_VFSFolder *)self recentlyAddedFolderName];
      v12 = [(BTAVRCP_VFSFolder *)self replyFolderWithType:4 uid:v7 name:recentlyAddedFolderName];
      goto LABEL_8;
    }

    --indexCopy;
  }

  query = [(BTAVRCP_VFSFolder *)self query];
  v7 = [query collectionAtIndex:indexCopy];

  if (!v7)
  {
    v12 = 0;
    goto LABEL_9;
  }

  recentlyAddedFolderName = [v7 representativeItem];
  v9 = [recentlyAddedFolderName valueForProperty:MPMediaItemPropertyGenrePersistentID];
  representativeItem = [v7 representativeItem];
  v11 = [representativeItem valueForProperty:MPMediaItemPropertyGenre];
  v12 = [(BTAVRCP_VFSFolder *)self replyFolderWithType:3 uid:v9 name:v11];

LABEL_8:
LABEL_9:

  return v12;
}

- (id)replyAttributesForUid:(unint64_t)uid attributeIDs:(id)ds
{
  v5 = [(BTAVRCP_VFSFolder *)self query:uid];
  v6 = [v5 collectionWithUid:uid property:MPMediaItemPropertyGenrePersistentID];

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
  v5 = [query collectionWithUid:uid property:MPMediaItemPropertyGenrePersistentID];

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