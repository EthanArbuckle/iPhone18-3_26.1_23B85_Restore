@interface GTErrorReportServiceXPCDispatcher
- (GTErrorReportServiceXPCDispatcher)initWithService:(id)service properties:(id)properties;
- (void)broadcastDisconnect:(id)disconnect replyConnection:(id)connection;
- (void)deregisterObserver_:(id)observer_ replyConnection:(id)connection;
- (void)fetchRejectedConnections_:(id)connections_ replyConnection:(id)connection;
- (void)registerObserver_:(id)observer_ replyConnection:(id)connection;
@end

@implementation GTErrorReportServiceXPCDispatcher

- (GTErrorReportServiceXPCDispatcher)initWithService:(id)service properties:(id)properties
{
  serviceCopy = service;
  protocolMethods = [properties protocolMethods];
  v9 = [protocolMethods mutableCopy];

  [v9 addObject:@"broadcastDisconnect"];
  v13.receiver = self;
  v13.super_class = GTErrorReportServiceXPCDispatcher;
  v10 = [(GTXPCDispatcher *)&v13 initWithProtocolMethods:v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_service, service);
  }

  return v11;
}

- (void)fetchRejectedConnections_:(id)connections_ replyConnection:(id)connection
{
  connectionCopy = connection;
  v7 = gt_xpc_dictionary_create_reply(connections_);
  service = self->_service;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000014DC;
  v11[3] = &unk_100040938;
  v12 = v7;
  v13 = connectionCopy;
  v9 = connectionCopy;
  v10 = v7;
  [(GTErrorReportService *)service fetchRejectedConnections:v11];
}

- (void)registerObserver_:(id)observer_ replyConnection:(id)connection
{
  connectionCopy = connection;
  observer_Copy = observer_;
  v10 = [(GTServiceObserver *)[GTErrorReportServiceObserver alloc] initWithMessage:observer_Copy notifyConnection:connectionCopy];
  v8 = [(GTErrorReportService *)self->_service registerObserver:v10];
  v9 = gt_xpc_dictionary_create_reply(observer_Copy);

  xpc_dictionary_set_uint64(v9, "observerId", v8);
  [connectionCopy sendMessage:v9];
}

- (void)deregisterObserver_:(id)observer_ replyConnection:(id)connection
{
  connectionCopy = connection;
  observer_Copy = observer_;
  [(GTErrorReportService *)self->_service deregisterObserver:xpc_dictionary_get_uint64(observer_Copy, "observerId")];
  v8 = gt_xpc_dictionary_create_reply(observer_Copy);

  [connectionCopy sendMessage:v8];
}

- (void)broadcastDisconnect:(id)disconnect replyConnection:(id)connection
{
  connectionCopy = connection;
  v7 = xpc_dictionary_get_array(disconnect, "_pathHistory");
  [(GTErrorReportService *)self->_service deregisterObserversForConnection:connectionCopy path:v7];
}

@end