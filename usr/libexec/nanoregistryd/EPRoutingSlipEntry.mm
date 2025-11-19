@interface EPRoutingSlipEntry
- (BOOL)notUnrollable;
- (BOOL)persistWhilePending;
- (BOOL)resumeEnabled;
- (EPRoutingSlip)routingSlip;
- (EPRoutingSlipEntry)init;
- (EPRoutingSlipEntry)initWithCoder:(id)a3;
- (EPRoutingSlipEntry)initWithName:(id)a3 transactionClass:(Class)a4 operands:(id)a5;
- (NSError)routingSlipError;
- (NSString)printableName;
- (OS_dispatch_queue)queue;
- (id)description;
- (id)newTransaction;
- (id)objectForKeyedSubscript:(id)a3;
- (id)shortDescription;
- (id)transactionClasses;
- (void)encodeWithCoder:(id)a3;
- (void)persist;
- (void)setRoutingSlip:(id)a3;
@end

@implementation EPRoutingSlipEntry

- (NSString)printableName
{
  v3 = NSStringFromClass(self->_transactionClass);
  v4 = [NSString stringWithFormat:@"%@[%@]", v3, self->_name];

  return v4;
}

- (EPRoutingSlipEntry)init
{
  v8.receiver = self;
  v8.super_class = EPRoutingSlipEntry;
  v2 = [(EPRoutingSlipEntry *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    operands = v2->_operands;
    v2->_operands = v3;

    v5 = +[NSMutableArray array];
    errors = v2->_errors;
    v2->_errors = v5;
  }

  return v2;
}

- (EPRoutingSlipEntry)initWithName:(id)a3 transactionClass:(Class)a4 operands:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [(EPRoutingSlipEntry *)self init];
  if (v11)
  {
    v12 = +[NSUUID UUID];
    v13 = [v12 UUIDString];
    identifier = v11->_identifier;
    v11->_identifier = v13;

    objc_storeStrong(&v11->_name, a3);
    objc_storeStrong(&v11->_transactionClass, a4);
    v15 = [v10 mutableCopy];
    operands = v11->_operands;
    v11->_operands = v15;
  }

  return v11;
}

- (void)setRoutingSlip:(id)a3
{
  objc_storeWeak(&self->_routingSlip, a3);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSMutableDictionary *)self->_operands allValues];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        WeakRetained = objc_loadWeakRetained(&self->_routingSlip);
        [v9 setRoutingSlip:WeakRetained];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (NSError)routingSlipError
{
  WeakRetained = objc_loadWeakRetained(&self->_routingSlip);
  v3 = [WeakRetained getLastFirstError];

  return v3;
}

- (OS_dispatch_queue)queue
{
  v2 = +[NRQueue registryDaemonQueue];
  v3 = [v2 queue];

  return v3;
}

- (BOOL)notUnrollable
{
  WeakRetained = objc_loadWeakRetained(&self->_routingSlip);
  v3 = [WeakRetained notUnrollable];

  return v3;
}

- (BOOL)persistWhilePending
{
  WeakRetained = objc_loadWeakRetained(&self->_routingSlip);
  v3 = [WeakRetained persistWhilePending];

  return v3;
}

- (BOOL)resumeEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_routingSlip);
  v3 = [WeakRetained resumeEnabled];

  return v3;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = a3;
  v5 = [(EPRoutingSlipEntry *)self operands];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 value];

  return v7;
}

- (id)transactionClasses
{
  if (qword_1001B3B80 != -1)
  {
    sub_100106944();
  }

  v3 = qword_1001B3B78;

  return v3;
}

- (id)newTransaction
{
  v2 = [(EPRoutingSlipEntry *)self transactionClass];

  return objc_alloc_init(v2);
}

- (EPRoutingSlipEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(EPRoutingSlipEntry *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    if (!v5->_identifier)
    {
      v8 = +[NSUUID UUID];
      v9 = [v8 UUIDString];
      v10 = v5->_identifier;
      v5->_identifier = v9;
    }

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v11;

    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v13 = [NSArray arrayWithObjects:v28 count:2];
    v14 = [NSSet setWithArray:v13];
    v15 = sub_1000E82B4();
    v16 = [v14 setByAddingObjectsFromSet:v15];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"operands"];
    operands = v5->_operands;
    v5->_operands = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionClassName"];
    v20 = NSClassFromString(v19);
    transactionClass = v5->_transactionClass;
    v5->_transactionClass = v20;

    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v22 = [NSArray arrayWithObjects:v27 count:2];
    v23 = [NSSet setWithArray:v22];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"errors"];
    errors = v5->_errors;
    v5->_errors = v24;

    v5->_canceled = [v4 decodeBoolForKey:@"canceled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_identifier forKey:@"identifier"];
  [v4 encodeObject:self->_name forKey:@"name"];
  [v4 encodeObject:self->_operands forKey:@"operands"];
  v5 = NSStringFromClass(self->_transactionClass);
  [v4 encodeObject:v5 forKey:@"transactionClassName"];

  if (self->_errors)
  {
    v6 = +[NSMutableArray array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = self->_errors;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v13 + 1) + 8 * v11) nr_filteredError];
          [v6 addObject:v12];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  [v4 encodeObject:v6 forKey:{@"errors", v13}];
  [v4 encodeBool:self->_canceled forKey:@"canceled"];
}

- (id)description
{
  v3 = [(EPRoutingSlipEntry *)self shortDescription];
  v4 = [(NSMutableDictionary *)self->_operands joinedDescription];
  v5 = [(NSMutableArray *)self->_errors joinedDescription];
  v6 = [NSString stringWithFormat:@"%@(%@)\n%@", v3, v4, v5];

  return v6;
}

- (id)shortDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  identifier = self->_identifier;
  v6 = [(EPRoutingSlipEntry *)self printableName];
  v7 = [NSString stringWithFormat:@"%@[%@]: %@", v4, identifier, v6];

  return v7;
}

- (void)persist
{
  WeakRetained = objc_loadWeakRetained(&self->_routingSlip);
  [WeakRetained persist];
}

- (EPRoutingSlip)routingSlip
{
  WeakRetained = objc_loadWeakRetained(&self->_routingSlip);

  return WeakRetained;
}

@end