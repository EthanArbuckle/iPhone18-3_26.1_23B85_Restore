void sub_100001C78()
{
  if (qword_1000556B0 != -1)
  {
    sub_10003B5A0();
  }
}

void sub_100001CA4(id a1)
{
  if (gp_isInternalBuild())
  {
    sub_10003B5B4();
  }

  sub_100001CCC();
}

id sub_100001CCC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000556B8;
  v7 = qword_1000556B8;
  if (!qword_1000556B8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000034F8;
    v3[3] = &unk_10004D5C8;
    v3[4] = &v4;
    sub_1000034F8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100001D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001DAC(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  v9 = a1;
  v10 = [objc_alloc(sub_100001CCC()) initWithBundleIdentifier:v8 enabled:a3 actionSymbols:v7];

  [v9 showGameModeBannerWithConfig:v10];
}

uint64_t sub_100001E4C()
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  else
  {
    return MGIsDeviceOneOfType();
  }
}

uint64_t sub_100002C90()
{
  if (sub_100003394())
  {
    return 1;
  }

  else
  {
    return MGIsDeviceOneOfType();
  }
}

Class sub_1000034F8(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_1000556C0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100003624;
    v3[4] = &unk_10004D600;
    v3[5] = v3;
    v4 = off_10004D5E8;
    v5 = 0;
    qword_1000556C0 = _sl_dlopen();
  }

  if (!qword_1000556C0)
  {
    sub_10003B698(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("GKGameModeBannerConfig");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10003B61C();
  }

  qword_1000556B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100003624(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000556C0 = result;
  return result;
}

void sub_1000036FC(unsigned int a1)
{
  v4 = 0;
  v3 = 8;
  v2 = a1;
  if (sysctlbyname("kern.console_mode", &v4, &v3, &v2, 8uLL) == -1)
  {
    v1 = __error();
    NSLog(@"kern.console_mode failed with error: %d", *v1);
  }
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for GamePolicyDaemon();
  swift_allocObject();
  qword_100056570 = sub_100004274();
  sub_100003800(qword_100056570 + 16, v5);
  v3 = v6;
  if (!v6)
  {
    sub_1000038B8(v5);
    dispatch_main();
  }

  v4 = v7;
  sub_100003920(v5, v6);
  (*(v4 + 8))(v3, v4);
  sub_100003964(v5);
  dispatch_main();
}

uint64_t sub_100003800(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003870(&qword_100053490, &qword_10003DF00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003870(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000038B8(uint64_t a1)
{
  v2 = sub_100003870(&qword_100053490, &qword_10003DF00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100003920(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100003964(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

id variable initialization expression of GamePolicyMobileAssetRetriever.lock()
{
  v0 = objc_allocWithZone(NSLock);

  return [v0 init];
}

__n128 sub_1000039F8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100003A04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003A24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void sub_100003A78(uint64_t a1, unint64_t *a2)
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

BOOL sub_100003AD0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100003B30@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100003B5C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_100003C5C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100003C8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100003DE0(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100003D34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CLPCSustainableModeOptions(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003DE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100003E18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100003EA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for Version();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t GamePolicyMobileAsset.description.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11gamepolicyd21GamePolicyMobileAsset_maAsset) description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t GamePolicyMobileAsset.deinit()
{
  v1 = OBJC_IVAR____TtC11gamepolicyd21GamePolicyMobileAsset_compatibilityVersion;
  v2 = type metadata accessor for Version();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11gamepolicyd21GamePolicyMobileAsset_contentVersion, v2);

  return v0;
}

uint64_t GamePolicyMobileAsset.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11gamepolicyd21GamePolicyMobileAsset_compatibilityVersion;
  v2 = type metadata accessor for Version();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11gamepolicyd21GamePolicyMobileAsset_contentVersion, v2);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t sub_100004110()
{
  v1 = [*(*v0 + OBJC_IVAR____TtC11gamepolicyd21GamePolicyMobileAsset_maAsset) description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t type metadata accessor for GamePolicyMobileAsset()
{
  result = qword_100053678;
  if (!qword_100053678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000041C8()
{
  result = type metadata accessor for Version();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100004274()
{
  if (_set_user_dir_suffix())
  {
    v1 = type metadata accessor for GamePolicyDaemon_iOS();
    swift_allocObject();
    v0[2] = sub_100022BAC();
    v0[5] = v1;
    v0[6] = &off_10004E0E0;
    return v0;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100004334()
{
  sub_1000038B8(v0 + 16);

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100004390()
{
  sub_100003800(*v0 + 16, v4);
  v1 = v5;
  if (!v5)
  {
    return sub_1000038B8(v4);
  }

  v2 = v6;
  sub_100003920(v4, v5);
  (*(v2 + 8))(v1, v2);
  return sub_100003964(v4);
}

Swift::Int sub_100004418()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10000448C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000044E0@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10004D698, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100004554()
{
  v1 = OBJC_IVAR____TtC11gamepolicyd19ConfigurationBundle_version;
  v2 = type metadata accessor for Version();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11gamepolicyd19ConfigurationBundle_compatibilityVersion, v2);
  v4 = *(v0 + OBJC_IVAR____TtC11gamepolicyd19ConfigurationBundle_identifier + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for ConfigurationBundle()
{
  result = qword_1000537F0;
  if (!qword_1000537F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004698()
{
  result = type metadata accessor for Version();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfigurationBundleType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ConfigurationBundleType(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100004840()
{
  result = qword_100053898;
  if (!qword_100053898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100053898);
  }

  return result;
}

uint64_t sub_100004894()
{
  v0 = type metadata accessor for GameStore();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_100007CF4();
  qword_1000538A0 = result;
  return result;
}

uint64_t sub_1000048D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100004948(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC11gamepolicyd9GameStore_gamingMetadata);
  *(v2 + OBJC_IVAR____TtC11gamepolicyd9GameStore_gamingMetadata) = a1;
  v10 = a1;

  static Logger.gameStore.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Updated gaming metadata. Refreshing games.", v13, 2u);
  }

  (*(v5 + 8))(v8, v4);
  return sub_100006910();
}

void sub_100004AAC(void *a1)
{
  v27 = a1;
  v26 = type metadata accessor for URL();
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC11gamepolicyd9GameStore_gamingMetadata);
  v7 = dispatch thunk of GamingMetadataBlob.processPartialPathAllowList.getter();

  v8 = 0;
  v10 = v7 + 56;
  v9 = *(v7 + 56);
  v28 = v7;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v9;
  v14 = (v11 + 63) >> 6;
  v15 = (v2 + 8);
  while (v13)
  {
    v16 = v8;
LABEL_10:
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v18 = (*(v28 + 48) + ((v16 << 10) | (16 * v17)));
    v19 = *v18;
    v20 = v18[1];

    v21 = [v27 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = URL.absoluteString.getter();
    v24 = v23;
    (*v15)(v5, v26);
    v31 = v22;
    v32 = v24;
    v29 = v19;
    v30 = v20;
    sub_100009790();
    LOBYTE(v22) = StringProtocol.contains<A>(_:)();

    if (v22)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v16 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v16 >= v14)
    {
      goto LABEL_11;
    }

    v13 = *(v10 + 8 * v16);
    ++v8;
    if (v13)
    {
      v8 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
}

BOOL sub_100004CD4(void *a1)
{
  v2 = [a1 bundleIdentifier];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = *(v1 + OBJC_IVAR____TtC11gamepolicyd9GameStore_gamingMetadata);
  v8 = dispatch thunk of GamingMetadataBlob.launchers.getter();

  if (v8 >> 62)
  {
LABEL_21:
    v17 = v8 & 0xFFFFFFFFFFFFFF8;
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = v8 & 0xFFFFFFFFFFFFFF8;
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  do
  {
    v12 = v9 != v10;
    if (v9 == v10)
    {
      break;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *(v17 + 16))
      {
        goto LABEL_20;
      }

      v13 = *(v8 + 8 * v10 + 32);
    }

    v14 = v13;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (GamingMetadataModel.Launcher.bundleIdentifier.getter() == v4 && v15 == v6)
    {

      goto LABEL_17;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v10;
  }

  while ((v11 & 1) == 0);

LABEL_17:

  return v12;
}

void *sub_100004E70(uint64_t a1)
{
  v61 = 0;
  v60 = type metadata accessor for GameLibraryGame.Config();
  v2 = *(v60 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v60);
  v67 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v66 = &v58 - v6;
  v72 = &_swiftEmptyArrayStorage;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 40);
    v69 = &_swiftEmptyArrayStorage;
    do
    {
      v10 = *(v8 - 1);
      v11 = *v8;
      v12 = objc_allocWithZone(LSApplicationRecord);

      v13 = String._bridgeToObjectiveC()();

      v70[0] = 0;
      v14 = [v12 initWithBundleIdentifier:v13 allowPlaceholder:0 error:v70];

      if (v14)
      {
        v15 = v70[0];
        v16 = v14;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v17 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v69 = v72;
      }

      else
      {
        v9 = v70[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v61 = 0;
      }

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  else
  {
    v69 = &_swiftEmptyArrayStorage;
  }

  v18 = v69;
  if (v69 >> 62)
  {
    v57 = v69;
    v19 = _CocoaArrayWrapper.endIndex.getter();
    v18 = v57;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v19 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
LABEL_12:
      v20 = v18;
      v71 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v19 < 0)
      {
        __break(1u);
      }

      v21 = 0;
      v59 = OBJC_IVAR____TtC11gamepolicyd9GameStore_gamingMetadata;
      v22 = v20;
      v63 = (v2 + 16);
      v64 = v20 & 0xC000000000000001;
      v62 = (v2 + 8);
      p_name = (&stru_100051FF8 + 8);
      v24 = v60;
      v65 = v19;
      while (1)
      {
        if (v64)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v28 = *(v22 + 8 * v21 + 32);
        }

        v29 = v28;
        v30 = [v28 persistentIdentifier];
        v31 = [v29 bundleIdentifier];
        if (v31)
        {
          v32 = v31;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v33 = [v29 iTunesMetadata];
        v34 = [v33 p_name[196]];

        if (v34)
        {
          v35 = [v29 iTunesMetadata];
          [v35 p_name[196]];

          UInt64._bridgeToObjectiveC()();
        }

        if (sub_100004CD4(v29))
        {
          goto LABEL_14;
        }

        v36 = [v29 applicationState];
        v37 = [v36 isInstalled];

        if ((v37 & 1) == 0)
        {
          goto LABEL_14;
        }

        if ([v29 isGameCenterEnabled] & 1) != 0 || (sub_100008744(v29))
        {
          goto LABEL_31;
        }

        v38 = [v29 bundleIdentifier];
        if (v38)
        {
          v39 = v38;
          v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;

          v43 = *(v68 + v59);
          v44 = dispatch thunk of GamingMetadataBlob.processBundleIdentifierAllowList.getter();

          LOBYTE(v43) = sub_1000263E8(v40, v42, v44);

          if (v43)
          {

            swift_arrayDestroy();
            v24 = v60;
LABEL_31:
            v49 = [v29 bundleIdentifier];
            if (v49)
            {
              v50 = v49;
              v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v53 = v52;

              v54 = *(v68 + v59);
              v55 = dispatch thunk of GamingMetadataBlob.processBundleIdentifierBlockList.getter();

              sub_1000263E8(v51, v53, v55);
              v24 = v60;
            }

            goto LABEL_14;
          }

          v58 = &v58;
          v70[0] = v40;
          v70[1] = v42;
          __chkstk_darwin(v45);
          *(&v58 - 2) = v70;
          v46 = v61;
          v47 = sub_10001EACC(sub_1000097E4, (&v58 - 4), &off_10004D738);
          v61 = v46;
          swift_arrayDestroy();

          v24 = v60;
          if (v47)
          {
            goto LABEL_31;
          }
        }

        sub_100004AAC(v29);
        if (v48)
        {
          goto LABEL_31;
        }

LABEL_14:
        ++v21;
        v25 = v66;
        GameLibraryGame.Config.init(persistentIdentifier:bundleID:adamID:isGame:)();
        (*v63)(v67, v25, v24);
        v26 = objc_allocWithZone(type metadata accessor for GameLibraryGame());
        GameLibraryGame.init(config:)();

        (*v62)(v25, v24);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v27 = v71[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v22 = v69;
        p_name = &stru_100051FF8.name;
        if (v65 == v21)
        {

          return v71;
        }
      }
    }
  }

  return &_swiftEmptyArrayStorage;
}

void *sub_100005530(unint64_t a1)
{
  v3 = type metadata accessor for GameLibraryGame.Config();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v6 = __chkstk_darwin(v3);
  v73 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v72 = &v62 - v9;
  v77 = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    v61 = v8;
    v10 = _CocoaArrayWrapper.endIndex.getter();
    v8 = v61;
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v66 = v8;
  v63 = v1;
  v74 = v4;
  if (v10)
  {
    sub_100009748(0, &qword_100053BF0, NSNumber_ptr);
    if (v10 < 1)
    {
      __break(1u);
      goto LABEL_48;
    }

    v11 = 0;
    v65 = 0;
    v12 = &_swiftEmptyArrayStorage;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(a1 + 8 * v11 + 32);
      }

      v14 = v13;
      isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
      v16 = [v14 isEqualToNumber:isa];

      if (v16)
      {
      }

      else
      {
        v17 = UInt64.init(truncating:)();
        v18 = objc_allocWithZone(LSApplicationRecord);
        v75[0] = 0;
        v19 = [v18 initWithStoreItemIdentifier:v17 error:v75];
        if (v19)
        {
          v20 = v19;
          v21 = v75[0];
          v22 = v20;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v12 = v77;
        }

        else
        {
          v23 = v75[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();

          v65 = 0;
        }
      }

      ++v11;
    }

    while (v10 != v11);
  }

  else
  {
    v65 = 0;
    v12 = &_swiftEmptyArrayStorage;
  }

  if (v12 >> 62)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v24 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v66;
  v26 = v63;
  if (v24)
  {
    v76 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v24 & 0x8000000000000000) == 0)
    {
      v27 = 0;
      v64 = OBJC_IVAR____TtC11gamepolicyd9GameStore_gamingMetadata;
      v68 = (v74 + 16);
      v69 = v12 & 0xC000000000000001;
      v67 = (v74 + 8);
      p_name = (&stru_100051FF8 + 8);
      v70 = v24;
      v71 = v12;
      while (1)
      {
        if (v69)
        {
          v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v32 = *(v12 + 8 * v27 + 32);
        }

        v33 = v32;
        v74 = [v32 persistentIdentifier];
        v34 = [v33 bundleIdentifier];
        if (v34)
        {
          v35 = v34;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v36 = [v33 p_name[195]];
        v37 = [v36 storeItemIdentifier];

        if (v37)
        {
          v38 = [v33 p_name[195]];
          [v38 storeItemIdentifier];

          UInt64._bridgeToObjectiveC()();
        }

        if (sub_100004CD4(v33))
        {
          goto LABEL_23;
        }

        v39 = [v33 applicationState];
        v40 = [v39 isInstalled];

        if ((v40 & 1) == 0)
        {
          goto LABEL_23;
        }

        if ([v33 isGameCenterEnabled] & 1) != 0 || (sub_100008744(v33))
        {
          goto LABEL_40;
        }

        v41 = [v33 bundleIdentifier];
        if (v41)
        {
          v42 = v41;
          v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;

          v46 = *(v26 + v64);
          v47 = dispatch thunk of GamingMetadataBlob.processBundleIdentifierAllowList.getter();

          LOBYTE(v46) = sub_1000263E8(v43, v45, v47);

          if (v46)
          {

            swift_arrayDestroy();
            v25 = v66;
LABEL_40:
            v52 = [v33 bundleIdentifier];
            if (v52)
            {
              v53 = v52;
              v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v56 = v55;

              v57 = *(v26 + v64);
              v58 = v26;
              v59 = dispatch thunk of GamingMetadataBlob.processBundleIdentifierBlockList.getter();

              sub_1000263E8(v54, v56, v59);
              v25 = v66;

              v26 = v58;
            }

            goto LABEL_23;
          }

          v62 = &v62;
          v75[0] = v43;
          v75[1] = v45;
          __chkstk_darwin(v48);
          *(&v62 - 2) = v75;
          v49 = v65;
          v50 = sub_10001EACC(sub_1000097E4, (&v62 - 4), &off_10004D738);
          v65 = v49;
          swift_arrayDestroy();

          v25 = v66;
          if (v50)
          {
            goto LABEL_40;
          }
        }

        sub_100004AAC(v33);
        if (v51)
        {
          goto LABEL_40;
        }

LABEL_23:
        ++v27;
        v29 = v72;
        GameLibraryGame.Config.init(persistentIdentifier:bundleID:adamID:isGame:)();
        (*v68)(v73, v29, v25);
        v30 = objc_allocWithZone(type metadata accessor for GameLibraryGame());
        GameLibraryGame.init(config:)();

        (*v67)(v29, v25);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v31 = v76[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v12 = v71;
        p_name = &stru_100051FF8.name;
        if (v70 == v27)
        {

          return v76;
        }
      }
    }

LABEL_48:
    __break(1u);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100005C8C()
{
  v1 = type metadata accessor for Logger();
  v50 = *(v1 - 8);
  v51 = v1;
  v2 = *(v50 + 64);
  v3 = __chkstk_darwin(v1);
  v4 = __chkstk_darwin(v3);
  v6 = v46 - v5;
  v7 = __chkstk_darwin(v4);
  v9 = v46 - v8;
  __chkstk_darwin(v7);
  v11 = v46 - v10;
  v49 = type metadata accessor for Date();
  v12 = *(v49 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v49);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v46 - v17;
  static Date.now.getter();
  v19 = *(v0 + OBJC_IVAR____TtC11gamepolicyd9GameStore_userDefaults);
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 objectForKey:v20];

  if (v21)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  v56 = v54;
  v57 = v55;
  if (!*(&v55 + 1))
  {
    sub_1000096E8(&v56, &qword_1000553D0, &unk_10003E3F0);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v26 = v50;
    v25 = v51;
    goto LABEL_19;
  }

  v46[0] = v11;
  v46[1] = v0;
  v23 = v52;
  v22 = v53;
  sub_100009748(0, &qword_100053B20, NSKeyedUnarchiver_ptr);
  sub_100003870(&qword_100053B28, &unk_10003E3A0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10003E2E0;
  *(v24 + 32) = sub_100009748(0, &qword_100053B30, NSArray_ptr);
  *(v24 + 40) = type metadata accessor for GameLibraryGame();
  v47 = v23;
  v48 = v22;
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

  if (*(&v57 + 1))
  {
    if (swift_dynamicCast())
    {
      v27 = v54;
      v28 = v46[0];
      static Logger.gameStore.getter();

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 134217984;
        if (v27 >> 62)
        {
          v32 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v32 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v31 + 4) = v32;

        _os_log_impl(&_mh_execute_header, v29, v30, "Got %ld library games from disk.", v31, 0xCu);
      }

      else
      {
      }

      v26 = v50;
      v25 = v51;
      (*(v50 + 8))(v28, v51);
      swift_getKeyPath();
      swift_getKeyPath();
      *&v56 = v27;

      static Published.subscript.setter();
      sub_100003E18(v47, v48);
      goto LABEL_19;
    }
  }

  else
  {
    sub_1000096E8(&v56, &qword_1000553D0, &unk_10003E3F0);
  }

  static Logger.gameStore.getter();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  v35 = os_log_type_enabled(v33, v34);
  v25 = v51;
  if (v35)
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Unable to cast decoded object to [GameLibraryGame].", v36, 2u);
  }

  sub_100003E18(v47, v48);

  v37 = v9;
  v26 = v50;
  (*(v50 + 8))(v37, v25);
LABEL_19:
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v39 = v38;
  static Logger.gameStore.getter();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 134217984;
    *(v42 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v40, v41, "Cold loaded library in %f seconds.", v42, 0xCu);
  }

  (*(v26 + 8))(v6, v25);
  v43 = *(v12 + 8);
  v44 = v49;
  v43(v16, v49);
  return (v43)(v18, v44);
}

uint64_t sub_100006410()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = *(v43 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v42 - v7;
  v42 = type metadata accessor for Date();
  v9 = *(v42 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v42);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v42 - v14;
  static Date.now.getter();
  v16 = *(v1 + OBJC_IVAR____TtC11gamepolicyd9GameStore_userDefaults);
  v17 = objc_opt_self();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  type metadata accessor for GameLibraryGame();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v45 = 0;
  v19 = [v17 archivedDataWithRootObject:isa requiringSecureCoding:1 error:&v45];

  v20 = v45;
  if (v19)
  {
    v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = Data._bridgeToObjectiveC()().super.isa;
    sub_100003E18(v21, v23);
    v25 = String._bridgeToObjectiveC()();
    [v16 setObject:v24 forKey:v25];

    v27 = v43;
    v26 = v44;
  }

  else
  {
    v28 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.gameStore.getter();
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v33;
      *v32 = v33;
      _os_log_impl(&_mh_execute_header, v29, v30, "Error saving installed games cache to disk: %@", v31, 0xCu);
      sub_1000096E8(v32, &unk_100053C00, &qword_10003E810);
    }

    else
    {
    }

    v27 = v43;
    v26 = v44;
    (*(v43 + 8))(v6, v44);
  }

  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v35 = v34;
  static Logger.gameStore.getter();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    *(v38 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v36, v37, "Library saved to disk. Operation took %f seconds.", v38, 0xCu);
  }

  (*(v27 + 8))(v8, v26);
  v39 = *(v9 + 8);
  v40 = v42;
  v39(v13, v42);
  return (v39)(v15, v40);
}

uint64_t sub_100006910()
{
  v1 = v0;
  v167 = type metadata accessor for GameLibraryGame.Config();
  v148 = *(v167 - 8);
  v2 = *(v148 + 64);
  v3 = __chkstk_darwin(v167);
  v166 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v165 = &v142 - v5;
  v161 = type metadata accessor for NSFastEnumerationIterator();
  v151 = *(v161 - 1);
  v6 = *(v151 + 64);
  __chkstk_darwin(v161);
  v164 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for Logger();
  v159 = *(v158 - 8);
  v8 = *(v159 + 64);
  v9 = __chkstk_darwin(v158);
  v160 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v163 = &v142 - v12;
  v13 = __chkstk_darwin(v11);
  v162 = (&v142 - v14);
  __chkstk_darwin(v13);
  v16 = &v142 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = __chkstk_darwin(v17);
  v152 = &v142 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v142 - v23;
  __chkstk_darwin(v22);
  v26 = &v142 - v25;
  v27 = *(v1 + OBJC_IVAR____TtC11gamepolicyd9GameStore_lock);
  [v27 lock];
  v28 = OBJC_IVAR____TtC11gamepolicyd9GameStore_isRefreshingInstalledGames;
  v29 = *(v1 + OBJC_IVAR____TtC11gamepolicyd9GameStore_isRefreshingInstalledGames);
  static Date.now.getter();
  v30 = OBJC_IVAR____TtC11gamepolicyd9GameStore_lastLibraryRefreshDate;
  swift_beginAccess();
  v31 = v18[2];
  v149 = v30;
  v31(v24, v1 + v30, v17);
  v156 = v26;
  Date.timeIntervalSince(_:)();
  v33 = v32;
  v150 = v18;
  v34 = v18[1];
  v157 = v17;
  v155 = v18 + 1;
  v154 = v34;
  v34(v24, v17);
  if (v33 < 1.0)
  {
    static Logger.gameStore.getter();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Ignoring library refresh request. Last refresh was less than 1 second ago.", v37, 2u);
    }

    (*(v159 + 8))(v16, v158);
    [v27 unlock];
    return v154(v156, v157);
  }

  *(v1 + v28) = 1;
  [v27 unlock];
  if (v29)
  {
    v38 = v162;
    static Logger.gameStore.getter();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Received request to refresh, but already refreshing. Ignoring.", v41, 2u);
    }

    (*(v159 + 8))(v38, v158);
    return v154(v156, v157);
  }

  v43 = v1;
  v145 = v28;
  v146 = v27;
  v44 = v163;
  static Logger.gameStore.getter();
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Refreshing installed games", v47, 2u);
  }

  v48 = *(v159 + 8);
  v159 += 8;
  v143 = v48;
  v48(v44, v158);
  v49 = [objc_opt_self() enumeratorWithOptions:0];
  v172 = &_swiftEmptyArrayStorage;
  v50 = v164;
  v144 = v49;
  NSEnumerator.makeIterator()();
  v162 = OBJC_IVAR____TtC11gamepolicyd9GameStore_gamingMetadata;
  NSFastEnumerationIterator.next()();
  v153 = v1;
  v51 = v160;
  if (v171)
  {
    v142 = 0;
    v147 = &_swiftEmptyArrayStorage;
    v52 = &unk_100053B18;
    while (1)
    {
      sub_1000096B8(&v170, v168);
      sub_100009748(0, v52, LSApplicationRecord_ptr);
      if (!swift_dynamicCast())
      {
        goto LABEL_15;
      }

      v53 = v169;
      v54 = [v169 bundleIdentifier];
      if (v54)
      {
        v163 = v53;
        v55 = v54;
        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;

        v59 = *(v162 + v43);
        v60 = dispatch thunk of GamingMetadataBlob.launchers.getter();

        if (v60 >> 62)
        {
          v61 = _CocoaArrayWrapper.endIndex.getter();
          v43 = v61;
        }

        else
        {
          v43 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v62 = 0;
        while (1)
        {
          if (v43 == v62)
          {

            v43 = v153;
            v51 = v160;
            v50 = v164;
            v52 = &unk_100053B18;
            v53 = v163;
            goto LABEL_32;
          }

          if ((v60 & 0xC000000000000001) != 0)
          {
            v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v62 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_88;
            }

            v61 = *(v60 + 8 * v62 + 32);
          }

          v64 = v61;
          if (__OFADD__(v62, 1))
          {
            break;
          }

          v65 = GamingMetadataModel.Launcher.bundleIdentifier.getter();
          v51 = v66;
          if (v65 == v56 && v66 == v58)
          {

LABEL_39:

            v43 = v153;
            v51 = v160;
            v50 = v164;
            v52 = &unk_100053B18;
            goto LABEL_15;
          }

          v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v62;
          if (v63)
          {

            goto LABEL_39;
          }
        }

        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

LABEL_32:
      v67 = [v53 applicationState];
      v68 = [v67 isInstalled];

      if (!v68)
      {
        goto LABEL_14;
      }

      if ([v53 isGameCenterEnabled] & 1) != 0 || (sub_100008744(v53))
      {
        goto LABEL_42;
      }

      v69 = [v53 bundleIdentifier];
      if (v69)
      {
        v70 = v43;
        v71 = v51;
        v72 = v53;
        v73 = v69;
        v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = v75;

        v77 = *(v162 + v70);
        v78 = dispatch thunk of GamingMetadataBlob.processBundleIdentifierAllowList.getter();

        LOBYTE(v77) = sub_1000263E8(v74, v76, v78);

        if (v77)
        {

          swift_arrayDestroy();
          v53 = v72;
          v51 = v71;
          v43 = v70;
          v52 = &unk_100053B18;
          goto LABEL_42;
        }

        *&v168[0] = v74;
        *(&v168[0] + 1) = v76;
        __chkstk_darwin(v79);
        *(&v142 - 2) = v168;
        v80 = v142;
        v81 = sub_10001EACC(sub_1000096C8, (&v142 - 4), &off_10004D6F8);
        v142 = v80;
        swift_arrayDestroy();

        v53 = v72;
        v51 = v71;
        v43 = v70;
        v52 = &unk_100053B18;
        if (v81)
        {
          goto LABEL_42;
        }
      }

      sub_100004AAC(v53);
      if (v82)
      {
LABEL_42:
        v83 = [v53 bundleIdentifier];
        if (v83)
        {
          v84 = v83;
          v85 = v52;
          v86 = v51;
          v87 = v53;
          v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v90 = v89;

          v91 = *(v162 + v43);
          v92 = dispatch thunk of GamingMetadataBlob.processBundleIdentifierBlockList.getter();

          if (*(v92 + 16))
          {
            v93 = *(v92 + 40);
            Hasher.init(_seed:)();
            String.hash(into:)();
            v94 = Hasher._finalize()();
            v95 = -1 << *(v92 + 32);
            v96 = v94 & ~v95;
            if ((*(v92 + 56 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96))
            {
              v97 = ~v95;
              while (1)
              {
                v98 = (*(v92 + 48) + 16 * v96);
                v99 = *v98 == v88 && v98[1] == v90;
                if (v99 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v96 = (v96 + 1) & v97;
                if (((*(v92 + 56 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96) & 1) == 0)
                {
                  goto LABEL_52;
                }
              }

              v51 = v86;
              v52 = v85;
              v50 = v164;
              goto LABEL_15;
            }
          }

LABEL_52:

          v53 = v87;
          v51 = v86;
          v52 = v85;
          v50 = v164;
        }

        v100 = v53;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v172 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v172 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v101 = *((v172 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v147 = v172;
        NSFastEnumerationIterator.next()();
        if (!v171)
        {
          goto LABEL_60;
        }
      }

      else
      {
LABEL_14:

LABEL_15:
        NSFastEnumerationIterator.next()();
        if (!v171)
        {
          goto LABEL_60;
        }
      }
    }
  }

  v147 = &_swiftEmptyArrayStorage;
LABEL_60:
  (*(v151 + 8))(v50, v161);
  v102 = OBJC_IVAR____TtC11gamepolicyd9GameStore_installedGameRecords;
  v103 = *(v43 + OBJC_IVAR____TtC11gamepolicyd9GameStore_installedGameRecords);
  *(v43 + OBJC_IVAR____TtC11gamepolicyd9GameStore_installedGameRecords) = v147;

  v61 = *(v43 + v102);
  if (v61 >> 62)
  {
LABEL_89:
    v141 = v61;
    v104 = _CocoaArrayWrapper.endIndex.getter();
    v61 = v141;
  }

  else
  {
    v104 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v104)
  {
    *&v168[0] = &_swiftEmptyArrayStorage;
    v105 = v61;

    specialized ContiguousArray.reserveCapacity(_:)();
    if (v104 < 0)
    {
      __break(1u);
LABEL_91:
      v123 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_79;
    }

    v106 = 0;
    v107 = v105;
    v163 = (v105 & 0xC000000000000001);
    v162 = (v148 + 16);
    v161 = (v148 + 8);
    p_name = (&stru_100051FF8 + 8);
    v164 = v105;
    do
    {
      if (v163)
      {
        v114 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v114 = *&v107[8 * v106 + 32];
      }

      v115 = v114;
      v116 = [v114 persistentIdentifier];
      v117 = [v115 bundleIdentifier];
      if (v117)
      {
        v118 = v117;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v119 = [v115 p_name[195]];
      v120 = p_name;
      v121 = [v119 storeItemIdentifier];

      if (v121)
      {
        v109 = [v115 v120[195]];
        [v109 storeItemIdentifier];

        UInt64._bridgeToObjectiveC()();
      }

      ++v106;
      v110 = v165;
      GameLibraryGame.Config.init(persistentIdentifier:bundleID:adamID:isGame:)();
      v111 = v167;
      (*v162)(v166, v110, v167);
      v112 = objc_allocWithZone(type metadata accessor for GameLibraryGame());
      GameLibraryGame.init(config:)();

      (*v161)(v110, v111);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v113 = *(*&v168[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v107 = v164;
      p_name = &stru_100051FF8.name;
    }

    while (v104 != v106);

    v122 = *&v168[0];
    v43 = v153;
    v51 = v160;
  }

  else
  {

    v122 = &_swiftEmptyArrayStorage;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v105) = sub_100008A7C(*&v168[0], v122);

  if ((v105 & 1) == 0)
  {

    v127 = 0;
    v126 = 0xE000000000000000;
    goto LABEL_81;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&v168[0] = v122;

  static Published.subscript.setter();
  *&v168[0] = 0;
  *(&v168[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  *&v168[0] = 0xD000000000000021;
  *(&v168[0] + 1) = 0x8000000100040D00;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v170 >> 62)
  {
    goto LABEL_91;
  }

  v123 = *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_79:

  *&v170 = v123;
  v124._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v124);

  v125._countAndFlagsBits = 0x202E73656D616720;
  v125._object = 0xE800000000000000;
  String.append(_:)(v125);
  v126 = *(&v168[0] + 1);
  v127 = *&v168[0];
LABEL_81:
  v128 = v152;
  static Date.now.getter();
  v129 = v149;
  swift_beginAccess();
  (v150[3])(v43 + v129, v128, v157);
  swift_endAccess();
  Date.timeIntervalSince(_:)();
  v131 = v130;
  static Logger.gameStore.getter();

  v132 = Logger.logObject.getter();
  v133 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    v135 = v43;
    v136 = swift_slowAlloc();
    *&v168[0] = v136;
    *v134 = 136315394;
    v137 = sub_100034C38(v127, v126, v168);

    *(v134 + 4) = v137;
    *(v134 + 12) = 2048;
    *(v134 + 14) = v131;
    _os_log_impl(&_mh_execute_header, v132, v133, "Library refresh complete. %sOperation took %f seconds.", v134, 0x16u);
    sub_100003964(v136);
    v43 = v135;
  }

  else
  {
  }

  v143(v51, v158);
  if (v105)
  {
    sub_100006410();
  }

  v138 = v146;
  [v146 lock];
  *(v43 + v145) = 0;
  [v138 unlock];

  v139 = v157;
  v140 = v154;
  v154(v152, v157);
  return v140(v156, v139);
}

uint64_t sub_100007CF4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v6 = *(v27 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v27);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003870(&qword_100053AF8, &qword_10003E350);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  v15 = OBJC_IVAR____TtC11gamepolicyd9GameStore__installedGames;
  aBlock[0] = _swiftEmptyArrayStorage;
  Published.init(initialValue:)();
  (*(v11 + 32))(v1 + v15, v14, v10);
  v16 = (v1 + OBJC_IVAR____TtC11gamepolicyd9GameStore_gameStoreCacheKey);
  *v16 = 0x726F7453656D6167;
  v16[1] = 0xE900000000000065;
  v17 = OBJC_IVAR____TtC11gamepolicyd9GameStore_userDefaults;
  *(v1 + v17) = [objc_allocWithZone(NSUserDefaults) init];
  v18 = OBJC_IVAR____TtC11gamepolicyd9GameStore_lock;
  *(v1 + v18) = [objc_allocWithZone(NSLock) init];
  *(v1 + OBJC_IVAR____TtC11gamepolicyd9GameStore_installedGameRecords) = _swiftEmptyArrayStorage;
  v19 = OBJC_IVAR____TtC11gamepolicyd9GameStore_gamingMetadata;
  *(v1 + v19) = [objc_allocWithZone(type metadata accessor for GamingMetadataBlob()) init];
  static Date.distantPast.getter();
  *(v1 + OBJC_IVAR____TtC11gamepolicyd9GameStore_isRefreshingInstalledGames) = 0;
  sub_100005C8C();
  v20 = [objc_opt_self() defaultCenter];

  v21 = GamingMetadataBlobDidChangeNotification.getter();
  [v20 addObserver:v1 selector:"gamingMetadataBlobDidChange:" name:v21 object:0];

  sub_100009748(0, &qword_100053B00, OS_dispatch_queue_ptr);
  v22 = static OS_dispatch_queue.main.getter();
  v23 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100008660;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100024520;
  aBlock[3] = &unk_10004D9A0;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100008680();
  sub_100003870(&unk_1000551B0, &unk_10003E7A0);
  sub_1000086D8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v26 + 8))(v5, v2);
  (*(v6 + 8))(v9, v27);
  return v1;
}

uint64_t sub_100008188()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100006910();
  }

  return result;
}

void sub_1000081E0(void *a1)
{
  if ([a1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0u;
    v3 = 0u;
  }

  v4[0] = v2;
  v4[1] = v3;
  if (*(&v3 + 1))
  {
    type metadata accessor for GamingMetadataBlob();
    if (swift_dynamicCast())
    {
      sub_100004948(v1);
    }
  }

  else
  {
    sub_1000096E8(v4, &qword_1000553D0, &unk_10003E3F0);
  }
}

uint64_t sub_1000082F4()
{
  v1 = OBJC_IVAR____TtC11gamepolicyd9GameStore__installedGames;
  v2 = sub_100003870(&qword_100053AF8, &qword_10003E350);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11gamepolicyd9GameStore_gameStoreCacheKey + 8);

  v4 = *(v0 + OBJC_IVAR____TtC11gamepolicyd9GameStore_installedGameRecords);

  v5 = OBJC_IVAR____TtC11gamepolicyd9GameStore_lastLibraryRefreshDate;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v7, v8);
}

uint64_t type metadata accessor for GameStore()
{
  result = qword_100053910;
  if (!qword_100053910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100008484()
{
  sub_10000857C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000857C()
{
  if (!qword_100053920)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100053920);
    }
  }
}

uint64_t sub_1000085E0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100008628()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008668(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100008680()
{
  result = qword_100053B08;
  if (!qword_100053B08)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100053B08);
  }

  return result;
}

unint64_t sub_1000086D8()
{
  result = qword_100053B10;
  if (!qword_100053B10)
  {
    sub_1000085E0(&unk_1000551B0, &unk_10003E7A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100053B10);
  }

  return result;
}

uint64_t sub_100008744(void *a1)
{
  v2 = type metadata accessor for UTType();
  v35 = *(v2 - 8);
  v3 = *(v35 + 64);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 iTunesMetadata];
  v7 = [v6 genreIdentifier];

  if (v7 == 6014)
  {
    v8 = 1;
    return v8 & 1;
  }

  v36 = 0;
  v9 = [a1 categoryTypesWithError:&v36];
  v10 = v36;
  if (!v9)
  {
    v27 = v36;
    _convertNSErrorToError(_:)();

    swift_willThrow();

LABEL_22:
    v8 = 0;
    return v8 & 1;
  }

  v11 = v9;
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v10;

  v34 = *(v12 + 16);
  if (!v34)
  {

    goto LABEL_22;
  }

  HIDWORD(v29) = 0;
  v14 = 0;
  v33 = v12 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
  v31 = v12;
  v32 = v35 + 16;
  v30 = (v35 + 8);
  do
  {
    if (v14 >= *(v12 + 16))
    {
      goto LABEL_25;
    }

    v15 = v14++;
    v16 = v2;
    (*(v35 + 16))(v5, v33 + *(v35 + 72) * v15, v2);
    v17 = gpf_gameCategories();
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = (v18 + 40);
    v20 = -*(v18 + 16);
    v21 = -1;
    while (1)
    {
      if (v20 + v21 == -1)
      {
        goto LABEL_8;
      }

      if (++v21 >= *(v18 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
      }

      v23 = *(v19 - 1);
      v22 = *v19;

      if (UTType.identifier.getter() == v23 && v24 == v22)
      {
        break;
      }

      v19 += 2;
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v26)
      {
        goto LABEL_7;
      }
    }

LABEL_7:
    HIDWORD(v29) = 1;
LABEL_8:
    v2 = v16;
    v12 = v31;
    (*v30)(v5, v16);
  }

  while (v14 != v34);

  v8 = BYTE4(v29);
  return v8 & 1;
}

uint64_t sub_100008A7C(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_183;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = a2 >> 62;
  if (a2 >> 62)
  {
    if (v5 != _CocoaArrayWrapper.endIndex.getter())
    {
      return 1;
    }
  }

  else if (v5 != *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 1;
  }

  if (v4)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return 0;
    }
  }

  v8 = 0;
  v9 = v3 & 0xC000000000000001;
  v10 = v3 & 0xFFFFFFFFFFFFFF8;
  v11 = v3 + 32;
  v130 = a2 & 0xFFFFFFFFFFFFFF8;
  v131 = a2 & 0xC000000000000001;
  v133 = a2;
  v113 = v7;
  v114 = a2 >> 62;
  v111 = v3 & 0xFFFFFFFFFFFFFF8;
  v112 = v3 & 0xC000000000000001;
  v110 = v3 + 32;
LABEL_8:
  if (v9)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v8 >= *(v10 + 16))
    {
      goto LABEL_187;
    }

    v12 = *(v11 + 8 * v8);
  }

  v132 = v12;
  v13 = __OFADD__(v8, 1);
  v4 = v8 + 1;
  if (v13)
  {
    goto LABEL_188;
  }

  v119 = v4;
  if (v6)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *(v130 + 16);
  }

  v3 = v131;
  v15 = v132;
  if (!v14)
  {
LABEL_177:

    return 1;
  }

  v16 = 0;
  v134 = v14;
  while (1)
  {
    if (v3)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *(v130 + 16))
      {
        goto LABEL_182;
      }

      v17 = *(a2 + 8 * v16 + 32);
    }

    v18 = v17;
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_3;
    }

    v20 = GameLibraryGame.persistentIdentifier.getter();
    v4 = v18;
    v21 = GameLibraryGame.persistentIdentifier.getter();
    v22 = v21;
    if (!v20)
    {

      if (!v22)
      {
        goto LABEL_170;
      }

      goto LABEL_18;
    }

    if (!v21)
    {

      v22 = v20;
      goto LABEL_18;
    }

    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
    v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v26;
    v4 = v27;
    v29 = v25;
    v30 = v25 >> 62;
    v31 = v27 >> 62;
    if (v30 == 3)
    {
      v32 = 0;
      v33 = v23;
      if (!v23)
      {
        a2 = v133;
        if (v29 == 0xC000000000000000 && v27 >> 62 == 3)
        {
          v32 = 0;
          if (!v26 && v27 == 0xC000000000000000)
          {

            sub_100003E18(0, 0xC000000000000000);
            v106 = 0;
            v107 = 0xC000000000000000;
LABEL_173:
            sub_100003E18(v106, v107);

LABEL_174:
            v6 = v114;
            v8 = v119;
            v10 = v111;
            v9 = v112;
            v11 = v110;

            result = 0;
            if (v119 == v113)
            {
              return result;
            }

            goto LABEL_8;
          }
        }

LABEL_44:
        if (v31 > 1)
        {
          goto LABEL_38;
        }

        goto LABEL_45;
      }

      a2 = v133;
      if (v31 > 1)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }

    if (v30 <= 1)
    {
      v33 = v23;
      a2 = v133;
      if (!v30)
      {
        v32 = BYTE6(v29);
        if (v31 > 1)
        {
          goto LABEL_38;
        }

        goto LABEL_45;
      }

      LODWORD(v32) = HIDWORD(v33) - v33;
      if (__OFSUB__(HIDWORD(v33), v33))
      {
        goto LABEL_189;
      }

      v32 = v32;
      if (v31 <= 1)
      {
        goto LABEL_45;
      }

LABEL_38:
      if (v31 == 2)
      {
        v35 = *(v26 + 16);
        v34 = *(v26 + 24);
        v13 = __OFSUB__(v34, v35);
        v36 = v34 - v35;
        if (v13)
        {
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
        }

LABEL_47:
        if (v32 != v36)
        {
          goto LABEL_66;
        }

        goto LABEL_53;
      }

      if (!v32)
      {
        goto LABEL_171;
      }

LABEL_66:
      v48 = v33;

      sub_100003E18(v28, v4);
      sub_100003E18(v48, v29);

      v3 = v131;
      v15 = v132;
LABEL_18:

      goto LABEL_19;
    }

    v33 = v23;
    a2 = v133;
    if (v30 == 2)
    {
      v38 = *(v33 + 16);
      v37 = *(v33 + 24);
      v13 = __OFSUB__(v37, v38);
      v32 = v37 - v38;
      if (v13)
      {
        goto LABEL_190;
      }

      goto LABEL_44;
    }

    v32 = 0;
    if (v31 > 1)
    {
      goto LABEL_38;
    }

LABEL_45:
    if (!v31)
    {
      v36 = BYTE6(v27);
      goto LABEL_47;
    }

    if (__OFSUB__(HIDWORD(v26), v26))
    {
      goto LABEL_186;
    }

    if (v32 != HIDWORD(v26) - v26)
    {
      goto LABEL_66;
    }

LABEL_53:
    if (v32 < 1)
    {
LABEL_171:
      v105 = v33;

      sub_100003E18(v28, v4);
      v106 = v105;
      v107 = v29;
      goto LABEL_173;
    }

    v129 = v26;
    if (v30 <= 1)
    {
      if (!v30)
      {
        __s1[0] = v33;
        LOWORD(__s1[1]) = v29;
        BYTE2(__s1[1]) = BYTE2(v29);
        BYTE3(__s1[1]) = BYTE3(v29);
        BYTE4(__s1[1]) = BYTE4(v29);
        BYTE5(__s1[1]) = BYTE5(v29);
        if (!v31)
        {
          goto LABEL_89;
        }

        v124 = v33;
        if (v31 == 1)
        {
          v39 = v26;
          v120 = (v26 >> 32) - v26;
          if (v26 >> 32 < v26)
          {
            goto LABEL_195;
          }

          v40 = v27;
          v41 = __DataStorage._bytes.getter();
          if (!v41)
          {
            goto LABEL_221;
          }

          v42 = v41;
          v43 = __DataStorage._offset.getter();
          if (__OFSUB__(v39, v43))
          {
            goto LABEL_200;
          }

          v44 = (v39 - v43 + v42);
          v4 = v40 & 0x3FFFFFFFFFFFFFFFLL;
          result = __DataStorage._length.getter();
          if (!v44)
          {
            goto LABEL_222;
          }

          if (result >= v120)
          {
            v46 = v120;
          }

          else
          {
            v46 = result;
          }

          v47 = v44;
          goto LABEL_151;
        }

        v73 = *(v26 + 24);
        v123 = *(v26 + 16);
        v40 = v27;
        v74 = __DataStorage._bytes.getter();
        if (v74)
        {
          v75 = v74;
          v76 = __DataStorage._offset.getter();
          if (__OFSUB__(v123, v76))
          {
            goto LABEL_205;
          }

          v118 = (v123 - v76 + v75);
          v13 = __OFSUB__(v73, v123);
          v61 = v73 - v123;
          if (v13)
          {
            goto LABEL_196;
          }
        }

        else
        {
          v118 = 0;
          v13 = __OFSUB__(v73, v123);
          v61 = v73 - v123;
          if (v13)
          {
            goto LABEL_196;
          }
        }

        v4 = v40 & 0x3FFFFFFFFFFFFFFFLL;
        v102 = __DataStorage._length.getter();
        v47 = v118;
        if (!v118)
        {
          goto LABEL_213;
        }

LABEL_148:
        if (v102 >= v61)
        {
          v46 = v61;
        }

        else
        {
          v46 = v102;
        }

LABEL_151:
        v85 = memcmp(__s1, v47, v46);

        v86 = v124;
        v87 = v29;
LABEL_152:
        sub_100003E18(v86, v87);

        sub_100003E18(v129, v40);
        v3 = v131;
        v15 = v132;
        a2 = v133;
        if (!v85)
        {
          goto LABEL_170;
        }

        goto LABEL_19;
      }

      v53 = v33;
      if (v33 > v33 >> 32)
      {
        goto LABEL_191;
      }

      v121 = v27;
      v125 = v33;
      v54 = __DataStorage._bytes.getter();
      v127 = v29;
      if (v54)
      {
        v55 = v54;
        v56 = __DataStorage._offset.getter();
        if (__OFSUB__(v53, v56))
        {
          goto LABEL_193;
        }

        v116 = (v53 - v56 + v55);
      }

      else
      {
        v116 = 0;
      }

      a2 = v133;
      __DataStorage._length.getter();
      if (v31 == 2)
      {
        v96 = *(v129 + 16);
        v109 = *(v129 + 24);
        v69 = __DataStorage._bytes.getter();
        if (v69)
        {
          v97 = __DataStorage._offset.getter();
          if (__OFSUB__(v96, v97))
          {
            goto LABEL_208;
          }

          v69 += v96 - v97;
        }

        v13 = __OFSUB__(v109, v96);
        v98 = v109 - v96;
        if (v13)
        {
          goto LABEL_203;
        }

        v99 = __DataStorage._length.getter();
        if (v99 >= v98)
        {
          v92 = v98;
        }

        else
        {
          v92 = v99;
        }

        result = v116;
        if (!v116)
        {
          goto LABEL_224;
        }

        a2 = v133;
        v93 = v29;
        if (!v69)
        {
          goto LABEL_223;
        }

        goto LABEL_167;
      }

      v4 = v121;
      if (v31 == 1)
      {
        if (v129 >> 32 < v129)
        {
          goto LABEL_202;
        }

        v70 = __DataStorage._bytes.getter();
        if (v70)
        {
          v71 = v70;
          v72 = __DataStorage._offset.getter();
          if (__OFSUB__(v129, v72))
          {
            goto LABEL_209;
          }

          v69 = (v129 - v72 + v71);
        }

        else
        {
          v69 = 0;
        }

        a2 = v133;
        v104 = __DataStorage._length.getter();
        if (v104 >= (v129 >> 32) - v129)
        {
          v92 = (v129 >> 32) - v129;
        }

        else
        {
          v92 = v104;
        }

        result = v116;
        if (!v116)
        {
          goto LABEL_220;
        }

        v93 = v127;
        if (!v69)
        {
          goto LABEL_219;
        }

        goto LABEL_167;
      }

      v94 = v116;
      __s1[0] = v129;
      LODWORD(__s1[1]) = v121;
      WORD2(__s1[1]) = WORD2(v121);
      if (!v116)
      {
        goto LABEL_214;
      }

      v95 = v129;
      goto LABEL_142;
    }

    if (v30 != 2)
    {
      memset(__s1, 0, 14);
      if (!v31)
      {
LABEL_89:
        __s2 = v26;
        v136 = v27;
        v137 = BYTE2(v27);
        v138 = BYTE3(v27);
        v139 = BYTE4(v27);
        v140 = BYTE5(v27);
        v62 = v33;
        v63 = v26;
        v64 = memcmp(__s1, &__s2, BYTE6(v27));

        v65 = v62;
        a2 = v133;
        sub_100003E18(v65, v29);

        sub_100003E18(v63, v4);
        v3 = v131;
        v15 = v132;
        if (!v64)
        {
          goto LABEL_170;
        }

        goto LABEL_19;
      }

      v124 = v33;
      if (v31 != 2)
      {
        v128 = v29;
        v77 = v26;
        v78 = (v26 >> 32) - v26;
        if (v26 >> 32 < v26)
        {
          goto LABEL_194;
        }

        v40 = v27;
        v79 = __DataStorage._bytes.getter();
        if (!v79)
        {
          goto LABEL_211;
        }

        v80 = v79;
        v81 = __DataStorage._offset.getter();
        if (__OFSUB__(v77, v81))
        {
          goto LABEL_199;
        }

        v82 = (v77 - v81 + v80);
        v4 = v40 & 0x3FFFFFFFFFFFFFFFLL;
        v83 = __DataStorage._length.getter();
        if (!v82)
        {
          goto LABEL_212;
        }

        if (v83 >= v78)
        {
          v84 = v78;
        }

        else
        {
          v84 = v83;
        }

        v85 = memcmp(__s1, v82, v84);

        v86 = v124;
        v87 = v128;
        goto LABEL_152;
      }

      v57 = *(v26 + 24);
      v122 = *(v26 + 16);
      v40 = v27;
      v58 = __DataStorage._bytes.getter();
      if (v58)
      {
        v59 = v58;
        v60 = __DataStorage._offset.getter();
        if (__OFSUB__(v122, v60))
        {
          goto LABEL_204;
        }

        v117 = (v122 - v60 + v59);
        v13 = __OFSUB__(v57, v122);
        v61 = v57 - v122;
        if (v13)
        {
          goto LABEL_197;
        }
      }

      else
      {
        v117 = 0;
        v13 = __OFSUB__(v57, v122);
        v61 = v57 - v122;
        if (v13)
        {
          goto LABEL_197;
        }
      }

      v4 = v40 & 0x3FFFFFFFFFFFFFFFLL;
      v102 = __DataStorage._length.getter();
      v47 = v117;
      if (!v117)
      {
        goto LABEL_215;
      }

      goto LABEL_148;
    }

    v121 = v27;
    v125 = v33;
    v49 = *(v33 + 16);
    v50 = __DataStorage._bytes.getter();
    v126 = v29;
    if (v50)
    {
      v51 = v50;
      v52 = __DataStorage._offset.getter();
      if (__OFSUB__(v49, v52))
      {
        goto LABEL_192;
      }

      v115 = (v49 - v52 + v51);
    }

    else
    {
      v115 = 0;
    }

    a2 = v133;
    __DataStorage._length.getter();
    if (v31 == 2)
    {
      break;
    }

    v4 = v121;
    if (v31 == 1)
    {
      if (v129 >> 32 < v129)
      {
        goto LABEL_198;
      }

      v66 = __DataStorage._bytes.getter();
      if (v66)
      {
        v67 = v66;
        v68 = __DataStorage._offset.getter();
        if (__OFSUB__(v129, v68))
        {
          goto LABEL_207;
        }

        v69 = (v129 - v68 + v67);
      }

      else
      {
        v69 = 0;
      }

      a2 = v133;
      v103 = __DataStorage._length.getter();
      if (v103 >= (v129 >> 32) - v129)
      {
        v92 = (v129 >> 32) - v129;
      }

      else
      {
        v92 = v103;
      }

      result = v115;
      if (!v115)
      {
        goto LABEL_218;
      }

      v93 = v126;
      if (!v69)
      {
        goto LABEL_217;
      }

LABEL_167:
      v4 = v121;
      if (result == v69)
      {

        sub_100003E18(v125, v93);
        v106 = v129;
        v107 = v121;
        goto LABEL_173;
      }

      v100 = memcmp(result, v69, v92);

      sub_100003E18(v125, v93);
      v101 = v129;
      goto LABEL_169;
    }

    v94 = v115;
    __s1[0] = v129;
    LODWORD(__s1[1]) = v121;
    WORD2(__s1[1]) = WORD2(v121);
    if (!v115)
    {
      goto LABEL_216;
    }

    v95 = v129;
LABEL_142:
    v100 = memcmp(v94, __s1, BYTE6(v4));

    sub_100003E18(v125, v29);
    v101 = v95;
LABEL_169:
    sub_100003E18(v101, v4);

    v3 = v131;
    v15 = v132;
    if (!v100)
    {
LABEL_170:
      v22 = v15;
      goto LABEL_174;
    }

LABEL_19:
    ++v16;
    if (v19 == v134)
    {
      goto LABEL_177;
    }
  }

  v88 = *(v129 + 16);
  v108 = *(v129 + 24);
  v69 = __DataStorage._bytes.getter();
  if (v69)
  {
    v89 = __DataStorage._offset.getter();
    if (__OFSUB__(v88, v89))
    {
      goto LABEL_206;
    }

    v69 += v88 - v89;
  }

  v13 = __OFSUB__(v108, v88);
  v90 = v108 - v88;
  if (v13)
  {
    goto LABEL_201;
  }

  v91 = __DataStorage._length.getter();
  if (v91 >= v90)
  {
    v92 = v90;
  }

  else
  {
    v92 = v91;
  }

  result = v115;
  if (!v115)
  {
    goto LABEL_210;
  }

  a2 = v133;
  v93 = v29;
  if (v69)
  {
    goto LABEL_167;
  }

  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __DataStorage._length.getter();
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  result = __DataStorage._length.getter();
LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
  return result;
}

_OWORD *sub_1000096B8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000096E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003870(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100009748(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_100009790()
{
  result = qword_100053B38;
  if (!qword_100053B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100053B38);
  }

  return result;
}

uint64_t sub_100009800(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &aBlock - v9;
  kGamePolicyToolEntitlement.getter();
  v11 = String._bridgeToObjectiveC()();

  v12 = [a1 valueForEntitlement:v11];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  aBlock = v44;
  v40 = v45;
  if (!*(&v45 + 1))
  {
    sub_1000096E8(&aBlock, &qword_1000553D0, &unk_10003E3F0);
    goto LABEL_11;
  }

  sub_100009748(0, &qword_100053BF0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    static Logger.toolCoordinator.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Unable to accept incoming tool connection for unentitled process.", v34, 2u);
    }

    (*(v4 + 8))(v8, v3);
    return 0;
  }

  v13 = v43;
  if (([v43 BOOLValue] & 1) == 0)
  {
    static Logger.toolCoordinator.getter();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Unable to accept incoming tool connection for unentitled process.", v37, 2u);
    }

    (*(v4 + 8))(v10, v3);
    return 0;
  }

  v14 = *(v1 + OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_queue);
  type metadata accessor for GamePolicyToolProxy();
  v15 = swift_allocObject();
  v15[5] = 0;
  swift_unknownObjectWeakInit();
  v15[2] = a1;
  v15[3] = v14;
  v15[5] = &off_10004D9D0;
  swift_unknownObjectWeakAssign();
  v16 = objc_opt_self();
  v17 = v14;
  v18 = a1;
  v19 = [v16 interfaceWithProtocol:&OBJC_PROTOCOL____TtP10GamePolicy20GamePolicyToolClient_];
  [v18 setRemoteObjectInterface:v19];

  v20 = [v16 interfaceWithProtocol:&OBJC_PROTOCOL____TtP10GamePolicy20GamePolicyToolServer_];
  [v18 setExportedInterface:v20];

  [v18 setExportedObject:v15];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v18;
  v41 = sub_10000AD40;
  v42 = v22;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v40 = sub_100024520;
  *(&v40 + 1) = &unk_10004DAC8;
  v23 = _Block_copy(&aBlock);
  v24 = v18;

  [v24 setInvalidationHandler:v23];
  _Block_release(v23);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v24;
  v41 = sub_10000ADD4;
  v42 = v26;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v40 = sub_100024520;
  *(&v40 + 1) = &unk_10004DB18;
  v27 = _Block_copy(&aBlock);
  v28 = v24;

  [v28 setInterruptionHandler:v27];
  _Block_release(v27);
  v29 = *(v1 + OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_lock);
  [v29 lock];
  v30 = OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_toolProxies;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v30) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v30) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v38 = *((*(v1 + v30) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  [v29 unlock];
  [v28 resume];

  return 1;
}

uint64_t sub_100009E40(void *a1)
{
  kGamePolicyPrivilegedToolEntitlement.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [a1 valueForEntitlement:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v24 = v29;
  v25 = v30;
  if (!*(&v30 + 1))
  {
    sub_1000096E8(&v24, &qword_1000553D0, &unk_10003E3F0);
    return 0;
  }

  sub_100009748(0, &qword_100053BF0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v5 = v28;
  if (([v28 BOOLValue] & 1) == 0)
  {

    return 0;
  }

  v6 = *(v1 + OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_queue);
  type metadata accessor for GamePolicyPrivilegedToolProxy();
  v7 = swift_allocObject();
  v7[5] = 0;
  swift_unknownObjectWeakInit();
  v7[2] = a1;
  v7[3] = v6;
  v7[5] = &off_10004D9C8;
  v7[6] = 0;
  swift_unknownObjectWeakAssign();
  v8 = v6;
  v9 = a1;
  isa = GamePolicyPrivilegedToolClientInterface()().super.isa;
  [v9 setRemoteObjectInterface:isa];

  v11 = GamePolicyPrivilegedToolServerInterface()().super.isa;
  [v9 setExportedInterface:v11];

  [v9 setExportedObject:v7];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v9;
  v26 = sub_10000A8B4;
  v27 = v13;
  *&v24 = _NSConcreteStackBlock;
  *(&v24 + 1) = 1107296256;
  *&v25 = sub_100024520;
  *(&v25 + 1) = &unk_10004DA28;
  v14 = _Block_copy(&v24);
  v15 = v9;

  [v15 setInvalidationHandler:v14];
  _Block_release(v14);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  v26 = sub_10000A920;
  v27 = v17;
  *&v24 = _NSConcreteStackBlock;
  *(&v24 + 1) = 1107296256;
  *&v25 = sub_100024520;
  *(&v25 + 1) = &unk_10004DA78;
  v18 = _Block_copy(&v24);
  v19 = v15;

  [v19 setInterruptionHandler:v18];
  _Block_release(v18);
  v20 = *(v1 + OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_lock);
  [v20 lock];
  v21 = OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_privilegedToolProxies;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v21) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v21) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v23 = *((*(v1 + v21) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  [v20 unlock];
  [v19 resume];

  return 1;
}

void sub_10000A290(uint64_t a1, void *a2, const char *a3, uint64_t *a4, uint64_t (*a5)(unint64_t), void (*a6)(int64_t))
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v29 = a5;
    v30 = a6;
    static Logger.toolCoordinator.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, a3, v20, 2u);
    }

    (*(v12 + 8))(v15, v11);
    v21 = OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_lock;
    [*&v17[OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_lock] lock];
    v22 = *a4;
    swift_beginAccess();
    v23 = a2;
    v24 = sub_10000AA90(&v17[v22], v23, v29);

    v25 = *&v17[v22];
    if (v25 >> 62)
    {
      if (v25 < 0)
      {
        v27 = *&v17[v22];
      }

      v26 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v26 < v24)
    {
      __break(1u);
    }

    else
    {
      v30(v24);
      swift_endAccess();
      [*&v17[v21] unlock];
    }
  }
}

void sub_10000A4D0(uint64_t a1, void *a2, const char *a3, uint64_t *a4, uint64_t (*a5)(unint64_t), void (*a6)(int64_t))
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v28 = a6;
    v29 = a5;
    static Logger.toolCoordinator.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, a3, v20, 2u);
    }

    (*(v12 + 8))(v15, v11);
    v21 = OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_lock;
    [*&v17[OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_lock] lock];
    v22 = *a4;
    swift_beginAccess();
    v23 = a2;
    v24 = sub_10000AA90(&v17[v22], v23, v29);

    v25 = *&v17[v22];
    if (v25 >> 62)
    {
      if (v25 < 0)
      {
        v26 = *&v17[v22];
      }

      if (_CocoaArrayWrapper.endIndex.getter() >= v24)
      {
        goto LABEL_6;
      }
    }

    else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v24)
    {
LABEL_6:
      v28(v24);
      swift_endAccess();
      [*&v17[v21] unlock];
      [v23 invalidate];

      return;
    }

    __break(1u);
  }
}

id sub_10000A7B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GamePolicyToolCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000A878()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A908(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000A974(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    sub_100009748(0, &qword_100055020, NSObject_ptr);
    v6 = *(v5 + 16);
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_10000AA90(unint64_t *a1, uint64_t a2, uint64_t (*a3)(unint64_t))
{
  v6 = *a1;
  result = sub_10000A974(*a1);
  v9 = result;
  if (v3)
  {
    return v9;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = a3;
  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v11 = &qword_100055020;
  v26 = a1;
  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v9;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v9;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v13 = *(v6 + 8 * v10 + 32);

LABEL_15:
    sub_100009748(0, v11, NSObject_ptr);
    v14 = *(v13 + 16);
    v15 = static NSObject.== infix(_:_:)();

    if ((v15 & 1) == 0)
    {
      if (v9 != v10)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v18 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v9 >= v18)
          {
            goto LABEL_45;
          }

          if (v10 >= v18)
          {
            goto LABEL_46;
          }

          v16 = *(v6 + 32 + 8 * v9);
          v17 = *(v6 + 32 + 8 * v10);
        }

        v19 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
        {
          v6 = v25(v6);
          v20 = (v6 >> 62) & 1;
        }

        else
        {
          LODWORD(v20) = 0;
        }

        v21 = v6 & 0xFFFFFFFFFFFFFF8;
        v22 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20);
        *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20) = v17;

        if ((v6 & 0x8000000000000000) != 0 || v20)
        {
          v6 = v25(v6);
          v21 = v6 & 0xFFFFFFFFFFFFFF8;
          if ((v10 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v9;
          }
        }

        else if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v10 >= *(v21 + 16))
        {
          goto LABEL_43;
        }

        v11 = v19;
        v23 = v21 + 8 * v10;
        v24 = *(v23 + 32);
        *(v23 + 32) = v16;

        *v26 = v6;
      }

      v12 = __OFADD__(v9++, 1);
      if (v12)
      {
        goto LABEL_42;
      }
    }

    v12 = __OFADD__(v10++, 1);
    if (v12)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_10000AD94()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000AE28(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v36 - v8;
  v10 = [a1 serviceName];
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v12 == 0xD00000000000001ALL && 0x8000000100040E00 == v14)
  {

LABEL_15:
    if ((sub_100009800(a1) & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
    goto LABEL_15;
  }

LABEL_7:
  v17 = [a1 serviceName];
  if (!v17)
  {
    goto LABEL_21;
  }

  v18 = v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v19 == 0xD000000000000025 && 0x8000000100040DD0 == v21)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if ((sub_100009E40(a1) & 1) == 0)
  {
LABEL_21:
    static Logger.toolCoordinator.getter();
    v31 = a1;
    v25 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v25, v32))
    {
      v30 = 0;
      v9 = v7;
      goto LABEL_25;
    }

    v33 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v31;
    *v28 = v31;
    v34 = v31;
    _os_log_impl(&_mh_execute_header, v25, v32, "GamePolicyToolCoordinator: rejecting incoming connection %@", v33, 0xCu);
    v30 = 0;
    v9 = v7;
    goto LABEL_23;
  }

LABEL_16:
  static Logger.toolCoordinator.getter();
  v24 = a1;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&_mh_execute_header, v25, v26, "GamePolicyToolCoordinator: accepting incoming connection %@", v27, 0xCu);
    v30 = 1;
LABEL_23:
    sub_1000096E8(v28, &unk_100053C00, &qword_10003E810);

    goto LABEL_25;
  }

  v30 = 1;
LABEL_25:

  (*(v3 + 8))(v9, v2);
  return v30;
}

NSString sub_10000B204()
{
  result = String._bridgeToObjectiveC()();
  qword_1000565B8 = result;
  return result;
}

uint64_t sub_10000B23C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.toolCoordinator.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "GamePolicyToolProxy: ping!", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = [*(v1 + 16) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100003870(&qword_100053CE8, &unk_10003E450);
  result = swift_dynamicCast();
  if (result)
  {
    [v12[1] pong];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000B43C()
{
  sub_10000B4A8(v0 + 32);

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_10000B4D0()
{
  _StringGuts.grow(_:)(29);

  type metadata accessor for GamingMetadataDBBundle();
  sub_100003870(&qword_100053DC8, &qword_10003E4B8);
  v1._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 30240;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  type metadata accessor for Version();
  sub_10000B838();
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._object = 0x8000000100040F20;
  v4._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v4);
  v5 = *(v0 + OBJC_IVAR____TtC11gamepolicyd22GamingMetadataDBBundle_descriptors);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v10 = *(v0 + OBJC_IVAR____TtC11gamepolicyd22GamingMetadataDBBundle_descriptors);
    }

    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 62;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 60;
}

uint64_t sub_10000B648()
{
  v1 = OBJC_IVAR____TtC11gamepolicyd22GamingMetadataDBBundle_version;
  v2 = type metadata accessor for Version();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11gamepolicyd22GamingMetadataDBBundle_identifier + 8);

  v4 = *(v0 + OBJC_IVAR____TtC11gamepolicyd22GamingMetadataDBBundle_descriptors);

  v5 = *(v0 + OBJC_IVAR____TtC11gamepolicyd22GamingMetadataDBBundle_overrides);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v6, v7);
}

uint64_t type metadata accessor for GamingMetadataDBBundle()
{
  result = qword_100053D18;
  if (!qword_100053D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000B76C()
{
  result = type metadata accessor for Version();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_10000B838()
{
  result = qword_100053DD0;
  if (!qword_100053DD0)
  {
    type metadata accessor for Version();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100053DD0);
  }

  return result;
}

int *sub_10000B890()
{
  v1 = v0;
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 8) = 0;
  v43 = v0 + 16;
  *(v0 + 3) = 0u;
  v42 = v0 + 12;
  *(v0 + 2) = 0u;
  v40 = v0 + 8;
  *(v0 + 1) = 0u;
  v7 = v0 + 4;
  v44 = 0xD000000000000025;
  v45 = 0x8000000100041140;
  static String.Encoding.utf8.getter();
  sub_100009790();
  v8 = StringProtocol.cString(using:)();
  v9 = *(v3 + 8);
  v9(v6, v2);
  if (v8)
  {
    v10 = (v8 + 32);
  }

  else
  {
    v10 = 0;
  }

  swift_beginAccess();
  notify_register_check(v10, v7);
  swift_endAccess();

  v44 = 0xD00000000000002FLL;
  v45 = 0x8000000100041170;
  static String.Encoding.utf8.getter();
  v11 = StringProtocol.cString(using:)();
  v9(v6, v2);
  if (v11)
  {
    v12 = (v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  swift_beginAccess();
  notify_register_check(v12, v1 + 5);
  swift_endAccess();

  v41 = 0xD000000000000029;
  v44 = 0xD000000000000029;
  v45 = 0x80000001000411A0;
  static String.Encoding.utf8.getter();
  v13 = StringProtocol.cString(using:)();
  v9(v6, v2);
  if (v13)
  {
    v14 = (v13 + 32);
  }

  else
  {
    v14 = 0;
  }

  swift_beginAccess();
  notify_register_check(v14, v1 + 6);
  swift_endAccess();

  v44 = 0xD000000000000039;
  v45 = 0x80000001000411D0;
  static String.Encoding.utf8.getter();
  v15 = StringProtocol.cString(using:)();
  v9(v6, v2);
  if (v15)
  {
    v16 = (v15 + 32);
  }

  else
  {
    v16 = 0;
  }

  swift_beginAccess();
  notify_register_check(v16, v1 + 7);
  swift_endAccess();

  v44 = 0xD000000000000025;
  v45 = 0x8000000100041210;
  static String.Encoding.utf8.getter();
  v17 = StringProtocol.cString(using:)();
  v9(v6, v2);
  if (v17)
  {
    v18 = (v17 + 32);
  }

  else
  {
    v18 = 0;
  }

  v19 = v40;
  swift_beginAccess();
  notify_register_check(v18, v19);
  swift_endAccess();

  v44 = 0xD000000000000032;
  v45 = 0x8000000100041240;
  static String.Encoding.utf8.getter();
  v20 = StringProtocol.cString(using:)();
  v9(v6, v2);
  if (v20)
  {
    v21 = (v20 + 32);
  }

  else
  {
    v21 = 0;
  }

  swift_beginAccess();
  notify_register_check(v21, v1 + 9);
  swift_endAccess();

  v44 = 0xD000000000000034;
  v45 = 0x8000000100041280;
  static String.Encoding.utf8.getter();
  v22 = StringProtocol.cString(using:)();
  v9(v6, v2);
  if (v22)
  {
    v23 = (v22 + 32);
  }

  else
  {
    v23 = 0;
  }

  swift_beginAccess();
  notify_register_check(v23, v1 + 10);
  swift_endAccess();

  v44 = 0xD000000000000032;
  v45 = 0x80000001000412C0;
  static String.Encoding.utf8.getter();
  v24 = StringProtocol.cString(using:)();
  v9(v6, v2);
  if (v24)
  {
    v25 = (v24 + 32);
  }

  else
  {
    v25 = 0;
  }

  swift_beginAccess();
  notify_register_check(v25, v1 + 11);
  swift_endAccess();

  v44 = 0xD000000000000027;
  v45 = 0x8000000100041300;
  static String.Encoding.utf8.getter();
  v26 = StringProtocol.cString(using:)();
  v9(v6, v2);
  if (v26)
  {
    v27 = (v26 + 32);
  }

  else
  {
    v27 = 0;
  }

  v28 = v42;
  swift_beginAccess();
  notify_register_check(v27, v28);
  swift_endAccess();

  v44 = v41;
  v45 = 0x8000000100041330;
  static String.Encoding.utf8.getter();
  v29 = StringProtocol.cString(using:)();
  v9(v6, v2);
  if (v29)
  {
    v30 = (v29 + 32);
  }

  else
  {
    v30 = 0;
  }

  swift_beginAccess();
  notify_register_check(v30, v1 + 13);
  swift_endAccess();

  v44 = 0xD000000000000027;
  v45 = 0x8000000100041360;
  static String.Encoding.utf8.getter();
  v31 = StringProtocol.cString(using:)();
  v9(v6, v2);
  if (v31)
  {
    v32 = (v31 + 32);
  }

  else
  {
    v32 = 0;
  }

  swift_beginAccess();
  notify_register_check(v32, v1 + 14);
  swift_endAccess();

  v44 = 0xD000000000000031;
  v45 = 0x8000000100041390;
  static String.Encoding.utf8.getter();
  v33 = StringProtocol.cString(using:)();
  v9(v6, v2);
  if (v33)
  {
    v34 = (v33 + 32);
  }

  else
  {
    v34 = 0;
  }

  swift_beginAccess();
  notify_register_check(v34, v1 + 15);
  swift_endAccess();

  v44 = 0xD000000000000030;
  v45 = 0x80000001000413D0;
  static String.Encoding.utf8.getter();
  v35 = StringProtocol.cString(using:)();
  v9(v6, v2);
  if (v35)
  {
    v36 = (v35 + 32);
  }

  else
  {
    v36 = 0;
  }

  v37 = v43;
  swift_beginAccess();
  notify_register_check(v36, v37);
  swift_endAccess();

  return v1;
}

_DWORD *sub_10000C0C0()
{
  swift_beginAccess();
  v1 = v0[4];
  if (v1)
  {
    notify_cancel(v1);
  }

  swift_beginAccess();
  v2 = v0[5];
  if (v2)
  {
    notify_cancel(v2);
  }

  swift_beginAccess();
  v3 = v0[6];
  if (v3)
  {
    notify_cancel(v3);
  }

  swift_beginAccess();
  v4 = v0[7];
  if (v4)
  {
    notify_cancel(v4);
  }

  swift_beginAccess();
  v5 = v0[8];
  if (v5)
  {
    notify_cancel(v5);
  }

  swift_beginAccess();
  v6 = v0[9];
  if (v6)
  {
    notify_cancel(v6);
  }

  swift_beginAccess();
  v7 = v0[10];
  if (v7)
  {
    notify_cancel(v7);
  }

  swift_beginAccess();
  v8 = v0[11];
  if (v8)
  {
    notify_cancel(v8);
  }

  swift_beginAccess();
  v9 = v0[12];
  if (v9)
  {
    notify_cancel(v9);
  }

  swift_beginAccess();
  v10 = v0[13];
  if (v10)
  {
    notify_cancel(v10);
  }

  swift_beginAccess();
  v11 = v0[14];
  if (v11)
  {
    notify_cancel(v11);
  }

  swift_beginAccess();
  v12 = v0[15];
  if (v12)
  {
    notify_cancel(v12);
  }

  swift_beginAccess();
  v13 = v0[16];
  if (v13)
  {
    notify_cancel(v13);
  }

  return v0;
}

uint64_t sub_10000C288()
{
  sub_10000C0C0();

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_10000C2E0()
{
  _StringGuts.grow(_:)(41);

  _s14descr10004D339V10DescriptorCMa();
  sub_100003870(&qword_1000540E0, &qword_10003E598);
  v1._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x6669746E65646920;
  v2._object = 0xEC0000003D726569;
  String.append(_:)(v2);
  String.append(_:)(v0[1]);
  v3._object = 0x8000000100041470;
  v3._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v3);
  countAndFlagsBits = v0[2]._countAndFlagsBits;
  if (countAndFlagsBits >> 62)
  {
    if (countAndFlagsBits < 0)
    {
      v9 = v0[2]._countAndFlagsBits;
    }

    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((countAndFlagsBits & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 62;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 60;
}

uint64_t sub_10000C430()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_10000C4B8()
{
  v1 = v0;
  v2 = sub_100003870(&qword_1000541E0, "d_");
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.appCoordinator.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "GamePolicyPrivilegedAppProxy: ping", v14, 2u);
  }

  (*(v8 + 8))(v11, v7);
  v15 = *(v1 + 32);
  swift_beginAccess();
  sub_100003870(&qword_100053AF8, &qword_10003E350);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10000CB48();

  Publisher<>.sink(receiveValue:)();

  (*(v3 + 8))(v6, v2);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return sub_100006910();
}

uint64_t sub_10000C75C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = [*(a2 + 16) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100003870(&qword_1000541F0, &qword_10003E5F8);
  result = swift_dynamicCast();
  if (result)
  {
    type metadata accessor for GameLibraryGame();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v6 installedGamesDidChange:isa];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000CACC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocClassInstance(v0, 48, 7);
}

unint64_t sub_10000CB48()
{
  result = qword_1000541E8;
  if (!qword_1000541E8)
  {
    sub_1000085E0(&qword_1000541E0, "d_");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000541E8);
  }

  return result;
}

uint64_t sub_10000CBAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10000CC2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_10000CCA8()
{
  result = qword_100053BF0;
  if (!qword_100053BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100053BF0);
  }

  return result;
}

Swift::Int sub_10000CCFC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10000CD68()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10000CDD0()
{
  sub_10000B4A8(v0 + 16);

  return _swift_deallocClassInstance(v0, 32, 7);
}

NSString sub_10000CE2C()
{
  result = String._bridgeToObjectiveC()();
  qword_1000565E0 = result;
  return result;
}

NSString sub_10000CE64()
{
  result = String._bridgeToObjectiveC()();
  qword_1000565E8 = result;
  return result;
}

NSString sub_10000CE9C()
{
  result = String._bridgeToObjectiveC()();
  qword_1000565F0 = result;
  return result;
}

NSString sub_10000CED4()
{
  result = String._bridgeToObjectiveC()();
  qword_1000565F8 = result;
  return result;
}

NSString sub_10000CF0C()
{
  result = String._bridgeToObjectiveC()();
  qword_100056600 = result;
  return result;
}

double sub_10000CF48@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v94 = a2;
  v3 = type metadata accessor for Notification();
  v98 = *(v3 - 8);
  v4 = *(v98 + 64);
  __chkstk_darwin(v3);
  v95 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v96 = *(v6 - 8);
  v97 = v6;
  v7 = *(v96 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = (&v89 - v12);
  v14 = __chkstk_darwin(v11);
  v16 = &v89 - v15;
  __chkstk_darwin(v14);
  v18 = &v89 - v17;
  v19 = *(a1 + 16);
  [v19 lock];
  swift_beginAccess();
  v20 = *(a1 + 72);
  v112[0] = *(a1 + 56);
  v112[1] = v20;
  v21 = *(a1 + 104);
  v113 = *(a1 + 88);
  v114 = v21;
  v115[0] = v112[0];
  v115[1] = v20;
  v115[2] = v113;
  v115[3] = v21;
  v102 = v113;
  v103 = v21;
  v100 = v112[0];
  v101 = v20;
  v116[0] = v112[0];
  v116[1] = v20;
  v116[2] = v113;
  v116[3] = v21;
  v22 = *(a1 + 104);
  v106 = *(a1 + 88);
  v107 = v22;
  v23 = *(a1 + 72);
  v104 = *(a1 + 56);
  v105 = v23;
  v108 = v104;
  v109 = v23;
  v110 = v106;
  v111 = v22;
  sub_10001B118(v112, &v121);
  sub_10001B118(v115, &v121);
  sub_10001B118(v116, &v121);
  [v19 unlock];
  v117[0] = v104;
  v117[1] = v105;
  v117[2] = v106;
  v117[3] = v107;
  v118[0] = v108;
  v118[1] = v109;
  v119 = v110;
  v120 = v111;
  v123 = v102;
  v124 = v103;
  v121 = v100;
  v122 = v101;
  v24 = v110;
  v25 = ModeEnablementStrategy.rawValue.getter();
  if (v25 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v89 = v18;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v92 = v16;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v91 = v3;
      v30 = v29;
      v31 = swift_slowAlloc();
      *&v100 = v31;
      *v30 = 136446210;
      v99 = v24;
      v32 = String.init<A>(describing:)();
      v90 = v13;
      v34 = v10;
      v35 = sub_100034C38(v32, v33, &v100);
      v13 = v90;

      *(v30 + 4) = v35;
      v10 = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "Updating game mode enablement strategy to %{public}s", v30, 0xCu);
      sub_100003964(v31);

      v3 = v91;
    }

    (*(v96 + 8))(v89, v97);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    if (qword_100053460 != -1)
    {
      swift_once();
    }

    *(&v101 + 1) = &type metadata for ModeEnablementStrategy;
    *&v100 = v24;
    v36 = qword_1000565E0;
    v37 = v95;
    Notification.init(name:object:userInfo:)();
    v38 = [objc_opt_self() defaultCenter];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v38 postNotification:isa];

    (*(v98 + 8))(v37, v3);
    v16 = v92;
  }

  v40 = *(&v119 + 1);
  v41 = ModeEnablementStrategy.rawValue.getter();
  v42 = ModeEnablementStrategy.rawValue.getter();
  v93 = v10;
  if (v41 != v42)
  {
    static Logger.policyCoordinator.getter();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *&v100 = v90;
      *v45 = 136446210;
      v99 = v40;
      v46 = String.init<A>(describing:)();
      v91 = v3;
      v48 = sub_100034C38(v46, v47, &v100);
      v92 = v16;
      v49 = v13;
      v50 = v48;
      v3 = v91;

      *(v45 + 4) = v50;
      v13 = v49;
      _os_log_impl(&_mh_execute_header, v43, v44, "Updating sustained execution mode enablement strategy to %{public}s", v45, 0xCu);
      sub_100003964(v90);

      (*(v96 + 8))(v92, v97);
    }

    else
    {

      (*(v96 + 8))(v16, v97);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    *(&v101 + 1) = &type metadata for ModeEnablementStrategy;
    *&v100 = v40;
    v51 = qword_1000565F0;
    v52 = v95;
    Notification.init(name:object:userInfo:)();
    v53 = [objc_opt_self() defaultCenter];
    v54 = Notification._bridgeToObjectiveC()().super.isa;
    [v53 postNotification:v54];

    (*(v98 + 8))(v52, v3);
  }

  v55 = v120;
  v56 = ModeEnablementStrategy.rawValue.getter();
  if (v56 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v90 = v13;
      v61 = v3;
      v62 = v60;
      *&v100 = v60;
      *v59 = 136446210;
      v99 = v55;
      v63 = String.init<A>(describing:)();
      v65 = sub_100034C38(v63, v64, &v100);

      *(v59 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v57, v58, "Updating dynamic splitter enablement strategy to %{public}s", v59, 0xCu);
      sub_100003964(v62);
      v3 = v61;

      (*(v96 + 8))(v90, v97);
    }

    else
    {

      (*(v96 + 8))(v13, v97);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    *(&v101 + 1) = &type metadata for ModeEnablementStrategy;
    *&v100 = v55;
    v66 = qword_1000565F8;
    v67 = v95;
    Notification.init(name:object:userInfo:)();
    v68 = [objc_opt_self() defaultCenter];
    v69 = Notification._bridgeToObjectiveC()().super.isa;
    [v68 postNotification:v69];

    (*(v98 + 8))(v67, v3);
  }

  v70 = *(&v120 + 1);
  v71 = ModelManagerPolicyStrategy.rawValue.getter();
  if (v71 == ModelManagerPolicyStrategy.rawValue.getter())
  {
    sub_10001B150(v118);
    sub_10001B150(v117);
  }

  else
  {
    v72 = v93;
    static Logger.policyCoordinator.getter();
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = v3;
      v77 = swift_slowAlloc();
      *&v100 = v77;
      *v75 = 136446210;
      v99 = v70;
      v78 = String.init<A>(describing:)();
      v80 = sub_100034C38(v78, v79, &v100);

      *(v75 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v73, v74, "Updating game mode ModelManager policy strategy to %{public}s", v75, 0xCu);
      sub_100003964(v77);
      v3 = v76;
    }

    (*(v96 + 8))(v72, v97);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    *(&v101 + 1) = &type metadata for ModelManagerPolicyStrategy;
    *&v100 = v70;
    v81 = qword_1000565E8;
    v82 = v95;
    Notification.init(name:object:userInfo:)();
    v83 = [objc_opt_self() defaultCenter];
    v84 = Notification._bridgeToObjectiveC()().super.isa;
    [v83 postNotification:v84];

    sub_10001B150(v118);
    sub_10001B150(v117);
    (*(v98 + 8))(v82, v3);
  }

  v85 = v122;
  v86 = v94;
  *v94 = v121;
  v86[1] = v85;
  result = *&v123;
  v88 = v124;
  v86[2] = v123;
  v86[3] = v88;
  return result;
}

id sub_10000DA84(uint64_t a1)
{
  v83 = type metadata accessor for Notification();
  v87 = *(v83 - 8);
  v2 = *(v87 + 64);
  __chkstk_darwin(v83 - 8);
  v86 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v84 = *(v4 - 8);
  v85 = v4;
  v5 = *(v84 + 64);
  v6 = __chkstk_darwin(v4);
  v81 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v80 = &v79 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v79 - v11;
  __chkstk_darwin(v10);
  v14 = &v79 - v13;
  v15 = *(a1 + 16);
  [v15 lock];
  swift_beginAccess();
  v98 = *(a1 + 56);
  v99 = *(a1 + 72);
  v100 = *(a1 + 88);
  v101 = *(a1 + 104);
  v16 = v98;
  v102[0] = v98;
  v102[1] = v99;
  v102[2] = v100;
  v102[3] = v101;
  v92 = v100;
  v93 = v101;
  v90 = v98;
  v91 = v99;
  v96 = v100;
  v94 = v98;
  v95 = v99;
  v97 = v101;
  sub_10001B118(&v98, v104);
  v82 = v16;
  sub_10001B118(v102, v104);
  [v15 unlock];
  v103[0] = v90;
  v103[1] = v91;
  v103[2] = v92;
  v103[3] = v93;
  v104[0] = v94;
  v104[1] = v95;
  v105 = v96;
  v106 = v97;
  v17 = v96;
  v18 = ModeEnablementStrategy.rawValue.getter();
  v19 = &_s10GamePolicy01kaB15ToolEntitlementSSvg_ptr;
  p_name = (&stru_100051FF8 + 8);
  if (v18 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v89 = v24;
      *v23 = 136446210;
      v88 = v17;
      v25 = String.init<A>(describing:)();
      v27 = sub_100034C38(v25, v26, &v89);

      *(v23 + 4) = v27;
      v19 = &_s10GamePolicy01kaB15ToolEntitlementSSvg_ptr;
      _os_log_impl(&_mh_execute_header, v21, v22, "Updating game mode enablement strategy to %{public}s", v23, 0xCu);
      sub_100003964(v24);
    }

    (*(v84 + 8))(v14, v85);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    p_name = &stru_100051FF8.name;
    if (qword_100053460 != -1)
    {
      swift_once();
    }

    *&v91 = &type metadata for ModeEnablementStrategy;
    v89 = v17;
    v28 = qword_1000565E0;
    v29 = v86;
    Notification.init(name:object:userInfo:)();
    v30 = v19[465];
    v31 = [objc_opt_self() defaultCenter];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v31 postNotification:isa];

    (*(v87 + 8))(v29, v83);
  }

  v33 = *(&v105 + 1);
  v34 = ModeEnablementStrategy.rawValue.getter();
  if (v34 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v89 = v38;
      *v37 = 136446210;
      v88 = v33;
      v39 = String.init<A>(describing:)();
      v41 = sub_100034C38(v39, v40, &v89);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "Updating sustained execution mode enablement strategy to %{public}s", v37, 0xCu);
      sub_100003964(v38);
    }

    (*(v84 + 8))(v12, v85);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    *&v91 = &type metadata for ModeEnablementStrategy;
    v89 = v33;
    v42 = qword_1000565F0;
    v43 = v86;
    Notification.init(name:object:userInfo:)();
    v19 = &_s10GamePolicy01kaB15ToolEntitlementSSvg_ptr;
    v44 = [objc_opt_self() p_name[186]];
    v45 = Notification._bridgeToObjectiveC()().super.isa;
    [v44 postNotification:v45];

    (*(v87 + 8))(v43, v83);
  }

  v46 = v19;
  v47 = v106;
  v48 = ModeEnablementStrategy.rawValue.getter();
  if (v48 != ModeEnablementStrategy.rawValue.getter())
  {
    v49 = v80;
    static Logger.policyCoordinator.getter();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = p_name;
      v54 = swift_slowAlloc();
      v89 = v54;
      *v52 = 136446210;
      v88 = v47;
      v55 = String.init<A>(describing:)();
      v57 = sub_100034C38(v55, v56, &v89);

      *(v52 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v50, v51, "Updating dynamic splitter enablement strategy to %{public}s", v52, 0xCu);
      sub_100003964(v54);
      p_name = v53;

      (*(v84 + 8))(v80, v85);
    }

    else
    {

      (*(v84 + 8))(v49, v85);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    *&v91 = &type metadata for ModeEnablementStrategy;
    v89 = v47;
    v58 = qword_1000565F8;
    v59 = v86;
    Notification.init(name:object:userInfo:)();
    v60 = v46[465];
    v61 = [objc_opt_self() p_name[186]];
    v62 = Notification._bridgeToObjectiveC()().super.isa;
    [v61 postNotification:v62];

    (*(v87 + 8))(v59, v83);
  }

  v63 = *(&v106 + 1);
  v64 = ModelManagerPolicyStrategy.rawValue.getter();
  v65 = ModelManagerPolicyStrategy.rawValue.getter();
  v66 = v81;
  if (v64 == v65)
  {
    sub_10001B150(v104);
    sub_10001B150(v103);
  }

  else
  {
    static Logger.policyCoordinator.getter();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v89 = v70;
      *v69 = 136446210;
      v88 = v63;
      v71 = String.init<A>(describing:)();
      v73 = sub_100034C38(v71, v72, &v89);

      *(v69 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v67, v68, "Updating game mode ModelManager policy strategy to %{public}s", v69, 0xCu);
      sub_100003964(v70);
      p_name = &stru_100051FF8.name;
    }

    (*(v84 + 8))(v66, v85);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    *&v91 = &type metadata for ModelManagerPolicyStrategy;
    v89 = v63;
    v74 = qword_1000565E8;
    v75 = v86;
    Notification.init(name:object:userInfo:)();
    v76 = [objc_opt_self() p_name[186]];
    v77 = Notification._bridgeToObjectiveC()().super.isa;
    [v76 postNotification:v77];

    sub_10001B150(v104);
    sub_10001B150(v103);
    (*(v87 + 8))(v75, v83);
  }

  return v82;
}

uint64_t sub_10000E54C(uint64_t a1, uint64_t a2)
{
  v93 = type metadata accessor for Notification();
  v97 = *(v93 - 8);
  v4 = *(v97 + 64);
  __chkstk_darwin(v93);
  v96 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v94 = *(v6 - 8);
  v95 = v6;
  v7 = *(v94 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v90 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v90 - v15;
  __chkstk_darwin(v14);
  v18 = &v90 - v17;
  v19 = *(a1 + 16);
  [v19 lock];
  swift_beginAccess();
  v21 = *(a1 + 72);
  v107[0] = *(a1 + 56);
  v20 = v107[0];
  v107[1] = v21;
  v23 = *(a1 + 104);
  v108 = *(a1 + 88);
  v22 = v108;
  v109 = v23;
  *(a1 + 88) = a2;
  v110[0] = v20;
  v110[1] = v21;
  v110[2] = *(a1 + 88);
  v110[3] = v23;
  v101 = v22;
  v102 = v23;
  v99 = v20;
  v100 = v21;
  v24 = *(a1 + 56);
  v25 = *(a1 + 72);
  v26 = *(a1 + 104);
  v105 = *(a1 + 88);
  v106 = v26;
  v103 = v24;
  v104 = v25;
  sub_10001B118(v107, v112);
  sub_10001B118(v110, v112);
  [v19 unlock];
  v111[0] = v99;
  v111[1] = v100;
  v111[2] = v101;
  v111[3] = v102;
  v112[0] = v103;
  v112[1] = v104;
  v113 = v105;
  v114 = v106;
  v27 = v105;
  v28 = ModeEnablementStrategy.rawValue.getter();
  p_name = (&stru_100051FF8 + 8);
  v30 = (&stru_100051FF8 + 8);
  if (v28 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *&v99 = v90;
      *v33 = 136446210;
      v98 = v27;
      v34 = String.init<A>(describing:)();
      v91 = v13;
      v36 = v16;
      v37 = v10;
      v38 = sub_100034C38(v34, v35, &v99);
      v13 = v91;

      *(v33 + 4) = v38;
      v10 = v37;
      v16 = v36;
      _os_log_impl(&_mh_execute_header, v31, v32, "Updating game mode enablement strategy to %{public}s", v33, 0xCu);
      sub_100003964(v90);
      p_name = &stru_100051FF8.name;
    }

    (*(v94 + 8))(v18, v95);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    v30 = &stru_100051FF8.name;
    if (qword_100053460 != -1)
    {
      swift_once();
    }

    *(&v100 + 1) = &type metadata for ModeEnablementStrategy;
    *&v99 = v27;
    v39 = qword_1000565E0;
    v40 = v96;
    Notification.init(name:object:userInfo:)();
    v41 = [objc_opt_self() p_name[186]];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v41 postNotification:isa];

    (*(v97 + 8))(v40, v93);
  }

  v43 = *(&v113 + 1);
  v44 = ModeEnablementStrategy.rawValue.getter();
  v45 = ModeEnablementStrategy.rawValue.getter();
  v92 = v10;
  if (v44 != v45)
  {
    static Logger.policyCoordinator.getter();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v99 = v49;
      *v48 = 136446210;
      v98 = v43;
      v50 = String.init<A>(describing:)();
      v91 = v16;
      v52 = v13;
      v53 = sub_100034C38(v50, v51, &v99);

      *(v48 + 4) = v53;
      v13 = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "Updating sustained execution mode enablement strategy to %{public}s", v48, 0xCu);
      sub_100003964(v49);
      p_name = (&stru_100051FF8 + 8);

      (*(v94 + 8))(v91, v95);
    }

    else
    {

      (*(v94 + 8))(v16, v95);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    *(&v100 + 1) = &type metadata for ModeEnablementStrategy;
    *&v99 = v43;
    v54 = qword_1000565F0;
    v55 = v96;
    Notification.init(name:object:userInfo:)();
    v56 = [objc_opt_self() p_name[186]];
    v57 = Notification._bridgeToObjectiveC()().super.isa;
    [v56 v30[223]];

    (*(v97 + 8))(v55, v93);
  }

  v58 = v114;
  v59 = ModeEnablementStrategy.rawValue.getter();
  if (v59 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *&v99 = v63;
      *v62 = 136446210;
      v98 = v58;
      v64 = String.init<A>(describing:)();
      v66 = sub_100034C38(v64, v65, &v99);
      v91 = v13;
      v67 = p_name;
      v68 = v66;

      *(v62 + 4) = v68;
      p_name = v67;
      _os_log_impl(&_mh_execute_header, v60, v61, "Updating dynamic splitter enablement strategy to %{public}s", v62, 0xCu);
      sub_100003964(v63);

      (*(v94 + 8))(v91, v95);
    }

    else
    {

      (*(v94 + 8))(v13, v95);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    *(&v100 + 1) = &type metadata for ModeEnablementStrategy;
    *&v99 = v58;
    v69 = qword_1000565F8;
    v70 = v96;
    Notification.init(name:object:userInfo:)();
    v71 = [objc_opt_self() p_name[186]];
    v72 = Notification._bridgeToObjectiveC()().super.isa;
    [v71 v30[223]];

    (*(v97 + 8))(v70, v93);
  }

  v73 = *(&v114 + 1);
  v74 = ModelManagerPolicyStrategy.rawValue.getter();
  if (v74 == ModelManagerPolicyStrategy.rawValue.getter())
  {
    sub_10001B150(v112);
    return sub_10001B150(v111);
  }

  else
  {
    v76 = v92;
    static Logger.policyCoordinator.getter();
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *&v99 = v80;
      *v79 = 136446210;
      v98 = v73;
      v81 = String.init<A>(describing:)();
      v83 = p_name;
      v84 = v30;
      v85 = sub_100034C38(v81, v82, &v99);

      *(v79 + 4) = v85;
      v30 = v84;
      p_name = v83;
      _os_log_impl(&_mh_execute_header, v77, v78, "Updating game mode ModelManager policy strategy to %{public}s", v79, 0xCu);
      sub_100003964(v80);

      (*(v94 + 8))(v92, v95);
    }

    else
    {

      (*(v94 + 8))(v76, v95);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    *(&v100 + 1) = &type metadata for ModelManagerPolicyStrategy;
    *&v99 = v73;
    v86 = qword_1000565E8;
    v87 = v96;
    Notification.init(name:object:userInfo:)();
    v88 = [objc_opt_self() p_name[186]];
    v89 = Notification._bridgeToObjectiveC()().super.isa;
    [v88 v30[223]];

    sub_10001B150(v112);
    sub_10001B150(v111);
    return (*(v97 + 8))(v87, v93);
  }
}

uint64_t sub_10000F05C(uint64_t a1, uint64_t a2)
{
  v94 = type metadata accessor for Notification();
  v98 = *(v94 - 8);
  v4 = *(v98 + 64);
  __chkstk_darwin(v94);
  v97 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v95 = *(v6 - 8);
  v96 = v6;
  v7 = *(v95 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v91 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v91 - v15;
  __chkstk_darwin(v14);
  v18 = &v91 - v17;
  v19 = *(a1 + 16);
  [v19 lock];
  swift_beginAccess();
  v21 = *(a1 + 72);
  v108[0] = *(a1 + 56);
  v20 = v108[0];
  v108[1] = v21;
  v23 = *(a1 + 104);
  v109 = *(a1 + 88);
  v22 = v109;
  v110 = v23;
  *(a1 + 104) = a2;
  v111[0] = v20;
  v111[1] = v21;
  v24 = *(a1 + 104);
  v111[2] = v22;
  v111[3] = v24;
  v102 = v22;
  v103 = v23;
  v100 = v20;
  v101 = v21;
  v25 = *(a1 + 56);
  v26 = *(a1 + 72);
  v27 = *(a1 + 104);
  v106 = *(a1 + 88);
  v107 = v27;
  v104 = v25;
  v105 = v26;
  sub_10001B118(v108, v113);
  sub_10001B118(v111, v113);
  [v19 unlock];
  v112[0] = v100;
  v112[1] = v101;
  v112[2] = v102;
  v112[3] = v103;
  v113[0] = v104;
  v113[1] = v105;
  v114 = v106;
  v115 = v107;
  v28 = v106;
  v29 = ModeEnablementStrategy.rawValue.getter();
  p_name = (&stru_100051FF8 + 8);
  v31 = (&stru_100051FF8 + 8);
  if (v29 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *&v100 = v91;
      *v34 = 136446210;
      v99 = v28;
      v35 = String.init<A>(describing:)();
      v92 = v13;
      v37 = v16;
      v38 = v10;
      v39 = sub_100034C38(v35, v36, &v100);
      v13 = v92;

      *(v34 + 4) = v39;
      v10 = v38;
      v16 = v37;
      _os_log_impl(&_mh_execute_header, v32, v33, "Updating game mode enablement strategy to %{public}s", v34, 0xCu);
      sub_100003964(v91);
      p_name = &stru_100051FF8.name;
    }

    (*(v95 + 8))(v18, v96);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    v31 = &stru_100051FF8.name;
    if (qword_100053460 != -1)
    {
      swift_once();
    }

    *(&v101 + 1) = &type metadata for ModeEnablementStrategy;
    *&v100 = v28;
    v40 = qword_1000565E0;
    v41 = v97;
    Notification.init(name:object:userInfo:)();
    v42 = [objc_opt_self() p_name[186]];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v42 postNotification:isa];

    (*(v98 + 8))(v41, v94);
  }

  v44 = *(&v114 + 1);
  v45 = ModeEnablementStrategy.rawValue.getter();
  v46 = ModeEnablementStrategy.rawValue.getter();
  v93 = v10;
  if (v45 != v46)
  {
    static Logger.policyCoordinator.getter();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v100 = v50;
      *v49 = 136446210;
      v99 = v44;
      v51 = String.init<A>(describing:)();
      v92 = v16;
      v53 = v13;
      v54 = sub_100034C38(v51, v52, &v100);

      *(v49 + 4) = v54;
      v13 = v53;
      _os_log_impl(&_mh_execute_header, v47, v48, "Updating sustained execution mode enablement strategy to %{public}s", v49, 0xCu);
      sub_100003964(v50);
      p_name = (&stru_100051FF8 + 8);

      (*(v95 + 8))(v92, v96);
    }

    else
    {

      (*(v95 + 8))(v16, v96);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    *(&v101 + 1) = &type metadata for ModeEnablementStrategy;
    *&v100 = v44;
    v55 = qword_1000565F0;
    v56 = v97;
    Notification.init(name:object:userInfo:)();
    v57 = [objc_opt_self() p_name[186]];
    v58 = Notification._bridgeToObjectiveC()().super.isa;
    [v57 v31[223]];

    (*(v98 + 8))(v56, v94);
  }

  v59 = v115;
  v60 = ModeEnablementStrategy.rawValue.getter();
  if (v60 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *&v100 = v64;
      *v63 = 136446210;
      v99 = v59;
      v65 = String.init<A>(describing:)();
      v67 = sub_100034C38(v65, v66, &v100);
      v92 = v13;
      v68 = p_name;
      v69 = v67;

      *(v63 + 4) = v69;
      p_name = v68;
      _os_log_impl(&_mh_execute_header, v61, v62, "Updating dynamic splitter enablement strategy to %{public}s", v63, 0xCu);
      sub_100003964(v64);

      (*(v95 + 8))(v92, v96);
    }

    else
    {

      (*(v95 + 8))(v13, v96);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    *(&v101 + 1) = &type metadata for ModeEnablementStrategy;
    *&v100 = v59;
    v70 = qword_1000565F8;
    v71 = v97;
    Notification.init(name:object:userInfo:)();
    v72 = [objc_opt_self() p_name[186]];
    v73 = Notification._bridgeToObjectiveC()().super.isa;
    [v72 v31[223]];

    (*(v98 + 8))(v71, v94);
  }

  v74 = *(&v115 + 1);
  v75 = ModelManagerPolicyStrategy.rawValue.getter();
  if (v75 == ModelManagerPolicyStrategy.rawValue.getter())
  {
    sub_10001B150(v113);
    return sub_10001B150(v112);
  }

  else
  {
    v77 = v93;
    static Logger.policyCoordinator.getter();
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *&v100 = v81;
      *v80 = 136446210;
      v99 = v74;
      v82 = String.init<A>(describing:)();
      v84 = p_name;
      v85 = v31;
      v86 = sub_100034C38(v82, v83, &v100);

      *(v80 + 4) = v86;
      v31 = v85;
      p_name = v84;
      _os_log_impl(&_mh_execute_header, v78, v79, "Updating game mode ModelManager policy strategy to %{public}s", v80, 0xCu);
      sub_100003964(v81);

      (*(v95 + 8))(v93, v96);
    }

    else
    {

      (*(v95 + 8))(v77, v96);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    *(&v101 + 1) = &type metadata for ModelManagerPolicyStrategy;
    *&v100 = v74;
    v87 = qword_1000565E8;
    v88 = v97;
    Notification.init(name:object:userInfo:)();
    v89 = [objc_opt_self() p_name[186]];
    v90 = Notification._bridgeToObjectiveC()().super.isa;
    [v89 v31[223]];

    sub_10001B150(v113);
    sub_10001B150(v112);
    return (*(v98 + 8))(v88, v94);
  }
}

uint64_t sub_10000FB6C(uint64_t a1, uint64_t a2)
{
  v93 = type metadata accessor for Notification();
  v97 = *(v93 - 8);
  v4 = *(v97 + 64);
  __chkstk_darwin(v93);
  v96 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v94 = *(v6 - 8);
  v95 = v6;
  v7 = *(v94 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v90 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v90 - v15;
  __chkstk_darwin(v14);
  v18 = &v90 - v17;
  v19 = *(a1 + 16);
  [v19 lock];
  swift_beginAccess();
  v21 = *(a1 + 72);
  v107[0] = *(a1 + 56);
  v20 = v107[0];
  v107[1] = v21;
  v23 = *(a1 + 104);
  v108 = *(a1 + 88);
  v22 = v108;
  v109 = v23;
  *(a1 + 96) = a2;
  v110[0] = v20;
  v110[1] = v21;
  v110[2] = *(a1 + 88);
  v110[3] = v23;
  v101 = v22;
  v102 = v23;
  v99 = v20;
  v100 = v21;
  v24 = *(a1 + 56);
  v25 = *(a1 + 72);
  v26 = *(a1 + 104);
  v105 = *(a1 + 88);
  v106 = v26;
  v103 = v24;
  v104 = v25;
  sub_10001B118(v107, v112);
  sub_10001B118(v110, v112);
  [v19 unlock];
  v111[0] = v99;
  v111[1] = v100;
  v111[2] = v101;
  v111[3] = v102;
  v112[0] = v103;
  v112[1] = v104;
  v113 = v105;
  v114 = v106;
  v27 = v105;
  v28 = ModeEnablementStrategy.rawValue.getter();
  p_name = (&stru_100051FF8 + 8);
  v30 = (&stru_100051FF8 + 8);
  if (v28 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *&v99 = v90;
      *v33 = 136446210;
      v98 = v27;
      v34 = String.init<A>(describing:)();
      v91 = v13;
      v36 = v16;
      v37 = v10;
      v38 = sub_100034C38(v34, v35, &v99);
      v13 = v91;

      *(v33 + 4) = v38;
      v10 = v37;
      v16 = v36;
      _os_log_impl(&_mh_execute_header, v31, v32, "Updating game mode enablement strategy to %{public}s", v33, 0xCu);
      sub_100003964(v90);
      p_name = &stru_100051FF8.name;
    }

    (*(v94 + 8))(v18, v95);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    v30 = &stru_100051FF8.name;
    if (qword_100053460 != -1)
    {
      swift_once();
    }

    *(&v100 + 1) = &type metadata for ModeEnablementStrategy;
    *&v99 = v27;
    v39 = qword_1000565E0;
    v40 = v96;
    Notification.init(name:object:userInfo:)();
    v41 = [objc_opt_self() p_name[186]];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v41 postNotification:isa];

    (*(v97 + 8))(v40, v93);
  }

  v43 = *(&v113 + 1);
  v44 = ModeEnablementStrategy.rawValue.getter();
  v45 = ModeEnablementStrategy.rawValue.getter();
  v92 = v10;
  if (v44 != v45)
  {
    static Logger.policyCoordinator.getter();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v99 = v49;
      *v48 = 136446210;
      v98 = v43;
      v50 = String.init<A>(describing:)();
      v91 = v16;
      v52 = v13;
      v53 = sub_100034C38(v50, v51, &v99);

      *(v48 + 4) = v53;
      v13 = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "Updating sustained execution mode enablement strategy to %{public}s", v48, 0xCu);
      sub_100003964(v49);
      p_name = (&stru_100051FF8 + 8);

      (*(v94 + 8))(v91, v95);
    }

    else
    {

      (*(v94 + 8))(v16, v95);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    *(&v100 + 1) = &type metadata for ModeEnablementStrategy;
    *&v99 = v43;
    v54 = qword_1000565F0;
    v55 = v96;
    Notification.init(name:object:userInfo:)();
    v56 = [objc_opt_self() p_name[186]];
    v57 = Notification._bridgeToObjectiveC()().super.isa;
    [v56 v30[223]];

    (*(v97 + 8))(v55, v93);
  }

  v58 = v114;
  v59 = ModeEnablementStrategy.rawValue.getter();
  if (v59 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *&v99 = v63;
      *v62 = 136446210;
      v98 = v58;
      v64 = String.init<A>(describing:)();
      v66 = sub_100034C38(v64, v65, &v99);
      v91 = v13;
      v67 = p_name;
      v68 = v66;

      *(v62 + 4) = v68;
      p_name = v67;
      _os_log_impl(&_mh_execute_header, v60, v61, "Updating dynamic splitter enablement strategy to %{public}s", v62, 0xCu);
      sub_100003964(v63);

      (*(v94 + 8))(v91, v95);
    }

    else
    {

      (*(v94 + 8))(v13, v95);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    *(&v100 + 1) = &type metadata for ModeEnablementStrategy;
    *&v99 = v58;
    v69 = qword_1000565F8;
    v70 = v96;
    Notification.init(name:object:userInfo:)();
    v71 = [objc_opt_self() p_name[186]];
    v72 = Notification._bridgeToObjectiveC()().super.isa;
    [v71 v30[223]];

    (*(v97 + 8))(v70, v93);
  }

  v73 = *(&v114 + 1);
  v74 = ModelManagerPolicyStrategy.rawValue.getter();
  if (v74 == ModelManagerPolicyStrategy.rawValue.getter())
  {
    sub_10001B150(v112);
    return sub_10001B150(v111);
  }

  else
  {
    v76 = v92;
    static Logger.policyCoordinator.getter();
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *&v99 = v80;
      *v79 = 136446210;
      v98 = v73;
      v81 = String.init<A>(describing:)();
      v83 = p_name;
      v84 = v30;
      v85 = sub_100034C38(v81, v82, &v99);

      *(v79 + 4) = v85;
      v30 = v84;
      p_name = v83;
      _os_log_impl(&_mh_execute_header, v77, v78, "Updating game mode ModelManager policy strategy to %{public}s", v79, 0xCu);
      sub_100003964(v80);

      (*(v94 + 8))(v92, v95);
    }

    else
    {

      (*(v94 + 8))(v76, v95);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    *(&v100 + 1) = &type metadata for ModelManagerPolicyStrategy;
    *&v99 = v73;
    v86 = qword_1000565E8;
    v87 = v96;
    Notification.init(name:object:userInfo:)();
    v88 = [objc_opt_self() p_name[186]];
    v89 = Notification._bridgeToObjectiveC()().super.isa;
    [v88 v30[223]];

    sub_10001B150(v112);
    sub_10001B150(v111);
    return (*(v97 + 8))(v87, v93);
  }
}

uint64_t sub_10001067C(uint64_t a1, uint64_t a2)
{
  v94 = type metadata accessor for Notification();
  v98 = *(v94 - 8);
  v4 = *(v98 + 64);
  __chkstk_darwin(v94);
  v97 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v95 = *(v6 - 8);
  v96 = v6;
  v7 = *(v95 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v91 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v91 - v15;
  __chkstk_darwin(v14);
  v18 = &v91 - v17;
  v19 = *(a1 + 16);
  [v19 lock];
  swift_beginAccess();
  v21 = *(a1 + 72);
  v108[0] = *(a1 + 56);
  v20 = v108[0];
  v108[1] = v21;
  v23 = *(a1 + 104);
  v109 = *(a1 + 88);
  v22 = v109;
  v110 = v23;
  *(a1 + 112) = a2;
  v111[0] = v20;
  v111[1] = v21;
  v24 = *(a1 + 104);
  v111[2] = v22;
  v111[3] = v24;
  v102 = v22;
  v103 = v23;
  v100 = v20;
  v101 = v21;
  v25 = *(a1 + 56);
  v26 = *(a1 + 72);
  v27 = *(a1 + 104);
  v106 = *(a1 + 88);
  v107 = v27;
  v104 = v25;
  v105 = v26;
  sub_10001B118(v108, v113);
  sub_10001B118(v111, v113);
  [v19 unlock];
  v112[0] = v100;
  v112[1] = v101;
  v112[2] = v102;
  v112[3] = v103;
  v113[0] = v104;
  v113[1] = v105;
  v114 = v106;
  v115 = v107;
  v28 = v106;
  v29 = ModeEnablementStrategy.rawValue.getter();
  p_name = (&stru_100051FF8 + 8);
  v31 = (&stru_100051FF8 + 8);
  if (v29 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *&v100 = v91;
      *v34 = 136446210;
      v99 = v28;
      v35 = String.init<A>(describing:)();
      v92 = v13;
      v37 = v16;
      v38 = v10;
      v39 = sub_100034C38(v35, v36, &v100);
      v13 = v92;

      *(v34 + 4) = v39;
      v10 = v38;
      v16 = v37;
      _os_log_impl(&_mh_execute_header, v32, v33, "Updating game mode enablement strategy to %{public}s", v34, 0xCu);
      sub_100003964(v91);
      p_name = &stru_100051FF8.name;
    }

    (*(v95 + 8))(v18, v96);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    v31 = &stru_100051FF8.name;
    if (qword_100053460 != -1)
    {
      swift_once();
    }

    *(&v101 + 1) = &type metadata for ModeEnablementStrategy;
    *&v100 = v28;
    v40 = qword_1000565E0;
    v41 = v97;
    Notification.init(name:object:userInfo:)();
    v42 = [objc_opt_self() p_name[186]];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v42 postNotification:isa];

    (*(v98 + 8))(v41, v94);
  }

  v44 = *(&v114 + 1);
  v45 = ModeEnablementStrategy.rawValue.getter();
  v46 = ModeEnablementStrategy.rawValue.getter();
  v93 = v10;
  if (v45 != v46)
  {
    static Logger.policyCoordinator.getter();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v100 = v50;
      *v49 = 136446210;
      v99 = v44;
      v51 = String.init<A>(describing:)();
      v92 = v16;
      v53 = v13;
      v54 = sub_100034C38(v51, v52, &v100);

      *(v49 + 4) = v54;
      v13 = v53;
      _os_log_impl(&_mh_execute_header, v47, v48, "Updating sustained execution mode enablement strategy to %{public}s", v49, 0xCu);
      sub_100003964(v50);
      p_name = (&stru_100051FF8 + 8);

      (*(v95 + 8))(v92, v96);
    }

    else
    {

      (*(v95 + 8))(v16, v96);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    *(&v101 + 1) = &type metadata for ModeEnablementStrategy;
    *&v100 = v44;
    v55 = qword_1000565F0;
    v56 = v97;
    Notification.init(name:object:userInfo:)();
    v57 = [objc_opt_self() p_name[186]];
    v58 = Notification._bridgeToObjectiveC()().super.isa;
    [v57 v31[223]];

    (*(v98 + 8))(v56, v94);
  }

  v59 = v115;
  v60 = ModeEnablementStrategy.rawValue.getter();
  if (v60 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *&v100 = v64;
      *v63 = 136446210;
      v99 = v59;
      v65 = String.init<A>(describing:)();
      v67 = sub_100034C38(v65, v66, &v100);
      v92 = v13;
      v68 = p_name;
      v69 = v67;

      *(v63 + 4) = v69;
      p_name = v68;
      _os_log_impl(&_mh_execute_header, v61, v62, "Updating dynamic splitter enablement strategy to %{public}s", v63, 0xCu);
      sub_100003964(v64);

      (*(v95 + 8))(v92, v96);
    }

    else
    {

      (*(v95 + 8))(v13, v96);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    *(&v101 + 1) = &type metadata for ModeEnablementStrategy;
    *&v100 = v59;
    v70 = qword_1000565F8;
    v71 = v97;
    Notification.init(name:object:userInfo:)();
    v72 = [objc_opt_self() p_name[186]];
    v73 = Notification._bridgeToObjectiveC()().super.isa;
    [v72 v31[223]];

    (*(v98 + 8))(v71, v94);
  }

  v74 = *(&v115 + 1);
  v75 = ModelManagerPolicyStrategy.rawValue.getter();
  if (v75 == ModelManagerPolicyStrategy.rawValue.getter())
  {
    sub_10001B150(v113);
    return sub_10001B150(v112);
  }

  else
  {
    v77 = v93;
    static Logger.policyCoordinator.getter();
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *&v100 = v81;
      *v80 = 136446210;
      v99 = v74;
      v82 = String.init<A>(describing:)();
      v84 = p_name;
      v85 = v31;
      v86 = sub_100034C38(v82, v83, &v100);

      *(v80 + 4) = v86;
      v31 = v85;
      p_name = v84;
      _os_log_impl(&_mh_execute_header, v78, v79, "Updating game mode ModelManager policy strategy to %{public}s", v80, 0xCu);
      sub_100003964(v81);

      (*(v95 + 8))(v93, v96);
    }

    else
    {

      (*(v95 + 8))(v77, v96);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    *(&v101 + 1) = &type metadata for ModelManagerPolicyStrategy;
    *&v100 = v74;
    v87 = qword_1000565E8;
    v88 = v97;
    Notification.init(name:object:userInfo:)();
    v89 = [objc_opt_self() p_name[186]];
    v90 = Notification._bridgeToObjectiveC()().super.isa;
    [v89 v31[223]];

    sub_10001B150(v113);
    sub_10001B150(v112);
    return (*(v98 + 8))(v88, v94);
  }
}

id sub_10001118C(uint64_t a1)
{
  v83 = type metadata accessor for Notification();
  v87 = *(v83 - 8);
  v2 = *(v87 + 64);
  __chkstk_darwin(v83 - 8);
  v86 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v84 = *(v4 - 8);
  v85 = v4;
  v5 = *(v84 + 64);
  v6 = __chkstk_darwin(v4);
  v81 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v80 = &v79 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v79 - v11;
  __chkstk_darwin(v10);
  v14 = &v79 - v13;
  v15 = *(a1 + 16);
  [v15 lock];
  swift_beginAccess();
  v99 = *(a1 + 72);
  v98 = *(a1 + 56);
  v100 = *(a1 + 88);
  v101 = *(a1 + 104);
  v16 = v99;
  v102[0] = v98;
  v102[1] = v99;
  v102[2] = v100;
  v102[3] = v101;
  v92 = v100;
  v93 = v101;
  v90 = v98;
  v91 = v99;
  v96 = v100;
  v94 = v98;
  v95 = v99;
  v97 = v101;
  sub_10001B118(&v98, v104);
  v82 = v16;
  sub_10001B118(v102, v104);
  [v15 unlock];
  v103[0] = v90;
  v103[1] = v91;
  v103[2] = v92;
  v103[3] = v93;
  v104[0] = v94;
  v104[1] = v95;
  v105 = v96;
  v106 = v97;
  v17 = v96;
  v18 = ModeEnablementStrategy.rawValue.getter();
  v19 = &_s10GamePolicy01kaB15ToolEntitlementSSvg_ptr;
  p_name = (&stru_100051FF8 + 8);
  if (v18 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v89 = v24;
      *v23 = 136446210;
      v88 = v17;
      v25 = String.init<A>(describing:)();
      v27 = sub_100034C38(v25, v26, &v89);

      *(v23 + 4) = v27;
      v19 = &_s10GamePolicy01kaB15ToolEntitlementSSvg_ptr;
      _os_log_impl(&_mh_execute_header, v21, v22, "Updating game mode enablement strategy to %{public}s", v23, 0xCu);
      sub_100003964(v24);
    }

    (*(v84 + 8))(v14, v85);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    p_name = &stru_100051FF8.name;
    if (qword_100053460 != -1)
    {
      swift_once();
    }

    *&v91 = &type metadata for ModeEnablementStrategy;
    v89 = v17;
    v28 = qword_1000565E0;
    v29 = v86;
    Notification.init(name:object:userInfo:)();
    v30 = v19[465];
    v31 = [objc_opt_self() defaultCenter];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v31 postNotification:isa];

    (*(v87 + 8))(v29, v83);
  }

  v33 = *(&v105 + 1);
  v34 = ModeEnablementStrategy.rawValue.getter();
  if (v34 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v89 = v38;
      *v37 = 136446210;
      v88 = v33;
      v39 = String.init<A>(describing:)();
      v41 = sub_100034C38(v39, v40, &v89);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "Updating sustained execution mode enablement strategy to %{public}s", v37, 0xCu);
      sub_100003964(v38);
    }

    (*(v84 + 8))(v12, v85);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    *&v91 = &type metadata for ModeEnablementStrategy;
    v89 = v33;
    v42 = qword_1000565F0;
    v43 = v86;
    Notification.init(name:object:userInfo:)();
    v19 = &_s10GamePolicy01kaB15ToolEntitlementSSvg_ptr;
    v44 = [objc_opt_self() p_name[186]];
    v45 = Notification._bridgeToObjectiveC()().super.isa;
    [v44 postNotification:v45];

    (*(v87 + 8))(v43, v83);
  }

  v46 = v19;
  v47 = v106;
  v48 = ModeEnablementStrategy.rawValue.getter();
  if (v48 != ModeEnablementStrategy.rawValue.getter())
  {
    v49 = v80;
    static Logger.policyCoordinator.getter();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = p_name;
      v54 = swift_slowAlloc();
      v89 = v54;
      *v52 = 136446210;
      v88 = v47;
      v55 = String.init<A>(describing:)();
      v57 = sub_100034C38(v55, v56, &v89);

      *(v52 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v50, v51, "Updating dynamic splitter enablement strategy to %{public}s", v52, 0xCu);
      sub_100003964(v54);
      p_name = v53;

      (*(v84 + 8))(v80, v85);
    }

    else
    {

      (*(v84 + 8))(v49, v85);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    *&v91 = &type metadata for ModeEnablementStrategy;
    v89 = v47;
    v58 = qword_1000565F8;
    v59 = v86;
    Notification.init(name:object:userInfo:)();
    v60 = v46[465];
    v61 = [objc_opt_self() p_name[186]];
    v62 = Notification._bridgeToObjectiveC()().super.isa;
    [v61 postNotification:v62];

    (*(v87 + 8))(v59, v83);
  }

  v63 = *(&v106 + 1);
  v64 = ModelManagerPolicyStrategy.rawValue.getter();
  v65 = ModelManagerPolicyStrategy.rawValue.getter();
  v66 = v81;
  if (v64 == v65)
  {
    sub_10001B150(v104);
    sub_10001B150(v103);
  }

  else
  {
    static Logger.policyCoordinator.getter();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v89 = v70;
      *v69 = 136446210;
      v88 = v63;
      v71 = String.init<A>(describing:)();
      v73 = sub_100034C38(v71, v72, &v89);

      *(v69 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v67, v68, "Updating game mode ModelManager policy strategy to %{public}s", v69, 0xCu);
      sub_100003964(v70);
      p_name = &stru_100051FF8.name;
    }

    (*(v84 + 8))(v66, v85);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    *&v91 = &type metadata for ModelManagerPolicyStrategy;
    v89 = v63;
    v74 = qword_1000565E8;
    v75 = v86;
    Notification.init(name:object:userInfo:)();
    v76 = [objc_opt_self() p_name[186]];
    v77 = Notification._bridgeToObjectiveC()().super.isa;
    [v76 postNotification:v77];

    sub_10001B150(v104);
    sub_10001B150(v103);
    (*(v87 + 8))(v75, v83);
  }

  return v82;
}

id sub_100011C54(uint64_t a1)
{
  v83 = type metadata accessor for Notification();
  v87 = *(v83 - 8);
  v2 = *(v87 + 64);
  __chkstk_darwin(v83 - 8);
  v86 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v84 = *(v4 - 8);
  v85 = v4;
  v5 = *(v84 + 64);
  v6 = __chkstk_darwin(v4);
  v81 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v80 = &v79 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v79 - v11;
  __chkstk_darwin(v10);
  v14 = &v79 - v13;
  v15 = *(a1 + 16);
  [v15 lock];
  swift_beginAccess();
  v98 = *(a1 + 56);
  v99 = *(a1 + 72);
  v100 = *(a1 + 88);
  v101 = *(a1 + 104);
  v16 = *(&v98 + 1);
  v102[0] = v98;
  v102[1] = v99;
  v102[2] = v100;
  v102[3] = v101;
  v92 = v100;
  v93 = v101;
  v90 = v98;
  v91 = v99;
  v96 = v100;
  v94 = v98;
  v95 = v99;
  v97 = v101;
  sub_10001B118(&v98, v104);
  v82 = v16;
  sub_10001B118(v102, v104);
  [v15 unlock];
  v103[0] = v90;
  v103[1] = v91;
  v103[2] = v92;
  v103[3] = v93;
  v104[0] = v94;
  v104[1] = v95;
  v105 = v96;
  v106 = v97;
  v17 = v96;
  v18 = ModeEnablementStrategy.rawValue.getter();
  v19 = &_s10GamePolicy01kaB15ToolEntitlementSSvg_ptr;
  p_name = (&stru_100051FF8 + 8);
  if (v18 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v89 = v24;
      *v23 = 136446210;
      v88 = v17;
      v25 = String.init<A>(describing:)();
      v27 = sub_100034C38(v25, v26, &v89);

      *(v23 + 4) = v27;
      v19 = &_s10GamePolicy01kaB15ToolEntitlementSSvg_ptr;
      _os_log_impl(&_mh_execute_header, v21, v22, "Updating game mode enablement strategy to %{public}s", v23, 0xCu);
      sub_100003964(v24);
    }

    (*(v84 + 8))(v14, v85);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    p_name = &stru_100051FF8.name;
    if (qword_100053460 != -1)
    {
      swift_once();
    }

    *&v91 = &type metadata for ModeEnablementStrategy;
    v89 = v17;
    v28 = qword_1000565E0;
    v29 = v86;
    Notification.init(name:object:userInfo:)();
    v30 = v19[465];
    v31 = [objc_opt_self() defaultCenter];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v31 postNotification:isa];

    (*(v87 + 8))(v29, v83);
  }

  v33 = *(&v105 + 1);
  v34 = ModeEnablementStrategy.rawValue.getter();
  if (v34 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v89 = v38;
      *v37 = 136446210;
      v88 = v33;
      v39 = String.init<A>(describing:)();
      v41 = sub_100034C38(v39, v40, &v89);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "Updating sustained execution mode enablement strategy to %{public}s", v37, 0xCu);
      sub_100003964(v38);
    }

    (*(v84 + 8))(v12, v85);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    *&v91 = &type metadata for ModeEnablementStrategy;
    v89 = v33;
    v42 = qword_1000565F0;
    v43 = v86;
    Notification.init(name:object:userInfo:)();
    v19 = &_s10GamePolicy01kaB15ToolEntitlementSSvg_ptr;
    v44 = [objc_opt_self() p_name[186]];
    v45 = Notification._bridgeToObjectiveC()().super.isa;
    [v44 postNotification:v45];

    (*(v87 + 8))(v43, v83);
  }

  v46 = v19;
  v47 = v106;
  v48 = ModeEnablementStrategy.rawValue.getter();
  if (v48 != ModeEnablementStrategy.rawValue.getter())
  {
    v49 = v80;
    static Logger.policyCoordinator.getter();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = p_name;
      v54 = swift_slowAlloc();
      v89 = v54;
      *v52 = 136446210;
      v88 = v47;
      v55 = String.init<A>(describing:)();
      v57 = sub_100034C38(v55, v56, &v89);

      *(v52 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v50, v51, "Updating dynamic splitter enablement strategy to %{public}s", v52, 0xCu);
      sub_100003964(v54);
      p_name = v53;

      (*(v84 + 8))(v80, v85);
    }

    else
    {

      (*(v84 + 8))(v49, v85);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    *&v91 = &type metadata for ModeEnablementStrategy;
    v89 = v47;
    v58 = qword_1000565F8;
    v59 = v86;
    Notification.init(name:object:userInfo:)();
    v60 = v46[465];
    v61 = [objc_opt_self() p_name[186]];
    v62 = Notification._bridgeToObjectiveC()().super.isa;
    [v61 postNotification:v62];

    (*(v87 + 8))(v59, v83);
  }

  v63 = *(&v106 + 1);
  v64 = ModelManagerPolicyStrategy.rawValue.getter();
  v65 = ModelManagerPolicyStrategy.rawValue.getter();
  v66 = v81;
  if (v64 == v65)
  {
    sub_10001B150(v104);
    sub_10001B150(v103);
  }

  else
  {
    static Logger.policyCoordinator.getter();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v89 = v70;
      *v69 = 136446210;
      v88 = v63;
      v71 = String.init<A>(describing:)();
      v73 = sub_100034C38(v71, v72, &v89);

      *(v69 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v67, v68, "Updating game mode ModelManager policy strategy to %{public}s", v69, 0xCu);
      sub_100003964(v70);
      p_name = &stru_100051FF8.name;
    }

    (*(v84 + 8))(v66, v85);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    *&v91 = &type metadata for ModelManagerPolicyStrategy;
    v89 = v63;
    v74 = qword_1000565E8;
    v75 = v86;
    Notification.init(name:object:userInfo:)();
    v76 = [objc_opt_self() p_name[186]];
    v77 = Notification._bridgeToObjectiveC()().super.isa;
    [v76 postNotification:v77];

    sub_10001B150(v104);
    sub_10001B150(v103);
    (*(v87 + 8))(v75, v83);
  }

  return v82;
}

id sub_10001271C(uint64_t a1)
{
  v83 = type metadata accessor for Notification();
  v87 = *(v83 - 8);
  v2 = *(v87 + 64);
  __chkstk_darwin(v83 - 8);
  v86 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v84 = *(v4 - 8);
  v85 = v4;
  v5 = *(v84 + 64);
  v6 = __chkstk_darwin(v4);
  v81 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v80 = &v79 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v79 - v11;
  __chkstk_darwin(v10);
  v14 = &v79 - v13;
  v15 = *(a1 + 16);
  [v15 lock];
  swift_beginAccess();
  v99 = *(a1 + 72);
  v98 = *(a1 + 56);
  v100 = *(a1 + 88);
  v101 = *(a1 + 104);
  v16 = *(&v99 + 1);
  v102[0] = v98;
  v102[1] = v99;
  v102[2] = v100;
  v102[3] = v101;
  v92 = v100;
  v93 = v101;
  v90 = v98;
  v91 = v99;
  v96 = v100;
  v94 = v98;
  v95 = v99;
  v97 = v101;
  sub_10001B118(&v98, v104);
  v82 = v16;
  sub_10001B118(v102, v104);
  [v15 unlock];
  v103[0] = v90;
  v103[1] = v91;
  v103[2] = v92;
  v103[3] = v93;
  v104[0] = v94;
  v104[1] = v95;
  v105 = v96;
  v106 = v97;
  v17 = v96;
  v18 = ModeEnablementStrategy.rawValue.getter();
  v19 = &_s10GamePolicy01kaB15ToolEntitlementSSvg_ptr;
  p_name = (&stru_100051FF8 + 8);
  if (v18 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v89 = v24;
      *v23 = 136446210;
      v88 = v17;
      v25 = String.init<A>(describing:)();
      v27 = sub_100034C38(v25, v26, &v89);

      *(v23 + 4) = v27;
      v19 = &_s10GamePolicy01kaB15ToolEntitlementSSvg_ptr;
      _os_log_impl(&_mh_execute_header, v21, v22, "Updating game mode enablement strategy to %{public}s", v23, 0xCu);
      sub_100003964(v24);
    }

    (*(v84 + 8))(v14, v85);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    p_name = &stru_100051FF8.name;
    if (qword_100053460 != -1)
    {
      swift_once();
    }

    *&v91 = &type metadata for ModeEnablementStrategy;
    v89 = v17;
    v28 = qword_1000565E0;
    v29 = v86;
    Notification.init(name:object:userInfo:)();
    v30 = v19[465];
    v31 = [objc_opt_self() defaultCenter];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v31 postNotification:isa];

    (*(v87 + 8))(v29, v83);
  }

  v33 = *(&v105 + 1);
  v34 = ModeEnablementStrategy.rawValue.getter();
  if (v34 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v89 = v38;
      *v37 = 136446210;
      v88 = v33;
      v39 = String.init<A>(describing:)();
      v41 = sub_100034C38(v39, v40, &v89);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "Updating sustained execution mode enablement strategy to %{public}s", v37, 0xCu);
      sub_100003964(v38);
    }

    (*(v84 + 8))(v12, v85);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    *&v91 = &type metadata for ModeEnablementStrategy;
    v89 = v33;
    v42 = qword_1000565F0;
    v43 = v86;
    Notification.init(name:object:userInfo:)();
    v19 = &_s10GamePolicy01kaB15ToolEntitlementSSvg_ptr;
    v44 = [objc_opt_self() p_name[186]];
    v45 = Notification._bridgeToObjectiveC()().super.isa;
    [v44 postNotification:v45];

    (*(v87 + 8))(v43, v83);
  }

  v46 = v19;
  v47 = v106;
  v48 = ModeEnablementStrategy.rawValue.getter();
  if (v48 != ModeEnablementStrategy.rawValue.getter())
  {
    v49 = v80;
    static Logger.policyCoordinator.getter();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = p_name;
      v54 = swift_slowAlloc();
      v89 = v54;
      *v52 = 136446210;
      v88 = v47;
      v55 = String.init<A>(describing:)();
      v57 = sub_100034C38(v55, v56, &v89);

      *(v52 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v50, v51, "Updating dynamic splitter enablement strategy to %{public}s", v52, 0xCu);
      sub_100003964(v54);
      p_name = v53;

      (*(v84 + 8))(v80, v85);
    }

    else
    {

      (*(v84 + 8))(v49, v85);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    *&v91 = &type metadata for ModeEnablementStrategy;
    v89 = v47;
    v58 = qword_1000565F8;
    v59 = v86;
    Notification.init(name:object:userInfo:)();
    v60 = v46[465];
    v61 = [objc_opt_self() p_name[186]];
    v62 = Notification._bridgeToObjectiveC()().super.isa;
    [v61 postNotification:v62];

    (*(v87 + 8))(v59, v83);
  }

  v63 = *(&v106 + 1);
  v64 = ModelManagerPolicyStrategy.rawValue.getter();
  v65 = ModelManagerPolicyStrategy.rawValue.getter();
  v66 = v81;
  if (v64 == v65)
  {
    sub_10001B150(v104);
    sub_10001B150(v103);
  }

  else
  {
    static Logger.policyCoordinator.getter();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v89 = v70;
      *v69 = 136446210;
      v88 = v63;
      v71 = String.init<A>(describing:)();
      v73 = sub_100034C38(v71, v72, &v89);

      *(v69 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v67, v68, "Updating game mode ModelManager policy strategy to %{public}s", v69, 0xCu);
      sub_100003964(v70);
      p_name = &stru_100051FF8.name;
    }

    (*(v84 + 8))(v66, v85);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    *&v91 = &type metadata for ModelManagerPolicyStrategy;
    v89 = v63;
    v74 = qword_1000565E8;
    v75 = v86;
    Notification.init(name:object:userInfo:)();
    v76 = [objc_opt_self() p_name[186]];
    v77 = Notification._bridgeToObjectiveC()().super.isa;
    [v76 postNotification:v77];

    sub_10001B150(v104);
    sub_10001B150(v103);
    (*(v87 + 8))(v75, v83);
  }

  return v82;
}

uint64_t sub_1000131E8(uint64_t a1)
{
  v82 = type metadata accessor for Notification();
  v86 = *(v82 - 8);
  v2 = *(v86 + 64);
  __chkstk_darwin(v82 - 8);
  v85 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  v6 = __chkstk_darwin(v4);
  v80 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v79 = &v78 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v78 - v11;
  __chkstk_darwin(v10);
  v14 = &v78 - v13;
  v15 = *(a1 + 16);
  [v15 lock];
  swift_beginAccess();
  v99 = *(a1 + 88);
  v97 = *(a1 + 56);
  v98 = *(a1 + 72);
  v100 = *(a1 + 104);
  v81 = v99;
  v101[0] = v97;
  v101[1] = v98;
  v101[2] = v99;
  v101[3] = v100;
  v91 = v99;
  v92 = v100;
  v89 = v97;
  v90 = v98;
  v96 = v100;
  v95 = v99;
  v93 = v97;
  v94 = v98;
  sub_10001B118(&v97, v103);
  sub_10001B118(v101, v103);
  [v15 unlock];
  v102[0] = v89;
  v102[1] = v90;
  v102[2] = v91;
  v102[3] = v92;
  v103[0] = v93;
  v103[1] = v94;
  v104 = v95;
  v105 = v96;
  v16 = v95;
  v17 = ModeEnablementStrategy.rawValue.getter();
  v18 = &_s10GamePolicy01kaB15ToolEntitlementSSvg_ptr;
  p_name = (&stru_100051FF8 + 8);
  if (v17 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v88 = v23;
      *v22 = 136446210;
      v87 = v16;
      v24 = String.init<A>(describing:)();
      v26 = sub_100034C38(v24, v25, &v88);

      *(v22 + 4) = v26;
      v18 = &_s10GamePolicy01kaB15ToolEntitlementSSvg_ptr;
      _os_log_impl(&_mh_execute_header, v20, v21, "Updating game mode enablement strategy to %{public}s", v22, 0xCu);
      sub_100003964(v23);
    }

    (*(v83 + 8))(v14, v84);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    p_name = &stru_100051FF8.name;
    if (qword_100053460 != -1)
    {
      swift_once();
    }

    *&v90 = &type metadata for ModeEnablementStrategy;
    v88 = v16;
    v27 = qword_1000565E0;
    v28 = v85;
    Notification.init(name:object:userInfo:)();
    v29 = v18[465];
    v30 = [objc_opt_self() defaultCenter];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v30 postNotification:isa];

    (*(v86 + 8))(v28, v82);
  }

  v32 = *(&v104 + 1);
  v33 = ModeEnablementStrategy.rawValue.getter();
  if (v33 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v88 = v37;
      *v36 = 136446210;
      v87 = v32;
      v38 = String.init<A>(describing:)();
      v40 = sub_100034C38(v38, v39, &v88);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "Updating sustained execution mode enablement strategy to %{public}s", v36, 0xCu);
      sub_100003964(v37);
    }

    (*(v83 + 8))(v12, v84);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    *&v90 = &type metadata for ModeEnablementStrategy;
    v88 = v32;
    v41 = qword_1000565F0;
    v42 = v85;
    Notification.init(name:object:userInfo:)();
    v18 = &_s10GamePolicy01kaB15ToolEntitlementSSvg_ptr;
    v43 = [objc_opt_self() p_name[186]];
    v44 = Notification._bridgeToObjectiveC()().super.isa;
    [v43 postNotification:v44];

    (*(v86 + 8))(v42, v82);
  }

  v45 = v18;
  v46 = v105;
  v47 = ModeEnablementStrategy.rawValue.getter();
  if (v47 != ModeEnablementStrategy.rawValue.getter())
  {
    v48 = v79;
    static Logger.policyCoordinator.getter();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = p_name;
      v53 = swift_slowAlloc();
      v88 = v53;
      *v51 = 136446210;
      v87 = v46;
      v54 = String.init<A>(describing:)();
      v56 = sub_100034C38(v54, v55, &v88);

      *(v51 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v49, v50, "Updating dynamic splitter enablement strategy to %{public}s", v51, 0xCu);
      sub_100003964(v53);
      p_name = v52;

      (*(v83 + 8))(v79, v84);
    }

    else
    {

      (*(v83 + 8))(v48, v84);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    *&v90 = &type metadata for ModeEnablementStrategy;
    v88 = v46;
    v57 = qword_1000565F8;
    v58 = v85;
    Notification.init(name:object:userInfo:)();
    v59 = v45[465];
    v60 = [objc_opt_self() p_name[186]];
    v61 = Notification._bridgeToObjectiveC()().super.isa;
    [v60 postNotification:v61];

    (*(v86 + 8))(v58, v82);
  }

  v62 = *(&v105 + 1);
  v63 = ModelManagerPolicyStrategy.rawValue.getter();
  v64 = ModelManagerPolicyStrategy.rawValue.getter();
  v65 = v80;
  if (v63 == v64)
  {
    sub_10001B150(v103);
    sub_10001B150(v102);
  }

  else
  {
    static Logger.policyCoordinator.getter();
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v88 = v69;
      *v68 = 136446210;
      v87 = v62;
      v70 = String.init<A>(describing:)();
      v72 = sub_100034C38(v70, v71, &v88);

      *(v68 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v66, v67, "Updating game mode ModelManager policy strategy to %{public}s", v68, 0xCu);
      sub_100003964(v69);
      p_name = &stru_100051FF8.name;
    }

    (*(v83 + 8))(v65, v84);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    *&v90 = &type metadata for ModelManagerPolicyStrategy;
    v88 = v62;
    v73 = qword_1000565E8;
    v74 = v85;
    Notification.init(name:object:userInfo:)();
    v75 = [objc_opt_self() p_name[186]];
    v76 = Notification._bridgeToObjectiveC()().super.isa;
    [v75 postNotification:v76];

    sub_10001B150(v103);
    sub_10001B150(v102);
    (*(v86 + 8))(v74, v82);
  }

  return v81;
}

uint64_t sub_100013CB0(uint64_t a1)
{
  v82 = type metadata accessor for Notification();
  v86 = *(v82 - 8);
  v2 = *(v86 + 64);
  __chkstk_darwin(v82 - 8);
  v85 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  v6 = __chkstk_darwin(v4);
  v80 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v79 = &v78 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v78 - v11;
  __chkstk_darwin(v10);
  v14 = &v78 - v13;
  v15 = *(a1 + 16);
  [v15 lock];
  swift_beginAccess();
  v99 = *(a1 + 88);
  v97 = *(a1 + 56);
  v98 = *(a1 + 72);
  v100 = *(a1 + 104);
  v81 = *(&v99 + 1);
  v101[0] = v97;
  v101[1] = v98;
  v101[2] = v99;
  v101[3] = v100;
  v91 = v99;
  v92 = v100;
  v89 = v97;
  v90 = v98;
  v96 = v100;
  v95 = v99;
  v93 = v97;
  v94 = v98;
  sub_10001B118(&v97, v103);
  sub_10001B118(v101, v103);
  [v15 unlock];
  v102[0] = v89;
  v102[1] = v90;
  v102[2] = v91;
  v102[3] = v92;
  v103[0] = v93;
  v103[1] = v94;
  v104 = v95;
  v105 = v96;
  v16 = v95;
  v17 = ModeEnablementStrategy.rawValue.getter();
  v18 = &_s10GamePolicy01kaB15ToolEntitlementSSvg_ptr;
  p_name = (&stru_100051FF8 + 8);
  if (v17 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v88 = v23;
      *v22 = 136446210;
      v87 = v16;
      v24 = String.init<A>(describing:)();
      v26 = sub_100034C38(v24, v25, &v88);

      *(v22 + 4) = v26;
      v18 = &_s10GamePolicy01kaB15ToolEntitlementSSvg_ptr;
      _os_log_impl(&_mh_execute_header, v20, v21, "Updating game mode enablement strategy to %{public}s", v22, 0xCu);
      sub_100003964(v23);
    }

    (*(v83 + 8))(v14, v84);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    p_name = &stru_100051FF8.name;
    if (qword_100053460 != -1)
    {
      swift_once();
    }

    *&v90 = &type metadata for ModeEnablementStrategy;
    v88 = v16;
    v27 = qword_1000565E0;
    v28 = v85;
    Notification.init(name:object:userInfo:)();
    v29 = v18[465];
    v30 = [objc_opt_self() defaultCenter];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v30 postNotification:isa];

    (*(v86 + 8))(v28, v82);
  }

  v32 = *(&v104 + 1);
  v33 = ModeEnablementStrategy.rawValue.getter();
  if (v33 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v88 = v37;
      *v36 = 136446210;
      v87 = v32;
      v38 = String.init<A>(describing:)();
      v40 = sub_100034C38(v38, v39, &v88);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "Updating sustained execution mode enablement strategy to %{public}s", v36, 0xCu);
      sub_100003964(v37);
    }

    (*(v83 + 8))(v12, v84);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    *&v90 = &type metadata for ModeEnablementStrategy;
    v88 = v32;
    v41 = qword_1000565F0;
    v42 = v85;
    Notification.init(name:object:userInfo:)();
    v18 = &_s10GamePolicy01kaB15ToolEntitlementSSvg_ptr;
    v43 = [objc_opt_self() p_name[186]];
    v44 = Notification._bridgeToObjectiveC()().super.isa;
    [v43 postNotification:v44];

    (*(v86 + 8))(v42, v82);
  }

  v45 = v18;
  v46 = v105;
  v47 = ModeEnablementStrategy.rawValue.getter();
  if (v47 != ModeEnablementStrategy.rawValue.getter())
  {
    v48 = v79;
    static Logger.policyCoordinator.getter();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = p_name;
      v53 = swift_slowAlloc();
      v88 = v53;
      *v51 = 136446210;
      v87 = v46;
      v54 = String.init<A>(describing:)();
      v56 = sub_100034C38(v54, v55, &v88);

      *(v51 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v49, v50, "Updating dynamic splitter enablement strategy to %{public}s", v51, 0xCu);
      sub_100003964(v53);
      p_name = v52;

      (*(v83 + 8))(v79, v84);
    }

    else
    {

      (*(v83 + 8))(v48, v84);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    *&v90 = &type metadata for ModeEnablementStrategy;
    v88 = v46;
    v57 = qword_1000565F8;
    v58 = v85;
    Notification.init(name:object:userInfo:)();
    v59 = v45[465];
    v60 = [objc_opt_self() p_name[186]];
    v61 = Notification._bridgeToObjectiveC()().super.isa;
    [v60 postNotification:v61];

    (*(v86 + 8))(v58, v82);
  }

  v62 = *(&v105 + 1);
  v63 = ModelManagerPolicyStrategy.rawValue.getter();
  v64 = ModelManagerPolicyStrategy.rawValue.getter();
  v65 = v80;
  if (v63 == v64)
  {
    sub_10001B150(v103);
    sub_10001B150(v102);
  }

  else
  {
    static Logger.policyCoordinator.getter();
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v88 = v69;
      *v68 = 136446210;
      v87 = v62;
      v70 = String.init<A>(describing:)();
      v72 = sub_100034C38(v70, v71, &v88);

      *(v68 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v66, v67, "Updating game mode ModelManager policy strategy to %{public}s", v68, 0xCu);
      sub_100003964(v69);
      p_name = &stru_100051FF8.name;
    }

    (*(v83 + 8))(v65, v84);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    *&v90 = &type metadata for ModelManagerPolicyStrategy;
    v88 = v62;
    v73 = qword_1000565E8;
    v74 = v85;
    Notification.init(name:object:userInfo:)();
    v75 = [objc_opt_self() p_name[186]];
    v76 = Notification._bridgeToObjectiveC()().super.isa;
    [v75 postNotification:v76];

    sub_10001B150(v103);
    sub_10001B150(v102);
    (*(v86 + 8))(v74, v82);
  }

  return v81;
}

uint64_t sub_100014778(uint64_t a1)
{
  v82 = type metadata accessor for Notification();
  v86 = *(v82 - 8);
  v2 = *(v86 + 64);
  __chkstk_darwin(v82 - 8);
  v85 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  v6 = __chkstk_darwin(v4);
  v80 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v79 = &v78 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v78 - v11;
  __chkstk_darwin(v10);
  v14 = &v78 - v13;
  v15 = *(a1 + 16);
  [v15 lock];
  swift_beginAccess();
  v100 = *(a1 + 104);
  v97 = *(a1 + 56);
  v98 = *(a1 + 72);
  v99 = *(a1 + 88);
  v81 = v100;
  v101[0] = v97;
  v101[1] = v98;
  v101[2] = v99;
  v101[3] = v100;
  v91 = v99;
  v92 = v100;
  v89 = v97;
  v90 = v98;
  v93 = v97;
  v94 = v98;
  v96 = v100;
  v95 = v99;
  sub_10001B118(&v97, v103);
  sub_10001B118(v101, v103);
  [v15 unlock];
  v102[0] = v89;
  v102[1] = v90;
  v102[2] = v91;
  v102[3] = v92;
  v103[0] = v93;
  v103[1] = v94;
  v104 = v95;
  v105 = v96;
  v16 = v95;
  v17 = ModeEnablementStrategy.rawValue.getter();
  v18 = &_s10GamePolicy01kaB15ToolEntitlementSSvg_ptr;
  p_name = (&stru_100051FF8 + 8);
  if (v17 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v88 = v23;
      *v22 = 136446210;
      v87 = v16;
      v24 = String.init<A>(describing:)();
      v26 = sub_100034C38(v24, v25, &v88);

      *(v22 + 4) = v26;
      v18 = &_s10GamePolicy01kaB15ToolEntitlementSSvg_ptr;
      _os_log_impl(&_mh_execute_header, v20, v21, "Updating game mode enablement strategy to %{public}s", v22, 0xCu);
      sub_100003964(v23);
    }

    (*(v83 + 8))(v14, v84);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    p_name = &stru_100051FF8.name;
    if (qword_100053460 != -1)
    {
      swift_once();
    }

    *&v90 = &type metadata for ModeEnablementStrategy;
    v88 = v16;
    v27 = qword_1000565E0;
    v28 = v85;
    Notification.init(name:object:userInfo:)();
    v29 = v18[465];
    v30 = [objc_opt_self() defaultCenter];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v30 postNotification:isa];

    (*(v86 + 8))(v28, v82);
  }

  v32 = *(&v104 + 1);
  v33 = ModeEnablementStrategy.rawValue.getter();
  if (v33 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v88 = v37;
      *v36 = 136446210;
      v87 = v32;
      v38 = String.init<A>(describing:)();
      v40 = sub_100034C38(v38, v39, &v88);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "Updating sustained execution mode enablement strategy to %{public}s", v36, 0xCu);
      sub_100003964(v37);
    }

    (*(v83 + 8))(v12, v84);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    *&v90 = &type metadata for ModeEnablementStrategy;
    v88 = v32;
    v41 = qword_1000565F0;
    v42 = v85;
    Notification.init(name:object:userInfo:)();
    v18 = &_s10GamePolicy01kaB15ToolEntitlementSSvg_ptr;
    v43 = [objc_opt_self() p_name[186]];
    v44 = Notification._bridgeToObjectiveC()().super.isa;
    [v43 postNotification:v44];

    (*(v86 + 8))(v42, v82);
  }

  v45 = v18;
  v46 = v105;
  v47 = ModeEnablementStrategy.rawValue.getter();
  if (v47 != ModeEnablementStrategy.rawValue.getter())
  {
    v48 = v79;
    static Logger.policyCoordinator.getter();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = p_name;
      v53 = swift_slowAlloc();
      v88 = v53;
      *v51 = 136446210;
      v87 = v46;
      v54 = String.init<A>(describing:)();
      v56 = sub_100034C38(v54, v55, &v88);

      *(v51 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v49, v50, "Updating dynamic splitter enablement strategy to %{public}s", v51, 0xCu);
      sub_100003964(v53);
      p_name = v52;

      (*(v83 + 8))(v79, v84);
    }

    else
    {

      (*(v83 + 8))(v48, v84);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    *&v90 = &type metadata for ModeEnablementStrategy;
    v88 = v46;
    v57 = qword_1000565F8;
    v58 = v85;
    Notification.init(name:object:userInfo:)();
    v59 = v45[465];
    v60 = [objc_opt_self() p_name[186]];
    v61 = Notification._bridgeToObjectiveC()().super.isa;
    [v60 postNotification:v61];

    (*(v86 + 8))(v58, v82);
  }

  v62 = *(&v105 + 1);
  v63 = ModelManagerPolicyStrategy.rawValue.getter();
  v64 = ModelManagerPolicyStrategy.rawValue.getter();
  v65 = v80;
  if (v63 == v64)
  {
    sub_10001B150(v103);
    sub_10001B150(v102);
  }

  else
  {
    static Logger.policyCoordinator.getter();
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v88 = v69;
      *v68 = 136446210;
      v87 = v62;
      v70 = String.init<A>(describing:)();
      v72 = sub_100034C38(v70, v71, &v88);

      *(v68 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v66, v67, "Updating game mode ModelManager policy strategy to %{public}s", v68, 0xCu);
      sub_100003964(v69);
      p_name = &stru_100051FF8.name;
    }

    (*(v83 + 8))(v65, v84);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    *&v90 = &type metadata for ModelManagerPolicyStrategy;
    v88 = v62;
    v73 = qword_1000565E8;
    v74 = v85;
    Notification.init(name:object:userInfo:)();
    v75 = [objc_opt_self() p_name[186]];
    v76 = Notification._bridgeToObjectiveC()().super.isa;
    [v75 postNotification:v76];

    sub_10001B150(v103);
    sub_10001B150(v102);
    (*(v86 + 8))(v74, v82);
  }

  return v81;
}

uint64_t sub_100015240(uint64_t a1)
{
  v82 = type metadata accessor for Notification();
  v86 = *(v82 - 8);
  v2 = *(v86 + 64);
  __chkstk_darwin(v82 - 8);
  v85 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  v6 = __chkstk_darwin(v4);
  v80 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v79 = &v78 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v78 - v11;
  __chkstk_darwin(v10);
  v14 = &v78 - v13;
  v15 = *(a1 + 16);
  [v15 lock];
  swift_beginAccess();
  v100 = *(a1 + 104);
  v97 = *(a1 + 56);
  v98 = *(a1 + 72);
  v99 = *(a1 + 88);
  v81 = *(&v100 + 1);
  v101[0] = v97;
  v101[1] = v98;
  v101[2] = v99;
  v101[3] = v100;
  v91 = v99;
  v92 = v100;
  v89 = v97;
  v90 = v98;
  v93 = v97;
  v94 = v98;
  v96 = v100;
  v95 = v99;
  sub_10001B118(&v97, v103);
  sub_10001B118(v101, v103);
  [v15 unlock];
  v102[0] = v89;
  v102[1] = v90;
  v102[2] = v91;
  v102[3] = v92;
  v103[0] = v93;
  v103[1] = v94;
  v104 = v95;
  v105 = v96;
  v16 = v95;
  v17 = ModeEnablementStrategy.rawValue.getter();
  v18 = &_s10GamePolicy01kaB15ToolEntitlementSSvg_ptr;
  p_name = (&stru_100051FF8 + 8);
  if (v17 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v88 = v23;
      *v22 = 136446210;
      v87 = v16;
      v24 = String.init<A>(describing:)();
      v26 = sub_100034C38(v24, v25, &v88);

      *(v22 + 4) = v26;
      v18 = &_s10GamePolicy01kaB15ToolEntitlementSSvg_ptr;
      _os_log_impl(&_mh_execute_header, v20, v21, "Updating game mode enablement strategy to %{public}s", v22, 0xCu);
      sub_100003964(v23);
    }

    (*(v83 + 8))(v14, v84);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    p_name = &stru_100051FF8.name;
    if (qword_100053460 != -1)
    {
      swift_once();
    }

    *&v90 = &type metadata for ModeEnablementStrategy;
    v88 = v16;
    v27 = qword_1000565E0;
    v28 = v85;
    Notification.init(name:object:userInfo:)();
    v29 = v18[465];
    v30 = [objc_opt_self() defaultCenter];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v30 postNotification:isa];

    (*(v86 + 8))(v28, v82);
  }

  v32 = *(&v104 + 1);
  v33 = ModeEnablementStrategy.rawValue.getter();
  if (v33 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v88 = v37;
      *v36 = 136446210;
      v87 = v32;
      v38 = String.init<A>(describing:)();
      v40 = sub_100034C38(v38, v39, &v88);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "Updating sustained execution mode enablement strategy to %{public}s", v36, 0xCu);
      sub_100003964(v37);
    }

    (*(v83 + 8))(v12, v84);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    *&v90 = &type metadata for ModeEnablementStrategy;
    v88 = v32;
    v41 = qword_1000565F0;
    v42 = v85;
    Notification.init(name:object:userInfo:)();
    v18 = &_s10GamePolicy01kaB15ToolEntitlementSSvg_ptr;
    v43 = [objc_opt_self() p_name[186]];
    v44 = Notification._bridgeToObjectiveC()().super.isa;
    [v43 postNotification:v44];

    (*(v86 + 8))(v42, v82);
  }

  v45 = v18;
  v46 = v105;
  v47 = ModeEnablementStrategy.rawValue.getter();
  if (v47 != ModeEnablementStrategy.rawValue.getter())
  {
    v48 = v79;
    static Logger.policyCoordinator.getter();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = p_name;
      v53 = swift_slowAlloc();
      v88 = v53;
      *v51 = 136446210;
      v87 = v46;
      v54 = String.init<A>(describing:)();
      v56 = sub_100034C38(v54, v55, &v88);

      *(v51 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v49, v50, "Updating dynamic splitter enablement strategy to %{public}s", v51, 0xCu);
      sub_100003964(v53);
      p_name = v52;

      (*(v83 + 8))(v79, v84);
    }

    else
    {

      (*(v83 + 8))(v48, v84);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    *&v90 = &type metadata for ModeEnablementStrategy;
    v88 = v46;
    v57 = qword_1000565F8;
    v58 = v85;
    Notification.init(name:object:userInfo:)();
    v59 = v45[465];
    v60 = [objc_opt_self() p_name[186]];
    v61 = Notification._bridgeToObjectiveC()().super.isa;
    [v60 postNotification:v61];

    (*(v86 + 8))(v58, v82);
  }

  v62 = *(&v105 + 1);
  v63 = ModelManagerPolicyStrategy.rawValue.getter();
  v64 = ModelManagerPolicyStrategy.rawValue.getter();
  v65 = v80;
  if (v63 == v64)
  {
    sub_10001B150(v103);
    sub_10001B150(v102);
  }

  else
  {
    static Logger.policyCoordinator.getter();
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v88 = v69;
      *v68 = 136446210;
      v87 = v62;
      v70 = String.init<A>(describing:)();
      v72 = sub_100034C38(v70, v71, &v88);

      *(v68 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v66, v67, "Updating game mode ModelManager policy strategy to %{public}s", v68, 0xCu);
      sub_100003964(v69);
      p_name = &stru_100051FF8.name;
    }

    (*(v83 + 8))(v65, v84);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    *&v90 = &type metadata for ModelManagerPolicyStrategy;
    v88 = v62;
    v73 = qword_1000565E8;
    v74 = v85;
    Notification.init(name:object:userInfo:)();
    v75 = [objc_opt_self() p_name[186]];
    v76 = Notification._bridgeToObjectiveC()().super.isa;
    [v75 postNotification:v76];

    sub_10001B150(v103);
    sub_10001B150(v102);
    (*(v86 + 8))(v74, v82);
  }

  return v81;
}

void sub_100015D04(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, _BYTE *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, _BYTE *a10, _BYTE *a11, char *a12)
{
  v197 = a4;
  v198 = a8;
  v195 = a5;
  v196 = a7;
  v184 = a3;
  v185 = a6;
  v182 = a9;
  v187 = a12;
  v170 = a11;
  v186 = a10;
  v14 = type metadata accessor for Notification();
  v193 = *(v14 - 8);
  v194 = v14;
  v15 = *(v193 + 64);
  __chkstk_darwin(v14);
  v192 = &v170 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Logger();
  v189 = *(v17 - 8);
  v190 = v17;
  v18 = *(v189 + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v170 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v170 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v170 - v26;
  __chkstk_darwin(v25);
  v173 = &v170 - v28;
  v29 = sub_100003870(&qword_100054428, &qword_10003E778);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v170 - v31;
  v179 = sub_100003870(&qword_100054448, &unk_10003E790);
  v33 = *(*(v179 - 8) + 64);
  __chkstk_darwin(v179);
  v180 = &v170 - v34;
  v174 = sub_100003870(&qword_1000552B0, &qword_10003F110);
  v35 = *(*(v174 - 8) + 64);
  __chkstk_darwin(v174);
  v191 = &v170 - v36;
  v178 = *(a1 + 16);
  [v178 lock];
  swift_beginAccess();
  v37 = *(a1 + 88);
  v38 = *(a1 + 72);
  v207 = *(a1 + 56);
  v208 = v38;
  v39 = *(a1 + 104);
  v209 = v37;
  v210 = v39;
  v188 = v37;
  v176 = a1;
  swift_beginAccess();
  v40 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameProcesses;
  swift_beginAccess();
  v183 = a2;
  v41 = *&a2[v40];
  v171 = v27;
  v172 = v21;
  v181 = v24;
  v175 = v32;
  if ((v41 & 0xC000000000000001) != 0)
  {
    v42 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
    sub_10001B118(&v207, v204);
    v43 = 0;
    v44 = 0;
    v45 = 0;
  }

  else
  {
    v46 = -1 << *(v41 + 32);
    v43 = v41 + 64;
    v44 = ~v46;
    v47 = -v46;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    else
    {
      v48 = -1;
    }

    v45 = v48 & *(v41 + 64);
    sub_10001B118(&v207, v204);
    v42 = v41;
  }

  v49 = 0;
  v177 = v44;
  v50 = (v44 + 64) >> 6;
  while ((v42 & 0x8000000000000000) != 0)
  {
    v58 = __CocoaDictionary.Iterator.next()();
    if (!v58)
    {
      goto LABEL_46;
    }

    v60 = v59;
    *&v202[0] = v58;
    sub_100009748(0, &qword_100054450, RBSProcessIdentity_ptr);
    swift_dynamicCast();
    v57 = *&v204[0];
    *&v202[0] = v60;
    type metadata accessor for EmbeddedGameProcess();
    swift_dynamicCast();
    v53 = v49;
    v54 = v45;
    if (!v57)
    {
      goto LABEL_46;
    }

LABEL_19:

    if ((dispatch thunk of EmbeddedGameProcess.isRunningForeground.getter() & 1) == 0)
    {
      dispatch thunk of EmbeddedGameProcess.triggeringGameMode.setter();
      dispatch thunk of EmbeddedGameProcess.triggeringModelManagerAssertion.setter();

      goto LABEL_9;
    }

    if (dispatch thunk of EmbeddedGameProcess.isGame.getter())
    {

      v61 = v184;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v75 = *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v62 = v197;
    v63 = *v197;
    v64 = EmbeddedGameProcess.semPreference.getter();
    *v62 = sub_100039D3C(v63, v64);
    if (EmbeddedGameProcess.supportsDynamicPowerSplitter.getter())
    {
      *v195 = 1;
    }

    if (EmbeddedGameProcess.supportsGameMode.getter())
    {

      v65 = v185;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v76 = *((*v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v66 = EmbeddedGameProcess.bundleIdentifier.getter();
      if (!*(v196 + 16))
      {

LABEL_34:
        type metadata accessor for GlobalPreferences();
        dispatch thunk of static GlobalPreferences.shared.getter();
        EmbeddedGameProcess.bundleIdentifier.getter();
        dispatch thunk of GlobalPreferences.setGameModeEnabled(_:bundleIdentifier:)();

        dispatch thunk of EmbeddedGameProcess.triggeringGameMode.setter();
LABEL_35:

        v72 = v198;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v77 = *((*v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        goto LABEL_38;
      }

      v68 = sub_100035224(v66, v67);
      v70 = v69;

      if ((v70 & 1) == 0)
      {
        goto LABEL_34;
      }

      v71 = *(*(v196 + 56) + v68);
      dispatch thunk of EmbeddedGameProcess.triggeringGameMode.setter();
      if (v71 == 1)
      {
        goto LABEL_35;
      }
    }

LABEL_38:
    if (EmbeddedGameProcess.requiresModelManagerAssertion.getter())
    {
      dispatch thunk of EmbeddedGameProcess.triggeringModelManagerAssertion.setter();
      *v186 = 1;
    }

    if (EmbeddedGameProcess.supportsModelManagerAssertion.getter() & 1) != 0 && (dispatch thunk of EmbeddedGameProcess.triggeringGameMode.getter())
    {
      v73 = ModeEnablementStrategy.rawValue.getter();
      if (v73 != ModeEnablementStrategy.rawValue.getter())
      {
        dispatch thunk of EmbeddedGameProcess.triggeringModelManagerAssertion.setter();
        *v170 = 1;
      }
    }

    v74 = dispatch thunk of EmbeddedGameProcess.supportsCameraJettisonS2R.getter();

    v49 = v53;
    v45 = v54;
    if (v74)
    {
      *v187 = 1;
LABEL_9:
      v49 = v53;
      v45 = v54;
    }
  }

  v51 = v49;
  v52 = v45;
  v53 = v49;
  if (!v45)
  {
    while (1)
    {
      v53 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v53 >= v50)
      {
        goto LABEL_46;
      }

      v52 = *(v43 + 8 * v53);
      ++v51;
      if (v52)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_104;
  }

LABEL_15:
  v54 = (v52 - 1) & v52;
  v55 = (v53 << 9) | (8 * __clz(__rbit64(v52)));
  v56 = *(*(v42 + 56) + v55);
  v57 = *(*(v42 + 48) + v55);

  if (v57)
  {
    goto LABEL_19;
  }

LABEL_46:
  sub_10001B370();
  if (!(*v198 >> 62))
  {
    v78 = *((*v198 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_48;
  }

LABEL_104:
  v78 = _CocoaArrayWrapper.endIndex.getter();
LABEL_48:
  v80 = v175;
  v79 = v176;
  if (v78 > 0 || (v81 = ModeEnablementStrategy.rawValue.getter(), v81 == ModeEnablementStrategy.rawValue.getter()))
  {
    v82 = ModeEnablementStrategy.rawValue.getter();
    v83 = v82 != ModeEnablementStrategy.rawValue.getter();
  }

  else
  {
    v83 = 0;
  }

  v84 = *(v79 + 112);
  if (v84 > 1)
  {
    if (v84 == 2)
    {
      goto LABEL_57;
    }

    if (v84 == 3)
    {
      goto LABEL_61;
    }

LABEL_105:
    *&v204[0] = *(v79 + 112);
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  if (v84)
  {
    if (v84 == 1)
    {
      goto LABEL_59;
    }

    goto LABEL_105;
  }

  if (*v186)
  {
LABEL_61:
    v85 = &enum case for ModelManagerGameAssertionPolicy.aaaGameMode(_:);
    goto LABEL_62;
  }

  if ((*v170 & 1) == 0)
  {
LABEL_59:
    v86 = type metadata accessor for ModelManagerGameAssertionPolicy();
    (*(*(v86 - 8) + 56))(v80, 1, 1, v86);
    goto LABEL_63;
  }

LABEL_57:
  v85 = &enum case for ModelManagerGameAssertionPolicy.standardGameMode(_:);
LABEL_62:
  v87 = *v85;
  v88 = type metadata accessor for ModelManagerGameAssertionPolicy();
  v89 = *(v88 - 8);
  (*(v89 + 104))(v80, v87, v88);
  (*(v89 + 56))(v80, 0, 1, v88);
LABEL_63:
  v90 = *(v79 + 96);
  if (v90 == 2)
  {
    v91 = 3;
  }

  else if (v90 == 1)
  {
    v91 = 2;
  }

  else
  {
    v91 = *v197;
  }

  v92 = *(v79 + 104);
  if ((*v195 & 1) != 0 || (v93 = *(v79 + 104), v94 = ModeEnablementStrategy.rawValue.getter(), v94 == ModeEnablementStrategy.rawValue.getter()))
  {
    v95 = ModeEnablementStrategy.rawValue.getter();
    v96 = v95 != ModeEnablementStrategy.rawValue.getter();
    if (v83)
    {
      v97 = v174;
      goto LABEL_74;
    }

    v98 = 0;
    v97 = v174;
  }

  else
  {
    v96 = 0;
    v98 = 0;
    v97 = v174;
    if (v83)
    {
LABEL_74:
      v98 = *v187;
    }
  }

  v99 = *(v97 + 80);
  v100 = *(v97 + 96);
  v101 = v180;
  *v180 = v83;
  *(v101 + 8) = v91;
  *(v101 + 16) = v96;
  sub_10001B378(v80, v101 + v99, &qword_100054428, &qword_10003E778);
  *(v101 + v100) = v98;
  swift_endAccess();
  v102 = *(v79 + 104);
  v103 = *(v79 + 72);
  v202[0] = *(v79 + 56);
  v202[1] = v103;
  v202[2] = *(v79 + 88);
  v202[3] = v102;
  v104 = (v101 + *(v179 + 48));
  v105 = (v101 + *(v179 + 64));
  v106 = v208;
  *v104 = v207;
  v104[1] = v106;
  v107 = v210;
  v104[2] = v209;
  v104[3] = v107;
  v108 = *(v79 + 72);
  *v105 = *(v79 + 56);
  v105[1] = v108;
  v109 = *(v79 + 104);
  v105[2] = *(v79 + 88);
  v105[3] = v109;
  sub_10001B118(v202, v204);
  [v178 unlock];
  v110 = v104[1];
  v203[0] = *v104;
  v203[1] = v110;
  v111 = v104[3];
  v203[2] = v104[2];
  v203[3] = v111;
  v112 = v105[1];
  v204[0] = *v105;
  v204[1] = v112;
  v113 = v105[3];
  v205 = v105[2];
  v206 = v113;
  sub_10001B378(v101, v191, &qword_1000552B0, &qword_10003F110);
  v114 = v205;
  v115 = ModeEnablementStrategy.rawValue.getter();
  p_name = &stru_100051FF8.name;
  if (v115 != ModeEnablementStrategy.rawValue.getter())
  {
    v117 = v173;
    static Logger.policyCoordinator.getter();
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v199 = v114;
      v200[0] = v121;
      *v120 = 136446210;
      v122 = String.init<A>(describing:)();
      v124 = sub_100034C38(v122, v123, v200);

      *(v120 + 4) = v124;
      _os_log_impl(&_mh_execute_header, v118, v119, "Updating game mode enablement strategy to %{public}s", v120, 0xCu);
      sub_100003964(v121);
      p_name = (&stru_100051FF8 + 8);

      (*(v189 + 8))(v173, v190);
    }

    else
    {

      (*(v189 + 8))(v117, v190);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    if (qword_100053460 != -1)
    {
      swift_once();
    }

    v201 = &type metadata for ModeEnablementStrategy;
    v200[0] = v114;
    v125 = qword_1000565E0;
    v126 = v192;
    Notification.init(name:object:userInfo:)();
    v127 = [objc_opt_self() defaultCenter];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v127 p_name[223]];

    (*(v193 + 8))(v126, v194);
  }

  v129 = *(&v205 + 1);
  v130 = ModeEnablementStrategy.rawValue.getter();
  if (v130 != ModeEnablementStrategy.rawValue.getter())
  {
    v131 = v171;
    static Logger.policyCoordinator.getter();
    v132 = Logger.logObject.getter();
    v133 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v198 = swift_slowAlloc();
      v199 = v129;
      v200[0] = v198;
      *v134 = 136446210;
      v135 = String.init<A>(describing:)();
      v137 = sub_100034C38(v135, v136, v200);

      *(v134 + 4) = v137;
      _os_log_impl(&_mh_execute_header, v132, v133, "Updating sustained execution mode enablement strategy to %{public}s", v134, 0xCu);
      sub_100003964(v198);
      p_name = &stru_100051FF8.name;
    }

    (*(v189 + 8))(v131, v190);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    v201 = &type metadata for ModeEnablementStrategy;
    v200[0] = v129;
    v138 = qword_1000565F0;
    v139 = v192;
    Notification.init(name:object:userInfo:)();
    v140 = [objc_opt_self() defaultCenter];
    v141 = Notification._bridgeToObjectiveC()().super.isa;
    [v140 p_name[223]];

    (*(v193 + 8))(v139, v194);
  }

  v142 = v206;
  v143 = ModeEnablementStrategy.rawValue.getter();
  if (v143 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v144 = Logger.logObject.getter();
    v145 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v199 = v142;
      v200[0] = v147;
      *v146 = 136446210;
      v148 = String.init<A>(describing:)();
      v150 = sub_100034C38(v148, v149, v200);

      *(v146 + 4) = v150;
      _os_log_impl(&_mh_execute_header, v144, v145, "Updating dynamic splitter enablement strategy to %{public}s", v146, 0xCu);
      sub_100003964(v147);
      p_name = &stru_100051FF8.name;
    }

    (*(v189 + 8))(v181, v190);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    v201 = &type metadata for ModeEnablementStrategy;
    v200[0] = v142;
    v151 = qword_1000565F8;
    v152 = v192;
    Notification.init(name:object:userInfo:)();
    v153 = [objc_opt_self() defaultCenter];
    v154 = Notification._bridgeToObjectiveC()().super.isa;
    [v153 p_name[223]];

    (*(v193 + 8))(v152, v194);
  }

  v155 = *(&v206 + 1);
  v156 = ModelManagerPolicyStrategy.rawValue.getter();
  if (v156 == ModelManagerPolicyStrategy.rawValue.getter())
  {
    sub_10001B150(v204);
    sub_10001B150(v203);
    v157 = v183;
  }

  else
  {
    v158 = v172;
    static Logger.policyCoordinator.getter();
    v159 = Logger.logObject.getter();
    v160 = static os_log_type_t.default.getter();
    v161 = os_log_type_enabled(v159, v160);
    v157 = v183;
    if (v161)
    {
      v162 = swift_slowAlloc();
      v198 = swift_slowAlloc();
      v199 = v155;
      v200[0] = v198;
      *v162 = 136446210;
      v163 = String.init<A>(describing:)();
      v165 = sub_100034C38(v163, v164, v200);

      *(v162 + 4) = v165;
      _os_log_impl(&_mh_execute_header, v159, v160, "Updating game mode ModelManager policy strategy to %{public}s", v162, 0xCu);
      sub_100003964(v198);
      p_name = &stru_100051FF8.name;
    }

    (*(v189 + 8))(v158, v190);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    v201 = &type metadata for ModelManagerPolicyStrategy;
    v200[0] = v155;
    v166 = qword_1000565E8;
    v167 = v192;
    Notification.init(name:object:userInfo:)();
    v168 = [objc_opt_self() defaultCenter];
    v169 = Notification._bridgeToObjectiveC()().super.isa;
    [v168 p_name[223]];

    sub_10001B150(v204);
    sub_10001B150(v203);
    (*(v193 + 8))(v167, v194);
  }

  sub_10001B378(v191, v182, &qword_1000552B0, &qword_10003F110);
}

uint64_t sub_1000170B8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(a1 + 32);
  v25 = v5;
  v26 = v2;
  v24 = v6;
  if (v10 >> 62)
  {
    goto LABEL_22;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v11)
  {
    v12 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (__OFADD__(v12++, 1))
        {
          __break(1u);
          return result;
        }

        v23 = result;
        swift_unknownObjectRelease();
        if (v23 == a2)
        {
        }
      }

      else
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          v11 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        if (*(v10 + 32 + 8 * v12) == a2)
        {
        }

        ++v12;
      }
    }

    while (v12 != v11);
  }

  static Logger.policyCoordinator.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27[0] = v18;
    *v17 = 136446210;
    v27[7] = a2;
    type metadata accessor for GamePolicyCoordinatorObserver();

    v19 = String.init<A>(describing:)();
    v21 = sub_100034C38(v19, v20, v27);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "registerObserver: %{public}s", v17, 0xCu);
    sub_100003964(v18);
  }

  (*(v24 + 8))(v9, v25);
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v22 = *((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t sub_1000173E8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(a1 + 32);
  v30 = v5;
  v31 = v2;
  v29 = v6;
  if (v10 >> 62)
  {
LABEL_23:
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v11)
  {
  }

  v12 = 0;
  while ((v10 & 0xC000000000000001) == 0)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    if (*(v10 + 32 + 8 * v12) == a2)
    {
      goto LABEL_14;
    }

    ++v12;
LABEL_10:
    if (v12 == v11)
    {
    }
  }

  result = specialized _ArrayBuffer._getElementSlowPath(_:)();
  if (__OFADD__(v12++, 1))
  {
    goto LABEL_28;
  }

  v28 = result;
  swift_unknownObjectRelease();
  if (v28 != a2)
  {
    goto LABEL_10;
  }

LABEL_14:

  static Logger.policyCoordinator.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v18 = v30;
  if (v17)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32[0] = v20;
    *v19 = 136446210;
    v32[7] = a2;
    type metadata accessor for GamePolicyCoordinatorObserver();

    v21 = String.init<A>(describing:)();
    v23 = sub_100034C38(v21, v22, v32);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "unregisterObserver: %{public}s", v19, 0xCu);
    sub_100003964(v20);

    (*(v29 + 8))(v9, v30);
  }

  else
  {

    (*(v29 + 8))(v9, v18);
  }

  swift_beginAccess();

  v24 = sub_10001B4E4((a1 + 32), a2);

  v25 = *(a1 + 32);
  if (v25 >> 62)
  {
    if (v25 < 0)
    {
      v27 = *(a1 + 32);
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    v26 = result;
    if (result >= v24)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26 >= v24)
    {
LABEL_20:
      sub_100025814(v24, v26);
      return swift_endAccess();
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void *sub_10001774C()
{
  type metadata accessor for GamePolicyCoordinator();
  swift_allocObject();
  result = sub_100017788();
  off_1000541F8 = result;
  return result;
}

void *sub_100017788()
{
  v1 = type metadata accessor for DynamicSplitterStatus.Config();
  v86 = *(v1 - 8);
  v87 = v1;
  v2 = *(v86 + 64);
  v3 = (__chkstk_darwin)();
  v85 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v78 = v69 - v5;
  v84 = type metadata accessor for SustainedExecutionStatus.Config();
  v82 = *(v84 - 8);
  v6 = *(v82 + 64);
  v7 = __chkstk_darwin(v84);
  v80 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v89 = v69 - v9;
  v10 = sub_100003870(&qword_100054428, &qword_10003E778);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10 - 8);
  v76 = v69 - v12;
  v83 = type metadata accessor for ModelManagerGameAssertionStatus.Config();
  v81 = *(v83 - 8);
  v13 = *(v81 + 64);
  v14 = __chkstk_darwin(v83);
  v79 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v90 = v69 - v16;
  v17 = sub_100003870(&qword_1000552E0, &qword_10003E780);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v75 = v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v74 = v69 - v21;
  v22 = type metadata accessor for GameModeStatus.Config();
  v91 = *(v22 - 8);
  v92 = v22;
  v23 = *(v91 + 64);
  v24 = __chkstk_darwin(v22);
  v77 = v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v93 = v69 - v26;
  v73 = type metadata accessor for String.Encoding();
  v72 = *(v73 - 8);
  v27 = *(v72 + 64);
  __chkstk_darwin(v73);
  v71 = v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v29 = *(v70 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v70);
  v32 = v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for OS_dispatch_queue.Attributes();
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v35 = type metadata accessor for DispatchQoS();
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  *(v0 + 16) = [objc_allocWithZone(NSLock) init];
  v69[2] = sub_100009748(0, &qword_100053B00, OS_dispatch_queue_ptr);
  v69[1] = "AssertionChangedNotifyToken";
  static DispatchQoS.unspecified.getter();
  v94 = &_swiftEmptyArrayStorage;
  sub_10001BF5C(&qword_100054430, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100003870(&qword_100054438, &qword_10003E788);
  sub_10001B9A0(&qword_100054440, &qword_100054438, &qword_10003E788);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v29 + 104))(v32, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v70);
  v37 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v38 = v88;
  v88[3] = v37;
  v38[4] = &_swiftEmptyArrayStorage;
  v38[6] = 0;
  swift_unknownObjectWeakInit();
  v38[15] = 0;
  v39 = v38;
  out_token = 0;
  v94 = 0xD00000000000003DLL;
  v95 = 0x80000001000416B0;
  v40 = v71;
  static String.Encoding.utf8.getter();
  sub_100009790();
  v41 = StringProtocol.cString(using:)();
  (*(v72 + 8))(v40, v73);
  if (v41)
  {
    v42 = (v41 + 32);
  }

  else
  {
    v42 = 0;
  }

  notify_register_check(v42, &out_token);

  *(v39 + 32) = out_token;
  type metadata accessor for GlobalPreferences();
  dispatch thunk of static GlobalPreferences.shared.getter();
  v73 = dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.getter();

  v43 = type metadata accessor for Date();
  v44 = *(*(v43 - 8) + 56);
  v45 = v74;
  v44(v74, 1, 1, v43);
  v46 = v75;
  v44(v75, 1, 1, v43);
  GameModeStatus.Config.init(enabled:enablementDate:disablementDate:deviceSupported:jettisonCameraS2R:gameBundleIdentifiers:previousGameBundleIdentifiers:impactedBundleIdentifiers:previouslyImpactedBundleIdentifiers:allGameBundleIdentifiers:previousAllGameBundleIdentifiers:enablementStrategy:perfomanceGamingModeEnabled:)();
  dispatch thunk of static GlobalPreferences.shared.getter();
  v72 = dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.getter();

  v47 = type metadata accessor for ModelManagerGameAssertionPolicy();
  (*(*(v47 - 8) + 56))(v76, 1, 1, v47);
  v44(v45, 1, 1, v43);
  v44(v46, 1, 1, v43);
  ModelManagerGameAssertionStatus.Config.init(policy:enablementDate:disablementDate:deviceSupported:aaaBundleIdentifiers:impactedBundleIdentifiers:previouslyImpactedBundleIdentifiers:policyStrategy:)();
  dispatch thunk of static GlobalPreferences.shared.getter();
  v76 = dispatch thunk of GlobalPreferences.semEnablementStrategy.getter();

  v44(v45, 1, 1, v43);
  v44(v46, 1, 1, v43);
  v48 = v89;
  SustainedExecutionStatus.Config.init(activePolicy:enablementDate:disablementDate:deviceSupported:impactedBundleIdentifiers:previouslyImpactedBundleIdentifiers:enablementStrategy:)();
  dispatch thunk of static GlobalPreferences.shared.getter();
  v71 = dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.getter();

  v44(v45, 1, 1, v43);
  v44(v46, 1, 1, v43);
  v49 = v78;
  DynamicSplitterStatus.Config.init(enabled:enablementDate:disablementDate:deviceSupported:impactedBundleIdentifiers:previouslyImpactedBundleIdentifiers:enablementStrategy:)();
  (*(v91 + 16))(v77, v93, v92);
  v50 = objc_allocWithZone(type metadata accessor for GameModeStatus());
  v77 = GameModeStatus.init(config:)();
  v51 = v82;
  v52 = v48;
  v53 = v84;
  (*(v82 + 16))(v80, v52, v84);
  v54 = objc_allocWithZone(type metadata accessor for SustainedExecutionStatus());
  v80 = SustainedExecutionStatus.init(config:)();
  v55 = v86;
  v56 = v49;
  v57 = v49;
  v58 = v87;
  (*(v86 + 16))(v85, v56, v87);
  v59 = objc_allocWithZone(type metadata accessor for DynamicSplitterStatus());
  v85 = DynamicSplitterStatus.init(config:)();
  v60 = v81;
  v61 = v90;
  v62 = v83;
  (*(v81 + 16))(v79, v90, v83);
  v63 = objc_allocWithZone(type metadata accessor for ModelManagerGameAssertionStatus());
  v64 = ModelManagerGameAssertionStatus.init(config:)();
  (*(v55 + 8))(v57, v58);
  (*(v51 + 8))(v89, v53);
  (*(v60 + 8))(v61, v62);
  (*(v91 + 8))(v93, v92);
  result = v88;
  v66 = v80;
  v88[7] = v77;
  result[8] = v66;
  result[9] = v85;
  result[10] = v64;
  v67 = v76;
  result[11] = v73;
  result[12] = v67;
  v68 = v72;
  result[13] = v71;
  result[14] = v68;
  return result;
}

uint64_t sub_10001836C()
{
  v1 = v0;
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003870(&qword_100054460, &qword_10003E7B8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v24 - v9;
  v11 = *(v1 + 120);
  if (v11)
  {
    *(v1 + 120) = 0;
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v11;

    sub_100018680(0, 0, v10, &unk_10003E838, v13);

    v14 = *(v1 + 128);
    if (v14)
    {
      notify_set_state(v14, 0);
      v24[0] = 0xD00000000000003DLL;
      v24[1] = 0x80000001000416B0;
      static String.Encoding.utf8.getter();
      sub_100009790();
      v15 = StringProtocol.cString(using:)();
      (*(v3 + 8))(v6, v2);
      if (v15)
      {
        v16 = (v15 + 32);
      }

      else
      {
        v16 = 0;
      }

      notify_post(v16);
    }
  }

  v17 = *(v1 + 128);
  if (v17)
  {
    notify_cancel(v17);
  }

  v18 = *(v1 + 32);

  sub_10000B4A8(v1 + 40);
  v19 = *(v1 + 56);
  v20 = *(v1 + 64);
  v21 = *(v1 + 72);

  v22 = *(v1 + 120);

  return v1;
}

uint64_t sub_1000185EC()
{
  v1 = async function pointer to Assertion.invalidate()[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_10001C4B0;

  return Assertion.invalidate()();
}

uint64_t sub_100018680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003870(&qword_100054460, &qword_10003E7B8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10001C10C(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000096E8(v12, &qword_100054460, &qword_10003E7B8);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1000096E8(a3, &qword_100054460, &qword_10003E7B8);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000096E8(a3, &qword_100054460, &qword_10003E7B8);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}