@interface KCSharingOutgoingChangesetCursor
- (BOOL)isEqual:(id)equal;
- (KCSharingOutgoingChangesetCursor)initWithCoder:(id)coder;
- (KCSharingOutgoingChangesetCursor)initWithDatabaseScope:(int64_t)scope desiredZoneIDs:(id)ds;
- (KCSharingOutgoingChangesetCursor)initWithDatabaseScope:(int64_t)scope keyset:(id)keyset fetchBehavior:(int64_t)behavior;
- (id)copyWithDesiredZoneIDs:(id)ds;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KCSharingOutgoingChangesetCursor

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [NSNumber numberWithInteger:[(KCSharingOutgoingChangesetCursor *)self databaseScope]];
  [coderCopy encodeObject:v5 forKey:@"dbScope"];

  keyset = [(KCSharingOutgoingChangesetCursor *)self keyset];
  [coderCopy encodeObject:keyset forKey:@"keyset"];

  v7 = [NSNumber numberWithInteger:[(KCSharingOutgoingChangesetCursor *)self fetchBehavior]];
  [coderCopy encodeObject:v7 forKey:@"fetchBehavior"];
}

- (KCSharingOutgoingChangesetCursor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dbScope"];
  intValue = [v5 intValue];

  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v7, v8, objc_opt_class(), 0];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"keyset"];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fetchBehavior"];

  intValue2 = [v11 intValue];
  if (v10 && intValue - 4 >= 0xFFFFFFFD && intValue2 - 3 > 0xFFFFFFFD)
  {
    self = [(KCSharingOutgoingChangesetCursor *)self initWithDatabaseScope:intValue keyset:v10 fetchBehavior:intValue2];
    selfCopy = self;
  }

  else
  {
    v14 = KCSharingLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Cursor failed to decode properly", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = KCSharingOutgoingChangesetCursor;
  v3 = [(KCSharingOutgoingChangesetCursor *)&v8 description];
  [(KCSharingOutgoingChangesetCursor *)self databaseScope];
  v4 = CKDatabaseScopeString();
  keyset = [(KCSharingOutgoingChangesetCursor *)self keyset];
  v6 = [NSString stringWithFormat:@"(%@, scope: %@, keyset: %@, fetchBehavior: %ld)", v3, v4, keyset, [(KCSharingOutgoingChangesetCursor *)self fetchBehavior]];

  return v6;
}

- (id)copyWithDesiredZoneIDs:(id)ds
{
  dsCopy = ds;
  v5 = dsCopy;
  if (dsCopy)
  {
    v6 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [dsCopy count]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          keyset = [(KCSharingOutgoingChangesetCursor *)self keyset];
          v14 = [keyset objectForKeyedSubscript:v12];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = &stru_100348050;
          }

          [v6 setObject:v16 forKeyedSubscript:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    v17 = [objc_alloc(objc_opt_class()) initWithDatabaseScope:-[KCSharingOutgoingChangesetCursor databaseScope](self keyset:"databaseScope") fetchBehavior:{v6, 2}];
    v5 = v22;
  }

  else
  {
    v18 = objc_alloc(objc_opt_class());
    databaseScope = [(KCSharingOutgoingChangesetCursor *)self databaseScope];
    keyset2 = [(KCSharingOutgoingChangesetCursor *)self keyset];
    v17 = [v18 initWithDatabaseScope:databaseScope keyset:keyset2 fetchBehavior:1];
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else if ([(KCSharingOutgoingChangesetCursor *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    databaseScope = [(KCSharingOutgoingChangesetCursor *)self databaseScope];
    if (databaseScope == [(KCSharingOutgoingChangesetCursor *)v5 databaseScope])
    {
      keyset = [(KCSharingOutgoingChangesetCursor *)self keyset];
      keyset2 = [(KCSharingOutgoingChangesetCursor *)v5 keyset];
      if ([keyset isEqualToDictionary:keyset2])
      {
        fetchBehavior = [(KCSharingOutgoingChangesetCursor *)self fetchBehavior];
        v10 = fetchBehavior == [(KCSharingOutgoingChangesetCursor *)v5 fetchBehavior];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  databaseScope = [(KCSharingOutgoingChangesetCursor *)self databaseScope];
  keyset = [(KCSharingOutgoingChangesetCursor *)self keyset];
  v5 = [keyset hash] + 32 * databaseScope - databaseScope;

  return [(KCSharingOutgoingChangesetCursor *)self fetchBehavior]- v5 + 32 * v5;
}

- (KCSharingOutgoingChangesetCursor)initWithDatabaseScope:(int64_t)scope keyset:(id)keyset fetchBehavior:(int64_t)behavior
{
  keysetCopy = keyset;
  v14.receiver = self;
  v14.super_class = KCSharingOutgoingChangesetCursor;
  v9 = [(KCSharingOutgoingChangesetCursor *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_databaseScope = scope;
    v11 = [keysetCopy copy];
    keyset = v10->_keyset;
    v10->_keyset = v11;

    v10->_fetchBehavior = behavior;
  }

  return v10;
}

- (KCSharingOutgoingChangesetCursor)initWithDatabaseScope:(int64_t)scope desiredZoneIDs:(id)ds
{
  dsCopy = ds;
  if (dsCopy)
  {
    v7 = +[NSMutableDictionary dictionary];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = dsCopy;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 setObject:&stru_100348050 forKeyedSubscript:{*(*(&v15 + 1) + 8 * i), v15}];
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    v13 = [(KCSharingOutgoingChangesetCursor *)self initWithDatabaseScope:scope keyset:v7 fetchBehavior:2];
  }

  else
  {
    v13 = [(KCSharingOutgoingChangesetCursor *)self initWithDatabaseScope:scope keyset:&__NSDictionary0__struct fetchBehavior:1];
  }

  return v13;
}

@end