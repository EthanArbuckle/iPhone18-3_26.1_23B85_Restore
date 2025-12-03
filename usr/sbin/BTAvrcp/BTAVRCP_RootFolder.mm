@interface BTAVRCP_RootFolder
- (BTAVRCP_RootFolder)init;
- (id)baseQuery;
- (id)replyAttributesForUid:(unint64_t)uid attributeIDs:(id)ds;
- (id)replyItemAtIndex:(unint64_t)index attributeIDs:(id)ds;
- (unsigned)createFolderWithUid:(unint64_t)uid folder:(id *)folder;
- (unsigned)playItemWithUid:(unint64_t)uid;
@end

@implementation BTAVRCP_RootFolder

- (BTAVRCP_RootFolder)init
{
  v5.receiver = self;
  v5.super_class = BTAVRCP_RootFolder;
  v2 = [(BTAVRCP_VFSFolder *)&v5 initWithName:0 uid:0];
  if (v2)
  {
    v3 = [MPMediaPropertyPredicate predicateWithValue:&off_100019BB8 forProperty:MPMediaItemPropertyMediaType];
    [(BTAVRCP_VFSFolder *)v2 storePredicate:v3];
  }

  return v2;
}

- (id)baseQuery
{
  v2 = objc_alloc_init(MPMediaQuery);

  return v2;
}

- (unsigned)createFolderWithUid:(unint64_t)uid folder:(id *)folder
{
  if (uid != 1)
  {
    return 9;
  }

  v5 = [BTAVRCP_CategoriesFolder alloc];
  v6 = +[MPMediaLibrary defaultMediaLibrary];
  name = [v6 name];
  *folder = [(BTAVRCP_CategoriesFolder *)v5 initWithName:name uid:1];

  return 4;
}

- (id)replyItemAtIndex:(unint64_t)index attributeIDs:(id)ds
{
  if (index)
  {
    v4 = 0;
  }

  else
  {
    v6 = [MPMediaLibrary defaultMediaLibrary:0];
    name = [v6 name];
    v4 = [(BTAVRCP_VFSFolder *)self replyFolderWithType:0 uid:&off_100019BD0 name:name];
  }

  return v4;
}

- (id)replyAttributesForUid:(unint64_t)uid attributeIDs:(id)ds
{
  if (uid == 1)
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
  if (uid == 1)
  {
    return 12;
  }

  else
  {
    return 9;
  }
}

@end