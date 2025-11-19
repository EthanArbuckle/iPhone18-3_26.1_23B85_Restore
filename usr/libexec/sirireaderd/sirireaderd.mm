int main(int argc, const char **argv, const char **envp)
{
  v3 = stdout.getter();
  setlinebuf(v3);
  qword_10001D4F0 = [objc_allocWithZone(type metadata accessor for SiriReaderDaemonServer()) init];
  v4 = [objc_opt_self() mainRunLoop];
  [v4 run];

  return 0;
}

void *sub_100001B1C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100001B2C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100001B68()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100001BBC()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100001C30(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100001CA8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100001D28@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100001D7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100001E08@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100001E34(uint64_t a1)
{
  v2 = sub_10000210C(&qword_10001D078, type metadata accessor for FileAttributeKey);
  v3 = sub_10000210C(&qword_10001D080, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100001EF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100001F38(uint64_t a1)
{
  v2 = sub_10000210C(&qword_10001D088, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_10000210C(&qword_10001D090, type metadata accessor for NSKeyValueChangeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void sub_100002030(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10000210C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1000022A0()
{
  if (qword_10001CFC0 != -1)
  {
    swift_once();
  }

  v1 = qword_10001D508;
  qword_10001D098 = qword_10001D508;

  return v1;
}

uint64_t sub_100002304()
{
  v0 = type metadata accessor for Logger();
  sub_10000C5B0(v0, qword_10001D0A0);
  sub_10000C510(v0, qword_10001D0A0);
  if (qword_10001CF98 != -1)
  {
    swift_once();
  }

  v1 = qword_10001D098;
  return Logger.init(_:)();
}

id sub_100002390()
{
  result = [objc_allocWithZone(AVQueuePlayer) init];
  qword_10001D0B8 = result;
  return result;
}

id sub_1000023C4()
{
  result = [objc_allocWithZone(type metadata accessor for DaemonSession()) init];
  qword_10001D0C0 = result;
  return result;
}

NSNumber sub_1000023F8()
{
  sub_10000C458(&qword_10001D240, &qword_100013268);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100013100;
  sub_10000FCE8(0, &qword_10001D238, NSNumber_ptr);
  *(v0 + 32) = NSNumber.init(floatLiteral:)(0.75);
  *(v0 + 40) = NSNumber.init(floatLiteral:)(1.0);
  *(v0 + 48) = NSNumber.init(floatLiteral:)(1.25);
  *(v0 + 56) = NSNumber.init(floatLiteral:)(1.5);
  *(v0 + 64) = NSNumber.init(floatLiteral:)(1.75);
  result.super.super.isa = NSNumber.init(floatLiteral:)(2.0).super.super.isa;
  *(v0 + 72) = result;
  qword_10001D4F8 = v0;
  return result;
}

id sub_1000024B0()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  __chkstk_darwin(v2);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isCurrentlySeeking] = 0;
  *&v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_nowPlayingInfo] = &_swiftEmptyDictionarySingleton;
  v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlaying] = 0;
  *&v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_boostToken] = 0;
  *&v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_idleTimer] = 0;
  v9 = &v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences] = &_swiftEmptyArrayStorage;
  v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isSessionActive] = 0;
  v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlayingStartingTone] = 0;
  v10 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_processMonitor;
  *&v0[v10] = [objc_allocWithZone(RBSProcessMonitor) init];
  *&v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_startingTonePlayer] = 0;
  *&v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence] = 0;
  *&v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_startingSentence] = 0;
  *&v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentRequestStartTime] = 0;
  *&v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_idleTimeTracker] = 0;
  v11 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentContextId;
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 56))(&v0[v11], 1, 1, v12);
  v30 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_serialQueue;
  sub_10000FCE8(0, &qword_10001D2E8, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v35 = &_swiftEmptyArrayStorage;
  sub_10000FE5C(&qword_10001D330, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000C458(&qword_10001D338, &qword_1000132C8);
  sub_10000FEA4(&qword_10001D340, &qword_10001D338, &qword_1000132C8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v32 + 104))(v31, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v33);
  *&v0[v30] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = type metadata accessor for SiriReaderInstrumentationUtility();
  v14 = swift_allocObject();
  v15 = type metadata accessor for SelfEmitter();
  v16 = swift_allocObject();
  v14[5] = v15;
  v14[6] = &off_100018E88;
  v14[2] = v16;
  v17 = &v1[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_instrumentationUtil];
  *(v17 + 3) = v13;
  *(v17 + 4) = &off_100018E50;
  *v17 = v14;
  v18 = type metadata accessor for SiriReaderDaemon();
  v34.receiver = v1;
  v34.super_class = v18;
  v19 = objc_msgSendSuper2(&v34, "init");
  v20 = qword_10001CFA8;
  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = qword_10001D0B8;
  v23 = String._bridgeToObjectiveC()();
  [v22 addObserver:v21 forKeyPath:v23 options:5 context:0];

  sub_100009E7C();
  sub_100003A28(0);
  v24 = [objc_opt_self() defaultCenter];
  v25 = objc_opt_self();
  v26 = v21;
  v27 = [v25 sharedInstance];
  [v24 addObserver:v26 selector:"handlePlaybackInterruptionWithNotification:" name:AVAudioSessionInterruptionNotification object:v27];

  return v26;
}

void sub_100002B04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v28 = Strong;
  sub_1000063FC(a2, a3, a4, a5);
  sub_100006AB4();
  sub_10000703C();
  sub_100007A38();
  v11 = *&v28[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID];
  v10 = *&v28[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8];

  v12 = String.count.getter();
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (HIDWORD(v12))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v13 = *&v28[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences];
  v14 = *(v13 + 16);
  if (HIDWORD(v14))
  {
LABEL_33:
    __break(1u);
    return;
  }

  if (v14)
  {
    if (v14 == 1)
    {
      v15 = 0;
      v16 = 0.0;
    }

    else
    {
      v15 = *(v13 + 16) & 0xFFFFFFFELL;
      v18 = v13 + 64;
      v19 = v15;
      v16 = 0.0;
      do
      {
        v20 = *v18;
        v21 = *(v18 + 56);
        v22 = *(v18 - 16);
        v23 = *(v18 + 40);
        if (*(v18 - 8))
        {
          v22 = 0.0;
        }

        if (*(v18 + 48))
        {
          v23 = 0.0;
        }

        if (*(v18 + 8))
        {
          v20 = v22;
        }

        if (*(v18 + 64))
        {
          v21 = v23;
        }

        v16 = v16 + v20 + v21;
        v18 += 112;
        v19 -= 2;
      }

      while (v19);
      if (v14 == v15)
      {
        goto LABEL_27;
      }
    }

    v24 = (v13 + 56 * v15 + 72);
    v25 = v14 - v15;
    do
    {
      v26 = *(v24 - 1);
      v27 = *(v24 - 3);
      if (*(v24 - 16))
      {
        v27 = 0.0;
      }

      if (*v24)
      {
        v26 = v27;
      }

      v16 = v16 + v26;
      v24 += 7;
      --v25;
    }

    while (v25);
LABEL_27:
    v17 = v16;
    goto LABEL_28;
  }

  v17 = 0.0;
LABEL_28:
  sub_100011278(v17, v11, v10, v12, v14);
}

id sub_100002DF8()
{
  v1 = objc_allocWithZone(NSUserDefaults);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithSuiteName:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36[0] = v34;
  v36[1] = v35;
  p_opt_class_meths = &OBJC_PROTOCOL___NSObject.opt_class_meths;
  v8 = &NSObject__properties;
  if (*(&v35 + 1))
  {
    if (swift_dynamicCast())
    {
      v9 = *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);
      if (v9 && (v32 == *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID) && v9 == v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        v31 = v0;
        v10 = String._bridgeToObjectiveC()();
        v6 = [v3 integerForKey:v10];

        if (qword_10001CFA0 != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        sub_10000C510(v11, qword_10001D0A0);

        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          *&v36[0] = v15;
          *v14 = 136315138;
          v16 = sub_10000C7C4(v32, v33, v36);

          *(v14 + 4) = v16;
          _os_log_impl(&_mh_execute_header, v12, v13, "#sirireaderd previouslyInProgressUUID: %s", v14, 0xCu);
          sub_10000FEF8(v15);
          p_opt_class_meths = (&OBJC_PROTOCOL___NSObject + 48);

          v8 = &NSObject__properties;
        }

        else
        {
        }

        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 134217984;
          *(v30 + 4) = v6;
          _os_log_impl(&_mh_execute_header, v28, v29, "#sirireaderd previouslyInProgressSentence: %ld", v30, 0xCu);
        }

        v0 = v31;
        goto LABEL_19;
      }
    }
  }

  else
  {
    sub_10000FD30(v36, &qword_10001D248, &qword_100013270);
  }

  v6 = 0;
LABEL_19:
  v17 = (p_opt_class_meths[31] + v0);
  if (v17[1])
  {
    v18 = *v17;
    v19 = v17[1];

    v20 = String._bridgeToObjectiveC()();
  }

  else
  {
    v20 = 0;
  }

  v21 = String._bridgeToObjectiveC()();
  [v3 setObject:v20 forKey:v21];
  swift_unknownObjectRelease();

  if (*&v8[500] != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000C510(v22, qword_10001D0A0);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "#sirireaderd clear sessionUuidEndedByClient", v25, 2u);
  }

  v26 = String._bridgeToObjectiveC()();
  [v3 removeObjectForKey:v26];

  return v6;
}

void sub_1000032F0()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() readerStartingToneAudioAssetURL];
  if (v7)
  {
    v8 = v7;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = objc_allocWithZone(AVPlayerItem);
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    v13 = [v9 initWithURL:v11];

    v14 = [objc_allocWithZone(AVPlayer) initWithPlayerItem:v13];
    v15 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_startingTonePlayer;
    v16 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_startingTonePlayer);
    *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_startingTonePlayer) = v14;

    v17 = [objc_opt_self() defaultCenter];
    v18 = objc_opt_self();
    v19 = v13;
    v20 = [v18 mainQueue];
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10000F4C0;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003704;
    aBlock[3] = &unk_100018D48;
    v22 = _Block_copy(aBlock);

    v23 = [v17 addObserverForName:AVPlayerItemDidPlayToEndTimeNotification object:v19 queue:v20 usingBlock:v22];
    _Block_release(v22);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlayingStartingTone) = 1;
    [*(v1 + v15) play];

    (*(v3 + 8))(v6, v2);
  }

  else
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000C510(v24, qword_10001D0A0);
    v29 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v29, v25, "#sirireaderd Starting tone file not found", v26, 2u);
    }

    v27 = v29;
  }
}

void sub_1000036A4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000037F8();
  }
}

uint64_t sub_100003704(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_1000037F8()
{
  v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlayingStartingTone] = 0;
  v1 = *&v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_startingTonePlayer];
  *&v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_startingTonePlayer] = 0;

  if (v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlaying])
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C510(v2, qword_10001D0A0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "#sirireaderd Finished playing starting tone, but player is already playing!", v4, 2u);
    }
  }

  else
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C510(v5, qword_10001D0A0);
    v6 = v0;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = *(v6 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence);

      _os_log_impl(&_mh_execute_header, v7, v8, "#sirireaderd Finished playing starting tone, enqueuing sentence %ld", v9, 0xCu);
    }

    else
    {

      v7 = v6;
    }

    sub_100008820(*(&v6->isa + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence), 1);
  }
}

uint64_t sub_100003A28(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_processMonitor];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10000F3DC;
  *(v5 + 24) = v4;
  v11[4] = sub_10000F3F4;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100004664;
  v11[3] = &unk_100018CA8;
  v6 = _Block_copy(v11);
  v7 = v3;
  v8 = v1;

  [v7 updateConfiguration:v6];

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_100003B94(void *a1)
{
  v2 = String._bridgeToObjectiveC()();

  v3 = [objc_opt_self() predicateMatchingBundleIdentifier:v2];

  sub_10000C458(&qword_10001D240, &qword_100013268);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100013110;
  *(v4 + 32) = v3;
  sub_10000FCE8(0, &qword_10001D2E0, RBSProcessPredicate_ptr);
  v5 = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setPredicates:isa];

  [a1 setServiceClass:25];
  [a1 setEvents:1];
  v7 = [objc_allocWithZone(RBSProcessStateDescriptor) init];
  [a1 setStateDescriptor:v7];

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_10000F41C;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000045C4;
  v10[3] = &unk_100018CD0;
  v9 = _Block_copy(v10);

  [a1 setUpdateHandler:v9];
  _Block_release(v9);
}

uint64_t sub_100003DD4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v7 - 8);
  v8 = *(v22 + 64);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v11 = *(v21 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v21);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000FCE8(0, &qword_10001D2E8, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a2;
  v16[4] = a3;
  aBlock[4] = sub_10000F46C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100010140;
  aBlock[3] = &unk_100018D20;
  v17 = _Block_copy(aBlock);

  v18 = a2;
  v19 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000FE5C(&qword_10001D2F0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000C458(&qword_10001D2F8, &qword_1000132A8);
  sub_10000FEA4(&qword_10001D300, &qword_10001D2F8, &qword_1000132A8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v22 + 8))(v10, v7);
  return (*(v11 + 8))(v14, v21);
}

void sub_1000040CC(uint64_t a1, void *a2, void *a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = [a2 currentState];
  if (v5 && (v6 = v5, v7 = [v5 isRunning], v6, v7))
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C510(v8, qword_10001D0A0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v33 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_10000C7C4(0xD000000000000016, 0x8000000100014820, &v33);
      _os_log_impl(&_mh_execute_header, v9, v10, "#sirireaderd %s is running", v11, 0xCu);
      sub_10000FEF8(v12);

      return;
    }
  }

  else
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C510(v13, qword_10001D0A0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v33 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_10000C7C4(0xD000000000000016, 0x8000000100014820, &v33);
      _os_log_impl(&_mh_execute_header, v14, v15, "#sirireaderd %s stopped running", v16, 0xCu);
      sub_10000FEF8(v17);
    }

    v18 = [a3 exitEvent];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 context];

      if (v20)
      {
        v31 = [v20 status];

        if (v31)
        {
          if ([v31 isJetsam])
          {
            v21 = Logger.logObject.getter();
            v22 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v21, v22))
            {
              v23 = swift_slowAlloc();
              *v23 = 0;
              _os_log_impl(&_mh_execute_header, v21, v22, "#sirireaderd exitStatus is jetsam, don't tear down", v23, 2u);
            }

            v24 = v31;
            goto LABEL_26;
          }

          v25 = v31;
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            *v28 = 138412290;
            *(v28 + 4) = v25;
            *v29 = v31;
            v30 = v25;
            _os_log_impl(&_mh_execute_header, v26, v27, "#sirireaderd exitStatus: %@", v28, 0xCu);
            sub_10000FD30(v29, &qword_10001D278, &unk_100013298);

            v25 = v26;
            v26 = v30;
          }
        }
      }
    }

    sub_100004AE0();
  }

  v24 = Strong;
LABEL_26:
}

uint64_t sub_100004580(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1000045C4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, v9, v10);
}

uint64_t sub_100004664(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

void sub_1000046B8()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() sharedInstance];
  v29 = 0;
  v8 = [v7 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeSpokenAudio options:0 error:&v29];
  v9 = v29;
  if (v8 && (v29 = 0, v10 = v9, v11 = [v7 setActive:1 withOptions:0 error:&v29], v9 = v29, v11))
  {
    v12 = qword_10001CFA0;
    v13 = v29;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000C510(v14, qword_10001D0A0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "#sirireaderd Successfully set up audioSession", v17, 2u);
    }

    *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isSessionActive) = 1;
  }

  else
  {
    v18 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C510(v19, qword_10001D0A0);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, "#sirireaderd Failed setting up audioSession: %@", v22, 0xCu);
      sub_10000FD30(v23, &qword_10001D278, &unk_100013298);
    }

    v25 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID);
    v26 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);

    sub_10000BB10(v6);
    sub_100010C0C(v25, v26, v6, 0);

    (*(v3 + 8))(v6, v2);
    v27 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentContextId;
    sub_10000FD30(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentContextId, &qword_10001D230, &qword_100013260);
    (*(v3 + 56))(v1 + v27, 1, 1, v2);
  }
}

void sub_100004AE0()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() sharedInstance];
  v37 = 0;
  v8 = [v7 setActive:0 withOptions:0 error:&v37];
  v9 = v37;
  if (v8)
  {
    v10 = (v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID);
    v11 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID);
    v12 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);

    v13 = v9;
    sub_10000BB10(v6);
    sub_100010884(*&dword_10001D0C8, *&dword_10001D0C8 + *&dword_10001D0CC, v11, v12);

    (*(v3 + 8))(v6, v2);
    v14 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentContextId;
    sub_10000FD30(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentContextId, &qword_10001D230, &qword_100013260);
    (*(v3 + 56))(v1 + v14, 1, 1, v2);
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000C510(v15, qword_10001D0A0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "#sirireaderd Successfully tore down audioSession", v18, 2u);
    }

    *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isSessionActive) = 0;
    sub_10000B9C4();
    v19 = [objc_opt_self() defaultCenter];
    [v19 setNowPlayingInfo:0];

    v20 = v10[1];
    if (v20)
    {
      v21 = *v10;
      v22 = v10[1];

      sub_10000D9BC(v21, v20);
    }

    else
    {
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "#sirireaderd skipped setSessionUuidEndedByClient because currentlyPlayingUUID is nil", v35, 2u);
      }
    }
  }

  else
  {
    v23 = v37;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000C510(v24, qword_10001D0A0);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "#sirireaderd Failed tearing down audioSession: %@", v27, 0xCu);
      sub_10000FD30(v28, &qword_10001D278, &unk_100013298);
    }

    v30 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID);
    v31 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);

    sub_10000BB10(v6);
    sub_100010C0C(v30, v31, v6, 1u);

    (*(v3 + 8))(v6, v2);
    v32 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentContextId;
    sub_10000FD30(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentContextId, &qword_10001D230, &qword_100013260);
    (*(v3 + 56))(v1 + v32, 1, 1, v2);
  }
}

void sub_100005190(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);
  if (v3 && (*(v2 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID) == a1 ? (v6 = v3 == a2) : (v6 = 0), v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v7 = v2;
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C510(v8, qword_10001D0A0);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_10000C7C4(a1, a2, &v17);
      _os_log_impl(&_mh_execute_header, v9, v10, "#sirireaderd received pause command for %s", v11, 0xCu);
      sub_10000FEF8(v12);
    }

    *(v7 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_idleTimeTracker) = CFAbsoluteTimeGetCurrent();

    sub_100005434();
  }

  else
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C510(v13, qword_10001D0A0);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "#sirireaderd received pause command but identifiers did not match", v15, 2u);
    }
  }
}

void sub_100005434()
{
  v1 = v0;
  v2 = sub_10000C458(&qword_10001D230, &qword_100013260);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v38 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10001CFA8 != -1)
  {
    swift_once();
  }

  [qword_10001D0B8 pause];
  v13 = *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);
  v40 = *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID);

  sub_10000BB10(v12);
  [qword_10001D0B8 volume];
  v15 = v14;
  v16 = [objc_allocWithZone(READSchemaREADPlaybackSessionStartedOrChanged) init];
  [v16 setPlaybackStateChange:2];
  LODWORD(v17) = v15;
  [v16 setVolume:v17];
  v18 = [objc_allocWithZone(READSchemaREADPlaybackSessionContext) init];
  if (v18)
  {
    v19 = objc_allocWithZone(SISchemaUUID);
    v20 = v18;
    v39 = v18;
    v21 = v7;
    v22 = v16;
    v23 = v13;
    v24 = v9;
    v25 = v8;
    v26 = v0;
    v27 = v20;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v29 = [v19 initWithNSUUID:isa];

    [v27 setContextId:v29];
    v1 = v26;
    v8 = v25;
    v9 = v24;
    v13 = v23;
    v16 = v22;
    v7 = v21;
    v18 = v39;
  }

  [v18 setStartedOrChanged:v16];
  v30 = v41;
  if (v13 && ((UUID.init(uuidString:)(), (*(v9 + 48))(v30, 1, v8) != 1) ? ((*(v9 + 32))(v7, v30, v8), v31 = 0) : (sub_10000FD30(v30, &qword_10001D230, &qword_100013260), v31 = 1), (*(v9 + 56))(v7, v31, 1, v8), v32 = sub_100010348(v7), sub_10000FD30(v7, &qword_10001D230, &qword_100013260), v32))
  {
    [v32 setPlaybackSessionContext:v18];
    [objc_msgSend(objc_opt_self() "sharedStream")];

    swift_unknownObjectRelease();
  }

  else
  {
    v33 = v16;
    if (qword_10001CFC8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000C510(v34, qword_10001D358);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "error generating READClient Event", v37, 2u);
    }
  }

  (*(v9 + 8))(v12, v8);
  sub_10000B714();
  *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlaying) = 0;
}

void sub_10000591C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);
  if (v3 && (*(v2 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID) == a1 ? (v4 = v3 == a2) : (v4 = 0), v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v5 = CFAbsoluteTimeGetCurrent() - *(v2 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_idleTimeTracker);
    *&dword_10001D0CC = *&dword_10001D0CC + v5;

    sub_100005A94();
  }

  else
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C510(v6, qword_10001D0A0);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "#sirireaderd received resume command but identifiers did not match", v8, 2u);
    }
  }
}

void sub_100005A94()
{
  v1 = sub_10000C458(&qword_10001D230, &qword_100013260);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v49 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v49 - v14;
  if (qword_10001CFA8 != -1)
  {
    swift_once();
  }

  [qword_10001D0B8 rate];
  if (v16 == 0.0)
  {
    [qword_10001D0B8 play];
    sub_10000B9C4();
    *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlaying) = 1;
    v18 = *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID);
    v17 = *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);

    sub_10000BB10(v15);
    [qword_10001D0B8 volume];
    v20 = v19;
    v21 = [objc_allocWithZone(READSchemaREADPlaybackSessionStartedOrChanged) init];
    [v21 setPlaybackStateChange:4];
    LODWORD(v22) = v20;
    [v21 setVolume:v22];
    v23 = [objc_allocWithZone(READSchemaREADPlaybackSessionContext) init];
    if (v23)
    {
      v24 = objc_allocWithZone(SISchemaUUID);
      v49 = v18;
      v25 = v24;
      v26 = v23;
      v50 = v5;
      v27 = v7;
      v28 = v23;
      v29 = v9;
      v30 = v21;
      v31 = v17;
      v32 = v8;
      v33 = v26;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v35 = [v25 initWithNSUUID:isa];

      [v33 setContextId:v35];
      v8 = v32;
      v17 = v31;
      v21 = v30;
      v9 = v29;
      v23 = v28;
      v7 = v27;
      v5 = v50;
    }

    [v23 setStartedOrChanged:v21];
    if (v17 && ((UUID.init(uuidString:)(), (*(v9 + 48))(v5, 1, v8) != 1) ? ((*(v9 + 32))(v7, v5, v8), v36 = 0) : (sub_10000FD30(v5, &qword_10001D230, &qword_100013260), v36 = 1), (*(v9 + 56))(v7, v36, 1, v8), v44 = sub_100010348(v7), sub_10000FD30(v7, &qword_10001D230, &qword_100013260), v44))
    {
      [v44 setPlaybackSessionContext:v23];
      [objc_msgSend(objc_opt_self() "sharedStream")];

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_10001CFC8 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_10000C510(v45, qword_10001D358);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "error generating READClient Event", v48, 2u);
      }
    }

    (*(v9 + 8))(v15, v8);
  }

  else
  {
    v37 = *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID);
    v38 = *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);

    sub_10000BB10(v13);
    sub_100010C0C(v37, v38, v13, 2u);

    (*(v9 + 8))(v13, v8);
    v39 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentContextId;
    sub_10000FD30(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentContextId, &qword_10001D230, &qword_100013260);
    (*(v9 + 56))(v0 + v39, 1, 1, v8);
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000C510(v40, qword_10001D0A0);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "#sirireaderd playCommand failed due to player rate being non zero", v43, 2u);
    }
  }
}

void sub_1000060F4(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);
  if (v3 && (*(v2 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID) == a1 ? (v6 = v3 == a2) : (v6 = 0), v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C510(v7, qword_10001D0A0);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10000C7C4(a1, a2, &v16);
      _os_log_impl(&_mh_execute_header, v8, v9, "#sirireaderd received end media session command for %s", v10, 0xCu);
      sub_10000FEF8(v11);
    }

    sub_100005434();

    sub_100004AE0();
  }

  else
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C510(v12, qword_10001D0A0);
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v13, "#sirireaderd received end media session command but identifiers did not match", v14, 2u);
    }
  }
}

uint64_t sub_100006390(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

void sub_1000063FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = *(v4 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);
  if (v13)
  {
    v14 = *(v4 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID);
    v15 = &type metadata for String;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    *&v63 = 0;
  }

  *&v62 = v14;
  *(&v62 + 1) = v13;
  *(&v63 + 1) = v15;
  v16 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_nowPlayingInfo;

  sub_1000069E4(&v62, v10, v12);
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  *(&v63 + 1) = &type metadata for String;
  *&v62 = a1;
  *(&v62 + 1) = a2;

  sub_1000069E4(&v62, v17, v19);
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v63 + 1) = &type metadata for String;
  *&v62 = 32;
  *(&v62 + 1) = 0xE100000000000000;
  sub_1000069E4(&v62, v20, v21);
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v63 + 1) = &type metadata for Double;
  *&v62 = 0;
  sub_1000069E4(&v62, v22, v23);
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v63 + 1) = &type metadata for Double;
  *&v62 = 0;
  sub_1000069E4(&v62, v24, v25);
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  if (qword_10001CFA8 != -1)
  {
    swift_once();
  }

  [qword_10001D0B8 defaultRate];
  *(&v63 + 1) = &type metadata for Float;
  LODWORD(v62) = v29;
  sub_1000069E4(&v62, v26, v28);
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;
  [qword_10001D0B8 defaultRate];
  *(&v63 + 1) = &type metadata for Float;
  LODWORD(v62) = v33;
  sub_1000069E4(&v62, v30, v32);
  if (a3)
  {
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
    v37 = a3;
    [v37 size];
    v39 = v38;
    v41 = v40;
    v42 = swift_allocObject();
    *(v42 + 16) = v37;
    v43 = objc_allocWithZone(MPMediaItemArtwork);
    v64 = sub_10000F39C;
    v65 = v42;
    *&v62 = _NSConcreteStackBlock;
    *(&v62 + 1) = 1107296256;
    *&v63 = sub_10000C548;
    *(&v63 + 1) = &unk_100018C30;
    v44 = _Block_copy(&v62);
    v45 = v37;
    v46 = [v43 initWithBoundsSize:v44 requestHandler:{v39, v41}];
    _Block_release(v44);

    *(&v63 + 1) = sub_10000FCE8(0, &qword_10001D270, MPMediaItemArtwork_ptr);
    *&v62 = v46;
    sub_1000069E4(&v62, v34, v36);
  }

  else
  {
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = 0u;
    v63 = 0u;
    sub_1000069E4(&v62, v47, v48);
  }

  if (a4 == 3)
  {
    v49 = 32;
  }

  else
  {
    v49 = 0xD000000000000016;
  }

  if (a4 == 3)
  {
    v50 = 0xE100000000000000;
  }

  else
  {
    v50 = 0x8000000100014820;
  }

  if (qword_10001CFA0 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  sub_10000C510(v51, qword_10001D0A0);

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&v62 = v55;
    *v54 = 136315138;
    *(v54 + 4) = sub_10000C7C4(v49, v50, &v62);
    _os_log_impl(&_mh_execute_header, v52, v53, "#sirireaderd setting represented bundle identifier: %s", v54, 0xCu);
    sub_10000FEF8(v55);
  }

  v56 = objc_opt_self();
  v57 = [v56 defaultCenter];
  v58 = String._bridgeToObjectiveC()();

  [v57 setRepresentedApplicationBundleIdentifier:v58];

  v59 = [v56 defaultCenter];
  v60 = *(v5 + v16);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v59 setNowPlayingInfo:isa];
}

uint64_t sub_1000069E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_10000F1A0(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_10000D648(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_10000FD30(a1, &qword_10001D248, &qword_100013270);
    sub_10000D13C(a2, a3, v10);

    return sub_10000FD30(v10, &qword_10001D248, &qword_100013270);
  }

  return result;
}

void sub_100006AB4()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  __chkstk_darwin(v2);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SpeakableStringExtractor.InputType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.Encoding();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences);
  *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences) = &_swiftEmptyArrayStorage;

  static String.Encoding.utf8.getter();
  v16 = String.data(using:allowLossyConversion:)();
  v18 = v17;
  (*(v11 + 8))(v14, v10);
  if (v18 >> 60 == 15)
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C510(v19, qword_10001D0A0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "#sirireaderd failed to create sentence data from article body", v22, 2u);
    }

    v23 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID);
    v24 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);

    v25 = v33;
    sub_10000BB10(v33);
    sub_100010C0C(v23, v24, v25, 3u);

    v26 = v34;
    v27 = v25;
    v28 = v35;
    (*(v34 + 8))(v27, v35);
    v29 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentContextId;
    sub_10000FD30(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentContextId, &qword_10001D230, &qword_100013260);
    (*(v26 + 56))(v1 + v29, 1, 1, v28);
  }

  else
  {
    v30 = sub_10000E86C();
    dispatch thunk of SynthesisVoice.language.getter();
    (*(v6 + 104))(v9, enum case for SpeakableStringExtractor.InputType.plainText(_:), v5);
    objc_allocWithZone(type metadata accessor for SpeakableStringExtractor());
    sub_10000F2A0(v16, v18);
    v31 = SpeakableStringExtractor.init(language:data:inputType:)();
    __chkstk_darwin(v31);
    *(&v32 - 2) = v1;
    dispatch thunk of SpeakableStringExtractor.enumerate(_:)();
    sub_10000F2FC(v16, v18);

    *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence) = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_startingSentence);
  }
}

uint64_t sub_100006F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences;
  v7 = *(a3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_10000C69C(0, *(v7 + 2) + 1, 1, v7);
    *(a3 + v6) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_10000C69C((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[56 * v10];
  *(v11 + 4) = a1;
  *(v11 + 5) = a2;
  *(v11 + 6) = 0;
  v11[56] = 1;
  *(v11 + 15) = *&v15[3];
  *(v11 + 57) = *v15;
  *(v11 + 8) = 0;
  v11[72] = 1;
  v11[73] = 0;
  *(v11 + 74) = v13;
  *(v11 + 39) = v14;
  *(v11 + 10) = 0;
  *(a3 + v6) = v7;
  return 1;
}

uint64_t sub_10000703C()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 1);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10000E86C();
  static os_signpost_type_t.begin.getter();
  if (qword_10001CF98 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v6 = qword_10001D098;
    static OSSignpostID.exclusive.getter();
    v32 = v6;
    os_signpost(_:dso:log:name:signpostID:)();
    v7 = *(v2 + 8);
    v33 = v5;
    v34 = v2 + 8;
    v35 = v1;
    v31 = v7;
    v7(v5, v1);
    v8 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences;
    v9 = *(*(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences) + 16);
    v40 = *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences);

    v38 = v9;
    if (!v9)
    {
      break;
    }

    v2 = v0;
    v5 = 0;
    v11 = 0;
    v1 = (v40 + 40);
    *&v10 = 134218240;
    v36 = v10;
    while (v11 < *(v40 + 16))
    {
      v12 = v1[5];
      v13 = *(v1 - 1);
      v14 = *v1;
      v15 = objc_allocWithZone(type metadata accessor for SynthesisRequest());
      v16 = v12;
      v17 = v39;
      swift_bridgeObjectRetain_n();
      v18 = SynthesisRequest.init(text:voice:)();
      type metadata accessor for DurationEstimator();
      static DurationEstimator.roughEstimation(request:)();
      v20 = v19;
      if (qword_10001CFA0 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_10000C510(v21, qword_10001D0A0);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v37 = v18;
        *v24 = v36;
        *(v24 + 4) = v11;
        *(v24 + 12) = 2048;
        *(v24 + 14) = v20;
        _os_log_impl(&_mh_execute_header, v22, v23, "#sirireaderd estimated duration of sentence %ld is %f", v24, 0x16u);
        v18 = v37;
      }

      v0 = *(v2 + v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + v8) = v0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        *(v2 + v8) = sub_10000D9A8(v0);
      }

      v26 = *(v2 + v8);
      if (v11 >= *(v26 + 16))
      {
        goto LABEL_15;
      }

      ++v11;
      v27 = &v5[v26];
      *(v27 + 6) = v20;
      v27[56] = 0;
      *(v2 + v8) = v26;
      v1 += 7;
      v5 += 56;
      if (v38 == v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }

LABEL_13:

  static os_signpost_type_t.end.getter();
  v28 = v33;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  return v31(v28, v35);
}

uint64_t sub_10000741C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences);
  v3 = 0.0;
  if (*(v2 + 16) > result)
  {
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    if (result)
    {
      if (result == 1)
      {
        v4 = 0;
LABEL_17:
        v11 = result - v4;
        v12 = (v2 + 56 * v4 + 72);
        do
        {
          v13 = *(v12 - 1);
          v14 = *(v12 - 3);
          if (*(v12 - 16))
          {
            v14 = 0.0;
          }

          if (*v12)
          {
            v13 = v14;
          }

          v3 = v3 + v13;
          v12 += 7;
          --v11;
        }

        while (v11);
        return result;
      }

      v4 = result & 0x7FFFFFFFFFFFFFFELL;
      v5 = v2 + 64;
      v6 = result & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v7 = *v5;
        v8 = *(v5 + 56);
        v9 = *(v5 - 16);
        v10 = *(v5 + 40);
        if (*(v5 - 8))
        {
          v9 = 0.0;
        }

        if (*(v5 + 48))
        {
          v10 = 0.0;
        }

        if (*(v5 + 8))
        {
          v7 = v9;
        }

        if (*(v5 + 64))
        {
          v8 = v10;
        }

        v3 = v3 + v7 + v8;
        v5 += 112;
        v6 -= 2;
      }

      while (v6);
      if (v4 != result)
      {
        goto LABEL_17;
      }
    }
  }

  return result;
}

double sub_100007508()
{
  v1 = *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0.0;
  }

  if (v2 == 1)
  {
    v3 = 0;
    result = 0.0;
LABEL_16:
    v11 = v2 - v3;
    v12 = (v1 + 56 * v3 + 72);
    do
    {
      v13 = *(v12 - 1);
      v14 = *(v12 - 3);
      if (*(v12 - 16))
      {
        v14 = 0.0;
      }

      if (*v12)
      {
        v13 = v14;
      }

      result = result + v13;
      v12 += 7;
      --v11;
    }

    while (v11);
    return result;
  }

  v3 = v2 & 0x7FFFFFFFFFFFFFFELL;
  v5 = v1 + 64;
  v6 = v2 & 0x7FFFFFFFFFFFFFFELL;
  result = 0.0;
  do
  {
    v7 = *v5;
    v8 = *(v5 + 56);
    v9 = *(v5 - 16);
    v10 = *(v5 + 40);
    if (*(v5 - 8))
    {
      v9 = 0.0;
    }

    if (*(v5 + 48))
    {
      v10 = 0.0;
    }

    if (*(v5 + 8))
    {
      v7 = v9;
    }

    if (*(v5 + 64))
    {
      v8 = v10;
    }

    result = result + v7 + v8;
    v5 += 112;
    v6 -= 2;
  }

  while (v6);
  if (v2 != v3)
  {
    goto LABEL_16;
  }

  return result;
}

double sub_1000075F0(double result)
{
  v2 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences);
  v3 = *(v2 + 16);
  v4 = -1;
  if (v3 && result >= 0.0)
  {
    v5 = (v2 + 72);
    v6 = 0.0;
    do
    {
      v7 = *(v5 - 3);
      if (*(v5 - 16))
      {
        v7 = 0.0;
      }

      if (!*v5)
      {
        v7 = *(v5 - 1);
      }

      v8 = v4 + 2;
      ++v4;
      if (v8 >= v3)
      {
        break;
      }

      v6 = v6 + v7;
      v5 += 7;
    }

    while (v6 <= result);
  }

  return result;
}

void sub_100007660()
{
  v1 = *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence);
  sub_100007BF8(v1);
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
LABEL_17:
    __break(1u);
  }

  else
  {
    v3 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences;
    v4 = 56 * v1;
    v5 = v1 + 1;
    v6 = 0.0;
    while (1)
    {
      if (qword_10001CFA8 != -1)
      {
        swift_once();
      }

      [qword_10001D0B8 defaultRate];
      if (v6 >= (v7 * 15.0) || v5 >= *(*(v0 + v3) + 16))
      {
        break;
      }

      sub_100007BF8(v5);
      if ((v2 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(v0 + v3);
      if (v5 >= *(v8 + 16))
      {
        goto LABEL_16;
      }

      v9 = v8 + v4;
      v10 = *(v9 + 104);
      v11 = *(v9 + 112);
      v12 = *(v9 + 120);
      v13 = *(v9 + 128);
      if (v11)
      {
        v10 = 0.0;
      }

      if (!v13)
      {
        v10 = v12;
      }

      v6 = v6 + v10;
      ++v5;
      v4 += 56;
    }
  }
}

void sub_1000077AC()
{
  v1 = v0;
  if (qword_10001CFA0 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    sub_10000C510(v2, qword_10001D0A0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "#sirireaderd Canceling all TTS requests", v5, 2u);
    }

    v6 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences;
    v7 = *(*(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences) + 16);
    if (!v7)
    {
      break;
    }

    v8 = 0;
    v9 = 80;
    p_opt_class_meths = (&OBJC_PROTOCOL___NSObject + 48);
    while (1)
    {
      v11 = *(v1 + v6);
      if (v8 >= *(v11 + 16))
      {
        break;
      }

      v12 = *(v11 + v9);
      if (v12)
      {
        v13 = qword_10001CFB0;
        v14 = v12;
        if (v13 != -1)
        {
          swift_once();
        }

        v15 = p_opt_class_meths[24];
        dispatch thunk of DaemonSession.cancel(request:)();

        v16 = *(v1 + v6);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v6) = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = sub_10000D9A8(v16);
          *(v1 + v6) = v16;
        }

        if (v8 >= *(v16 + 2))
        {
          goto LABEL_19;
        }

        v18 = *&v16[v9];
        *&v16[v9] = 0;

        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 134217984;
          *(v21 + 4) = v8;
          _os_log_impl(&_mh_execute_header, v19, v20, "#sirireaderd Canceled TTS generation for sentence %ld", v21, 0xCu);
          p_opt_class_meths = &OBJC_PROTOCOL___NSObject.opt_class_meths;
        }
      }

      ++v8;
      v9 += 56;
      if (v7 == v8)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }
}

void sub_100007A38()
{
  *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlaying) = 0;
  if (qword_10001CFA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C510(v1, qword_10001D0A0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "#sirireaderd Pausing player and calling removeAllItems", v4, 2u);
  }

  if (qword_10001CFA8 != -1)
  {
    swift_once();
  }

  [qword_10001D0B8 pause];
  [qword_10001D0B8 removeAllItems];
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "#sirireaderd Buffering the first sentences", v7, 2u);
  }

  sub_100007660();
}

void sub_100007BF8(unint64_t a1)
{
  v3 = sub_10000C458(&qword_10001D268, &qword_100013290);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v63 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C458(&qword_10001D230, &qword_100013260);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences;
  v15 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences);
  if (*(v15 + 16) <= a1)
  {
    return;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    v16 = v15 + 56 * a1;
    if (*(v16 + 73) == 3)
    {
      if (qword_10001CFA0 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_31;
    }

    if (*(v16 + 80))
    {
      return;
    }

    v20 = *(v16 + 40);
    v65 = *(v16 + 32);

    v21 = sub_10000E86C();
    v22 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);
    v68 = v21;
    if (v22)
    {
      v66 = v8;
      v67 = v1;
      v64 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID);
      v23 = v64;
      v63[0] = 0x80000001000147C0;
      v70 = 0x6E7568435354542FLL;
      v71 = 0xEA00000000002D6BLL;

      v24._countAndFlagsBits = v23;
      v24._object = v22;
      String.append(_:)(v24);
      v25._countAndFlagsBits = 45;
      v25._object = 0xE100000000000000;
      String.append(_:)(v25);
      v69 = a1;
      v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      v63[1] = v20;
      String.append(_:)(v26);

      v27._countAndFlagsBits = v70;
      v28 = v71;
      v70 = 0xD00000000000001ALL;
      v71 = v63[0];
      v27._object = v28;
      String.append(_:)(v27);

      v29._countAndFlagsBits = 1717658414;
      v29._object = 0xE400000000000000;
      String.append(_:)(v29);

      v63[0] = v70;
      v30 = objc_allocWithZone(type metadata accessor for SynthesisRequest());
      v31 = v68;
      v32 = SynthesisRequest.init(text:voice:)();
      UUID.init(uuidString:)();

      dispatch thunk of BaseRequest.logLinkId.setter();
      URL.init(fileURLWithPath:)();

      v33 = v66;
      (*(v66 + 16))(v6, v11, v7);
      (*(v33 + 56))(v6, 0, 1, v7);
      dispatch thunk of BaseRequest.outputPath.setter();
      v68 = v32;

      if (qword_10001CFA0 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_10000C510(v34, qword_10001D0A0);
      v35 = v31;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      v38 = os_log_type_enabled(v36, v37);
      v65 = v35;
      if (v38)
      {
        v39 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v70 = v64;
        *v39 = 134218498;
        *(v39 + 4) = a1;
        *(v39 + 12) = 2080;
        v40 = dispatch thunk of SynthesisVoice.language.getter();
        v42 = sub_10000C7C4(v40, v41, &v70);

        *(v39 + 14) = v42;
        *(v39 + 22) = 2080;
        v43 = dispatch thunk of SynthesisVoice.name.getter();
        if (v44)
        {
          v45 = v44;
        }

        else
        {
          v43 = 0x656D616E206C696ELL;
          v45 = 0xE800000000000000;
        }

        v46 = sub_10000C7C4(v43, v45, &v70);

        *(v39 + 24) = v46;
        _os_log_impl(&_mh_execute_header, v36, v37, "#sirireaderd synthesizing sentence %ld with voice: %s named %s", v39, 0x20u);
        swift_arrayDestroy();
      }

      v47 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = swift_allocObject();
      *(v48 + 16) = v47;
      *(v48 + 24) = a1;
      if (qword_10001CFB0 != -1)
      {
        swift_once();
      }

      v49 = qword_10001D0C0;
      v50 = v68;
      dispatch thunk of DaemonSession.synthesize(request:didFinish:)();

      v51 = v67;
      v52 = *(v67 + v14);
      v53 = v50;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v51 + v14) = v52;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        *(v51 + v14) = sub_10000D9A8(v52);
      }

      (*(v66 + 8))(v11, v7);
      v55 = *(v51 + v14);
      if (*(v55 + 16) > a1)
      {
        v56 = v55 + 56 * a1;
        v57 = *(v56 + 80);
        *(v56 + 80) = v53;

        return;
      }

      __break(1u);
    }

    else
    {

      if (qword_10001CFA0 == -1)
      {
LABEL_24:
        v58 = type metadata accessor for Logger();
        sub_10000C510(v58, qword_10001D0A0);
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&_mh_execute_header, v59, v60, "#sirireaderd No currently playing UUID", v61, 2u);
        }

        goto LABEL_27;
      }
    }

    swift_once();
    goto LABEL_24;
  }

  __break(1u);
LABEL_31:
  swift_once();
LABEL_5:
  v17 = type metadata accessor for Logger();
  sub_10000C510(v17, qword_10001D0A0);
  v68 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v68, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v68, v18, "#sirireaderd Sentence %ld has already been generated, not doing generation", v19, 0xCu);
  }

LABEL_27:
  v62 = v68;
}

void sub_1000083D4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C510(v4, qword_10001D0A0);
    v5 = static os_log_type_t.error.getter();
    swift_errorRetain();
    v6 = Logger.logObject.getter();

    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = Error.localizedDescription.getter();
      v11 = sub_10000C7C4(v9, v10, &v17);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v6, v5, "#sirireaderd %s", v7, 0xCu);
      sub_10000FEF8(v8);
    }

    else
    {
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_100008640(a3);
  }

  else
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000C510(v14, qword_10001D0A0);
    v13 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v13, v15, "#sirireaderd unexpectedly found nil self", v16, 2u);
    }
  }
}

void sub_100008640(unint64_t a1)
{
  v3 = v1;
  if (qword_10001CFA0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C510(v5, qword_10001D0A0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v2 = swift_slowAlloc();
    *v2 = 134217984;
    *(v2 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v6, v7, "#sirireaderd Generation completed for sentence: %ld", v2, 0xCu);
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences;
    v6 = *(v3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences);
    if (v6[2].isa > a1)
    {
      v7 = BYTE1(v6[7 * a1 + 9].isa);
      v8 = *(v3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + v2) = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_20:
  v6 = sub_10000D9A8(v6);
LABEL_8:
  if (v6[2].isa <= a1)
  {
    __break(1u);
    return;
  }

  v10 = &v6[7 * a1];
  BYTE1(v10[9].isa) = 3;
  *(v3 + v2) = v6;
  isa = v10[10].isa;
  v10[10].isa = 0;

  if (*(v3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_startingSentence) == a1 && *(v3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlayingStartingTone) != 1)
  {
    v12 = 1;
  }

  else
  {
    if ((v7 - 1) > 1)
    {
      return;
    }

    v12 = v7 == 1;
  }

  sub_100008820(a1, v12);
}

uint64_t sub_100008820(unint64_t a1, int a2)
{
  v3 = v2;
  v98 = a2;
  v5 = sub_10000C458(&qword_10001D230, &qword_100013260);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v90 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for URL();
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v22 = v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences;
  if (*(*(v3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences) + 16) <= a1)
  {
    if (qword_10001CFA0 == -1)
    {
LABEL_28:
      v71 = type metadata accessor for Logger();
      sub_10000C510(v71, qword_10001D0A0);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&_mh_execute_header, v72, v73, "#sirireaderd Playback complete, resetting to beginning of content", v74, 2u);
      }

      *(v3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence) = 0;
      if (qword_10001CFA8 != -1)
      {
        swift_once();
      }

      [qword_10001D0B8 removeAllItems];
      sub_100004AE0();
      return 0;
    }

LABEL_58:
    swift_once();
    goto LABEL_28;
  }

  v96 = v19;
  v97 = v16;
  v93 = v13;
  v94 = v12;
  v95 = v20;
  if (qword_10001CFA0 != -1)
  {
    swift_once();
  }

  v92 = type metadata accessor for Logger();
  sub_10000C510(v92, qword_10001D0A0);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    *(v26 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v24, v25, "#sirireaderd Updating playback duration and position for sentence: %ld", v26, 0xCu);
  }

  sub_100009540(a1);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    *(v29 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v27, v28, "#sirireaderd Attempting to add sentence to play queue: %ld", v29, 0xCu);
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_58;
  }

  v30 = *(v3 + v23);
  if (*(v30 + 16) <= a1)
  {
    __break(1u);
LABEL_60:
    v27 = sub_10000D9A8(v27);
    goto LABEL_40;
  }

  v31 = *(v30 + 56 * a1 + 73);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  if (v31 == 3)
  {
    if (v34)
    {
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      *(v35 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v32, v33, "#sirireaderd Validated sentence has been generated: %ld", v35, 0xCu);
    }

    v36 = *(v3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);
    if (v36)
    {
      v37 = *(v3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID);
      v100 = 0x6E7568435354542FLL;
      v101 = 0xEA00000000002D6BLL;

      v90[1] = v37;
      v90[2] = v36;
      v38._countAndFlagsBits = v37;
      v38._object = v36;
      String.append(_:)(v38);
      v39._countAndFlagsBits = 45;
      v39._object = 0xE100000000000000;
      String.append(_:)(v39);
      v99 = a1;
      v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v40);

      v41._countAndFlagsBits = v100;
      v42 = v101;
      v100 = 0xD00000000000001ALL;
      v101 = 0x80000001000147C0;
      v41._object = v42;
      String.append(_:)(v41);

      v43._countAndFlagsBits = 1717658414;
      v43._object = 0xE400000000000000;
      String.append(_:)(v43);

      URL.init(fileURLWithPath:)();

      v44 = objc_allocWithZone(AVPlayerItem);
      URL._bridgeToObjectiveC()(v45);
      v47 = v46;
      v48 = [v44 initWithURL:v46];

      v49 = String._bridgeToObjectiveC()();
      v91 = v48;
      [v48 addObserver:v3 forKeyPath:v49 options:3 context:0];

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 134217984;
        *(v52 + 4) = a1;
        _os_log_impl(&_mh_execute_header, v50, v51, "#sirireaderd Adding sentence to play queue: %ld", v52, 0xCu);
      }

      if (qword_10001CFA8 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_62;
    }

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&_mh_execute_header, v83, v84, "#sirireaderd No currently playing UUID", v85, 2u);
    }

    return 0;
  }

  if (v34)
  {
    v76 = swift_slowAlloc();
    *v76 = 134217984;
    *(v76 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v32, v33, "#sirireaderd Sentence %ld has not been generated, will begin playback once generation is complete.", v76, 0xCu);
  }

  if (v98)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2;
  }

  v27 = *(v3 + v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v23) = v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_40:
  if (v27[2].isa > a1)
  {
    result = 0;
    BYTE1(v27[7 * a1 + 9].isa) = v22;
    *(v3 + v23) = v27;
    return result;
  }

  __break(1u);
LABEL_62:
  swift_once();
LABEL_17:
  [qword_10001D0B8 insertItem:v91 afterItem:0];
  v53 = v97;
  if ((v98 & 1) == 0)
  {
    goto LABEL_42;
  }

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 134217984;
    *(v56 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v54, v55, "#sirireaderd Starting playback for sentence: %ld", v56, 0xCu);
    v53 = v97;
  }

  [qword_10001D0B8 play];
  *(v3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlaying) = 1;
  if (*(v3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_startingSentence) == a1)
  {
    sub_10000BB10(v53);
    v57 = CFAbsoluteTimeGetCurrent() - *(v3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentRequestStartTime);
    [qword_10001D0B8 volume];
    v59 = v58;
    v60 = [objc_allocWithZone(READSchemaREADPlaybackSessionStartedOrChanged) init];
    [v60 setPlaybackStateChange:1];
    LODWORD(v61) = v59;
    [v60 setVolume:v61];
    if (v57 > 0.0)
    {
      *&v62 = v57;
      [v60 setCustomerPerceivedLatency:v62];
    }

    v63 = [objc_allocWithZone(READSchemaREADPlaybackSessionContext) init];
    if (v63)
    {
      v64 = objc_allocWithZone(SISchemaUUID);
      v65 = v63;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v67 = [v64 initWithNSUUID:isa];

      [v65 setContextId:v67];
    }

    [v63 setStartedOrChanged:v60];
    UUID.init(uuidString:)();
    v69 = v93;
    v68 = v94;
    if ((*(v93 + 48))(v9, 1, v94) == 1)
    {
      sub_10000FD30(v9, &qword_10001D230, &qword_100013260);
      v70 = 1;
    }

    else
    {
      (*(v69 + 32))(v11, v9, v68);
      v70 = 0;
    }

    (*(v69 + 56))(v11, v70, 1, v68);
    v86 = sub_100010348(v11);
    sub_10000FD30(v11, &qword_10001D230, &qword_100013260);
    if (v86)
    {
      [v86 setPlaybackSessionContext:v63];
      [objc_msgSend(objc_opt_self() "sharedStream")];

      swift_unknownObjectRelease();
      (*(v69 + 8))(v97, v68);
    }

    else
    {
      if (qword_10001CFC8 != -1)
      {
        swift_once();
      }

      sub_10000C510(v92, qword_10001D358);
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&_mh_execute_header, v87, v88, "error generating READClient Event", v89, 2u);
      }

      (*(v93 + 8))(v97, v94);
    }
  }

  else
  {
LABEL_42:
  }

  v78 = v91;
  v79 = objc_allocWithZone(NSUserDefaults);
  v80 = String._bridgeToObjectiveC()();
  v81 = [v79 initWithSuiteName:v80];

  if (v81)
  {
    v82 = String._bridgeToObjectiveC()();
    [v81 setInteger:a1 forKey:v82];

    v78 = v82;
  }

  (*(v95 + 8))(v22, v96);
  return 1;
}

void sub_100009540(uint64_t a1)
{
  v2 = v1;
  sub_10000741C(a1);
  v4 = v3;
  if (qword_10001CFA0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C510(v5, qword_10001D0A0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v6, v7, "#sirireaderd calculated estimated playback position: %f", v8, 0xCu);
  }

  v9 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences);
  v10 = *(v9 + 16);
  if (!v10)
  {
    v12 = 0.0;
    goto LABEL_26;
  }

  if (v10 == 1)
  {
    v11 = 0;
    v12 = 0.0;
LABEL_20:
    v19 = (v9 + 56 * v11 + 72);
    v20 = v10 - v11;
    do
    {
      v21 = *(v19 - 1);
      v22 = *(v19 - 3);
      if (*(v19 - 16))
      {
        v22 = 0.0;
      }

      if (*v19)
      {
        v21 = v22;
      }

      v12 = v12 + v21;
      v19 += 7;
      --v20;
    }

    while (v20);
    goto LABEL_26;
  }

  v11 = v10 & 0x7FFFFFFFFFFFFFFELL;
  v13 = v9 + 64;
  v14 = v10 & 0x7FFFFFFFFFFFFFFELL;
  v12 = 0.0;
  do
  {
    v15 = *v13;
    v16 = *(v13 + 56);
    v17 = *(v13 - 16);
    v18 = *(v13 + 40);
    if (*(v13 - 8))
    {
      v17 = 0.0;
    }

    if (*(v13 + 48))
    {
      v18 = 0.0;
    }

    if (*(v13 + 8))
    {
      v15 = v17;
    }

    if (*(v13 + 64))
    {
      v16 = v18;
    }

    v12 = v12 + v15 + v16;
    v13 += 112;
    v14 -= 2;
  }

  while (v14);
  if (v10 != v11)
  {
    goto LABEL_20;
  }

LABEL_26:
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v23, v24, "#sirireaderd calculated total playback duration of %f", v25, 0xCu);
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = &type metadata for Double;
  *v34 = v12;
  v27 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_nowPlayingInfo;
  sub_1000069E4(v34, v26, v28);
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = &type metadata for Double;
  v34[0] = v4;
  sub_1000069E4(v34, v29, v30);
  v31 = [objc_opt_self() defaultCenter];
  v32 = *(v2 + v27);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v31 setNowPlayingInfo:isa];
}

void sub_1000099EC()
{
  v1 = v0;
  v2 = Notification.userInfo.getter();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16))
  {
    goto LABEL_21;
  }

  v4 = sub_10000CE74(v20);
  if ((v5 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_10000EFB0(*(v3 + 56) + 32 * v4, v21);
  sub_10000F1B0(v20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    return;
  }

  if (!v18)
  {
    *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isSessionActive) = 1;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    if (*(v3 + 16))
    {
      v10 = sub_10000CE74(v20);
      if (v11)
      {
        sub_10000EFB0(*(v3 + 56) + 32 * v10, v21);
        sub_10000F1B0(v20);

        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        if (v19)
        {
          sub_100005A94();
          if (qword_10001CFA0 != -1)
          {
            swift_once();
          }

          v17 = type metadata accessor for Logger();
          sub_10000C510(v17, qword_10001D0A0);
          v13 = Logger.logObject.getter();
          v14 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v13, v14))
          {
            goto LABEL_28;
          }

          v15 = swift_slowAlloc();
          *v15 = 0;
          v16 = "#sirireaderd Audio session resumed";
        }

        else
        {
          if (qword_10001CFA0 != -1)
          {
            swift_once();
          }

          v12 = type metadata accessor for Logger();
          sub_10000C510(v12, qword_10001D0A0);
          v13 = Logger.logObject.getter();
          v14 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v13, v14))
          {
            goto LABEL_28;
          }

          v15 = swift_slowAlloc();
          *v15 = 0;
          v16 = "#sirireaderd Audio session ended and should not resume";
        }

        _os_log_impl(&_mh_execute_header, v13, v14, v16, v15, 2u);

LABEL_28:

        return;
      }
    }

LABEL_21:

    sub_10000F1B0(v20);
    return;
  }

  if (v18 != 1)
  {
    goto LABEL_12;
  }

  if (qword_10001CFA0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C510(v6, qword_10001D0A0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "#sirireaderd Audio session interrupted", v9, 2u);
  }

  *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isSessionActive) = 0;
}

uint64_t sub_100009E7C()
{
  v0 = [objc_opt_self() sharedCommandCenter];
  v1 = [v0 changePlaybackRateCommand];
  if (qword_10001CFB8 != -1)
  {
    swift_once();
  }

  sub_10000FCE8(0, &qword_10001D238, NSNumber_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v1 setSupportedPlaybackRates:isa];

  v3 = [v0 changePlaybackRateCommand];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = sub_10000C66C;
  v39 = v4;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10000AB10;
  v37 = &unk_100018AF0;
  v5 = _Block_copy(&aBlock);

  v6 = [v3 addTargetWithHandler:v5];
  _Block_release(v5);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000FEF8(&aBlock);
  v7 = [v0 playCommand];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = sub_10000C674;
  v39 = v8;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10000AB10;
  v37 = &unk_100018B18;
  v9 = _Block_copy(&aBlock);

  v10 = [v7 addTargetWithHandler:v9];
  _Block_release(v9);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000FEF8(&aBlock);
  v11 = [v0 pauseCommand];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = sub_10000C67C;
  v39 = v12;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10000AB10;
  v37 = &unk_100018B40;
  v13 = _Block_copy(&aBlock);

  v14 = [v11 addTargetWithHandler:v13];
  _Block_release(v13);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000FEF8(&aBlock);
  v15 = [v0 skipForwardCommand];
  sub_10000C458(&qword_10001D240, &qword_100013268);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100013120;
  *(v16 + 32) = NSNumber.init(floatLiteral:)(1.0);
  *(v16 + 40) = NSNumber.init(floatLiteral:)(30.0);
  v17 = Array._bridgeToObjectiveC()().super.isa;

  [v15 setPreferredIntervals:v17];

  v18 = [v0 skipForwardCommand];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = sub_10000C684;
  v39 = v19;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10000AB10;
  v37 = &unk_100018B68;
  v20 = _Block_copy(&aBlock);

  v21 = [v18 addTargetWithHandler:v20];
  _Block_release(v20);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000FEF8(&aBlock);
  v22 = [v0 skipBackwardCommand];
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100013120;
  *(v23 + 32) = NSNumber.init(floatLiteral:)(1.0);
  *(v23 + 40) = NSNumber.init(floatLiteral:)(30.0);
  v24 = Array._bridgeToObjectiveC()().super.isa;

  [v22 setPreferredIntervals:v24];

  v25 = [v0 skipBackwardCommand];
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = sub_10000C68C;
  v39 = v26;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10000AB10;
  v37 = &unk_100018B90;
  v27 = _Block_copy(&aBlock);

  v28 = [v25 addTargetWithHandler:v27];
  _Block_release(v27);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000FEF8(&aBlock);
  v29 = [v0 changePlaybackPositionCommand];
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = sub_10000C694;
  v39 = v30;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10000AB10;
  v37 = &unk_100018BB8;
  v31 = _Block_copy(&aBlock);

  v32 = [v29 addTargetWithHandler:v31];
  _Block_release(v31);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return sub_10000FEF8(&aBlock);
}

uint64_t sub_10000A624(void *a1)
{
  if (qword_10001CFA8 != -1)
  {
    swift_once();
  }

  v2 = [qword_10001D0B8 currentItem];
  if (!v2)
  {
    return 200;
  }

  v3 = v2;
  v4 = [v2 status];

  if (v4 != 1)
  {
    return 200;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    return 200;
  }

  v6 = v5;
  v7 = a1;
  [v6 playbackRate];
  if (v8 <= 0.0)
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000C510(v34, qword_10001D0A0);
    v35 = v7;
    v10 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      [v6 playbackRate];
      *(v37 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v10, v36, "#sirireaderd cannot play at negative rate %f", v37, 0xCu);

      v39 = 200;
      v40 = v10;
      v10 = v35;
    }

    else
    {
      v39 = 200;
      v40 = v35;
    }
  }

  else
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C510(v9, qword_10001D0A0);
    v10 = v7;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      [v6 playbackRate];
      *(v13 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "#sirireaderd changing playback rate to %f", v13, 0xCu);
    }

    v15 = qword_10001D0B8;
    [v6 playbackRate];
    [v15 setDefaultRate:?];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
      [v6 playbackRate];
      v47 = &type metadata for Float;
      v46[0] = v21;
      sub_1000069E4(v46, v18, v20);
    }

    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
      [v6 playbackRate];
      v47 = &type metadata for Float;
      v46[0] = v27;
      sub_1000069E4(v46, v24, v26);
    }

    v28 = [objc_opt_self() defaultCenter];
    v29 = swift_unknownObjectWeakLoadStrong();
    if (v29)
    {
      v30 = *(v29 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_nowPlayingInfo);
      v31 = v29;

      v32.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v32.super.isa = 0;
    }

    [v28 setNowPlayingInfo:v32.super.isa];

    v41 = swift_unknownObjectWeakLoadStrong();
    if (v41)
    {
      v42 = v41[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlaying];

      if (v42 == 1)
      {
        v43 = qword_10001D0B8;
        [v6 playbackRate];
        [v43 playImmediatelyAtRate:?];
      }
    }

    v44 = swift_unknownObjectWeakLoadStrong();
    if (!v44)
    {
      v39 = 0;
      goto LABEL_30;
    }

    v40 = v44;
    [v6 playbackRate];
    sub_10000F010(v45);
    v39 = 0;
  }

LABEL_30:
  return v39;
}

uint64_t sub_10000AB10(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t sub_10000AB68()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C510(v2, qword_10001D0A0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "#sirireaderd playCommand", v5, 2u);
    }

    if (sub_10000EA78())
    {
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "#sirireaderd playCommand refused due this session being ended by the client.";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v6, v7, v9, v8, 2u);
      }
    }

    else
    {
      if (qword_10001CFA8 != -1)
      {
        swift_once();
      }

      [qword_10001D0B8 rate];
      if (v11 == 0.0)
      {
        [qword_10001D0B8 play];
        sub_10000B9C4();
        v10 = 0;
        v1[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlaying] = 1;
LABEL_18:

        return v10;
      }

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "#sirireaderd playCommand failed due to player rate being non zero";
        goto LABEL_16;
      }
    }

    v10 = 200;
    v1 = v6;
    goto LABEL_18;
  }

  return 200;
}

uint64_t sub_10000ADA8()
{
  if (qword_10001CFA0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C510(v0, qword_10001D0A0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "#sirireaderd pauseCommand", v3, 2u);
  }

  if (qword_10001CFA8 != -1)
  {
    swift_once();
  }

  [qword_10001D0B8 pause];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10000B714();
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v6[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlaying] = 0;
  }

  return 0;
}

uint64_t sub_10000AF00()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 200;
  }

  v1 = Strong;
  if (qword_10001CFA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C510(v2, qword_10001D0A0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "#sirireaderd skipForwardCommand", v5, 2u);
  }

  if (sub_10000EA78())
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "#sirireaderd skipForwardCommand refused due this session being ended by the client.", v8, 2u);
    }

    v9 = 200;
    v1 = v6;
  }

  else
  {
    if (qword_10001CFA8 != -1)
    {
      swift_once();
    }

    [qword_10001D0B8 advanceToNextItem];
    v9 = 0;
  }

  return v9;
}

uint64_t sub_10000B0C8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 200;
  }

  v1 = Strong;
  if (qword_10001CFA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C510(v2, qword_10001D0A0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "#sirireaderd skipBackwardCommand", v5, 2u);
  }

  if (sub_10000EA78())
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "#sirireaderd skipBackwardCommand refused due this session being ended by the client.", v8, 2u);
    }

    v9 = 200;
    v1 = v6;
  }

  else
  {
    v1[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlaying] = 0;
    v10 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence;
    v11 = *&v1[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence];
    v12 = v11 < 1;
    v13 = v11 - 1;
    if (!v12)
    {
      *&v1[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence] = v13;
    }

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "#sirireaderd pausing player before skip backward", v16, 2u);
    }

    if (qword_10001CFA8 != -1)
    {
      swift_once();
    }

    [qword_10001D0B8 pause];
    [qword_10001D0B8 removeAllItems];
    sub_100007660();
    sub_100008820(*&v1[v10], 1);
    v9 = 0;
  }

  return v9;
}

uint64_t sub_10000B344(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    return 200;
  }

  v3 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 200;
  }

  v5 = Strong;
  v6 = qword_10001CFA0;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C510(v8, qword_10001D0A0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "#sirireaderd changePlaybackPositionCommand", v11, 2u);
  }

  [v3 positionTime];
  v13 = v12;
  v14 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isCurrentlySeeking;
  v5[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isCurrentlySeeking] = 1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "#sirireaderd pausing player before changing playback position", v17, 2u);
  }

  if (qword_10001CFA8 != -1)
  {
    swift_once();
  }

  [qword_10001D0B8 pause];
  [qword_10001D0B8 removeAllItems];
  sub_1000075F0(v13);
  v19 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v20, v21, "#sirireaderd changePlaybackPositionCommand to sentence %ld", v22, 0xCu);
  }

  v23 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence;
  *&v5[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence] = v19;
  sub_1000077AC();
  sub_100007660();
  sub_100008820(*&v5[v23], 1);

  v5[v14] = 0;
  return 0;
}

void sub_10000B628()
{
  if (qword_10001CFA0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C510(v0, qword_10001D0A0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "#sirireaderd releasing audio session after idle", v3, 2u);
  }

  sub_100004AE0();
}

void sub_10000B714()
{
  v1 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_idleTimer;
  if (*(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_idleTimer))
  {
    sub_10000B9C4();
  }

  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11[4] = sub_10000C64C;
  v11[5] = v3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000B95C;
  v11[3] = &unk_100018AC8;
  v4 = _Block_copy(v11);

  v5 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:420.0];
  _Block_release(v4);
  v6 = *(v0 + v1);
  *(v0 + v1) = v5;

  *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_idleTimeTracker) = CFAbsoluteTimeGetCurrent();
  if (qword_10001CFA0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C510(v7, qword_10001D0A0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "#sirireaderd idle timer started", v10, 2u);
  }
}

void sub_10000B8FC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10000B628();
  }
}

void sub_10000B95C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_10000B9C4()
{
  v1 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_idleTimer;
  v2 = *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_idleTimer);
  if (v2)
  {
    v3 = v2;
    [v3 invalidate];
    v4 = *(v0 + v1);
    *(v0 + v1) = 0;

    v5 = CFAbsoluteTimeGetCurrent() - *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_idleTimeTracker);
    *&dword_10001D0CC = *&dword_10001D0CC + v5;
  }

  if (qword_10001CFA0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C510(v6, qword_10001D0A0);
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v7, "#sirireaderd idle timer invalidated", v8, 2u);
  }
}

uint64_t sub_10000BB10@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(sub_10000C458(&qword_10001D230, &qword_100013260) - 8) + 64);
  v4 = (__chkstk_darwin)();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v17 - v8;
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  v12 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentContextId;
  sub_10000FDF4(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentContextId, v9, &qword_10001D230, &qword_100013260);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v9, 1, v13) == 1)
  {
    UUID.init()();
    if (v15(v9, 1, v13) != 1)
    {
      sub_10000FD30(v9, &qword_10001D230, &qword_100013260);
    }
  }

  else
  {
    (*(v14 + 32))(v11, v9, v13);
  }

  (*(v14 + 56))(v11, 0, 1, v13);
  sub_10000C4A0(v11, v1 + v12);
  sub_10000FDF4(v1 + v12, v6, &qword_10001D230, &qword_100013260);
  if (v15(v6, 1, v13) != 1)
  {
    return (*(v14 + 32))(a1, v6, v13);
  }

  UUID.init()();
  result = (v15)(v6, 1, v13);
  if (result != 1)
  {
    return sub_10000FD30(v6, &qword_10001D230, &qword_100013260);
  }

  return result;
}

uint64_t type metadata accessor for SiriReaderDaemon()
{
  result = qword_10001D180;
  if (!qword_10001D180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000BEE4()
{
  sub_10000BFD4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10000BFD4()
{
  if (!qword_10001D190)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10001D190);
    }
  }
}

Swift::Int sub_10000C040()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000C0B4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

id sub_10000C0F8()
{
  v1 = OBJC_IVAR____TtC11sirireaderd22SiriReaderDaemonServer_server;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for SiriReaderDaemon()) init];
  v2 = OBJC_IVAR____TtC11sirireaderd22SiriReaderDaemonServer_interface;
  *&v0[v2] = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP11sirireaderd24SiriReaderDaemonProtocol_];
  v9.receiver = v0;
  v9.super_class = type metadata accessor for SiriReaderDaemonServer();
  v3 = objc_msgSendSuper2(&v9, "init");
  v4 = objc_allocWithZone(NSXPCListener);
  v5 = v3;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 initWithMachServiceName:v6];

  [v7 setDelegate:v5];
  [v7 resume];

  return v5;
}

id sub_10000C2F0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

__n128 sub_10000C398(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10000C3B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000C3FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000C458(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000C4A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C458(&qword_10001D230, &qword_100013260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C510(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_10000C548(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  v8 = v5(v7, a2, a3);

  return v8;
}

uint64_t *sub_10000C5B0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_10000C614()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C654(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_10000C69C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C458(&qword_10001D260, &qword_100013288);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10000C7C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000C890(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000EFB0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000FEF8(v11);
  return v7;
}

unint64_t sub_10000C890(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000C99C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10000C99C(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000C9E8(a1, a2);
  sub_10000CB18(&off_100018978);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000C9E8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000CC04(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000CC04(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000CB18(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10000CC78(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000CC04(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000C458(&qword_10001D250, &qword_100013278);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000CC78(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C458(&qword_10001D250, &qword_100013278);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_10000CD6C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10000CEB8(a1, a2, v6);
}

unint64_t sub_10000CDE4(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000CF70(a1, v4);
}

unint64_t sub_10000CE74(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000D074(a1, v4);
}

unint64_t sub_10000CEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10000CF70(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10000D074(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000F204(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000F1B0(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

double sub_10000D13C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10000CD6C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10000D804();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_10000F1A0((*(v12 + 56) + 32 * v9), a3);
    sub_10000D498(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_10000D1E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C458(&qword_10001D258, &qword_100013280);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_10000F1A0(v25, v37);
      }

      else
      {
        sub_10000EFB0(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_10000F1A0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10000D498(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_10000D648(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000CD6C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10000D804();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10000D1E0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10000CD6C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_10000FEF8(v23);

    return sub_10000F1A0(a1, v23);
  }

  else
  {
    sub_10000D798(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_10000D798(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000F1A0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_10000D804()
{
  v1 = v0;
  sub_10000C458(&qword_10001D258, &qword_100013280);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000EFB0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000F1A0(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void sub_10000D9BC(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(NSUserDefaults);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithSuiteName:v5];

  if (v6)
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C510(v7, qword_10001D0A0);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10000C7C4(a1, a2, &v14);
      _os_log_impl(&_mh_execute_header, v8, v9, "#sirireaderd set sessionUuidEndedByClient %s", v10, 0xCu);
      sub_10000FEF8(v11);
    }

    v12 = String._bridgeToObjectiveC()();
    v13 = String._bridgeToObjectiveC()();
    [v6 setObject:v12 forKey:v13];
  }
}

unint64_t sub_10000DBE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C458(&qword_10001D328, &qword_1000132C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000FDF4(v4, &v11, &qword_10001D320, &qword_1000132B8);
      v5 = v11;
      result = sub_10000CDE4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000F1A0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

float sub_10000DD08()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  v3 = 1.0;
  if (v2)
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [v2 objectForKey:v4];

    if (v5)
    {
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
    }

    else
    {

      v8 = 0u;
      v9 = 0u;
    }

    v10[0] = v8;
    v10[1] = v9;
    if (*(&v9 + 1))
    {
      if (swift_dynamicCast())
      {
        return v7;
      }
    }

    else
    {
      sub_10000FD30(v10, &qword_10001D248, &qword_100013270);
    }
  }

  return v3;
}

uint64_t sub_10000DE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7, unint64_t a8)
{
  v9 = v8;
  v73 = a7;
  v74 = a4;
  v72 = a3;
  v75 = a2;
  v71 = a1;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v80 = *(v13 - 8);
  v81 = v13;
  v14 = *(v80 + 64);
  __chkstk_darwin(v13);
  v78 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for DispatchQoS();
  v77 = *(v79 - 8);
  v16 = *(v77 + 64);
  __chkstk_darwin(v79);
  v76 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Current = CFAbsoluteTimeGetCurrent();
  v19 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentRequestStartTime;
  *&v8[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentRequestStartTime] = Current;
  if (v8[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isSessionActive] == 1)
  {
    sub_100004AE0();
  }

  sub_1000046B8();
  if (qword_10001CFB0 != -1)
  {
    swift_once();
  }

  v20 = qword_10001D0C0;
  dispatch thunk of DaemonSession.keepActive.setter();

  if (qword_10001CFA0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_10000C510(v21, qword_10001D0A0);

  v23 = v9;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v70 = v22;
    v27 = a8;
    v28 = v26;
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 136315394;
    *(v28 + 4) = sub_10000C7C4(a5, a6, aBlock);
    *(v28 + 12) = 2048;
    *(v28 + 14) = *&v9[v19];
    _os_log_impl(&_mh_execute_header, v24, v25, "#sirireaderd new UUID now playing: %s started at %f", v28, 0x16u);
    sub_10000FEF8(v29);

    a8 = v27;
  }

  v30 = &v23[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID];
  v31 = *&v23[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8];
  *v30 = a5;
  v30[1] = a6;

  dword_10001D0C8 = 0;
  dword_10001D0CC = 0;
  *&v23[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_idleTimeTracker] = 0;
  sub_10000B9C4();
  v32 = 0;
  if (a8 <= 2)
  {
    v32 = dword_10001334C[a8];
  }

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    aBlock[0] = v70;
    *v35 = 136315138;
    v36 = READSchemaREADRequestTrigger.description.getter();
    v38 = a8;
    v39 = sub_10000C7C4(v36, v37, aBlock);

    *(v35 + 4) = v39;
    a8 = v38;
    _os_log_impl(&_mh_execute_header, v33, v34, "#sirireaderd logging trigger as: %s", v35, 0xCu);
    sub_10000FEF8(v70);
  }

  v40 = *v30;
  v41 = v30[1];

  sub_100010F7C(v40, v41, v32);

  *&v23[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_startingSentence] = sub_100002DF8();
  sub_100003A28(a8);
  sub_1000032F0();
  v42 = [objc_opt_self() defaultManager];
  v43 = String._bridgeToObjectiveC()();
  sub_10000C458(&qword_10001D318, &qword_1000132B0);
  inited = swift_initStackObject();
  *(inited + 32) = NSFileOwnerAccountName;
  *(inited + 16) = xmmword_100013130;
  *(inited + 64) = &type metadata for String;
  *(inited + 40) = 0x656C69626F6DLL;
  *(inited + 48) = 0xE600000000000000;
  v45 = NSFileOwnerAccountName;
  sub_10000DBE0(inited);
  swift_setDeallocating();
  sub_10000FD30(inited + 32, &qword_10001D320, &qword_1000132B8);
  type metadata accessor for FileAttributeKey(0);
  sub_10000FE5C(&qword_10001D078, type metadata accessor for FileAttributeKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  aBlock[0] = 0;
  v47 = [v42 createDirectoryAtPath:v43 withIntermediateDirectories:0 attributes:isa error:aBlock];

  if (v47)
  {
    v48 = aBlock[0];
  }

  else
  {
    v49 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      swift_errorRetain();
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 4) = v54;
      *v53 = v54;
      _os_log_impl(&_mh_execute_header, v50, v51, "#sirireaderd error creating TTS generation directory: %@", v52, 0xCu);
      sub_10000FD30(v53, &qword_10001D278, &unk_100013298);
    }

    else
    {
    }
  }

  if (qword_10001CFA8 != -1)
  {
    swift_once();
  }

  v55 = qword_10001D0B8;
  *&v56 = sub_10000DD08();
  [v55 setDefaultRate:v56];

  v57 = *&v23[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_serialQueue];
  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v59 = swift_allocObject();
  v60 = v71;
  v59[2] = v58;
  v59[3] = v60;
  v61 = v73;
  v59[4] = v75;
  v59[5] = v61;
  v62 = v72;
  v59[6] = a8;
  v59[7] = v62;
  v59[8] = v74;
  aBlock[4] = sub_10000FDE0;
  aBlock[5] = v59;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100010140;
  aBlock[3] = &unk_100018D98;
  v63 = _Block_copy(aBlock);
  v64 = v61;

  v65 = v76;
  static DispatchQoS.unspecified.getter();
  v82 = &_swiftEmptyArrayStorage;
  sub_10000FE5C(&qword_10001D2F0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000C458(&qword_10001D2F8, &qword_1000132A8);
  sub_10000FEA4(&qword_10001D300, &qword_10001D2F8, &qword_1000132A8);
  v66 = v78;
  v67 = v81;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v63);
  (*(v80 + 8))(v66, v67);
  (*(v77 + 8))(v65, v79);
}

id sub_10000E86C()
{
  v0 = type metadata accessor for SynthesisVoice();
  v1 = objc_allocWithZone(v0);
  v2 = SynthesisVoice.init(language:name:)();
  v3 = [objc_opt_self() sharedPreferences];
  v4 = [v3 outputVoice];

  if (!v4)
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C510(v9, qword_10001D0A0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "#sirireaderd Unable to retrieve outputVoice, falling back to en-us", v12, 2u);
    }

    goto LABEL_10;
  }

  result = [v4 languageCode];
  if (result)
  {
    v6 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = [v4 name];
    if (v7)
    {
      v8 = v7;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v13 = objc_allocWithZone(v0);
    v14 = SynthesisVoice.init(language:name:)();

    v10 = v2;
    v2 = v14;
LABEL_10:

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000EA78()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 objectForKey:v3];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v25 = v23;
    v26 = v24;
    if (*(&v24 + 1))
    {
      if (swift_dynamicCast())
      {
        v6 = String._bridgeToObjectiveC()();
        v7 = [v2 valueForKey:v6];

        if (v7)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v23 = 0u;
          v24 = 0u;
        }

        v25 = v23;
        v26 = v24;
        if (*(&v24 + 1))
        {
          if (swift_dynamicCast())
          {
            if (qword_10001CFA0 != -1)
            {
              swift_once();
            }

            v13 = type metadata accessor for Logger();
            sub_10000C510(v13, qword_10001D0A0);

            v14 = Logger.logObject.getter();
            v15 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v14, v15))
            {
              v16 = swift_slowAlloc();
              *&v25 = swift_slowAlloc();
              *v16 = 136315394;
              *(v16 + 4) = sub_10000C7C4(v21, v22, &v25);
              *(v16 + 12) = 2080;
              *(v16 + 14) = sub_10000C7C4(v21, v22, &v25);
              _os_log_impl(&_mh_execute_header, v14, v15, "#sirireaderd sessionUuidEndedByClient %s previouslyInProgressUUID %s", v16, 0x16u);
              swift_arrayDestroy();
            }

            v17 = String.uppercased()();

            v18 = String.uppercased()();

            if (v17._countAndFlagsBits == v18._countAndFlagsBits && v17._object == v18._object)
            {
              v5 = 1;
            }

            else
            {
              v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            goto LABEL_33;
          }
        }

        else
        {

          sub_10000FD30(&v25, &qword_10001D248, &qword_100013270);
        }

        if (qword_10001CFA0 != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        sub_10000C510(v19, qword_10001D0A0);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v9, v10))
        {
LABEL_32:

          v5 = 0;
          v2 = v9;
LABEL_33:

          return v5 & 1;
        }

        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = "#sirireaderd sessionUuidEndedByClient is nil";
LABEL_31:
        _os_log_impl(&_mh_execute_header, v9, v10, v12, v11, 2u);

        goto LABEL_32;
      }
    }

    else
    {
      sub_10000FD30(&v25, &qword_10001D248, &qword_100013270);
    }

    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C510(v8, qword_10001D0A0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_32;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "#sirireaderd previouslyInProgressUUID is nil";
    goto LABEL_31;
  }

  v5 = 0;
  return v5 & 1;
}

uint64_t sub_10000EFB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10000F010(float a1)
{
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithSuiteName:v3];

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
    *&v6 = a1;
    oslog = v5;
    [v4 setFloat:v6 forKey:?];
  }

  else
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C510(v7, qword_10001D0A0);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "#sirireaderd failed to fetch user defaults", v9, 2u);
    }
  }
}

_OWORD *sub_10000F1A0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000F260()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F2A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000F2FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000F310(a1, a2);
  }

  return a1;
}

uint64_t sub_10000F310(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000F364()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F3A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10000F3DC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_100003B94(a1);
}

uint64_t sub_10000F3F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10000F424()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F478(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_10000F4C8(unint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  if (a2)
  {
    v9 = a2;
    v10 = a1;
    if ((a1 != 0x49746E6572727563 || a2 != 0xEB000000006D6574) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_25;
    }

    sub_10000FDF4(a3, &time, &qword_10001D248, &qword_100013270);
    if (!v59)
    {
      sub_10000FD30(&time, &qword_10001D248, &qword_100013270);
      goto LABEL_25;
    }

    sub_10000FCE8(0, &qword_10001D310, AVPlayer_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_25;
    }

    v11 = v57;
    v12 = [v57 currentItem];
    if (v12)
    {
    }

    else if ((v4[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlaying] & 1) != 0 && (v4[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isCurrentlySeeking] & 1) == 0)
    {
      v6 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence;
      v5 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences;
      if (*&v4[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence] < *(*&v4[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences] + 16))
      {
        if (qword_10001CFA0 == -1)
        {
          goto LABEL_14;
        }

        goto LABEL_69;
      }
    }

    while (1)
    {

LABEL_25:
      if ((v10 != 0x737574617473 || v9 != 0xE600000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return;
      }

      if (a4 && *(a4 + 2) && (v28 = sub_10000CDE4(NSKeyValueChangeNewKey), (v29 & 1) != 0) && (sub_10000EFB0(*(a4 + 7) + 32 * v28, &time), sub_10000FCE8(0, &qword_10001D238, NSNumber_ptr), (swift_dynamicCast() & 1) != 0))
      {
        v30 = [v57 integerValue];

        v31 = v30 == 2;
      }

      else
      {
        v31 = 0;
      }

      sub_10000FDF4(a3, &time, &qword_10001D248, &qword_100013270);
      if (!v59)
      {
        sub_10000FD30(&time, &qword_10001D248, &qword_100013270);
        if (!v31)
        {
          return;
        }

        goto LABEL_58;
      }

      sub_10000FCE8(0, &qword_10001D308, AVPlayerItem_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_57;
      }

      v11 = v4;
      a3 = v57;
      [v57 duration];
      Seconds = CMTimeGetSeconds(&time);
      if (qword_10001CFA0 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      v4 = sub_10000C510(v33, qword_10001D0A0);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 134217984;
        *(v36 + 4) = Seconds;
        _os_log_impl(&_mh_execute_header, v34, v35, "#sirireaderd playerItem.duration in seconds : %f", v36, 0xCu);
      }

      if ((~*&Seconds & 0x7FF0000000000000) == 0 && (*&Seconds & 0xFFFFFFFFFFFFFLL) != 0)
      {
        goto LABEL_52;
      }

      v10 = *&v11[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence];
      v9 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences;
      a4 = *&v11[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences];
      if (v10 >= *(a4 + 2))
      {
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&_mh_execute_header, v40, v41, "#sirireaderd attempting to save duration for sentence outside bounds", v42, 2u);
        }

        goto LABEL_52;
      }

      v37 = *&v11[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v11[v9] = a4;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_67;
        }
      }

      else
      {
        a4 = sub_10000D9A8(a4);
        if ((v10 & 0x8000000000000000) != 0)
        {
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }
      }

      if (v10 < *(a4 + 2))
      {
        v39 = &a4[56 * v10];
        *(v39 + 8) = Seconds;
        v39[72] = 0;
        *&v11[v9] = a4;
LABEL_52:
        v43 = [v57 error];
        if (v43)
        {
          v44 = v43;
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            *v47 = 138412290;
            v49 = v44;
            v50 = _swift_stdlib_bridgeErrorToNSError();
            *(v47 + 4) = v50;
            *v48 = v50;
            _os_log_impl(&_mh_execute_header, v45, v46, "#sirireaderd playerItem error: %@", v47, 0xCu);
            sub_10000FD30(v48, &qword_10001D278, &unk_100013298);

            if (!v31)
            {
              return;
            }
          }

          else
          {

            if (!v31)
            {
              return;
            }
          }
        }

        else
        {

LABEL_57:
          if (!v31)
          {
            return;
          }
        }

LABEL_58:
        if (qword_10001CFA0 != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        sub_10000C510(v51, qword_10001D0A0);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v52, v53, "#sirireaderd AVPlayerItem failure has occured", v54, 2u);
        }

        return;
      }

LABEL_68:
      __break(1u);
LABEL_69:
      swift_once();
LABEL_14:
      v13 = type metadata accessor for Logger();
      sub_10000C510(v13, qword_10001D0A0);
      v56 = v4;
      v14 = v4;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v55 = v5;
        v17 = swift_slowAlloc();
        *v17 = 134217984;
        v18 = v14;
        v19 = v56;
        *(v17 + 4) = *&v56[v6];

        _os_log_impl(&_mh_execute_header, v15, v16, "#sirireaderd Marking playback as complete for sentence: %ld", v17, 0xCu);
        v5 = v55;
      }

      else
      {

        v15 = v14;
        v19 = v56;
      }

      v20 = *&v19[v6];
      if ((v20 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_71:
        __break(1u);
        return;
      }

      v21 = *&v19[v5];
      if (v20 >= *(v21 + 16))
      {
        goto LABEL_71;
      }

      v22 = v21 + 56 * v20;
      v23 = *(v22 + 48);
      v24 = *(v22 + 56);
      v25 = *(v22 + 64);
      v26 = *(v22 + 72);
      if (v24)
      {
        v23 = 0.0;
      }

      if (!v26)
      {
        v23 = v25;
      }

      v27 = v23;
      *&dword_10001D0C8 = *&dword_10001D0C8 + v27;
      *&v19[v6] = v20 + 1;
      sub_100008820(v20 + 1, 0);
      sub_100007660();
      v4 = v56;
    }
  }
}

uint64_t sub_10000FCE8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000FD30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000C458(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000FD90()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

void sub_10000FDE0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_100002B04(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
}

uint64_t sub_10000FDF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000C458(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000FE5C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000FEA4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000F478(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000FEF8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t getEnumTagSinglePayload for GenerationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenerationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000100BC()
{
  result = qword_10001D348;
  if (!qword_10001D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D348);
  }

  return result;
}

uint64_t sub_100010174()
{
  sub_1000101E0();
  result = OS_os_log.init(subsystem:category:)();
  qword_10001D508 = result;
  return result;
}

unint64_t sub_1000101E0()
{
  result = qword_10001D350;
  if (!qword_10001D350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001D350);
  }

  return result;
}

uint64_t sub_10001022C()
{
  v0 = type metadata accessor for Logger();
  sub_10000C5B0(v0, qword_10001D358);
  sub_10000C510(v0, qword_10001D358);
  if (qword_10001CFC0 != -1)
  {
    swift_once();
  }

  v1 = qword_10001D508;
  return Logger.init(_:)();
}

uint64_t sub_1000102EC()
{
  sub_10000FEF8((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

void *sub_100010348(uint64_t a1)
{
  v2 = sub_10000C458(&qword_10001D230, &qword_100013260);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v31 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000107AC(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10001081C(v5);
    if (qword_10001CFC8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C510(v11, qword_10001D358);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "cannot generate READClient event with nil readId", v14, 2u);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v15 = [objc_allocWithZone(READSchemaREADClientEvent) init];
    if (v15)
    {
      v16 = v15;
      v17 = [objc_allocWithZone(READSchemaREADClientEventMetadata) init];
      if (v17)
      {
        v18 = v17;
        v19 = objc_allocWithZone(SISchemaUUID);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v21 = [v19 initWithNSUUID:isa];

        [v18 setReadId:v21];
        [v16 setEventMetadata:v18];

        (*(v7 + 8))(v10, v6);
        return v16;
      }

      if (qword_10001CFC8 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000C510(v27, qword_10001D358);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "error initializing READSchemaREADClientEventMetadata", v30, 2u);
      }
    }

    else
    {
      if (qword_10001CFC8 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_10000C510(v23, qword_10001D358);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "error initializing READSchemaREADClientEvent", v26, 2u);
      }
    }

    (*(v7 + 8))(v10, v6);
  }

  return 0;
}

uint64_t sub_1000107AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C458(&qword_10001D230, &qword_100013260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001081C(uint64_t a1)
{
  v2 = sub_10000C458(&qword_10001D230, &qword_100013260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100010884(float a1, float a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10000C458(&qword_10001D230, &qword_100013260);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v14 = [objc_allocWithZone(READSchemaREADPlaybackSessionEnded) init];
  *&v15 = a1;
  [v14 setPlayedAudioDuration:v15];
  *&v16 = a2;
  [v14 setTotalDuration:v16];
  v17 = [objc_allocWithZone(READSchemaREADPlaybackSessionContext) init];
  if (v17)
  {
    v18 = objc_allocWithZone(SISchemaUUID);
    v19 = v17;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v21 = [v18 initWithNSUUID:isa];

    [v19 setContextId:v21];
  }

  [v17 setEnded:v14];
  if (!a4)
  {
    goto LABEL_9;
  }

  UUID.init(uuidString:)();
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v11, 1, v22) == 1)
  {
    sub_10001081C(v11);
    v24 = 1;
  }

  else
  {
    (*(v23 + 32))(v13, v11, v22);
    v24 = 0;
  }

  (*(v23 + 56))(v13, v24, 1, v22);
  v25 = sub_100010348(v13);
  sub_10001081C(v13);
  if (v25)
  {
    [v25 setPlaybackSessionContext:v17];
    [objc_msgSend(objc_opt_self() "sharedStream")];

    swift_unknownObjectRelease();
  }

  else
  {
LABEL_9:
    if (qword_10001CFC8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000C510(v26, qword_10001D358);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "error generating READClient Event", v29, 2u);
    }
  }
}

void sub_100010C0C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v6 = sub_10000C458(&qword_10001D230, &qword_100013260);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  v13 = [objc_allocWithZone(READSchemaREADPlaybackSessionFailed) init];
  v14 = v13;
  if (v13)
  {
    [v13 setErrorCodes:a4];
  }

  v15 = [objc_allocWithZone(READSchemaREADPlaybackSessionContext) init];
  if (v15)
  {
    v16 = objc_allocWithZone(SISchemaUUID);
    v17 = v15;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v19 = [v16 initWithNSUUID:isa];

    [v17 setContextId:v19];
  }

  [v15 setFailed:v14];
  if (!a2)
  {
    goto LABEL_11;
  }

  UUID.init(uuidString:)();
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v10, 1, v20) == 1)
  {
    sub_10001081C(v10);
    v22 = 1;
  }

  else
  {
    (*(v21 + 32))(v12, v10, v20);
    v22 = 0;
  }

  (*(v21 + 56))(v12, v22, 1, v20);
  v23 = sub_100010348(v12);
  sub_10001081C(v12);
  if (v23)
  {
    [v23 setPlaybackSessionContext:v15];
    [objc_msgSend(objc_opt_self() "sharedStream")];

    swift_unknownObjectRelease();
  }

  else
  {
LABEL_11:
    if (qword_10001CFC8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000C510(v24, qword_10001D358);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "error generating READClient Event", v27, 2u);
    }
  }
}

void sub_100010F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000C458(&qword_10001D230, &qword_100013260);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = [objc_allocWithZone(READSchemaREADRequestStarted) init];
  [v12 setTrigger:a3];
  v13 = [objc_allocWithZone(READSchemaREADRequestContext) init];
  [v13 setStartedOrChanged:v12];
  if (!a2)
  {
    goto LABEL_7;
  }

  UUID.init(uuidString:)();
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_10001081C(v9);
    v16 = 1;
  }

  else
  {
    (*(v15 + 32))(v11, v9, v14);
    v16 = 0;
  }

  (*(v15 + 56))(v11, v16, 1, v14);
  v17 = sub_100010348(v11);
  sub_10001081C(v11);
  if (v17)
  {
    [v17 setReadThisRequestContext:v13];
    [objc_msgSend(objc_opt_self() "sharedStream")];

    swift_unknownObjectRelease();
  }

  else
  {
LABEL_7:
    if (qword_10001CFC8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000C510(v18, qword_10001D358);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "error generating READClient Event", v21, 2u);
    }
  }
}

void sub_100011278(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000C458(&qword_10001D230, &qword_100013260);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  v16 = [objc_allocWithZone(READSchemaREADRequestPreprocessingEnded) init];
  [v16 setUtteranceCount:a5];
  [v16 setArticleTextLength:a4];
  *&v17 = a1;
  [v16 setEstimatedDuration:v17];
  v18 = [objc_allocWithZone(READSchemaREADRequestPreprocessingContext) init];
  [v18 setEnded:v16];
  if (!a3)
  {
    goto LABEL_7;
  }

  UUID.init(uuidString:)();
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v13, 1, v19) == 1)
  {
    sub_10001081C(v13);
    v21 = 1;
  }

  else
  {
    (*(v20 + 32))(v15, v13, v19);
    v21 = 0;
  }

  (*(v20 + 56))(v15, v21, 1, v19);
  v22 = sub_100010348(v15);
  sub_10001081C(v15);
  if (v22)
  {
    [v22 setReadsThisRequestPreprocessingContext:v18];
    [objc_msgSend(objc_opt_self() "sharedStream")];

    swift_unknownObjectRelease();
  }

  else
  {
LABEL_7:
    if (qword_10001CFC8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000C510(v23, qword_10001D358);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "error generating READClient Event", v26, 2u);
    }
  }
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}