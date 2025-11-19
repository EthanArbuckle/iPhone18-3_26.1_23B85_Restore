@interface EligibilityOverrides
- (_TtC13transparencyd20EligibilityOverrides)init;
- (void)clearEligibilityOverrides;
@end

@implementation EligibilityOverrides

- (_TtC13transparencyd20EligibilityOverrides)init
{
  *(&self->super.isa + OBJC_IVAR____TtC13transparencyd20EligibilityOverrides_lastIDSRec) = 2;
  *(&self->super.isa + OBJC_IVAR____TtC13transparencyd20EligibilityOverrides_overrideReportStatus) = 2;
  v2 = self + OBJC_IVAR____TtC13transparencyd20EligibilityOverrides_overrideTimeBetweenReports;
  *v2 = 0;
  v2[8] = 1;
  v4.receiver = self;
  v4.super_class = type metadata accessor for EligibilityOverrides();
  return [(EligibilityOverrides *)&v4 init];
}

- (void)clearEligibilityOverrides
{
  v2 = *((swift_isaMask & self->super.isa) + 0x70);
  v3 = self;
  v2(2);
  (*((swift_isaMask & v3->super.isa) + 0x88))(2);
  (*((swift_isaMask & v3->super.isa) + 0xA0))(0, 1);
}

@end