@interface ClientOfLocalNoteServer
+ (void)setMonitor:(id)a3;
- (ClientOfLocalNoteServer)initWithClientConnection:(id)a3 configuration:(distnoted_configuration *)a4;
- (NSString)processName;
- (void)addInvalidationHandler:(id)a3;
- (void)dealloc;
- (void)dump;
- (void)enqueuePost:(id)a3;
- (void)flushQueue;
- (void)handlePost:(id)a3 userInfo:(id)a4;
- (void)invalidate;
- (void)postNotification:(__CFString *)a3 object:(__CFString *)a4 token:(unint64_t)a5 options:(unint64_t)a6 immediate:(unsigned __int8)a7 userInfo:(id)a8;
- (void)start:(id)a3;
- (void)startMonitoring;
@end

@implementation ClientOfLocalNoteServer

- (void)invalidate
{
  pid = self->_pid;
  invalid = self->_invalid;
  self->_invalid = invalid + 1;
  if (!invalid)
  {
    client = self->_client;
    self->_client = 0;
    invalidHandlers = self->_invalidHandlers;
    self->_invalidHandlers = 0;
    [(_NSDNXPCConnection *)client invalidate];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = [(NSMutableArray *)invalidHandlers countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(invalidHandlers);
          }

          (*(*(*(&v11 + 1) + 8 * i) + 16))();
        }

        v8 = [(NSMutableArray *)invalidHandlers countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    getpid();
  }

  if (+[ClientOfLocalNoteServer monitor]== self)
  {
    [ClientOfLocalNoteServer setMonitor:0];
  }
}

- (void)dealloc
{
  if ((self->_sandboxReference & 0x8000000000000000) == 0)
  {
    sandbox_reference_release();
  }

  CFRelease(self->_registrar);
  xpc_release(self->_queue);
  v3.receiver = self;
  v3.super_class = ClientOfLocalNoteServer;
  [(ClientOfLocalNoteServer *)&v3 dealloc];
}

- (void)flushQueue
{
  queue = self->_queue;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_100003464;
  applier[3] = &unk_100008488;
  applier[4] = self;
  xpc_array_apply(queue, applier);
  xpc_release(self->_queue);
  self->_queue = xpc_array_create(0, 0);
}

+ (void)setMonitor:(id)a3
{
  if (qword_10000CC40 != a3)
  {

    qword_10000CC40 = a3;
  }
}

- (NSString)processName
{
  v2 = proc_pidpath(self->_pid, buffer, 0x1000u);
  if (v2 < 1)
  {
    return @"(Unknown)";
  }

  v3 = v2;
  v4 = CFStringFileSystemEncoding();
  return CFStringCreateWithBytes(kCFAllocatorSystemDefault, buffer, v3, v4, 0);
}

- (void)startMonitoring
{
  if (![(_NSDNXPCConnection *)self->_client euid])
  {

    [ClientOfLocalNoteServer setMonitor:self];
  }
}

- (void)dump
{
  if (![(_NSDNXPCConnection *)self->_client euid])
  {
    v3 = xpc_array_create(0, 0);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v14 = self;
    obj = [(_NSDNXPCServer *)self->_parent allClients];
    v4 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v17;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v16 + 1) + 8 * i);
          v9 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_string(v9, "process", [objc_msgSend(v8 "processName")]);
          xpc_dictionary_set_int64(v9, "pid", *(v8 + 72));
          v10 = xpc_array_create(0, 0);
          v11 = *(v8 + 24);
          CFXNotificationRegistrarEnumerate();
          xpc_dictionary_set_value(v9, "registrations", v10);
          xpc_release(v10);
          xpc_array_append_value(v3, v9);
          xpc_release(v9);
        }

        v5 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v5);
    }

    v12 = xpc_string_create("dump");
    *keys = off_100008408;
    values[0] = v12;
    values[1] = v3;
    v13 = xpc_dictionary_create(keys, values, 2uLL);
    xpc_release(v12);
    xpc_release(v3);
    [(_NSDNXPCConnection *)v14->_client sendMessage:v13];
    xpc_release(v13);
  }
}

- (ClientOfLocalNoteServer)initWithClientConnection:(id)a3 configuration:(distnoted_configuration *)a4
{
  v15.receiver = self;
  v15.super_class = ClientOfLocalNoteServer;
  v6 = [(ClientOfLocalNoteServer *)&v15 init];
  v6->_pid = xpc_connection_get_pid(a3);
  v6->_pid = xpc_connection_get_pid(a3);
  v13 = 0u;
  v14 = 0u;
  xpc_connection_get_audit_token();
  buffer = 0u;
  v17 = 0u;
  v7 = sandbox_reference_retain_by_audit_token();
  *&v6->_started = 0;
  v6->_sandboxReference = v7;
  v6->_invalidHandlers = objc_opt_new();
  v6->_suspended = 0;
  v6->_registrar = CFXNotificationRegistrarCreate();
  v6->_parent = a4->var1;
  v6->_queue = xpc_array_create(0, 0);
  v6->_client = [[_NSDNXPCConnection alloc] initWithPeerConnection:a3];
  v8 = v6;
  client = v6->_client;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000026E8;
  v12[3] = &unk_100008420;
  v12[4] = v6;
  [(_NSDNXPCConnection *)client addInvalidationHandler:v12];
  [(_NSDNXPCConnection *)v6->_client addTerminationImminentHandler:&stru_100008460];
  snprintf(v18, 0x100uLL, "ClientOfLocalNoteServer.0x%016lx.dq", v6);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002714;
  v11[3] = &unk_1000084B0;
  v11[4] = v6;
  v11[5] = a4;
  [(_NSDNXPCConnection *)v6->_client setHandleMessage:v11];
  return v6;
}

- (void)addInvalidationHandler:(id)a3
{
  v4 = [a3 copy];
  [(NSMutableArray *)self->_invalidHandlers addObject:v4];
}

- (void)start:(id)a3
{
  started = self->_started;
  self->_started = started + 1;
  if (!started)
  {
    v5 = self->_client;
    if (v5)
    {
      v6 = v5;
      [(_NSDNXPCConnection *)v5 start:a3];
    }
  }
}

- (void)enqueuePost:(id)a3
{
  xpc_array_append_value(self->_queue, a3);
  if (xpc_array_get_count(self->_queue) >= 0x1F4)
  {
    pid = self->_pid;

    [(ClientOfLocalNoteServer *)self flushQueue];
  }
}

- (void)postNotification:(__CFString *)a3 object:(__CFString *)a4 token:(unint64_t)a5 options:(unint64_t)a6 immediate:(unsigned __int8)a7 userInfo:(id)a8
{
  if (a3)
  {
    if (a4)
    {
      v10 = a7;
      v14 = CFGetTypeID(a4);
      if (v14 == CFStringGetTypeID())
      {
        v15 = CFGetTypeID(a4);
        if (v15 == CFStringGetTypeID())
        {
          v28 = 0;
          v26 = 0;
          keys[0] = "method";
          values[0] = xpc_string_create("post_token");
          keys[1] = "version";
          values[1] = xpc_uint64_create(1uLL);
          keys[2] = "token";
          values[2] = xpc_uint64_create(a5);
          keys[3] = "name";
          values[3] = _CFXPCCreateXPCObjectFromCFObject();
          keys[4] = "object";
          values[4] = _CFXPCCreateXPCObjectFromCFObject();
          if (a8)
          {
            v28 = "userinfo";
            v26 = xpc_retain(a8);
            v16 = 6;
          }

          else
          {
            v16 = 5;
          }

          v17 = xpc_dictionary_create(keys, values, v16);
          v18 = 0;
          v19 = 8 * v16;
          do
          {
            xpc_release(values[v18 / 8]);
            v18 += 8;
          }

          while (v19 != v18);
          if (v10 || (a6 & 1) != 0 || !self->_suspended)
          {
            if (v10 || (a6 & 1) != 0)
            {
              [(ClientOfLocalNoteServer *)self flushQueue];
            }

            [(_NSDNXPCConnection *)self->_client sendMessage:v17];
            goto LABEL_24;
          }

          if (a6 != 8)
          {
            if (a6 == 2 || (a6 & 4) == 0)
            {
              goto LABEL_24;
            }

            v20 = xpc_array_create(0, 0);
            string = xpc_dictionary_get_string(v17, "name");
            v22 = xpc_dictionary_get_string(v17, "object");
            queue = self->_queue;
            v24[0] = _NSConcreteStackBlock;
            v24[1] = 3221225472;
            v24[2] = sub_100003880;
            v24[3] = &unk_1000084D8;
            v24[6] = a5;
            v24[7] = string;
            v24[8] = v22;
            v24[4] = v17;
            v24[5] = v20;
            xpc_array_apply(queue, v24);
            xpc_release(self->_queue);
            self->_queue = v20;
          }

          [(ClientOfLocalNoteServer *)self enqueuePost:v17];
LABEL_24:
          xpc_release(v17);
        }
      }
    }
  }
}

- (void)handlePost:(id)a3 userInfo:(id)a4
{
  xpc_dictionary_get_value(a3, "name");
  v6 = _CFXPCCreateCFObjectFromXPCObject();
  xpc_dictionary_get_value(a3, "object");
  v7 = _CFXPCCreateCFObjectFromXPCObject();
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    [+[ClientOfLocalNoteServer monitor](ClientOfLocalNoteServer forward:"forward:", a3];
    bzero(v11, 0x810uLL);
    v11[1] = &v12;
    registrar = self->_registrar;
    CFXNotificationRegistrarFind();
    _CFXNotificationRegistrationBufferDestroy();
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

@end