@interface HandoffEnabledSettingManager
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation HandoffEnabledSettingManager

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v16, 0, sizeof(v16));
    v14 = a5;
    v15 = self;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  v9 = 0;
  v11 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v12 = a5;
  v13 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (a5)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_1001B7D00(&qword_100339C10, type metadata accessor for NSKeyValueChangeKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_7:
  sub_1001B7AAC(v9, v11);

  sub_1000097E8(v16, &unk_100339680, &qword_100278390);
}

@end