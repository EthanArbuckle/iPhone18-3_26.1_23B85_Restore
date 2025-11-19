@interface SDAirDropContactHashManager
+ (NSString)kStatusContactsHashesChanged;
+ (NSString)kStatusContactsHashesChangedUpdatesOccurredKey;
+ (NSString)kStatusMeCardChanged;
+ (id)btleAdvertisementDataForStrings:(id)a3;
+ (id)shared;
- (BOOL)contactsContainsShortHashes:(id)a3;
- (BOOL)dumpDBAtFileURL:(id)a3;
- (NSString)detailedDescription;
- (_TtC16DaemoniOSLibrary27SDAirDropContactHashManager)init;
- (id)contactForCombinedHash:(id)a3;
- (id)contactHandlesForShortHashes:(id)a3;
- (id)contactIdentifierForMediumHashes:(id)a3;
- (id)contactsForCombinedHash:(id)a3;
- (id)emailOrPhoneForCombinedHash:(id)a3;
- (void)cmfSyncAgentBlockListDidChange;
- (void)contactStoreDidChange;
- (void)meCardDidChange;
- (void)rebuildDB;
- (void)setMeCard:(id)a3;
@end

@implementation SDAirDropContactHashManager

- (_TtC16DaemoniOSLibrary27SDAirDropContactHashManager)init
{
  ObjectType = swift_getObjectType();
  sub_10065437C(v7);
  sub_10055A4EC(v7, v6);
  v3 = objc_allocWithZone(ObjectType);
  v4 = sub_10054B1AC(v6);
  sub_10055A548(v7);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)cmfSyncAgentBlockListDidChange
{
  v2 = self;
  sub_10054D8F4("CMFSyncAgentBlockList change handler called", &unk_1008E6ED8, sub_10055A5CC, &unk_1008E6EF0);
}

- (void)contactStoreDidChange
{
  v2 = self;
  sub_10054D8F4("Contact Store change handler called", &unk_1008E6E88, sub_10055A4D0, &unk_1008E6EA0);
}

- (void)meCardDidChange
{
  v2 = self;
  sub_10054D8F4("MeCard change handler called", &unk_1008E6E38, sub_10055A4B4, &unk_1008E6E50);
}

+ (NSString)kStatusContactsHashesChanged
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)kStatusContactsHashesChangedUpdatesOccurredKey
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)kStatusMeCardChanged
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (id)shared
{
  if (qword_100973A08 != -1)
  {
    swift_once();
  }

  v3 = qword_1009831A8;

  return v3;
}

- (NSString)detailedDescription
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  v3 = self;
  OS_dispatch_queue.sync<A>(execute:)();

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (void)setMeCard:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100555C2C(v4);
}

- (id)contactForCombinedHash:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  v5 = self;
  sub_10028088C(&qword_1009832E8, &unk_100809A60);
  OS_dispatch_queue.sync<A>(execute:)();

  return v7;
}

- (id)contactsForCombinedHash:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  v5 = self;
  sub_10028088C(&qword_1009832E0, &qword_100809A58);
  OS_dispatch_queue.sync<A>(execute:)();

  sub_1000276B4(0, &qword_100975088, CNContact_ptr);
  sub_1002D7FB0();
  v6.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)emailOrPhoneForCombinedHash:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  v5 = self;
  sub_10028088C(&qword_100975100, &qword_1007FBA10);
  OS_dispatch_queue.sync<A>(execute:)();

  if (v8)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)contactIdentifierForMediumHashes:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = *(&v5->super.isa + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  sub_10028088C(&qword_100975100, &qword_1007FBA10);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100026AC0(v6, v8);

  if (v12)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)contactHandlesForShortHashes:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = *(&v5->super.isa + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  sub_10028088C(&unk_1009832D0, &unk_100809A48);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100026AC0(v6, v8);

  v10.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v10.super.isa;
}

- (BOOL)contactsContainsShortHashes:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = *(&v5->super.isa + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100026AC0(v6, v8);

  return v11;
}

- (BOOL)dumpDBAtFileURL:(id)a3
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = *(&self->super.isa + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  v13 = self;
  v14 = v8;
  v10 = self;
  OS_dispatch_queue.sync<A>(execute:)();

  LOBYTE(v9) = v15;
  (*(v5 + 8))(v8, v4);
  return v9;
}

- (void)rebuildDB
{
  v2 = self;
  sub_100557BC8();
}

+ (id)btleAdvertisementDataForStrings:(id)a3
{
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = sub_1005581A0(v3, 2, 4);
  v6 = v5;
  sub_100294008(v4, v5);
  sub_100403C08(v4, v6);
  sub_10040367C(&off_1008D7CD8);
  v7 = sub_10057EA7C(&off_1008D7CB0);
  v9 = v8;

  sub_100026AC0(v4, v6);

  v10.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v7, v9);

  return v10.super.isa;
}

@end