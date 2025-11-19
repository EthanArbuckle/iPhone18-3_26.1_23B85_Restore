@interface CLActivityLoggerAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CLActivityLoggerAdapter)init;
- (void)endService;
- (void)logData:(id)a3;
@end

@implementation CLActivityLoggerAdapter

+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4
{
  v5 = a4 + 1;
  if (a4 + 1 < [a3 count])
  {
    [objc_msgSend(a3 objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", a3, v5}];
  }
}

+ (id)getSilo
{
  if (qword_102656580 != -1)
  {
    sub_101898288();
  }

  return qword_102656578;
}

- (CLActivityLoggerAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLActivityLoggerAdapter;
  return [(CLActivityLoggerAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLActivityLoggerProtocol outboundProtocol:&OBJC_PROTOCOL___CLActivityLoggerClientProtocol];
}

+ (BOOL)isSupported
{
  sub_10001A3E8();
  result = 0;
  if (sub_10071C8FC())
  {
    sub_10001A3E8();
    if (!sub_10003FFF8())
    {
      return 1;
    }
  }

  return result;
}

- (void)endService
{
  logger = self->_logger;
  if (logger)
  {
    sub_1004C659C(logger);
    operator delete();
  }

  self->_logger = 0;
}

- (void)logData:(id)a3
{
  logger = self->_logger;
  if (logger)
  {
    [*logger silo];
    if (*(logger + 72) == 1)
    {

      sub_1004B6764(logger + 3, a3);
    }
  }
}

@end