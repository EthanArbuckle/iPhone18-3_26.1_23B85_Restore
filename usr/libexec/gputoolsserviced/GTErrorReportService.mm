@interface GTErrorReportService
- (GTErrorReportService)init;
- (unint64_t)registerObserver:(id)observer;
- (void)fetchRejectedConnections:(id)connections;
- (void)reportRejectedConnection:(id)connection;
@end

@implementation GTErrorReportService

- (unint64_t)registerObserver:(id)observer
{
  observers = self->_observers;
  observerCopy = observer;
  v6 = [(GTObservableService *)observers registerObserver:observerCopy];
  v7 = [(NSMutableArray *)self->_rejectedConnections copy];
  [observerCopy notifyRejectedConnections:v7];

  return v6;
}

- (void)reportRejectedConnection:(id)connection
{
  connectionCopy = connection;
  v5 = objc_opt_new();
  v6 = +[NSDate date];
  [v5 setTimestamp:v6];

  LODWORD(v6) = xpc_connection_get_pid(connectionCopy);
  [v5 setPid:v6];
  if (proc_name([v5 pid], buffer, 0x200u))
  {
    v7 = [NSString stringWithUTF8String:buffer];
    [v5 setName:v7];
  }

  name = [v5 name];

  if (!name)
  {
    [v5 setName:@"???"];
  }

  [(NSMutableArray *)self->_rejectedConnections setObject:v5 atIndexedSubscript:self->_nextRejectedConnectionIndex];
  rejectedConnections = self->_rejectedConnections;
  nextRejectedConnectionIndex = self->_nextRejectedConnectionIndex;
  if (nextRejectedConnectionIndex + 1 <= 0x13)
  {
    v11 = nextRejectedConnectionIndex + 1;
  }

  else
  {
    v11 = 0;
  }

  self->_nextRejectedConnectionIndex = v11;
  v12 = [(NSMutableArray *)rejectedConnections copy];
  observers = self->_observers;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001E1B8;
  v15[3] = &unk_100040B70;
  v16 = v12;
  v14 = v12;
  [(GTObservableService *)observers notifyAll:v15];
}

- (void)fetchRejectedConnections:(id)connections
{
  rejectedConnections = self->_rejectedConnections;
  connectionsCopy = connections;
  v6 = [(NSMutableArray *)rejectedConnections copy];
  (*(connections + 2))(connectionsCopy, v6, 0);
}

- (GTErrorReportService)init
{
  v8.receiver = self;
  v8.super_class = GTErrorReportService;
  v2 = [(GTErrorReportService *)&v8 init];
  if (v2)
  {
    v3 = [NSMutableArray arrayWithCapacity:20];
    rejectedConnections = v2->_rejectedConnections;
    v2->_rejectedConnections = v3;

    v2->_nextRejectedConnectionIndex = 0;
    v5 = objc_opt_new();
    observers = v2->_observers;
    v2->_observers = v5;
  }

  return v2;
}

@end