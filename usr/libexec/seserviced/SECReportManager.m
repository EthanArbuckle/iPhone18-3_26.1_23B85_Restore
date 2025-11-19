@interface SECReportManager
- (_TtC10seserviced16SECReportManager)init;
@end

@implementation SECReportManager

- (_TtC10seserviced16SECReportManager)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC10seserviced16SECReportManager_currentPresentmentReportingActivity);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v5 = (self + OBJC_IVAR____TtC10seserviced16SECReportManager_currentHeartbeatReportingActivity);
  v5[1] = 0u;
  v5[2] = 0u;
  *v5 = 0u;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(SECReportManager *)&v7 init];
}

@end