@interface DIPURLCache
- (_TtC8coreidvd11DIPURLCache)init;
- (_TtC8coreidvd11DIPURLCache)initWithMemoryCapacity:(int64_t)capacity diskCapacity:(int64_t)diskCapacity directoryURL:(id)l;
- (_TtC8coreidvd11DIPURLCache)initWithMemoryCapacity:(int64_t)capacity diskCapacity:(int64_t)diskCapacity diskPath:(id)path;
- (id)cachedResponseForRequest:(id)request;
- (void)storeCachedResponse:(id)response forDataTask:(id)task;
- (void)storeCachedResponse:(id)response forRequest:(id)request;
@end

@implementation DIPURLCache

- (id)cachedResponseForRequest:(id)request
{
  v4 = type metadata accessor for URLRequest();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v10 = sub_1005FEBE8(v8);

  (*(v5 + 8))(v8, v4);

  return v10;
}

- (void)storeCachedResponse:(id)response forDataTask:(id)task
{
  ObjectType = swift_getObjectType();
  responseCopy = response;
  taskCopy = task;
  selfCopy = self;
  v10 = sub_100600EC4(responseCopy, 0, 1);
  if (v10)
  {
    v11 = v10;
    v13.receiver = selfCopy;
    v13.super_class = ObjectType;
    [(DIPURLCache *)&v13 storeCachedResponse:v10 forDataTask:taskCopy];
  }

  else
  {
  }
}

- (void)storeCachedResponse:(id)response forRequest:(id)request
{
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for URLRequest();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  responseCopy = response;
  selfCopy = self;
  v14 = sub_100600EC4(responseCopy, 0, 1);
  if (v14)
  {
    v15 = v14;
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v17.receiver = selfCopy;
    v17.super_class = ObjectType;
    [(DIPURLCache *)&v17 storeCachedResponse:v15 forRequest:isa];

    responseCopy = v15;
    selfCopy = isa;
  }

  (*(v8 + 8))(v11, v7);
}

- (_TtC8coreidvd11DIPURLCache)initWithMemoryCapacity:(int64_t)capacity diskCapacity:(int64_t)diskCapacity diskPath:(id)path
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8coreidvd11DIPURLCache)initWithMemoryCapacity:(int64_t)capacity diskCapacity:(int64_t)diskCapacity directoryURL:(id)l
{
  v6 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  if (l)
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