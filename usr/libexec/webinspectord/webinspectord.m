id sub_100001240()
{
  if (qword_100008260 != -1)
  {
    sub_100001C1C();
  }

  v1 = qword_100008258;

  return v1;
}

void sub_100001284(id a1)
{
  qword_100008258 = os_log_create("com.apple.webinspectord", "default");

  _objc_release_x1();
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_100001240();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Launched (Device)", v6, 2u);
  }

  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100004208);
  v2 = objc_alloc_init(RWIWebinspectordRelayDelegateIOS);
  v3 = objc_alloc_init(RWIRelay);
  [v3 setDelegate:v2];
  [v3 setup];
  objc_autoreleasePoolPop(v0);
  v4 = +[NSRunLoop mainRunLoop];
  [v4 run];

  return 0;
}

void sub_1000013DC(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  if (string)
  {
    v3 = string;
    v4 = sub_100001240();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "webinspectord launched in response to %s", &v5, 0xCu);
    }
  }
}

id RWIRemotePairingDeviceAuxiliaryMetadataProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RWIRemotePairingDeviceAuxiliaryMetadataProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RWIRemotePairingDeviceAuxiliaryMetadataProvider();
  return objc_msgSendSuper2(&v2, "init");
}

id RWIRemotePairingDeviceAuxiliaryMetadataProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RWIRemotePairingDeviceAuxiliaryMetadataProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000015E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10000165C(a1, a2, v6);
}

unint64_t sub_10000165C(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100001714(uint64_t a1)
{
  v2 = sub_100001AEC(&qword_100008248, &qword_1000020D8);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001AEC(&qword_100008250, &qword_1000020E0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100001BAC(v10, v6);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1000015E4(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for AuxiliaryMetadataItem();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t _s13webinspectord47RWIRemotePairingDeviceAuxiliaryMetadataProviderC012registerBoolF06domain3key5valueySo8NSStringC_AISbtFZ_0(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for AuxiliaryMetadataProvider();
  static AuxiliaryMetadataProvider.shared.getter();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100001AEC(&qword_100008240, &qword_1000020D0);
  v4 = (sub_100001AEC(&qword_100008248, &qword_1000020D8) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100002080;
  v8 = (v7 + v6);
  v9 = v4[14];
  *v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8[1] = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v8 + v9) = v11;
  v12 = enum case for AuxiliaryMetadataItem.BOOLean(_:);
  v13 = type metadata accessor for AuxiliaryMetadataItem();
  (*(*(v13 - 8) + 104))(v8 + v9, v12, v13);
  sub_100001714(v7);
  swift_setDeallocating();
  sub_100001B44(v8);
  swift_deallocClassInstance();
  dispatch thunk of AuxiliaryMetadataProvider.registerMetadata(forDomain:metadata:)();
}

uint64_t sub_100001AEC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001B44(uint64_t a1)
{
  v2 = sub_100001AEC(&qword_100008248, &qword_1000020D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100001BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001AEC(&qword_100008248, &qword_1000020D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}