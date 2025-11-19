@interface CheckupData
- (NSArray)resultsArray;
- (NSDictionary)errorHistogram;
- (_TtC13transparencyd11CheckupData)init;
@end

@implementation CheckupData

- (NSDictionary)errorHistogram
{
  v2 = *(self + OBJC_IVAR____TtC13transparencyd11CheckupData_errorHistogram);

  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSArray)resultsArray
{
  v2 = *(self + OBJC_IVAR____TtC13transparencyd11CheckupData_resultsArray);

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (_TtC13transparencyd11CheckupData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end