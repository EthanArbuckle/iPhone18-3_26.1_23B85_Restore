@interface ContainerAPSBridge
- (_TtC12searchpartyd18ContainerAPSBridge)init;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6;
@end

@implementation ContainerAPSBridge

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    v8 = a4;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v12 = a3;
    v13 = self;
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  sub_100D53918(v9, v11);
  sub_100006654(v9, v11);
}

- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6
{
  v8 = a4;
  if (a4)
  {
    v10 = a3;
    v11 = a5;
    v12 = a6;
    v13 = self;
    v14 = v8;
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    v19 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v23 = a3;
  v24 = a5;
  v25 = a6;
  v26 = self;
  v16 = 0xF000000000000000;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (a6)
  {
LABEL_4:
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    goto LABEL_8;
  }

LABEL_7:
  v20 = 0;
  v22 = 0;
LABEL_8:
  sub_100D53B18(v8, v16, v17, v19, v20, v22);

  sub_100006654(v8, v16);
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100D53D74(a4);
}

- (_TtC12searchpartyd18ContainerAPSBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end