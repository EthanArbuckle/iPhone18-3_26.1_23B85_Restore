@interface KTCKZone
- (_TtC13transparencyd8KTCKZone)init;
- (_TtC13transparencyd8KTCKZone)initWithContext:(id)a3;
@end

@implementation KTCKZone

- (_TtC13transparencyd8KTCKZone)initWithContext:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC13transparencyd8KTCKZone_context) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for KTCKZone();
  v4 = a3;
  return [(KTCKZone *)&v6 init];
}

- (_TtC13transparencyd8KTCKZone)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end