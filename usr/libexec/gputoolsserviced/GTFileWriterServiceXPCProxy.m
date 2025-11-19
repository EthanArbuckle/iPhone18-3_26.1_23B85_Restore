@interface GTFileWriterServiceXPCProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (GTFileWriterServiceXPCProxy)initWithConnection:(id)a3 remoteProperties:(id)a4;
- (void)beginTransferSessionWithFileEntries:(id)a3 basePath:(id)a4 toDevice:(id)a5 options:(id)a6 sessionID:(unint64_t)a7 completionHandler:(id)a8;
- (void)initiateTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 options:(id)a6 completionHandler:(id)a7;
- (void)startTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 options:(id)a6 completionHandler:(id)a7;
- (void)startTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 toDirectory:(id)a6 options:(id)a7 completionHandler:(id)a8;
- (void)writeFileData:(id)a3 sessionID:(unint64_t)a4 completionHandler:(id)a5;
@end

@implementation GTFileWriterServiceXPCProxy

- (GTFileWriterServiceXPCProxy)initWithConnection:(id)a3 remoteProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = GTFileWriterServiceXPCProxy;
  v8 = [(GTFileWriterServiceXPCProxy *)&v19 init];
  if (v8)
  {
    v9 = &OBJC_PROTOCOL___GTFileWriterService;
    v10 = [GTServiceConnection alloc];
    v11 = [v7 deviceUDID];
    v12 = -[GTServiceConnection initWithConnection:device:port:](v10, "initWithConnection:device:port:", v6, v11, [v7 servicePort]);
    connection = v8->_connection;
    v8->_connection = v12;

    v14 = [GTServiceProperties protocolMethods:v9];
    v15 = [v7 protocolMethods];
    v16 = newSetWithArrayMinusArray(v14, v15);
    ignoreMethods = v8->_ignoreMethods;
    v8->_ignoreMethods = v16;
  }

  return v8;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  ignoreMethods = self->_ignoreMethods;
  v6 = NSStringFromSelector(a3);
  if ([(NSSet *)ignoreMethods containsObject:v6])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = GTFileWriterServiceXPCProxy;
    v7 = [(GTFileWriterServiceXPCProxy *)&v9 respondsToSelector:a3];
  }

  return v7;
}

- (void)initiateTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 options:(id)a6 completionHandler:(id)a7
{
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "fileEntries", v17);

  v20 = [v16 UTF8String];
  xpc_dictionary_set_string(empty, "path", v20);
  v21 = [v15 UTF8String];

  xpc_dictionary_set_string(empty, "deviceUDID", v21);
  xpc_dictionary_set_nsobject(empty, "options", v14);

  connection = self->_connection;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100010FFC;
  v24[3] = &unk_100040B98;
  v25 = v13;
  v23 = v13;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v24];
}

- (void)startTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 options:(id)a6 completionHandler:(id)a7
{
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "fileEntries", v17);

  v20 = [v16 UTF8String];
  xpc_dictionary_set_string(empty, "path", v20);
  v21 = [v15 UTF8String];

  xpc_dictionary_set_string(empty, "deviceUDID", v21);
  xpc_dictionary_set_nsobject(empty, "options", v14);

  connection = self->_connection;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100011214;
  v24[3] = &unk_100040B98;
  v25 = v13;
  v23 = v13;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v24];
}

- (void)startTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 toDirectory:(id)a6 options:(id)a7 completionHandler:(id)a8
{
  v15 = a7;
  v16 = a8;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "fileEntries", v20);

  v23 = [v19 UTF8String];
  xpc_dictionary_set_string(empty, "path", v23);
  v24 = [v18 UTF8String];

  xpc_dictionary_set_string(empty, "deviceUDID", v24);
  xpc_dictionary_set_nsobject(empty, "directory", v17);
  v25 = _CFURLCopySecurityScopeFromFileURL();

  if (v25)
  {
    BytePtr = CFDataGetBytePtr(v25);
    xpc_dictionary_set_string(empty, "sandboxExtension", BytePtr);
    CFRelease(v25);
  }

  xpc_dictionary_set_nsobject(empty, "options", v15);
  connection = self->_connection;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000114D0;
  v29[3] = &unk_100040B98;
  v30 = v16;
  v28 = v16;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v29];
}

- (void)beginTransferSessionWithFileEntries:(id)a3 basePath:(id)a4 toDevice:(id)a5 options:(id)a6 sessionID:(unint64_t)a7 completionHandler:(id)a8
{
  v15 = a8;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "fileEntries", v19);

  v22 = [v18 UTF8String];
  xpc_dictionary_set_string(empty, "path", v22);
  v23 = [v17 UTF8String];

  xpc_dictionary_set_string(empty, "deviceUDID", v23);
  xpc_dictionary_set_nsobject(empty, "options", v16);

  xpc_dictionary_set_uint64(empty, "sessionID", a7);
  connection = self->_connection;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10001174C;
  v26[3] = &unk_100040B98;
  v27 = v15;
  v25 = v15;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v26];
}

- (void)writeFileData:(id)a3 sessionID:(unint64_t)a4 completionHandler:(id)a5
{
  v9 = a5;
  v10 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsdata(empty, "data", v10);

  xpc_dictionary_set_uint64(empty, "sessionID", a4);
  connection = self->_connection;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100011904;
  v15[3] = &unk_100040B98;
  v16 = v9;
  v14 = v9;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v15];
}

@end