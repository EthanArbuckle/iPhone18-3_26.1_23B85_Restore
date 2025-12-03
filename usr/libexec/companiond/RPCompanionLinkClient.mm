@interface RPCompanionLinkClient
- (void)cad_registerEventID:(id)d options:(id)options requireOwnerDevice:(BOOL)device handler:(id)handler;
- (void)cad_registerRequestID:(id)d options:(id)options requireOwnerDevice:(BOOL)device handler:(id)handler;
@end

@implementation RPCompanionLinkClient

- (void)cad_registerRequestID:(id)d options:(id)options requireOwnerDevice:(BOOL)device handler:(id)handler
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100022BB4;
  v10[3] = &unk_10008A918;
  deviceCopy = device;
  handlerCopy = handler;
  v9 = handlerCopy;
  [(RPCompanionLinkClient *)self registerRequestID:d options:options handler:v10];
}

- (void)cad_registerEventID:(id)d options:(id)options requireOwnerDevice:(BOOL)device handler:(id)handler
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100022DE0;
  v10[3] = &unk_10008A940;
  deviceCopy = device;
  handlerCopy = handler;
  v9 = handlerCopy;
  [(RPCompanionLinkClient *)self registerEventID:d options:options handler:v10];
}

@end