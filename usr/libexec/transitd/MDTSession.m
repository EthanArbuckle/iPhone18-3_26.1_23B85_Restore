@interface MDTSession
+ (id)lookupSessionForPort:(unsigned int)a3;
+ (void)removeSession:(id)a3;
- (MDTSession)initWithServerPort:(unsigned int)a3 clientPort:(unsigned int)a4 pid:(int)a5;
- (void)dealloc;
- (void)finalize;
- (void)invalidate;
- (void)returnStatusWithDestURL:(id)a3 error:(id)a4;
@end

@implementation MDTSession

+ (id)lookupSessionForPort:(unsigned int)a3
{
  v4 = qword_10000C6E0;
  objc_sync_enter(qword_10000C6E0);
  Value = CFDictionaryGetValue(qword_10000C6E8, a3);
  objc_sync_exit(v4);
  return Value;
}

+ (void)removeSession:(id)a3
{
  v3 = [a3 serverPort];
  v4 = qword_10000C6E0;
  objc_sync_enter(qword_10000C6E0);
  if (CFDictionaryGetValue(qword_10000C6E8, v3))
  {
    CFDictionaryRemoveValue(qword_10000C6E8, v3);
    --qword_10000C6F0;
  }

  objc_sync_exit(v4);
}

- (MDTSession)initWithServerPort:(unsigned int)a3 clientPort:(unsigned int)a4 pid:(int)a5
{
  v9.receiver = self;
  v9.super_class = MDTSession;
  result = [(MDTSession *)&v9 init];
  result->_server = a3;
  result->_client = a4;
  result->_pid = a5;
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

- (void)returnStatusWithDestURL:(id)a3 error:(id)a4
{
  v7 = sub_100003870(a4);
  v8 = sub_100002FBC(a3, v7);
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
        if (a4)
        {
          goto LABEL_12;
        }

LABEL_5:
        v15 = 0;
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
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_12:
  v15 = [a4 code];
LABEL_13:
  sub_100003A10(self->_client, v15, BytePtr, Length);
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