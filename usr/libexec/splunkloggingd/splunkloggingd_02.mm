uint64_t sub_10002E6E4()
{
  if (qword_10005A5B8 != -1)
  {
    swift_once();
  }

  if (byte_10005A5C0 != 1)
  {
    goto LABEL_12;
  }

  if (qword_10005A5C8 != -1)
  {
    swift_once();
  }

  v1 = qword_10005A5D0;
  os_unfair_lock_lock((qword_10005A5D0 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  if (v2)
  {
    v3 = *(v2 + 16);
    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006C6C(v4, qword_10005A548);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32 = v8;
      *v7 = 136446210;
      sub_100001FDC(&qword_100057890, &qword_1000472C8);
      v9 = String.init<A>(describing:)();
      v11 = sub_10000604C(v9, v10, &v32);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Found mocked value for logFilteringEnforced: %{public}s", v7, 0xCu);
      sub_100006D94(v8);
    }
  }

  else
  {
LABEL_12:
    type metadata accessor for SecureConfigParameters();
    v12 = static SecureConfigParameters.loadContents()();
    if (v0)
    {
      if (qword_10005A540 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100006C6C(v13, qword_10005A548);
      swift_errorRetain();
      v14 = Logger.logObject.getter();
      v3 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v3))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138543362;
        swift_errorRetain();
        v17 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 4) = v17;
        *v16 = v17;
        _os_log_impl(&_mh_execute_header, v14, v3, "SecureConfig error for logFilteringEnforced: %{public}@", v15, 0xCu);
        sub_100007E2C(v16, &qword_100056C40, &unk_100045BE0);
      }

      if (qword_10005A590 != -1)
      {
        swift_once();
      }

      if (byte_10005A598 == 1)
      {
        swift_willThrow();
        return v3 & 1;
      }

      v3 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      v18 = v12;
      v3 = SecureConfigParameters.logFilteringEnforced.getter();

      if (qword_10005A540 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100006C6C(v19, qword_10005A548);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v32 = v23;
        *v22 = 136446210;
        sub_100001FDC(&qword_100057890, &qword_1000472C8);
        v24 = String.init<A>(describing:)();
        v26 = sub_10000604C(v24, v25, &v32);

        *(v22 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v20, v21, "logFilteringEnforced: found value of %{public}s from Secure Config", v22, 0xCu);
        sub_100006D94(v23);
      }
    }
  }

  if (v3 == OS_LOG_TYPE_DEBUG)
  {
    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100006C6C(v27, qword_10005A548);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Got no value from SecureConfig for logFilteringEnforced, returning false", v30, 2u);
    }

    v3 = OS_LOG_TYPE_DEFAULT;
  }

  return v3 & 1;
}

uint64_t sub_10002ECA4()
{
  if (qword_10005A5B8 != -1)
  {
    swift_once();
  }

  if (byte_10005A5C0 != 1)
  {
    goto LABEL_12;
  }

  if (qword_10005A5C8 != -1)
  {
    swift_once();
  }

  v0 = qword_10005A5D0;
  os_unfair_lock_lock((qword_10005A5D0 + 24));
  v1 = *(v0 + 16);

  os_unfair_lock_unlock((v0 + 24));
  if (v1)
  {
    v2 = *(v1 + 17);
    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006C6C(v3, qword_10005A548);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v24[0] = v7;
      *v6 = 136446210;
      sub_100001FDC(&qword_100057890, &qword_1000472C8);
      v8 = String.init<A>(describing:)();
      v10 = sub_10000604C(v8, v9, v24);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Found mocked value for crashRedactionEnabled: %{public}s", v6, 0xCu);
      sub_100006D94(v7);
    }
  }

  else
  {
LABEL_12:
    type metadata accessor for SecureConfigParameters();
    v11 = static SecureConfigParameters.loadContents()();
    v2 = SecureConfigParameters.crashRedactionEnabled.getter();

    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006C6C(v12, qword_10005A548);
    v4 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24[0] = v15;
      *v14 = 136446210;
      sub_100001FDC(&qword_100057890, &qword_1000472C8);
      v16 = String.init<A>(describing:)();
      v18 = sub_10000604C(v16, v17, v24);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v4, v13, "crashRedactionEnabled: found value of %{public}s from Secure Config", v14, 0xCu);
      sub_100006D94(v15);
    }
  }

  if (v2 == 2)
  {
    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006C6C(v19, qword_10005A548);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Got no value from SecureConfig for crashRedactionEnabled, returning false", v22, 2u);
    }

    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_10002F224()
{
  v0 = URLRequest.httpBody.getter();
  if (v1 >> 60 == 15)
  {
    return 0x3E6C696E3CLL;
  }

  v3 = v0;
  v4 = v1;
  sub_10002F31C(v0, v1);
  sub_100001FDC(&qword_100057030, &unk_1000469E0);
  sub_10003002C(&qword_1000578F0, &qword_100057030, &unk_1000469E0);
  v5 = BidirectionalCollection<>.joined(separator:)();
  sub_100010C2C(v3, v4);

  return v5;
}

unint64_t *sub_10002F31C(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = &_swiftEmptyArrayStorage;
  if (v5)
  {
    v45 = &_swiftEmptyArrayStorage;
    sub_10002F8DC(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v45;
    v29 = &v33 + v9;
    v31 = v4;
    do
    {
      if (v10 >= v5)
      {
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
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v32 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = __DataStorage._offset.getter();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = a1;
          v34 = BYTE2(a1);
          v35 = BYTE3(a1);
          v36 = v30;
          v37 = BYTE5(a1);
          v38 = BYTE6(a1);
          v39 = HIBYTE(a1);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v19 = v29[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = __DataStorage._bytes.getter();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = __DataStorage._offset.getter();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      sub_100001FDC(&qword_100057AC0, &qword_100047588);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100045B50;
      *(v20 + 56) = &type metadata for UInt8;
      *(v20 + 64) = &protocol witness table for UInt8;
      *(v20 + 32) = v19;
      v21 = String.init(format:_:)();
      v45 = v8;
      v24 = v8[2];
      v23 = v8[3];
      if (v24 >= v23 >> 1)
      {
        v28 = v21;
        v26 = v22;
        sub_10002F8DC((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v28;
        v8 = v45;
      }

      v8[2] = v24 + 1;
      v25 = &v8[2 * v24];
      v25[4] = v21;
      v25[5] = v22;
      ++v10;
      LODWORD(v4) = v31;
    }

    while (v11 != v5);
  }

  return v8;
}

uint64_t sub_10002F688(uint64_t a1)
{
  v2 = sub_10002FF34(&unk_1000578D0, type metadata accessor for FileAttributeKey);
  v3 = sub_10002FF34(&qword_100057AB8, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_10002F744(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10002F7D8(a1, v4);
}

unint64_t sub_10002F7D8(uint64_t a1, uint64_t a2)
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

char *sub_10002F8DC(char *a1, int64_t a2, char a3)
{
  result = sub_10002F8FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10002F8FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001FDC(&unk_100056C98, &unk_100045C20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10002FA08(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!*(result + 32))
    {
      return static String._fromUTF8Repairing(_:)();
    }

    v2 = 0;
    v3 = v1 - 1;
    while (v3 != v2)
    {
      if (!*(result + 33 + v2++))
      {
        return static String._fromUTF8Repairing(_:)();
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10002FA54(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002FA64(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002FA74(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002FAE4(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;

  *a1 = v3;
}

uint64_t sub_10002FB2C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10002FB64(uint64_t a1)
{
  v3 = *(v1 + 16);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v3 addObserver:a1 forTypes:isa];
}

unint64_t sub_10002FBD4()
{
  result = qword_1000578B8;
  if (!qword_1000578B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000578B8);
  }

  return result;
}

unint64_t sub_10002FC28()
{
  result = qword_1000578C0;
  if (!qword_1000578C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000578C0);
  }

  return result;
}

uint64_t sub_10002FC90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002FD00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TestingMock()
{
  result = qword_10005A670;
  if (!qword_10005A670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002FDE8()
{
  sub_10002FE94();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10002FE94()
{
  if (!qword_100057388)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100057388);
    }
  }
}

uint64_t sub_10002FF34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100030014(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003002C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002024(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100030074(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  result = *a1;
  if (result != v4 || a1[1] != v3)
  {
    v7 = a1[1];
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {

      if (qword_10005A540 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100006C6C(v8, qword_10005A548);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v13 = v12;
        *v11 = 136446210;
        *(v11 + 4) = sub_10000604C(v4, v3, &v13);
        _os_log_impl(&_mh_execute_header, v9, v10, "Updating hostname to %{public}s", v11, 0xCu);
        sub_100006D94(v12);
      }

      *a1 = v4;
      a1[1] = v3;
    }
  }

  return result;
}

void sub_10003020C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100030258()
{
  sub_100001FDC(&qword_100057C30, qword_100047680);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  qword_10005B150 = result;
  return result;
}

uint64_t *sub_10003029C()
{
  if (qword_10005AA00 != -1)
  {
    swift_once();
  }

  return &qword_10005B150;
}

uint64_t sub_1000302EC()
{
  if (qword_10005AA00 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100030358()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_100007F28(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_1000303A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_10000803C(v5, v6);
}

uint64_t sub_10003044C()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  return swift_unknownObjectRetain();
}

uint64_t sub_100030484(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_10003051C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 64);
  return result;
}

uint64_t sub_100030558(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1000305B8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 64);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10003064C;
}

void sub_10003064C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 64) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1000306D0(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_100030720(a1);
  return v2;
}

uint64_t sub_100030720(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  __chkstk_darwin(v4);
  v52 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  __chkstk_darwin(v7);
  v49 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTimeInterval();
  v47 = *(v10 - 8);
  v48 = v10;
  v11 = *(v47 + 64);
  __chkstk_darwin(v10);
  v46 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = type metadata accessor for DispatchTime();
  v44 = *(v45 - 8);
  v13 = *(v44 + 64);
  v14 = __chkstk_darwin(v45);
  v43 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v42 = &v41 - v16;
  v17 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[8] = 0;
  swift_unknownObjectWeakInit();
  if (qword_10005AA00 != -1)
  {
    swift_once();
  }

  v22 = qword_10005B150;
  os_unfair_lock_lock((qword_10005B150 + 24));
  sub_100030D90((v22 + 16), aBlock);
  os_unfair_lock_unlock((v22 + 24));
  v1[2] = aBlock[0];
  v1[3] = a1;
  v1[4] = sub_100031850(a1);
  v1[5] = v23;
  sub_1000075EC(0, &unk_100056C50, OS_dispatch_source_ptr);
  v24 = v1[2];
  v41 = v1;
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100031C80(&qword_100056B28, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_100001FDC(&qword_100056B30, &unk_100045BF0);
  sub_100007C28(&qword_100056B38, &qword_100056B30, &unk_100045BF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v18 + 8))(v21, v17);
  v2[6] = v25;
  v26 = v2 + 6;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v27 = v43;
  static DispatchTime.now()();
  v28 = v42;
  + infix(_:_:)();
  v29 = *(v44 + 8);
  v30 = v45;
  v29(v27, v45);
  v32 = v46;
  v31 = v47;
  *v46 = 0;
  v33 = v48;
  (*(v31 + 104))(v32, enum case for DispatchTimeInterval.nanoseconds(_:), v48);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  swift_unknownObjectRelease();
  (*(v31 + 8))(v32, v33);
  v29(v28, v30);
  swift_beginAccess();
  v34 = *v26;
  swift_getObjectType();
  v35 = v41;
  aBlock[4] = sub_1000318F4;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000040C8;
  aBlock[3] = &unk_100052A80;
  v36 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v37 = v49;
  static DispatchQoS.unspecified.getter();
  v38 = v52;
  sub_10000410C();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v36);
  swift_unknownObjectRelease();
  (*(v53 + 8))(v38, v54);
  (*(v50 + 8))(v37, v51);

  v39 = *v26;
  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.activate()();
  swift_unknownObjectRelease();
  return v35;
}

uint64_t sub_100030D90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a2;
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  result = __chkstk_darwin(v10 - 8);
  v13 = *a1 + 1;
  if (__OFADD__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    *a1 = v13;
    v15[3] = sub_1000075EC(0, &qword_100056860, OS_dispatch_queue_ptr);
    v18 = 0;
    v19 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v18 = 0xD000000000000020;
    v19 = 0x8000000100044610;
    v17 = v13;
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15[1] = v19;
    v15[2] = v18;
    static DispatchQoS.unspecified.getter();
    v18 = &_swiftEmptyArrayStorage;
    sub_100031C80(&qword_100056868, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_100001FDC(&qword_100056870, &qword_100045590);
    sub_100007C28(&qword_100056878, &qword_100056870, &qword_100045590);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v4 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v3);
    result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *v16 = result;
  }

  return result;
}

uint64_t sub_100031094()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(v0 + 48);
  swift_getObjectType();
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000040C8;
  aBlock[3] = &unk_100052AA8;
  v13 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  sub_10000410C();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v13);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  v14 = *(v1 + 48);
  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();

  sub_10000803C(*(v1 + 32), *(v1 + 40));
  v15 = *(v1 + 48);
  swift_unknownObjectRelease();
  sub_100006DE0(v1 + 56);
  return v1;
}

uint64_t sub_100031310()
{
  sub_100031094();

  return _swift_deallocClassInstance(v0, 72, 7);
}

unint64_t sub_10003136C(unint64_t result, unint64_t a2)
{
  v4 = result;
  if ((a2 & 0x3000000000000000) == 0)
  {
    v5 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v5 != 2)
      {
        v6 = 0;
        goto LABEL_12;
      }

      v8 = *(result + 16);
      v7 = *(result + 24);
      v9 = __OFSUB__(v7, v8);
      v6 = v7 - v8;
      if (!v9)
      {
LABEL_12:
        v10 = v2[3];
        if (v10 < v6)
        {
          goto LABEL_13;
        }

        if (v5 > 1)
        {
          if (v5 != 2)
          {
            v14 = 0;
            goto LABEL_27;
          }

          v16 = *(result + 16);
          v15 = *(result + 24);
          v14 = v15 - v16;
          if (!__OFSUB__(v15, v16))
          {
LABEL_27:
            v17 = *(*v2 + 120);
            v18 = v2;
            result = v17();
            v20 = v19 >> 62;
            if ((v19 >> 62) > 1)
            {
              if (v20 != 2)
              {
                result = sub_10000803C(result, v19);
                v22 = 0;
                goto LABEL_37;
              }

              v24 = *(result + 16);
              v23 = *(result + 24);
              result = sub_10000803C(result, v19);
              v22 = v23 - v24;
              if (!__OFSUB__(v23, v24))
              {
                goto LABEL_37;
              }

              __break(1u);
            }

            else if (!v20)
            {
              v21 = BYTE6(v19);
              result = sub_10000803C(result, v19);
              v22 = v21;
LABEL_37:
              v27 = v18;
LABEL_38:
              v9 = __OFADD__(v14, v22);
              v28 = v14 + v22;
              if (!v9)
              {
                if (v10 < v28)
                {
                  if ((*(*v27 + 168))(result))
                  {
                    v30 = v29;
                    swift_getObjectType();
                    v31 = v17();
                    v33 = v32;
                    (*(v30 + 16))();
                    swift_unknownObjectRelease();
                    sub_10000803C(v31, v33);
                  }

                  v34 = v18[2];
                  v35 = swift_allocObject();
                  *(v35 + 16) = sub_100031BAC;
                  *(v35 + 24) = v18;
                  v46 = sub_100031CD8;
                  v47 = v35;
                  v42 = _NSConcreteStackBlock;
                  v43 = 1107296256;
                  v44 = sub_100031344;
                  v45 = &unk_100052B70;
                  v36 = _Block_copy(&v42);

                  dispatch_sync(v34, v36);
                  _Block_release(v36);
                  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

                  if ((v34 & 1) == 0)
                  {
                    return 0;
                  }

                  goto LABEL_48;
                }

                v37 = v27[2];
                v38 = swift_allocObject();
                v38[2] = v27;
                v38[3] = v4;
                v38[4] = a2;
                v39 = swift_allocObject();
                *(v39 + 16) = sub_100031ACC;
                *(v39 + 24) = v38;
                v46 = sub_100031B60;
                v47 = v39;
                v42 = _NSConcreteStackBlock;
                v43 = 1107296256;
                v44 = sub_100031344;
                v45 = &unk_100052B20;
                v40 = _Block_copy(&v42);

                sub_100031B88(v4, a2);

                dispatch_sync(v37, v40);
                _Block_release(v40);
                isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

                result = 1;
                if ((isEscapingClosureAtFileLocation & 1) == 0)
                {
                  return result;
                }

                __break(1u);
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }

            v25 = HIDWORD(result);
            v26 = result;
            result = sub_10000803C(result, v19);
            LODWORD(v22) = v25 - v26;
            if (__OFSUB__(v25, v26))
            {
LABEL_50:
              __break(1u);
              return result;
            }

            v27 = v18;
            v22 = v22;
            goto LABEL_38;
          }

          __break(1u);
        }

        else if (!v5)
        {
          v14 = BYTE6(a2);
          goto LABEL_27;
        }

        if (__OFSUB__(HIDWORD(result), result))
        {
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v14 = HIDWORD(result) - result;
        goto LABEL_27;
      }

      __break(1u);
    }

    else if (!v5)
    {
      v6 = BYTE6(a2);
      goto LABEL_12;
    }

    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      goto LABEL_47;
    }

    v6 = v6;
    goto LABEL_12;
  }

LABEL_13:
  if ((*(*v2 + 168))())
  {
    v12 = v11;
    ObjectType = swift_getObjectType();
    (*(v12 + 24))(v4, a2, ObjectType, v12);
    swift_unknownObjectRelease();
  }

  return 1;
}

uint64_t sub_100031850(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(capacity:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000318F4()
{
  if ((*(*v0 + 168))())
  {
    v2 = v1;
    swift_getObjectType();
    v3 = (*(*v0 + 120))();
    v5 = v4;
    (*(v2 + 8))();
    swift_unknownObjectRelease();
    sub_10000803C(v3, v5);
  }

  v6 = (*(*v0 + 136))(v13);
  v8 = *v7;
  v9 = v7[1] >> 62;
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_11;
    }

    v10 = *(v8 + 16);
    v11 = *(v8 + 24);
  }

  else
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    v10 = v8;
    v11 = v8 >> 32;
  }

  if (v11 < v10)
  {
    __break(1u);
  }

LABEL_11:
  Data._Representation.replaceSubrange(_:with:count:)();
  return v6(v13, 0);
}

uint64_t sub_100031A74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100031A8C()
{
  v1 = v0[2];

  sub_10000803C(v0[3], v0[4]);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100031ACC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = (*(**(v0 + 16) + 136))(v5);
  Data.append(_:)();
  return v3(v5, 0);
}

uint64_t sub_100031B60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100031B88(uint64_t a1, unint64_t a2)
{
  v2 = a2 & 0xCFFFFFFFFFFFFFFFLL;
  if (((a2 >> 60) & 3) == 0)
  {
    v2 = a2;
  }

  if (((a2 >> 60) & 3) <= 1)
  {
    v3 = v2;
  }

  else
  {
    v3 = a2 & 0xCFFFFFFFFFFFFFFFLL;
  }

  return sub_100007F28(a1, v3);
}

uint64_t sub_100031BAC()
{
  v1 = (*(*v0 + 136))(v8);
  v3 = *v2;
  v4 = v2[1] >> 62;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = *(v3 + 16);
    v6 = *(v3 + 24);
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = v3;
    v6 = v3 >> 32;
  }

  if (v6 < v5)
  {
    __break(1u);
  }

LABEL_9:
  Data._Representation.replaceSubrange(_:with:count:)();
  return v1(v8, 0);
}

uint64_t sub_100031C80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100031CE8()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_1000075EC(0, &qword_100056860, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v11 = &_swiftEmptyArrayStorage;
  sub_100032D18(&qword_100056868, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100001FDC(&qword_100056870, &qword_100045590);
  sub_100007C28(&qword_100056878, &qword_100056870, &qword_100045590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_100031F50(uint64_t a1)
{
  v29 = a1;
  v31 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v31 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v31);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v30 = sub_1000075EC(0, &qword_100056860, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_100032D18(&qword_100056868, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100001FDC(&qword_100056870, &qword_100045590);
  sub_100007C28(&qword_100056878, &qword_100056870, &qword_100045590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v31);
  v9 = v29;
  v31 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = sub_100032AF4(_swiftEmptyArrayStorage);
  v30 = *(v9 + 16);
  if (!v30)
  {
LABEL_16:

    return v31;
  }

  sub_1000075EC(0, &unk_100056C50, OS_dispatch_source_ptr);
  v11 = 0;
  while (v11 < *(v9 + 16))
  {
    v14 = *(v9 + 32 + 4 * v11);
    v15 = static OS_dispatch_source.makeSignalSource(signal:queue:)();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v10;
    v17 = sub_100032670(v14);
    v19 = v10[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      goto LABEL_18;
    }

    v23 = v18;
    if (v10[3] < v22)
    {
      sub_100032724(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_100032670(v14);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      v10 = v32;
      if (v23)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v27 = v17;
    sub_100032998();
    v17 = v27;
    v10 = v32;
    if (v23)
    {
LABEL_3:
      v12 = v10[7];
      v13 = *(v12 + 8 * v17);
      *(v12 + 8 * v17) = v15;
      swift_unknownObjectRelease();
      goto LABEL_4;
    }

LABEL_12:
    v10[(v17 >> 6) + 8] |= 1 << v17;
    *(v10[6] + 4 * v17) = v14;
    *(v10[7] + 8 * v17) = v15;
    v25 = v10[2];
    v21 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v21)
    {
      goto LABEL_19;
    }

    v10[2] = v26;
LABEL_4:
    if (v30 == ++v11)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100032340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a1;
  v35 = a2;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v33);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v9 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a4 + 64;
  v14 = 1 << *(a4 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a4 + 64);
  v17 = (v14 + 63) >> 6;
  v30 = (v5 + 8);
  v31 = v38;
  v29 = (v10 + 8);
  v36 = a4;

  for (i = 0; v16; result = swift_unknownObjectRelease())
  {
    v20 = i;
LABEL_9:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v22 = v21 | (v20 << 6);
    v23 = *(*(v36 + 48) + 4 * v22);
    v24 = *(*(v36 + 56) + 8 * v22);
    swift_unknownObjectRetain();
    v25 = SIG_IGN.getter();
    signal(v23, v25);
    swift_getObjectType();
    v26 = swift_allocObject();
    v27 = v35;
    *(v26 + 16) = v34;
    *(v26 + 24) = v27;
    *(v26 + 32) = v23;
    v38[2] = sub_100032C3C;
    v38[3] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v38[0] = sub_1000040C8;
    v38[1] = &unk_100052BD0;
    v28 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    sub_10000410C();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v28);
    (*v30)(v8, v33);
    (*v29)(v12, v32);

    OS_dispatch_source.resume()();
  }

  while (1)
  {
    v20 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
    }

    v16 = *(v13 + 8 * v20);
    ++i;
    if (v16)
    {
      i = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100032670(int a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:bytes:count:)();

  return sub_1000326B8(a1, v4);
}

unint64_t sub_1000326B8(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_100032724(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001FDC(&unk_100057CA0, &qword_100047718);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 4 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
        swift_unknownObjectRetain();
      }

      v25 = *(v8 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_100032998()
{
  v1 = v0;
  sub_100001FDC(&unk_100057CA0, &qword_100047718);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = swift_unknownObjectRetain();
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100032AF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100001FDC(&unk_100057CA0, &qword_100047718);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_100032670(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 2);
    v15 = *v10;
    swift_unknownObjectRetain();
    v8 = sub_100032670(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100032C04()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 36, 7);
}

uint64_t sub_100032C6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100032C84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100032CCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100032D18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100032D60()
{
  v0 = type metadata accessor for Logger();
  sub_1000074E8(v0, qword_10005AA10);
  sub_100006C6C(v0, qword_10005AA10);
  v1 = sub_100029948();
  v2 = *v1;
  v3 = v1[1];

  return Logger.init(subsystem:category:)();
}

id sub_100032DE8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void sub_100032E2C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

id sub_100032E74()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void sub_100032EB8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_100032F84(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_100032FC4()
{
  v0 = *sub_100028E80();
}

uint64_t sub_100032FF8(unsigned __int8 a1)
{
  v2 = swift_allocObject();
  sub_100033048(a1);
  return v2;
}

uint64_t sub_100033048(unsigned __int8 a1)
{
  v2 = v1;
  *(v1 + 32) = 0;
  *(v1 + 40) = *sub_100028E80();
  v4 = objc_opt_self();

  v5 = [v4 liveLocalStore];
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = (v6 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  v39 = sub_1000335E4;
  v40 = v9;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_100033674;
  v38 = &unk_100052D18;
  v10 = _Block_copy(&aBlock);

  [v5 prepareWithCompletionHandler:v10];
  _Block_release(v10);
  swift_beginAccess();
  if (*(v8 + 16))
  {
    swift_willThrow();
    swift_errorRetain();

    v11 = v2[5];

    type metadata accessor for LogMonitor();
    swift_deallocPartialClassInstance();
    return v2;
  }

  result = swift_beginAccess();
  v13 = *v7;
  if (*v7)
  {
    v2[2] = v13;
    v2[3] = [objc_allocWithZone(OSLogEventLiveStream) initWithLiveSource:v13];
    v14 = (v2 + 3);
    if (qword_10005AA08 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006C6C(v15, qword_10005AA10);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      aBlock = v33;
      *v32 = 136446210;
      swift_beginAccess();
      v34 = v5;
      v18 = *v14;
      v19 = [v18 description];
      v31 = v16;
      v20 = a1;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v17;
      v23 = v22;

      v24 = sub_10000604C(v21, v23, &aBlock);

      *(v32 + 4) = v24;
      v5 = v34;
      _os_log_impl(&_mh_execute_header, v31, v30, "init stream %{public}s", v32, 0xCu);
      sub_100006D94(v33);

      v25 = v20;
      if (v20)
      {
        goto LABEL_8;
      }
    }

    else
    {

      v25 = a1;
      if (a1)
      {
LABEL_8:
        if (v25 == 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = 3;
        }

        goto LABEL_13;
      }
    }

    v26 = 0;
LABEL_13:
    swift_beginAccess();
    [*v14 setFlags:v26];
    swift_beginAccess();
    v27 = *v14;
    v39 = nullsub_1;
    v40 = 0;
    aBlock = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = sub_100033DFC;
    v38 = &unk_100052D40;
    v28 = _Block_copy(&aBlock);
    v29 = v27;
    [v29 setEventHandler:v28];
    _Block_release(v28);

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_100033534()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003356C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000335A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000335E4(void *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  swift_beginAccess();
  v7 = *(v5 + 16);
  *(v5 + 16) = a1;
  v8 = a1;

  swift_beginAccess();
  v9 = *(v6 + 16);
  *(v6 + 16) = a2;
  swift_errorRetain();
}

void sub_100033674(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_100033700(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003371C()
{
  v1 = v0;
  if (qword_10005AA08 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006C6C(v2, qword_10005AA10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "deinit called", v5, 2u);
  }

  swift_beginAccess();
  [*(v1 + 24) invalidate];
  swift_beginAccess();
  *(v1 + 32) = 0;

  v6 = *(v1 + 40);

  return v1;
}

uint64_t sub_100033858()
{
  sub_10003371C();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_10003388C(uint64_t (*a1)(), uint64_t a2)
{
  v5 = *(*v2 + 136);
  v6 = v5();
  v16 = a1;
  v17 = a2;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100033DFC;
  v15 = &unk_100052D68;
  v7 = _Block_copy(&v12);

  [v6 setEventHandler:v7];
  _Block_release(v7);

  v8 = v5();
  v16 = sub_100033D6C;
  v17 = v2;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100033DFC;
  v15 = &unk_100052D90;
  v9 = _Block_copy(&v12);

  [v8 setDroppedEventHandler:v9];
  _Block_release(v9);

  v10 = v5();
  [v10 activate];

  return (*(*v2 + 168))(1);
}

void sub_100033A70(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100033AD8()
{
  v1 = v0;
  if (qword_10005AA08 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006C6C(v2, qword_10005AA10);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10000604C(0x6164696C61766E69, 0xEC00000029286574, &v15);
    *(v5 + 12) = 2082;
    v6 = (*(*v0 + 136))();
    v7 = [v6 description];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = sub_10000604C(v8, v10, &v15);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Invalidating stream %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = (*(*v1 + 136))();
  [v12 invalidate];

  v13 = *(*v1 + 168);

  return v13(0);
}

uint64_t sub_100033D6C()
{
  sub_100001FDC(&qword_100057710, &unk_1000471C0);
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC14splunkloggingd10Statistics_droppedEvents);

  sub_1000287B8(v2, 1uLL);
}

uint64_t sub_100033E00()
{
  v0 = type metadata accessor for Logger();
  sub_1000074E8(v0, qword_10005AA38);
  sub_100006C6C(v0, qword_10005AA38);
  v1 = sub_100029948();
  v2 = *v1;
  v3 = v1[1];

  return Logger.init(subsystem:category:)();
}

uint64_t sub_100033E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10002E6E4();
  if (!v2)
  {
    if (result)
    {
      sub_10002E07C(v8);
      v23 = 0;
      v15 = *(v10 + 48);
      if (v15(v8, 1, v9) == 1)
      {
        sub_100007E2C(v8, &unk_100056B40, &unk_100045890);
        sub_1000223BC();
        swift_allocError();
        *v16 = 0xD000000000000030;
        *(v16 + 8) = 0x8000000100044860;
        *(v16 + 16) = 1;
        return swift_willThrow();
      }

      else
      {
        v22 = *(v10 + 32);
        v22(v13, v8, v9);
        if (v15(a1, 1, v9) != 1)
        {
          if (qword_10005AA30 != -1)
          {
            swift_once();
          }

          v17 = type metadata accessor for Logger();
          sub_100006C6C(v17, qword_10005AA38);
          v18 = Logger.logObject.getter();
          v19 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            *v20 = 0;
            _os_log_impl(&_mh_execute_header, v18, v19, "Manually passed audit table found, but configured to use SecureConfig. Ignoring passed table", v20, 2u);
          }
        }

        v22(a2, v13, v9);
        return (*(v10 + 56))(a2, 0, 1, v9);
      }
    }

    else
    {
      return sub_10001102C(a1, a2, &unk_100056B40, &unk_100045890);
    }
  }

  return result;
}

void sub_1000341A4()
{
  if (sub_10002B6E0())
  {
    v0 = swift_allocObject();
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    static os_log_type_t.default.getter();
    aBlock[4] = sub_10003B230;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100034620;
    aBlock[3] = &unk_100052E38;
    v1 = _Block_copy(aBlock);

    v2 = os_log_set_hook();
    _Block_release(v1);
    if (v2)
    {
      v3 = swift_allocObject();
      *(v3 + 16) = v2;
      v2 = sub_10003B288;
    }

    else
    {
      v3 = 0;
    }

    swift_beginAccess();
    v7 = *(v0 + 16);
    v8 = *(v0 + 24);
    *(v0 + 16) = v2;
    *(v0 + 24) = v3;
    sub_10002FA64(v7);
  }

  else
  {
    if (qword_10005AA30 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006C6C(v4, qword_10005AA38);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Logging to stdout is disabled, not setting log hook", v6, 2u);
    }
  }
}

uint64_t sub_1000343E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 || !*(a2 + 128))
  {
    goto LABEL_12;
  }

  v11 = String.init(cString:)();
  v13 = v12;
  v14 = sub_100029948();
  if (v11 == *v14 && v13 == v14[1])
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v17 = os_log_copy_decorated_message();
  if (v17)
  {
    v18 = v17;
    v28[1] = String.init(cString:)();
    v28[2] = v19;
    static CharacterSet.whitespacesAndNewlines.getter();
    sub_10001A48C();
    v20 = StringProtocol.trimmingCharacters(in:)();
    v22 = v21;
    (*(v7 + 8))(v10, v6);

    sub_100001FDC(&qword_100057F90, &unk_100047A20);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100045B50;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 32) = v20;
    *(v23 + 40) = v22;
    print(_:separator:terminator:)();

    free(v18);
    v24 = stdout.getter();
    fflush(v24);
  }

LABEL_12:
  result = swift_beginAccess();
  v26 = *(a3 + 16);
  if (v26)
  {
    v27 = *(a3 + 24);

    v26(a1, a2);
    return sub_10002FA64(v26);
  }

  return result;
}

uint64_t sub_100034620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_100034680@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14splunkloggingd6Daemon_config;
  swift_beginAccess();
  return sub_100020D08(v1 + v3, a1);
}

uint64_t sub_1000346D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14splunkloggingd6Daemon_config;
  swift_beginAccess();
  sub_10003B2A4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1000347A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14splunkloggingd6Daemon_configURL;
  swift_beginAccess();
  v4 = type metadata accessor for URL();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100034830(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14splunkloggingd6Daemon_configURL;
  swift_beginAccess();
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1000349B8()
{
  v1 = OBJC_IVAR____TtC14splunkloggingd6Daemon_rotatingBuffer;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_100034A00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14splunkloggingd6Daemon_rotatingBuffer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100034AC4(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_100034B14(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

void *sub_100034BE8()
{
  v1 = OBJC_IVAR____TtC14splunkloggingd6Daemon_filterPredicate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100034C34(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14splunkloggingd6Daemon_filterPredicate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100034D0C()
{
  v1 = (*(**(v0 + 16) + 272))();
  if (v1)
  {
    (*(*v1 + 200))(v1);
  }

  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC14splunkloggingd6Daemon_panicMonitor);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_100019CD8;

  return sub_100018384();
}

uint64_t sub_100034E10()
{
  v1[2] = v0;
  v2 = type metadata accessor for Configuration();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100034EBC, v0, 0);
}

uint64_t sub_100034EBC()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC14splunkloggingd6Daemon_configMonitor);
  v0[7] = v1;
  v2 = *(*v1 + 144);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_100034FF0;
  v5 = v0[2];

  return (v7)(v5, &off_100052EB0);
}

uint64_t sub_100034FF0()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_100035100, v2, 0);
}

uint64_t sub_100035100()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC14splunkloggingd6Daemon_panicMonitor);
  v0[9] = v1;
  v2 = *(*v1 + 176);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100035234;
  v5 = v0[2];

  return (v7)(v5, &off_100052E88);
}

uint64_t sub_100035234()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_100035344, v2, 0);
}

uint64_t sub_100035344()
{
  v1 = v0[7];
  v2 = *(v0[2] + OBJC_IVAR____TtC14splunkloggingd6Daemon_crashMonitor);
  v0[11] = v2;
  v3 = *((swift_isaMask & *v2) + 0x68);
  v4 = swift_unknownObjectRetain();
  v3(v4, &off_100052E98);
  v5 = *(*v1 + 128);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_1000354C0;
  v8 = v0[7];

  return v10();
}

uint64_t sub_1000354C0()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 72);
  v10 = *v0;

  v4 = *(*v3 + 168);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v1 + 104) = v6;
  *v6 = v10;
  v6[1] = sub_10003568C;
  v7 = *(v1 + 72);

  return v9();
}

uint64_t sub_10003568C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_10003579C, v2, 0);
}

uint64_t sub_10003579C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  (*((swift_isaMask & **(v0 + 88)) + 0x90))();
  sub_10002AC8C();

  type metadata accessor for SplunkEventRotatingBuffer();
  v6 = *(*v5 + 176);
  v6();
  v7 = *(v1 + v4[10]);
  v8 = sub_100020C58(v1);
  (v6)(v8);
  v9 = *(v2 + v4[9]);
  v10 = sub_100020C58(v2);
  (v6)(v10);
  v11 = *(v3 + v4[8]);
  sub_100020C58(v3);
  v12 = sub_100015B64(v7, v9);
  v13 = (*(*v5 + 256))(v12);
  v14 = (*(*v5 + 248))(v13);
  (*(*v5 + 224))();
  (*(*v14 + 152))();

  sub_100035A70();
  if (*(v5 + OBJC_IVAR____TtC14splunkloggingd6Daemon_interactive) == 1)
  {
    v15 = *(v0 + 16);
    v16 = sub_100031F50(&off_100052DB8);
    v18 = v17;

    sub_100032340(sub_10003B308, v15, v16, v18);
  }

  v20 = *(v0 + 40);
  v19 = *(v0 + 48);
  v21 = *(v0 + 32);

  v22 = *(v0 + 8);

  return v22();
}

void sub_100035A70()
{
  v1 = v0;
  v2 = type metadata accessor for Configuration();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*v0 + 272))(v4);
  if (v7)
  {
    (*(*v7 + 200))(v7);
  }

  v8 = (*v0 + 280);
  v9 = *v8;
  v10 = (*v8)(0);
  v11 = (*(*v0 + 296))(v10);
  if (v11)
  {
    v12 = v11;
    type metadata accessor for LogMonitor();
    (*(*v0 + 176))();
    v13 = v6[*(v2 + 44)];
    sub_100020C58(v6);
    v18 = sub_100032FF8(v13);
    v19 = *(*v18 + 136);

    v20 = v19();

    v47[0] = 0;
    v21 = [v20 assignFilterPredicate:v12 error:v47];

    if (v21)
    {
      v22 = v47[0];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100006D94(v47);
      v23 = *(*v18 + 192);

      v23(sub_10003B860, v1);

      if (qword_10005AA30 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100006C6C(v24, qword_10005AA38);
      v25 = v12;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138543362;
        *(v28 + 4) = v25;
        *v29 = v12;
        v30 = v25;
        _os_log_impl(&_mh_execute_header, v26, v27, "Activated stream with predicate: %{public}@", v28, 0xCu);
        sub_100007E2C(v29, &qword_100056C40, &unk_100045BE0);
      }

      v9(v31);
    }

    else
    {
      v32 = v47[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_10005AA30 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_100006C6C(v33, qword_10005AA38);
      v34 = v12;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138543362;
        *(v37 + 4) = v34;
        *v38 = v12;
        v39 = v34;
        _os_log_impl(&_mh_execute_header, v35, v36, "Unable to assign predicate to log monitor: %{public}@", v37, 0xCu);
        sub_100007E2C(v38, &qword_100056C40, &unk_100045BE0);
      }

      swift_errorRetain();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138543362;
        swift_errorRetain();
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v44;
        *v43 = v44;
        _os_log_impl(&_mh_execute_header, v40, v41, "Log monitor assignment error: %{public}@", v42, 0xCu);
        sub_100007E2C(v43, &qword_100056C40, &unk_100045BE0);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_10005AA30 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006C6C(v14, qword_10005AA38);
    v46 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v46, v15, "No predicate, so not activating log monitor", v16, 2u);
    }

    v17 = v46;
  }
}

uint64_t sub_1000362DC()
{
  *(v1 + 80) = v0;
  v2 = *(*v0 + 328);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 88) = v4;
  *v4 = v1;
  v4[1] = sub_1000363F8;

  return v6();
}

uint64_t sub_1000363F8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 80);
    sub_10003B818(&qword_100057DC0, type metadata accessor for Daemon);
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10003657C, v9, v8);
  }
}

uint64_t sub_10003657C()
{
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_100036608;
  swift_continuation_init();

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100036608()
{
  v3 = *v0;
  v1 = *(*v0 + 8);

  return v1();
}

void sub_1000366E4()
{
  v1 = v0;
  v2 = sub_100001FDC(&unk_100057530, &unk_100046FC0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v55 = v47 - v4;
  v5 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v47 - v7;
  v9 = type metadata accessor for Configuration();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v53 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v52 = v47 - v14;
  __chkstk_darwin(v13);
  v16 = v47 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v50 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v51 = v47 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = v47 - v25;
  v27 = *(*v0 + 176);
  v27(v24);
  v54 = v9;
  sub_10001102C(&v16[*(v9 + 20)], v8, &unk_100056B40, &unk_100045890);
  v28 = v16;
  v29 = v17;
  sub_100020C58(v28);
  if ((*(v18 + 48))(v8, 1, v17) == 1)
  {
    sub_100007E2C(v8, &unk_100056B40, &unk_100045890);
    if (qword_10005AA30 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100006C6C(v30, qword_10005AA38);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to update SplunkEventOffloader: server not present", v33, 2u);
    }
  }

  else
  {
    (*(v18 + 32))(v26, v8, v17);
    v47[2] = type metadata accessor for SplunkEventOffloader();
    v49 = v18;
    v34 = v51;
    v47[0] = *(v18 + 16);
    v47[1] = v18 + 16;
    v35 = (v47[0])(v51, v26, v29);
    v36 = v52;
    v27(v35);
    v37 = v54;
    v38 = (v36 + *(v54 + 24));
    v48 = v29;
    v39 = *v38;
    v40 = v38[1];

    v41 = sub_100020C58(v36);
    v42 = v53;
    v27(v41);
    v43 = v55;
    sub_10001102C(v42 + *(v37 + 28), v55, &unk_100057530, &unk_100046FC0);
    sub_100020C58(v42);
    v44 = sub_100026A1C(v34, v39, v40, v43);
    v45 = (*(*v1 + 232))(v44);
    v46 = (*(*v1 + 248))(v45);
    (*(*v1 + 224))();
    (*(*v46 + 152))();

    (*(v49 + 8))(v26, v48);
  }
}

uint64_t sub_100036FD0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 48);
  v11 = *(v4 + 52);
  swift_allocObject();
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1000370A0;

  return sub_1000371A0(a1, a2, a3, a4);
}

uint64_t sub_1000370A0(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1000371A0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 128) = a4;
  *(v5 + 136) = v4;
  *(v5 + 320) = a2;
  *(v5 + 112) = a1;
  *(v5 + 120) = a3;
  v6 = *(*(sub_100001FDC(&unk_100057530, &unk_100046FC0) - 8) + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  v7 = *(*(sub_100001FDC(&unk_100056B40, &unk_100045890) - 8) + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  v8 = type metadata accessor for URL();
  *(v5 + 168) = v8;
  v9 = *(v8 - 8);
  *(v5 + 176) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_100037314, 0, 0);
}

uint64_t sub_100037314()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = *(v0 + 320);
  v8 = *(v0 + 112);
  v7 = *(v0 + 120);
  swift_defaultActor_initialize();
  v9 = OBJC_IVAR____TtC14splunkloggingd6Daemon_offloader;
  *(v0 + 224) = OBJC_IVAR____TtC14splunkloggingd6Daemon_offloader;
  *(v5 + v9) = 0;
  v10 = OBJC_IVAR____TtC14splunkloggingd6Daemon_logMonitor;
  *(v5 + OBJC_IVAR____TtC14splunkloggingd6Daemon_logMonitor) = 0;
  *(v5 + OBJC_IVAR____TtC14splunkloggingd6Daemon_filterPredicate) = 0;
  sub_1000341A4();
  v11 = OBJC_IVAR____TtC14splunkloggingd6Daemon_config;
  *(v0 + 232) = OBJC_IVAR____TtC14splunkloggingd6Daemon_config;
  sub_100020D08(v8, v5 + v11);
  *(v5 + OBJC_IVAR____TtC14splunkloggingd6Daemon_interactive) = v6;
  v12 = OBJC_IVAR____TtC14splunkloggingd6Daemon_configURL;
  v13 = *(v2 + 16);
  *(v0 + 240) = v13;
  *(v0 + 248) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v5 + v12, v7, v1);
  swift_beginAccess();
  v14 = *(v5 + v10);
  *(v5 + v10) = 0;

  sub_100033E80(v4, v3);
  v16 = *(v0 + 168);
  v15 = *(v0 + 176);
  v17 = *(v0 + 160);
  v18 = *(v15 + 48);
  *(v0 + 256) = v18;
  *(v0 + 264) = (v15 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v18(v17, 1, v16) == 1)
  {
    v19 = *(v0 + 136);
    sub_100007E2C(v17, &unk_100056B40, &unk_100045890);
    *(v19 + OBJC_IVAR____TtC14splunkloggingd6Daemon_systemAuditTable) = 0;
    if (qword_10005AA30 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006C6C(v20, qword_10005AA38);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Not using audit table, as none required and none passed", v23, 2u);
    }
  }

  else
  {
    v25 = *(v0 + 208);
    v24 = *(v0 + 216);
    (*(v15 + 32))(v24, v17, v16);
    type metadata accessor for AuditTable();
    v13(v25, v24, v16);
    v26 = sub_1000127D8(v25);
    v27 = *(v0 + 136);
    (*(*(v0 + 176) + 8))(*(v0 + 216), *(v0 + 168));
    *(v27 + OBJC_IVAR____TtC14splunkloggingd6Daemon_systemAuditTable) = v26;
  }

  *(v0 + 272) = 0;
  v28 = *(v0 + 200);
  v29 = *(v0 + 168);
  v30 = *(v0 + 120);
  type metadata accessor for ConfigurationMonitor();
  v13(v28, v30, v29);
  v31 = swift_task_alloc();
  *(v0 + 280) = v31;
  *v31 = v0;
  v31[1] = sub_100037958;
  v32 = *(v0 + 200);

  return sub_10001F368(v32);
}

uint64_t sub_100037958(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = a1;

  return _swift_task_switch(sub_100037A58, 0, 0);
}

uint64_t sub_100037A58()
{
  v1 = v0[25];
  v2 = v0[17];
  v3 = v2 + v0[29];
  *(v2 + OBJC_IVAR____TtC14splunkloggingd6Daemon_configMonitor) = v0[36];
  type metadata accessor for SplunkEventRotatingBuffer();
  swift_beginAccess();
  v4 = type metadata accessor for Configuration();
  v0[37] = v4;
  v5 = *(v3 + v4[8]);
  *(v2 + OBJC_IVAR____TtC14splunkloggingd6Daemon_rotatingBuffer) = sub_100015B64(*(v3 + v4[10]), *(v3 + v4[9]));
  type metadata accessor for PanicMonitor();
  sub_100016400(v1);
  v6 = swift_task_alloc();
  v0[38] = v6;
  *v6 = v0;
  v6[1] = sub_100037B84;
  v7 = v0[25];

  return sub_1000167A4(v7);
}

uint64_t sub_100037B84(uint64_t a1)
{
  v2 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = a1;

  return _swift_task_switch(sub_100037C84, 0, 0);
}

uint64_t sub_100037C84()
{
  v1 = *(v0 + 136);
  *(v1 + OBJC_IVAR____TtC14splunkloggingd6Daemon_panicMonitor) = *(v0 + 312);
  type metadata accessor for CrashMonitor();
  v2 = sub_100009FD0();
  *(v1 + OBJC_IVAR____TtC14splunkloggingd6Daemon_crashMonitor) = sub_10000C804(v2);

  return _swift_task_switch(sub_100037D18, v1, 0);
}

uint64_t sub_100037D18()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[21];
  v4 = v0[19];
  sub_10001102C(v0[17] + v0[29] + *(v0[37] + 20), v4, &unk_100056B40, &unk_100045890);
  if (v2(v4, 1, v3) == 1)
  {
    v5 = v0[21];
    v6 = v0[22];
    v7 = v0[19];
    v8 = v0[15];
    v9 = v0[14];
    sub_100007E2C(v0[16], &unk_100056B40, &unk_100045890);
    (*(v6 + 8))(v8, v5);
    sub_100020C58(v9);
    sub_100007E2C(v7, &unk_100056B40, &unk_100045890);
LABEL_12:
    v60 = v0[26];
    v59 = v0[27];
    v62 = v0[24];
    v61 = v0[25];
    v63 = v0[23];
    v65 = v0[19];
    v64 = v0[20];
    v66 = v0[18];

    v67 = v0[1];
    v68 = v0[17];

    return v67(v68);
  }

  v10 = v0[37];
  v69 = v0[34];
  v12 = v0[30];
  v11 = v0[31];
  v13 = v0[23];
  v14 = v0[24];
  v15 = v0[21];
  v16 = v0[18];
  v17 = v0[17] + v0[29];
  (*(v0[22] + 32))(v14, v0[19], v15);
  type metadata accessor for SplunkEventOffloader();
  v12(v13, v14, v15);
  v18 = (v17 + *(v10 + 24));
  v19 = *v18;
  v20 = v18[1];
  sub_10001102C(v17 + *(v10 + 28), v16, &unk_100057530, &unk_100046FC0);

  v21 = sub_100026A1C(v13, v19, v20, v16);
  if (!v69)
  {
    v47 = v0[28];
    v70 = v0[24];
    v48 = v0[21];
    v49 = v0[22];
    v51 = v0[16];
    v50 = v0[17];
    v52 = v0[14];
    v53 = v0[15];
    v54 = v21;
    swift_beginAccess();
    v55 = *(v50 + v47);
    *(v50 + v47) = v54;

    v56 = OBJC_IVAR____TtC14splunkloggingd6Daemon_rotatingBuffer;
    swift_beginAccess();
    v57 = *(**(v50 + v56) + 152);

    v57(v54, &off_100052750);

    sub_100007E2C(v51, &unk_100056B40, &unk_100045890);
    v58 = *(v49 + 8);
    v58(v53, v48);
    sub_100020C58(v52);
    v58(v70, v48);
    goto LABEL_12;
  }

  if (qword_10005AA30 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006C6C(v22, qword_10005AA38);
  swift_errorRetain();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138543362;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v27;
    *v26 = v27;
    _os_log_impl(&_mh_execute_header, v23, v24, "Daemon init error while creating offloader: %{public}@", v25, 0xCu);
    sub_100007E2C(v26, &qword_100056C40, &unk_100045BE0);
  }

  v28 = v0[24];
  v29 = v23;
  v31 = v0[21];
  v30 = v0[22];
  v33 = v0[16];
  v32 = v0[17];
  v35 = v0[14];
  v34 = v0[15];

  swift_willThrow();
  v36 = *(v30 + 8);
  v36(v28, v31);
  sub_100007E2C(v33, &unk_100056B40, &unk_100045890);
  v36(v34, v31);
  sub_100020C58(v35);

  v38 = v0[26];
  v37 = v0[27];
  v40 = v0[24];
  v39 = v0[25];
  v41 = v0[23];
  v43 = v0[19];
  v42 = v0[20];
  v44 = v0[18];

  v45 = v0[1];

  return v45();
}

uint64_t sub_100038268()
{
  sub_100020C58(v0 + OBJC_IVAR____TtC14splunkloggingd6Daemon_config);
  v1 = OBJC_IVAR____TtC14splunkloggingd6Daemon_configURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14splunkloggingd6Daemon_systemAuditTable);

  v4 = *(v0 + OBJC_IVAR____TtC14splunkloggingd6Daemon_configMonitor);

  v5 = *(v0 + OBJC_IVAR____TtC14splunkloggingd6Daemon_offloader);

  v6 = *(v0 + OBJC_IVAR____TtC14splunkloggingd6Daemon_rotatingBuffer);

  v7 = *(v0 + OBJC_IVAR____TtC14splunkloggingd6Daemon_logMonitor);

  v8 = *(v0 + OBJC_IVAR____TtC14splunkloggingd6Daemon_panicMonitor);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100038360()
{
  sub_100038268();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10003838C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Configuration();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100038430, v2, 0);
}

uint64_t sub_100038430()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(**(v0 + 32) + 176);
  v3();
  v4 = *(v1 + *(v2 + 60));
  v5 = sub_100020C58(v1);
  if (v4)
  {
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v8 = *(v0 + 32);
    v9 = *(v0 + 40);
    v10 = *(v0 + 16);
    v43 = *(v0 + 24);
    (v3)(v5);
    v11 = (v6 + *(v9 + 24));
    v12 = *v11;
    v13 = v11[1];

    v14 = sub_100020C58(v6);
    (v3)(v14);
    v15 = *(v7 + *(v9 + 52));

    sub_100020C58(v7);
    v16 = sub_10002D6BC(v10, v43, 0, v12, v13, v15);
    v18 = v17;
    LOBYTE(v6) = v19;

    if (v6)
    {
      sub_100008014(*(v0 + 16), *(v0 + 24), sub_100007F28);
      v16 = *(v0 + 16);
      v18 = *(v0 + 24);
    }

    *(v0 + 64) = v16;
    *(v0 + 72) = v18;
    v20 = *(v0 + 32);
    sub_100001FDC(&qword_100057710, &unk_1000471C0);
    v21 = sub_100028E80();
    v22 = *(*v21 + OBJC_IVAR____TtC14splunkloggingd10Statistics_processedEvents);

    sub_1000287B8(v23, 1uLL);

    (*(*v20 + 248))(v24);
    v25 = sub_100015ED8(v16, v18);

    if ((v25 & 1) == 0)
    {
      v26 = *(*v21 + OBJC_IVAR____TtC14splunkloggingd10Statistics_skippedEvents);

      sub_1000287B8(v27, 1uLL);
    }

    v28 = *(v0 + 32);
    v29 = *(*v21 + OBJC_IVAR____TtC14splunkloggingd10Statistics_panicReports);

    sub_1000287B8(v30, 1uLL);

    v31 = *(v28 + OBJC_IVAR____TtC14splunkloggingd6Daemon_panicMonitor);
    v32 = swift_task_alloc();
    *(v0 + 80) = v32;
    *v32 = v0;
    v32[1] = sub_100038840;

    return sub_100018384();
  }

  else
  {
    if (qword_10005AA30 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100006C6C(v34, qword_10005AA38);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Panic forwarding disabled, dropping panic", v37, 2u);
    }

    sub_100001FDC(&qword_100057710, &unk_1000471C0);
    v38 = *(*sub_100028E80() + OBJC_IVAR____TtC14splunkloggingd10Statistics_skippedEvents);

    sub_1000287B8(v39, 1uLL);

    v41 = *(v0 + 48);
    v40 = *(v0 + 56);

    v42 = *(v0 + 8);

    return v42();
  }
}

uint64_t sub_100038840()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_100038950, v2, 0);
}

uint64_t sub_100038950()
{
  sub_100008014(v0[8], v0[9], sub_10000803C);
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000389D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000073F4;

  return sub_10003838C(a1, a2);
}

uint64_t sub_100038A78(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Configuration();
  v7 = *(*(v6 - 1) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v46 - v12;
  v14 = *(*v2 + 176);
  v14(v11);
  v15 = v13[v6[14]];
  v16 = sub_100020C58(v13);
  if (v15)
  {
    v14(v16);
    v17 = &v13[v6[6]];
    v18 = v17[1];
    v46 = *v17;

    v19 = sub_100020C58(v13);
    v14(v19);
    v20 = a2;
    v21 = *&v10[v6[13]];

    sub_100020C58(v10);
    v22 = sub_10002D6BC(a1, a2, 0, v46, v18, v21);
    v24 = v23;
    v26 = v25;

    if (v26)
    {
      sub_100008014(a1, v20, sub_100007F28);
    }

    else
    {
      a1 = v22;
      v20 = v24;
    }

    sub_100001FDC(&qword_100057710, &unk_1000471C0);
    v38 = sub_100028E80();
    v39 = *(*v38 + OBJC_IVAR____TtC14splunkloggingd10Statistics_processedEvents);

    sub_1000287B8(v40, 1uLL);

    (*(*v3 + 248))(v41);
    v42 = sub_100015ED8(a1, v20);

    if (v42)
    {
      return sub_100008014(a1, v20, sub_10000803C);
    }

    v44 = *(*v38 + OBJC_IVAR____TtC14splunkloggingd10Statistics_skippedEvents);

    sub_1000287B8(v45, 1uLL);
    sub_100008014(a1, v20, sub_10000803C);
  }

  else
  {
    if (qword_10005AA30 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100006C6C(v27, qword_10005AA38);
    sub_100008014(a1, a2, sub_100007F28);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    sub_100008014(a1, a2, sub_10000803C);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v48 = a2;
      v49 = v31;
      *v30 = 136446210;
      v47 = a1;
      sub_100008014(a1, a2, sub_100007F28);
      sub_1000280D0();
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      sub_100008014(v47, v48, sub_10000803C);
      v35 = sub_10000604C(v32, v34, &v49);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "Crash forwarding disabled, dropping event of type %{public}s", v30, 0xCu);
      sub_100006D94(v31);
    }

    sub_100001FDC(&qword_100057710, &unk_1000471C0);
    v36 = *(*sub_100028E80() + OBJC_IVAR____TtC14splunkloggingd10Statistics_skippedEvents);

    sub_1000287B8(v37, 1uLL);
  }
}

uint64_t sub_100038F34(uint64_t a1, unint64_t a2)
{
  sub_100038A78(a1, a2);
  sub_100001FDC(&qword_100057710, &unk_1000471C0);
  v2 = *(*sub_100028E80() + OBJC_IVAR____TtC14splunkloggingd10Statistics_jetsamReports);

  sub_1000287B8(v3, 1uLL);
}

uint64_t sub_100038FA8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100038FCC, v2, 0);
}

uint64_t sub_100038FCC()
{
  v1 = v0[4];
  sub_100038A78(v0[2], v0[3]);
  sub_100001FDC(&qword_100057710, &unk_1000471C0);
  v2 = *(*sub_100028E80() + OBJC_IVAR____TtC14splunkloggingd10Statistics_crashReports);

  sub_1000287B8(v3, 1uLL);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100039078(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10003909C, v2, 0);
}

uint64_t sub_10003909C()
{
  v1 = v0[4];
  sub_100038A78(v0[2], v0[3]);
  sub_100001FDC(&qword_100057710, &unk_1000471C0);
  v2 = *(*sub_100028E80() + OBJC_IVAR____TtC14splunkloggingd10Statistics_jetsamReports);

  sub_1000287B8(v3, 1uLL);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100039148(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_100001FDC(&qword_100057500, &qword_100046F40);
  v2[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = *(*(sub_100001FDC(&unk_100057530, &unk_100046FC0) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v12 = sub_100001FDC(&qword_100057508, qword_100046F48);
  v2[14] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v14 = *(*(sub_100001FDC(&unk_100056B40, &unk_100045890) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v15 = type metadata accessor for Configuration();
  v2[18] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_1000393D0, v1, 0);
}

uint64_t sub_1000393D0()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 96);
  v132 = *(v0 + 88);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = *(*v7 + 176);
  v10 = (*v7 + 176) & 0xFFFFFFFFFFFFLL | 0xF7A000000000000;
  *(v0 + 200) = v9;
  *(v0 + 208) = v10;
  v136 = v9;
  v9();
  sub_10001102C(v1 + *(v3 + 20), v2, &unk_100056B40, &unk_100045890);
  sub_100020C58(v1);
  v11 = *(v3 + 20);
  v12 = *(v5 + 48);
  sub_10001102C(v2, v4, &unk_100056B40, &unk_100045890);
  sub_10001102C(v8 + v11, v4 + v12, &unk_100056B40, &unk_100045890);
  v13 = *(v6 + 48);
  if (v13(v4, 1, v132) == 1)
  {
    v14 = *(v0 + 88);
    sub_100007E2C(*(v0 + 136), &unk_100056B40, &unk_100045890);
    v15 = v136;
    if (v13(v4 + v12, 1, v14) == 1)
    {
      v16 = sub_100007E2C(*(v0 + 120), &unk_100056B40, &unk_100045890);
      goto LABEL_8;
    }

LABEL_6:
    v23 = *(v0 + 120);
    v24 = &qword_100057508;
    v25 = qword_100046F48;
LABEL_18:
    v16 = sub_100007E2C(v23, v24, v25);
    goto LABEL_19;
  }

  v17 = *(v0 + 88);
  sub_10001102C(*(v0 + 120), *(v0 + 128), &unk_100056B40, &unk_100045890);
  v18 = v13(v4 + v12, 1, v17);
  v19 = *(v0 + 128);
  v20 = *(v0 + 136);
  if (v18 == 1)
  {
    v22 = *(v0 + 88);
    v21 = *(v0 + 96);
    sub_100007E2C(*(v0 + 136), &unk_100056B40, &unk_100045890);
    (*(v21 + 8))(v19, v22);
    v15 = v136;
    goto LABEL_6;
  }

  v26 = *(v0 + 120);
  v28 = *(v0 + 96);
  v27 = *(v0 + 104);
  v29 = *(v0 + 88);
  (*(v28 + 32))(v27, v4 + v12, v29);
  sub_10003B818(&qword_100057518, &type metadata accessor for URL);
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  v31 = *(v28 + 8);
  v31(v27, v29);
  sub_100007E2C(v20, &unk_100056B40, &unk_100045890);
  v31(v19, v29);
  v16 = sub_100007E2C(v26, &unk_100056B40, &unk_100045890);
  v15 = v136;
  if ((v30 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_8:
  v32 = *(v0 + 184);
  v33 = *(v0 + 144);
  v35 = *(v0 + 16);
  v34 = *(v0 + 24);
  (v15)(v16);
  v36 = (v32 + *(v33 + 24));
  v37 = *v36;
  v38 = v36[1];

  sub_100020C58(v32);
  v39 = (v35 + *(v33 + 24));
  if (v37 == *v39 && v38 == v39[1])
  {

    goto LABEL_12;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v40 & 1) == 0)
  {
LABEL_19:
    v54 = 1;
    goto LABEL_20;
  }

LABEL_12:
  v41 = *(v0 + 176);
  v42 = *(v0 + 144);
  v43 = *(v0 + 80);
  v45 = *(v0 + 56);
  v44 = *(v0 + 64);
  v46 = v15;
  v47 = *(v0 + 40);
  v133 = *(v0 + 32);
  v49 = *(v0 + 16);
  v48 = *(v0 + 24);
  (v46)(v16);
  sub_10001102C(v41 + *(v42 + 28), v43, &unk_100057530, &unk_100046FC0);
  sub_100020C58(v41);
  v50 = *(v42 + 28);
  v51 = *(v45 + 48);
  sub_10001102C(v43, v44, &unk_100057530, &unk_100046FC0);
  sub_10001102C(v49 + v50, v44 + v51, &unk_100057530, &unk_100046FC0);
  v52 = *(v47 + 48);
  if (v52(v44, 1, v133) != 1)
  {
    v55 = *(v0 + 32);
    sub_10001102C(*(v0 + 64), *(v0 + 72), &unk_100057530, &unk_100046FC0);
    v56 = v52(v44 + v51, 1, v55);
    v57 = *(v0 + 72);
    v58 = *(v0 + 80);
    if (v56 != 1)
    {
      v125 = *(v0 + 64);
      v127 = *(v0 + 40);
      v126 = *(v0 + 48);
      v128 = *(v0 + 32);
      (*(v127 + 32))(v126, v44 + v51, v128);
      sub_10003B818(&qword_100057510, &type metadata accessor for UUID);
      v129 = dispatch thunk of static Equatable.== infix(_:_:)();
      v130 = *(v127 + 8);
      v130(v126, v128);
      sub_100007E2C(v58, &unk_100057530, &unk_100046FC0);
      v130(v57, v128);
      v16 = sub_100007E2C(v125, &unk_100057530, &unk_100046FC0);
      v15 = v136;
      if (v129)
      {
        v54 = 0;
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v60 = *(v0 + 32);
    v59 = *(v0 + 40);
    sub_100007E2C(*(v0 + 80), &unk_100057530, &unk_100046FC0);
    (*(v59 + 8))(v57, v60);
    v15 = v136;
    goto LABEL_17;
  }

  v53 = *(v0 + 32);
  sub_100007E2C(*(v0 + 80), &unk_100057530, &unk_100046FC0);
  v15 = v136;
  if (v52(v44 + v51, 1, v53) != 1)
  {
LABEL_17:
    v23 = *(v0 + 64);
    v24 = &qword_100057500;
    v25 = &qword_100046F40;
    goto LABEL_18;
  }

  v16 = sub_100007E2C(*(v0 + 64), &unk_100057530, &unk_100046FC0);
  v54 = 0;
LABEL_20:
  *(v0 + 242) = v54;
  v61 = *(v0 + 168);
  v62 = *(v0 + 144);
  v64 = *(v0 + 16);
  v63 = *(v0 + 24);
  (v15)(v16);
  v65 = *(v61 + *(v62 + 32));
  v66 = sub_100020C58(v61);
  if (v65 != *(v64 + *(v62 + 32)))
  {
    goto LABEL_24;
  }

  v67 = *(v0 + 168);
  v68 = *(v0 + 144);
  v70 = *(v0 + 16);
  v69 = *(v0 + 24);
  (v15)(v66);
  v71 = *(v67 + *(v68 + 36));
  v66 = sub_100020C58(v67);
  if (v71 != *(v70 + *(v68 + 36)))
  {
    goto LABEL_24;
  }

  v72 = *(v0 + 168);
  v73 = *(v0 + 144);
  v75 = *(v0 + 16);
  v74 = *(v0 + 24);
  (v15)(v66);
  v76 = *(v72 + *(v73 + 40));
  v66 = sub_100020C58(v72);
  if (v76 == *(v75 + *(v73 + 40)))
  {
    v77 = 0;
  }

  else
  {
LABEL_24:
    v77 = 1;
  }

  *(v0 + 243) = v77;
  v78 = *(v0 + 168);
  v79 = *(v0 + 144);
  v81 = *(v0 + 16);
  v80 = *(v0 + 24);
  (v15)(v66);
  v82 = *(v78 + *(v79 + 44));
  sub_100020C58(v78);
  *(v0 + 240) = v82;
  *(v0 + 241) = *(v81 + *(v79 + 44));
  sub_10002192C();
  v83 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15();
  v84 = *(v78 + *(v79 + 48));

  sub_100020C58(v78);
  v85 = *(v81 + *(v79 + 48));
  LOBYTE(v78) = sub_10001E5C4(v84, v85);

  if (v78)
  {
    v87 = v83 ^ 1;
  }

  else
  {
    v88 = *(v0 + 24);
    v86 = sub_10003A5D8(v85);
    v87 = 1;
  }

  *(v0 + 244) = v87 & 1;
  v89 = *(v0 + 168);
  v90 = *(v0 + 144);
  v92 = *(v0 + 16);
  v91 = *(v0 + 24);
  (v15)(v86);
  LODWORD(v91) = *(v89 + *(v90 + 60));
  sub_100020C58(v89);
  v93 = *(v92 + *(v90 + 60));
  *(v0 + 245) = v93;
  if (v91 == v93)
  {
    v96 = *(v0 + 242);
    v97 = *(v0 + 168);
    v98 = *(v0 + 24);
    sub_100020D08(*(v0 + 16), v97);
    (*(*v98 + 184))(v97);
    if (v96 == 1)
    {
      v99 = *(v0 + 24);
      sub_1000366E4();
    }

    if (*(v0 + 243) == 1)
    {
      v101 = *(v0 + 200);
      v100 = *(v0 + 208);
      v103 = *(v0 + 160);
      v102 = *(v0 + 168);
      v105 = *(v0 + 144);
      v104 = *(v0 + 152);
      v106 = *(v0 + 24);
      type metadata accessor for SplunkEventRotatingBuffer();
      v101();
      v107 = *(v102 + v105[10]);
      v108 = sub_100020C58(v102);
      (v101)(v108);
      v109 = *(v103 + v105[9]);
      v110 = sub_100020C58(v103);
      (v101)(v110);
      v111 = *(v104 + v105[8]);
      sub_100020C58(v104);
      v112 = sub_100015B64(v107, v109);
      (*(*v106 + 256))(v112);
    }

    if (*(v0 + 244) == 1)
    {
      v113 = *(v0 + 24);
      sub_100035A70();
    }

    v115 = *(v0 + 184);
    v114 = *(v0 + 192);
    v117 = *(v0 + 168);
    v116 = *(v0 + 176);
    v119 = *(v0 + 152);
    v118 = *(v0 + 160);
    v121 = *(v0 + 128);
    v120 = *(v0 + 136);
    v122 = *(v0 + 120);
    v123 = *(v0 + 104);
    v131 = *(v0 + 80);
    v134 = *(v0 + 72);
    v135 = *(v0 + 64);
    v137 = *(v0 + 48);

    v124 = *(v0 + 8);

    return v124();
  }

  else
  {
    *(v0 + 216) = *(*(v0 + 24) + OBJC_IVAR____TtC14splunkloggingd6Daemon_panicMonitor);
    v94 = swift_task_alloc();
    *(v0 + 224) = v94;
    *v94 = v0;
    v94[1] = sub_100039E30;

    return sub_100018384();
  }
}

uint64_t sub_100039E30()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_100039F40, v2, 0);
}

uint64_t sub_100039F40()
{
  if (*(v0 + 245) == 1)
  {
    v1 = *(**(v0 + 216) + 168);
    v38 = (v1 + *v1);
    v2 = v1[1];
    v3 = swift_task_alloc();
    *(v0 + 232) = v3;
    *v3 = v0;
    v3[1] = sub_10003A28C;
    v4 = *(v0 + 216);

    return v38();
  }

  else
  {
    v6 = *(v0 + 242);
    v7 = *(v0 + 168);
    v8 = *(v0 + 24);
    sub_100020D08(*(v0 + 16), v7);
    (*(*v8 + 184))(v7);
    if (v6 == 1)
    {
      v9 = *(v0 + 24);
      sub_1000366E4();
    }

    if (*(v0 + 243) == 1)
    {
      v11 = *(v0 + 200);
      v10 = *(v0 + 208);
      v13 = *(v0 + 160);
      v12 = *(v0 + 168);
      v15 = *(v0 + 144);
      v14 = *(v0 + 152);
      v16 = *(v0 + 24);
      type metadata accessor for SplunkEventRotatingBuffer();
      v11();
      v17 = *(v12 + v15[10]);
      v18 = sub_100020C58(v12);
      (v11)(v18);
      v19 = *(v13 + v15[9]);
      v20 = sub_100020C58(v13);
      (v11)(v20);
      v21 = *(v14 + v15[8]);
      sub_100020C58(v14);
      v22 = sub_100015B64(v17, v19);
      (*(*v16 + 256))(v22);
    }

    if (*(v0 + 244) == 1)
    {
      v23 = *(v0 + 24);
      sub_100035A70();
    }

    v25 = *(v0 + 184);
    v24 = *(v0 + 192);
    v27 = *(v0 + 168);
    v26 = *(v0 + 176);
    v29 = *(v0 + 152);
    v28 = *(v0 + 160);
    v31 = *(v0 + 128);
    v30 = *(v0 + 136);
    v32 = *(v0 + 120);
    v33 = *(v0 + 104);
    v35 = *(v0 + 80);
    v36 = *(v0 + 72);
    v37 = *(v0 + 64);
    v39 = *(v0 + 48);

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_10003A28C()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_10003A39C, v2, 0);
}

uint64_t sub_10003A39C()
{
  v1 = *(v0 + 242);
  v2 = *(v0 + 168);
  v3 = *(v0 + 24);
  sub_100020D08(*(v0 + 16), v2);
  (*(*v3 + 184))(v2);
  if (v1 == 1)
  {
    v4 = *(v0 + 24);
    sub_1000366E4();
  }

  if (*(v0 + 243) == 1)
  {
    v6 = *(v0 + 200);
    v5 = *(v0 + 208);
    v8 = *(v0 + 160);
    v7 = *(v0 + 168);
    v10 = *(v0 + 144);
    v9 = *(v0 + 152);
    v11 = *(v0 + 24);
    type metadata accessor for SplunkEventRotatingBuffer();
    v6();
    v12 = *(v7 + v10[10]);
    v13 = sub_100020C58(v7);
    (v6)(v13);
    v14 = *(v8 + v10[9]);
    v15 = sub_100020C58(v8);
    (v6)(v15);
    v16 = *(v9 + v10[8]);
    sub_100020C58(v9);
    v17 = sub_100015B64(v12, v14);
    (*(*v11 + 256))(v17);
  }

  if (*(v0 + 244) == 1)
  {
    v18 = *(v0 + 24);
    sub_100035A70();
  }

  v20 = *(v0 + 184);
  v19 = *(v0 + 192);
  v22 = *(v0 + 168);
  v21 = *(v0 + 176);
  v24 = *(v0 + 152);
  v23 = *(v0 + 160);
  v26 = *(v0 + 128);
  v25 = *(v0 + 136);
  v27 = *(v0 + 120);
  v28 = *(v0 + 104);
  v31 = *(v0 + 80);
  v32 = *(v0 + 72);
  v33 = *(v0 + 64);
  v34 = *(v0 + 48);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_10003A5D8(uint64_t a1)
{
  v44 = type metadata accessor for Configuration();
  v2 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for CharacterSet();
  v4 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v47 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = _swiftEmptyArrayStorage;
  v8 = *(a1 + 16);
  if (v8)
  {
    v46 = (v5 + 8);
    v41 = _swiftEmptyArrayStorage;
    v9 = (a1 + 40);
    *&v6 = 136446467;
    v42 = v6;
    while (1)
    {
      v50 = v8;
      v15 = *(v9 - 1);
      v16 = *v9;
      v52[0] = v15;
      v52[1] = v16;

      v17 = v47;
      static CharacterSet.whitespacesAndNewlines.getter();
      sub_10001A48C();
      StringProtocol.trimmingCharacters(in:)();
      (*v46)(v17, v48);
      v18 = objc_allocWithZone(NSPredicate);
      v19 = String._bridgeToObjectiveC()();

      v52[0] = 0;
      v20 = [v18 initWithFormat:v19 error:v52];

      v21 = v52[0];
      if (!v20)
      {
        break;
      }

      v49 = v15;
      type metadata accessor for LogMonitor();
      v22 = *(*v45 + 176);
      v23 = v21;
      v24 = v43;
      v22(v23);
      v25 = *(v24 + *(v44 + 44));
      sub_100020C58(v24);
      v26 = sub_100032FF8(v25);
      v31 = (*(*v26 + 136))();
      v52[0] = 0;
      v32 = [v31 assignFilterPredicate:v20 error:v52];

      v33 = v52[0];
      if (!v32)
      {
        v35 = v33;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v15 = v49;
        goto LABEL_8;
      }

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100006D94(v52);
      v34 = v20;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v36 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v41 = v51;
LABEL_4:
      v9 += 2;
      v8 = v50 - 1;
      if (v50 == 1)
      {
        goto LABEL_18;
      }
    }

    v27 = v52[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_8:
    if (qword_10005AA30 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006C6C(v28, qword_10005AA38);

    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v10 = swift_slowAlloc();
      v52[0] = swift_slowAlloc();
      *v10 = v42;
      v11 = sub_10000604C(v15, v16, v52);

      *(v10 + 4) = v11;
      *(v10 + 12) = 2081;
      swift_getErrorValue();
      v12 = Error.localizedDescription.getter();
      v14 = sub_10000604C(v12, v13, v52);

      *(v10 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v29, v30, "Bad predicate in plist: %{public}s: %{private}s", v10, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_4;
  }

  v41 = _swiftEmptyArrayStorage;
LABEL_18:
  if (v41 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
      goto LABEL_20;
    }

LABEL_22:

    v38 = 0;
    return (*(*v45 + 304))(v38);
  }

  if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_22;
  }

LABEL_20:
  sub_1000075EC(0, &qword_100057DC8, NSPredicate_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v38 = [objc_opt_self() orPredicateWithSubpredicates:isa];

  return (*(*v45 + 304))(v38);
}

uint64_t sub_10003AC54(void *a1, uint64_t a2)
{
  v4 = sub_100001FDC(&qword_100056880, &qword_100046FE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22[-1] - v6;
  v8 = *(a2 + OBJC_IVAR____TtC14splunkloggingd6Daemon_systemAuditTable);
  if (v8)
  {
    v22[3] = sub_1000075EC(0, &qword_100057280, OSLogEventProxy_ptr);
    v22[4] = &off_1000521B8;
    v22[0] = a1;

    v9 = a1;
    v10 = sub_100012BD4(v22);
    sub_100006D94(v22);
    if ((v10 & 1) == 0)
    {
      sub_100001FDC(&qword_100057710, &unk_1000471C0);
      v18 = *(*sub_100028E80() + OBJC_IVAR____TtC14splunkloggingd10Statistics_skippedEvents);

      sub_1000287B8(v19, 1uLL);
    }
  }

  v11 = sub_10001A7B0(v8);
  v13 = v12;
  v15 = v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = a2;
  *(v17 + 40) = v11;
  *(v17 + 48) = v13;
  *(v17 + 56) = v15 & 1;

  sub_1000200E8(0, 0, v7, &unk_100047A38, v17);
}

uint64_t sub_10003AE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 40) = a7;
  *(v7 + 24) = a5;
  *(v7 + 32) = a6;
  *(v7 + 16) = a4;
  return _swift_task_switch(sub_10003AE74, a4, 0);
}

uint64_t sub_10003AE74()
{
  v1 = *(v0 + 16);
  sub_10003AEE0(*(v0 + 24), *(v0 + 32), *(v0 + 40) & 1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003AEE0(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v38 = a3;
  v39 = a2;
  v6 = type metadata accessor for Configuration();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v9);
  v14 = &v37[-v13];
  v15 = *(*v3 + 176);
  v15(v12);
  v16 = &v14[*(v7 + 32)];
  v17 = *v16;
  v18 = v16[1];

  v19 = sub_100020C58(v14);
  v15(v19);
  v20 = *(v11 + *(v7 + 60));

  sub_100020C58(v11);
  v21 = sub_10002D6BC(a1, v39, v38 & 1, v17, v18, v20);
  v23 = v22;
  LOBYTE(v11) = v24;

  sub_100001FDC(&qword_100057710, &unk_1000471C0);
  v25 = sub_100028E80();
  v26 = *v25;
  if (v11)
  {
    v27 = *(v26 + OBJC_IVAR____TtC14splunkloggingd10Statistics_skippedEvents);

    sub_1000287B8(v28, 1uLL);
  }

  else
  {
    v29 = v25;
    v30 = *(v26 + OBJC_IVAR____TtC14splunkloggingd10Statistics_processedEvents);

    sub_1000287B8(v31, 1uLL);

    (*(*v4 + 248))(v32);
    v33 = sub_100015ED8(v21, v23);

    if (v33)
    {
      return sub_10001A35C(v21, v23, 0);
    }

    v35 = *(*v29 + OBJC_IVAR____TtC14splunkloggingd10Statistics_skippedEvents);

    sub_1000287B8(v36, 1uLL);
    sub_10001A35C(v21, v23, 0);
  }
}

uint64_t sub_10003B15C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007EAC;

  return sub_100039148(a1);
}

uint64_t sub_10003B1F0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003B238(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003B250()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003B2A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10003B308(int a1)
{
  sub_100001FDC(&qword_100057F90, &unk_100047A20);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100045B50;
  v4 = *sub_100028E80();
  *(v3 + 56) = type metadata accessor for Statistics();
  *(v3 + 32) = v4;

  print(_:separator:terminator:)();

  if (a1 == 29)
  {
    v6 = (*(*v1 + 272))(v5);
    if (v6)
    {
      v7 = (*(*v6 + 136))(v6);

      v8 = [v7 filterPredicate];

      if (v8)
      {
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_100045B50;
        *(v9 + 56) = sub_1000075EC(0, &qword_100057DC8, NSPredicate_ptr);
        *(v9 + 32) = v8;
        v10 = v8;
        print(_:separator:terminator:)();
      }
    }
  }

  else
  {
    if (!__OFSUB__(0, a1))
    {
      exit(-a1);
    }

    __break(1u);
  }
}

uint64_t type metadata accessor for Daemon()
{
  result = qword_10005AB50;
  if (!qword_10005AB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003B540(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10003B588(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10003B5E4()
{
  result = type metadata accessor for Configuration();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

__n128 sub_10003B6F0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_10003B72C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 184))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 149);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10003B780(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 184) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 184) = 0;
    }

    if (a2)
    {
      *(result + 149) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10003B818(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003B868()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  if ((*(v0 + 56) & 1) == 0)
  {
    sub_100008014(*(v0 + 40), *(v0 + 48), sub_10000803C);
  }

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_10003B8CC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000073F4;

  return sub_10003AE4C(v6, v7, v8, v2, v3, v4, v5);
}

uint64_t sub_10003B97C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003B9B4(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t sub_10003BA20(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t sub_10003BAD8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003BAF8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_10003BB70@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v15 - v8;
  URL.init(string:)();
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10003BD4C(v9);
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    strcpy(v15, "Invalid URL: '");
    HIBYTE(v15[1]) = -18;
    v12._countAndFlagsBits = a1;
    v12._object = a2;
    String.append(_:)(v12);

    v13._countAndFlagsBits = 39;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    type metadata accessor for ValidationError();
    sub_10003BDB4();
    swift_allocError();
    ValidationError.init(_:)();
    return swift_willThrow();
  }

  else
  {

    return (*(v11 + 32))(a3, v9, v10);
  }
}

uint64_t sub_10003BD4C(uint64_t a1)
{
  v2 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003BDB4()
{
  result = qword_100057FB8;
  if (!qword_100057FB8)
  {
    type metadata accessor for ValidationError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057FB8);
  }

  return result;
}

uint64_t sub_10003BE0C()
{
  v0 = sub_100001FDC(&unk_100058140, &qword_100047D98);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for CommandConfiguration();
  sub_1000074E8(v4, qword_10005B1B0);
  sub_100006C6C(v4, qword_10005B1B0);
  v5 = type metadata accessor for NameSpecification();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)();
}

uint64_t sub_10003BF64()
{
  if (qword_10005AB60 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CommandConfiguration();

  return sub_100006C6C(v0, qword_10005B1B0);
}

uint64_t sub_10003BFC8@<X0>(uint64_t a1@<X8>)
{
  if (qword_10005AB60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CommandConfiguration();
  v3 = sub_100006C6C(v2, qword_10005B1B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10003C070()
{
  sub_100001FDC(&qword_100057FC0, &qword_100047B00);
  Option.wrappedValue.getter();
  return v1;
}

uint64_t (*sub_10003C0F8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_100001FDC(&qword_100057FC0, &qword_100047B00);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_100041B10;
}

uint64_t sub_10003C184()
{
  v0 = type metadata accessor for SingleValueParsingStrategy();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_100001FDC(&qword_100057FC8, &qword_100047B08);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = sub_100001FDC(&qword_100057FD0, &qword_100047B10);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for NameSpecification();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  sub_100001FDC(&qword_100057FD8, &qword_100047B18);
  v12 = *(type metadata accessor for NameSpecification.Element() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  *(swift_allocObject() + 16) = xmmword_100045B60;
  static NameSpecification.Element.customShort(_:allowingJoined:)();
  static NameSpecification.Element.long.getter();
  NameSpecification.init(arrayLiteral:)();
  ArgumentHelp.init(stringLiteral:)();
  v15 = type metadata accessor for ArgumentHelp();
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  v16 = type metadata accessor for CompletionKind();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  static SingleValueParsingStrategy.next.getter();
  return Option.init<A>(name:parsing:help:completion:)();
}

uint64_t sub_10003C468()
{
  v0 = *(type metadata accessor for Splunkloggingd() + 20);
  sub_100001FDC(&qword_100057FE0, &qword_100047B20);
  Option.wrappedValue.getter();
  return v2;
}

uint64_t type metadata accessor for Splunkloggingd()
{
  result = qword_10005AD70;
  if (!qword_10005AD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003C508()
{
  v0 = *(type metadata accessor for Splunkloggingd() + 20);
  sub_100001FDC(&qword_100057FE0, &qword_100047B20);
  return Option.wrappedValue.setter();
}

uint64_t (*sub_10003C560(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for Splunkloggingd() + 20);
  sub_100001FDC(&qword_100057FE0, &qword_100047B20);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_100041B10;
}

uint64_t sub_10003C5FC()
{
  v0 = type metadata accessor for SingleValueParsingStrategy();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_100001FDC(&qword_100057FC8, &qword_100047B08);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_100001FDC(&qword_100057FD0, &qword_100047B10);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for NameSpecification();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v12 = type metadata accessor for ArgumentHelp();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  v13 = type metadata accessor for CompletionKind();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  static SingleValueParsingStrategy.next.getter();
  return Option.init<A>(name:parsing:help:completion:)();
}

uint64_t sub_10003C82C()
{
  v0 = *(type metadata accessor for Splunkloggingd() + 24);
  sub_100001FDC(&qword_100057FE8, &qword_100047B28);
  return Option.wrappedValue.getter();
}

uint64_t sub_10003C880(uint64_t a1)
{
  v2 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_10003C93C(a1, &v7 - v4);
  v5 = *(type metadata accessor for Splunkloggingd() + 24);
  sub_100001FDC(&qword_100057FE8, &qword_100047B28);
  Option.wrappedValue.setter();
  return sub_10003BD4C(a1);
}

uint64_t sub_10003C93C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_10003C9AC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for Splunkloggingd() + 24);
  sub_100001FDC(&qword_100057FE8, &qword_100047B28);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_100041B10;
}

uint64_t sub_10003CA48()
{
  v0 = type metadata accessor for SingleValueParsingStrategy();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_100001FDC(&qword_100057FC8, &qword_100047B08);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_100001FDC(&qword_100057FD0, &qword_100047B10);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for NameSpecification();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v12 = type metadata accessor for ArgumentHelp();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  v13 = type metadata accessor for CompletionKind();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  static SingleValueParsingStrategy.next.getter();
  type metadata accessor for URL();
  return Option.init<A>(name:parsing:help:completion:transform:)();
}

uint64_t sub_10003CCD0()
{
  v0 = *(type metadata accessor for Splunkloggingd() + 28);
  sub_100001FDC(&qword_100057FC0, &qword_100047B00);
  Option.wrappedValue.getter();
  return v2;
}

uint64_t sub_10003CD28()
{
  v0 = *(type metadata accessor for Splunkloggingd() + 28);
  sub_100001FDC(&qword_100057FC0, &qword_100047B00);
  return Option.wrappedValue.setter();
}

uint64_t (*sub_10003CD88(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for Splunkloggingd() + 28);
  sub_100001FDC(&qword_100057FC0, &qword_100047B00);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_10003CE24;
}

uint64_t sub_10003CE28()
{
  v0 = type metadata accessor for SingleValueParsingStrategy();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_100001FDC(&qword_100057FC8, &qword_100047B08);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_100001FDC(&qword_100057FD0, &qword_100047B10);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for NameSpecification();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v12 = type metadata accessor for ArgumentHelp();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  v13 = type metadata accessor for CompletionKind();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  static SingleValueParsingStrategy.next.getter();
  return Option.init<A>(name:parsing:help:completion:)();
}

uint64_t sub_10003D054()
{
  v0 = *(type metadata accessor for Splunkloggingd() + 32);
  sub_100001FDC(&qword_100057FF0, &qword_100047B30);
  Option.wrappedValue.getter();
  return v2;
}

uint64_t sub_10003D0AC()
{
  v0 = *(type metadata accessor for Splunkloggingd() + 32);
  sub_100001FDC(&qword_100057FF0, &qword_100047B30);
  return Option.wrappedValue.setter();
}

uint64_t (*sub_10003D10C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for Splunkloggingd() + 32);
  sub_100001FDC(&qword_100057FF0, &qword_100047B30);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_100041B10;
}

uint64_t sub_10003D1A8()
{
  v0 = type metadata accessor for SingleValueParsingStrategy();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_100001FDC(&qword_100057FC8, &qword_100047B08);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_100001FDC(&qword_100057FD0, &qword_100047B10);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for NameSpecification();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v12 = type metadata accessor for ArgumentHelp();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  v13 = type metadata accessor for CompletionKind();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  static SingleValueParsingStrategy.next.getter();
  return Option.init<A>(name:parsing:help:completion:)();
}

uint64_t sub_10003D3D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleValueParsingStrategy();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_100001FDC(&qword_100057FC8, &qword_100047B08);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v22 - v8;
  v10 = sub_100001FDC(&qword_100057FD0, &qword_100047B10);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v22 - v12;
  v14 = type metadata accessor for NameSpecification();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v22[0] = a1;
  v22[1] = a2;
  sub_100001FDC(&qword_100057FD8, &qword_100047B18);
  v16 = *(type metadata accessor for NameSpecification.Element() - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  *(swift_allocObject() + 16) = xmmword_100045B60;
  static NameSpecification.Element.customShort(_:allowingJoined:)();
  static NameSpecification.Element.long.getter();
  NameSpecification.init(arrayLiteral:)();
  ArgumentHelp.init(stringLiteral:)();
  v19 = type metadata accessor for ArgumentHelp();
  (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
  v20 = type metadata accessor for CompletionKind();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  static SingleValueParsingStrategy.next.getter();
  return Option<A>.init(wrappedValue:name:parsing:help:completion:)();
}

uint64_t sub_10003D6CC()
{
  v0 = *(type metadata accessor for Splunkloggingd() + 36);
  sub_100001FDC(&qword_100057FF8, &qword_100047B38);
  Option.wrappedValue.getter();
  return v2;
}

uint64_t sub_10003D720()
{
  v0 = *(type metadata accessor for Splunkloggingd() + 36);
  sub_100001FDC(&qword_100057FF8, &qword_100047B38);
  return Option.wrappedValue.setter();
}

uint64_t (*sub_10003D778(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for Splunkloggingd() + 36);
  sub_100001FDC(&qword_100057FF8, &qword_100047B38);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_100041B10;
}

uint64_t sub_10003D830()
{
  v0 = sub_100001FDC(&qword_100057FD0, &qword_100047B10);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for NameSpecification();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v6 = type metadata accessor for ArgumentHelp();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  return Flag<A>.init(wrappedValue:name:help:)();
}

uint64_t sub_10003D96C()
{
  v0 = *(type metadata accessor for Splunkloggingd() + 40);
  sub_100001FDC(&qword_100058000, &qword_100047B40);
  Flag.wrappedValue.getter();
  return v2;
}

uint64_t sub_10003D9C0()
{
  v0 = *(type metadata accessor for Splunkloggingd() + 40);
  sub_100001FDC(&qword_100058000, &qword_100047B40);
  return Flag.wrappedValue.setter();
}

uint64_t (*sub_10003DA18(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for Splunkloggingd() + 40);
  sub_100001FDC(&qword_100058000, &qword_100047B40);
  *(v3 + 32) = Flag.wrappedValue.modify();
  return sub_100041B10;
}

uint64_t sub_10003DAB4()
{
  v0 = *(type metadata accessor for Splunkloggingd() + 44);
  sub_100001FDC(&qword_100057FE0, &qword_100047B20);
  Option.wrappedValue.getter();
  return v2;
}

uint64_t sub_10003DB08()
{
  v0 = *(type metadata accessor for Splunkloggingd() + 44);
  sub_100001FDC(&qword_100057FE0, &qword_100047B20);
  return Option.wrappedValue.setter();
}

uint64_t (*sub_10003DB60(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for Splunkloggingd() + 44);
  sub_100001FDC(&qword_100057FE0, &qword_100047B20);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_100041B10;
}

void sub_10003DBFC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_10003DC48()
{
  v0 = type metadata accessor for SingleValueParsingStrategy();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_100001FDC(&qword_100057FC8, &qword_100047B08);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_100001FDC(&qword_100057FD0, &qword_100047B10);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for NameSpecification();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v12 = type metadata accessor for ArgumentHelp();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  v13 = type metadata accessor for CompletionKind();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  static SingleValueParsingStrategy.next.getter();
  return Option.init<A>(name:parsing:help:completion:)();
}

uint64_t sub_10003DE74@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = type metadata accessor for SingleValueParsingStrategy();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001FDC(&qword_100057FC8, &qword_100047B08);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v43 - v7;
  v9 = sub_100001FDC(&qword_100057FD0, &qword_100047B10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v43 - v11;
  v13 = type metadata accessor for NameSpecification();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001FDC(&qword_100057FD8, &qword_100047B18);
  v17 = *(type metadata accessor for NameSpecification.Element() - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_100045B60;
  static NameSpecification.Element.customShort(_:allowingJoined:)();
  static NameSpecification.Element.long.getter();
  NameSpecification.init(arrayLiteral:)();
  ArgumentHelp.init(stringLiteral:)();
  v20 = type metadata accessor for ArgumentHelp();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v51 = v21 + 56;
  v45 = v20;
  v22(v12, 0, 1, v20);
  v47 = v22;
  v23 = type metadata accessor for CompletionKind();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v52 = v23;
  v53 = v24 + 56;
  v25(v8, 1, 1, v23);
  static SingleValueParsingStrategy.next.getter();
  Option.init<A>(name:parsing:help:completion:)();
  v26 = type metadata accessor for Splunkloggingd();
  v44 = *(v26 + 20);
  v27 = v26;
  v48 = v26;
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v22(v12, 0, 1, v20);
  v25(v8, 1, 1, v23);
  v28 = v25;
  v49 = v25;
  static SingleValueParsingStrategy.next.getter();
  v43[1] = v4;
  Option.init<A>(name:parsing:help:completion:)();
  v44 = *(v27 + 24);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v29 = v45;
  v30 = v47;
  v47(v12, 0, 1, v45);
  v31 = v8;
  v32 = v52;
  v28(v8, 1, 1, v52);
  static SingleValueParsingStrategy.next.getter();
  type metadata accessor for URL();
  v33 = v50;
  v43[0] = v16;
  Option.init<A>(name:parsing:help:completion:transform:)();
  v34 = v48;
  v44 = *(v48 + 28);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v35 = v29;
  v30(v12, 0, 1, v29);
  v36 = v49;
  v49(v31, 1, 1, v32);
  static SingleValueParsingStrategy.next.getter();
  Option.init<A>(name:parsing:help:completion:)();
  v44 = *(v34 + 32);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v37 = v47;
  v47(v12, 0, 1, v29);
  v46 = v31;
  v36(v31, 1, 1, v52);
  static SingleValueParsingStrategy.next.getter();
  Option.init<A>(name:parsing:help:completion:)();
  v38 = v48;
  v39 = v33 + *(v48 + 36);
  sub_10003D3D4(0xD000000000000038, 0x8000000100044970);
  v40 = *(v38 + 40);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v37(v12, 0, 1, v35);
  Flag<A>.init(wrappedValue:name:help:)();
  v41 = *(v38 + 44);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v37(v12, 0, 1, v35);
  v49(v46, 1, 1, v52);
  static SingleValueParsingStrategy.next.getter();
  return Option.init<A>(name:parsing:help:completion:)();
}

uint64_t sub_10003E5B0()
{
  v1[14] = v0;
  v2 = type metadata accessor for Configuration();
  v1[15] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v4 = type metadata accessor for URL.DirectoryHint();
  v1[18] = v4;
  v5 = *(v4 - 8);
  v1[19] = v5;
  v6 = *(v5 + 64) + 15;
  v1[20] = swift_task_alloc();
  v7 = *(*(sub_100001FDC(&unk_100056B40, &unk_100045890) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v1[26] = v8;
  v9 = *(v8 - 8);
  v1[27] = v9;
  v10 = *(v9 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_10003E788, 0, 0);
}

uint64_t sub_10003E788()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v58 = *(v0 + 240);
  v60 = *(v0 + 192);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v55 = *(v0 + 144);
  v57 = *(v0 + 112);
  v6 = type metadata accessor for Splunkloggingd();
  v7 = *(v6 + 36);
  sub_100001FDC(&qword_100057FF8, &qword_100047B38);
  Option.wrappedValue.getter();
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = *(v2 + 56);
  v10(v3, 1, 1, v1);
  v54 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v56 = *(v4 + 104);
  v56(v5);
  v62 = v10;
  v11 = v6;
  URL.init(filePath:directoryHint:relativeTo:)();
  v10(v60, 1, 1, v1);
  v12 = *(v6 + 44);
  sub_100001FDC(&qword_100057FE0, &qword_100047B20);
  Option.wrappedValue.getter();
  v61 = v6;
  if (*(v0 + 40))
  {
    v59 = *(v0 + 32);
    v14 = *(v0 + 200);
    v13 = *(v0 + 208);
    v15 = *(v0 + 192);
    v16 = *(v0 + 160);
    v17 = *(v0 + 144);
    v62(*(v0 + 184), 1, 1, v13);
    (v56)(v16, v54, v17);
    v11 = v61;
    URL.init(filePath:directoryHint:relativeTo:)();
    sub_10003BD4C(v15);
    v62(v14, 0, 1, v13);
    sub_10002FA74(v14, v15);
  }

  v18 = *(v0 + 112);
  sub_10001DA94(*(v0 + 136));
  sub_100001FDC(&qword_100057FC0, &qword_100047B00);
  Option.wrappedValue.getter();
  if ((*(v0 + 72) & 1) == 0)
  {
    *(*(v0 + 136) + *(*(v0 + 120) + 40)) = *(v0 + 64);
  }

  v19 = *(v0 + 112) + v11[5];
  Option.wrappedValue.getter();
  v20 = *(v0 + 56);
  if (v20)
  {
    v21 = *(v0 + 48);
    v22 = (*(v0 + 136) + *(*(v0 + 120) + 24));
    v23 = v22[1];

    *v22 = v21;
    v22[1] = v20;
  }

  v24 = *(v0 + 208);
  v25 = *(v0 + 216);
  v26 = *(v0 + 176);
  v27 = *(v0 + 112);
  v28 = v11[6];
  sub_100001FDC(&qword_100057FE8, &qword_100047B28);
  Option.wrappedValue.getter();
  if ((*(v25 + 48))(v26, 1, v24) == 1)
  {
    sub_10003BD4C(*(v0 + 176));
  }

  else
  {
    v29 = *(v0 + 232);
    v30 = *(v0 + 208);
    v31 = *(v0 + 136);
    v32 = *(v0 + 120);
    v33 = *(*(v0 + 216) + 32);
    v33(v29, *(v0 + 176), v30);
    v34 = *(v32 + 20);
    sub_10003BD4C(v31 + v34);
    v33(v31 + v34, v29, v30);
    v62(v31 + v34, 0, 1, v30);
  }

  v35 = *(v0 + 112) + v11[7];
  Option.wrappedValue.getter();
  if ((*(v0 + 88) & 1) == 0)
  {
    *(*(v0 + 136) + *(*(v0 + 120) + 36)) = *(v0 + 80);
  }

  v36 = *(v0 + 112);
  v37 = v11[8];
  sub_100001FDC(&qword_100057FF0, &qword_100047B30);
  Option.wrappedValue.getter();
  if ((*(v0 + 104) & 1) == 0)
  {
    *(*(v0 + 136) + *(*(v0 + 120) + 32)) = *(v0 + 96);
  }

  v38 = *(v0 + 240);
  v40 = *(v0 + 216);
  v39 = *(v0 + 224);
  v41 = *(v0 + 208);
  v42 = *(v0 + 192);
  v43 = *(v0 + 168);
  v45 = *(v0 + 128);
  v44 = *(v0 + 136);
  v46 = *(v0 + 112);
  type metadata accessor for Daemon();
  sub_1000409F4(v44, v45, type metadata accessor for Configuration);
  v47 = v61[10];
  sub_100001FDC(&qword_100058000, &qword_100047B40);
  Flag.wrappedValue.getter();
  v48 = *(v0 + 73);
  (*(v40 + 16))(v39, v38, v41);
  sub_10003C93C(v42, v43);
  v49 = swift_task_alloc();
  *(v0 + 248) = v49;
  *v49 = v0;
  v49[1] = sub_10003EC7C;
  v50 = *(v0 + 224);
  v51 = *(v0 + 168);
  v52 = *(v0 + 128);

  return sub_100036FD0(v52, v48, v50, v51);
}

uint64_t sub_10003EC7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  v4[32] = a1;
  v4[33] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10003F0E4, 0, 0);
  }

  else
  {
    v7 = *(*a1 + 336);
    v11 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v4[34] = v9;
    *v9 = v6;
    v9[1] = sub_10003EE94;

    return v11();
  }
}

uint64_t sub_10003EE94()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_10003F220;
  }

  else
  {
    v3 = sub_10003EFA8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003EFA8()
{
  v1 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v5 = v0[28];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[23];
  v9 = v0[24];
  v13 = v0[22];
  v14 = v0[21];
  v10 = v0[17];
  v15 = v0[20];
  v16 = v0[16];

  sub_10003BD4C(v9);
  (*(v4 + 8))(v2, v6);
  sub_100040994(v10, type metadata accessor for Configuration);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10003F0E4()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[23];
  v11 = v0[22];
  v12 = v0[21];
  v13 = v0[20];
  v8 = v0[17];
  v14 = v0[16];
  v15 = v0[33];
  sub_10003BD4C(v0[24]);
  (*(v3 + 8))(v1, v5);
  sub_100040994(v8, type metadata accessor for Configuration);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10003F220()
{
  v1 = v0[32];

  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v5 = v0[28];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[23];
  v12 = v0[22];
  v13 = v0[21];
  v14 = v0[20];
  v9 = v0[17];
  v15 = v0[16];
  v16 = v0[35];
  sub_10003BD4C(v0[24]);
  (*(v4 + 8))(v2, v6);
  sub_100040994(v9, type metadata accessor for Configuration);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10003F364()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = type metadata accessor for Splunkloggingd();
  v2 = async function pointer to static AsyncParsableCommand.main()[1];
  v3 = swift_task_alloc();
  v0[4] = v3;
  v4 = sub_100040E94(&qword_100058008);
  *v3 = v0;
  v3[1] = sub_10003F444;

  return static AsyncParsableCommand.main()(v1, v4);
}

uint64_t sub_10003F444()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003F580, v5, v4);
}

uint64_t sub_10003F580()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003F5E0()
{
  v1 = *v0;
  v2 = 0x6F43726566667562;
  v3 = 0x7463617265746E69;
  if (v1 != 6)
  {
    v3 = 0x6261547469647561;
  }

  v4 = 0x74756F656D6974;
  if (v1 != 4)
  {
    v4 = 0x6C506769666E6F63;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x726576726573;
  if (v1 != 2)
  {
    v5 = 0x6953726566667562;
  }

  if (*v0)
  {
    v2 = 0x7865646E69;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10003F6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100041864(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003F728(uint64_t a1)
{
  v2 = sub_100040940();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003F764(uint64_t a1)
{
  v2 = sub_100040940();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003F7A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a1;
  v96 = a2;
  v103 = sub_100001FDC(&qword_100058000, &qword_100047B40);
  v99 = *(v103 - 8);
  v2 = *(v99 + 64);
  __chkstk_darwin(v103);
  v102 = &v96 - v3;
  v107 = sub_100001FDC(&qword_100057FF8, &qword_100047B38);
  v101 = *(v107 - 8);
  v4 = *(v101 + 64);
  __chkstk_darwin(v107);
  v106 = &v96 - v5;
  v110 = sub_100001FDC(&qword_100057FF0, &qword_100047B30);
  v105 = *(v110 - 8);
  v6 = *(v105 + 64);
  __chkstk_darwin(v110);
  v109 = &v96 - v7;
  v115 = sub_100001FDC(&qword_100057FE8, &qword_100047B28);
  v112 = *(v115 - 8);
  v8 = *(v112 + 64);
  __chkstk_darwin(v115);
  v114 = &v96 - v9;
  v116 = sub_100001FDC(&qword_100057FE0, &qword_100047B20);
  v118 = *(v116 - 8);
  v10 = *(v118 + 64);
  v11 = __chkstk_darwin(v116);
  v98 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v117 = &v96 - v13;
  v14 = sub_100001FDC(&qword_100057FC0, &qword_100047B00);
  v15 = *(v14 - 8);
  v120 = v14;
  v121 = v15;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v111 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v122 = &v96 - v19;
  v123 = sub_100001FDC(&qword_100058010, &qword_100047B58);
  v119 = *(v123 - 8);
  v20 = *(v119 + 64);
  __chkstk_darwin(v123);
  v127 = &v96 - v21;
  v22 = type metadata accessor for SingleValueParsingStrategy();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100001FDC(&qword_100057FC8, &qword_100047B08);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v96 - v28;
  v30 = sub_100001FDC(&qword_100057FD0, &qword_100047B10);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v96 - v32;
  v34 = type metadata accessor for NameSpecification();
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v37 = &v96 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Splunkloggingd();
  v39 = *(v38 - 8);
  v131 = (v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38 - 8);
  v137 = &v96 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001FDC(&qword_100057FD8, &qword_100047B18);
  v42 = *(type metadata accessor for NameSpecification.Element() - 8);
  v43 = *(v42 + 72);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  *(swift_allocObject() + 16) = xmmword_100045B60;
  static NameSpecification.Element.customShort(_:allowingJoined:)();
  static NameSpecification.Element.long.getter();
  NameSpecification.init(arrayLiteral:)();
  ArgumentHelp.init(stringLiteral:)();
  v45 = type metadata accessor for ArgumentHelp();
  v46 = *(v45 - 8);
  v47 = *(v46 + 56);
  v135 = (v46 + 56);
  v47(v33, 0, 1, v45);
  v129 = v47;
  v136 = type metadata accessor for CompletionKind();
  v48 = *(v136 - 1);
  v138 = *(v48 + 56);
  v134 = v48 + 56;
  (v138)(v29, 1, 1, v136);
  v133 = v25;
  static SingleValueParsingStrategy.next.getter();
  v128 = v37;
  Option.init<A>(name:parsing:help:completion:)();
  v49 = v131;
  v50 = v131[7];
  static NameSpecification.shortAndLong.getter();
  v51 = v33;
  ArgumentHelp.init(stringLiteral:)();
  v130 = v45;
  v47(v33, 0, 1, v45);
  v52 = v29;
  v53 = v29;
  v54 = v136;
  (v138)(v53, 1, 1, v136);
  static SingleValueParsingStrategy.next.getter();
  v113 = v50;
  Option.init<A>(name:parsing:help:completion:)();
  v126 = v49[8];
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v55 = v129;
  v129(v51, 0, 1, v45);
  (v138)(v52, 1, 1, v54);
  static SingleValueParsingStrategy.next.getter();
  type metadata accessor for URL();
  v56 = v51;
  Option.init<A>(name:parsing:help:completion:transform:)();
  v57 = v131;
  v58 = v131[9];
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v59 = v56;
  v60 = v56;
  v61 = v130;
  v55(v59, 0, 1, v130);
  (v138)(v52, 1, 1, v136);
  static SingleValueParsingStrategy.next.getter();
  v108 = v58;
  Option.init<A>(name:parsing:help:completion:)();
  v62 = v57[10];
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v63 = v129;
  v129(v60, 0, 1, v61);
  v124 = v52;
  (v138)(v52, 1, 1, v136);
  static SingleValueParsingStrategy.next.getter();
  v104 = v62;
  Option.init<A>(name:parsing:help:completion:)();
  v100 = v57[11];
  sub_10003D3D4(0xD000000000000038, 0x8000000100044970);
  v64 = v57[12];
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v65 = v130;
  v63(v60, 0, 1, v130);
  v97 = v64;
  Flag<A>.init(wrappedValue:name:help:)();
  v66 = v57[13];
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v67 = v132;
  v63(v60, 0, 1, v65);
  (v138)(v124, 1, 1, v136);
  static SingleValueParsingStrategy.next.getter();
  Option.init<A>(name:parsing:help:completion:)();
  v68 = v67[4];
  sub_100010C68(v67, v67[3]);
  sub_100040940();
  v69 = v125;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v69)
  {
    sub_100006D94(v132);
    v95 = v137;
  }

  else
  {
    v138 = v66;
    v70 = v117;
    v71 = v121;
    v72 = v118;
    v146 = 0;
    sub_10003002C(&qword_100058018, &qword_100057FC0, &qword_100047B00);
    v73 = v120;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v74 = *(v71 + 40);
    v74(v137, v122, v73);
    v145 = 1;
    v75 = sub_10003002C(&qword_100058020, &qword_100057FE0, &qword_100047B20);
    v76 = v116;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v136 = v74;
    v121 = v71 + 40;
    v77 = *(v72 + 40);
    v77(v137 + v113, v70, v76);
    v144 = 2;
    sub_10003002C(&qword_100058028, &qword_100057FE8, &qword_100047B28);
    v78 = v114;
    v79 = v115;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v135 = v77;
    (*(v112 + 40))(v137 + v126, v78, v79);
    v143 = 3;
    v80 = v111;
    v81 = v120;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v134 = v75;
    v83 = v137;
    (v136)(v137 + v108, v80, v81);
    v142 = 4;
    sub_10003002C(&qword_100058030, &qword_100057FF0, &qword_100047B30);
    v84 = v109;
    v85 = v110;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v105 + 40))(&v83[v104], v84, v85);
    v141 = 5;
    sub_10003002C(&qword_100058038, &qword_100057FF8, &qword_100047B38);
    v86 = v106;
    v87 = v107;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v101 + 40))(&v83[v100], v86, v87);
    v140 = 6;
    sub_10003002C(&qword_100058040, &qword_100058000, &qword_100047B40);
    v88 = v102;
    v89 = v103;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v99 + 40))(&v83[v97], v88, v89);
    v139 = 7;
    v90 = v98;
    v91 = v116;
    v92 = v123;
    v93 = v127;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v119 + 8))(v93, v92);
    v94 = v137;
    v135(&v138[v137], v90, v91);
    sub_1000409F4(v94, v96, type metadata accessor for Splunkloggingd);
    sub_100006D94(v132);
    v95 = v94;
  }

  return sub_100040994(v95, type metadata accessor for Splunkloggingd);
}

unint64_t sub_100040940()
{
  result = qword_10005AB68[0];
  if (!qword_10005AB68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10005AB68);
  }

  return result;
}

uint64_t sub_100040994(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000409F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100040A5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000073F4;

  return sub_10003E5B0();
}

int main(int argc, const char **argv, const char **envp)
{
  swift_task_create();
  swift_task_getMainExecutor();
  swift_job_run();
  result = swift_task_asyncMainDrainQueue();
  __break(1u);
  return result;
}

uint64_t sub_100040BA4()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = type metadata accessor for Splunkloggingd();
  v2 = async function pointer to static AsyncParsableCommand.main()[1];
  v3 = swift_task_alloc();
  v0[4] = v3;
  v4 = sub_100040E94(&qword_100058008);
  *v3 = v0;
  v3[1] = sub_100040C84;

  return static AsyncParsableCommand.main()(v1, v4);
}

uint64_t sub_100040C84()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100040DC0, v5, v4);
}

void sub_100040DC0()
{
  v1 = *(v0 + 24);

  exit(0);
}

uint64_t sub_100040E94(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Splunkloggingd();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100040EEC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100001FDC(&qword_100057FC0, &qword_100047B00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_100001FDC(&qword_100057FE0, &qword_100047B20);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_100001FDC(&qword_100057FE8, &qword_100047B28);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_100001FDC(&qword_100057FF0, &qword_100047B30);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v16 = sub_100001FDC(&qword_100057FF8, &qword_100047B38);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_11;
  }

  v18 = sub_100001FDC(&qword_100058000, &qword_100047B40);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[10];

  return v19(v20, a2, v18);
}

uint64_t sub_100041160(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100001FDC(&qword_100057FC0, &qword_100047B00);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100001FDC(&qword_100057FE0, &qword_100047B20);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_100001FDC(&qword_100057FE8, &qword_100047B28);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = sub_100001FDC(&qword_100057FF0, &qword_100047B30);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v18 = sub_100001FDC(&qword_100057FF8, &qword_100047B38);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[9];
    goto LABEL_11;
  }

  v20 = sub_100001FDC(&qword_100058000, &qword_100047B40);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[10];

  return v21(v22, a2, a2, v20);
}

void sub_1000413CC()
{
  sub_100041568(319, &qword_1000580B8, &qword_1000580C0, "4\v");
  if (v0 <= 0x3F)
  {
    sub_100041568(319, &qword_1000580C8, &qword_1000580D0, &qword_100047C70);
    if (v1 <= 0x3F)
    {
      sub_100041568(319, &qword_1000580D8, &unk_100056B40, &unk_100045890);
      if (v2 <= 0x3F)
      {
        sub_100041568(319, &qword_1000580E0, &qword_1000580E8, &qword_100047C78);
        if (v3 <= 0x3F)
        {
          sub_1000415BC(319, &qword_1000580F0, &type metadata for String, &type metadata accessor for Option);
          if (v4 <= 0x3F)
          {
            sub_1000415BC(319, &unk_1000580F8, &type metadata for Bool, &type metadata accessor for Flag);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100041568(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100002024(a3, a4);
    v5 = type metadata accessor for Option();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000415BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Splunkloggingd.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Splunkloggingd.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100041760()
{
  result = qword_10005AE80[0];
  if (!qword_10005AE80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10005AE80);
  }

  return result;
}

unint64_t sub_1000417B8()
{
  result = qword_10005AF90;
  if (!qword_10005AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AF90);
  }

  return result;
}

unint64_t sub_100041810()
{
  result = qword_10005AF98[0];
  if (!qword_10005AF98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10005AF98);
  }

  return result;
}

uint64_t sub_100041864(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43726566667562 && a2 == 0xEB00000000746E75;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726576726573 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6953726566667562 && a2 == 0xEA0000000000657ALL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C506769666E6F63 && a2 == 0xEB00000000747369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEB00000000657669 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6261547469647561 && a2 == 0xEF7473696C50656CLL)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}