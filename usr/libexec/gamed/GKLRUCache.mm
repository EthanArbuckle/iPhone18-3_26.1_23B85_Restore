@interface GKLRUCache
- (id)getValueForKey:(id)key;
- (void)clear;
- (void)insertValue:(id)value forKey:(id)key;
@end

@implementation GKLRUCache

- (void)clear
{
  selfCopy = self;
  GKLRUCache.clear()();
}

- (void)insertValue:(id)value forKey:(id)key
{
  swift_unknownObjectRetain();
  keyCopy = key;
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  GKLRUCache.insertValue(_:forKey:)(v11, v8, v10);

  sub_100005BE0(v11);
}

- (id)getValueForKey:(id)key
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  GKLRUCache.getValue(forKey:)();

  v5 = v13;
  if (v13)
  {
    v6 = sub_100006454(v12, v13);
    v7 = *(v5 - 8);
    __chkstk_darwin(v6);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v9, v5);
    sub_100005BE0(v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end