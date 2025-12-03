@interface SDAirDropSendCompressionAdapter
- (_TtC16DaemoniOSLibrary31SDAirDropSendCompressionAdapter)init;
- (void)fileZipper:(id)zipper event:(int64_t)event withProperty:(id)property;
@end

@implementation SDAirDropSendCompressionAdapter

- (void)fileZipper:(id)zipper event:(int64_t)event withProperty:(id)property
{
  zipperCopy = zipper;
  swift_unknownObjectRetain();

  sub_100299A84(event, property);

  swift_unknownObjectRelease();
}

- (_TtC16DaemoniOSLibrary31SDAirDropSendCompressionAdapter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end