@interface SDAirDropReceiveCompressionAdapter
- (_TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter)init;
- (void)fileZipper:(id)zipper event:(int64_t)event withProperty:(id)property;
@end

@implementation SDAirDropReceiveCompressionAdapter

- (void)fileZipper:(id)zipper event:(int64_t)event withProperty:(id)property
{
  zipperCopy = zipper;
  swift_unknownObjectRetain();

  sub_1002A5990(event, property);

  swift_unknownObjectRelease();
}

- (_TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end