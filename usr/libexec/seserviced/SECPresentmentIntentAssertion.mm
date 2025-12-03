@interface SECPresentmentIntentAssertion
- (_TtC10seserviced29SECPresentmentIntentAssertion)init;
- (void)getAssertionStateWithReply:(id)reply;
- (void)relinquishAssertionWithReply:(id)reply;
@end

@implementation SECPresentmentIntentAssertion

- (void)getAssertionStateWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  _Block_copy(v4);
  selfCopy = self;
  sub_100309454(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)relinquishAssertionWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1003090BC(sub_10012DE64, v5);
}

- (_TtC10seserviced29SECPresentmentIntentAssertion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end