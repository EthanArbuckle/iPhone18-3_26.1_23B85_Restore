@interface PDURLSessionProxyMessageInfo
- (PDURLSessionProxyMessageInfo)initWithMessage:(id)a3 type:(unsigned __int16)a4;
@end

@implementation PDURLSessionProxyMessageInfo

- (PDURLSessionProxyMessageInfo)initWithMessage:(id)a3 type:(unsigned __int16)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PDURLSessionProxyMessageInfo;
  v8 = [(PDURLSessionProxyMessageInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_message, a3);
    v9->_type = a4;
  }

  return v9;
}

@end