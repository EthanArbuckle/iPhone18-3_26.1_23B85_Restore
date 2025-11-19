@interface TempProvider
- (_TtC17proximitycontrold12TempProvider)init;
- (id)displayContextHandler;
- (id)progressEventHandler;
- (void)receiveEvent:(id)a3;
- (void)setDispatchQueue:(id)a3;
- (void)setDisplayContextHandler:(id)a3;
- (void)setProgressEventHandler:(id)a3;
@end

@implementation TempProvider

- (void)setDispatchQueue:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC17proximitycontrold12TempProvider_dispatchQueue);
  *(self + OBJC_IVAR____TtC17proximitycontrold12TempProvider_dispatchQueue) = a3;
  v3 = a3;
}

- (id)displayContextHandler
{
  if (*(self + OBJC_IVAR____TtC17proximitycontrold12TempProvider_displayContextHandler))
  {
    v2 = *(self + OBJC_IVAR____TtC17proximitycontrold12TempProvider_displayContextHandler + 8);
    v5[4] = *(self + OBJC_IVAR____TtC17proximitycontrold12TempProvider_displayContextHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_10001C258;
    v5[3] = &unk_100317058;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDisplayContextHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_10024BC0C;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC17proximitycontrold12TempProvider_displayContextHandler);
  v8 = *(self + OBJC_IVAR____TtC17proximitycontrold12TempProvider_displayContextHandler);
  v9 = *(self + OBJC_IVAR____TtC17proximitycontrold12TempProvider_displayContextHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  v10 = self;
  sub_10002689C(v8);
}

- (id)progressEventHandler
{
  if (*(self + OBJC_IVAR____TtC17proximitycontrold12TempProvider_progressEventHandler))
  {
    v2 = *(self + OBJC_IVAR____TtC17proximitycontrold12TempProvider_progressEventHandler + 8);
    v5[4] = *(self + OBJC_IVAR____TtC17proximitycontrold12TempProvider_progressEventHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_10001C258;
    v5[3] = &unk_100317008;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setProgressEventHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_10024BBF0;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC17proximitycontrold12TempProvider_progressEventHandler);
  v8 = *(self + OBJC_IVAR____TtC17proximitycontrold12TempProvider_progressEventHandler);
  v9 = *(self + OBJC_IVAR____TtC17proximitycontrold12TempProvider_progressEventHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  v10 = self;
  sub_10002689C(v8);
}

- (_TtC17proximitycontrold12TempProvider)init
{
  v3 = OBJC_IVAR____TtC17proximitycontrold12TempProvider_dispatchQueue;
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v4 = qword_10038B5B8;
  *(self + v3) = qword_10038B5B8;
  v5 = (self + OBJC_IVAR____TtC17proximitycontrold12TempProvider_displayContextHandler);
  *v5 = 0;
  v5[1] = 0;
  v6 = (self + OBJC_IVAR____TtC17proximitycontrold12TempProvider_progressEventHandler);
  *v6 = 0;
  v6[1] = 0;
  v7 = (self + OBJC_IVAR____TtC17proximitycontrold12TempProvider_proximityEventHandler);
  *v7 = 0;
  v7[1] = 0;
  *(self + OBJC_IVAR____TtC17proximitycontrold12TempProvider_receivedEvents) = _swiftEmptyArrayStorage;
  v10.receiver = self;
  v10.super_class = type metadata accessor for TempProvider();
  v8 = v4;
  return [(TempProvider *)&v10 init];
}

- (void)receiveEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10024B8C4(v4);
}

@end