@interface SECBackgroundAssertion
- (_TtC10seserviced22SECBackgroundAssertion)init;
@end

@implementation SECBackgroundAssertion

- (_TtC10seserviced22SECBackgroundAssertion)init
{
  ObjectType = swift_getObjectType();
  v4 = [objc_allocWithZone(type metadata accessor for SECBackgroundAssertion.AppStateObserverDelegate()) init];
  v5 = [objc_opt_self() observerWithDelegate:v4];
  *(&self->super.isa + OBJC_IVAR____TtC10seserviced22SECBackgroundAssertion_appStateObserver) = v5;
  *(&self->super.isa + OBJC_IVAR____TtC10seserviced22SECBackgroundAssertion_state) = v4;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(SECBackgroundAssertion *)&v7 init];
}

@end