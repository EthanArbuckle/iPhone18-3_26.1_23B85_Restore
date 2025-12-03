@interface EventClient
- (EventClient)initWithToken:(unint64_t)token name:(id)name eventMask:(unint64_t)mask;
@end

@implementation EventClient

- (EventClient)initWithToken:(unint64_t)token name:(id)name eventMask:(unint64_t)mask
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = EventClient;
  v10 = [(EventClient *)&v14 init];
  if (v10)
  {
    v11 = [NSNumber numberWithUnsignedLongLong:token];
    token = v10->_token;
    v10->_token = v11;

    objc_storeStrong(&v10->_clientName, name);
    v10->_eventMask = mask;
  }

  return v10;
}

@end