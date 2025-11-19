@interface AggregatedTimeSpentUtilities
+ (id)retrieveComponentMetaDataFromEntries:(id)a3;
- (_TtC15LegacyInterface28AggregatedTimeSpentUtilities)init;
@end

@implementation AggregatedTimeSpentUtilities

+ (id)retrieveComponentMetaDataFromEntries:(id)a3
{
  type metadata accessor for AggregatedTimeSpentEntry();
  v3 = sub_100399198();
  v4 = sub_10031C978(v3);

  if (v4)
  {
    sub_10031CBB8();
    v5.super.isa = sub_100399178().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (_TtC15LegacyInterface28AggregatedTimeSpentUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AggregatedTimeSpentUtilities();
  return [(AggregatedTimeSpentUtilities *)&v3 init];
}

@end