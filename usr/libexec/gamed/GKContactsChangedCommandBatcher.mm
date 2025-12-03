@interface GKContactsChangedCommandBatcher
- (BOOL)shouldExecuteCommands;
- (GKContactsChangedCommandBatcher)initWithPlayerProvider:(id)provider meContactID:(id)d batchSize:(unint64_t)size batchStartCommand:(id)command batchEndCommand:(id)endCommand finishedCommand:(id)finishedCommand;
- (GKContactsChangedCommandBatcher)initWithPlayerProvider:(id)provider meContactID:(id)d batchSize:(unint64_t)size finishedCommand:(id)command;
- (id)executeCommandsWithContext:(id)context;
- (void)addCommand:(id)command;
- (void)addCommand:(id)command withContext:(id)context;
- (void)finish;
- (void)finishWithContext:(id)context;
- (void)visitAddContactEvent:(id)event;
- (void)visitDeleteContactEvent:(id)event;
- (void)visitDropEverythingEvent:(id)event;
- (void)visitUpdateContactEvent:(id)event;
@end

@implementation GKContactsChangedCommandBatcher

- (GKContactsChangedCommandBatcher)initWithPlayerProvider:(id)provider meContactID:(id)d batchSize:(unint64_t)size finishedCommand:(id)command
{
  commandCopy = command;
  dCopy = d;
  providerCopy = provider;
  v13 = objc_alloc_init(GKContactsCacheUpdateBatchStartCommand);
  v14 = objc_alloc_init(GKContactsCacheUpdateBatchEndCommand);
  v15 = [(GKContactsChangedCommandBatcher *)self initWithPlayerProvider:providerCopy meContactID:dCopy batchSize:size batchStartCommand:v13 batchEndCommand:v14 finishedCommand:commandCopy];

  return v15;
}

- (GKContactsChangedCommandBatcher)initWithPlayerProvider:(id)provider meContactID:(id)d batchSize:(unint64_t)size batchStartCommand:(id)command batchEndCommand:(id)endCommand finishedCommand:(id)finishedCommand
{
  providerCopy = provider;
  dCopy = d;
  commandCopy = command;
  endCommandCopy = endCommand;
  finishedCommandCopy = finishedCommand;
  v25.receiver = self;
  v25.super_class = GKContactsChangedCommandBatcher;
  v18 = [(GKContactsChangedCommandBatcher *)&v25 init];
  v19 = v18;
  if (v18)
  {
    v18->_batchSize = size;
    objc_storeStrong(&v18->_meContactID, d);
    providerCopy = [NSMutableSet setWithCapacity:size, dCopy, providerCopy];
    commands = v19->_commands;
    v19->_commands = providerCopy;

    objc_storeStrong(&v19->_playerProvider, provider);
    objc_storeStrong(&v19->_batchStartCommand, command);
    objc_storeStrong(&v19->_batchEndCommand, endCommand);
    objc_storeStrong(&v19->_finishedCommand, finishedCommand);
  }

  return v19;
}

- (void)visitAddContactEvent:(id)event
{
  eventCopy = event;
  v5 = [GKContactsChangedAddOrUpdateCommand alloc];
  contact = [eventCopy contact];

  meContactID = [(GKContactsChangedCommandBatcher *)self meContactID];
  v8 = [(GKContactsChangedAddOrUpdateCommand *)v5 initWithContact:contact meContactID:meContactID];

  [(GKContactsChangedCommandBatcher *)self addCommand:v8];
}

- (void)visitDeleteContactEvent:(id)event
{
  eventCopy = event;
  v5 = [GKContactsChangedDeleteCommand alloc];
  contactIdentifier = [eventCopy contactIdentifier];

  v7 = [(GKContactsChangedDeleteCommand *)v5 initWithContactID:contactIdentifier];
  [(GKContactsChangedCommandBatcher *)self addCommand:v7];
}

- (void)visitDropEverythingEvent:(id)event
{
  v4 = objc_alloc_init(GKContactsChangedClearCommand);
  [(GKContactsChangedCommandBatcher *)self addCommand:v4];
}

- (void)visitUpdateContactEvent:(id)event
{
  eventCopy = event;
  v5 = [GKContactsChangedAddOrUpdateCommand alloc];
  contact = [eventCopy contact];

  meContactID = [(GKContactsChangedCommandBatcher *)self meContactID];
  v8 = [(GKContactsChangedAddOrUpdateCommand *)v5 initWithContact:contact meContactID:meContactID];

  [(GKContactsChangedCommandBatcher *)self addCommand:v8];
}

- (void)addCommand:(id)command
{
  commandCopy = command;
  commands = [(GKContactsChangedCommandBatcher *)self commands];
  [commands addObject:commandCopy];

  if ([(GKContactsChangedCommandBatcher *)self shouldExecuteCommands])
  {
    playerProvider = [(GKContactsChangedCommandBatcher *)self playerProvider];
    localPlayerCacheGroup = [playerProvider localPlayerCacheGroup];

    context = [localPlayerCacheGroup context];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10016899C;
    v10[3] = &unk_1003610B8;
    v10[4] = self;
    v11 = localPlayerCacheGroup;
    v9 = localPlayerCacheGroup;
    [context performBlockAndWait:v10];
  }
}

- (BOOL)shouldExecuteCommands
{
  selfCopy = self;
  commands = [(GKContactsChangedCommandBatcher *)self commands];
  v4 = [commands count];
  LOBYTE(selfCopy) = v4 >= [(GKContactsChangedCommandBatcher *)selfCopy batchSize];

  return selfCopy;
}

- (void)addCommand:(id)command withContext:(id)context
{
  contextCopy = context;
  commandCopy = command;
  commands = [(GKContactsChangedCommandBatcher *)self commands];
  [commands addObject:commandCopy];

  if ([(GKContactsChangedCommandBatcher *)self shouldExecuteCommands])
  {
    v8 = [(GKContactsChangedCommandBatcher *)self executeCommandsWithContext:contextCopy];
  }
}

- (id)executeCommandsWithContext:(id)context
{
  contextCopy = context;
  commands = [(GKContactsChangedCommandBatcher *)self commands];
  v6 = [commands count];

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

  error = [(GKContactsChangedCommandBatcher *)self error];

  if (error)
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

  batchStartCommand = [(GKContactsChangedCommandBatcher *)self batchStartCommand];
  v13 = [batchStartCommand executeWithContext:contextCopy];
  [(GKContactsChangedCommandBatcher *)self setError:v13];

  error2 = [(GKContactsChangedCommandBatcher *)self error];

  if (error2)
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
  commands2 = [(GKContactsChangedCommandBatcher *)self commands];
  v15 = [v19 initWithCapacity:{objc_msgSend(commands2, "count")}];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  commands3 = [(GKContactsChangedCommandBatcher *)self commands];
  v22 = [commands3 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
          objc_enumerationMutation(commands3);
        }

        v26 = [*(*(&v30 + 1) + 8 * i) executeWithContext:contextCopy];
        if (v26)
        {
          [v15 unionSet:v26];
        }
      }

      v23 = [commands3 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v23);
  }

  batchEndCommand = [(GKContactsChangedCommandBatcher *)self batchEndCommand];
  v28 = [v15 copy];
  [batchEndCommand executeWithHandles:v28 context:contextCopy];

  commands4 = [(GKContactsChangedCommandBatcher *)self commands];
  [commands4 removeAllObjects];

LABEL_13:

  return v15;
}

- (void)finish
{
  playerProvider = [(GKContactsChangedCommandBatcher *)self playerProvider];
  localPlayerCacheGroup = [playerProvider localPlayerCacheGroup];

  context = [localPlayerCacheGroup context];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100168F0C;
  v7[3] = &unk_1003610B8;
  v7[4] = self;
  v8 = localPlayerCacheGroup;
  v6 = localPlayerCacheGroup;
  [context performBlockAndWait:v7];
}

- (void)finishWithContext:(id)context
{
  contextCopy = context;
  v4 = [(GKContactsChangedCommandBatcher *)self executeCommandsWithContext:?];
  error = [(GKContactsChangedCommandBatcher *)self error];

  if (!error)
  {
    finishedCommand = [(GKContactsChangedCommandBatcher *)self finishedCommand];
    [finishedCommand executeWithContext:contextCopy];
  }
}

@end