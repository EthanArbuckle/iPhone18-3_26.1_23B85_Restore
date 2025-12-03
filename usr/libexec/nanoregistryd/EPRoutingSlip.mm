@interface EPRoutingSlip
- (BOOL)decrementCurrentTransactionIndex;
- (BOOL)incrementCurrentTransactionIndex;
- (BOOL)updateCurrentTransactionIndex;
- (EPRoutingSlip)initWithCoder:(id)coder;
- (EPRoutingSlip)initWithIdentifier:(id)identifier routingSlipEntries:(id)entries;
- (EPRoutingSlip)initWithRoutingSlipEntries:(id)entries;
- (EPRoutingSlipDelegate)routingSlipDelegate;
- (EPRoutingSlipEntry)currentEntry;
- (EPTransaction)transaction;
- (id)getLastFirstError;
- (id)objectForKeyedSubscript:(id)subscript;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)cancelWithError:(id)error;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)persist;
- (void)printDescription;
- (void)resume;
- (void)resumeWithServiceRegistry:(id)registry rollback:(BOOL)rollback;
- (void)setState:(unint64_t)state;
- (void)setTransactionIndex:(int64_t)index;
- (void)transactionDidComplete:(id)complete;
@end

@implementation EPRoutingSlip

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  entries = [(EPRoutingSlip *)self entries];
  v9 = [entries countByEnumeratingWithState:state objects:objects count:count];

  return v9;
}

- (EPRoutingSlip)initWithRoutingSlipEntries:(id)entries
{
  entriesCopy = entries;
  v5 = +[NSUUID UUID];
  uUIDString = [v5 UUIDString];
  v7 = [(EPRoutingSlip *)self initWithIdentifier:uUIDString routingSlipEntries:entriesCopy];

  return v7;
}

- (EPRoutingSlip)initWithIdentifier:(id)identifier routingSlipEntries:(id)entries
{
  identifierCopy = identifier;
  entriesCopy = entries;
  v9 = [(EPRoutingSlip *)self init];
  v10 = v9;
  if (v9)
  {
    v29 = identifierCopy;
    objc_storeStrong(&v9->_identifier, identifier);
    v11 = +[NSMutableDictionary dictionary];
    transactionReferences = v10->_transactionReferences;
    v10->_transactionReferences = v11;

    v13 = +[NSMutableArray array];
    v14 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [entriesCopy count]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v28 = entriesCopy;
    v15 = entriesCopy;
    v16 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v31;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v30 + 1) + 8 * i);
          transactionClasses = [v20 transactionClasses];
          v22 = [transactionClasses containsObject:{objc_msgSend(v20, "transactionClass")}];

          if (v22)
          {
            [v20 setRoutingSlip:v10];
            [v13 addObject:v20];
            name = [v20 name];
            [(NSDictionary *)v14 setObject:v20 forKeyedSubscript:name];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v17);
    }

    v24 = [v13 copy];
    entries = v10->_entries;
    v10->_entries = v24;

    entryMap = v10->_entryMap;
    v10->_entryMap = v14;

    entriesCopy = v28;
    identifierCopy = v29;
  }

  return v10;
}

- (void)resumeWithServiceRegistry:(id)registry rollback:(BOOL)rollback
{
  rollbackCopy = rollback;
  registryCopy = registry;
  if ([(EPRoutingSlip *)self notUnrollable]|| [(EPRoutingSlip *)self resumeEnabled])
  {
    rollbackCopy = 0;
  }

  if ([(EPRoutingSlip *)self queuedCancel])
  {
    [(EPRoutingSlip *)self setState:3];
  }

  [(EPRoutingSlip *)self setQueuedCancel:0];
  [(EPRoutingSlip *)self setServiceRegistry:registryCopy];

  [(EPRoutingSlip *)self setDidFail:rollbackCopy | [(EPRoutingSlip *)self didFail]];
  if (rollbackCopy && [(EPRoutingSlip *)self state]== 2)
  {
    [(EPRoutingSlip *)self setState:0];
    entries = [(EPRoutingSlip *)self entries];
    -[EPRoutingSlip setTransactionIndex:](self, "setTransactionIndex:", [entries count] - 1);
  }

  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      identifier = self->_identifier;
      v12 = 138543618;
      v13 = identifier;
      v14 = 1024;
      v15 = rollbackCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "EPRoutingSlip[%{public}@]: resumeWithServiceRegistry rollback:%{BOOL}d", &v12, 0x12u);
    }
  }

  [(EPRoutingSlip *)self resume];
}

- (EPRoutingSlipEntry)currentEntry
{
  if (-[EPRoutingSlip transactionIndex](self, "transactionIndex") < 0 || (v3 = -[EPRoutingSlip transactionIndex](self, "transactionIndex"), -[EPRoutingSlip entries](self, "entries"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count], v4, v3 >= v5))
  {
    v7 = 0;
  }

  else
  {
    entries = [(EPRoutingSlip *)self entries];
    v7 = [entries objectAtIndexedSubscript:{-[EPRoutingSlip transactionIndex](self, "transactionIndex")}];
  }

  return v7;
}

- (EPTransaction)transaction
{
  transaction = self->_transaction;
  if (!transaction)
  {
    v4 = [NSNumber numberWithInteger:self->_transactionIndex];
    v5 = [(NSMutableDictionary *)self->_transactionReferences objectForKeyedSubscript:v4];
    v6 = self->_transaction;
    self->_transaction = v5;

    if (!self->_transaction)
    {
      currentEntry = [(EPRoutingSlip *)self currentEntry];
      newTransaction = [currentEntry newTransaction];
      v9 = self->_transaction;
      self->_transaction = newTransaction;

      [(EPTransaction *)self->_transaction setDelegate:self];
      [(NSMutableDictionary *)self->_transactionReferences setObject:self->_transaction forKeyedSubscript:v4];
    }

    transaction = self->_transaction;
  }

  return transaction;
}

- (void)setTransactionIndex:(int64_t)index
{
  if (self->_transactionIndex != index)
  {
    self->_transactionIndex = index;
  }
}

- (BOOL)incrementCurrentTransactionIndex
{
  if ([(EPRoutingSlip *)self transactionIndex]< -1)
  {
    return 0;
  }

  transactionIndex = [(EPRoutingSlip *)self transactionIndex];
  entries = [(EPRoutingSlip *)self entries];
  v5 = [entries count] - 1;

  if (transactionIndex >= v5)
  {
    return 0;
  }

  [(EPRoutingSlip *)self setTransactionIndex:[(EPRoutingSlip *)self transactionIndex]+ 1];
  return 1;
}

- (BOOL)decrementCurrentTransactionIndex
{
  if ([(EPRoutingSlip *)self transactionIndex]< 1)
  {
    return 0;
  }

  transactionIndex = [(EPRoutingSlip *)self transactionIndex];
  entries = [(EPRoutingSlip *)self entries];
  v5 = [entries count];

  if (transactionIndex > v5)
  {
    return 0;
  }

  [(EPRoutingSlip *)self setTransactionIndex:[(EPRoutingSlip *)self transactionIndex]- 1];
  return 1;
}

- (BOOL)updateCurrentTransactionIndex
{
  if ([(EPRoutingSlip *)self didFail]&& ![(EPRoutingSlip *)self notUnrollable])
  {
    decrementCurrentTransactionIndex = [(EPRoutingSlip *)self decrementCurrentTransactionIndex];
    if (!decrementCurrentTransactionIndex)
    {
      return decrementCurrentTransactionIndex;
    }

LABEL_6:
    [(EPRoutingSlip *)self persist];
    LOBYTE(decrementCurrentTransactionIndex) = 1;
    return decrementCurrentTransactionIndex;
  }

  if ([(EPRoutingSlip *)self incrementCurrentTransactionIndex])
  {
    goto LABEL_6;
  }

  LOBYTE(decrementCurrentTransactionIndex) = 0;
  return decrementCurrentTransactionIndex;
}

- (void)persist
{
  WeakRetained = objc_loadWeakRetained(&self->_routingSlipDelegate);
  [WeakRetained routingSlipRequestsArchiving:self];
}

- (void)setState:(unint64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
  }
}

- (void)resume
{
  v3 = sub_1000034AC();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = sub_1000034AC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      transaction = self->_transaction;
      *v46 = 138412290;
      *&v46[4] = transaction;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "resume called for _transaction %@", v46, 0xCu);
    }
  }

  state = [(EPRoutingSlip *)self state];
  if (state > 1)
  {
    if (state == 2)
    {
      v29 = sub_1000034AC();
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

      if (!v30)
      {
        goto LABEL_34;
      }

      transaction = sub_1000034AC();
      if (os_log_type_enabled(transaction, OS_LOG_TYPE_DEFAULT))
      {
        identifier = self->_identifier;
        *v46 = 138543362;
        *&v46[4] = identifier;
        _os_log_impl(&_mh_execute_header, transaction, OS_LOG_TYPE_DEFAULT, "EPRoutingSlip[%{public}@]: Completed", v46, 0xCu);
      }

      goto LABEL_33;
    }

    if (state == 3)
    {
      v14 = sub_1000034AC();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

      if (v15)
      {
        v16 = sub_1000034AC();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = self->_identifier;
          *v46 = 138543362;
          *&v46[4] = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "EPRoutingSlip[%{public}@]: cancelling transaction queued for cancellation", v46, 0xCu);
        }
      }

      transaction = [(EPRoutingSlip *)self transaction];
      [transaction cancelWithError:0];
      goto LABEL_33;
    }
  }

  else
  {
    if (!state)
    {
      v18 = sub_1000034AC();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

      if (v19)
      {
        v20 = sub_1000034AC();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = self->_identifier;
          *v46 = 138543362;
          *&v46[4] = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "EPRoutingSlip[%{public}@]: Not started", v46, 0xCu);
        }
      }

      v22 = [NROSTransaction transactionWithName:@"saga"];
      osTransaction = self->_osTransaction;
      self->_osTransaction = v22;

      [(EPRoutingSlip *)self setState:1];
      transaction = [(EPRoutingSlip *)self currentEntry];
      transaction2 = [(EPRoutingSlip *)self transaction];
      if (![(EPRoutingSlip *)self didFail]|| [(EPRoutingSlip *)self notUnrollable])
      {
        v24 = sub_1000034AC();
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

        if (v25)
        {
          v13 = sub_1000034AC();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
LABEL_29:
            v26 = self->_identifier;
            transactionIndex = self->_transactionIndex;
            shortDescription = [transaction shortDescription];
            *v46 = 138543874;
            *&v46[4] = v26;
            *&v46[12] = 2048;
            *&v46[14] = transactionIndex;
            *&v46[22] = 2114;
            v47 = shortDescription;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "EPRoutingSlip[%{public}@]: Starting saga entry %ld:%{public}@", v46, 0x20u);
          }

LABEL_30:
        }

LABEL_31:
        [transaction2 beginTransactionWithRoutingSlipEntry:transaction serviceRegistry:{self->_serviceRegistry, *v46, *&v46[16], v47}];
LABEL_32:

LABEL_33:
        goto LABEL_34;
      }

      v32 = objc_opt_respondsToSelector();
      v33 = sub_1000034AC();
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

      if (v32)
      {
        if (v34)
        {
          v35 = sub_1000034AC();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_48;
          }

          goto LABEL_49;
        }

LABEL_50:
        [transaction2 beginRollbackWithRoutingSlipEntry:transaction serviceRegistry:{self->_serviceRegistry, *v46, *&v46[8], v47}];
        goto LABEL_32;
      }

      if (v34)
      {
        v36 = sub_1000034AC();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_53;
        }

        goto LABEL_54;
      }

LABEL_55:
      [(EPRoutingSlip *)self transactionDidComplete:transaction2, *v46, *&v46[8], v47];
      goto LABEL_32;
    }

    if (state == 1)
    {
      delegate = [(EPTransaction *)self->_transaction delegate];

      if (!delegate)
      {
        transaction = [(EPRoutingSlip *)self currentEntry];
        transaction2 = [(EPRoutingSlip *)self transaction];
        if (![(EPRoutingSlip *)self didFail]|| [(EPRoutingSlip *)self notUnrollable])
        {
          v11 = sub_1000034AC();
          v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

          if (v12)
          {
            v13 = sub_1000034AC();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_29;
            }

            goto LABEL_30;
          }

          goto LABEL_31;
        }

        v37 = objc_opt_respondsToSelector();
        v38 = sub_1000034AC();
        v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);

        if (v37)
        {
          if (v39)
          {
            v35 = sub_1000034AC();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
LABEL_48:
              v40 = self->_identifier;
              v41 = self->_transactionIndex;
              shortDescription2 = [transaction shortDescription];
              *v46 = 138543874;
              *&v46[4] = v40;
              *&v46[12] = 2048;
              *&v46[14] = v41;
              *&v46[22] = 2114;
              v47 = shortDescription2;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "EPRoutingSlip[%{public}@]: Rolling back saga entry %ld:%{public}@", v46, 0x20u);
            }

LABEL_49:

            goto LABEL_50;
          }

          goto LABEL_50;
        }

        if (v39)
        {
          v36 = sub_1000034AC();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
LABEL_53:
            v43 = self->_identifier;
            v44 = self->_transactionIndex;
            shortDescription3 = [transaction shortDescription];
            *v46 = 138543874;
            *&v46[4] = v43;
            *&v46[12] = 2048;
            *&v46[14] = v44;
            *&v46[22] = 2114;
            v47 = shortDescription3;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "EPRoutingSlip[%{public}@]: Rollback not implement for saga entry %ld:%{public}@", v46, 0x20u);
          }

LABEL_54:

          goto LABEL_55;
        }

        goto LABEL_55;
      }
    }
  }

LABEL_34:
  [(EPRoutingSlip *)self persist];
}

- (void)invalidate
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_transactionReferences;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_transactionReferences objectForKeyedSubscript:*(*(&v9 + 1) + 8 * v7), v9];
        if (objc_opt_respondsToSelector())
        {
          [v8 invalidate];
        }

        [v8 setDelegate:0];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_transactionReferences removeAllObjects];
  [(EPRoutingSlip *)self setRoutingSlipDelegate:0];
}

- (void)transactionDidComplete:(id)complete
{
  queue = [(EPServiceRegistry *)self->_serviceRegistry queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FBB8C;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)printDescription
{
  v3 = sub_1000034AC();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = sub_1000034AC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      identifier = self->_identifier;
      *buf = 138543362;
      v14 = identifier;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Begin dumping EPRoutingSlipEntries of EPRoutingSlip[%{public}@]", buf, 0xCu);
    }
  }

  entries = [(EPRoutingSlip *)self entries];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000FC00C;
  v12[3] = &unk_100179ED8;
  v12[4] = self;
  [entries enumerateObjectsUsingBlock:v12];

  v8 = sub_1000034AC();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = sub_1000034AC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_identifier;
      *buf = 138543362;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "End dumping EPRoutingSlipEntries of EPRoutingSlip[%{public}@]", buf, 0xCu);
    }
  }
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  entryMap = [(EPRoutingSlip *)self entryMap];
  v6 = [entryMap objectForKeyedSubscript:subscriptCopy];

  return v6;
}

- (EPRoutingSlip)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v5 = [NSArray arrayWithObjects:v12 count:2];
  v6 = [NSSet setWithArray:v5];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"entries"];

  uUIDString = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (!uUIDString)
  {
    v9 = +[NSUUID UUID];
    uUIDString = [v9 UUIDString];
  }

  v10 = [(EPRoutingSlip *)self initWithIdentifier:uUIDString routingSlipEntries:v7];
  if (v10)
  {
    v10->_transactionIndex = [coderCopy decodeIntegerForKey:@"transactionIndex"];
    v10->_didFail = [coderCopy decodeBoolForKey:@"didFail"];
    v10->_state = [coderCopy decodeIntegerForKey:@"state"];
    v10->_persistWhilePending = [coderCopy decodeBoolForKey:@"persistWhilePending"];
    v10->_notUnrollable = [coderCopy decodeBoolForKey:@"notUnrollable"];
    v10->_resumeEnabled = [coderCopy decodeBoolForKey:@"resumeEnabled"];
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_entries forKey:@"entries"];
  [coderCopy encodeInteger:self->_transactionIndex forKey:@"transactionIndex"];
  [coderCopy encodeBool:self->_didFail forKey:@"didFail"];
  [coderCopy encodeInteger:self->_state forKey:@"state"];
  [coderCopy encodeBool:self->_persistWhilePending forKey:@"persistWhilePending"];
  [coderCopy encodeBool:self->_notUnrollable forKey:@"notUnrollable"];
  [coderCopy encodeBool:self->_resumeEnabled forKey:@"resumeEnabled"];
}

- (id)getLastFirstError
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v3 = [(EPRoutingSlip *)selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v15;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        errors = [v8 errors];
        firstObject = [errors firstObject];

        if (firstObject)
        {
          errors2 = [v8 errors];
          firstObject2 = [errors2 firstObject];

          v5 = firstObject2;
        }
      }

      v4 = [(EPRoutingSlip *)selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      transaction = self->_transaction;
      v29 = 136315394;
      v30 = "[EPRoutingSlip cancelWithError:]";
      v31 = 2112;
      v32 = transaction;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s - _transaction %@", &v29, 0x16u);
    }
  }

  if ([(EPRoutingSlip *)self state]!= 1)
  {
    v16 = nr_daemon_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (!v17)
    {
      goto LABEL_31;
    }

    v18 = nr_daemon_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      identifier = self->_identifier;
      v29 = 138543362;
      v30 = identifier;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "EPRoutingSlip[%{public}@]: cancelWithError on dead routing slip does nothing", &v29, 0xCu);
    }

LABEL_17:

    goto LABEL_31;
  }

  if (![(EPRoutingSlip *)self notUnrollable])
  {
    [(EPRoutingSlip *)self setDidFail:1];
  }

  v9 = nr_daemon_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = nr_daemon_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_identifier;
      currentEntry = [(EPRoutingSlip *)self currentEntry];
      shortDescription = [currentEntry shortDescription];
      v29 = 138543874;
      v30 = v12;
      v31 = 2114;
      v32 = shortDescription;
      v33 = 2114;
      v34 = errorCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPRoutingSlip[%{public}@]: canceling running transaction %{public}@ with error:%{public}@", &v29, 0x20u);
    }
  }

  v15 = self->_transaction;
  if (objc_opt_respondsToSelector())
  {
    [(EPTransaction *)self->_transaction cancelWithError:errorCopy];
    goto LABEL_31;
  }

  if (objc_opt_respondsToSelector())
  {
    if (errorCopy)
    {
      currentEntry2 = [(EPRoutingSlip *)self currentEntry];
      errors = [currentEntry2 errors];
      [errors addObject:errorCopy];
    }

    [(EPTransaction *)self->_transaction cancel];
    goto LABEL_31;
  }

  v22 = self->_transaction;
  v23 = nr_daemon_log();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

  if (v22)
  {
    if (!v24)
    {
      goto LABEL_31;
    }

    v18 = nr_daemon_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v25 = self->_identifier;
      currentEntry3 = [(EPRoutingSlip *)self currentEntry];
      shortDescription2 = [currentEntry3 shortDescription];
      v29 = 138543618;
      v30 = v25;
      v31 = 2114;
      v32 = shortDescription2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "EPRoutingSlip[%{public}@]: canceling running transaction %{public}@ failed, transaction does not respond to the cancel selector!", &v29, 0x16u);
    }

    goto LABEL_17;
  }

  if (v24)
  {
    v28 = nr_daemon_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Transaction is nil, flagging for cancellation once the routingSlip is setup", &v29, 2u);
    }
  }

  [(EPRoutingSlip *)self setQueuedCancel:1];
LABEL_31:
}

- (EPRoutingSlipDelegate)routingSlipDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_routingSlipDelegate);

  return WeakRetained;
}

@end