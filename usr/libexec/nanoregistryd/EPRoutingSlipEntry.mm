@interface EPRoutingSlipEntry
- (BOOL)notUnrollable;
- (BOOL)persistWhilePending;
- (BOOL)resumeEnabled;
- (EPRoutingSlip)routingSlip;
- (EPRoutingSlipEntry)init;
- (EPRoutingSlipEntry)initWithCoder:(id)coder;
- (EPRoutingSlipEntry)initWithName:(id)name transactionClass:(Class)class operands:(id)operands;
- (NSError)routingSlipError;
- (NSString)printableName;
- (OS_dispatch_queue)queue;
- (id)description;
- (id)newTransaction;
- (id)objectForKeyedSubscript:(id)subscript;
- (id)shortDescription;
- (id)transactionClasses;
- (void)encodeWithCoder:(id)coder;
- (void)persist;
- (void)setRoutingSlip:(id)slip;
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

- (EPRoutingSlipEntry)initWithName:(id)name transactionClass:(Class)class operands:(id)operands
{
  nameCopy = name;
  operandsCopy = operands;
  v11 = [(EPRoutingSlipEntry *)self init];
  if (v11)
  {
    v12 = +[NSUUID UUID];
    uUIDString = [v12 UUIDString];
    identifier = v11->_identifier;
    v11->_identifier = uUIDString;

    objc_storeStrong(&v11->_name, name);
    objc_storeStrong(&v11->_transactionClass, class);
    v15 = [operandsCopy mutableCopy];
    operands = v11->_operands;
    v11->_operands = v15;
  }

  return v11;
}

- (void)setRoutingSlip:(id)slip
{
  objc_storeWeak(&self->_routingSlip, slip);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_operands allValues];
  v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        WeakRetained = objc_loadWeakRetained(&self->_routingSlip);
        [v9 setRoutingSlip:WeakRetained];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (NSError)routingSlipError
{
  WeakRetained = objc_loadWeakRetained(&self->_routingSlip);
  getLastFirstError = [WeakRetained getLastFirstError];

  return getLastFirstError;
}

- (OS_dispatch_queue)queue
{
  v2 = +[NRQueue registryDaemonQueue];
  queue = [v2 queue];

  return queue;
}

- (BOOL)notUnrollable
{
  WeakRetained = objc_loadWeakRetained(&self->_routingSlip);
  notUnrollable = [WeakRetained notUnrollable];

  return notUnrollable;
}

- (BOOL)persistWhilePending
{
  WeakRetained = objc_loadWeakRetained(&self->_routingSlip);
  persistWhilePending = [WeakRetained persistWhilePending];

  return persistWhilePending;
}

- (BOOL)resumeEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_routingSlip);
  resumeEnabled = [WeakRetained resumeEnabled];

  return resumeEnabled;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  operands = [(EPRoutingSlipEntry *)self operands];
  v6 = [operands objectForKeyedSubscript:subscriptCopy];

  value = [v6 value];

  return value;
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
  transactionClass = [(EPRoutingSlipEntry *)self transactionClass];

  return objc_alloc_init(transactionClass);
}

- (EPRoutingSlipEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(EPRoutingSlipEntry *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    if (!v5->_identifier)
    {
      v8 = +[NSUUID UUID];
      uUIDString = [v8 UUIDString];
      v10 = v5->_identifier;
      v5->_identifier = uUIDString;
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v11;

    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v13 = [NSArray arrayWithObjects:v28 count:2];
    v14 = [NSSet setWithArray:v13];
    v15 = sub_1000E82B4();
    v16 = [v14 setByAddingObjectsFromSet:v15];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"operands"];
    operands = v5->_operands;
    v5->_operands = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionClassName"];
    v20 = NSClassFromString(v19);
    transactionClass = v5->_transactionClass;
    v5->_transactionClass = v20;

    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v22 = [NSArray arrayWithObjects:v27 count:2];
    v23 = [NSSet setWithArray:v22];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"errors"];
    errors = v5->_errors;
    v5->_errors = v24;

    v5->_canceled = [coderCopy decodeBoolForKey:@"canceled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_operands forKey:@"operands"];
  v5 = NSStringFromClass(self->_transactionClass);
  [coderCopy encodeObject:v5 forKey:@"transactionClassName"];

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

          nr_filteredError = [*(*(&v13 + 1) + 8 * v11) nr_filteredError];
          [v6 addObject:nr_filteredError];

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

  [coderCopy encodeObject:v6 forKey:{@"errors", v13}];
  [coderCopy encodeBool:self->_canceled forKey:@"canceled"];
}

- (id)description
{
  shortDescription = [(EPRoutingSlipEntry *)self shortDescription];
  joinedDescription = [(NSMutableDictionary *)self->_operands joinedDescription];
  joinedDescription2 = [(NSMutableArray *)self->_errors joinedDescription];
  v6 = [NSString stringWithFormat:@"%@(%@)\n%@", shortDescription, joinedDescription, joinedDescription2];

  return v6;
}

- (id)shortDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  identifier = self->_identifier;
  printableName = [(EPRoutingSlipEntry *)self printableName];
  v7 = [NSString stringWithFormat:@"%@[%@]: %@", v4, identifier, printableName];

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