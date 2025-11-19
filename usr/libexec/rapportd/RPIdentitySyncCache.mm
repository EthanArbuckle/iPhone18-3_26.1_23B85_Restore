@interface RPIdentitySyncCache
- (_TtC8rapportd19RPIdentitySyncCache)init;
@end

@implementation RPIdentitySyncCache

- (_TtC8rapportd19RPIdentitySyncCache)init
{
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  *self->cachedInfo = 0;
  *&self->cachedInfo[8] = 0;
  *&self->cachedInfo[16] = 0;
  *self->stagedVerifiedPeerIRKDataSet = &_swiftEmptySetSingleton;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(RPIdentitySyncCache *)&v5 init];
}

@end