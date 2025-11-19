@interface AggregatedTimeSpentStorageAdapter
- (NSArray)aggregatedTimeSpentEntries;
- (NSString)clientIdentifier;
- (_TtC16promotedcontentd33AggregatedTimeSpentStorageAdapter)init;
- (_TtC16promotedcontentd33AggregatedTimeSpentStorageAdapter)initWithClientIdentifier:(id)a3 aggregatedTimeSpentEntries:(id)a4;
@end

@implementation AggregatedTimeSpentStorageAdapter

- (NSString)clientIdentifier
{

  v2 = sub_100398F28();

  return v2;
}

- (NSArray)aggregatedTimeSpentEntries
{
  type metadata accessor for AggregatedTimeSpentEntry();

  v2.super.isa = sub_100399178().super.isa;

  return v2.super.isa;
}

- (_TtC16promotedcontentd33AggregatedTimeSpentStorageAdapter)initWithClientIdentifier:(id)a3 aggregatedTimeSpentEntries:(id)a4
{
  v5 = sub_100398F58();
  v7 = v6;
  type metadata accessor for AggregatedTimeSpentEntry();
  v8 = sub_100399198();
  v9 = (self + OBJC_IVAR____TtC16promotedcontentd33AggregatedTimeSpentStorageAdapter_clientIdentifier);
  *v9 = v5;
  v9[1] = v7;
  *(self + OBJC_IVAR____TtC16promotedcontentd33AggregatedTimeSpentStorageAdapter_aggregatedTimeSpentEntries) = v8;
  v11.receiver = self;
  v11.super_class = type metadata accessor for AggregatedTimeSpentStorageAdapter();
  return [(AggregatedTimeSpentStorageAdapter *)&v11 init];
}

- (_TtC16promotedcontentd33AggregatedTimeSpentStorageAdapter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end