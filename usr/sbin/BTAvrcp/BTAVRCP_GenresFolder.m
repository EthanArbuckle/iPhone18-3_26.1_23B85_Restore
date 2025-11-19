@interface BTAVRCP_GenresFolder
- (BOOL)showRecentlyAddedFolder;
- (BTAVRCP_GenresFolder)initWithName:(id)a3 uid:(unint64_t)a4 isRecentlyAdded:(BOOL)a5;
- (id)baseQuery;
- (id)replyAttributesForUid:(unint64_t)a3 attributeIDs:(id)a4;
- (id)replyItemAtIndex:(unint64_t)a3 attributeIDs:(id)a4;
- (unint64_t)childrenCount;
- (unsigned)createFolderWithUid:(unint64_t)a3 folder:(id *)a4;
- (unsigned)playItemWithUid:(unint64_t)a3;
@end

@implementation BTAVRCP_GenresFolder

- (BTAVRCP_GenresFolder)initWithName:(id)a3 uid:(unint64_t)a4 isRecentlyAdded:(BOOL)a5
{
  v7.receiver = self;
  v7.super_class = BTAVRCP_GenresFolder;
  result = [(BTAVRCP_VFSFolder *)&v7 initWithName:a3 uid:a4];
  if (result)
  {
    result->_isRecentlyAdded = a5;
  }

  return result;
}

- (BOOL)showRecentlyAddedFolder
{
  if ([(BTAVRCP_GenresFolder *)self isRecentlyAdded])
  {
    return 0;
  }

  v4 = [(BTAVRCP_VFSFolder *)self query];
  v5 = [v4 collections];
  v3 = [v5 count] > 1;

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
  v3 = [(BTAVRCP_VFSFolder *)self query];
  v4 = [v3 collections];
  v5 = [v4 count];

  return v5 + [(BTAVRCP_GenresFolder *)self showRecentlyAddedFolder];
}

- (unsigned)createFolderWithUid:(unint64_t)a3 folder:(id *)a4
{
  if ([(BTAVRCP_VFSFolder *)self uid]== a3 && [(BTAVRCP_GenresFolder *)self showRecentlyAddedFolder])
  {
    v7 = [BTAVRCP_GenresFolder alloc];
    v8 = [(BTAVRCP_VFSFolder *)self recentlyAddedFolderName];
    *a4 = [(BTAVRCP_GenresFolder *)v7 initWithName:v8 uid:a3 isRecentlyAdded:1];
  }

  else
  {
    v9 = [(BTAVRCP_VFSFolder *)self query];
    v8 = [v9 collectionWithUid:a3 property:MPMediaItemPropertyGenrePersistentID];

    if (!v8)
    {
      v16 = 9;
      goto LABEL_8;
    }

    v10 = [v8 representativeItem];
    v11 = [v10 valueForProperty:MPMediaItemPropertyGenrePersistentID];

    v12 = [v8 representativeItem];
    v13 = [v12 valueForProperty:MPMediaItemPropertyGenre];

    v14 = -[BTAVRCP_ArtistsFolder initWithName:uid:]([BTAVRCP_ArtistsFolder alloc], "initWithName:uid:", v13, [v11 unsignedLongLongValue]);
    *a4 = v14;
    v15 = [MPMediaPropertyPredicate predicateWithValue:v11 forProperty:MPMediaItemPropertyGenrePersistentID];
    [(BTAVRCP_VFSFolder *)v14 storePredicate:v15];
  }

  v16 = 4;
LABEL_8:

  return v16;
}

- (id)replyItemAtIndex:(unint64_t)a3 attributeIDs:(id)a4
{
  v4 = a3;
  if ([(BTAVRCP_GenresFolder *)self showRecentlyAddedFolder:a3])
  {
    if (!v4)
    {
      v7 = [NSNumber numberWithUnsignedLongLong:[(BTAVRCP_VFSFolder *)self uid]];
      v8 = [(BTAVRCP_VFSFolder *)self recentlyAddedFolderName];
      v12 = [(BTAVRCP_VFSFolder *)self replyFolderWithType:4 uid:v7 name:v8];
      goto LABEL_8;
    }

    --v4;
  }

  v6 = [(BTAVRCP_VFSFolder *)self query];
  v7 = [v6 collectionAtIndex:v4];

  if (!v7)
  {
    v12 = 0;
    goto LABEL_9;
  }

  v8 = [v7 representativeItem];
  v9 = [v8 valueForProperty:MPMediaItemPropertyGenrePersistentID];
  v10 = [v7 representativeItem];
  v11 = [v10 valueForProperty:MPMediaItemPropertyGenre];
  v12 = [(BTAVRCP_VFSFolder *)self replyFolderWithType:3 uid:v9 name:v11];

LABEL_8:
LABEL_9:

  return v12;
}

- (id)replyAttributesForUid:(unint64_t)a3 attributeIDs:(id)a4
{
  v5 = [(BTAVRCP_VFSFolder *)self query:a3];
  v6 = [v5 collectionWithUid:a3 property:MPMediaItemPropertyGenrePersistentID];

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
  v5 = [v4 collectionWithUid:a3 property:MPMediaItemPropertyGenrePersistentID];

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