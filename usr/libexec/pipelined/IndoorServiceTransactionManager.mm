@interface IndoorServiceTransactionManager
- (BOOL)closeTransactionWithDescription:(id)a3;
- (BOOL)hasOpenTransactionWithDescription:(id)a3;
- (BOOL)isLastOpenTransactionWithDescription:(id)a3;
- (IndoorServiceTransactionManager)init;
- (unint64_t)numOpenTransactions;
- (void)dealloc;
- (void)openTransactionWithDescription:(id)a3;
@end

@implementation IndoorServiceTransactionManager

- (unint64_t)numOpenTransactions
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_activeTransactions;
  v4 = 0;
  v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_activeTransactions objectForKey:*(*(&v11 + 1) + 8 * v7), v11];
        v9 = [v8 count];

        v4 += v9;
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v4;
}

- (IndoorServiceTransactionManager)init
{
  v6.receiver = self;
  v6.super_class = IndoorServiceTransactionManager;
  v2 = [(IndoorServiceTransactionManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    activeTransactions = v2->_activeTransactions;
    v2->_activeTransactions = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(NSMutableDictionary *)self->_activeTransactions removeAllObjects];
  v3.receiver = self;
  v3.super_class = IndoorServiceTransactionManager;
  [(IndoorServiceTransactionManager *)&v3 dealloc];
}

- (void)openTransactionWithDescription:(id)a3
{
  v4 = a3;
  if (qword_10045B050 != -1)
  {
    sub_10038798C();
  }

  v5 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "IndoorServiceTransactionManager: opening a transaction w/ name %@", &v13, 0xCu);
  }

  v6 = [(NSMutableDictionary *)self->_activeTransactions objectForKey:v4];
  if (v6)
  {
    v7 = v4;
    [v4 UTF8String];
    v8 = os_transaction_create();
    [v6 addObject:v8];
  }

  else
  {
    activeTransactions = self->_activeTransactions;
    v10 = v4;
    [v4 UTF8String];
    v8 = os_transaction_create();
    v11 = [NSMutableArray arrayWithObject:v8];
    [(NSMutableDictionary *)activeTransactions setObject:v11 forKey:v4];
  }

  if (qword_10045B050 != -1)
  {
    sub_1003879A0();
  }

  v12 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "IndoorServiceTransactionManager: opened a transaction w/ name %@", &v13, 0xCu);
  }
}

- (BOOL)hasOpenTransactionWithDescription:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_activeTransactions objectForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count] != 0;

    return v5;
  }

  else
  {

    return 0;
  }
}

- (BOOL)isLastOpenTransactionWithDescription:(id)a3
{
  v4 = a3;
  if ([(IndoorServiceTransactionManager *)self numOpenTransactions]== 1)
  {
    v5 = [(IndoorServiceTransactionManager *)self hasOpenTransactionWithDescription:v4];

    return v5;
  }

  else
  {

    return 0;
  }
}

- (BOOL)closeTransactionWithDescription:(id)a3
{
  v4 = a3;
  if (qword_10045B050 != -1)
  {
    sub_10038798C();
  }

  v5 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *v28 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "IndoorServiceTransactionManager: request to end transaction w/ name %@", buf, 0xCu);
  }

  v6 = [(IndoorServiceTransactionManager *)self hasOpenTransactionWithDescription:v4];
  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_activeTransactions objectForKey:v4];
    v8 = v7;
    if (v7)
    {
      if ([v7 count])
      {
        v9 = [v8 lastObject];
        [v8 removeLastObject];

        if (![v8 count])
        {
          [(NSMutableDictionary *)self->_activeTransactions removeObjectForKey:v4];
        }

        if (qword_10045B050 == -1)
        {
          goto LABEL_11;
        }

        goto LABEL_30;
      }

      v20 = sub_10034D0D0();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        v21 = v4;
        v22 = [v4 UTF8String];
        *buf = 68289795;
        *v28 = 0;
        *&v28[4] = 2082;
        *&v28[6] = "";
        v29 = 2081;
        v30 = v22;
        v31 = 2082;
        v32 = "assert";
        v33 = 2081;
        v34 = "[transactionsOfType count] > 0";
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:IndoorServiceTransactionManager: expected to have at least one transaction, type:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      v23 = sub_10034D0D0();
      if (os_signpost_enabled(v23))
      {
        v24 = v4;
        v25 = [v4 UTF8String];
        *buf = 68289795;
        *v28 = 0;
        *&v28[4] = 2082;
        *&v28[6] = "";
        v29 = 2081;
        v30 = v25;
        v31 = 2082;
        v32 = "assert";
        v33 = 2081;
        v34 = "[transactionsOfType count] > 0";
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "IndoorServiceTransactionManager: expected to have at least one transaction", "{msg%{public}.0s:IndoorServiceTransactionManager: expected to have at least one transaction, type:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      v18 = sub_10034D0D0();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v26 = v4;
        sub_1003879C8([v4 UTF8String], buf);
      }

      v6 = 89;
    }

    else
    {
      v12 = sub_10034D0D0();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v13 = v4;
        v14 = [v4 UTF8String];
        *buf = 68289795;
        *v28 = 0;
        *&v28[4] = 2082;
        *&v28[6] = "";
        v29 = 2081;
        v30 = v14;
        v31 = 2082;
        v32 = "assert";
        v33 = 2081;
        v34 = "transactionsOfType";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:IndoorServiceTransactionManager: list of transactions for this type should exist!, type:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      v15 = sub_10034D0D0();
      if (os_signpost_enabled(v15))
      {
        v16 = v4;
        v17 = [v4 UTF8String];
        *buf = 68289795;
        *v28 = 0;
        *&v28[4] = 2082;
        *&v28[6] = "";
        v29 = 2081;
        v30 = v17;
        v31 = 2082;
        v32 = "assert";
        v33 = 2081;
        v34 = "transactionsOfType";
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "IndoorServiceTransactionManager: list of transactions for this type should exist!", "{msg%{public}.0s:IndoorServiceTransactionManager: list of transactions for this type should exist!, type:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      v18 = sub_10034D0D0();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = v4;
        sub_100387A38([v4 UTF8String], buf);
      }

      v6 = 88;
    }

    abort_report_np();
    __break(1u);
LABEL_30:
    sub_1003879A0();
LABEL_11:
    v10 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v28 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "IndoorServiceTransactionManager: successfully closed a transaction w/ name %@", buf, 0xCu);
    }
  }

  return v6;
}

@end