@interface PDURLSessionProxyMessageInfo
- (PDURLSessionProxyMessageInfo)initWithMessage:(id)message type:(unsigned __int16)type;
@end

@implementation PDURLSessionProxyMessageInfo

- (PDURLSessionProxyMessageInfo)initWithMessage:(id)message type:(unsigned __int16)type
{
  messageCopy = message;
  v11.receiver = self;
  v11.super_class = PDURLSessionProxyMessageInfo;
  v8 = [(PDURLSessionProxyMessageInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_message, message);
    v9->_type = type;
  }

  return v9;
}

@end