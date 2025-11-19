@interface NMRIDSMessageCenter
- (NMRIDSMessageCenterDelegate)delegate;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)startHandlingMessages;
@end

@implementation NMRIDSMessageCenter

- (void)startHandlingMessages
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [NSString stringWithFormat:@"%@.%@.idsQueue", v4, v6];
  v8 = [v7 UTF8String];

  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_USER_INITIATED, 0);
  v10 = dispatch_queue_create(v8, v9);
  idsQueue = self->_idsQueue;
  self->_idsQueue = v10;

  v12 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.mediaremote"];
  idsService = self->_idsService;
  self->_idsService = v12;

  [(IDSService *)self->_idsService addDelegate:self queue:self->_idsQueue];
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v9 = a5;
  v10 = a7;
  v11 = [v9 type];
  messageHandlers = self->_messageHandlers;
  v13 = [NSNumber numberWithUnsignedShort:v11];
  v14 = [(NSMutableDictionary *)messageHandlers objectForKeyedSubscript:v13];

  v15 = sub_10002BC70(v11);
  v16 = sub_10002C180(2);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (v14)
    {
      v17 = @"a";
    }

    else
    {
      v17 = @"an UNHANDLED";
    }

    v18 = [v10 outgoingResponseIdentifier];
    v19 = [v9 data];
    v23 = 138413058;
    v24 = v17;
    v25 = 2112;
    v26 = v15;
    v27 = 2112;
    v28 = v18;
    v29 = 2048;
    v30 = [v19 length];
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received %@ %@ message (ID: %@, %lu byte payload).", &v23, 0x2Au);
  }

  if (v14)
  {
    v20 = [v14 target];
    v21 = [v14 action];
    v22 = [v20 methodForSelector:v21];
    if (v22)
    {
      v22(v20, v21, v9);
    }
  }
}

- (NMRIDSMessageCenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end