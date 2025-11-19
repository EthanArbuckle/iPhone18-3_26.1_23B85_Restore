@interface EventClient
- (EventClient)initWithToken:(unint64_t)a3 name:(id)a4 eventMask:(unint64_t)a5;
@end

@implementation EventClient

- (EventClient)initWithToken:(unint64_t)a3 name:(id)a4 eventMask:(unint64_t)a5
{
  v9 = a4;
  v14.receiver = self;
  v14.super_class = EventClient;
  v10 = [(EventClient *)&v14 init];
  if (v10)
  {
    v11 = [NSNumber numberWithUnsignedLongLong:a3];
    token = v10->_token;
    v10->_token = v11;

    objc_storeStrong(&v10->_clientName, a4);
    v10->_eventMask = a5;
  }

  return v10;
}

@end