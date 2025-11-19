@interface CLDataProviderService
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CLDataProviderService)init;
- (void)beginService;
- (void)endService;
@end

@implementation CLDataProviderService

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
  if (qword_102656F38 != -1)
  {
    sub_1018CD150();
  }

  return qword_102656F30;
}

- (CLDataProviderService)init
{
  v3.receiver = self;
  v3.super_class = CLDataProviderService;
  return [(CLDataProviderService *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLDataProviderServiceProtocol outboundProtocol:&OBJC_PROTOCOL___CLDataProviderServiceClientProtocol];
}

+ (BOOL)isSupported
{
  if (qword_102656F48 != -1)
  {
    sub_1018CD164();
  }

  return byte_102656F40;
}

- (void)beginService
{
  if (qword_1025D45A0 != -1)
  {
    sub_1018CD178();
  }

  v3 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Starting up CLDataProviderService", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD18C();
  }

  [objc_msgSend(-[CLDataProviderService universe](self "universe")];
  operator new();
}

- (void)endService
{
  if (qword_1025D45A0 != -1)
  {
    sub_1018CD178();
  }

  v2 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Shutting down CLDataProviderService", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD280();
  }
}

@end