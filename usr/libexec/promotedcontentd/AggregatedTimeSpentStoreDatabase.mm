@interface AggregatedTimeSpentStoreDatabase
- (BOOL)removeAllEntries;
- (BOOL)removeEntries:(id)a3;
- (BOOL)storeEntryWithLineID:(id)a3 durationInSeconds:(int)a4 eventTimestamp:(id)a5 clientIdentifier:(id)a6;
- (_TtC15LegacyInterface32AggregatedTimeSpentStoreDatabase)init;
- (_TtC15LegacyInterface32AggregatedTimeSpentStoreDatabase)initWithDatabase:(id)a3;
- (id)retrieveTimeSpentEntriesWithOlderThanDate:(id)a3;
@end

@implementation AggregatedTimeSpentStoreDatabase

- (_TtC15LegacyInterface32AggregatedTimeSpentStoreDatabase)initWithDatabase:(id)a3
{
  sub_100206B54();
  v5 = a3;
  sub_1003995A8();
  sub_100397D38();
  swift_allocObject();
  *(&self->super.isa + OBJC_IVAR____TtC15LegacyInterface32AggregatedTimeSpentStoreDatabase_database) = sub_100397D28();
  v8.receiver = self;
  v8.super_class = type metadata accessor for AggregatedTimeSpentStoreDatabase();
  v6 = [(AggregatedTimeSpentStoreDatabase *)&v8 init];

  return v6;
}

- (id)retrieveTimeSpentEntriesWithOlderThanDate:(id)a3
{
  v4 = sub_100397748();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100397708();
  v8 = self;
  v9 = AggregatedTimeSpentStoreDatabase.retrieveTimeSpentEntries(olderThanDate:)(v7);

  (*(v5 + 8))(v7, v4);
  if (v9)
  {
    sub_1001E27A8(&unk_1004D9A70);
    v10.super.isa = sub_100399178().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  return v10.super.isa;
}

- (BOOL)removeEntries:(id)a3
{
  type metadata accessor for AggregatedTimeSpentEntry();
  v4 = sub_100399198();
  v5 = self;
  v6 = AggregatedTimeSpentStoreDatabase.removeEntries(_:)(v4);

  return v6;
}

- (BOOL)storeEntryWithLineID:(id)a3 durationInSeconds:(int)a4 eventTimestamp:(id)a5 clientIdentifier:(id)a6
{
  v8 = sub_100397748();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100398F58();
  v14 = v13;
  sub_100397708();
  v15 = sub_100398F58();
  v17 = v16;
  v18 = self;
  LOBYTE(v15) = AggregatedTimeSpentStoreDatabase.storeEntry(withLineID:durationInSeconds:eventTimestamp:clientIdentifier:)(v12, v14, a4, v11, v15, v17);

  (*(v9 + 8))(v11, v8);
  return v15 & 1;
}

- (BOOL)removeAllEntries
{
  v2 = self;
  v3 = AggregatedTimeSpentStoreDatabase.removeAllEntries()();

  return v3;
}

- (_TtC15LegacyInterface32AggregatedTimeSpentStoreDatabase)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end