@interface NEKReminderChangeTrackingStateMap
- (NEKReminderChangeTrackingStateMap)initWithCoder:(id)coder;
- (NEKReminderChangeTrackingStateMap)initWithData:(id)data store:(id)store clientName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)filterAccountToSync:(id)sync;
- (id)persistToData:(id *)data;
- (id)transactionAuthorsToExclude;
- (void)_beginTrackingForStore:(id)store clientName:(id)name verifyAccountsBlock:(id)block changeTrackingStateFromAccountBlock:(id)accountBlock;
- (void)_beginTrackingFromLoadedStateForStore:(id)store clientName:(id)name;
- (void)beginTrackingFromEpochForStore:(id)store clientName:(id)name;
- (void)beginTrackingFromNowForStore:(id)store clientName:(id)name;
- (void)encodeWithCoder:(id)coder;
- (void)fetchChangedObjectIDs:(id)ds;
- (void)setChangeToken:(id)token forAccountID:(id)d;
@end

@implementation NEKReminderChangeTrackingStateMap

- (NEKReminderChangeTrackingStateMap)initWithData:(id)data store:(id)store clientName:(id)name
{
  dataCopy = data;
  storeCopy = store;
  nameCopy = name;
  if (dataCopy && [dataCopy length])
  {
    v22 = 0;
    v11 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v22];
    v12 = v22;

    v13 = *(qword_1000D18A8 + 8);
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Decoded NEKReminderChangeTrackingStateMap. %@", buf, 0xCu);
      }

      if ([(NEKReminderChangeTrackingStateMap *)v11 hasChangeTrackingTokens])
      {
        [(NEKReminderChangeTrackingStateMap *)v11 _beginTrackingFromLoadedStateForStore:storeCopy clientName:nameCopy];
      }
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100075D30(v12, v13, v15, v16, v17, v18, v19, v20);
      }

      v11 = [0 init];
    }
  }

  else
  {
    v14 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No previous NEKReminderChangeTrackingStateMap found", buf, 2u);
    }

    v11 = [(NEKReminderChangeTrackingStateMap *)self init];
  }

  return v11;
}

- (id)transactionAuthorsToExclude
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100065C6C;
  block[3] = &unk_1000B4B90;
  block[4] = self;
  if (qword_1000D1870 != -1)
  {
    dispatch_once(&qword_1000D1870, block);
  }

  return qword_1000D1868;
}

- (id)persistToData:(id *)data
{
  v4 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:data];
  v5 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Encoded NEKReminderChangeTrackingStateMap: %@ (encoded=%@)", &v7, 0x16u);
  }

  return v4;
}

- (id)filterAccountToSync:(id)sync
{
  syncCopy = sync;
  v4 = [NSPredicate predicateWithBlock:&stru_1000B5FA0];
  v5 = [syncCopy filteredArrayUsingPredicate:v4];

  return v5;
}

- (void)beginTrackingFromEpochForStore:(id)store clientName:(id)name
{
  storeCopy = store;
  nameCopy = name;
  loadedChangeTokenMap = self->_loadedChangeTokenMap;
  self->_loadedChangeTokenMap = 0;

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100065F78;
  v11[3] = &unk_1000B6008;
  v12 = storeCopy;
  v13 = nameCopy;
  selfCopy = self;
  v9 = nameCopy;
  v10 = storeCopy;
  [(NEKReminderChangeTrackingStateMap *)self _beginTrackingForStore:v10 clientName:v9 verifyAccountsBlock:&stru_1000B5FE0 changeTrackingStateFromAccountBlock:v11];
}

- (void)beginTrackingFromNowForStore:(id)store clientName:(id)name
{
  storeCopy = store;
  nameCopy = name;
  loadedChangeTokenMap = self->_loadedChangeTokenMap;
  self->_loadedChangeTokenMap = 0;

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100066124;
  v11[3] = &unk_1000B6008;
  v12 = storeCopy;
  v13 = nameCopy;
  selfCopy = self;
  v9 = nameCopy;
  v10 = storeCopy;
  [(NEKReminderChangeTrackingStateMap *)self _beginTrackingForStore:v10 clientName:v9 verifyAccountsBlock:&stru_1000B6028 changeTrackingStateFromAccountBlock:v11];
}

- (void)_beginTrackingFromLoadedStateForStore:(id)store clientName:(id)name
{
  storeCopy = store;
  nameCopy = name;
  v8 = self->_loadedChangeTokenMap;
  loadedChangeTokenMap = self->_loadedChangeTokenMap;
  self->_loadedChangeTokenMap = 0;

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100066350;
  v18[3] = &unk_1000B6050;
  v19 = v8;
  selfCopy = self;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006656C;
  v13[3] = &unk_1000B6078;
  v14 = storeCopy;
  v15 = nameCopy;
  selfCopy2 = self;
  v17 = v19;
  v10 = v19;
  v11 = nameCopy;
  v12 = storeCopy;
  [(NEKReminderChangeTrackingStateMap *)self _beginTrackingForStore:v12 clientName:v11 verifyAccountsBlock:v18 changeTrackingStateFromAccountBlock:v13];
}

- (void)_beginTrackingForStore:(id)store clientName:(id)name verifyAccountsBlock:(id)block changeTrackingStateFromAccountBlock:(id)accountBlock
{
  storeCopy = store;
  nameCopy = name;
  blockCopy = block;
  accountBlockCopy = accountBlock;
  if (self->_changeTrackingStateMap)
  {
    v14 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_100075D9C(v14);
    }
  }

  v43 = 0;
  v15 = [storeCopy fetchAccountsIncludingInactive:1 error:&v43];
  v16 = v43;
  if (v15)
  {
    v17 = [(NEKReminderChangeTrackingStateMap *)self filterAccountToSync:v15];
    if (blockCopy[2](blockCopy, v17))
    {
      v36 = v16;
      v37 = nameCopy;
      v38 = storeCopy;
      objc_storeStrong(&self->_clientName, name);
      v18 = +[NSMutableDictionary dictionary];
      changeTrackingStateMap = self->_changeTrackingStateMap;
      self->_changeTrackingStateMap = v18;

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v35 = v17;
      v20 = v17;
      v21 = [v20 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v40;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v40 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v39 + 1) + 8 * i);
            objectID = [v25 objectID];
            v27 = accountBlockCopy[2](accountBlockCopy, v25);
            [(NSMutableDictionary *)self->_changeTrackingStateMap setObject:v27 forKeyedSubscript:objectID];
          }

          v22 = [v20 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v22);
      }

      nameCopy = v37;
      storeCopy = v38;
      v16 = v36;
      v17 = v35;
    }
  }

  else
  {
    v28 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_100075DE0(v16, v28, v29, v30, v31, v32, v33, v34);
    }
  }
}

- (void)setChangeToken:(id)token forAccountID:(id)d
{
  dCopy = d;
  changeTrackingStateMap = self->_changeTrackingStateMap;
  tokenCopy = token;
  v8 = [(NSMutableDictionary *)changeTrackingStateMap objectForKeyedSubscript:dCopy];
  changeTracking = [v8 changeTracking];

  if (!changeTracking)
  {
    v10 = +[REMStore eks_storeForSyncing];
    clientName = self->_clientName;
    transactionAuthorsToExclude = [(NEKReminderChangeTrackingStateMap *)self transactionAuthorsToExclude];
    changeTracking = [v10 provideChangeTrackingForAccountID:dCopy clientName:clientName transactionAuthorKeysToExclude:transactionAuthorsToExclude];
  }

  v13 = [[NEKReminderChangeTrackingState alloc] initWithChangeTracking:changeTracking lastChangeToken:tokenCopy];

  [(NSMutableDictionary *)self->_changeTrackingStateMap setObject:v13 forKeyedSubscript:dCopy];
}

- (void)fetchChangedObjectIDs:(id)ds
{
  dsCopy = ds;
  v4 = [(NEKReminderChangeTrackingStateMap *)self copy];
  v5 = +[NSMutableArray array];
  v6 = +[NSMutableArray array];
  v7 = +[NSMutableArray array];
  v8 = +[NSMutableDictionary dictionary];
  v21 = +[NSMutableDictionary dictionary];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  changeTrackingStateMap = self->_changeTrackingStateMap;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100066C3C;
  v23[3] = &unk_1000B60C8;
  v29 = &v30;
  v10 = v8;
  v24 = v10;
  v22 = v5;
  v25 = v22;
  v11 = v6;
  v26 = v11;
  v12 = v7;
  v27 = v12;
  v13 = v4;
  v28 = v13;
  [(NSMutableDictionary *)changeTrackingStateMap enumerateKeysAndObjectsUsingBlock:v23];
  v14 = *(v31 + 24);
  v15 = [v22 copy];
  v16 = [v11 copy];
  v17 = [v12 copy];
  v18 = [v10 copy];
  v19 = [v21 copy];
  dsCopy[2](dsCopy, v14, v13, v15, v16, v17, v18, v19);

  _Block_object_dispose(&v30, 8);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->_changeTrackingStateMap mutableCopy];
  v6 = v4[3];
  v4[3] = v5;

  return v4;
}

- (NEKReminderChangeTrackingStateMap)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NEKReminderChangeTrackingStateMap *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    NSClassFromString(@"REMNSPersistentHistoryToken");
    v8 = objc_opt_class();
    NSClassFromString(@"_REMChangeUniversalToken");
    v9 = [NSSet setWithObjects:v6, v7, v8, objc_opt_class(), 0];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"loadedChangeTokenMap"];
    loadedChangeTokenMap = v5->_loadedChangeTokenMap;
    v5->_loadedChangeTokenMap = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  changeTrackingStateMap = self->_changeTrackingStateMap;
  coderCopy = coder;
  v6 = [NSMutableDictionary dictionaryWithCapacity:[(NSMutableDictionary *)changeTrackingStateMap count]];
  v7 = self->_changeTrackingStateMap;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100067D78;
  v10[3] = &unk_1000B60F0;
  v11 = v6;
  v8 = v6;
  [(NSMutableDictionary *)v7 enumerateKeysAndObjectsUsingBlock:v10];
  v9 = [v8 copy];
  [coderCopy encodeObject:v9 forKey:@"loadedChangeTokenMap"];
}

@end