@interface MIBUXPCListener
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MIBUXPCListener)init;
- (void)start;
- (void)terminate;
@end

@implementation MIBUXPCListener

+ (id)sharedInstance
{
  if (qword_1000B8448 != -1)
  {
    sub_10005F8D4();
  }

  v3 = qword_1000B8440;

  return v3;
}

- (MIBUXPCListener)init
{
  v16.receiver = self;
  v16.super_class = MIBUXPCListener;
  v2 = [(MIBUXPCListener *)&v16 init];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.inboxupdaterd"];
  [(MIBUXPCListener *)v2 setListener:v3];

  v4 = [(MIBUXPCListener *)v2 listener];

  if (v4)
  {
    v5 = [(MIBUXPCListener *)v2 listener];
    [v5 setDelegate:v2];

LABEL_4:
    v6 = v2;
    goto LABEL_10;
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_10005F8E8();
  }

  v7 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    sub_10005F910(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (void)start
{
  v2 = [(MIBUXPCListener *)self listener];
  [v2 resume];
}

- (void)terminate
{
  v2 = [(MIBUXPCListener *)self listener];
  [v2 invalidate];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005F948();
  }

  v7 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received a new xpc connection!", v13, 2u);
  }

  v8 = [v6 valueForEntitlement:@"com.apple.private.mobileinboxupdater.xpc"];
  if (!v8)
  {
    sub_10005FA40();
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_10005F95C(v8);
    goto LABEL_12;
  }

  if (![v8 BOOLValue])
  {
LABEL_12:
    [v6 invalidate];
    v11 = 0;
    goto LABEL_9;
  }

  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MIBUXPCProtocol];
  [v6 setExportedInterface:v9];

  v10 = objc_alloc_init(MIBUXPCResponder);
  [(MIBUXPCResponder *)v10 setXpcConnection:v6];
  [v6 setExportedObject:v10];
  [v6 resume];

  v11 = 1;
LABEL_9:

  return v11;
}

@end