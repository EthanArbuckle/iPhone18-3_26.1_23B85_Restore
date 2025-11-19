@interface SECPresentmentIntentAssertion
- (_TtC10seserviced29SECPresentmentIntentAssertion)init;
- (void)getAssertionStateWithReply:(id)a3;
- (void)relinquishAssertionWithReply:(id)a3;
@end

@implementation SECPresentmentIntentAssertion

- (void)getAssertionStateWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_100309454(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)relinquishAssertionWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1003090BC(sub_10012DE64, v5);
}

- (_TtC10seserviced29SECPresentmentIntentAssertion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end