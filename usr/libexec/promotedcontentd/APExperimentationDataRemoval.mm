@interface APExperimentationDataRemoval
- (APExperimentationDataRemoval)init;
- (APExperimentationDataRemoval)initWithDatabase:(id)database;
- (void)removeExperimentationDataBefore:(id)before;
@end

@implementation APExperimentationDataRemoval

- (APExperimentationDataRemoval)initWithDatabase:(id)database
{
  type metadata accessor for ExperimentationNodeFetcher();
  v4 = swift_allocObject();
  v5 = sub_100209870(database, v4);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (void)removeExperimentationDataBefore:(id)before
{
  v4 = sub_100397748();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100397708();
  selfCopy = self;
  ExperimentationDataRemoval.removeExperimentationDataBefore(_:)(v7);

  (*(v5 + 8))(v7, v4);
}

- (APExperimentationDataRemoval)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end