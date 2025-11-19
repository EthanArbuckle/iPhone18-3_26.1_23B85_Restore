@interface RDBarebonesDaemon
- (_TtC7remindd17RDBarebonesDaemon)init;
@end

@implementation RDBarebonesDaemon

- (_TtC7remindd17RDBarebonesDaemon)init
{
  v3 = [objc_allocWithZone(type metadata accessor for RDXPCBarebonesDaemon()) init];
  v4 = (&self->super.isa + OBJC_IVAR____TtC7remindd17RDBarebonesDaemon_xpcDaemon);
  *v4 = v3;
  v4[1] = &off_1008F5870;
  v5 = qword_100935D10;
  v6 = v3;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_100974CA8;
  v8 = objc_allocWithZone(type metadata accessor for RDClientConnectionListener());
  *(&self->super.isa + OBJC_IVAR____TtC7remindd17RDBarebonesDaemon_xpcClientConnectionListener) = sub_1005D1BDC(v6, v7, v8, &off_1008F5870);
  v10.receiver = self;
  v10.super_class = type metadata accessor for RDBarebonesDaemon();
  return [(RDBarebonesDaemon *)&v10 init];
}

@end