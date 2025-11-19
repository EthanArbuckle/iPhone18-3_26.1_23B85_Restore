@interface KTWatchdog
- (NSString)description;
- (_TtC13transparencyd10KTWatchdog)init;
- (_TtC13transparencyd10KTWatchdog)initWithControl:(id)a3;
- (id)checkWatchDogs;
- (void)addWithNamed:(id)a3 watcher:(id)a4;
- (void)resume;
- (void)runWatchDog;
- (void)stopWatchDog;
@end

@implementation KTWatchdog

- (_TtC13transparencyd10KTWatchdog)initWithControl:(id)a3
{
  swift_unknownObjectRetain();
  v4 = sub_100148600(a3);
  swift_unknownObjectRelease();
  return v4;
}

- (NSString)description
{
  v2 = *((swift_isaMask & self->super.isa) + 0x88);
  v3 = self;
  v2();
  sub_100095820(&qword_100387898, &unk_1002DCBC0);
  sub_1000D29A4(&qword_1003878A0, &qword_100387898, &unk_1002DCBC0);
  sub_100008D30();
  v4 = Sequence<>.joined(separator:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 62;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);

  v9 = String._bridgeToObjectiveC()();

  return v9;
}

- (void)resume
{
  v2 = *((swift_isaMask & self->super.isa) + 0xB8);
  v3 = self;
  if (v2())
  {

    swift_unknownObjectRelease();
  }

  else
  {
    (*((swift_isaMask & v3->super.isa) + 0xD8))();
  }
}

- (void)addWithNamed:(id)a3 watcher:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  KTWatchdog.add(named:watcher:)(v6, v8, sub_100148F34, v9);
}

- (id)checkWatchDogs
{
  v2 = self;
  sub_100146440();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)runWatchDog
{
  v2 = self;
  sub_100146F90();
}

- (void)stopWatchDog
{
  v2 = *((swift_isaMask & self->super.isa) + 0xB8);
  v3 = self;
  if (v2())
  {
    swift_getObjectType();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }
}

- (_TtC13transparencyd10KTWatchdog)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end