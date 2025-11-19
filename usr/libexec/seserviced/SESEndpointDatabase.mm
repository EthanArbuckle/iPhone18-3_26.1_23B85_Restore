@interface SESEndpointDatabase
- (id)context;
- (void)handleMFDNotification:(id)a3;
- (void)startTransaction:(id)a3;
@end

@implementation SESEndpointDatabase

- (void)handleMFDNotification:(id)a3
{
  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Received MFD notification", buf, 2u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003ACB0C;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)startTransaction:(id)a3
{
  v8 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_transactionInProgress)
  {
    sub_1003AD018();
    goto LABEL_7;
  }

  managedObjectContext = self->_managedObjectContext;
  if (!managedObjectContext)
  {
LABEL_7:
    v6 = sub_1003ACFF4();
    [(SESEndpointDatabase *)v6 context];
    return;
  }

  self->_transactionInProgress = 1;
  v5 = sub_10002D094(SESDatabaseTransaction, self, managedObjectContext);
  v8[2](v8, v5);

  self->_transactionInProgress = 0;
}

- (id)context
{
  dispatch_assert_queue_V2(self->_queue);
  managedObjectContext = self->_managedObjectContext;

  return managedObjectContext;
}

@end