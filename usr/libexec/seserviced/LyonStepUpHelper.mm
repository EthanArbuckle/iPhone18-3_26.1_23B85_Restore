@interface LyonStepUpHelper
- (_TtC10seserviced16LyonStepUpHelper)init;
@end

@implementation LyonStepUpHelper

- (_TtC10seserviced16LyonStepUpHelper)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC10seserviced16LyonStepUpHelper_endpointId) = xmmword_1004098E0;
  *(&self->super.isa + OBJC_IVAR____TtC10seserviced16LyonStepUpHelper_stepUpSK) = xmmword_1004098E0;
  v4 = [objc_allocWithZone(STSHelperLibrary) init];
  *(&self->super.isa + OBJC_IVAR____TtC10seserviced16LyonStepUpHelper_stsHelper) = v4;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(LyonStepUpHelper *)&v6 init];
}

@end