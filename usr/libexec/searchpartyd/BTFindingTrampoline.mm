@interface BTFindingTrampoline
- (_TtC12searchpartyd19BTFindingTrampoline)init;
- (void)updateConfig:(id)a3 completion:(id)a4;
@end

@implementation BTFindingTrampoline

- (void)updateConfig:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd19BTFindingTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd19BTFindingTrampoline_implementation + 16]);
  _Block_copy(v6);
  v8 = a3;
  v9 = self;
  sub_100FC3254(v8, v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_TtC12searchpartyd19BTFindingTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end