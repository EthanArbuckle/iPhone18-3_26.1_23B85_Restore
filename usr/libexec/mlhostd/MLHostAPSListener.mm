@interface MLHostAPSListener
- (_TtC7mlhostd17MLHostAPSListener)init;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
@end

@implementation MLHostAPSListener

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v4 = a4;
  if (a4)
  {
    v6 = a3;
    v7 = self;
    v8 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v11 = a3;
    v12 = self;
    v10 = 0xF000000000000000;
  }

  sub_100009180();
  sub_1000099C0(v4, v10);
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100009268(a4);
}

- (_TtC7mlhostd17MLHostAPSListener)init
{
  ObjectType = swift_getObjectType();
  v4 = (&self->super.isa + OBJC_IVAR____TtC7mlhostd17MLHostAPSListener_handleMessage);
  *v4 = nullsub_1;
  v4[1] = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(MLHostAPSListener *)&v6 init];
}

@end