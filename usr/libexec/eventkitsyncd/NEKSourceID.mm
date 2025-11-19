@interface NEKSourceID
+ (id)accountForStore:(id)a3 identifier:(id)a4;
+ (id)eventSourceForDatabase:(id)a3 identifier:(id)a4;
- (BOOL)isEqualToNEKSourceID:(id)a3;
- (NEKSourceID)initWithAccount:(id)a3;
- (NEKSourceID)initWithPersistentID:(id)a3 isLocalStore:(BOOL)a4;
- (NEKSourceID)initWithSource:(id)a3;
- (id)description;
@end

@implementation NEKSourceID

- (NEKSourceID)initWithAccount:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 store];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 eks_localAccount];
      v9 = [v8 objectID];
      v10 = [v5 objectID];
      if (v8 && ([v9 isEqual:v10] & 1) != 0)
      {
        v11 = 0;
        v12 = 1;
      }

      else
      {
        v14 = [v10 uuid];
        v15 = [v14 UUIDString];
        v11 = [v15 copy];

        v12 = 0;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    self = [(NEKSourceID *)self initWithPersistentID:v11 isLocalStore:v12];

    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)accountForStore:(id)a3 identifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 isLocalStore])
  {
    v7 = [v5 eks_localAccount];
  }

  else
  {
    v8 = [v6 persistentID];
    v9 = [[NSUUID alloc] initWithUUIDString:v8];
    if (!v9)
    {
      v10 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_10006EEF4(v8, v10);
      }
    }

    v11 = [REMAccount objectIDWithUUID:v9];
    v15 = 0;
    v7 = [v5 fetchAccountWithObjectID:v11 error:&v15];
    v12 = v15;
    if (v12)
    {
      v13 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10006EF80(v8, v13);
      }
    }
  }

  return v7;
}

- (NEKSourceID)initWithSource:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 eventStore];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 localSource];
      v9 = [v8 sourceIdentifier];
      v10 = [v5 sourceIdentifier];
      if (v8 && ([v9 isEqualToString:v10] & 1) != 0)
      {
        v11 = 0;
        v12 = 1;
      }

      else
      {
        v11 = [v10 copy];
        v12 = 0;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    self = [(NEKSourceID *)self initWithPersistentID:v11 isLocalStore:v12];

    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)eventSourceForDatabase:(id)a3 identifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 isLocalStore])
  {
    v7 = [v5 localSource];
  }

  else
  {
    v8 = [v6 persistentID];
    v7 = [v5 sourceWithIdentifier:v8];
  }

  return v7;
}

- (NEKSourceID)initWithPersistentID:(id)a3 isLocalStore:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = NEKSourceID;
  v7 = [(NEKSourceID *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    persistentID = v7->_persistentID;
    v7->_persistentID = v8;

    v7->_isLocalStore = a4;
  }

  return v7;
}

- (id)description
{
  if ([(NEKSourceID *)self isLocalStore])
  {
    v3 = @"Local store";
  }

  else
  {
    v3 = [NSString stringWithFormat:@"persistentID: %@", self->_persistentID];
  }

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [NSString stringWithFormat:@"<%@ %p %@>", v5, self, v3];;

  return v6;
}

- (BOOL)isEqualToNEKSourceID:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (-[NEKSourceID isLocalStore](self, "isLocalStore") && ([v4 isLocalStore] & 1) != 0)
    {
      v5 = 1;
    }

    else
    {
      v6 = [v4 persistentID];
      v7 = [(NEKSourceID *)self persistentID];
      v5 = [v6 isEqualToString:v7];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end