@interface BTAVRCP_VFSFolder
- (BTAVRCP_VFSFolder)initWithName:(id)name uid:(unint64_t)uid;
- (MPMediaQuery)query;
- (id)recentlyAddedFolderName;
- (id)replyItemWithUid:(id)uid name:(id)name attributes:(id)attributes;
- (void)storePredicate:(id)predicate;
- (void)storePredicates:(id)predicates;
@end

@implementation BTAVRCP_VFSFolder

- (BTAVRCP_VFSFolder)initWithName:(id)name uid:(unint64_t)uid
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = BTAVRCP_VFSFolder;
  v8 = [(BTAVRCP_VFSFolder *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
    v9->_uid = uid;
    v10 = objc_alloc_init(NSMutableSet);
    storedPredicates = v9->_storedPredicates;
    v9->_storedPredicates = v10;
  }

  return v9;
}

- (MPMediaQuery)query
{
  builtQuery = [(BTAVRCP_VFSFolder *)self builtQuery];

  if (!builtQuery)
  {
    baseQuery = [(BTAVRCP_VFSFolder *)self baseQuery];
    [(BTAVRCP_VFSFolder *)self setBuiltQuery:baseQuery];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    storedPredicates = [(BTAVRCP_VFSFolder *)self storedPredicates];
    v6 = [storedPredicates countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(storedPredicates);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          builtQuery2 = [(BTAVRCP_VFSFolder *)self builtQuery];
          [builtQuery2 addFilterPredicate:v10];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [storedPredicates countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v12 = qword_10001EFD0;
    if (os_log_type_enabled(qword_10001EFD0, OS_LOG_TYPE_DEBUG))
    {
      sub_10000E94C(v12, self);
    }
  }

  builtQuery3 = [(BTAVRCP_VFSFolder *)self builtQuery];

  return builtQuery3;
}

- (void)storePredicates:(id)predicates
{
  predicatesCopy = predicates;
  builtQuery = [(BTAVRCP_VFSFolder *)self builtQuery];

  if (builtQuery)
  {
    sub_10000E9F4(a2, self);
  }

  storedPredicates = [(BTAVRCP_VFSFolder *)self storedPredicates];
  [storedPredicates unionSet:predicatesCopy];
}

- (void)storePredicate:(id)predicate
{
  v4 = [NSSet setWithObject:predicate];
  [(BTAVRCP_VFSFolder *)self storePredicates:v4];
}

- (id)replyItemWithUid:(id)uid name:(id)name attributes:(id)attributes
{
  attributesCopy = attributes;
  v14[0] = @"kIsFolder";
  v14[1] = @"kUid";
  v14[2] = @"kName";
  v15[0] = &__kCFBooleanFalse;
  nameCopy = &stru_100019658;
  if (name)
  {
    nameCopy = name;
  }

  v15[1] = uid;
  v15[2] = nameCopy;
  nameCopy2 = name;
  uidCopy = uid;
  v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

  if (attributesCopy)
  {
    v12 = [v11 mutableCopy];
    [v12 setValue:attributesCopy forKey:@"kAttributes"];

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