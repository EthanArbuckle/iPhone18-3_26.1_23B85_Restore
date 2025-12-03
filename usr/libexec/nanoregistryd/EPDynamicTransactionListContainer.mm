@interface EPDynamicTransactionListContainer
- (EPDynamicTransactionListContainer)init;
- (EPDynamicTransactionListContainer)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EPDynamicTransactionListContainer

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = +[NSMutableSet set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_transactions;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        routingSlip = [v11 routingSlip];
        persistWhilePending = [routingSlip persistWhilePending];

        if (persistWhilePending)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [coderCopy encodeObject:v5 forKey:@"transactions"];
  [coderCopy encodeObject:self->_current forKey:@"current"];
}

- (EPDynamicTransactionListContainer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(EPDynamicTransactionListContainer *)self init];
  if (v5)
  {
    v12[0] = objc_opt_class();
    v12[1] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v12 count:2];
    v7 = [NSSet setWithArray:v6];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"transactions"];

    if (v8)
    {
      objc_storeStrong(&v5->_transactions, v8);
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"current"];
    current = v5->_current;
    v5->_current = v9;
  }

  return v5;
}

- (EPDynamicTransactionListContainer)init
{
  v6.receiver = self;
  v6.super_class = EPDynamicTransactionListContainer;
  v2 = [(EPDynamicTransactionListContainer *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableSet set];
    transactions = v2->_transactions;
    v2->_transactions = v3;
  }

  return v2;
}

@end