@interface GTFileWriterServiceXPCProxy
- (BOOL)respondsToSelector:(SEL)selector;
- (GTFileWriterServiceXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties;
- (void)beginTransferSessionWithFileEntries:(id)entries basePath:(id)path toDevice:(id)device options:(id)options sessionID:(unint64_t)d completionHandler:(id)handler;
- (void)initiateTransfer:(id)transfer basePath:(id)path fromDevice:(id)device options:(id)options completionHandler:(id)handler;
- (void)startTransfer:(id)transfer basePath:(id)path fromDevice:(id)device options:(id)options completionHandler:(id)handler;
- (void)startTransfer:(id)transfer basePath:(id)path fromDevice:(id)device toDirectory:(id)directory options:(id)options completionHandler:(id)handler;
- (void)writeFileData:(id)data sessionID:(unint64_t)d completionHandler:(id)handler;
@end

@implementation GTFileWriterServiceXPCProxy

- (GTFileWriterServiceXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties
{
  connectionCopy = connection;
  propertiesCopy = properties;
  v19.receiver = self;
  v19.super_class = GTFileWriterServiceXPCProxy;
  v8 = [(GTFileWriterServiceXPCProxy *)&v19 init];
  if (v8)
  {
    v9 = &OBJC_PROTOCOL___GTFileWriterService;
    v10 = [GTServiceConnection alloc];
    deviceUDID = [propertiesCopy deviceUDID];
    v12 = -[GTServiceConnection initWithConnection:device:port:](v10, "initWithConnection:device:port:", connectionCopy, deviceUDID, [propertiesCopy servicePort]);
    connection = v8->_connection;
    v8->_connection = v12;

    v14 = [GTServiceProperties protocolMethods:v9];
    protocolMethods = [propertiesCopy protocolMethods];
    v16 = newSetWithArrayMinusArray(v14, protocolMethods);
    ignoreMethods = v8->_ignoreMethods;
    v8->_ignoreMethods = v16;
  }

  return v8;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  ignoreMethods = self->_ignoreMethods;
  v6 = NSStringFromSelector(selector);
  if ([(NSSet *)ignoreMethods containsObject:v6])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = GTFileWriterServiceXPCProxy;
    v7 = [(GTFileWriterServiceXPCProxy *)&v9 respondsToSelector:selector];
  }

  return v7;
}

- (void)initiateTransfer:(id)transfer basePath:(id)path fromDevice:(id)device options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  deviceCopy = device;
  pathCopy = path;
  transferCopy = transfer;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "fileEntries", transferCopy);

  uTF8String = [pathCopy UTF8String];
  xpc_dictionary_set_string(empty, "path", uTF8String);
  uTF8String2 = [deviceCopy UTF8String];

  xpc_dictionary_set_string(empty, "deviceUDID", uTF8String2);
  xpc_dictionary_set_nsobject(empty, "options", optionsCopy);

  connection = self->_connection;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100010FFC;
  v24[3] = &unk_100040B98;
  v25 = handlerCopy;
  v23 = handlerCopy;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v24];
}

- (void)startTransfer:(id)transfer basePath:(id)path fromDevice:(id)device options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  deviceCopy = device;
  pathCopy = path;
  transferCopy = transfer;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "fileEntries", transferCopy);

  uTF8String = [pathCopy UTF8String];
  xpc_dictionary_set_string(empty, "path", uTF8String);
  uTF8String2 = [deviceCopy UTF8String];

  xpc_dictionary_set_string(empty, "deviceUDID", uTF8String2);
  xpc_dictionary_set_nsobject(empty, "options", optionsCopy);

  connection = self->_connection;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100011214;
  v24[3] = &unk_100040B98;
  v25 = handlerCopy;
  v23 = handlerCopy;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v24];
}

- (void)startTransfer:(id)transfer basePath:(id)path fromDevice:(id)device toDirectory:(id)directory options:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  directoryCopy = directory;
  deviceCopy = device;
  pathCopy = path;
  transferCopy = transfer;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "fileEntries", transferCopy);

  uTF8String = [pathCopy UTF8String];
  xpc_dictionary_set_string(empty, "path", uTF8String);
  uTF8String2 = [deviceCopy UTF8String];

  xpc_dictionary_set_string(empty, "deviceUDID", uTF8String2);
  xpc_dictionary_set_nsobject(empty, "directory", directoryCopy);
  v25 = _CFURLCopySecurityScopeFromFileURL();

  if (v25)
  {
    BytePtr = CFDataGetBytePtr(v25);
    xpc_dictionary_set_string(empty, "sandboxExtension", BytePtr);
    CFRelease(v25);
  }

  xpc_dictionary_set_nsobject(empty, "options", optionsCopy);
  connection = self->_connection;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000114D0;
  v29[3] = &unk_100040B98;
  v30 = handlerCopy;
  v28 = handlerCopy;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v29];
}

- (void)beginTransferSessionWithFileEntries:(id)entries basePath:(id)path toDevice:(id)device options:(id)options sessionID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  deviceCopy = device;
  pathCopy = path;
  entriesCopy = entries;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "fileEntries", entriesCopy);

  uTF8String = [pathCopy UTF8String];
  xpc_dictionary_set_string(empty, "path", uTF8String);
  uTF8String2 = [deviceCopy UTF8String];

  xpc_dictionary_set_string(empty, "deviceUDID", uTF8String2);
  xpc_dictionary_set_nsobject(empty, "options", optionsCopy);

  xpc_dictionary_set_uint64(empty, "sessionID", d);
  connection = self->_connection;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10001174C;
  v26[3] = &unk_100040B98;
  v27 = handlerCopy;
  v25 = handlerCopy;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v26];
}

- (void)writeFileData:(id)data sessionID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsdata(empty, "data", dataCopy);

  xpc_dictionary_set_uint64(empty, "sessionID", d);
  connection = self->_connection;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100011904;
  v15[3] = &unk_100040B98;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v15];
}

@end