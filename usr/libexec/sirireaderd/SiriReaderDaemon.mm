@interface SiriReaderDaemon
- (void)getPlaybackStatusForIdentifierWithTextIdentifier:(id)identifier reply:(id)reply;
- (void)handlePlaybackInterruptionWithNotification:(id)notification;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)readTextWithTextTitle:(id)title textBody:(id)body textIdentifier:(id)identifier textLocale:(id)locale textLeadingImage:(id)image;
- (void)readTextWithTextTitle:(id)title textBody:(id)body textIdentifier:(id)identifier textLocale:(id)locale textLeadingImage:(id)image activationSource:(int64_t)source;
@end

@implementation SiriReaderDaemon

- (void)readTextWithTextTitle:(id)title textBody:(id)body textIdentifier:(id)identifier textLocale:(id)locale textLeadingImage:(id)image
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  imageCopy = image;
  selfCopy = self;
  sub_10000DE60(v9, v11, v12, v14, v15, v17, image, 0);
}

- (void)readTextWithTextTitle:(id)title textBody:(id)body textIdentifier:(id)identifier textLocale:(id)locale textLeadingImage:(id)image activationSource:(int64_t)source
{
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  imageCopy = image;
  selfCopy = self;
  sub_10000DE60(v11, v13, v14, v16, v17, v19, image, source);
}

- (void)getPlaybackStatusForIdentifierWithTextIdentifier:(id)identifier reply:(id)reply
{
  v4 = _Block_copy(reply);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = *&self->isCurrentlySeeking[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID];
  if (!v8)
  {
    selfCopy = self;

    goto LABEL_13;
  }

  if (*(&self->super.isa + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID) == v5 && v8 == v7)
  {
    selfCopy2 = self;

    selfCopy5 = self;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    selfCopy4 = self;

    selfCopy5 = self;
    if ((v10 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (*(&selfCopy5->super.isa + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isSessionActive) != 1)
  {
LABEL_13:
    v16 = v4[2];
    v17 = v4;
    v18 = 1;
    goto LABEL_14;
  }

  v15 = *(&selfCopy5->super.isa + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlaying);
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v17, 0, sizeof(v17));
    changeCopy = change;
    selfCopy = self;
    if (change)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v9 = 0;
  v11 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!change)
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

- (void)handlePlaybackInterruptionWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000099EC();

  (*(v5 + 8))(v8, v4);
}

@end