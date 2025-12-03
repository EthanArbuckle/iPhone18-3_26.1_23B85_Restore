@interface MDTSession
+ (id)lookupSessionForPort:(unsigned int)port;
+ (void)removeSession:(id)session;
- (MDTSession)initWithServerPort:(unsigned int)port clientPort:(unsigned int)clientPort pid:(int)pid;
- (void)dealloc;
- (void)finalize;
- (void)invalidate;
- (void)returnStatusWithDestURL:(id)l error:(id)error;
@end

@implementation MDTSession

+ (id)lookupSessionForPort:(unsigned int)port
{
  v4 = qword_10000C6E0;
  objc_sync_enter(qword_10000C6E0);
  Value = CFDictionaryGetValue(qword_10000C6E8, port);
  objc_sync_exit(v4);
  return Value;
}

+ (void)removeSession:(id)session
{
  serverPort = [session serverPort];
  v4 = qword_10000C6E0;
  objc_sync_enter(qword_10000C6E0);
  if (CFDictionaryGetValue(qword_10000C6E8, serverPort))
  {
    CFDictionaryRemoveValue(qword_10000C6E8, serverPort);
    --qword_10000C6F0;
  }

  objc_sync_exit(v4);
}

- (MDTSession)initWithServerPort:(unsigned int)port clientPort:(unsigned int)clientPort pid:(int)pid
{
  v9.receiver = self;
  v9.super_class = MDTSession;
  result = [(MDTSession *)&v9 init];
  result->_server = port;
  result->_client = clientPort;
  result->_pid = pid;
  result->_valid = 1;
  return result;
}

- (void)dealloc
{
  [(MDTSession *)self invalidate];

  self->_copier = 0;
  v3.receiver = self;
  v3.super_class = MDTSession;
  [(MDTSession *)&v3 dealloc];
}

- (void)finalize
{
  [(MDTSession *)self invalidate];
  v3.receiver = self;
  v3.super_class = MDTSession;
  [(MDTSession *)&v3 finalize];
}

- (void)invalidate
{
  if (self->_valid)
  {
    self->_valid = 0;
    mach_port_mod_refs(mach_task_self_, self->_server, 1u, -1);
    [(Copier *)self->_copier invalidate];
    v4 = objc_opt_class();

    [v4 removeSession:self];
  }
}

- (void)returnStatusWithDestURL:(id)l error:(id)error
{
  v7 = sub_100003870(error);
  v8 = sub_100002FBC(l, v7);
  if (v8)
  {
    v9 = v8;
    v10 = sub_100003208(v8);
    if (v10)
    {
      v11 = v10;
      v12 = 0;
    }

    else
    {
      NSLog(@"NULL data from __MDTSerializePropertyList");
      v16 = CFErrorCreate(0, kCFErrorDomainPOSIX, 5, 0);
      if (v16)
      {
        v17 = v16;
        v18 = CFErrorCopyDescription(v16);
        v12 = CFRetain(v18);
        CFRelease(v17);
      }

      else
      {
        v12 = @"Input/output error";
      }

      v11 = sub_100004270(v12, @"com.apple.mdt", 1);
      if (!v11)
      {
        Length = 0;
        BytePtr = 0;
LABEL_11:
        CFRelease(v9);
        if (error)
        {
          goto LABEL_12;
        }

LABEL_5:
        code = 0;
        goto LABEL_13;
      }
    }

    BytePtr = CFDataGetBytePtr(v11);
    Length = CFDataGetLength(v11);
    goto LABEL_11;
  }

  Length = 0;
  v12 = 0;
  BytePtr = 0;
  v11 = 0;
  if (!error)
  {
    goto LABEL_5;
  }

LABEL_12:
  code = [error code];
LABEL_13:
  sub_100003A10(self->_client, code, BytePtr, Length);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v12)
  {

    CFRelease(v12);
  }
}

@end