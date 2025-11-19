@interface KTTapToRadar
- (BOOL)hasRecentlyFiledTTRWithTapToRadarType:(id)a3;
- (_TtC13transparencyd12KTTapToRadar)init;
- (_TtC13transparencyd12KTTapToRadar)initWithDataStore:(id)a3 configBag:(id)a4 dewConfig:(id)a5;
- (void)presentTapToRadarError:(id)a3 title:(id)a4 message:(id)a5;
- (void)presentTapToRadarRemote:(id)a3 fromHandle:(id)a4;
- (void)sasTTRWithTitle:(id)a3 description:(id)a4 relatedRadar:(id)a5 unique:(id)a6 handle:(id)a7 pushToken:(id)a8;
@end

@implementation KTTapToRadar

- (_TtC13transparencyd12KTTapToRadar)initWithDataStore:(id)a3 configBag:(id)a4 dewConfig:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_1000D8FA0(v7, v8, v9);

  return v10;
}

- (BOOL)hasRecentlyFiledTTRWithTapToRadarType:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LOBYTE(v4) = KTTapToRadar.hasRecentlyFiledTTR(tapToRadarType:)(v8);

  return v4 & 1;
}

- (void)presentTapToRadarRemote:(id)a3 fromHandle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  KTTapToRadar.presentTap(toRadarRemote:fromHandle:)(v8, v10, v11, v13);

  sub_1000956CC(v8, v10);
}

- (void)presentTapToRadarError:(id)a3 title:(id)a4 message:(id)a5
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = self;
  v16._countAndFlagsBits = v6;
  v16._object = v8;
  v17._countAndFlagsBits = v9;
  v17._object = v11;
  v18._countAndFlagsBits = v12;
  v18._object = v14;
  KTTapToRadar.presentTapToRadarError(unique:title:message:)(v16, v17, v18);
}

- (void)sasTTRWithTitle:(id)a3 description:(id)a4 relatedRadar:(id)a5 unique:(id)a6 handle:(id)a7 pushToken:(id)a8
{
  withTitle = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  description = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (a8)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a8 = v21;
  }

  else
  {
    v20 = 0;
  }

  v22 = a5;
  v23 = self;
  pushToken.value._countAndFlagsBits = v20;
  pushToken.value._object = a8;
  v32._object = v19;
  v24._countAndFlagsBits = withTitle;
  v24._object = v11;
  v25._countAndFlagsBits = description;
  v25._object = v13;
  v26._countAndFlagsBits = v14;
  v26._object = v16;
  v32._countAndFlagsBits = v17;
  KTTapToRadar.sasTTR(withTitle:description:relatedRadar:unique:handle:pushToken:)(v24, v25, v22, v26, v32, pushToken);
}

- (_TtC13transparencyd12KTTapToRadar)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end