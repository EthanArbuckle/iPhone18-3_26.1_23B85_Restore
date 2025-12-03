@interface PromotedContentDaemon
- (_TtC16promotedcontentd21PromotedContentDaemon)init;
- (_TtC16promotedcontentd21PromotedContentDaemon)initWithInstanceWrapper:(id)wrapper;
- (void)boot;
@end

@implementation PromotedContentDaemon

- (_TtC16promotedcontentd21PromotedContentDaemon)initWithInstanceWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v4 = sub_1001E6118();

  return v4;
}

- (void)boot
{
  selfCopy = self;
  PromotedContentDaemon.boot()();
}

- (_TtC16promotedcontentd21PromotedContentDaemon)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end