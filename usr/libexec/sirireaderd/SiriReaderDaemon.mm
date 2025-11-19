@interface SiriReaderDaemon
- (void)getPlaybackStatusForIdentifierWithTextIdentifier:(id)a3 reply:(id)a4;
- (void)handlePlaybackInterruptionWithNotification:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)readTextWithTextTitle:(id)a3 textBody:(id)a4 textIdentifier:(id)a5 textLocale:(id)a6 textLeadingImage:(id)a7;
- (void)readTextWithTextTitle:(id)a3 textBody:(id)a4 textIdentifier:(id)a5 textLocale:(id)a6 textLeadingImage:(id)a7 activationSource:(int64_t)a8;
@end

@implementation SiriReaderDaemon

- (void)readTextWithTextTitle:(id)a3 textBody:(id)a4 textIdentifier:(id)a5 textLocale:(id)a6 textLeadingImage:(id)a7
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = a7;
  v19 = self;
  sub_10000DE60(v9, v11, v12, v14, v15, v17, a7, 0);
}

- (void)readTextWithTextTitle:(id)a3 textBody:(id)a4 textIdentifier:(id)a5 textLocale:(id)a6 textLeadingImage:(id)a7 activationSource:(int64_t)a8
{
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v20 = a7;
  v21 = self;
  sub_10000DE60(v11, v13, v14, v16, v17, v19, a7, a8);
}

- (void)getPlaybackStatusForIdentifierWithTextIdentifier:(id)a3 reply:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = *&self->isCurrentlySeeking[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID];
  if (!v8)
  {
    v13 = self;

    goto LABEL_13;
  }

  if (*(&self->super.isa + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID) == v5 && v8 == v7)
  {
    v14 = self;

    v12 = self;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v11 = self;

    v12 = self;
    if ((v10 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (*(&v12->super.isa + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isSessionActive) != 1)
  {
LABEL_13:
    v16 = v4[2];
    v17 = v4;
    v18 = 1;
    goto LABEL_14;
  }

  v15 = *(&v12->super.isa + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlaying);
  v16 = v4[2];
  v17 = v4;
  if (v15 == 1)
  {
    v18 = 2;
  }

  else
  {
    v18 = 3;
  }

LABEL_14:
  v16(v17, v18);
  _Block_release(v4);
}

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
    memset(v17, 0, sizeof(v17));
    v15 = a5;
    v16 = self;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    goto LABEL_8;
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
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_10000FE5C(&qword_10001D088, type metadata accessor for NSKeyValueChangeKey);
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
  sub_10000F4C8(v9, v11, v17, v14);

  sub_10000FD30(v17, &qword_10001D248, &qword_100013270);
}

- (void)handlePlaybackInterruptionWithNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_1000099EC();

  (*(v5 + 8))(v8, v4);
}

@end