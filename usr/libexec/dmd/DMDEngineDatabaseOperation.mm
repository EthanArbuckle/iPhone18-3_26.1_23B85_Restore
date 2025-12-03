@interface DMDEngineDatabaseOperation
- (DMDEngineDatabaseOperation)init;
- (void)dealloc;
- (void)main;
- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)context;
@end

@implementation DMDEngineDatabaseOperation

- (void)dealloc
{
  v3 = self->_transaction;
  v4 = dispatch_time(0, 5000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = nullsub_2;
  block[3] = &unk_1000CE5A0;
  v8 = v3;
  v5 = v3;
  dispatch_after(v4, &_dispatch_main_q, block);

  v6.receiver = self;
  v6.super_class = DMDEngineDatabaseOperation;
  [(DMDEngineDatabaseOperation *)&v6 dealloc];
}

- (DMDEngineDatabaseOperation)init
{
  v8.receiver = self;
  v8.super_class = DMDEngineDatabaseOperation;
  v2 = [(DMDEngineDatabaseOperation *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(DMDEngineDatabaseOperation *)v2 description];
    [v4 UTF8String];
    v5 = os_transaction_create();
    transaction = v3->_transaction;
    v3->_transaction = v5;
  }

  return v3;
}

- (void)main
{
  database = [(DMDEngineDatabaseOperation *)self database];

  if (!database)
  {
    sub_100082FE4(a2, self);
  }

  database2 = [(DMDEngineDatabaseOperation *)self database];
  newBackgroundContext = [database2 newBackgroundContext];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003B628;
  v8[3] = &unk_1000CDC38;
  v8[4] = self;
  v9 = newBackgroundContext;
  v7 = newBackgroundContext;
  [v7 performBlockAndWait:v8];
}

- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)context
{
  v8 = +[NSAssertionHandler currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"DMDEngineDatabaseOperation.m" lineNumber:50 description:{@"%@ must override %@", v6, v7}];
}

@end