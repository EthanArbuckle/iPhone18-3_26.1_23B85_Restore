@interface BTAVRCP_VFSFolder
- (BTAVRCP_VFSFolder)initWithName:(id)a3 uid:(unint64_t)a4;
- (MPMediaQuery)query;
- (id)recentlyAddedFolderName;
- (id)replyItemWithUid:(id)a3 name:(id)a4 attributes:(id)a5;
- (void)storePredicate:(id)a3;
- (void)storePredicates:(id)a3;
@end

@implementation BTAVRCP_VFSFolder

- (BTAVRCP_VFSFolder)initWithName:(id)a3 uid:(unint64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = BTAVRCP_VFSFolder;
  v8 = [(BTAVRCP_VFSFolder *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, a3);
    v9->_uid = a4;
    v10 = objc_alloc_init(NSMutableSet);
    storedPredicates = v9->_storedPredicates;
    v9->_storedPredicates = v10;
  }

  return v9;
}

- (MPMediaQuery)query
{
  v3 = [(BTAVRCP_VFSFolder *)self builtQuery];

  if (!v3)
  {
    v4 = [(BTAVRCP_VFSFolder *)self baseQuery];
    [(BTAVRCP_VFSFolder *)self setBuiltQuery:v4];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(BTAVRCP_VFSFolder *)self storedPredicates];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          v11 = [(BTAVRCP_VFSFolder *)self builtQuery];
          [v11 addFilterPredicate:v10];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v12 = qword_10001EFD0;
    if (os_log_type_enabled(qword_10001EFD0, OS_LOG_TYPE_DEBUG))
    {
      sub_10000E94C(v12, self);
    }
  }

  v13 = [(BTAVRCP_VFSFolder *)self builtQuery];

  return v13;
}

- (void)storePredicates:(id)a3
{
  v5 = a3;
  v6 = [(BTAVRCP_VFSFolder *)self builtQuery];

  if (v6)
  {
    sub_10000E9F4(a2, self);
  }

  v7 = [(BTAVRCP_VFSFolder *)self storedPredicates];
  [v7 unionSet:v5];
}

- (void)storePredicate:(id)a3
{
  v4 = [NSSet setWithObject:a3];
  [(BTAVRCP_VFSFolder *)self storePredicates:v4];
}

- (id)replyItemWithUid:(id)a3 name:(id)a4 attributes:(id)a5
{
  v7 = a5;
  v14[0] = @"kIsFolder";
  v14[1] = @"kUid";
  v14[2] = @"kName";
  v15[0] = &__kCFBooleanFalse;
  v8 = &stru_100019658;
  if (a4)
  {
    v8 = a4;
  }

  v15[1] = a3;
  v15[2] = v8;
  v9 = a4;
  v10 = a3;
  v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

  if (v7)
  {
    v12 = [v11 mutableCopy];
    [v12 setValue:v7 forKey:@"kAttributes"];

    v11 = v12;
  }

  return v11;
}

- (id)recentlyAddedFolderName
{
  v2 = +[NSBundle mobileBluetoothBundle];
  v3 = [v2 localizedStringForKey:@"RECENTLY_ADDED" value:@"Recently Added" table:0];

  return v3;
}

@end