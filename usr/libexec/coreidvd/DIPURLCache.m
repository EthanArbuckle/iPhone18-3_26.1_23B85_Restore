@interface DIPURLCache
- (_TtC8coreidvd11DIPURLCache)init;
- (_TtC8coreidvd11DIPURLCache)initWithMemoryCapacity:(int64_t)a3 diskCapacity:(int64_t)a4 directoryURL:(id)a5;
- (_TtC8coreidvd11DIPURLCache)initWithMemoryCapacity:(int64_t)a3 diskCapacity:(int64_t)a4 diskPath:(id)a5;
- (id)cachedResponseForRequest:(id)a3;
- (void)storeCachedResponse:(id)a3 forDataTask:(id)a4;
- (void)storeCachedResponse:(id)a3 forRequest:(id)a4;
@end

@implementation DIPURLCache

- (id)cachedResponseForRequest:(id)a3
{
  v4 = type metadata accessor for URLRequest();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  v10 = sub_1005FEBE8(v8);

  (*(v5 + 8))(v8, v4);

  return v10;
}

- (void)storeCachedResponse:(id)a3 forDataTask:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = a3;
  v9 = a4;
  v12 = self;
  v10 = sub_100600EC4(v8, 0, 1);
  if (v10)
  {
    v11 = v10;
    v13.receiver = v12;
    v13.super_class = ObjectType;
    [(DIPURLCache *)&v13 storeCachedResponse:v10 forDataTask:v9];
  }

  else
  {
  }
}

- (void)storeCachedResponse:(id)a3 forRequest:(id)a4
{
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for URLRequest();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = self;
  v14 = sub_100600EC4(v12, 0, 1);
  if (v14)
  {
    v15 = v14;
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v17.receiver = v13;
    v17.super_class = ObjectType;
    [(DIPURLCache *)&v17 storeCachedResponse:v15 forRequest:isa];

    v12 = v15;
    v13 = isa;
  }

  (*(v8 + 8))(v11, v7);
}

- (_TtC8coreidvd11DIPURLCache)initWithMemoryCapacity:(int64_t)a3 diskCapacity:(int64_t)a4 diskPath:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8coreidvd11DIPURLCache)initWithMemoryCapacity:(int64_t)a3 diskCapacity:(int64_t)a4 directoryURL:(id)a5
{
  v6 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  if (a5)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for URL();
    v12 = 0;
    v11 = (*(v10 - 8) + 56);
  }

  else
  {
    v10 = type metadata accessor for URL();
    v11 = (*(v10 - 8) + 56);
    v12 = 1;
  }

  (*v11)(v9, v12, 1, v10);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8coreidvd11DIPURLCache)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end