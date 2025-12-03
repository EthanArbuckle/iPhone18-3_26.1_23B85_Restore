@interface REMCKServerChangeToken
+ (id)addServerChangeTokenForAccount:(id)account ckServerChangeToken:(id)token zoneID:(id)d databaseScope:(int64_t)scope context:(id)context;
+ (id)serverChangeTokenForAccount:(id)account zoneID:(id)d databaseScope:(int64_t)scope context:(id)context;
+ (id)serverChangeTokensMatchingPredicate:(id)predicate inContext:(id)context;
- (CKServerChangeToken)serverChangeToken;
- (id)ic_loggingValues;
- (void)setServerChangeToken:(id)token;
@end

@implementation REMCKServerChangeToken

- (CKServerChangeToken)serverChangeToken
{
  serverChangeToken = self->_serverChangeToken;
  if (!serverChangeToken)
  {
    serverChangeTokenData = [(REMCKServerChangeToken *)self serverChangeTokenData];
    if (serverChangeTokenData)
    {
      v5 = [[CKServerChangeToken alloc] initWithData:serverChangeTokenData];
      v6 = self->_serverChangeToken;
      self->_serverChangeToken = v5;
    }

    serverChangeToken = self->_serverChangeToken;
  }

  return serverChangeToken;
}

- (void)setServerChangeToken:(id)token
{
  tokenCopy = token;
  serverChangeToken = [(REMCKServerChangeToken *)self serverChangeToken];
  v6 = [serverChangeToken isEqual:tokenCopy];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_serverChangeToken, token);
    data = [tokenCopy data];
    [(REMCKServerChangeToken *)self setServerChangeTokenData:data];
  }
}

+ (id)addServerChangeTokenForAccount:(id)account ckServerChangeToken:(id)token zoneID:(id)d databaseScope:(int64_t)scope context:(id)context
{
  scopeCopy = scope;
  dCopy = d;
  contextCopy = context;
  tokenCopy = token;
  accountCopy = account;
  entity = [self entity];
  name = [entity name];

  if (!name)
  {
    sub_10076AFFC(self);
  }

  v18 = [NSEntityDescription insertNewObjectForEntityForName:name inManagedObjectContext:contextCopy];
  [v18 setAccount:accountCopy];
  [accountCopy addCkServerChangeTokensObject:v18];

  [v18 setServerChangeToken:tokenCopy];
  zoneName = [dCopy zoneName];
  [v18 setZoneName:zoneName];

  ownerName = [dCopy ownerName];
  v21 = [ownerName isEqualToString:CKCurrentUserDefaultName];

  if ((v21 & 1) == 0)
  {
    ownerName2 = [dCopy ownerName];
    [v18 setOwnerName:ownerName2];
  }

  [v18 setDatabaseScope:scopeCopy];

  return v18;
}

+ (id)serverChangeTokenForAccount:(id)account zoneID:(id)d databaseScope:(int64_t)scope context:(id)context
{
  accountCopy = account;
  dCopy = d;
  contextCopy = context;
  if (dCopy && ([dCopy ownerName], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", CKCurrentUserDefaultName), v13, (v14 & 1) == 0))
  {
    ownerName = [dCopy ownerName];
  }

  else
  {
    ownerName = 0;
  }

  accountCopy = [NSPredicate predicateWithFormat:@"account == %@", accountCopy];
  v27[0] = accountCopy;
  [dCopy zoneName];
  v17 = v26 = accountCopy;
  v18 = [NSPredicate predicateWithFormat:@"zoneName == %@", v17];
  v27[1] = v18;
  v19 = [NSPredicate predicateWithFormat:@"ownerName == %@", ownerName];
  v27[2] = v19;
  scope = [NSPredicate predicateWithFormat:@"databaseScope == %ld", scope];
  v27[3] = scope;
  v21 = [NSArray arrayWithObjects:v27 count:4];

  v22 = [NSCompoundPredicate andPredicateWithSubpredicates:v21];
  v23 = [self serverChangeTokensMatchingPredicate:v22 inContext:contextCopy];
  firstObject = [v23 firstObject];

  return firstObject;
}

+ (id)serverChangeTokensMatchingPredicate:(id)predicate inContext:(id)context
{
  contextCopy = context;
  predicateCopy = predicate;
  fetchRequest = [self fetchRequest];
  [fetchRequest setPredicate:predicateCopy];

  v13 = 0;
  v9 = [contextCopy executeFetchRequest:fetchRequest error:&v13];

  v10 = v13;
  if (v10)
  {
    v11 = os_log_create("com.apple.reminderkit", "default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10076B0AC(v10, v11);
    }
  }

  return v9;
}

- (id)ic_loggingValues
{
  v3 = +[NSMutableDictionary dictionary];
  managedObjectContext = [(REMCKServerChangeToken *)self managedObjectContext];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C0AD0;
  v8[3] = &unk_1008D9B98;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  [managedObjectContext performBlockAndWait:v8];

  v6 = v5;
  return v5;
}

@end