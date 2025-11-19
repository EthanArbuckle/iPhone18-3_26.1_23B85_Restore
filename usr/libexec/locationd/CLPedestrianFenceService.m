@interface CLPedestrianFenceService
+ (BOOL)isAvailable;
- (void)toggleSession;
@end

@implementation CLPedestrianFenceService

+ (BOOL)isAvailable
{
  sub_10001A3E8();
  if (sub_1000247B0())
  {
    return 1;
  }

  sub_10001A3E8();
  if (sub_10071AAF8())
  {
    return 1;
  }

  if (qword_1025D4500 != -1)
  {
    sub_101B6C5F0();
  }

  v3 = qword_1025D4508;
  if (os_log_type_enabled(qword_1025D4508, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Pedestrian fence not supported", v5, 2u);
  }

  v4 = sub_10000A100(121, 0);
  result = 0;
  if (v4)
  {
    sub_101B6C604();
    return 0;
  }

  return result;
}

- (void)toggleSession
{
  v3 = [(NSMutableSet *)[(CLPedestrianFenceService *)self clientsInSession] count]!= 0;

  [(CLPedestrianFenceService *)self toggleSession:v3];
}

@end