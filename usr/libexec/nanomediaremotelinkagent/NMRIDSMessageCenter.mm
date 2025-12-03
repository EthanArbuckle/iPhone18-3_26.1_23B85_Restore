@interface NMRIDSMessageCenter
- (NMRIDSMessageCenterDelegate)delegate;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)startHandlingMessages;
@end

@implementation NMRIDSMessageCenter

- (void)startHandlingMessages
{
  v3 = +[NSBundle mainBundle];
  bundleIdentifier = [v3 bundleIdentifier];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [NSString stringWithFormat:@"%@.%@.idsQueue", bundleIdentifier, v6];
  uTF8String = [v7 UTF8String];

  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_USER_INITIATED, 0);
  v10 = dispatch_queue_create(uTF8String, v9);
  idsQueue = self->_idsQueue;
  self->_idsQueue = v10;

  v12 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.mediaremote"];
  idsService = self->_idsService;
  self->_idsService = v12;

  [(IDSService *)self->_idsService addDelegate:self queue:self->_idsQueue];
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  protobufCopy = protobuf;
  contextCopy = context;
  type = [protobufCopy type];
  messageHandlers = self->_messageHandlers;
  v13 = [NSNumber numberWithUnsignedShort:type];
  v14 = [(NSMutableDictionary *)messageHandlers objectForKeyedSubscript:v13];

  v15 = sub_10002BC70(type);
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

    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    data = [protobufCopy data];
    v23 = 138413058;
    v24 = v17;
    v25 = 2112;
    v26 = v15;
    v27 = 2112;
    v28 = outgoingResponseIdentifier;
    v29 = 2048;
    v30 = [data length];
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received %@ %@ message (ID: %@, %lu byte payload).", &v23, 0x2Au);
  }

  if (v14)
  {
    target = [v14 target];
    action = [v14 action];
    v22 = [target methodForSelector:action];
    if (v22)
    {
      v22(target, action, protobufCopy);
    }
  }
}

- (NMRIDSMessageCenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end