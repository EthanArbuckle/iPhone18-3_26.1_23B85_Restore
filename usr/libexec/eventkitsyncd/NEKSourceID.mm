@interface NEKSourceID
+ (id)accountForStore:(id)store identifier:(id)identifier;
+ (id)eventSourceForDatabase:(id)database identifier:(id)identifier;
- (BOOL)isEqualToNEKSourceID:(id)d;
- (NEKSourceID)initWithAccount:(id)account;
- (NEKSourceID)initWithPersistentID:(id)d isLocalStore:(BOOL)store;
- (NEKSourceID)initWithSource:(id)source;
- (id)description;
@end

@implementation NEKSourceID

- (NEKSourceID)initWithAccount:(id)account
{
  accountCopy = account;
  v5 = accountCopy;
  if (accountCopy)
  {
    store = [accountCopy store];
    v7 = store;
    if (store)
    {
      eks_localAccount = [store eks_localAccount];
      objectID = [eks_localAccount objectID];
      objectID2 = [v5 objectID];
      if (eks_localAccount && ([objectID isEqual:objectID2] & 1) != 0)
      {
        v11 = 0;
        v12 = 1;
      }

      else
      {
        uuid = [objectID2 uuid];
        uUIDString = [uuid UUIDString];
        v11 = [uUIDString copy];

        v12 = 0;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    self = [(NEKSourceID *)self initWithPersistentID:v11 isLocalStore:v12];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)accountForStore:(id)store identifier:(id)identifier
{
  storeCopy = store;
  identifierCopy = identifier;
  if ([identifierCopy isLocalStore])
  {
    eks_localAccount = [storeCopy eks_localAccount];
  }

  else
  {
    persistentID = [identifierCopy persistentID];
    v9 = [[NSUUID alloc] initWithUUIDString:persistentID];
    if (!v9)
    {
      v10 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_10006EEF4(persistentID, v10);
      }
    }

    v11 = [REMAccount objectIDWithUUID:v9];
    v15 = 0;
    eks_localAccount = [storeCopy fetchAccountWithObjectID:v11 error:&v15];
    v12 = v15;
    if (v12)
    {
      v13 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10006EF80(persistentID, v13);
      }
    }
  }

  return eks_localAccount;
}

- (NEKSourceID)initWithSource:(id)source
{
  sourceCopy = source;
  v5 = sourceCopy;
  if (sourceCopy)
  {
    eventStore = [sourceCopy eventStore];
    v7 = eventStore;
    if (eventStore)
    {
      localSource = [eventStore localSource];
      sourceIdentifier = [localSource sourceIdentifier];
      sourceIdentifier2 = [v5 sourceIdentifier];
      if (localSource && ([sourceIdentifier isEqualToString:sourceIdentifier2] & 1) != 0)
      {
        v11 = 0;
        v12 = 1;
      }

      else
      {
        v11 = [sourceIdentifier2 copy];
        v12 = 0;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    self = [(NEKSourceID *)self initWithPersistentID:v11 isLocalStore:v12];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)eventSourceForDatabase:(id)database identifier:(id)identifier
{
  databaseCopy = database;
  identifierCopy = identifier;
  if ([identifierCopy isLocalStore])
  {
    localSource = [databaseCopy localSource];
  }

  else
  {
    persistentID = [identifierCopy persistentID];
    localSource = [databaseCopy sourceWithIdentifier:persistentID];
  }

  return localSource;
}

- (NEKSourceID)initWithPersistentID:(id)d isLocalStore:(BOOL)store
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = NEKSourceID;
  v7 = [(NEKSourceID *)&v11 init];
  if (v7)
  {
    v8 = [dCopy copy];
    persistentID = v7->_persistentID;
    v7->_persistentID = v8;

    v7->_isLocalStore = store;
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

- (BOOL)isEqualToNEKSourceID:(id)d
{
  dCopy = d;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (-[NEKSourceID isLocalStore](self, "isLocalStore") && ([dCopy isLocalStore] & 1) != 0)
    {
      v5 = 1;
    }

    else
    {
      persistentID = [dCopy persistentID];
      persistentID2 = [(NEKSourceID *)self persistentID];
      v5 = [persistentID isEqualToString:persistentID2];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end