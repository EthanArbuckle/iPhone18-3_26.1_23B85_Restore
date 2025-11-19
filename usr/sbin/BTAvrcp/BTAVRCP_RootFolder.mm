@interface BTAVRCP_RootFolder
- (BTAVRCP_RootFolder)init;
- (id)baseQuery;
- (id)replyAttributesForUid:(unint64_t)a3 attributeIDs:(id)a4;
- (id)replyItemAtIndex:(unint64_t)a3 attributeIDs:(id)a4;
- (unsigned)createFolderWithUid:(unint64_t)a3 folder:(id *)a4;
- (unsigned)playItemWithUid:(unint64_t)a3;
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

- (unsigned)createFolderWithUid:(unint64_t)a3 folder:(id *)a4
{
  if (a3 != 1)
  {
    return 9;
  }

  v5 = [BTAVRCP_CategoriesFolder alloc];
  v6 = +[MPMediaLibrary defaultMediaLibrary];
  v7 = [v6 name];
  *a4 = [(BTAVRCP_CategoriesFolder *)v5 initWithName:v7 uid:1];

  return 4;
}

- (id)replyItemAtIndex:(unint64_t)a3 attributeIDs:(id)a4
{
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v6 = [MPMediaLibrary defaultMediaLibrary:0];
    v7 = [v6 name];
    v4 = [(BTAVRCP_VFSFolder *)self replyFolderWithType:0 uid:&off_100019BD0 name:v7];
  }

  return v4;
}

- (id)replyAttributesForUid:(unint64_t)a3 attributeIDs:(id)a4
{
  if (a3 == 1)
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
  if (a3 == 1)
  {
    return 12;
  }

  else
  {
    return 9;
  }
}

@end