@interface GTErrorReportServiceObserver
- (void)notifyRejectedConnections:(id)connections;
@end

@implementation GTErrorReportServiceObserver

- (void)notifyRejectedConnections:(id)connections
{
  connectionsCopy = connections;
  xdict = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(xdict, "_cmd", Name);
  xpc_dictionary_set_uint64(xdict, "_port", [(GTServiceObserver *)self replyStream]);
  replyPath = [(GTServiceObserver *)self replyPath];
  xpc_dictionary_set_value(xdict, "_replyPath", replyPath);

  xpc_dictionary_set_nsobject(xdict, "response", connectionsCopy);
  connection = [(GTServiceObserver *)self connection];
  [connection sendMessage:xdict];
}

@end