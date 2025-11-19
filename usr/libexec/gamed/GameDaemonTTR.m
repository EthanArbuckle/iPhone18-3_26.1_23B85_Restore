@interface GameDaemonTTR
- (id)getURLForExistingMultiplayerRadarWithRadarID:(id)a3;
- (id)getURLForNewMultiplayerRadarWithCallbackIdentifier:(id)a3 descriptionAddition:(id)a4;
@end

@implementation GameDaemonTTR

- (id)getURLForNewMultiplayerRadarWithCallbackIdentifier:(id)a3 descriptionAddition:(id)a4
{
  v4 = a4;
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    if (v4)
    {
LABEL_3:
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v10;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v11 = self;
  v12.value._countAndFlagsBits = v6;
  v12.value._object = v8;
  v13.value._countAndFlagsBits = v9;
  v13.value._object = v4;
  object = GameDaemonTTR.getURLForNewMultiplayerRadar(callbackIdentifier:descriptionAddition:)(v12, v13).value._object;

  if (object)
  {
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)getURLForExistingMultiplayerRadarWithRadarID:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  object = GameDaemonTTR.getURLForExistingMultiplayerRadar(radarID:)(v8).value._object;

  if (object)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end