@interface PromotedContentDaemon
- (_TtC16promotedcontentd21PromotedContentDaemon)init;
- (_TtC16promotedcontentd21PromotedContentDaemon)initWithInstanceWrapper:(id)a3;
- (void)boot;
@end

@implementation PromotedContentDaemon

- (_TtC16promotedcontentd21PromotedContentDaemon)initWithInstanceWrapper:(id)a3
{
  v3 = a3;
  v4 = sub_1001E6118();

  return v4;
}

- (void)boot
{
  v2 = self;
  PromotedContentDaemon.boot()();
}

- (_TtC16promotedcontentd21PromotedContentDaemon)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end