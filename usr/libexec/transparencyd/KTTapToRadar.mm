@interface KTTapToRadar
- (BOOL)hasRecentlyFiledTTRWithTapToRadarType:(id)type;
- (_TtC13transparencyd12KTTapToRadar)init;
- (_TtC13transparencyd12KTTapToRadar)initWithDataStore:(id)store configBag:(id)bag dewConfig:(id)config;
- (void)presentTapToRadarError:(id)error title:(id)title message:(id)message;
- (void)presentTapToRadarRemote:(id)remote fromHandle:(id)handle;
- (void)sasTTRWithTitle:(id)title description:(id)description relatedRadar:(id)radar unique:(id)unique handle:(id)handle pushToken:(id)token;
@end

@implementation KTTapToRadar

- (_TtC13transparencyd12KTTapToRadar)initWithDataStore:(id)store configBag:(id)bag dewConfig:(id)config
{
  storeCopy = store;
  bagCopy = bag;
  configCopy = config;
  v10 = sub_1000D8FA0(storeCopy, bagCopy, configCopy);

  return v10;
}

- (BOOL)hasRecentlyFiledTTRWithTapToRadarType:(id)type
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LOBYTE(v4) = KTTapToRadar.hasRecentlyFiledTTR(tapToRadarType:)(v8);

  return v4 & 1;
}

- (void)presentTapToRadarRemote:(id)remote fromHandle:(id)handle
{
  remoteCopy = remote;
  handleCopy = handle;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  KTTapToRadar.presentTap(toRadarRemote:fromHandle:)(v8, v10, v11, v13);

  sub_1000956CC(v8, v10);
}

- (void)presentTapToRadarError:(id)error title:(id)title message:(id)message
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  selfCopy = self;
  v16._countAndFlagsBits = v6;
  v16._object = v8;
  v17._countAndFlagsBits = v9;
  v17._object = v11;
  v18._countAndFlagsBits = v12;
  v18._object = v14;
  KTTapToRadar.presentTapToRadarError(unique:title:message:)(v16, v17, v18);
}

- (void)sasTTRWithTitle:(id)title description:(id)description relatedRadar:(id)radar unique:(id)unique handle:(id)handle pushToken:(id)token
{
  withTitle = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  description = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (token)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    token = v21;
  }

  else
  {
    v20 = 0;
  }

  radarCopy = radar;
  selfCopy = self;
  pushToken.value._countAndFlagsBits = v20;
  pushToken.value._object = token;
  v32._object = v19;
  v24._countAndFlagsBits = withTitle;
  v24._object = v11;
  v25._countAndFlagsBits = description;
  v25._object = v13;
  v26._countAndFlagsBits = v14;
  v26._object = v16;
  v32._countAndFlagsBits = v17;
  KTTapToRadar.sasTTR(withTitle:description:relatedRadar:unique:handle:pushToken:)(v24, v25, radarCopy, v26, v32, pushToken);
}

- (_TtC13transparencyd12KTTapToRadar)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end