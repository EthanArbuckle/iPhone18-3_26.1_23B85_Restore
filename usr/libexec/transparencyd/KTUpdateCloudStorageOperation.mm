@interface KTUpdateCloudStorageOperation
- (BOOL)forceResync;
- (_TtC13transparencyd29KTUpdateCloudStorageOperation)init;
- (_TtC13transparencyd29KTUpdateCloudStorageOperation)initWithDeps:(id)a3 source:(id)a4 context:(id)a5;
- (void)groupStart;
- (void)setForceResync:(BOOL)a3;
@end

@implementation KTUpdateCloudStorageOperation

- (BOOL)forceResync
{
  v3 = OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_forceResync;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setForceResync:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_forceResync;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = a3;
}

- (_TtC13transparencyd29KTUpdateCloudStorageOperation)initWithDeps:(id)a3 source:(id)a4 context:(id)a5
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_shouldRetry) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_networkFailure) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_forceResync) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_deps) = a3;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_source) = a4;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_context) = a5;
  v10.receiver = self;
  v10.super_class = type metadata accessor for KTUpdateCloudStorageOperation();
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a5;
  return [(KTGroupOperation *)&v10 init];
}

- (void)groupStart
{
  v2 = self;
  KTUpdateCloudStorageOperation.groupStart()();
}

- (_TtC13transparencyd29KTUpdateCloudStorageOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end