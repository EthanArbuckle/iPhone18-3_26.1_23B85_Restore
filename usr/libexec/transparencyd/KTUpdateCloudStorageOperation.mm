@interface KTUpdateCloudStorageOperation
- (BOOL)forceResync;
- (_TtC13transparencyd29KTUpdateCloudStorageOperation)init;
- (_TtC13transparencyd29KTUpdateCloudStorageOperation)initWithDeps:(id)deps source:(id)source context:(id)context;
- (void)groupStart;
- (void)setForceResync:(BOOL)resync;
@end

@implementation KTUpdateCloudStorageOperation

- (BOOL)forceResync
{
  v3 = OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_forceResync;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setForceResync:(BOOL)resync
{
  v5 = OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_forceResync;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = resync;
}

- (_TtC13transparencyd29KTUpdateCloudStorageOperation)initWithDeps:(id)deps source:(id)source context:(id)context
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_shouldRetry) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_networkFailure) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_forceResync) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_deps) = deps;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_source) = source;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_context) = context;
  v10.receiver = self;
  v10.super_class = type metadata accessor for KTUpdateCloudStorageOperation();
  depsCopy = deps;
  swift_unknownObjectRetain();
  contextCopy = context;
  return [(KTGroupOperation *)&v10 init];
}

- (void)groupStart
{
  selfCopy = self;
  KTUpdateCloudStorageOperation.groupStart()();
}

- (_TtC13transparencyd29KTUpdateCloudStorageOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end