@interface BTAVRCP_AudiobooksFolder
- (id)replyAttributesForUid:(unint64_t)uid attributeIDs:(id)ds;
- (id)replyItemAtIndex:(unint64_t)index attributeIDs:(id)ds;
- (unint64_t)childrenCount;
- (unsigned)createFolderWithUid:(unint64_t)uid folder:(id *)folder;
- (unsigned)playItemWithUid:(unint64_t)uid;
@end

@implementation BTAVRCP_AudiobooksFolder

- (unint64_t)childrenCount
{
  query = [(BTAVRCP_VFSFolder *)self query];
  collections = [query collections];
  v4 = [collections count];

  return v4;
}

- (unsigned)createFolderWithUid:(unint64_t)uid folder:(id *)folder
{
  query = [(BTAVRCP_VFSFolder *)self query];
  v7 = [query collectionWithUid:uid property:MPMediaItemPropertyAlbumPersistentID];

  if (v7)
  {
    representativeItem = [v7 representativeItem];
    v9 = [representativeItem valueForProperty:MPMediaItemPropertyAlbumPersistentID];

    representativeItem2 = [v7 representativeItem];
    v11 = [representativeItem2 valueForProperty:MPMediaItemPropertyAlbumTitle];

    v12 = -[BTAVRCP_VFSFolder initWithName:uid:]([BTAVRCP_AudiobookItemsFolder alloc], "initWithName:uid:", v11, [v9 unsignedLongLongValue]);
    *folder = v12;
    v13 = [MPMediaPropertyPredicate predicateWithValue:v9 forProperty:MPMediaItemPropertyAlbumPersistentID];
    [(BTAVRCP_VFSFolder *)v12 storePredicate:v13];

    v14 = 4;
  }

  else
  {
    v14 = 9;
  }

  return v14;
}

- (id)replyItemAtIndex:(unint64_t)index attributeIDs:(id)ds
{
  v6 = [(BTAVRCP_VFSFolder *)self query:index];
  v7 = [v6 collectionAtIndex:index];

  if (v7)
  {
    representativeItem = [v7 representativeItem];
    v9 = [representativeItem valueForProperty:MPMediaItemPropertyAlbumPersistentID];
    representativeItem2 = [v7 representativeItem];
    v11 = [representativeItem2 valueForProperty:MPMediaItemPropertyAlbumTitle];
    v12 = [(BTAVRCP_VFSFolder *)self replyFolderWithType:1 uid:v9 name:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
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