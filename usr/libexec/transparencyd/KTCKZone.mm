@interface KTCKZone
- (_TtC13transparencyd8KTCKZone)init;
- (_TtC13transparencyd8KTCKZone)initWithContext:(id)context;
@end

@implementation KTCKZone

- (_TtC13transparencyd8KTCKZone)initWithContext:(id)context
{
  *(&self->super.isa + OBJC_IVAR____TtC13transparencyd8KTCKZone_context) = context;
  v6.receiver = self;
  v6.super_class = type metadata accessor for KTCKZone();
  contextCopy = context;
  return [(KTCKZone *)&v6 init];
}

- (_TtC13transparencyd8KTCKZone)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end