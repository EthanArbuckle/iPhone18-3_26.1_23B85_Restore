@interface GKContactsChangedCommandBatcher
- (BOOL)shouldExecuteCommands;
- (GKContactsChangedCommandBatcher)initWithPlayerProvider:(id)a3 meContactID:(id)a4 batchSize:(unint64_t)a5 batchStartCommand:(id)a6 batchEndCommand:(id)a7 finishedCommand:(id)a8;
- (GKContactsChangedCommandBatcher)initWithPlayerProvider:(id)a3 meContactID:(id)a4 batchSize:(unint64_t)a5 finishedCommand:(id)a6;
- (id)executeCommandsWithContext:(id)a3;
- (void)addCommand:(id)a3;
- (void)addCommand:(id)a3 withContext:(id)a4;
- (void)finish;
- (void)finishWithContext:(id)a3;
- (void)visitAddContactEvent:(id)a3;
- (void)visitDeleteContactEvent:(id)a3;
- (void)visitDropEverythingEvent:(id)a3;
- (void)visitUpdateContactEvent:(id)a3;
@end

@implementation GKContactsChangedCommandBatcher

- (GKContactsChangedCommandBatcher)initWithPlayerProvider:(id)a3 meContactID:(id)a4 batchSize:(unint64_t)a5 finishedCommand:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(GKContactsCacheUpdateBatchStartCommand);
  v14 = objc_alloc_init(GKContactsCacheUpdateBatchEndCommand);
  v15 = [(GKContactsChangedCommandBatcher *)self initWithPlayerProvider:v12 meContactID:v11 batchSize:a5 batchStartCommand:v13 batchEndCommand:v14 finishedCommand:v10];

  return v15;
}

- (GKContactsChangedCommandBatcher)initWithPlayerProvider:(id)a3 meContactID:(id)a4 batchSize:(unint64_t)a5 batchStartCommand:(id)a6 batchEndCommand:(id)a7 finishedCommand:(id)a8
{
  v24 = a3;
  v23 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v25.receiver = self;
  v25.super_class = GKContactsChangedCommandBatcher;
  v18 = [(GKContactsChangedCommandBatcher *)&v25 init];
  v19 = v18;
  if (v18)
  {
    v18->_batchSize = a5;
    objc_storeStrong(&v18->_meContactID, a4);
    v20 = [NSMutableSet setWithCapacity:a5, v23, v24];
    commands = v19->_commands;
    v19->_commands = v20;

    objc_storeStrong(&v19->_playerProvider, a3);
    objc_storeStrong(&v19->_batchStartCommand, a6);
    objc_storeStrong(&v19->_batchEndCommand, a7);
    objc_storeStrong(&v19->_finishedCommand, a8);
  }

  return v19;
}

- (void)visitAddContactEvent:(id)a3
{
  v4 = a3;
  v5 = [GKContactsChangedAddOrUpdateCommand alloc];
  v6 = [v4 contact];

  v7 = [(GKContactsChangedCommandBatcher *)self meContactID];
  v8 = [(GKContactsChangedAddOrUpdateCommand *)v5 initWithContact:v6 meContactID:v7];

  [(GKContactsChangedCommandBatcher *)self addCommand:v8];
}

- (void)visitDeleteContactEvent:(id)a3
{
  v4 = a3;
  v5 = [GKContactsChangedDeleteCommand alloc];
  v6 = [v4 contactIdentifier];

  v7 = [(GKContactsChangedDeleteCommand *)v5 initWithContactID:v6];
  [(GKContactsChangedCommandBatcher *)self addCommand:v7];
}

- (void)visitDropEverythingEvent:(id)a3
{
  v4 = objc_alloc_init(GKContactsChangedClearCommand);
  [(GKContactsChangedCommandBatcher *)self addCommand:v4];
}

- (void)visitUpdateContactEvent:(id)a3
{
  v4 = a3;
  v5 = [GKContactsChangedAddOrUpdateCommand alloc];
  v6 = [v4 contact];

  v7 = [(GKContactsChangedCommandBatcher *)self meContactID];
  v8 = [(GKContactsChangedAddOrUpdateCommand *)v5 initWithContact:v6 meContactID:v7];

  [(GKContactsChangedCommandBatcher *)self addCommand:v8];
}

- (void)addCommand:(id)a3
{
  v4 = a3;
  v5 = [(GKContactsChangedCommandBatcher *)self commands];
  [v5 addObject:v4];

  if ([(GKContactsChangedCommandBatcher *)self shouldExecuteCommands])
  {
    v6 = [(GKContactsChangedCommandBatcher *)self playerProvider];
    v7 = [v6 localPlayerCacheGroup];

    v8 = [v7 context];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10016899C;
    v10[3] = &unk_1003610B8;
    v10[4] = self;
    v11 = v7;
    v9 = v7;
    [v8 performBlockAndWait:v10];
  }
}

- (BOOL)shouldExecuteCommands
{
  v2 = self;
  v3 = [(GKContactsChangedCommandBatcher *)self commands];
  v4 = [v3 count];
  LOBYTE(v2) = v4 >= [(GKContactsChangedCommandBatcher *)v2 batchSize];

  return v2;
}

- (void)addCommand:(id)a3 withContext:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(GKContactsChangedCommandBatcher *)self commands];
  [v7 addObject:v6];

  if ([(GKContactsChangedCommandBatcher *)self shouldExecuteCommands])
  {
    v8 = [(GKContactsChangedCommandBatcher *)self executeCommandsWithContext:v9];
  }
}

- (id)executeCommandsWithContext:(id)a3
{
  v4 = a3;
  v5 = [(GKContactsChangedCommandBatcher *)self commands];
  v6 = [v5 count];

  if (!v6)
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v11 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Nothing to do, no commands to execute.", buf, 2u);
    }

    goto LABEL_12;
  }

  v7 = [(GKContactsChangedCommandBatcher *)self error];

  if (v7)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
    {
      sub_1002935A8(v9, self);
    }

    goto LABEL_12;
  }

  v12 = [(GKContactsChangedCommandBatcher *)self batchStartCommand];
  v13 = [v12 executeWithContext:v4];
  [(GKContactsChangedCommandBatcher *)self setError:v13];

  v14 = [(GKContactsChangedCommandBatcher *)self error];

  if (v14)
  {
LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  if (!os_log_GKGeneral)
  {
    v17 = GKOSLoggers();
  }

  v18 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Executing contacts change commands", buf, 2u);
  }

  v19 = [NSMutableSet alloc];
  v20 = [(GKContactsChangedCommandBatcher *)self commands];
  v15 = [v19 initWithCapacity:{objc_msgSend(v20, "count")}];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v21 = [(GKContactsChangedCommandBatcher *)self commands];
  v22 = [v21 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v31;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v30 + 1) + 8 * i) executeWithContext:v4];
        if (v26)
        {
          [v15 unionSet:v26];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v23);
  }

  v27 = [(GKContactsChangedCommandBatcher *)self batchEndCommand];
  v28 = [v15 copy];
  [v27 executeWithHandles:v28 context:v4];

  v29 = [(GKContactsChangedCommandBatcher *)self commands];
  [v29 removeAllObjects];

LABEL_13:

  return v15;
}

- (void)finish
{
  v3 = [(GKContactsChangedCommandBatcher *)self playerProvider];
  v4 = [v3 localPlayerCacheGroup];

  v5 = [v4 context];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100168F0C;
  v7[3] = &unk_1003610B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlockAndWait:v7];
}

- (void)finishWithContext:(id)a3
{
  v7 = a3;
  v4 = [(GKContactsChangedCommandBatcher *)self executeCommandsWithContext:?];
  v5 = [(GKContactsChangedCommandBatcher *)self error];

  if (!v5)
  {
    v6 = [(GKContactsChangedCommandBatcher *)self finishedCommand];
    [v6 executeWithContext:v7];
  }
}

@end