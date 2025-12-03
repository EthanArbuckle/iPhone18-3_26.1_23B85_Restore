@interface SDBoopAtADistanceTransaction
- (BOOL)isInitiator;
- (_TtC16DaemoniOSLibrary28SDBoopAtADistanceTransaction)init;
@end

@implementation SDBoopAtADistanceTransaction

- (BOOL)isInitiator
{
  selfCopy = self;
  v3 = SFAirDropClient.BoopAtADistance.Transaction.isInitiator.getter();

  return v3 & 1;
}

- (_TtC16DaemoniOSLibrary28SDBoopAtADistanceTransaction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end