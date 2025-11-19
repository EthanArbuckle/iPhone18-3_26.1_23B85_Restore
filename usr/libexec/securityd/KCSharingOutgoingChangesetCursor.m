@interface KCSharingOutgoingChangesetCursor
- (BOOL)isEqual:(id)a3;
- (KCSharingOutgoingChangesetCursor)initWithCoder:(id)a3;
- (KCSharingOutgoingChangesetCursor)initWithDatabaseScope:(int64_t)a3 desiredZoneIDs:(id)a4;
- (KCSharingOutgoingChangesetCursor)initWithDatabaseScope:(int64_t)a3 keyset:(id)a4 fetchBehavior:(int64_t)a5;
- (id)copyWithDesiredZoneIDs:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KCSharingOutgoingChangesetCursor

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [NSNumber numberWithInteger:[(KCSharingOutgoingChangesetCursor *)self databaseScope]];
  [v4 encodeObject:v5 forKey:@"dbScope"];

  v6 = [(KCSharingOutgoingChangesetCursor *)self keyset];
  [v4 encodeObject:v6 forKey:@"keyset"];

  v7 = [NSNumber numberWithInteger:[(KCSharingOutgoingChangesetCursor *)self fetchBehavior]];
  [v4 encodeObject:v7 forKey:@"fetchBehavior"];
}

- (KCSharingOutgoingChangesetCursor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dbScope"];
  v6 = [v5 intValue];

  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v7, v8, objc_opt_class(), 0];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"keyset"];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fetchBehavior"];

  v12 = [v11 intValue];
  if (v10 && v6 - 4 >= 0xFFFFFFFD && v12 - 3 > 0xFFFFFFFD)
  {
    self = [(KCSharingOutgoingChangesetCursor *)self initWithDatabaseScope:v6 keyset:v10 fetchBehavior:v12];
    v13 = self;
  }

  else
  {
    v14 = KCSharingLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Cursor failed to decode properly", buf, 2u);
    }

    v13 = 0;
  }

  return v13;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = KCSharingOutgoingChangesetCursor;
  v3 = [(KCSharingOutgoingChangesetCursor *)&v8 description];
  [(KCSharingOutgoingChangesetCursor *)self databaseScope];
  v4 = CKDatabaseScopeString();
  v5 = [(KCSharingOutgoingChangesetCursor *)self keyset];
  v6 = [NSString stringWithFormat:@"(%@, scope: %@, keyset: %@, fetchBehavior: %ld)", v3, v4, v5, [(KCSharingOutgoingChangesetCursor *)self fetchBehavior]];

  return v6;
}

- (id)copyWithDesiredZoneIDs:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
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
          v13 = [(KCSharingOutgoingChangesetCursor *)self keyset];
          v14 = [v13 objectForKeyedSubscript:v12];
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
    v19 = [(KCSharingOutgoingChangesetCursor *)self databaseScope];
    v20 = [(KCSharingOutgoingChangesetCursor *)self keyset];
    v17 = [v18 initWithDatabaseScope:v19 keyset:v20 fetchBehavior:1];
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else if ([(KCSharingOutgoingChangesetCursor *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(KCSharingOutgoingChangesetCursor *)self databaseScope];
    if (v6 == [(KCSharingOutgoingChangesetCursor *)v5 databaseScope])
    {
      v7 = [(KCSharingOutgoingChangesetCursor *)self keyset];
      v8 = [(KCSharingOutgoingChangesetCursor *)v5 keyset];
      if ([v7 isEqualToDictionary:v8])
      {
        v9 = [(KCSharingOutgoingChangesetCursor *)self fetchBehavior];
        v10 = v9 == [(KCSharingOutgoingChangesetCursor *)v5 fetchBehavior];
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
  v3 = [(KCSharingOutgoingChangesetCursor *)self databaseScope];
  v4 = [(KCSharingOutgoingChangesetCursor *)self keyset];
  v5 = [v4 hash] + 32 * v3 - v3;

  return [(KCSharingOutgoingChangesetCursor *)self fetchBehavior]- v5 + 32 * v5;
}

- (KCSharingOutgoingChangesetCursor)initWithDatabaseScope:(int64_t)a3 keyset:(id)a4 fetchBehavior:(int64_t)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = KCSharingOutgoingChangesetCursor;
  v9 = [(KCSharingOutgoingChangesetCursor *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_databaseScope = a3;
    v11 = [v8 copy];
    keyset = v10->_keyset;
    v10->_keyset = v11;

    v10->_fetchBehavior = a5;
  }

  return v10;
}

- (KCSharingOutgoingChangesetCursor)initWithDatabaseScope:(int64_t)a3 desiredZoneIDs:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = +[NSMutableDictionary dictionary];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v6;
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

    v13 = [(KCSharingOutgoingChangesetCursor *)self initWithDatabaseScope:a3 keyset:v7 fetchBehavior:2];
  }

  else
  {
    v13 = [(KCSharingOutgoingChangesetCursor *)self initWithDatabaseScope:a3 keyset:&__NSDictionary0__struct fetchBehavior:1];
  }

  return v13;
}

@end