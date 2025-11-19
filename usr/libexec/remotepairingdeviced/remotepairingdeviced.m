void sub_10000C200(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10000C268(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_10000C274(a1, v1[2]);
}

uint64_t sub_10000C274(uint64_t a1, uint64_t a2)
{
  remote_device_cancel();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    v3 = sub_10000C44C(a2);
    swift_endAccess();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = static os_log_type_t.default.getter();
    v6 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v5))
    {
      v7 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v7 = 136446466;
      remote_device_get_name();
      v8 = String.init(cString:)();
      v10 = sub_10000C600(v8, v9, &v14);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2082;
      v11 = dispatch thunk of RemoteXPCControlChannelTransport.id.getter();
      v13 = sub_10000C600(v11, v12, &v14);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v6, v5, "RSD device %{public}s associated with control channel %{public}s became disconnected. Invalidating control channel", v7, 0x16u);
      swift_arrayDestroy();
    }

    dispatch thunk of RemoteXPCControlChannelTransport.invalidate()();
  }

  return result;
}

uint64_t sub_10000C44C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_10000C518(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v9 = *(*v2 + 24);
  sub_100013414(&qword_10009BE28, &qword_100078B58);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);
  v10 = *(*(v12 + 56) + 8 * v6);
  sub_10000C5BC();
  _NativeDictionary._delete(at:)();
  *v2 = v12;
  return v10;
}

unint64_t sub_10000C518(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_10000C55C(a1, v4);
}

unint64_t sub_10000C55C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_10000C5BC()
{
  result = qword_10009BE30;
  if (!qword_10009BE30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009BE30);
  }

  return result;
}

uint64_t sub_10000C600(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000C828(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_10000CA80(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_10000CADC(v11);
  return v7;
}

char *sub_10000C6C4(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000C710(a1, a2);
  sub_10000C99C(&off_10008EA60);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000C710(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_10000C928(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

unint64_t sub_10000C828(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000C6C4(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

void *sub_10000C928(uint64_t a1, uint64_t a2)
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

  sub_100013414(&unk_10009B740, &unk_100078770);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_10000C99C(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_100054BF8(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10000CA80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000CADC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000CC48(uint64_t result)
{
  *(v2 - 128) = v1;
  *(v2 - 120) = result;
  *(v2 - 160) = _NSConcreteStackBlock;
  *(v2 - 152) = v3;
  v4 = *(v2 - 184);
  return result;
}

uint64_t sub_10000CCE4()
{
  v3 = *(*(*(v1 - 160) + 48) + 16 * v0 + 8);
}

uint64_t sub_10000CD1C()
{
  result = *(v0 - 288);
  v2 = *(v0 - 72);
  return result;
}

BOOL sub_10000CD2C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10000CD44(uint64_t result)
{
  *(v2 + 4) = result;
  *(v2 + 12) = 1024;
  *(v2 + 14) = v1;
  return result;
}

uint64_t sub_10000CD58()
{
}

uint64_t sub_10000CD88()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_beginAccess();
      sub_10000CE94();
      swift_endAccess();

      sub_10000D9E8();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = Strong;
        remote_device_cancel();
      }
    }
  }

  return result;
}

uint64_t sub_10000CE88()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_10000CD88();
}

void sub_10000CE94()
{
  sub_10006A318();
  sub_10006A094();
  if (v2)
  {
    type metadata accessor for ControlChannelConnection();
    v4 = *(v1 + 40);
    sub_10000D31C();
    sub_10000D200(v5, v6);
    sub_10006A030();
    sub_10000CC14();
    dispatch thunk of Hashable._rawHashValue(seed:)();
    sub_100069FB4();
    while (1)
    {
      sub_10000D4F8(v7);
      if ((v8 & 1) == 0)
      {
        break;
      }

      sub_10006A284();
      sub_10000D31C();
      sub_10000D200(&qword_10009B9E0, v9);
      if (sub_10006A0C8())
      {
        v10 = *v0;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = *v0;
        v16 = *v0;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000669F8();
          v12 = v16;
        }

        v13 = *(*(v12 + 48) + 8 * v4);
        sub_100069EC4();
        sub_10000D6B4(v4, v14, v15, &type metadata accessor for ControlChannelConnection);
        *v0 = v16;
        break;
      }

      v7 = v4 + 1;
    }
  }

  else
  {
    sub_10006A05C();

    v3 = __CocoaSet.contains(_:)();

    if (v3)
    {
      sub_10006A200();
      sub_100067A0C();
    }

    else
    {
    }
  }

  sub_10006A330();
}

uint64_t sub_10000D030()
{

  return swift_slowAlloc();
}

uint64_t sub_10000D078()
{
}

uint64_t sub_10000D0C0()
{

  return Error<>.init(_:_:)();
}

uint64_t sub_10000D0E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000D128(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000D170(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000D1B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000D200(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10000D254(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t sub_10000D2D0()
{
  v2 = *(v0 + 32);

  return swift_getObjectType();
}

void sub_10000D334(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_10000D380()
{

  return Error<>.init(_:_:)();
}

uint64_t sub_10000D3B0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + ((v2 << 9) | (8 * a1)));
}

uint64_t sub_10000D3D0()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_10000D40C()
{
  **(v1 - 264) = v0;
  v3 = *(v1 - 272);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10000D444()
{

  return swift_allocError();
}

uint64_t sub_10000D464()
{

  return swift_slowAlloc();
}

uint64_t sub_10000D488()
{

  return swift_beginAccess();
}

void sub_10000D4BC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x12u);
}

uint64_t sub_10000D524()
{

  return swift_allocError();
}

void sub_10000D56C()
{

  sub_100045AC4();
}

uint64_t sub_10000D5AC()
{

  return swift_allocError();
}

uint64_t sub_10000D5D8(unint64_t *a1)
{

  return sub_100073058(a1, v1);
}

void sub_10000D624(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void sub_10000D640()
{
  v3 = *(*(v0 + v1) + 16);

  sub_10005403C(v3);
}

uint64_t sub_10000D670()
{
  v3 = *v0;
  result = v1;
  v5 = *(v2 - 312);
  return result;
}

double sub_10000D688(uint64_t a1, uint64_t a2)
{

  return sub_10004C55C(a1, a2, v3, (v2 + 112));
}

unint64_t sub_10000D6B4(unint64_t result, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  v5 = result;
  v6 = *v4;
  v7 = *v4 + 56;
  v8 = -1 << *(*v4 + 32);
  v9 = (result + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v13 = ~v8;

    v14 = _HashTable.previousHole(before:)();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v15 = (v14 + 1) & v13;
      a2(0);
      sub_10000D200(a3, a4);
      do
      {
        v16 = *(v6 + 40);
        v27 = *(*(v6 + 48) + 8 * v9);
        v17 = dispatch thunk of Hashable._rawHashValue(seed:)() & v13;
        if (v5 >= v15)
        {
          if (v17 >= v15 && v5 >= v17)
          {
LABEL_15:
            v20 = *(v6 + 48);
            v21 = (v20 + 8 * v5);
            v22 = (v20 + 8 * v9);
            if (v5 != v9 || v21 >= v22 + 1)
            {
              *v21 = *v22;
              v5 = v9;
            }
          }
        }

        else if (v17 >= v15 || v5 >= v17)
        {
          goto LABEL_15;
        }

        v9 = (v9 + 1) & v13;
      }

      while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }

    *(v7 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  }

  else
  {
    *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v24 = *(v6 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v26;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_10000D8D4()
{
}

uint64_t sub_10000D900(int *a1)
{
  v6 = *(v1 + a1[12]);
  v7 = *(v1 + a1[16]);
  v8 = a1[20];
  v9 = *(v1 + v8 + 8);
  *(v5 - 128) = *(v1 + v8);
  *(v5 - 120) = v7;
  *(v5 - 136) = v9;
  *(v5 - 112) = v4;
  v10 = *(v3 + 16);
  return v2;
}

uint64_t sub_10000D964()
{

  return swift_dynamicCast();
}

uint64_t sub_10000D9E8()
{
  v1 = v0;
  v2 = static os_log_type_t.default.getter();
  v3 = qword_10009CED0;
  result = os_log_type_enabled(qword_10009CED0, v2);
  if (result)
  {

    v5 = swift_slowAlloc();
    *v5 = 134217984;
    swift_beginAccess();
    v6 = *(v1 + 24);
    if ((v6 & 0xC000000000000001) != 0)
    {
      if (v6 < 0)
      {
        v7 = *(v1 + 24);
      }

      v8 = *(v1 + 24);

      v9 = __CocoaSet.count.getter();
    }

    else
    {
      v9 = *(v6 + 16);
    }

    *(v5 + 4) = v9;

    _os_log_impl(&_mh_execute_header, v3, v2, "RSD Peers updated. Total count: %ld", v5, 0xCu);
  }

  return result;
}

void sub_10000DAF4()
{
  sub_10000D598();
  v5 = *(v1 + OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper_connection);
  ObjectType = swift_getObjectType();
  OS_nw_connection.send(content:completion:)(v4, v3, v2, v0, ObjectType);
}

uint64_t sub_10000DB50()
{
  v1 = *v0;
  sub_10000DBDC(&unk_10009B760, type metadata accessor for NWObjcTunnelConnectionWrapper);
  return StreamBasedTunnelConnection.send(packets:completion:)();
}

uint64_t sub_10000DBDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000DC24(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10000DC84(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 56);
  return sub_10000DC94(a1, *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

uint64_t sub_10000DC94(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  if (a1)
  {
    swift_unknownObjectRetain();
    v9 = static os_log_type_t.error.getter();
    v10 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v9))
    {
      v25 = a5;
      sub_10000E228(a3, a4);
      sub_10000E228(a3, a4);
      v11 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v11 = 136446722;
      v12 = [a2 description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_10000C600(v13, v15, &v26);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2048;
      switch(a4 >> 62)
      {
        case 1uLL:
          sub_10000DF50(a3, a4);
          LODWORD(v17) = HIDWORD(a3) - a3;
          if (__OFSUB__(HIDWORD(a3), a3))
          {
            __break(1u);
            JUMPOUT(0x10000DF40);
          }

          v17 = v17;
          break;
        case 2uLL:
          v20 = *(a3 + 16);
          v19 = *(a3 + 24);
          sub_10000DF50(a3, a4);
          v17 = v19 - v20;
          if (__OFSUB__(v19, v20))
          {
            __break(1u);
            goto LABEL_10;
          }

          break;
        case 3uLL:
LABEL_10:
          sub_10000DF50(a3, a4);
          v17 = 0;
          break;
        default:
          sub_10000DF50(a3, a4);
          v17 = BYTE6(a4);
          break;
      }

      *(v11 + 14) = v17;
      sub_10000DF50(a3, a4);
      *(v11 + 22) = 2080;
      swift_unknownObjectRetain();
      sub_100013414(&qword_10009B538, &qword_100078488);
      v21 = String.init<A>(describing:)();
      v23 = sub_10000C600(v21, v22, &v26);

      *(v11 + 24) = v23;
      _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s: Error sending %ld bytes of data %s", v11, 0x20u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
      a5 = v25;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v18 = sub_10004F6F4();
  }

  else
  {
    v18 = 0;
  }

  a5(v18);
}

uint64_t sub_10000DF50(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void OS_nw_connection.send(content:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12 = NWCreateDispatchDataFromNSData();

  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = v5;
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = a4;
  sub_10000D2AC();
  v15[1] = 1107296256;
  v15[2] = sub_10000DC24;
  v15[3] = &unk_100090BC8;
  v14 = _Block_copy(v15);
  swift_unknownObjectRetain();
  sub_10000E228(a1, a2);

  nw_connection_send(v5, v12, _nw_content_context_default_message, 1, v14);
  _Block_release(v14);
}

uint64_t sub_10000E0D0()
{
  v1 = v0[3];
  swift_unknownObjectRelease();
  sub_10000DF50(v0[4], v0[5]);
  v2 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000E118(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E138(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E148(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E158(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E178(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E188(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E198(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E1A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E1B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E1C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E1D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E1E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E1F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E208(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E218(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E228(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_10000E280(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v11 = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10(a2, a3, a4, a5);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

_OWORD *sub_10000E8A4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10000E8B4()
{
  result = qword_10009B528;
  if (!qword_10009B528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009B528);
  }

  return result;
}

void OS_nw_connection.receive(minLength:maxLength:peerConnectionInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = a2;
  if ((a2 | a1) < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2 <= 0xFFFFFFFFLL)
  {
    v11 = swift_allocObject();
    v11[2] = a3;
    v11[3] = a1;
    v11[4] = a4;
    v11[5] = a5;
    sub_10000D2AC();
    sub_10000EE74();
    v14[2] = v12;
    v14[3] = &unk_100090C18;
    v13 = _Block_copy(v14);

    nw_connection_receive(v5, a1, v6, v13);
    _Block_release(v13);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_10000EA04()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000EA50@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = sub_100013414(&qword_10009B730, &unk_100078A80);
  v7 = sub_10000CC04(v6);
  v9 = *(v8 + 16);

  return v9(a2, v4 + v5, v7);
}

uint64_t sub_10000EACC()
{

  return type metadata accessor for XPCDictionary();
}

uint64_t sub_10000EB64()
{
}

uint64_t sub_10000EB80()
{
  v1 = *v0;
  sub_10000DBDC(&unk_10009B760, type metadata accessor for NWObjcTunnelConnectionWrapper);
  return StreamBasedTunnelConnection.receivePackets(completion:)();
}

uint64_t sub_10000EBFC()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_10000EC4C(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_10000EC4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000E228(a1, a2);
  }

  return a1;
}

uint64_t sub_10000EC60(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_10000ECA0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_10000ECF4(v5, v6);
}

uint64_t sub_10000ECF4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000DF50(a1, a2);
  }

  return a1;
}

uint64_t sub_10000ED08(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_10000DF50(a1, a2);
  }
}

void sub_10000ED80()
{
  sub_10000D598();
  v5 = *(v1 + OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper_connection);
  swift_getObjectType();
  OS_nw_connection.receive(minLength:maxLength:peerConnectionInfo:completion:)(v4, v3, *(v1 + OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper_peerConnectionsInfo), v2, v0);
}

uint64_t sub_10000EE54()
{

  return sub_1000223E8(v0, 1, 1, v1);
}

_DWORD *sub_10000EF0C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_10000EF38()
{
  swift_weakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000EFAC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10000EFE4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F01C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F11C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10000F164()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F1A0()
{
  v1 = v0[2];

  v2 = v0[4];

  sub_10000DF50(v0[5], v0[6]);
  sub_10001ADD4();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10000F1E4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_10000CCD8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10000F220()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_10001ADD4();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10000F28C()
{
  v1 = *(v0 + 24);

  sub_10000ED08(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49, 7);
}

void sub_10000F344(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  [a3 setPublicKey:isa];
}

void sub_10000F39C(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  [a3 setAltIRK:isa];
}

uint64_t sub_10000F3F4()
{
  sub_10000DF50(v0[2], v0[3]);
  v1 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000F438()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F474()
{
  v1 = *(v0 + 24);

  sub_10000D090();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10000F4AC()
{
  swift_weakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000F4EC()
{
  swift_weakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000F538()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 27, 7);
}

uint64_t sub_10000F570()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F620()
{
  swift_weakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000F658()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000F6A0()
{
  v1 = *(v0 + 16);

  sub_10000D090();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10000F6E4()
{
  swift_weakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000F718()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F758()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F7BC()
{
  swift_weakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000F7F8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F838()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F87C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000F8C4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F8FC()
{
  v1 = type metadata accessor for PairingConsentCollectionOutcome();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_10000F9B8()
{
  v1 = type metadata accessor for UUID();
  sub_10000CBBC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (v5 + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7 + 16);

  return _swift_deallocObject(v0, v7 + 24, v4 | 7);
}

uint64_t sub_10000FA94()
{
  swift_weakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000FAC8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000FAD8()
{
  v1 = type metadata accessor for UUID();
  sub_10000CBBC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10000FB90()
{
  v1 = *(sub_100013414(&qword_10009A908, &qword_100078DC0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(v0 + v3);
  }

  else
  {
    v7 = type metadata accessor for ListenerStartedResponse();
    sub_10000CC04(v7);
    (*(v8 + 8))(v0 + v3);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000FC98()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000FCE0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000FD18()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000FD60()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000FD9C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000FDD4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000FE28()
{
  swift_weakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000FEB4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000FF14()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000FF7C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_10000CBD0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10000FFCC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010004()
{
  swift_weakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100010038()
{
  v1 = type metadata accessor for XPCEventPublisher.Token();
  sub_10000CBBC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 8, v4 | 7);
}

uint64_t sub_100010104()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_1000101C0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_10000D30C(a3, result);
  }

  return result;
}

uint64_t sub_1000101E0()
{
  swift_weakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100010214()
{
  swift_unknownObjectWeakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100010248()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  sub_100055004();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_10001028C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000102E4()
{
  v1 = *(v0 + 16);

  sub_10000D090();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100010338()
{
  v1 = type metadata accessor for TunnelConnectionState();
  sub_10000CBBC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_1000103F0()
{
  v1 = *(v0 + 16);

  sub_10000CBD0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100010424()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  sub_100055004();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_100010468()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_100055004();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_1000104AC()
{
  v1 = *(v0 + 24);

  sub_10000D090();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000104E0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001052C()
{
  swift_weakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100010564()
{
  v1 = v0[2];

  sub_10000DF50(v0[3], v0[4]);
  sub_10000CCD8();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000105A0()
{
  sub_10000DF50(v0[2], v0[3]);
  v1 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000105E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_10000CCD8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10001062C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010664()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000106C0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100010700()
{
  v1 = type metadata accessor for UUID();
  sub_10000CBBC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v4 | 7);
}

uint64_t sub_1000107FC()
{
  swift_weakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100010830()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_10000CCD8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100010874()
{
  swift_unknownObjectWeakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000108A8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  sub_10000CCD8();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_1000108EC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010974()
{
  v1 = *(v0 + 16);

  sub_10000CADC((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000109B4()
{
  v1 = v0[2];

  sub_10000CADC(v0 + 3);
  v2 = v0[8];

  v3 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100010A04()
{
  v1 = v0[2];

  sub_10000CADC(v0 + 3);
  v2 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100010A4C()
{
  swift_weakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100010A80()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100010AB8()
{
  v1 = type metadata accessor for CertificateUtilities.RawTLSPublicKeyInfo();
  sub_10000CBBC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_100010B70()
{
  if (*(v0 + 40))
  {
    sub_10000CADC((v0 + 16));
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100010BB4()
{
  v1 = sub_100013414(&qword_10009C128, &unk_100078DE0);
  sub_10000CD78(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v6 = *(v5 + 64);
  v7 = *(v0 + 2);

  sub_10000DF50(*(v0 + 4), *(v0 + 5));
  v8 = type metadata accessor for TransportProtocolType();
  if (!sub_100022484(&v0[v4], 1, v8))
  {
    (*(*(v8 - 8) + 8))(&v0[v4], v8);
  }

  v9 = (v6 + v4 + 9) & 0xFFFFFFFFFFFFFFF8;
  v10 = *&v0[v9];

  return _swift_deallocObject(v0, v9 + 8, v3 | 7);
}

uint64_t sub_100010CCC()
{
  v1 = *(sub_100013414(&qword_10009A908, &qword_100078DC0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(v0 + v3);
  }

  else
  {
    v7 = type metadata accessor for ListenerStartedResponse();
    sub_10000CC04(v7);
    (*(v8 + 8))(v0 + v3);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100010DD4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_10000CCD8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100010E18(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100010E30(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

nw_parameters_t create_nw_parameters_for_tcp(nw_parameters_configure_protocol_block_t configure_tcp)
{
  secure_tcp = nw_parameters_create_secure_tcp(_nw_parameters_configure_protocol_disable, configure_tcp);

  return secure_tcp;
}

id _remotepairing_nw_connection_create_with_connected_socket_and_parameters()
{
  v0 = nw_connection_create_with_connected_socket_and_parameters();

  return v0;
}

uint64_t is_setup_complete()
{
  if (&_BYSetupAssistantHasCompletedInitialRun)
  {
    return BYSetupAssistantHasCompletedInitialRun();
  }

  else
  {
    return 1;
  }
}

BOOL is_pairing_restricted_by_findMy()
{
  v0 = +[FMDFMIPManager sharedInstance];
  v1 = v0;
  v2 = v0 != 0;
  if (v0)
  {
    if ([v0 lockdownShouldDisableDevicePairing])
    {
      v3 = pairing_utilities_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_100073344();
      }

LABEL_9:

      goto LABEL_10;
    }
  }

  else if ((os_variant_is_darwinos() & 1) == 0)
  {
    v3 = pairing_utilities_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_100073304();
    }

    goto LABEL_9;
  }

  v2 = 0;
LABEL_10:

  return v2;
}

id pairing_utilities_log()
{
  if (qword_10009C148[0] != -1)
  {
    sub_100073384();
  }

  v1 = qword_10009C140;

  return v1;
}

uint64_t managed_configuration_allow_pairing(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[MCProfileConnection sharedConnection];
  v6 = v5;
  if (!v5)
  {
    if (os_variant_is_darwinos())
    {
LABEL_18:
      v8 = 0;
      goto LABEL_19;
    }

    v9 = pairing_utilities_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_100073450();
    }

LABEL_17:

    goto LABEL_18;
  }

  v7 = [v5 hostMayPairWithOptions:v3 challenge:v4];
  v8 = v7;
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
LABEL_14:
        v8 = 1;
        goto LABEL_19;
      }

LABEL_11:
      v10 = pairing_utilities_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000733D8(v8, v10);
      }

      goto LABEL_14;
    }

    v9 = pairing_utilities_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100073398();
    }

    goto LABEL_17;
  }

  if (v7 == 2)
  {
    v8 = 2;
    goto LABEL_19;
  }

  if (v7 != 3)
  {
    goto LABEL_11;
  }

LABEL_19:

  return v8;
}

void sub_100011150(id a1)
{
  qword_10009C140 = os_log_create("com.apple.dt.remotepairing", "pairingutilities");

  _objc_release_x1();
}

uint64_t lockdown_wifi_pairing_enabled()
{
  v0 = lockdown_connect();
  if (v0)
  {
    v1 = lockdown_copy_value();
    lockdown_disconnect();
    if (v1)
    {
      v0 = v1 == kCFBooleanTrue;
      CFRelease(v1);
    }

    else
    {
      return 0;
    }
  }

  return v0;
}

void sub_100011420(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3 && [*(a1 + 32) active])
  {
    [*(a1 + 32) setBrowser:0];
    if (([*(a1 + 32) startOnQueue:*(a1 + 40)] & 1) == 0)
    {
      v6 = [*(a1 + 32) log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10007352C();
      }
    }
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    remote_device_set_disconnected_callback();
  }
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000118F0(0, &qword_100098EC8, NSError_ptr);
  static NSError.setRemotePairingNormalizationProviders()();
  sub_1000118F0(0, &qword_100098ED0, OS_os_log_ptr);
  qword_10009CED0 = OS_os_log.init(subsystem:category:)();
  type metadata accessor for RemotePairingDeviceService();
  swift_allocObject();
  sub_100038990();
  qword_10009CED8 = v3;
  sub_100038C28();
  CFRunLoopRun();
  return 0;
}

uint64_t sub_1000118F0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100011944()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t sub_100011990()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int sub_1000119E8()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100011A5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000493D4();
  *a1 = result;
  return result;
}

uint64_t sub_100011A84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000493DC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100011ACC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

void sub_100011BAC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100011C60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011CB8()
{
  v1 = v0;
  v2 = static os_log_type_t.default.getter();
  v3 = qword_10009CED0;
  result = os_log_type_enabled(qword_10009CED0, v2);
  if (result)
  {

    v5 = swift_slowAlloc();
    *v5 = 134217984;
    swift_beginAccess();
    v6 = *(v1 + 16);
    if ((v6 & 0xC000000000000001) != 0)
    {
      if (v6 < 0)
      {
        v7 = *(v1 + 16);
      }

      v8 = *(v1 + 16);

      v9 = __CocoaSet.count.getter();
    }

    else
    {
      v9 = *(v6 + 16);
    }

    *(v5 + 4) = v9;

    _os_log_impl(&_mh_execute_header, v3, v2, "Lockdown Peers updated. Total count: %ld", v5, 0xCu);
  }

  return result;
}

uint64_t sub_100011DC4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

void sub_100011DFC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ControlChannelConnection.Options();
  v5 = sub_10000CBBC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000CBDC();
  v12 = v11 - v10;
  v13 = type metadata accessor for ControlChannelConnection.Options.Device();
  v14 = sub_10000CBBC(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_10000CBDC();
  v21 = v20 - v19;
  if (*(v2 + 72))
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    sub_1000135A0();

    lockdown_disconnect();
  }

  else
  {
    v40 = v21;
    v41 = v17;
    v42 = v18;
    ControlChannelConnection.Options.Device.init(allowsPairSetup:allowsPinlessPairing:allowsIncomingTunnelConnections:allowsPromptlessAutomationPairingUpgrade:allowsSharingSensitiveInfo:)();
    lockdown_connection_is_usb();
    lockdown_get_socket();
    sub_10000CBD0();
    *(swift_allocObject() + 16) = a1;
    sub_10000CBD0();
    *(swift_allocObject() + 16) = a1;
    sub_10000CBD0();
    *(swift_allocObject() + 16) = a1;
    sub_10000CBD0();
    *(swift_allocObject() + 16) = a1;
    v23 = type metadata accessor for SecureSocketDataTransport();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    v43[8] = v23;
    v43[9] = &protocol witness table for SecureSocketDataTransport;
    v43[5] = SecureSocketDataTransport.init(physicallyConnected:underlyingConnectionSocket:bufferedReceiveSizeHandler:syncReceiveHandler:syncSendHandler:cleanupConnectionHandler:)();
    v26 = *(v2 + 24);
    (*(v42 + 16))(v12, v40, v41);
    (*(v7 + 104))(v12, enum case for ControlChannelConnection.Options.device(_:), v4);
    v27 = *(v2 + 80);
    v43[3] = type metadata accessor for SystemKeychainPairingManager();
    v43[4] = sub_10000D0E0(&qword_100099CF0, type metadata accessor for SystemKeychainPairingManager);
    v43[0] = v27;
    v28 = type metadata accessor for ControlChannelConnection();

    v29 = v26;

    static ControlChannelConnection.defaultMaxReconnectionAttempts.getter();
    v30 = *(v28 + 48);
    v31 = *(v28 + 52);
    swift_allocObject();
    v32 = ControlChannelConnection.init(transport:queue:options:maxReconnectionAttempts:pairingDataStorageProvider:peerWireProtocolVersion:)();
    swift_beginAccess();

    sub_10006463C(v43, v32);
    swift_endAccess();

    sub_100011CB8();
    sub_10000CBD0();
    v33 = swift_allocObject();
    swift_weakInit();
    sub_10000CBD0();
    v34 = swift_allocObject();
    swift_weakInit();
    v35 = swift_allocObject();
    *(v35 + 16) = v33;
    *(v35 + 24) = v34;

    dispatch thunk of ControlChannelConnection.invalidationHandler.setter();

    sub_10000CBD0();
    v36 = swift_allocObject();
    swift_weakInit();
    sub_10000CBD0();
    v37 = swift_allocObject();
    swift_weakInit();

    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = v36;

    dispatch thunk of ControlChannelConnection._connectionSetupCompleteHandler.setter();

    dispatch thunk of ControlChannelConnection.requireUserConsentForPairing.setter();
    v39 = *sub_10001355C((v2 + 32), *(v2 + 56));

    sub_100055264();

    (*(v42 + 8))(v40, v41);
    sub_1000135A0();
  }
}

uint64_t sub_100012398()
{
  if (lockdown_get_buffered_read_size())
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t sub_1000123F8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_beginAccess();
      sub_10000CE94();
      swift_endAccess();

      sub_100011CB8();
    }
  }

  return result;
}

uint64_t sub_1000124C0()
{
  v0 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v6 = dispatch thunk of ControlChannelConnection.resolvedIdentity.getter();
      if (v6)
      {
        v7 = v6;
        sub_100061FF0();
        if ((v8 & 1) == 0)
        {
          (*(v1 + 104))(v4, enum case for ControlChannelConnection.InvalidationReason.peerUnpaired(_:), v0);
          dispatch thunk of ControlChannelConnection.invalidate(for:)();

          return (*(v1 + 8))(v4, v0);
        }
      }
    }
  }

  return result;
}

void sub_10001267C()
{
  static RemoteServiceNames.lockdownService.getter();
  v1 = *(v0 + 24);
  v3[4] = sub_1000134D4;
  v4 = v0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_10005B02C;
  v3[3] = &unk_10008ECE0;
  v2 = _Block_copy(v3);

  String.utf8CString.getter();

  lockdown_checkin_xpc();

  _Block_release(v2);
}

void sub_100012774(uint64_t a1)
{
  if (a1)
  {
    sub_100011DFC(a1);
  }
}

void sub_1000127A0()
{
  v30 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  v1 = sub_10000CBBC(v30);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_10000CBDC();
  v29 = v7 - v6;
  if (*(v0 + 72))
  {
    static os_log_type_t.error.getter();
    sub_1000135A0();

    os_log(_:dso:log:_:_:)();
  }

  else
  {
    *(v0 + 72) = 1;
    swift_beginAccess();
    v9 = *(v0 + 16);
    if ((v9 & 0xC000000000000001) != 0)
    {
      if (v9 < 0)
      {
        v10 = *(v0 + 16);
      }

      __CocoaSet.makeIterator()();
      type metadata accessor for ControlChannelConnection();
      sub_10000D270();
      sub_10000D0E0(v11, v12);
      Set.Iterator.init(_cocoa:)();
      v9 = v32;
      v13 = v33;
      v15 = v34;
      v14 = v35;
      v16 = v36;
    }

    else
    {
      v13 = v9 + 56;
      v17 = *(v9 + 56);
      v15 = ~(-1 << *(v9 + 32));
      sub_10000D89C();
      v16 = v18 & v19;

      v14 = 0;
    }

    v20 = (v15 + 64) >> 6;
    v28 = enum case for ControlChannelConnection.InvalidationReason.serviceShutdown(_:);
    v21 = (v3 + 104);
    v22 = (v3 + 8);
    if (v9 < 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v23 = v14;
      v24 = v16;
      v25 = v14;
      if (!v16)
      {
        break;
      }

LABEL_15:
      v26 = (v24 - 1) & v24;
      v27 = *(*(v9 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));

      if (!v27)
      {
LABEL_21:
        sub_1000134CC();
        sub_1000135A0();
        return;
      }

      while (1)
      {
        (*v21)(v29, v28, v30);
        dispatch thunk of ControlChannelConnection.invalidate(for:)();

        (*v22)(v29, v30);
        v14 = v25;
        v16 = v26;
        if ((v9 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for ControlChannelConnection();
          swift_dynamicCast();
          v25 = v14;
          v26 = v16;
          if (v31)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= v20)
      {
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v25);
      ++v23;
      if (v24)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100012AAC(NSObject *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *(v1 + 16);
    }

    __CocoaSet.makeIterator()();
    type metadata accessor for ControlChannelConnection();
    sub_10000D270();
    sub_10000D0E0(v5, v6);
    result = Set.Iterator.init(_cocoa:)();
    v3 = v32[4];
    v8 = v32[5];
    v9 = v32[6];
    v10 = v32[7];
    v11 = v32[8];
  }

  else
  {
    v8 = v3 + 56;
    v12 = *(v3 + 56);
    v9 = ~(-1 << *(v3 + 32));
    sub_10000D89C();
    v11 = v13 & v14;

    v10 = 0;
  }

  v15 = (v9 + 64) >> 6;
  while (v3 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      return sub_1000134CC();
    }

    type metadata accessor for ControlChannelConnection();
    swift_dynamicCast();
    v18 = v10;
    v19 = v11;
    if (!v32[0])
    {
      return sub_1000134CC();
    }

LABEL_16:
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(a1, v21))
    {
      v22 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32[0] = v31;
      *v22 = 136446210;
      type metadata accessor for ControlChannelConnection();

      v23 = String.init<A>(describing:)();
      v30 = v19;
      v25 = v15;
      v26 = v8;
      v27 = v3;
      v28 = a1;
      v29 = sub_10000C600(v23, v24, v32);

      *(v22 + 4) = v29;
      a1 = v28;
      v3 = v27;
      v8 = v26;
      v15 = v25;
      _os_log_impl(&_mh_execute_header, a1, v21, "State dump: LockdownControlChannelService control channel connection: %{public}s", v22, 0xCu);
      sub_10000CADC(v31);

      v10 = v18;
      v11 = v30;
    }

    else
    {

      v10 = v18;
      v11 = v19;
    }
  }

  v16 = v10;
  v17 = v11;
  v18 = v10;
  if (v11)
  {
LABEL_12:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v3 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

    if (!v20)
    {
      return sub_1000134CC();
    }

    goto LABEL_16;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      return sub_1000134CC();
    }

    v17 = *(v8 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100012DB0()
{
  v1 = *(v0 + 16);

  sub_10000CADC((v0 + 32));
  v2 = *(v0 + 80);

  return v0;
}

uint64_t sub_100012DE8()
{
  sub_100012DB0();

  return _swift_deallocClassInstance(v0, 88, 7);
}

uint64_t sub_100012ED0(uint64_t a1, void *a2)
{
  v3 = v2;
  if (sub_10004997C(&_swiftEmptyArrayStorage))
  {
    sub_10005783C(&_swiftEmptyArrayStorage);
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  *(v3 + 32) = a1;
  *(v3 + 40) = v6;
  *(v3 + 16) = a2;
  type metadata accessor for SystemXPCListenerConnection();

  v7 = a2;
  static RemoteServiceNames.lockdownService.getter();
  v8 = *(v3 + 16);
  static SystemXPCConnection.machServiceListenerConnection(name:targetQueue:)();

  *(v3 + 24) = swift_dynamicCastClassUnconditional();
  return v3;
}

uint64_t sub_100012FC4()
{
  v1 = *(v0 + 24);
  dispatch thunk of SystemXPCListenerConnection.setPeerConnectionHandler(_:)();
  return dispatch thunk of XPCConnection.activate()();
}

uint64_t sub_100013004(uint64_t a1)
{
  v2 = type metadata accessor for XPCError();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v31 - v9;
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  v13 = sub_100013414(&qword_10009A170, &qword_1000779C0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v31 - v15);
  sub_10001345C(a1, &v31 - v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v12, v16, v2);
    v17 = static os_log_type_t.error.getter();
    v18 = qword_10009CED0;
    v19 = *(v3 + 16);
    v19(v10, v12, v2);
    if (os_log_type_enabled(v18, v17))
    {
      v20 = swift_slowAlloc();
      v31 = v18;
      v21 = v20;
      v22 = swift_slowAlloc();
      v32 = v22;
      *v21 = 136315138;
      v19(v7, v10, v2);
      v23 = String.init<A>(describing:)();
      v25 = v24;
      v26 = *(v3 + 8);
      v26(v10, v2);
      v27 = sub_10000C600(v23, v25, &v32);

      *(v21 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v31, v17, "Failed to start dummy lockdown service with error: %s", v21, 0xCu);
      sub_10000CADC(v22);

      return (v26)(v12, v2);
    }

    else
    {
      v30 = *(v3 + 8);
      v30(v10, v2);
      return (v30)(v12, v2);
    }
  }

  else
  {
    v29 = *v16;
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();

    dispatch thunk of XPCConnection.cancel()();
  }
}

uint64_t sub_100013354()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return v0;
}

uint64_t sub_10001338C()
{
  sub_100013354();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_100013414(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10001345C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013414(&qword_10009A170, &qword_1000779C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001350C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000123F8();
}

uint64_t sub_100013514()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100013554()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000124C0();
}

void *sub_10001355C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_1000135E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000D600();
  a19 = v21;
  a20 = v22;
  v23 = *(*(sub_100013414(&qword_100099488, &unk_100077650) - 8) + 64);
  sub_10000D8B0();
  __chkstk_darwin(v24);
  v25 = sub_100016044();
  v26 = sub_10000CBBC(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  sub_10000EDF0();
  __chkstk_darwin(v31);
  sub_100015FC8();
  v32 = sub_100015FF4();
  v33(v32);
  static os_log_type_t.default.getter();
  v34 = qword_10009CED0;
  os_log(_:dso:log:_:_:)();
  XPCDictionary.auditToken.getter();
  XPCDictionary.entitlements.getter();
  sub_10001462C();
  v35 = (v28 - 24);
  if (v20)
  {
    v36 = *v35;
    v37 = sub_10000D438();
    v36(v37);
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v38))
    {
      sub_10000D054();
      v48 = swift_slowAlloc();
      sub_10000CCCC();
      v49 = swift_slowAlloc();
      a10 = v49;
      *v48 = 136315138;
      swift_errorRetain();
      sub_100013414(&unk_10009A930, &unk_100077080);
      v39 = String.init<A>(describing:)();
      v41 = sub_10000C600(v39, v40, &a10);

      *(v48 + 4) = v41;
      sub_100016064(&_mh_execute_header, v42, v43, "Pairing deletion failed with error: %s");
      sub_10000CADC(v49);
      sub_10000EE00();

      sub_100015FBC();
    }

    swift_willThrow();

    v44 = sub_10000D288();
    v36(v44);
  }

  else
  {

    v45 = *v35;
    v46 = sub_10000D438();
    v45(v46);
    v47 = sub_10000D288();
    v45(v47);
  }

  sub_100016038();
  sub_100016010();
}

void sub_100013888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000D600();
  a19 = v22;
  a20 = v23;
  v63 = v24;
  v26 = v25;
  v62 = v27;
  v28 = sub_100013414(&qword_100099488, &unk_100077650);
  sub_100016028(v28);
  v30 = *(v29 + 64);
  sub_10000D8B0();
  __chkstk_darwin(v31);
  v33 = &v61 - v32;
  v34 = type metadata accessor for XPCDictionary();
  v35 = sub_10000CBBC(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  __chkstk_darwin(v35);
  sub_10000EDF0();
  v42 = v40 - v41;
  __chkstk_darwin(v43);
  v45 = &v61 - v44;
  sub_100015EEC(v26, v33, &qword_100099488, &unk_100077650);
  v46 = *v33;
  (*(v37 + 32))(v45, &v33[*(v20 + 56)], v34);
  static os_log_type_t.debug.getter();
  v47 = qword_10009CED0;
  os_log(_:dso:log:_:_:)();
  XPCDictionary.auditToken.getter();
  v48 = XPCDictionary.entitlements.getter();
  sub_100014754(v48);
  v49 = (v37 + 8);
  if (v21)
  {
    v50 = *v49;
    (*v49)(v42, v34);
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v51))
    {
      sub_10000D054();
      v52 = swift_slowAlloc();
      v63 = v52;
      sub_10000CCCC();
      v64 = swift_slowAlloc();
      v65 = v21;
      a10 = v64;
      *v52 = 136315138;
      swift_errorRetain();
      sub_100013414(&unk_10009A930, &unk_100077080);
      v53 = String.init<A>(describing:)();
      v55 = sub_10000C600(v53, v54, &a10);
      LODWORD(v62) = v51;
      v56 = v55;

      v57 = v63;
      *(v63 + 1) = v56;
      _os_log_impl(&_mh_execute_header, v47, v62, "Listing paired hosts failed with error: %s", v57, 0xCu);
      sub_10000CADC(v64);
      sub_100015FBC();

      sub_10000EE00();
    }

    swift_willThrow();

    v58 = sub_10000D288();
    (v50)(v58);
  }

  else
  {

    v59 = *v49;
    (*v49)(v42, v34);
    v60 = sub_10000D288();
    v59(v60);
  }

  sub_100016038();
  sub_100016010();
}

void sub_100013B88()
{
  sub_10000D600();
  v24[1] = v0;
  v24[2] = v1;
  v3 = v2;
  v24[0] = v4;
  v5 = (sub_100013414(&qword_100099488, &unk_100077650) - 8);
  v6 = *(*v5 + 64);
  sub_10000D8B0();
  __chkstk_darwin(v7);
  v9 = v24 - v8;
  v10 = type metadata accessor for XPCDictionary();
  v11 = sub_10000CBBC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_10000EDF0();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = v24 - v20;
  sub_100015EEC(v3, v9, &qword_100099488, &unk_100077650);
  v22 = *v9;
  (*(v13 + 32))(v21, &v9[v5[14]], v10);
  static os_log_type_t.debug.getter();
  os_log(_:dso:log:_:_:)();
  XPCDictionary.auditToken.getter();
  XPCDictionary.entitlements.getter();
  sub_10001482C();

  v23 = *(v13 + 8);
  v23(v18, v10);
  v23(v21, v10);
  sub_100016038();
  sub_100016010();
}

void sub_100013D70()
{
  sub_10000D600();
  v23[1] = v1;
  v3 = v2;
  v4 = sub_100013414(&qword_100099488, &unk_100077650);
  sub_100016028(v4);
  v6 = *(v5 + 64);
  sub_10000D8B0();
  __chkstk_darwin(v7);
  v8 = sub_10000EACC();
  v9 = sub_10000CBBC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_10000EDF0();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v19 = v23 - v18;
  sub_100015EEC(v3, v0, &qword_100099488, &unk_100077650);
  v20 = *v0;

  sub_10000D510();
  v21(v19);
  XPCDictionary.entitlements.getter();
  sub_1000147AC();
  v22 = *(v11 + 8);
  v22(v16, v8);
  v22(v19, v8);
  sub_100016010();
}

void sub_100013EFC()
{
  sub_10000D600();
  v29 = v2;
  v4 = v3;
  v30 = v5;
  v6 = sub_100013414(&qword_100099488, &unk_100077650);
  sub_100016028(v6);
  v8 = *(v7 + 64);
  sub_10000D8B0();
  __chkstk_darwin(v9);
  v10 = sub_10000EACC();
  v11 = sub_10000CBBC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_10000EDF0();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = &v28 - v20;
  static os_log_type_t.debug.getter();
  os_log(_:dso:log:_:_:)();
  sub_100015EEC(v4, v1, &qword_100099488, &unk_100077650);
  v22 = *v1;

  sub_10000D510();
  v23(v21);
  XPCDictionary.entitlements.getter();
  sub_1000144B0();
  if (v0)
  {
    v24 = *(v13 + 8);
    v24(v18, v10);
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    swift_willThrow();
    v24(v21, v10);
  }

  else
  {
    v25 = *(v29 + 16);
    v26 = sub_10003D018();
    v27 = *(v13 + 8);
    v27(v18, v10);
    v27(v21, v10);
    *v30 = v26;
  }

  sub_100016010();
}

void sub_100014134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000D600();
  a19 = v21;
  a20 = v22;
  v23 = *(*(sub_100013414(&qword_100099488, &unk_100077650) - 8) + 64);
  sub_10000D8B0();
  __chkstk_darwin(v24);
  v25 = sub_100016044();
  v26 = sub_10000CBBC(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  sub_10000EDF0();
  __chkstk_darwin(v31);
  sub_100015FC8();
  v32 = sub_100015FF4();
  v33(v32);
  static os_log_type_t.debug.getter();
  v34 = qword_10009CED0;
  os_log(_:dso:log:_:_:)();
  XPCDictionary.auditToken.getter();
  XPCDictionary.entitlements.getter();
  sub_100015B60();
  v35 = (v28 - 24);
  if (v20)
  {
    v36 = *v35;
    v37 = sub_10000D438();
    v36(v37);
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v38))
    {
      sub_10000D054();
      v48 = swift_slowAlloc();
      sub_10000CCCC();
      v49 = swift_slowAlloc();
      a10 = v49;
      *v48 = 136315138;
      swift_errorRetain();
      sub_100013414(&unk_10009A930, &unk_100077080);
      v39 = String.init<A>(describing:)();
      v41 = sub_10000C600(v39, v40, &a10);

      *(v48 + 4) = v41;
      sub_100016064(&_mh_execute_header, v42, v43, "Allowing promptless pairing failed with error: %s");
      sub_10000CADC(v49);
      sub_10000EE00();

      sub_100015FBC();
    }

    swift_willThrow();

    v44 = sub_10000D288();
    v36(v44);
  }

  else
  {

    v45 = *v35;
    v46 = sub_10000D438();
    v45(v46);
    v47 = sub_10000D288();
    v45(v47);
  }

  sub_100016038();
  sub_100016010();
}

uint64_t sub_1000143DC()
{
  v1 = v0;
  v2 = *(*(v0 + 48) + 24);
  dispatch thunk of XPCConnection.activate()();
  v3 = *sub_10001355C((v1 + 56), *(v1 + 80));

  sub_1000552AC(0xD000000000000021, 0x800000010007C880, v3, v1);
  static os_log_type_t.debug.getter();
  os_log(_:dso:log:_:_:)();

  return sub_100015560();
}

uint64_t sub_1000144B0()
{
  v0 = type metadata accessor for RemotePairingError();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  sub_10000CBDC();
  result = XPCDictionary.subscript.getter();
  if (result == 2 || (result & 1) == 0)
  {
    result = _RPIsAppleInternal();
    if ((result & 1) == 0)
    {
      sub_100015F54(&unk_10009A0D0, &type metadata accessor for RemotePairingError);
      static Error<>.permissionDenied.getter();
      sub_100015F54(&qword_100099850, &type metadata accessor for RemotePairingError);
      swift_allocError();
      Error<>.init(_:_:)();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10001462C()
{
  v2 = type metadata accessor for HostDeletionTarget();
  v3 = sub_10000CBBC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000CBDC();
  v10 = v9 - v8;
  result = sub_1000144B0();
  if (!v1)
  {
    v12 = *(v0 + 16);
    DeletePairedHostRecordRequest.target.getter();
    sub_10003BB40();
    (*(v5 + 8))(v10, v2);
    return EmptyResponse.init()();
  }

  return result;
}

uint64_t sub_1000147AC()
{
  result = sub_1000144B0();
  if (!v1)
  {
    v3 = *(v0 + 16);
    sub_100037544();
    sub_100058CF0();

    return FetchNetworkPairingSessionIDResponse.init(networkPairingSessionID:)();
  }

  return result;
}

void sub_10001482C()
{
  sub_10000D600();
  v2 = type metadata accessor for PinNotificationEvent();
  v3 = sub_10000CBBC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000CBDC();
  v10 = v9 - v8;
  sub_1000144B0();
  if (!v1)
  {
    type metadata accessor for SystemXPCPeerConnection();
    WirelessPairingSession = CreateWirelessPairingSessionRequest.endpoint.getter();
    xpc_connection_create_from_endpoint(WirelessPairingSession);
    swift_unknownObjectRelease();
    static SystemXPCConnection.unsafePeer(from:)();
    swift_unknownObjectRelease();
    swift_dynamicCastClassUnconditional();
    v12 = *(v0 + 40);
    dispatch thunk of XPCConnection.setTargetQueue(_:)();

    CreateWirelessPairingSessionRequest.requestCustomPinHandler.getter();
    swift_beginAccess();
    v13 = *(v0 + 32);
    swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v0 + 32);
    sub_100068ECC();
    *(v0 + 32) = v25;

    swift_endAccess();
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v0;

    dispatch thunk of SystemXPCPeerConnection.setEventHandler(_:)();

    dispatch thunk of XPCConnection.activate()();
    (*(v5 + 104))(v10, enum case for PinNotificationEvent.empty(_:), v2);
    sub_100015F54(&qword_100099490, &type metadata accessor for PinNotificationEvent);
    sub_100015FA4();
    sub_100015F54(v16, &type metadata accessor for PinNotificationEvent);
    XPCConnection.send<A>(value:)();
    (*(v5 + 8))(v10, v2);
    sub_1000154D4();
    v17 = static os_log_type_t.debug.getter();
    v18 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v17))
    {
      sub_10000D054();
      v19 = swift_slowAlloc();
      sub_10000CCCC();
      v20 = swift_slowAlloc();
      v24 = v20;
      *v19 = 136315138;

      v21 = String.init<A>(describing:)();
      v23 = sub_10000C600(v21, v22, &v24);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v18, v17, "Configured wireless pairing session for %s", v19, 0xCu);
      sub_10000CADC(v20);
      sub_10000EE00();

      sub_100015FBC();
    }

    EmptyResponse.init()();
  }

  sub_100016010();
}

uint64_t sub_100014C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v59 = a1;
  v61 = type metadata accessor for XPCError();
  v3 = *(v61 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v61);
  v57 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v56 - v8;
  __chkstk_darwin(v7);
  v60 = (&v56 - v10);
  v11 = type metadata accessor for XPCDictionary();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v56 - v18;
  __chkstk_darwin(v17);
  v21 = &v56 - v20;
  v22 = sub_100013414(&unk_1000994A0, &unk_100077090);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v56 - v24;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100015EEC(v59, v25, &unk_1000994A0, &unk_100077090);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = v60;
      v28 = v25;
      v29 = v61;
      (*(v3 + 32))(v60, v28, v61);
      v30 = static os_log_type_t.error.getter();
      v31 = qword_10009CED0;
      v32 = *(v3 + 16);
      v32(v9, v27, v29);
      if (os_log_type_enabled(v31, v30))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        LODWORD(v59) = v30;
        v35 = v34;
        v62[0] = v34;
        *v33 = 136315138;
        v32(v57, v9, v29);
        v36 = String.init<A>(describing:)();
        v38 = v37;
        v39 = *(v3 + 8);
        v39(v9, v61);
        v40 = sub_10000C600(v36, v38, v62);
        v29 = v61;

        *(v33 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v31, v59, "Received error from wireless pairing session peer: %s", v33, 0xCu);
        sub_10000CADC(v35);
      }

      else
      {
        v39 = *(v3 + 8);
        v39(v9, v29);
      }

      swift_beginAccess();

      sub_1000684F8(v54);
      swift_endAccess();

      sub_1000154D4();

      return (v39)(v60, v29);
    }

    else
    {
      v41 = v12;
      (*(v12 + 32))(v21, v25, v11);
      v42 = static os_log_type_t.error.getter();
      v43 = qword_10009CED0;
      v44 = *(v41 + 16);
      v44(v19, v21, v11);
      if (os_log_type_enabled(v43, v42))
      {
        v45 = swift_slowAlloc();
        LODWORD(v61) = v42;
        v46 = v45;
        v47 = swift_slowAlloc();
        v60 = v43;
        v48 = v47;
        v62[0] = v47;
        *v46 = 136315138;
        v44(v16, v19, v11);
        v49 = String.init<A>(describing:)();
        v51 = v50;
        v52 = *(v41 + 8);
        v52(v19, v11);
        v53 = sub_10000C600(v49, v51, v62);

        *(v46 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v60, v61, "Received unexpected message from wireless pairing session peer: %s", v46, 0xCu);
        sub_10000CADC(v48);

        return (v52)(v21, v11);
      }

      else
      {

        v55 = *(v41 + 8);
        v55(v19, v11);
        return (v55)(v21, v11);
      }
    }
  }

  return result;
}

uint64_t sub_1000151F4()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v15 = 1;
  v5 = 1 << *(*(v0 + 32) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v16 = result;
LABEL_4:
  v11 = v10;
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
    v10 = v11;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v10 << 6);
    if ((*(*(result + 56) + v13) & 1) == 0)
    {
      v15 = 0;
      goto LABEL_4;
    }

    v14 = *(*(result + 48) + 8 * v13);

    static os_log_type_t.debug.getter();
    os_log(_:dso:log:_:_:)();
    type metadata accessor for PinNotificationEvent();
    sub_100015F54(&qword_100099490, &type metadata accessor for PinNotificationEvent);
    sub_100015FA4();
    sub_100015F54(&qword_100099498, &type metadata accessor for PinNotificationEvent);
    XPCConnection.send<A>(value:)();

    v11 = v10;
    result = v16;
  }

  while (v7);
LABEL_6:
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return v15 & 1;
    }

    v7 = *(v3 + 8 * v10);
    ++v11;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000154D4()
{
  v1 = v0;
  v2 = *(v0 + 40);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  if ((static Defaults.networkPairingEnabled.getter() & 1) != 0 || (swift_beginAccess(), *(*(v1 + 32) + 16)) || *(v1 + 96) == 1)
  {
    v3 = *sub_10001355C((v1 + 56), *(v1 + 80));
    v4 = sub_100057418();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v1 + 16);
  return sub_10003D284(v4 & 1);
}

uint64_t sub_100015560()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = sub_10000CBBC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000CBDC();
  v7 = type metadata accessor for DispatchQoS();
  v8 = sub_10000CBBC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_10000CBDC();
  v15 = v14 - v13;
  v16 = *(v0 + 104);
  aBlock[4] = sub_100015E24;
  v23 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100050100;
  aBlock[3] = &unk_10008EEC8;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_100015F54(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100015E2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  v18 = *(v4 + 8);
  v19 = sub_10000D288();
  v20(v19);
  (*(v10 + 8))(v15, v7);
}

uint64_t sub_1000157B8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10006ACDC())
  {
    v12 = lockdown_wifi_pairing_enabled();
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 40);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v12;
  aBlock[4] = sub_100015ED8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100050100;
  aBlock[3] = &unk_10008EF18;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17[1] = &_swiftEmptyArrayStorage;
  sub_100015F54(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100015E2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

uint64_t sub_100015A74(uint64_t result, char a2)
{
  if (*(result + 96) != (a2 & 1))
  {
    v3 = result;
    v4 = static os_log_type_t.default.getter();
    v5 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v4))
    {

      v6 = swift_slowAlloc();
      *v6 = 67109376;
      *(v6 + 4) = *(v3 + 96);

      *(v6 + 8) = 1024;
      *(v6 + 10) = a2 & 1;
      _os_log_impl(&_mh_execute_header, v5, v4, "lockdown_wifi_pairing_enabled value changed: %{BOOL}d -> %{BOOL}d", v6, 0xEu);
    }

    *(v3 + 96) = a2 & 1;
    return sub_1000154D4();
  }

  return result;
}

uint64_t sub_100015B60()
{
  result = sub_1000144B0();
  if (!v1)
  {
    v3 = *(v0 + 16);
    AllowPromptlessPairingWithHostRequest.pairingShouldBeMarkedForAutomation.getter();
    AllowPromptlessPairingWithHostRequest.associatedHostBUID.getter();
    sub_100036D60();
    sub_1000355C4();

    return EmptyResponse.init()();
  }

  return result;
}

uint64_t sub_100015C00()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  sub_10000CADC((v0 + 56));

  return v0;
}

uint64_t sub_100015C48()
{
  sub_100015C00();

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t getEnumTagSinglePayload for WirelessPairingOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WirelessPairingOptions(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100015E2C()
{
  result = qword_10009A8F0;
  if (!qword_10009A8F0)
  {
    sub_100015E90(&unk_100099840, &unk_100077350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A8F0);
  }

  return result;
}

uint64_t sub_100015E90(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100015EEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100013414(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100015F54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100015FC8()
{

  return sub_100015EEC(v0, v3, v1, v2);
}

uint64_t sub_100015FF4()
{
  v4 = *v2;
  v5 = *(v3 + 32);
  v6 = v2 + *(v1 + 56);
  return v0;
}

uint64_t sub_100016044()
{

  return type metadata accessor for XPCDictionary();
}

void sub_100016064(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t sub_1000160A0(uint64_t a1, void *a2, char a3)
{
  v5 = v3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v40 = sub_10000CBBC(v9);
  v41 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v40);
  sub_10000CBDC();
  v15 = v14 - v13;
  v35 = type metadata accessor for DispatchQoS();
  v16 = sub_10000CBBC(v35);
  v39 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  sub_10001ACC4();
  *(v3 + 16) = xmmword_1000770A0;
  *(v3 + 32) = static IPv6Header.minHeaderLength.getter();
  *(v3 + 40) = 0x80000;
  type metadata accessor for TunnelConnectionIdentifierCategory();
  Identifier.init()();
  v20 = OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__lockdownConnection;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__lockdownConnection) = 0;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__canReceiveSource) = 0;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__canSendSource) = 0;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__pendingReceiveRequests) = _swiftEmptyArrayStorage;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__partialReceivedData) = xmmword_1000770B0;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__pendingSendRequests) = _swiftEmptyArrayStorage;
  *(v3 + v20) = a1;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__underlyingConnectionSocket) = lockdown_get_socket();
  v21 = OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__queue;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__queue) = a2;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__shouldCloseConnectionOnCancel) = a3;
  sub_100019E9C();
  v36 = a2;
  v22 = static OS_dispatch_source.makeReadSource(fileDescriptor:queue:)();
  v23 = *(v3 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__canReceiveSource);
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__canReceiveSource) = v22;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v24 = *(v3 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__underlyingConnectionSocket);
  v25 = *(v3 + v21);
  v26 = static OS_dispatch_source.makeWriteSource(fileDescriptor:queue:)();

  v27 = *(v3 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__canSendSource);
  *(v5 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__canSendSource) = v26;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v45 = sub_100019EE0;
  v46 = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  v43 = sub_100050100;
  v44 = &unk_10008F098;
  _Block_copy(aBlock);
  sub_10000D078();
  static DispatchQoS.unspecified.getter();
  sub_10001ADEC();
  sub_10001AD14();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v25);
  v28 = *(v41 + 8);
  v28(v15, v40);
  v37 = *(v39 + 8);
  v37(v4, v35);

  v29 = swift_allocObject();
  *(v29 + 16) = v5;
  *(v29 + 24) = a3;
  v45 = sub_100019EE4;
  v46 = v29;
  sub_10001AC90();
  v43 = v30;
  v44 = &unk_10008F0E8;
  _Block_copy(aBlock);
  sub_10000D078();
  static DispatchQoS.unspecified.getter();
  sub_10001ADEC();
  sub_10001AD14();
  OS_dispatch_source.setCancelHandler(qos:flags:handler:)();
  _Block_release(v25);
  v28(v15, v40);
  v37(v4, v35);

  swift_getObjectType();
  v45 = sub_100019F0C;
  v46 = v5;
  sub_10001AC90();
  v43 = v31;
  v44 = &unk_10008F110;
  _Block_copy(aBlock);
  sub_10000D078();
  static DispatchQoS.unspecified.getter();
  sub_10001ADEC();
  sub_10001AD14();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v25);
  v28(v15, v40);
  v37(v4, v35);

  v32 = swift_allocObject();
  *(v32 + 16) = v5;
  *(v32 + 24) = a3;
  v45 = sub_100019F10;
  v46 = v32;
  sub_10001AC90();
  v43 = v33;
  v44 = &unk_10008F160;
  _Block_copy(aBlock);
  sub_10000D078();
  static DispatchQoS.unspecified.getter();
  sub_10001ADEC();
  sub_10001AD14();
  OS_dispatch_source.setCancelHandler(qos:flags:handler:)();
  _Block_release(v25);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v28(v15, v40);
  v37(v4, v35);

  return v5;
}

uint64_t sub_1000165E8()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000CBEC();
  sub_100019F38(v0, v1);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100015E2C();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100016690(uint64_t a1, char a2, void *a3)
{
  v5 = *(a1 + *a3);
  *(a1 + *a3) = 0;
  swift_unknownObjectRelease();
  v6 = OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__lockdownConnection;
  result = *(a1 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__lockdownConnection);
  if (result)
  {
    if (a2)
    {
      result = lockdown_disconnect();
      *(a1 + v6) = 0;
    }
  }

  return result;
}

void sub_1000166E8()
{
  sub_10000D060();
  v2 = v0;
  v3 = type metadata accessor for RemotePairingError();
  v4 = sub_10000CBBC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v4);
  v11 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v101 - v12;
  v14 = type metadata accessor for POSIXError();
  v15 = sub_10000CBBC(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_10001ACC4();
  v20 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__queue);
  OS_dispatch_queue.assertOnQueueHierarchy()();

  v21 = *(v2 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__canReceiveSource);
  if (v21)
  {
    v109 = v17;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v110 = v21;
    if (OS_dispatch_source.data.getter() && (v106 = ObjectType, v107 = v11, v108 = v13, *(v2 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__lockdownConnection)))
    {
      v23 = OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__pendingReceiveRequests;
      swift_beginAccess();
      if (*(*(v2 + v23) + 16))
      {
        v101 = v6;
        sub_10001ADBC();
        swift_beginAccess();
        v103 = v23;
        v24 = sub_1000171AC();
        v102 = v25;
        v104 = v26;
        v105 = v27;
        swift_endAccess();
        v28 = type metadata accessor for __DataStorage();
        v29 = *(v28 + 48);
        v30 = *(v28 + 52);
        swift_allocObject();
        v31 = __DataStorage.init(length:)();
        v32 = 0;
        v112 = 0x200000000000;
        v113 = v31 | 0x4000000000000000;
        v111 = 0;
        v33 = (v2 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__partialReceivedData);
        while (1)
        {
          v34 = sub_100019F80(&v112);
          if (v34 <= 0)
          {
            break;
          }

          v35 = v113 >> 62;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = 0;
          switch(v113 >> 62)
          {
            case 1uLL:
              v36 = v112 >> 32;
              v37 = v112;
              goto LABEL_11;
            case 2uLL:
              v37 = *(v112 + 16);
              v36 = *(v112 + 24);
LABEL_11:
              if (v36 < v37)
              {
                __break(1u);
LABEL_60:
                __break(1u);
LABEL_61:
                __break(1u);
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
              }

              if (v35 == 2)
              {
                v39 = *(v112 + 16);
                v38 = *(v112 + 24);
              }

              else
              {
                v38 = v112 >> 32;
                v39 = v112;
              }

LABEL_15:
              if (v38 < v36 || v36 < v39)
              {
                goto LABEL_60;
              }

              v41 = __OFSUB__(v36, v37);
              v42 = v36 - v37;
              if (v41)
              {
                goto LABEL_61;
              }

              if (v42 < v34)
              {
                switch(v35)
                {
                  case 1:
                    v43 = v112 >> 32;
                    goto LABEL_34;
                  case 2:
                    v43 = *(v112 + 24);
                    goto LABEL_35;
                  default:
                    goto LABEL_37;
                }
              }

              v43 = v37 + v34;
              if (__OFADD__(v37, v34))
              {
                goto LABEL_63;
              }

              v44 = 0;
              v45 = 0;
              switch(v35)
              {
                case 1:
                  v44 = v112 >> 32;
                  v45 = v112;
                  break;
                case 2:
                  v45 = *(v112 + 16);
                  v44 = *(v112 + 24);
                  break;
                case 3:
                  break;
                default:
                  v45 = 0;
                  v44 = BYTE6(v113);
                  break;
              }

              if (v44 < v43 || v43 < v45)
              {
                goto LABEL_64;
              }

              v47 = 0;
              switch(v35)
              {
                case 1:
LABEL_34:
                  v47 = v112;
                  break;
                case 2:
LABEL_35:
                  v47 = *(v112 + 16);
                  break;
                default:
                  break;
              }

              if (v43 < v47)
              {
                goto LABEL_62;
              }

LABEL_37:
              v48 = Data._Representation.subscript.getter();
              v50 = v49;
              sub_10001ADBC();
              swift_beginAccess();
              Data.append(_:)();
              swift_endAccess();
              sub_10000DF50(v48, v50);
              if ((lockdown_get_buffered_read_size() & 1) == 0)
              {
                v111 = -1;
LABEL_48:
                v63 = *v33;
                v64 = v33[1];
                v65 = sub_10001AD28();
                sub_10000E228(v65, v66);
                sub_10001AD28();
                v67 = Data.count.getter();
                v68 = sub_10001AD28();
                sub_10000DF50(v68, v69);
                if (v67 < v24)
                {
                  sub_10001ADBC();
                  swift_beginAccess();
                  v70 = v105;

                  sub_10001A4A4(0, 0, v24, v102, v104, v70, sub_1000545C8, sub_10001A670);
                  swift_endAccess();
                  goto LABEL_56;
                }

                v71 = *v33;
                v72 = v33[1];
                v73 = sub_10001AD28();
                sub_10000E228(v73, v74);
                sub_100017214(v102, v71, v72, v114);
                v75 = *v33;
                v76 = v33[1];
                sub_10000E228(*v33, v76);
                sub_10001AD28();
                v77 = Data.count.getter();
                sub_100017398(v77, v75, v76, v114);
                v78 = sub_10006AE14(v114[0], v114[1]);
                v79 = *v33;
                v80 = v33[1];
                *v33 = v78;
                v33[1] = v81;
                sub_10000DF50(v79, v80);

                v82 = sub_10001AD28();
                sub_10000E228(v82, v83);
                v84 = sub_10001AD28();
                v104(v84);
                v85 = sub_10001AD28();
                sub_10000DF50(v85, v86);

                if (*(*(v2 + v103) + 16))
                {
                  sub_10000DF50(v112, v113);
                  v87 = sub_10001AD28();
                  sub_10000DF50(v87, v88);
                  swift_unknownObjectRelease();

                  goto LABEL_44;
                }

                OS_dispatch_source.suspend()();
                swift_unknownObjectRelease();
                v99 = sub_10001AD28();
                sub_10000DF50(v99, v100);

LABEL_57:
                sub_10000DF50(v112, v113);
                goto LABEL_44;
              }

              if (v111 <= 0)
              {
                goto LABEL_48;
              }

              break;
            case 3uLL:
              goto LABEL_15;
            default:
              v37 = 0;
              v39 = 0;
              v36 = BYTE6(v113);
              v38 = BYTE6(v113);
              goto LABEL_15;
          }
        }

        if (v34 < 0)
        {
          static POSIXError.current(or:)();
          v89 = POSIXError._nsError.getter();
          (*(v109 + 8))(v1, v14);
          v89;
          v60 = v108;
        }

        else
        {
          v60 = v108;
          static RemotePairingError.mobileDeviceError.getter();
          v32 = "nnection was closed";
          sub_10001AD4C();
          sub_100019F38(v61, v33);
          sub_10000D444();
          sub_10000D294();
          sub_100019F38(v62, v33);
          Error<>.init(_:_:)();
          swift_errorRetain();
        }

        v90 = static os_log_type_t.error.getter();
        v91 = qword_10009CED0;
        if (os_log_type_enabled(qword_10009CED0, v90))
        {
          v92 = sub_10000D030();
          v93 = sub_10000D464();
          v114[0] = v93;
          *v92 = 136315138;
          swift_getErrorValue();
          v94 = Error.localizedDescription.getter();
          v32 = sub_10000C600(v94, v95, v114);

          *(v92 + 4) = v32;
          _os_log_impl(&_mh_execute_header, v91, v90, "Lockdown tunnel connection receive error: %s", v92, 0xCu);
          sub_10000CADC(v93);
          v60 = v108;
          sub_10000D8D4();
          sub_10001AD90();
        }

        static RemotePairingError.mobileDeviceError.getter();
        sub_10000D8BC();
        sub_100019F38(v96, v32);
        Error<>.init(_:_:)();
        sub_10001AD34();
        sub_100019F38(v97, v32);
        v98 = sub_10000D444();
        _Error.wrapping(_:)();

        (*(v101 + 1))(v60, v3);
        (v104)(v98, 0, 1);

LABEL_56:

        swift_unknownObjectRelease();
        goto LABEL_57;
      }
    }

    else
    {
      static RemotePairingError.connectionFailed.getter();
      sub_10000D8BC();
      sub_100019F38(v51, v6);
      sub_10000D444();
      sub_10000D294();
      sub_100019F38(v52, v6);
      Error<>.init(_:_:)();
      swift_willThrow();
      v53 = static os_log_type_t.error.getter();
      v54 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v53))
      {
        v55 = sub_10000D030();
        v56 = sub_10000D464();
        v115 = v56;
        *v55 = 136315138;
        swift_getErrorValue();
        v57 = Error.localizedDescription.getter();
        v59 = sub_10000C600(v57, v58, &v115);

        *(v55 + 4) = v59;
        _os_log_impl(&_mh_execute_header, v54, v53, "Lockdown tunnel connection failed with error: %s", v55, 0xCu);
        sub_10000CADC(v56);
        sub_10001AD90();
        sub_10000D8D4();
      }

      swift_errorRetain();
      sub_1000194C0();
    }

    swift_unknownObjectRelease();
  }

LABEL_44:
  sub_1000135A0();
}

uint64_t sub_1000171AC()
{
  v1 = *v0;
  if (*(*v0 + 16))
  {
    v2 = v1[4];
    v3 = v1[5];
    v4 = v1[6];
    v5 = v1[7];

    sub_10001A3B4(0, 1);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100017214@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3 >> 62;
    v7 = result;
    v9 = 0;
    v10 = 0;
    switch(a3 >> 62)
    {
      case 1uLL:
        v9 = a2 >> 32;
        v10 = a2;
        break;
      case 2uLL:
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
        break;
      case 3uLL:
        break;
      default:
        v10 = 0;
        v9 = BYTE6(a3);
        break;
    }

    v11 = sub_10001AB2C(v10, v9, a2, a3);
    if (v7 && v11 < v7)
    {
      switch(v5)
      {
        case 1:
          v12 = a2 >> 32;
          goto LABEL_11;
        case 2:
          v12 = *(a2 + 24);
          goto LABEL_13;
        default:
          goto LABEL_15;
      }
    }

    v12 = sub_10001AAC4(v10, v7, a2, a3);
    result = 0;
    switch(v5)
    {
      case 1:
LABEL_11:
        result = a2;
        break;
      case 2:
LABEL_13:
        result = *(a2 + 16);
        break;
      default:
        break;
    }

    if (v12 >= result)
    {
LABEL_15:
      v13 = Data._Representation.subscript.getter();
      v15 = v14;
      result = sub_10000DF50(a2, a3);
      *a4 = v13;
      a4[1] = v15;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100017398@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3 >> 62;
    v7 = result;
    v9 = 0;
    v10 = BYTE6(a3);
    v11 = 0;
    switch(a3 >> 62)
    {
      case 1uLL:
        v11 = a2;
        v9 = a2 >> 32;
        break;
      case 2uLL:
        v11 = *(a2 + 16);
        v9 = *(a2 + 24);
        break;
      case 3uLL:
        break;
      default:
        v11 = 0;
        v9 = BYTE6(a3);
        break;
    }

    v12 = sub_10001AB2C(v11, v9, a2, a3);
    if (v7 && v12 < v7)
    {
      switch(v5)
      {
        case 2:
          goto LABEL_15;
        default:
          break;
      }
    }

    else
    {
      v13 = sub_10001AAC4(v11, v7, a2, a3);
      v14 = 0;
      switch(v5)
      {
        case 1:
          v14 = a2 >> 32;
          break;
        case 2:
          v14 = *(a2 + 24);
          break;
        case 3:
          break;
        default:
          v14 = v10;
          break;
      }

      if (v14 < v13)
      {
        __break(1u);
LABEL_15:
        v15 = *(a2 + 24);
      }
    }

    v16 = Data._Representation.subscript.getter();
    v18 = v17;
    result = sub_10000DF50(a2, a3);
    *a4 = v16;
    a4[1] = v18;
  }

  return result;
}

void sub_100017520()
{
  sub_10000D060();
  v1 = v0;
  v2 = type metadata accessor for RemotePairingError();
  v3 = sub_10000CBBC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v3);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v75 - v11;
  v13 = type metadata accessor for POSIXError();
  v14 = sub_10000CBBC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_10000CBDC();
  v19 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__queue);
  OS_dispatch_queue.assertOnQueueHierarchy()();

  if (!*(v1 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__canSendSource))
  {
    goto LABEL_14;
  }

  v83 = v16;
  v84 = v10;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v20 = OS_dispatch_source.data.getter();
  if (v20 < 0)
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v20;
    if (!v20)
    {
LABEL_10:
      static RemotePairingError.connectionFailed.getter();
      sub_10000D8BC();
      sub_100019F38(v45, v21);
      sub_10000D524();
      sub_10000D294();
      sub_100019F38(v46, v21);
      Error<>.init(_:_:)();
      swift_willThrow();
      v47 = static os_log_type_t.error.getter();
      v48 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v47))
      {
        v49 = sub_10000D030();
        v50 = sub_10000D464();
        v86 = v50;
        *v49 = 136315138;
        swift_getErrorValue();
        v51 = Error.localizedDescription.getter();
        v53 = sub_10000C600(v51, v52, &v86);

        *(v49 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v48, v47, "Lockdown tunnel connection failed with error: %s", v49, 0xCu);
        sub_10000CADC(v50);
        sub_10001AD90();
        sub_10000D8D4();
      }

      swift_errorRetain();
      sub_1000194C0();

LABEL_13:
      swift_unknownObjectRelease();
LABEL_14:
      sub_1000135A0();
      return;
    }
  }

  v82 = v5;
  if (!*(v1 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__lockdownConnection))
  {
    goto LABEL_10;
  }

  if (v21 >= 0x401)
  {
    v22 = OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__pendingSendRequests;
    swift_beginAccess();
    v23 = *(v1 + v22);
    if (v23[2])
    {
      v76 = v12;
      sub_10001ADBC();
      v81 = v24;
      swift_beginAccess();
      v25 = v23[4];
      v80 = v23[5];
      v26 = v23[6];
      v27 = v23[7];
      v78 = v26;
      sub_10000E228(v25, v80);
      v79 = v27;

      sub_10001A2C4(0, 1);
      swift_endAccess();
      v28 = v80;
      Data.count.getter();
      v77 = v25;
      v29 = v25;
      v30 = v28;
      v31 = sub_100017D28(v29, v28);
      v32 = v31;
      if (v31 <= 0)
      {
        if (v31 < 0)
        {
          static POSIXError.current(or:)();
          v61 = POSIXError._nsError.getter();
          v62 = *(v83 + 8);
          v63 = sub_10001ADC8();
          v64(v63);
          v61;
          v58 = v82;
          v55 = v76;
        }

        else
        {
          v55 = v76;
          static RemotePairingError.mobileDeviceError.getter();
          sub_10001AD4C();
          sub_100019F38(v56, v32);
          sub_10000D524();
          sub_10000D294();
          sub_100019F38(v57, v32);
          Error<>.init(_:_:)();
          swift_errorRetain();
          v58 = v82;
        }

        v65 = static os_log_type_t.error.getter();
        v66 = qword_10009CED0;
        if (os_log_type_enabled(qword_10009CED0, v65))
        {
          v67 = sub_10000D030();
          v68 = sub_10000D464();
          v85[0] = v68;
          *v67 = 136315138;
          swift_getErrorValue();
          v69 = Error.localizedDescription.getter();
          v71 = sub_10000C600(v69, v70, v85);

          *(v67 + 4) = v71;
          v58 = v82;
          _os_log_impl(&_mh_execute_header, v66, v65, "Lockdown tunnel connection received connection send error: %s", v67, 0xCu);
          sub_10000CADC(v68);
          sub_10000D8D4();
          sub_10001AD90();
        }

        static RemotePairingError.mobileDeviceError.getter();
        sub_10001AD64();
        sub_100019F38(v72, v66);
        Error<>.init(_:_:)();
        sub_10001AD34();
        sub_100019F38(v73, v66);
        v74 = sub_10000D524();
        sub_10001AD28();
        _Error.wrapping(_:)();

        (*(v58 + 8))(v55, v2);
        v78(v74);

        swift_unknownObjectRelease();
        sub_10000DF50(v77, v80);
      }

      else
      {
        v33 = v77;
        if (v31 >= Data.count.getter())
        {
          v78(0);
          if (!*(*(v1 + v81) + 16))
          {
            OS_dispatch_source.suspend()();
          }

          v59 = sub_10001ADC8();
          sub_10000DF50(v59, v60);
          swift_unknownObjectRelease();
        }

        else
        {
          v34 = sub_10001ADC8();
          sub_10000E228(v34, v35);
          sub_100017398(v32, v33, v30, v85);
          v36 = v85[0];
          v37 = v85[1];
          sub_10001ADBC();
          swift_beginAccess();
          v38 = v79;

          v39 = sub_10001AD28();
          sub_10000E228(v39, v40);

          sub_10001A4A4(0, 0, v36, v37, v78, v38, sub_1000544F8, sub_10001A7B0);
          swift_endAccess();
          v41 = sub_10001AD28();
          sub_10000DF50(v41, v42);

          v43 = sub_10001ADC8();
          sub_10000DF50(v43, v44);
          swift_unknownObjectRelease();
        }
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  sub_1000135A0();

  swift_unknownObjectRelease();
}

uint64_t sub_100017D28(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      goto LABEL_6;
    case 2uLL:
      v2 = *(a1 + 24);
      a1 = *(a1 + 16);
LABEL_6:
      result = sub_10001A904(a1);
      break;
    default:
      result = lockdown_send();
      break;
  }

  return result;
}

uint64_t sub_100017E74()
{
  sub_1000194C0();
  sub_10000ECF4(*(v0 + 16), *(v0 + 24));
  v1 = OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection_identifier;
  v2 = sub_100013414(&qword_10009B730, &unk_100078A80);
  sub_10000CC04(v2);
  (*(v3 + 8))(v0 + v1);

  v4 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__canReceiveSource);
  swift_unknownObjectRelease();
  v5 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__canSendSource);
  swift_unknownObjectRelease();
  v6 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__pendingReceiveRequests);

  sub_10000DF50(*(v0 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__partialReceivedData), *(v0 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__partialReceivedData + 8));
  v7 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__pendingSendRequests);

  return v0;
}

uint64_t sub_100017F4C()
{
  sub_100017E74();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for LockdownTunnelConnection()
{
  result = qword_100099520;
  if (!qword_100099520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100017FF8()
{
  sub_100019960();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000180EC()
{
  v1 = *v0;
  _StringGuts.grow(_:)(30);

  v2._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v2);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000181B8()
{
  sub_10000D060();
  v3 = v2;
  v5 = v4;
  v28 = v6;
  v8 = v7;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = sub_10000CBBC(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10001ACC4();
  v29 = type metadata accessor for DispatchQoS();
  v13 = sub_10000CBBC(v29);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_10000CBDC();
  sub_10001ADE0();
  v18 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__queue);
  sub_10000CCD8();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v5;
  v19[4] = v3;
  sub_10001ADD4();
  v20 = swift_allocObject();
  v20[2] = v0;
  v20[3] = sub_10001AA84;
  v20[4] = v19;
  v20[5] = v8;
  v20[6] = v28;
  v30[4] = sub_10001AA94;
  v30[5] = v20;
  sub_10001ACF4();
  sub_10001ACDC(COERCE_DOUBLE(1107296256));
  v30[2] = v21;
  v30[3] = &unk_10008F318;
  v22 = _Block_copy(v30);
  v23 = v18;

  static DispatchQoS.unspecified.getter();
  sub_10000CBEC();
  sub_100019F38(v24, v25);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100015E2C();
  sub_10001AD7C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10001ADAC();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  v26 = sub_10000D354();
  v27(v26);
  (*(v15 + 8))(v1, v29);

  sub_1000135A0();
}

uint64_t sub_100018430(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a4;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v16 = *(v24 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v24);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  *(v20 + 24) = a6;
  *(v20 + 32) = a1;
  *(v20 + 40) = a2;
  LOBYTE(a5) = a3 & 1;
  *(v20 + 48) = a3 & 1;
  aBlock[4] = sub_10001ABFC;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100050100;
  aBlock[3] = &unk_10008F368;
  v21 = _Block_copy(aBlock);

  sub_10001AC30(a1, a2, a5);
  static DispatchQoS.unspecified.getter();
  v26 = &_swiftEmptyArrayStorage;
  sub_100019F38(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100015E2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v12 + 8))(v15, v11);
  (*(v16 + 8))(v19, v24);
}

uint64_t sub_1000186FC(uint64_t a1, void (*a2)(uint64_t, void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for RemotePairingError();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  if (!*(a1 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__canReceiveSource))
  {
    static RemotePairingError.mobileDeviceError.getter();
    sub_100019F38(&unk_10009A0D0, &type metadata accessor for RemotePairingError);
    Error<>.init(_:_:)();
    sub_100019F38(&qword_100099850, &type metadata accessor for RemotePairingError);
    v17 = swift_allocError();
    (*(v11 + 16))(v18, v15, v10);
    a2(v17, 0, 1);

    return (*(v11 + 8))(v15, v10);
  }

  v38 = a5;
  v39 = a3;
  v16 = OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__pendingReceiveRequests;
  swift_beginAccess();
  if (*(*(a1 + v16) + 16))
  {
    swift_unknownObjectRetain();
    goto LABEL_6;
  }

  v20 = (a1 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__partialReceivedData);
  swift_beginAccess();
  v21 = *v20;
  v22 = v20[1];
  swift_unknownObjectRetain();
  sub_10000E228(v21, v22);
  v23 = Data.count.getter();
  sub_10000DF50(v21, v22);
  if (v23 < a4)
  {
LABEL_6:
    swift_beginAccess();
    v24 = v39;

    sub_100053EB4();
    v25 = *(*(a1 + v16) + 16);
    sub_100054050(v25);
    v26 = *(a1 + v16);
    *(v26 + 16) = v25 + 1;
    v27 = (v26 + 32 * v25);
    v28 = v38;
    v27[4] = a4;
    v27[5] = v28;
    v27[6] = a2;
    v27[7] = v24;
    *(a1 + v16) = v26;
    swift_endAccess();
    if (!v25)
    {
      swift_getObjectType();
      OS_dispatch_source.resume()();
    }

    return swift_unknownObjectRelease();
  }

  v29 = *v20;
  v30 = v20[1];
  sub_10000E228(*v20, v30);
  sub_100017214(v38, v29, v30, v40);
  v31 = *v40;
  v32 = *v20;
  v33 = v20[1];
  sub_10000E228(*v20, v33);
  v34 = Data.count.getter();
  sub_100017398(v34, v32, v33, v40);
  v35 = *v20;
  v36 = v20[1];
  *v20 = *v40;
  sub_10000DF50(v35, v36);
  sub_10000E228(v31, *(&v31 + 1));
  a2(v31, *(&v31 + 1), 0);
  sub_10000DF50(v31, *(&v31 + 1));
  sub_10000DF50(v31, *(&v31 + 1));
  return swift_unknownObjectRelease();
}

void sub_100018ABC()
{
  sub_10000D060();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v31 = type metadata accessor for DispatchWorkItemFlags();
  v11 = sub_10000CBBC(v31);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10001ACC4();
  v14 = type metadata accessor for DispatchQoS();
  v15 = sub_10000CBBC(v14);
  v32 = v16;
  v33 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_10000CBDC();
  sub_10001ADE0();
  v19 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__queue);
  sub_10000CCD8();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v6;
  v20[4] = v4;
  sub_10001ADD4();
  v21 = swift_allocObject();
  v21[2] = v2;
  v21[3] = sub_10001A9F4;
  v21[4] = v20;
  v21[5] = v10;
  v22 = v10;
  v21[6] = v8;
  v23 = v8;
  v34[4] = sub_10001AA00;
  v34[5] = v21;
  sub_10001ACF4();
  sub_10001ACDC(COERCE_DOUBLE(1107296256));
  v34[2] = v24;
  v34[3] = &unk_10008F250;
  v25 = _Block_copy(v34);
  v26 = v19;

  sub_10000E228(v22, v23);
  static DispatchQoS.unspecified.getter();
  sub_10000CBEC();
  sub_100019F38(v27, v28);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100015E2C();
  sub_10001AD7C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10001ADAC();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  v29 = sub_10000D354();
  v30(v29);
  (*(v32 + 8))(v1, v33);

  sub_1000135A0();
}

uint64_t sub_100018D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a1;
  aBlock[4] = sub_10001AA18;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100050100;
  aBlock[3] = &unk_10008F2A0;
  v18 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v20[1] = &_swiftEmptyArrayStorage;
  sub_100019F38(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100015E2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

uint64_t sub_100018FFC(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = type metadata accessor for RemotePairingError();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  if (*(a1 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__canSendSource))
  {
    v16 = OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__pendingSendRequests;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_10000E228(a4, a5);

    sub_100053ECC();
    v17 = *(*(a1 + v16) + 16);
    sub_100054068(v17);
    v18 = *(a1 + v16);
    *(v18 + 16) = v17 + 1;
    v19 = (v18 + 32 * v17);
    v19[4] = a4;
    v19[5] = a5;
    v19[6] = a2;
    v19[7] = a3;
    *(a1 + v16) = v18;
    swift_endAccess();
    if (!v17)
    {
      swift_getObjectType();
      OS_dispatch_source.resume()();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    static RemotePairingError.mobileDeviceError.getter();
    sub_100019F38(&unk_10009A0D0, &type metadata accessor for RemotePairingError);
    Error<>.init(_:_:)();
    sub_100019F38(&qword_100099850, &type metadata accessor for RemotePairingError);
    v21 = swift_allocError();
    (*(v11 + 16))(v22, v15, v10);
    a2(v21);

    return (*(v11 + 8))(v15, v10);
  }
}

void sub_100019290()
{
  sub_10000D060();
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = sub_10000CBBC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10001ACC4();
  v9 = type metadata accessor for DispatchQoS();
  v10 = sub_10000CBBC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10000CBDC();
  sub_10001ADE0();
  v15 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__queue);
  v21[4] = sub_10001A9EC;
  v22 = v0;
  sub_10001ACF4();
  sub_10001ACDC(COERCE_DOUBLE(1107296256));
  v21[2] = v16;
  v21[3] = &unk_10008F1D8;
  v17 = _Block_copy(v21);
  v18 = v15;

  static DispatchQoS.unspecified.getter();
  sub_10000CBEC();
  sub_100019F38(v19, v20);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100015E2C();
  sub_10001AD7C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10001ADAC();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v6 + 8))(v1, v3);
  (*(v12 + 8))(v2, v9);

  sub_1000135A0();
}

void sub_1000194C0()
{
  sub_10000D060();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for RemotePairingError();
  v6 = sub_10000CC04(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10000CBDC();
  sub_10001ADE0();
  if (v4)
  {
    v9 = v4;
  }

  else
  {
    static RemotePairingError.mobileDeviceError.getter();
    sub_10001AD64();
    sub_100019F38(v10, v1);
    v9 = swift_allocError();
    sub_10000D294();
    sub_100019F38(v11, v1);
    Error<>.init(_:_:)();
  }

  v12 = OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__pendingReceiveRequests;
  swift_beginAccess();
  v49 = v12;
  v50 = v2;
  v13 = *(v2 + v12);
  v14 = *(v13 + 16);
  if (v14)
  {
    swift_errorRetain();
    v53 = &_swiftEmptyArrayStorage;

    sub_10004BED4(0, v14, 0);
    v15 = &_swiftEmptyArrayStorage;
    v16 = (v13 + 56);
    do
    {
      v18 = *(v16 - 1);
      v17 = *v16;
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      *(v19 + 24) = v17;
      v53 = v15;
      v21 = v15[2];
      v20 = v15[3];

      if (v21 >= v20 >> 1)
      {
        sub_10004BED4((v20 > 1), v21 + 1, 1);
        v15 = v53;
      }

      v15[2] = v21 + 1;
      v22 = &v15[2 * v21];
      v22[4] = sub_10001A98C;
      v22[5] = v19;
      v16 += 4;
      --v14;
    }

    while (v14);
  }

  else
  {
    swift_errorRetain();
    v15 = &_swiftEmptyArrayStorage;
  }

  v23 = OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__pendingSendRequests;
  swift_beginAccess();
  v24 = *(v2 + v23);
  v25 = *(v24 + 16);
  v26 = &_swiftEmptyArrayStorage;
  if (v25)
  {
    v51[0] = &_swiftEmptyArrayStorage;

    sub_10004BE90(0, v25, 0);
    v26 = &_swiftEmptyArrayStorage;
    v27 = (v24 + 56);
    do
    {
      v28 = *(v27 - 1);
      v29 = *v27;
      v30 = swift_allocObject();
      *(v30 + 16) = v28;
      *(v30 + 24) = v29;
      v51[0] = v26;
      v31 = v26[2];
      v32 = v26[3];

      if (v31 >= v32 >> 1)
      {
        sub_10004BE90((v32 > 1), v31 + 1, 1);
        v26 = v51[0];
      }

      v26[2] = v31 + 1;
      v33 = &v26[2 * v31];
      *(v33 + 4) = sub_10001A9C0;
      *(v33 + 5) = v30;
      v27 += 4;
      --v25;
    }

    while (v25);

    v2 = v50;
  }

  v34 = 0;
  v35 = v15[2];
  v36 = (v15 + 5);
  while (v35 != v34)
  {
    if (v34 >= v15[2])
    {
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    ++v34;
    v37 = *(v36 - 1);
    v38 = *v36;
    v51[0] = v9;
    v51[1] = 0;
    v52 = 1;

    v37(v51);

    v36 += 2;
  }

  v39 = 0;
  v40 = v26[2];
  v41 = v26 + 5;
  while (v40 != v39)
  {
    if (v39 >= v26[2])
    {
      goto LABEL_35;
    }

    ++v39;
    v43 = *(v41 - 1);
    v42 = *v41;
    v51[0] = v9;

    v43(v51);

    v41 += 2;
  }

  v44 = *(v2 + v49);
  *(v2 + v49) = &_swiftEmptyArrayStorage;

  v45 = *(v2 + v23);
  *(v2 + v23) = &_swiftEmptyArrayStorage;

  if (*(v2 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__canReceiveSource))
  {
    v46 = *(v2 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__canReceiveSource);
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  if (*(v2 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__canSendSource))
  {
    v47 = *(v2 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__canSendSource);
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  v48 = OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__lockdownConnection;
  if (*(v2 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__lockdownConnection) && (*(v2 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__shouldCloseConnectionOnCancel) & 1) != 0)
  {
    lockdown_disconnect();

    *(v2 + v48) = 0;
  }

  else
  {
  }

  sub_1000135A0();
}

void sub_100019960()
{
  if (!qword_100099530)
  {
    type metadata accessor for TunnelConnectionIdentifierCategory();
    v0 = type metadata accessor for Identifier();
    if (!v1)
    {
      atomic_store(v0, &qword_100099530);
    }
  }
}

uint64_t sub_1000199C0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_1000199DC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000199F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100019A38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100019B28(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_100019BC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection_identifier;
  v5 = sub_100013414(&qword_10009B730, &unk_100078A80);
  v6 = sub_10000CC04(v5);
  v8 = *(v7 + 16);

  return v8(a1, v3 + v4, v6);
}

uint64_t sub_100019C44()
{
  v1 = *v0;
  swift_getWitnessTable();
  return StreamBasedTunnelConnection.send(packets:completion:)();
}

uint64_t sub_100019CB8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return StreamBasedTunnelConnection.send(controlMessage:completion:)();
}

uint64_t sub_100019D2C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return StreamBasedTunnelConnection.receivePackets(completion:)();
}

uint64_t sub_100019D90()
{
  v1 = *v0;
  swift_getWitnessTable();
  return StreamBasedTunnelConnection.receiveControlMessage(completion:)();
}

unint64_t sub_100019E9C()
{
  result = qword_100099830;
  if (!qword_100099830)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100099830);
  }

  return result;
}

uint64_t sub_100019F38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100019F80(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  switch(v2 >> 62)
  {
    case 1uLL:
      v11 = v2 & 0x3FFFFFFFFFFFFFFFLL;

      sub_10000DF50(v3, v2);
      *a1 = xmmword_1000770B0;
      sub_10000DF50(0, 0xC000000000000000);
      v12 = v3 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_12;
      }

      if (v12 < v3)
      {
        goto LABEL_16;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v3, __DataStorage._offset.getter()))
      {
        goto LABEL_17;
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
LABEL_12:
      if (v12 < v3)
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
      }

      v5 = sub_10001A580(v3);

      *a1 = v3;
      a1[1] = v11 | 0x4000000000000000;
      return v5;
    case 2uLL:
      v7 = *a1;

      sub_10000DF50(v3, v2);
      *&v18 = v3;
      *(&v18 + 1) = v2 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1000770B0;
      sub_10000DF50(0, 0xC000000000000000);
      v5 = &v18;
      Data.LargeSlice.ensureUniqueReference()();
      v8 = v18;
      v9 = *(v18 + 24);
      v10 = sub_10001A580(*(v18 + 16));
      *a1 = v8;
      a1[1] = *(&v8 + 1) | 0x8000000000000000;
      if (!v1)
      {
        return v10;
      }

      return v5;
    case 3uLL:
      *(&v18 + 7) = 0;
      *&v18 = 0;
      return lockdown_recv();
    default:
      sub_10000DF50(v3, v2);
      WORD4(v18) = v2;
      BYTE10(v18) = BYTE2(v2);
      BYTE11(v18) = BYTE3(v2);
      BYTE12(v18) = BYTE4(v2);
      BYTE13(v18) = BYTE5(v2);
      BYTE14(v18) = BYTE6(v2);
      v5 = lockdown_recv();
      v6 = DWORD2(v18) | ((WORD6(v18) | (BYTE14(v18) << 16)) << 32);
      *a1 = v3;
      a1[1] = v6;
      return v5;
  }
}

uint64_t sub_10001A2C4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_10001A5F8(result, 1, sub_1000544F8);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 32 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_100054A30((v9 + 32 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10001A3B4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_10001A5F8(result, 1, sub_1000545C8);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 32 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_100054A30((v9 + 32 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10001A4A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = *(*v8 + 16);
  if (v10 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = result;
  v12 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = __OFSUB__(1, v12);
  v14 = 1 - v12;
  if (v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v10 + v14;
  if (__OFADD__(v10, v14))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_10001A5F8(result, 1, a7);

  return a8(v11, a2, 1, a3, a4, a5, a6);
}

uint64_t sub_10001A580(uint64_t a1)
{
  result = __DataStorage._bytes.getter();
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (!__OFSUB__(a1, result))
    {
      __DataStorage._length.getter();
      return lockdown_recv();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001A5F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_10001A670(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = *v7;
  v15 = (v14 + 32 + 32 * result);
  result = swift_arrayDestroy();
  v16 = a3 - v8;
  if (__OFSUB__(a3, v8))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = *(v14 + 16);
  if (__OFSUB__(v17, a2))
  {
    goto LABEL_16;
  }

  result = sub_100054A30((v14 + 32 + 32 * a2), v17 - a2, &v15[4 * a3]);
  v18 = *(v14 + 16);
  v19 = __OFADD__(v18, v16);
  v20 = v18 + v16;
  if (v19)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v14 + 16) = v20;
LABEL_7:
  if (a3 < 1)
  {
  }

  else
  {
    *v15 = a4;
    v15[1] = a5;
    v15[2] = a6;
    v15[3] = a7;
    if (v15 + 4 < &v15[4 * a3])
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10001A7B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = *v7;
  v15 = (v14 + 32 + 32 * result);
  result = swift_arrayDestroy();
  v16 = a3 - v8;
  if (__OFSUB__(a3, v8))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = *(v14 + 16);
  if (__OFSUB__(v17, a2))
  {
    goto LABEL_16;
  }

  result = sub_100054A30((v14 + 32 + 32 * a2), v17 - a2, &v15[4 * a3]);
  v18 = *(v14 + 16);
  v19 = __OFADD__(v18, v16);
  v20 = v18 + v16;
  if (v19)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v14 + 16) = v20;
LABEL_7:
  if (a3 < 1)
  {
    sub_10000DF50(a4, a5);
  }

  else
  {
    *v15 = a4;
    v15[1] = a5;
    v15[2] = a6;
    v15[3] = a7;
    if (v15 + 4 < &v15[4 * a3])
    {
      sub_10000E228(a4, a5);

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10001A904(uint64_t a1)
{
  v2 = __DataStorage._bytes.getter();
  if (v2)
  {
    v3 = v2;
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = a1 - result + v3;
  }

  else
  {
    v5 = 0;
  }

  result = __DataStorage._length.getter();
  if (v5)
  {
    return lockdown_send();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10001A98C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), *(a1 + 16));
}

uint64_t sub_10001A9C0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_10001AA48()
{
  v1 = *(v0 + 32);

  sub_10000CCD8();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10001AAC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v8)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v6 = a3;
      v5 = a3 >> 32;
      break;
    case 2uLL:
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v6 = 0;
      v5 = BYTE6(a4);
      break;
  }

  if (v5 >= result)
  {
    v8 = __OFSUB__(result, v6);
    v7 = result - v6 < 0;
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  if (v7 != v8)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_10001AB2C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = 0;
  v5 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v4 = a3 >> 32;
      v5 = a3;
      break;
    case 2uLL:
      v5 = *(a3 + 16);
      v4 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = 0;
      v4 = BYTE6(a4);
      break;
  }

  if (v4 < result || v5 > result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = 0;
  v8 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v7 = a3 >> 32;
      v8 = a3;
      break;
    case 2uLL:
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v8 = 0;
      v7 = BYTE6(a4);
      break;
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_21;
  }

  v10 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v10)
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_10001AC30(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
    return sub_10000E228(a1, a2);
  }
}

void sub_10001AC90()
{
  *(v0 - 144) = _NSConcreteStackBlock;
  *(v0 - 136) = v1;
  v2 = *(v0 - 176);
}

uint64_t sub_10001AD90()
{
}

uint64_t sub_10001ADEC()
{

  return sub_1000165E8();
}

Swift::Int sub_10001AE3C(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10001AEA0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_10001AEE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, unint64_t, void), uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;
  v10 = sub_1000229A0();
  sub_10000E228(v10, v11);

  sub_1000215B4();
  v14 = sub_10001C2A4();
  sub_1000229A0();
  v15 = CUPairingIdentity.authTag(for:type:)();
  v17 = v16;
  a4(v15, v16, 0);
  sub_10000ED08(v15, v17, 0);

  v12 = sub_1000229A0();
  sub_10000DF50(v12, v13);

  sub_100022960();
}

void sub_10001B198(void (*a1)(void *, void))
{
  sub_1000215B4();
  v2 = sub_10001C2A4();
  v5 = v2;
  a1(v2, 0);

  sub_100022960();
}

void sub_10001B3E8(void *a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(void, void))
{
  v10 = static os_log_type_t.default.getter();
  v11 = qword_10009CED0;
  if (os_log_type_enabled(qword_10009CED0, v10))
  {
    sub_10000D054();
    v12 = swift_slowAlloc();
    sub_10000CCCC();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v12 = 136446210;
    sub_100022260(a4 + 24, v19);
    sub_100013414(&qword_1000999E0, &unk_100077520);
    v13 = String.init<A>(describing:)();
    v15 = a5;
    v16 = sub_10000C600(v13, v14, &v20);

    *(v12 + 4) = v16;
    a5 = v15;
    _os_log_impl(&_mh_execute_header, v11, v10, "Fetched IRK from IRK generator %{public}s", v12, 0xCu);
    sub_10000CADC(v18);
    sub_100015FBC();

    sub_100015FBC();
  }

  if (a3)
  {
    swift_errorRetain();
    v17 = 1;
  }

  else
  {
    sub_10001B5A4(a4, a1, a2, &v20, v19);
    v17 = 0;
    a1 = v19[0];
  }

  a5(a1, v17);
  sub_100022030(a1, v17);
}

void sub_10001B5A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v43 = a2;
  v44 = a5;
  v9 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v41 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 104);
  v45 = v5;
  if (v18)
  {
    v19 = v18;
    v20 = static os_log_type_t.debug.getter();
    v21 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v20))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v46 = v23;
      *v22 = 136315138;
      v24 = [v19 identifier];
      if (v24)
      {
        v25 = v24;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v26 = 0;
      }

      else
      {
        v26 = 1;
      }

      sub_1000223E8(v12, v26, 1, v13);
      v38 = String.init<A>(describing:)();
      v40 = sub_10000C600(v38, v39, &v46);

      *(v22 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v21, v20, "Not saving new pairing identity as one has already been created. Using already created identity %s", v22, 0xCu);
      sub_10000CADC(v23);
    }
  }

  else
  {
    v41[0] = a4;
    v27 = [objc_allocWithZone(CUPairingIdentity) init];
    v42 = a3;
    v19 = v27;
    PairingKey = generatePairingKeyPair()();
    v30 = v29;
    v41[1] = a1;
    v32 = v31;
    v33 = v13;
    v35 = v34;
    UUID.init()();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v17, v33);
    [v19 setIdentifier:isa];

    sub_10000F344(PairingKey, v30, v19);
    sub_100022390(v32, v35, v19);
    sub_10000F39C(v43, v42, v19);
    v37 = v45;
    sub_10001B904();
    if (v37)
    {
      sub_10000DF50(v32, v35);
      sub_10000DF50(PairingKey, v30);

      *v41[0] = v37;
      return;
    }

    sub_10000DF50(PairingKey, v30);
    sub_10000DF50(v32, v35);
  }

  *v44 = v19;
}

void sub_10001B904()
{
  sub_10000D600();
  v94 = v1;
  v88 = v0;
  v4 = v3;
  v5 = type metadata accessor for UUID();
  v6 = sub_10000CBBC(v5);
  v93 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_10000EDF0();
  v92 = v10 - v11;
  sub_100022894();
  __chkstk_darwin(v12);
  v14 = &v86 - v13;
  v15 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  v16 = sub_10000D368(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_10000EDF0();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  sub_10002284C();
  v23 = static os_log_type_t.info.getter();
  v91 = sub_100013414(&qword_1000999F0, &unk_100077530);
  sub_10000D374();
  v24 = swift_allocObject();
  v90 = xmmword_100077360;
  *(v24 + 16) = xmmword_100077360;
  v25 = [v4 identifier];
  if (v25)
  {
    v26 = v25;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  sub_1000223E8(v21, v27, 1, v5);
  v28 = sub_10000D884();
  sub_1000224F0(v28, v29);
  if (sub_100022484(v2, 1, v5))
  {
    sub_100022560(v2, &qword_1000999E8, &unk_100077D60);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    LODWORD(v89) = v23;
    v32 = v4;
    v33 = v93;
    (*(v93 + 16))(v14, v2, v5);
    sub_100022560(v2, &qword_1000999E8, &unk_100077D60);
    v30 = UUID.uuidString.getter();
    v31 = v34;
    v35 = v33;
    v4 = v32;
    (*(v35 + 8))(v14, v5);
  }

  *&v97 = v30;
  *(&v97 + 1) = v31;
  sub_100013414(&qword_100099A10, &unk_100077560);
  v36 = String.init<A>(describing:)();
  v38 = v37;
  *(v24 + 56) = &type metadata for String;
  v89 = sub_100022420();
  *(v24 + 64) = v89;
  *(v24 + 32) = v36;
  *(v24 + 40) = v38;
  sub_100022ADC();
  os_log(_:dso:log:_:_:)();

  v39 = Dictionary.init(dictionaryLiteral:)();
  v40 = sub_100022330(v4, &selRef_altIRK);
  if (v41 >> 60 == 15)
  {
    sub_10004FEF0(0x4B5249746C61, 0xE600000000000000);
    if (v42)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_100022950();
      sub_100013414(&qword_10009B0C0, &unk_100077550);
      v43 = sub_100022940();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v43, v39);
      sub_1000228A0();
      sub_1000229F8();
      sub_100022994();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_100022910();
    }

    sub_100022560(&v97, &qword_100099A00, &qword_100077540);
  }

  else
  {
    sub_10002285C(v40, v41);
    sub_100022824();
    sub_100068B8C();
    v39 = v95;
  }

  v44 = sub_100022330(v4, &selRef_secretKey);
  if (v45 >> 60 == 15)
  {
    sub_10004FEF0(27507, 0xE200000000000000);
    if (v46)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_100022950();
      sub_100013414(&qword_10009B0C0, &unk_100077550);
      v47 = sub_100022940();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v47, v39);
      sub_1000228A0();
      sub_1000229F8();
      sub_100022994();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_100022910();
    }

    sub_100022560(&v97, &qword_100099A00, &qword_100077540);
  }

  else
  {
    sub_10002285C(v44, v45);
    sub_100022824();
    sub_100068B8C();
    v39 = v95;
  }

  v48 = sub_100022330(v4, &selRef_publicKey);
  if (v49 >> 60 == 15)
  {
    sub_10004FEF0(27504, 0xE200000000000000);
    if (v50)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_100022950();
      sub_100013414(&qword_10009B0C0, &unk_100077550);
      v51 = sub_100022940();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v51, v39);
      sub_1000228A0();
      sub_1000229F8();
      sub_100022994();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_100022910();
    }

    sub_100022560(&v97, &qword_100099A00, &qword_100077540);
  }

  else
  {
    sub_10002285C(v48, v49);
    sub_100022824();
    sub_100068B8C();
    v39 = v95;
  }

  v98 = sub_100013414(&qword_100099A20, &unk_100078310);
  *&v97 = v39;

  v52 = v94;
  v53 = OPACKEncoderCreateData(from:)();
  if (v52)
  {

    sub_10000CADC(&v97);
LABEL_32:
    sub_100016010();
    return;
  }

  v87 = v53;
  v94 = v54;
  sub_10000CADC(&v97);
  sub_100013414(&qword_100099A08, &qword_100077548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100077370;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v56;
  type metadata accessor for CFString(0);
  v86 = v57;
  *(inited + 72) = v57;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v58;
  v59 = kSecClassGenericPassword;
  v60 = [v4 identifier];
  if (v60)
  {
    v61 = v60;
    v62 = v92;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v63 = UUID.uuidString.getter();
    *(inited + 120) = &type metadata for String;
    *(inited + 96) = v63;
    *(inited + 104) = v64;
    (*(v93 + 8))(v62, v5);
    if (kSecUseSystemKeychain)
    {

      *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 136) = v65;
      *(inited + 168) = &type metadata for Bool;
      *(inited + 144) = 1;
      *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 184) = v66;
      *(inited + 216) = &type metadata for String;
      *(inited + 192) = 0xD000000000000017;
      *(inited + 200) = 0x800000010007D180;
      *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 232) = v67;
      *(inited + 264) = &type metadata for String;
      *(inited + 240) = 0xD000000000000017;
      *(inited + 248) = 0x800000010007D180;
      *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 280) = v68;
      *(inited + 312) = &type metadata for String;
      *(inited + 288) = 0xD000000000000017;
      *(inited + 296) = 0x800000010007D180;
      *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 328) = v69;
      *(inited + 360) = &type metadata for Data;
      v70 = v87;
      v71 = v94;
      *(inited + 336) = v87;
      *(inited + 344) = v71;
      sub_10000E228(v70, v71);
      Dictionary.init(dictionaryLiteral:)();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v98 = &type metadata for String;
      *&v97 = 0xD000000000000017;
      *(&v97 + 1) = 0x800000010007CF00;
      sub_10000E8A4(&v97, v96);
      swift_isUniquelyReferenced_nonNull_native();
      sub_10000EAEC();
      sub_100068B8C();

      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v98 = v86;
      *&v97 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
      sub_10000E8A4(&v97, v96);
      v73 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
      swift_isUniquelyReferenced_nonNull_native();
      sub_10000EAEC();
      sub_100068B8C();

      Dictionary._bridgeToObjectiveC()();
      sub_100022ABC();

      v74 = SecItemAdd(v72, 0);

      if (v74)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100022800();
        v75 = objc_allocWithZone(NSError);
        v76 = sub_10002277C();
        static os_log_type_t.error.getter();
        sub_10000D374();
        v77 = swift_allocObject();
        *(v77 + 16) = v90;
        v78 = v76;
        v79 = [v78 description];
        v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = v81;

        v83 = v89;
        *(v77 + 56) = &type metadata for String;
        *(v77 + 64) = v83;
        *(v77 + 32) = v80;
        *(v77 + 40) = v82;
        os_log(_:dso:log:_:_:)();

        swift_willThrow();
        sub_10000DF50(v87, v94);
      }

      else
      {
        sub_10000DF50(v87, v94);
        v84 = *(v88 + 104);
        *(v88 + 104) = v4;
        v85 = v4;
      }

      goto LABEL_32;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_10001C2A4()
{
  v2 = v0[13];
  if (v2)
  {
    v0 = v0[13];
  }

  else
  {
    sub_10001C314();
    if (v1)
    {
      return v0;
    }

    v6 = v0[13];
    v0[13] = v4;
    v0 = v4;

    v2 = 0;
  }

  v3 = v2;
  return v0;
}

void sub_10001C314()
{
  sub_10000D600();
  v75 = type metadata accessor for RemotePairingError();
  v2 = sub_10000CC04(v75);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10000CBDC();
  v5 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  sub_10000D368(v5);
  v7 = *(v6 + 64);
  sub_10000D8B0();
  __chkstk_darwin(v8);
  v74 = sub_100022B6C();
  v9 = sub_10000CBBC(v74);
  v72 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_10000CBDC();
  v73 = (v14 - v13);
  static os_log_type_t.info.getter();
  v71 = qword_10009CED0;
  os_log(_:dso:log:_:_:)();
  sub_100013414(&qword_100099A08, &qword_100077548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100077380;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v16;
  type metadata accessor for CFString(0);
  *(inited + 72) = v17;
  *(inited + 48) = kSecClassGenericPassword;
  if (!kSecUseSystemKeychain)
  {
    __break(1u);
  }

  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v18;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v19;
  sub_100022988();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = 0xD000000000000017;
  *(inited + 152) = v20;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v21;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v22;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  v23 = kSecClassGenericPassword;
  sub_10000D048();
  v24 = Dictionary.init(dictionaryLiteral:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = &type metadata for String;
  *&v78 = 0xD000000000000017;
  *(&v78 + 1) = 0x800000010007CF00;
  sub_10000E8A4(&v78, &v77);
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000EAEC();
  sub_100068B8C();

  v25 = v76;
  v76 = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v27 = SecItemCopyMatching(isa, &v76);

  if (v27)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100022B20();
    v28 = objc_allocWithZone(NSError);
    v29 = sub_1000228C0();
    sub_1000228D8(v29, v30, v27);
LABEL_20:
    swift_willThrow();
    goto LABEL_21;
  }

  if (!v76)
  {
    goto LABEL_18;
  }

  *&v78 = v76;
  swift_unknownObjectRetain();
  sub_100013414(&qword_100099A20, &unk_100078310);
  sub_10000D47C();
  if ((sub_100022A14() & 1) == 0)
  {
    goto LABEL_18;
  }

  v24 = v77;
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10004C55C(v31, v32, v24, &v78);

  if (!v79)
  {
LABEL_17:

    sub_100022560(&v78, &qword_100099A00, &qword_100077540);
LABEL_18:

    goto LABEL_19;
  }

  sub_10000D47C();
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_11:

    goto LABEL_19;
  }

  v33 = v77;
  UUID.init(uuidString:)();
  if (sub_100022484(v1, 1, v74) == 1)
  {

    sub_100022560(v1, &qword_1000999E8, &unk_100077D60);
LABEL_19:
    static RemotePairingError.pairingFailed.getter();
    sub_10000EE10();
    sub_100022628(v45, v24);
    sub_1000229C4();
    sub_10000D294();
    sub_100022628(v46, v24);
    Error<>.init(_:_:)();
    goto LABEL_20;
  }

  v34 = *(v72 + 32);
  v35 = sub_1000227A4();
  v36(v35);
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10004C55C(v37, v38, v24, &v78);

  if (!v79)
  {
    v42 = *(v72 + 8);
    v43 = sub_100022994();
    v44(v43);

    goto LABEL_17;
  }

  sub_10000D47C();
  if ((sub_100022A30() & 1) == 0)
  {
    (*(v72 + 8))(v73, v74);

    goto LABEL_11;
  }

  v70 = v24;
  v39 = v77;
  sub_10001ADC8();
  OPACKDecode(data:)();
  v24 = v73;
  if (v0)
  {
    (*(v72 + 8))(v73, v74);
    v40 = sub_10001ADC8();
    sub_10000DF50(v40, v41);

LABEL_21:
    swift_unknownObjectRelease();
    sub_100016010();
    return;
  }

  sub_10000D47C();
  if ((sub_100022A14() & 1) == 0)
  {
    (*(v72 + 8))(v73, v74);

    sub_10000DF50(v39, *(&v39 + 1));

    goto LABEL_11;
  }

  v47 = v77;
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10004C55C(v48, v49, v70, &v78);

  if (!v79)
  {

    sub_100022560(&v78, &qword_100099A00, &qword_100077540);
    goto LABEL_35;
  }

  sub_10000D47C();
  if ((sub_100022A30() & 1) == 0)
  {

LABEL_37:
    v54 = [objc_allocWithZone(CUPairingIdentity) init];
    v55 = UUID._bridgeToObjectiveC()().super.isa;
    [v54 setIdentifier:v55];

    sub_10004C55C(0x4B5249746C61, 0xE600000000000000, v47, &v78);
    if (v79)
    {
      sub_10000D47C();
      if (swift_dynamicCast())
      {
        sub_10000CC14();
        v56.super.isa = Data._bridgeToObjectiveC()().super.isa;
        v57 = sub_10000CC14();
        sub_10000DF50(v57, v58);
        goto LABEL_42;
      }
    }

    else
    {
      sub_100022560(&v78, &qword_100099A00, &qword_100077540);
    }

    v56.super.isa = 0;
LABEL_42:
    [v54 setAltIRK:v56.super.isa];

    sub_10004C55C(27507, 0xE200000000000000, v47, &v78);
    if (v79)
    {
      sub_10000D47C();
      if (swift_dynamicCast())
      {
        sub_10000CC14();
        v59.super.isa = Data._bridgeToObjectiveC()().super.isa;
        v60 = sub_10000CC14();
        sub_10000DF50(v60, v61);
        goto LABEL_47;
      }
    }

    else
    {
      sub_100022560(&v78, &qword_100099A00, &qword_100077540);
    }

    v59.super.isa = 0;
LABEL_47:
    [v54 setSecretKey:v59.super.isa];

    sub_10004C55C(27504, 0xE200000000000000, v47, &v78);

    if (v79)
    {
      sub_10000D47C();
      v62 = v71;
      if (swift_dynamicCast())
      {
        sub_10000CC14();
        v63.super.isa = Data._bridgeToObjectiveC()().super.isa;
        v64 = sub_10000CC14();
        sub_10000DF50(v64, v65);
LABEL_52:
        [v54 setPublicKey:v63.super.isa];

        v66 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v62, v66))
        {
          sub_10000D054();
          v67 = swift_slowAlloc();
          sub_10000CCCC();
          v68 = swift_slowAlloc();
          *&v78 = v68;
          *v67 = 136315138;
          v69 = sub_10000C600(v33, *(&v33 + 1), &v78);

          *(v67 + 4) = v69;
          _os_log_impl(&_mh_execute_header, v71, v66, "Fetched existing system pairing identity (id=%s from keychain", v67, 0xCu);
          sub_10000CADC(v68);
          sub_100015FBC();

          sub_100015FBC();
        }

        else
        {
        }

        sub_10000DF50(v39, *(&v39 + 1));
        (*(v72 + 8))(v73, v74);
        goto LABEL_21;
      }
    }

    else
    {
      sub_100022560(&v78, &qword_100099A00, &qword_100077540);
      v62 = v71;
    }

    v63.super.isa = 0;
    goto LABEL_52;
  }

  if (kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate)
  {
    v50 = v77;

    if (v50 == static String._unconditionallyBridgeFromObjectiveC(_:)() && *(&v50 + 1) == v51)
    {

LABEL_57:
      sub_100021650(v25);
      goto LABEL_35;
    }

    sub_10000D048();
    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v53)
    {
      goto LABEL_57;
    }

LABEL_35:

    goto LABEL_37;
  }

  __break(1u);
}

void sub_10001CE74()
{
  sub_10000D600();
  v3 = v2;
  v4 = type metadata accessor for UUID();
  v5 = sub_10000CBBC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000EDF0();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  sub_10002284C();
  sub_1000215B4();
  if (v0)
  {
    goto LABEL_2;
  }

  v14 = [v3 identifier];
  if (v14)
  {
    v15 = v14;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 32))(v1, v12, v4);
    static os_log_type_t.debug.getter();
    sub_100013414(&qword_1000999F0, &unk_100077530);
    sub_10000D374();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100077360;
    v17 = UUID.uuidString.getter();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100022420();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    sub_100022ADC();
    os_log(_:dso:log:_:_:)();

    sub_10001F1E0();
    v113 = *(v7 + 8);
    v114 = sub_10001ADC8();
    v115(v114);
    goto LABEL_104;
  }

  v142 = v3;
  static os_log_type_t.debug.getter();
  os_log(_:dso:log:_:_:)();
  sub_10001E884();
  v21 = v20;
  v22 = 0;
  v145 = v20 & 0xC000000000000001;
  v146 = sub_10004997C(v20);
  v143 = v21;
  v144 = v21 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v146 == v22)
    {

      v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v118 = v117;
      v119 = objc_allocWithZone(NSError);
      sub_1000228D8(v116, v118, -25300);
      swift_willThrow();
      goto LABEL_2;
    }

    if (v145)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v22 >= *(v144 + 16))
      {
        goto LABEL_106;
      }

      v23 = *(v21 + 8 * v22 + 32);
    }

    v24 = v23;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
    }

    v25 = sub_100022330(v23, &selRef_publicKey);
    v27 = v26;
    v28 = sub_100022330(v3, &selRef_publicKey);
    v30 = v28;
    v31 = v29;
    if (v27 >> 60 == 15)
    {
      if (v29 >> 60 == 15)
      {

        v120 = sub_1000227B0();
        sub_10000ECF4(v120, v121);
        goto LABEL_104;
      }

LABEL_15:

      v32 = sub_1000227B0();
      sub_10000ECF4(v32, v33);
      v34 = sub_1000227A4();
      sub_10000ECF4(v34, v35);
      goto LABEL_98;
    }

    if (v29 >> 60 == 15)
    {
      goto LABEL_15;
    }

    v36 = v27 >> 62;
    v37 = v29 >> 62;
    if (v29 >> 60 == 14)
    {
      break;
    }

    v39 = 0;
    switch(v36)
    {
      case 0uLL:
        v39 = BYTE6(v27);
        break;
      case 1uLL:
        if (__OFSUB__(HIDWORD(v25), v25))
        {
          goto LABEL_109;
        }

        v39 = HIDWORD(v25) - v25;
        break;
      case 2uLL:
        v41 = *(v25 + 16);
        v40 = *(v25 + 24);
        v42 = __OFSUB__(v40, v41);
        v39 = v40 - v41;
        if (!v42)
        {
          break;
        }

        goto LABEL_110;
      case 3uLL:
        break;
      default:
        goto LABEL_126;
    }

LABEL_32:
    v43 = HIDWORD(v28);
    v44 = BYTE6(v29);
    switch(v37)
    {
      case 1uLL:
        LODWORD(v45) = HIDWORD(v28) - v28;
        if (__OFSUB__(HIDWORD(v28), v28))
        {
          goto LABEL_108;
        }

        v45 = v45;
LABEL_41:
        if (v39 == v45)
        {
          if (v39 < 1)
          {
LABEL_101:
            v122 = sub_1000227A4();
            sub_10000ECF4(v122, v123);
            goto LABEL_102;
          }

          v48 = v28 >> 32;
          v49 = v28 >> 40;
          v50 = HIWORD(v28);
          switch(v36)
          {
            case 1:
              if (v25 >> 32 < v25)
              {
                goto LABEL_111;
              }

              v68 = sub_1000227A4();
              sub_10000EC4C(v68, v69);
              v70 = sub_1000227A4();
              sub_10000EC4C(v70, v71);
              sub_10002273C();
              v72 = __DataStorage._bytes.getter();
              if (v72)
              {
                v130 = v25 >> 32;
                v73 = v72;
                v74 = __DataStorage._offset.getter();
                if (__OFSUB__(v25, v74))
                {
                  goto LABEL_114;
                }

                v132 = (v25 - v74 + v73);
              }

              else
              {
                v132 = 0;
              }

LABEL_70:
              __DataStorage._length.getter();
              sub_10002203C(v132, v30, v31, v159);
              v78 = sub_1000227A4();
              sub_10000ECF4(v78, v79);
              v80 = sub_1000227A4();
              sub_10000ECF4(v80, v81);
              v82 = sub_1000227A4();
              sub_10000ECF4(v82, v83);
              v84 = v159[0];
              v85 = sub_1000227A4();
              sub_10000ECF4(v85, v86);
              v87 = sub_1000227A4();
              sub_10000ECF4(v87, v88);
              v89 = sub_1000227B0();
              sub_10000ECF4(v89, v90);
              v3 = v142;
              goto LABEL_96;
            case 2:
              v57 = *(v25 + 16);
              v137 = *(v25 + 24);
              v58 = sub_1000227A4();
              sub_10000EC4C(v58, v59);
              v60 = sub_1000227A4();
              sub_10000EC4C(v60, v61);
              sub_10002273C();
              v62 = __DataStorage._bytes.getter();
              if (v62)
              {
                v130 = v57;
                v63 = v62;
                v64 = __DataStorage._offset.getter();
                v65 = v130;
                if (__OFSUB__(v130, v64))
                {
                  goto LABEL_113;
                }

                v132 = (v130 - v64 + v63);
              }

              else
              {
                v132 = 0;
                v65 = v57;
              }

              if (!__OFSUB__(v137, v65))
              {
                goto LABEL_70;
              }

              goto LABEL_112;
            case 3:
              memset(v159, 0, 14);
              if (v37 == 2)
              {
                v133 = *(v30 + 24);
                v138 = *(v30 + 16);
                sub_10002273C();
                v91 = __DataStorage._bytes.getter();
                if (v91)
                {
                  v92 = sub_100022B8C(v91);
                  v93 = v138;
                  if (__OFSUB__(v138, v92))
                  {
                    goto LABEL_120;
                  }

                  v94 = v138 - v92 + v130;
                }

                else
                {
                  v94 = 0;
                  v93 = v138;
                }

                v140 = v94;
                v42 = __OFSUB__(v133, v93);
                v135 = v133 - v93;
                if (v42)
                {
                  goto LABEL_118;
                }

                v99 = __DataStorage._length.getter();
                v100 = v140;
                if (!v140)
                {
                  goto LABEL_123;
                }

                goto LABEL_84;
              }

              if (v37 != 1)
              {
LABEL_64:
                v147 = v30;
                v148 = BYTE2(v30);
                v149 = BYTE3(v30);
                v150 = v43;
                v151 = v49;
                v152 = v50;
                v153 = HIBYTE(v30);
                v154 = v31;
                v155 = BYTE2(v31);
                v156 = BYTE3(v31);
                v157 = BYTE4(v31);
                v158 = BYTE5(v31);
                v75 = memcmp(v159, &v147, v44);
                v76 = sub_1000227A4();
                sub_10000ECF4(v76, v77);
                goto LABEL_95;
              }

              v131 = v30 >> 32;
              v136 = v30;
              if (v48 < v30)
              {
                goto LABEL_115;
              }

              sub_10002273C();
              v66 = __DataStorage._bytes.getter();
              if (v66)
              {
                v67 = sub_100022B8C(v66);
                if (__OFSUB__(v30, v67))
                {
                  goto LABEL_122;
                }

                v130 += v30 - v67;
              }

              else
              {
                v130 = 0;
              }

              v99 = __DataStorage._length.getter();
              v100 = v130;
              if (!v130)
              {
                __break(1u);
LABEL_123:
                __break(1u);
LABEL_124:
                __break(1u);
LABEL_125:
                __break(1u);
                sub_10000ECF4(v99, v100);
                v126 = sub_1000227A4();
                sub_10000ECF4(v126, v127);
                v128 = sub_1000227A4();
                sub_10000DF50(v128, v129);

                __break(1u);
LABEL_126:
                JUMPOUT(0);
              }

              goto LABEL_90;
            default:
              v159[0] = v25;
              LOWORD(v159[1]) = v27;
              BYTE2(v159[1]) = BYTE2(v27);
              BYTE3(v159[1]) = BYTE3(v27);
              BYTE4(v159[1]) = BYTE4(v27);
              BYTE5(v159[1]) = BYTE5(v27);
              if (!v37)
              {
                goto LABEL_64;
              }

              if (v37 == 1)
              {
                v131 = v30 >> 32;
                v136 = v30;
                if (v48 < v30)
                {
                  goto LABEL_116;
                }

                sub_10002273C();
                v51 = __DataStorage._bytes.getter();
                if (v51)
                {
                  v52 = sub_100022B8C(v51);
                  if (__OFSUB__(v30, v52))
                  {
                    goto LABEL_121;
                  }

                  v130 += v30 - v52;
                }

                else
                {
                  v130 = 0;
                }

                v99 = __DataStorage._length.getter();
                v100 = v130;
                if (!v130)
                {
                  goto LABEL_125;
                }

LABEL_90:
                v101 = v131 - v136;
              }

              else
              {
                v134 = *(v30 + 24);
                v139 = *(v30 + 16);
                sub_10002273C();
                v95 = __DataStorage._bytes.getter();
                if (v95)
                {
                  v96 = sub_100022B8C(v95);
                  v97 = v139;
                  if (__OFSUB__(v139, v96))
                  {
                    goto LABEL_119;
                  }

                  v98 = v139 - v96 + v130;
                }

                else
                {
                  v98 = 0;
                  v97 = v139;
                }

                v141 = v98;
                v42 = __OFSUB__(v134, v97);
                v135 = v134 - v97;
                if (v42)
                {
                  goto LABEL_117;
                }

                v99 = __DataStorage._length.getter();
                v100 = v141;
                if (!v141)
                {
                  goto LABEL_124;
                }

LABEL_84:
                v101 = v135;
              }

              if (v99 >= v101)
              {
                v102 = v101;
              }

              else
              {
                v102 = v99;
              }

              v75 = memcmp(v159, v100, v102);
              v103 = sub_1000227A4();
              sub_10000ECF4(v103, v104);
              v105 = sub_1000227B0();
              sub_10000ECF4(v105, v106);
              v107 = sub_1000227A4();
              sub_10000ECF4(v107, v108);
              v109 = sub_1000227A4();
              sub_10000DF50(v109, v110);
LABEL_95:
              v84 = v75 == 0;
LABEL_96:
              v111 = sub_1000227B0();
              sub_10000ECF4(v111, v112);
              if (v84)
              {
                goto LABEL_103;
              }

              break;
          }
        }

        else
        {
LABEL_50:
          v53 = sub_1000227A4();
          sub_10000ECF4(v53, v54);
          v55 = sub_1000227B0();
          sub_10000ECF4(v55, v56);
        }

        v21 = v143;
        break;
      case 2uLL:
        v47 = *(v28 + 16);
        v46 = *(v28 + 24);
        v42 = __OFSUB__(v46, v47);
        v45 = v46 - v47;
        if (!v42)
        {
          goto LABEL_41;
        }

        goto LABEL_107;
      case 3uLL:
        if (!v39)
        {
          goto LABEL_101;
        }

        goto LABEL_50;
      default:
        v45 = BYTE6(v29);
        goto LABEL_41;
    }

LABEL_98:
    ++v22;
  }

  v39 = 0;
  if (v25)
  {
    goto LABEL_32;
  }

  if (v27 != 0xC000000000000000 || v29 >> 62 != 3)
  {
    goto LABEL_32;
  }

  v39 = 0;
  if (v28 || v29 != 0xC000000000000000)
  {
    goto LABEL_32;
  }

  sub_10000ECF4(0, 0xC000000000000000);
LABEL_102:
  v124 = sub_1000227B0();
  sub_10000ECF4(v124, v125);
LABEL_103:

LABEL_104:
  static os_log_type_t.debug.getter();
  os_log(_:dso:log:_:_:)();
LABEL_2:
  sub_100016010();
}

void sub_10001D85C()
{
  sub_10000D600();
  v168 = v3;
  v158 = type metadata accessor for RemotePairingError();
  v4 = sub_10000CC04(v158);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000CBDC();
  v7 = sub_100013414(&unk_10009A8C0, &unk_100077D50);
  sub_10000D368(v7);
  v9 = *(v8 + 64);
  sub_10000D8B0();
  __chkstk_darwin(v10);
  v12 = v137 - v11;
  v13 = type metadata accessor for UUID();
  v14 = sub_10000CBBC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_10000EDF0();
  sub_100022930();
  __chkstk_darwin(v19);
  v21 = v137 - v20;
  sub_1000215B4();
  if (v1)
  {
    goto LABEL_19;
  }

  v154 = v12;
  v155 = 0;
  v153 = v0;
  v156 = v16;
  v157 = v21;
  v22 = [v168 identifier];
  if (!v22)
  {
    goto LABEL_18;
  }

  v23 = v22;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v0 = v156;
  v24 = v157;
  v25 = v13;
  (*(v156 + 32))(v157, v2, v13);
  v26 = sub_100022330(v168, &selRef_altIRK);
  if (v27 >> 60 == 15)
  {
    v28 = *(v0 + 8);
    v0 += 8;
    v28(v24, v13);
LABEL_18:
    static RemotePairingError.pairingFailed.getter();
    sub_10000EE10();
    sub_100022628(v58, v0);
    sub_1000229C4();
    sub_10000D294();
    sub_100022628(v59, v0);
    Error<>.init(_:_:)();
    swift_willThrow();
LABEL_19:
    sub_100016010();
    return;
  }

  v29 = v26;
  v30 = v27;
  v152 = v25;
  v31 = sub_100022330(v168, &selRef_publicKey);
  v151 = v32;
  if (v32 >> 60 == 15)
  {
    v33 = sub_100022900();
    v34(v33);
    v35 = sub_1000228CC();
    sub_10000ECF4(v35, v36);
    goto LABEL_18;
  }

  v37 = v31;
  v38 = sub_10003DDB0(v168);
  if (v39)
  {
    *(&v164 + 1) = &type metadata for String;
    *&v163 = v38;
    *(&v163 + 1) = v39;
    sub_10000E8A4(&v163, &v165);
    v40 = v154;
  }

  else
  {
    v163 = 0u;
    v164 = 0u;
    v41 = sub_10003DD44(v168);
    v40 = v154;
    if (v41)
    {
      v42 = v41;
      v159 = 1701667182;
      v160 = 0xE400000000000000;
      AnyHashable.init<A>(_:)();
      sub_10004C5C0(v42, &v165);

      sub_10002269C(&v161);
    }

    else
    {
      v165 = 0u;
      v166 = 0u;
    }

    v0 = v156;
    if (*(&v164 + 1))
    {
      sub_100022560(&v163, &qword_100099A00, &qword_100077540);
    }
  }

  if (!*(&v166 + 1))
  {
    v54 = sub_100022900();
    v55(v54);
    v56 = sub_1000228CC();
    sub_10000ECF4(v56, v57);
    sub_10000ECF4(v37, v151);
    sub_100022560(&v165, &qword_100099A00, &qword_100077540);
    goto LABEL_18;
  }

  sub_10000E8A4(&v165, v167);
  Date.init()();
  type metadata accessor for Date();
  sub_100022A9C();
  sub_1000223E8(v43, v44, v45, v46);
  sub_10006A420(v40);
  v158 = sub_100013414(&qword_100099A08, &qword_100077548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100077390;
  *(inited + 32) = 0x4B5249746C61;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v29;
  *(inited + 56) = v30;
  *(inited + 72) = &type metadata for Data;
  *(inited + 80) = 27504;
  *(inited + 120) = &type metadata for Data;
  *(inited + 88) = 0xE200000000000000;
  *(inited + 96) = v37;
  v48 = v151;
  *(inited + 104) = v151;
  v49 = sub_1000228CC();
  sub_10000EC4C(v49, v50);
  sub_10000EC4C(v37, v48);
  v51 = Dictionary.init(dictionaryLiteral:)();
  v52 = sub_1000222C4(v168);
  v150 = v29;
  if (v52)
  {
    v53 = v52;
    *(&v162 + 1) = sub_100013414(&qword_100099A28, &qword_100077570);
    *&v161 = v53;
    sub_1000229AC();
    swift_isUniquelyReferenced_nonNull_native();
    sub_100022838();
    sub_100068B8C();
    v51 = v163;
  }

  else
  {
    sub_10004FEF0(7103329, 0xE300000000000000);
    if (v60)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_100022810();
      sub_100013414(&qword_10009B0C0, &unk_100077550);
      sub_1000227CC();
      sub_10000CCE4();
      sub_1000229DC();
      sub_10002297C();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v161 = 0u;
      v162 = 0u;
    }

    sub_100022560(&v161, &qword_100099A00, &qword_100077540);
  }

  v61 = sub_10003DDBC(v168);
  if (v62)
  {
    *(&v162 + 1) = &type metadata for String;
    *&v161 = v61;
    *(&v161 + 1) = v62;
    sub_1000229AC();
    swift_isUniquelyReferenced_nonNull_native();
    sub_100022838();
    sub_100068B8C();
    v51 = v163;
  }

  else
  {
    sub_10004FEF0(0x6C65646F6DLL, 0xE500000000000000);
    if (v63)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_100022810();
      sub_100013414(&qword_10009B0C0, &unk_100077550);
      sub_1000227CC();
      sub_10000CCE4();
      sub_1000229DC();
      sub_10002297C();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v161 = 0u;
      v162 = 0u;
    }

    sub_100022560(&v161, &qword_100099A00, &qword_100077540);
  }

  v64 = sub_10003DD44(v168);
  if (v64)
  {
    v65 = v64;
    *(&v162 + 1) = sub_100013414(&qword_100099A28, &qword_100077570);
    *&v161 = v65;
    sub_1000229AC();
    swift_isUniquelyReferenced_nonNull_native();
    sub_100022838();
    sub_100068B8C();
    v51 = v163;
  }

  else
  {
    sub_10004FEF0(1868983913, 0xE400000000000000);
    if (v66)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_100022810();
      sub_100013414(&qword_10009B0C0, &unk_100077550);
      sub_1000227CC();
      sub_10000CCE4();
      sub_1000229DC();
      sub_10002297C();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v161 = 0u;
      v162 = 0u;
    }

    sub_100022560(&v161, &qword_100099A00, &qword_100077540);
  }

  *(&v162 + 1) = sub_100013414(&qword_100099A20, &unk_100078310);
  *&v161 = v51;

  v67 = v155;
  v68 = OPACKEncoderCreateData(from:)();
  v155 = v67;
  if (v67)
  {
    sub_10000ECF4(v37, v151);
    v69 = sub_1000228CC();
    sub_10000ECF4(v69, v70);

    sub_10000CADC(v167);
    v71 = sub_100022900();
    v72(v71);
    sub_10000CADC(&v161);
    goto LABEL_19;
  }

  v154 = v68;
  v147 = v37;
  v148 = v30;
  sub_10000CADC(&v161);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1000773A0;
  v146 = kSecClass;
  *(v73 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v73 + 40) = v74;
  type metadata accessor for CFString(0);
  v149 = v75;
  *(v73 + 72) = v75;
  *(v73 + 48) = kSecClassGenericPassword;
  v145 = kSecAttrAccount;
  *(v73 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v73 + 88) = v76;
  v144 = kSecClassGenericPassword;
  v77 = UUID.uuidString.getter();
  *(v73 + 120) = &type metadata for String;
  *(v73 + 96) = v77;
  *(v73 + 104) = v78;
  if (kSecUseSystemKeychain)
  {
    v137[3] = kSecUseSystemKeychain;
    *(v73 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v73 + 136) = v79;
    *(v73 + 168) = &type metadata for Bool;
    *(v73 + 144) = 1;
    v140 = kSecAttrService;
    *(v73 + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v73 + 184) = v80;
    *(v73 + 216) = &type metadata for String;
    *(v73 + 192) = 0xD00000000000001ALL;
    *(v73 + 200) = 0x800000010007CEE0;
    Dictionary.init(dictionaryLiteral:)();
    v143 = kSecAttrAccessGroup;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100022988();
    *(&v162 + 1) = &type metadata for String;
    *&v142 = 0xD000000000000017;
    *(&v142 + 1) = v81;
    *&v161 = 0xD000000000000017;
    *(&v161 + 1) = v81;
    sub_1000229AC();
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000D8EC();
    sub_100068B8C();

    v141 = kSecAttrAccessible;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v162 + 1) = v149;
    *&v161 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
    sub_1000229AC();
    v139 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000D8EC();
    sub_100068B8C();

    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_1000773B0;
    v137[2] = kSecAttrDescription;
    *(v82 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v82 + 40) = v83;
    *(v82 + 72) = &type metadata for String;
    *(v82 + 48) = 0xD00000000000001ALL;
    *(v82 + 56) = 0x800000010007CEE0;
    v138 = 0x800000010007CEE0;
    v137[1] = kSecAttrLabel;
    *(v82 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v82 + 88) = v84;
    sub_10000CA80(v167, v82 + 96);
    *(v82 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v82 + 136) = v85;
    *(v82 + 168) = &type metadata for Data;
    v86 = sub_100022AFC();
    *(v82 + 144) = v86;
    *(v82 + 152) = v87;
    sub_10000E228(v86, v87);
    v88 = Dictionary.init(dictionaryLiteral:)();
    sub_100022994();
    v89.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v90.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v91 = sub_1000228CC();
    v93 = SecItemUpdate(v91, v92);

    if (v93 == -25300)
    {
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_100077370;
      *(v97 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v97 + 40) = v98;
      *(v97 + 72) = v149;
      v99 = v144;
      *(v97 + 48) = v144;
      *(v97 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v97 + 88) = v100;
      v101 = v99;
      v102 = v157;
      UUID.uuidString.getter();
      sub_100022B20();
      *(v97 + 120) = &type metadata for String;

      *(v97 + 96) = v102;
      *(v97 + 104) = v89;
      *(v97 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v97 + 136) = v103;
      *(v97 + 168) = &type metadata for Bool;
      *(v97 + 144) = 1;
      *(v97 + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v97 + 184) = v104;
      *(v97 + 216) = &type metadata for String;
      v105 = v138;
      *(v97 + 192) = 0xD00000000000001ALL;
      *(v97 + 200) = v105;
      *(v97 + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v97 + 232) = v106;
      sub_10000CA80(v167, v97 + 240);
      *(v97 + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v97 + 280) = v107;
      *(v97 + 312) = &type metadata for String;
      *(v97 + 288) = 0xD00000000000001ALL;
      *(v97 + 296) = v105;
      *(v97 + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v97 + 328) = v108;
      *(v97 + 360) = &type metadata for Data;
      v109 = sub_100022AFC();
      *(v97 + 336) = v109;
      *(v97 + 344) = v110;
      sub_10000E228(v109, v110);
      v51 = &type metadata for Any;
      v90.super.isa = &type metadata for String;
      Dictionary.init(dictionaryLiteral:)();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v162 + 1) = &type metadata for String;
      v161 = v142;
      sub_1000229AC();
      swift_isUniquelyReferenced_nonNull_native();
      sub_10000D8EC();
      sub_100068B8C();

      v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v162 + 1) = v149;
      v112 = v139;
      *&v161 = v139;
      sub_1000229AC();
      v113 = v112;
      swift_isUniquelyReferenced_nonNull_native();
      sub_10000D8EC();
      sub_100068B8C();

      Dictionary._bridgeToObjectiveC()();
      sub_100022ABC();

      LODWORD(v102) = SecItemAdd(&protocol witness table for String, 0);

      if (!v102)
      {
        sub_100022A60();
        sub_100022AE8();
        if (v111)
        {

          v132 = (&protocol witness table for String + 40);
          do
          {
            v134 = *(v132 - 1);
            v133 = *v132;
            LOBYTE(v165) = 0;

            v134(&v165);

            v132 += 2;
            --v111;
          }

          while (v111);
          goto LABEL_52;
        }

LABEL_53:
        v135 = sub_100022AFC();
        sub_10000DF50(v135, v136);
        sub_10000ECF4(v147, v151);
        sub_10000ECF4(v150, v90.super.isa);
        sub_10000CADC(v167);
        (*(v156 + 8))(v51, v152);
        goto LABEL_19;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100022800();
      v114 = objc_allocWithZone(NSError);
      v115 = sub_10002277C();
      static os_log_type_t.error.getter();
      sub_100013414(&qword_1000999F0, &unk_100077530);
      sub_10000D374();
      v116 = swift_allocObject();
      *(v116 + 16) = xmmword_100077360;
      v117 = v115;
      v118 = [v117 description];
      v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v121 = v120;

      *(v116 + 56) = &type metadata for String;
      *(v116 + 64) = sub_100022420();
      *(v116 + 32) = v119;
      *(v116 + 40) = v121;
    }

    else
    {
      if (!v93)
      {

        sub_100022A60();
        sub_100022AE8();
        if (v89.super.isa)
        {

          v94 = (v88 + 40);
          do
          {
            v96 = *(v94 - 1);
            v95 = *v94;
            LOBYTE(v165) = 2;

            v96(&v165);

            v94 += 2;
            --v89.super.isa;
          }

          while (v89.super.isa);
          v90.super.isa = v148;
LABEL_52:

          goto LABEL_53;
        }

        goto LABEL_53;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100022800();
      v122 = objc_allocWithZone(NSError);
      v123 = sub_10002277C();
      static os_log_type_t.error.getter();
      sub_100013414(&qword_1000999F0, &unk_100077530);
      sub_10000D374();
      v124 = swift_allocObject();
      *(v124 + 16) = xmmword_100077360;
      v117 = v123;
      v125 = [v117 description];
      v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v128 = v127;

      *(v124 + 56) = &type metadata for String;
      *(v124 + 64) = sub_100022420();
      *(v124 + 32) = v126;
      *(v124 + 40) = v128;
    }

    sub_100022ADC();
    os_log(_:dso:log:_:_:)();

    swift_willThrow();
    v129 = v117;
    v130 = sub_100022AFC();
    sub_10000DF50(v130, v131);
    sub_10000ECF4(v147, v151);
    sub_10000ECF4(v150, v148);

    sub_10000CADC(v167);
    (*(v156 + 8))(v157, v152);
    goto LABEL_19;
  }

  __break(1u);
}

void sub_10001E884()
{
  sub_10000D600();
  v2 = type metadata accessor for RemotePairingError();
  v3 = sub_10000CC04(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000CBDC();
  v6 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  sub_10000D368(v6);
  v8 = *(v7 + 64);
  sub_10000D8B0();
  __chkstk_darwin(v9);
  v10 = sub_100022B6C();
  v11 = sub_10000CBBC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_10000CBDC();
  v18 = v17 - v16;
  sub_1000215B4();
  if (v0)
  {
    goto LABEL_2;
  }

  v52 = v18;
  v50 = v1;
  static os_log_type_t.info.getter();
  v51 = qword_10009CED0;
  os_log(_:dso:log:_:_:)();
  sub_100013414(&qword_100099A08, &qword_100077548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100077380;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v20;
  type metadata accessor for CFString(0);
  v22 = v21;
  *(inited + 72) = v21;
  *(inited + 48) = kSecClassGenericPassword;
  if (kSecUseSystemKeychain)
  {
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v23;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 96) = 1;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v24;
    sub_100022988();
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = 0xD00000000000001ALL;
    *(inited + 152) = v25;
    *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 184) = v26;
    *(inited + 216) = &type metadata for Bool;
    *(inited + 192) = 1;
    *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 232) = v27;
    *(inited + 264) = v22;
    *(inited + 240) = kSecMatchLimitAll;
    v28 = kSecClassGenericPassword;
    v29 = kSecMatchLimitAll;
    sub_1000228C0();
    v30 = Dictionary.init(dictionaryLiteral:)();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = &type metadata for String;
    *&v57 = 0xD000000000000017;
    *(&v57 + 1) = 0x800000010007CF00;
    sub_10000E8A4(&v57, &v55);
    swift_isUniquelyReferenced_nonNull_native();
    v53 = v30;
    sub_100068B8C();

    v54 = 0;
    sub_1000228C0();
    Dictionary._bridgeToObjectiveC()();
    sub_100022ABC();

    v31 = SecItemCopyMatching(&protocol witness table for String, &v54);

    if (v31 != -25300)
    {
      if (v31)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100022800();
        v39 = objc_allocWithZone(NSError);
        sub_10002277C();
        swift_willThrow();
        swift_unknownObjectRelease();
LABEL_2:
        sub_100016010();
        return;
      }

      if (v54 && (*&v57 = v54, swift_unknownObjectRetain(), sub_100013414(&qword_100099A30, &qword_100078320), (sub_100022A30() & 1) != 0))
      {
        v32 = v55;
        v33 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v51, v33))
        {

          sub_10000D054();
          v34 = swift_slowAlloc();
          *v34 = 134217984;
          *(v34 + 4) = *(v32 + 16);

          _os_log_impl(&_mh_execute_header, v51, v33, "Successfully fetched %ld peer items from keychain", v34, 0xCu);
          sub_100015FBC();
        }

        v35 = 0;
        v49 = *(v32 + 16);
        v36 = v32 + 32;
        while (v49 != v35)
        {
          if (v35 >= *(v32 + 16))
          {
            __break(1u);
          }

          sub_10000CA80(v36, &v57);
          sub_10000CA80(&v57, &v55);
          sub_100013414(&qword_100099A20, &unk_100078310);
          sub_10000D47C();
          if ((sub_100022A30() & 1) == 0)
          {
LABEL_23:

            goto LABEL_29;
          }

          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_10004C55C(v37, v38, v53, &v55);

          if (!v56)
          {

            v44 = &qword_100099A00;
            v45 = &qword_100077540;
            v46 = &v55;
            goto LABEL_28;
          }

          sub_10000D47C();
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_23;
          }

          UUID.init(uuidString:)();

          if (sub_100022484(v50, 1, v10) == 1)
          {

            v44 = &qword_1000999E8;
            v45 = &unk_100077D60;
            v46 = v50;
LABEL_28:
            sub_100022560(v46, v44, v45);
LABEL_29:
            static RemotePairingError.pairingFailed.getter();
            *&v55 = 0;
            *(&v55 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(34);
            v47._countAndFlagsBits = 0xD000000000000020;
            v47._object = 0x800000010007CFE0;
            String.append(_:)(v47);
            _print_unlocked<A, B>(_:_:)();
            sub_100022628(&qword_100099850, &type metadata accessor for RemotePairingError);
            sub_1000229C4();
            sub_10000D294();
            sub_100022628(v48, &type metadata accessor for RemotePairingError);
            Error<>.init(_:_:)();
            swift_willThrow();
            sub_10000CADC(&v57);
            goto LABEL_30;
          }

          (*(v13 + 32))(v52, v50, v10);
          sub_10001F1E0();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          sub_1000229A0();
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          (*(v13 + 8))(v52, v10);
          sub_10000CADC(&v57);
          v36 += 32;
          ++v35;
        }

        v42 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v51, v42))
        {

          sub_10000D054();
          v43 = swift_slowAlloc();
          *v43 = 134217984;
          *(v43 + 4) = sub_10004997C(&_swiftEmptyArrayStorage);

          _os_log_impl(&_mh_execute_header, v51, v42, "Successfully parsed %ld peer items from keychain", v43, 0xCu);
          sub_100015FBC();
        }
      }

      else
      {
        static RemotePairingError.pairingFailed.getter();
        sub_10000EE10();
        sub_100022628(v40, v31);
        sub_1000229C4();
        sub_10000D294();
        sub_100022628(v41, v31);
        Error<>.init(_:_:)();
        swift_willThrow();
      }
    }

LABEL_30:
    swift_unknownObjectRelease();
    goto LABEL_2;
  }

  __break(1u);
}

void sub_10001F1E0()
{
  sub_10000D600();
  v93 = v0;
  v94 = type metadata accessor for RemotePairingError();
  v1 = sub_10000CC04(v94);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_10000CBDC();
  v95 = v5 - v4;
  v6 = sub_100013414(&unk_10009A8C0, &unk_100077D50);
  v7 = sub_10000D368(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_10000EDF0();
  v92 = v10 - v11;
  sub_100022894();
  __chkstk_darwin(v12);
  v91 = &v88 - v13;
  static os_log_type_t.debug.getter();
  sub_100013414(&qword_1000999F0, &unk_100077530);
  sub_10000D374();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100077360;
  v15 = UUID.uuidString.getter();
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_100022420();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  os_log(_:dso:log:_:_:)();

  sub_100013414(&qword_100099A08, &qword_100077548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000773C0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v19;
  type metadata accessor for CFString(0);
  *(inited + 72) = v20;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v21;
  v22 = kSecClassGenericPassword;
  v23 = UUID.uuidString.getter();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v23;
  *(inited + 104) = v24;
  if (!kSecUseSystemKeychain)
  {
    __break(1u);
  }

  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v25;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v26;
  sub_100022988();
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = 0xD00000000000001ALL;
  *(inited + 200) = v27;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v28;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v29;
  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = 1;
  sub_10002297C();
  v30 = Dictionary.init(dictionaryLiteral:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v99 = &type metadata for String;
  *&v98 = 0xD000000000000017;
  *(&v98 + 1) = 0x800000010007CF00;
  sub_10000E8A4(&v98, &v97);
  swift_isUniquelyReferenced_nonNull_native();
  v96 = v30;
  sub_100068B8C();

  v31 = v96;
  v96 = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v33 = SecItemCopyMatching(isa, &v96);

  if (v33)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100022B20();
    v34 = objc_allocWithZone(NSError);
    v35 = sub_1000228C0();
    sub_1000228D8(v35, v36, v33);
LABEL_14:
    swift_willThrow();
    goto LABEL_15;
  }

  if (!v96)
  {
    goto LABEL_12;
  }

  *&v98 = v96;
  swift_unknownObjectRetain();
  sub_100013414(&qword_100099A20, &unk_100078310);
  sub_1000227F4();
  if ((sub_100022A14() & 1) == 0)
  {
    goto LABEL_12;
  }

  v37 = v97;
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10004C55C(v38, v39, v37, &v98);

  if (!v99)
  {
    goto LABEL_10;
  }

  sub_1000227BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:

LABEL_33:

    goto LABEL_13;
  }

  v40 = v97;
  v41 = v93;
  OPACKDecode(data:)();
  if (v41)
  {
    sub_10000DF50(v40, *(&v40 + 1));

LABEL_15:
    swift_unknownObjectRelease();
LABEL_16:
    sub_100016010();
    return;
  }

  v93 = v40;
  sub_1000227BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100022A84();
    goto LABEL_32;
  }

  v44 = v97;
  sub_10004C55C(27504, 0xE200000000000000, v97, &v98);
  if (!v99)
  {

    sub_100022A84();
LABEL_10:

LABEL_11:
    sub_100022560(&v98, &qword_100099A00, &qword_100077540);
LABEL_12:

LABEL_13:
    static RemotePairingError.pairingFailed.getter();
    sub_10000EE10();
    sub_100022628(v42, v31);
    sub_1000229C4();
    sub_10000D294();
    sub_100022628(v43, v31);
    Error<>.init(_:_:)();
    goto LABEL_14;
  }

  sub_1000227BC();
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_100022A84();

    goto LABEL_33;
  }

  v90 = v37;
  v45 = v97;
  sub_10004C55C(0x4B5249746C61, 0xE600000000000000, v44, &v98);
  if (!v99)
  {

    sub_100022A84();

    v55 = sub_10000D884();
    sub_10000DF50(v55, v56);
    goto LABEL_11;
  }

  v89 = v45;
  v88 = v44;
  sub_1000227BC();
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_100022A84();

    sub_10000DF50(v89, *(&v89 + 1));
    goto LABEL_12;
  }

  v94 = *(&v40 + 1);
  v95 = *(&v97 + 1);
  v46 = v97;
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10004C55C(v47, v48, v90, &v98);

  if (!v99)
  {
    sub_100022560(&v98, &qword_100099A00, &qword_100077540);
    goto LABEL_39;
  }

  sub_1000227BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:

    v54 = *(&v89 + 1);
    goto LABEL_40;
  }

  if (kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate)
  {
    v49 = v46;
    v50 = v97;
    if (v50 == static String._unconditionallyBridgeFromObjectiveC(_:)() && *(&v50 + 1) == v51)
    {
    }

    else
    {
      sub_1000227B0();
      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v53 & 1) == 0)
      {

        v54 = *(&v89 + 1);
LABEL_70:
        v46 = v49;
LABEL_40:
        v57 = [objc_allocWithZone(CUPairedPeer) init];
        v58 = UUID._bridgeToObjectiveC()().super.isa;
        sub_100022A48(v58, "setIdentifier:");

        sub_10000F344(v89, v54, v57);
        v59 = v46;
        sub_10000F39C(v46, v95, v57);
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10000D688(v60, v61);

        if (v99)
        {
          v62 = type metadata accessor for Date();
          v63 = v91;
          v64 = swift_dynamicCast();
          sub_1000223E8(v63, v64 ^ 1u, 1, v62);
          v65 = sub_100022484(v63, 1, v62);
          v66 = 0;
          v67 = v92;
          if (v65 != 1)
          {
            v66 = Date._bridgeToObjectiveC()().super.isa;
            v68 = *(*(v62 - 8) + 8);
            v69 = sub_1000227B0();
            v65 = v70(v69);
          }
        }

        else
        {
          sub_100022560(&v98, &qword_100099A00, &qword_100077540);
          v71 = type metadata accessor for Date();
          v65 = sub_1000223E8(v91, 1, 1, v71);
          v66 = 0;
          v67 = v92;
        }

        sub_100022A48(v65, "setDateModified:");

        v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10000D688(v72, v73);

        if (v99)
        {
          sub_1000227F4();
          v74 = sub_100022A30();
          if (v74)
          {
            String._bridgeToObjectiveC()();
            sub_100022B14();

            v75 = v88;
            goto LABEL_49;
          }
        }

        else
        {
          v74 = sub_100022560(&v98, &qword_100099A00, &qword_100077540);
        }

        v75 = v88;
        v66 = 0;
LABEL_49:
        sub_100022A48(v74, "setName:");

        sub_10004C55C(7103329, 0xE300000000000000, v75, &v98);
        if (v99)
        {
          sub_100013414(&qword_100099A28, &qword_100077570);
          sub_1000227F4();
          v76 = &type metadata for Any;
          v77 = swift_dynamicCast();
          if (v77)
          {
            Dictionary._bridgeToObjectiveC()();
            sub_100022B14();
            v75 = v88;

            goto LABEL_54;
          }
        }

        else
        {
          v77 = sub_100022560(&v98, &qword_100099A00, &qword_100077540);
        }

        v76 = 0;
LABEL_54:
        sub_100022A48(v77, "setAcl:");

        sub_10004C55C(0x6C65646F6DLL, 0xE500000000000000, v75, &v98);
        if (v99)
        {
          sub_1000227F4();
          v78 = sub_100022A30();
          if (v78)
          {
            String._bridgeToObjectiveC()();
            sub_100022B14();
            v75 = v88;

            goto LABEL_59;
          }
        }

        else
        {
          v78 = sub_100022560(&v98, &qword_100099A00, &qword_100077540);
        }

        v76 = 0;
LABEL_59:
        sub_100022A48(v78, "setModel:");

        sub_10004C55C(1868983913, 0xE400000000000000, v75, &v98);

        if (v99)
        {
          sub_100013414(&qword_100099A28, &qword_100077570);
          sub_1000227F4();
          v79 = &type metadata for Any;
          v80 = swift_dynamicCast();
          if (v80)
          {
            Dictionary._bridgeToObjectiveC()();
            sub_100022B14();

LABEL_64:
            sub_100022A48(v80, "setInfo:");

            v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            sub_10000D688(v81, v82);

            if (v99)
            {
              v83 = type metadata accessor for Date();
              v84 = swift_dynamicCast() ^ 1;
              v85 = v67;
              v86 = v83;
            }

            else
            {
              sub_100022560(&v98, &qword_100099A00, &qword_100077540);
              v86 = type metadata accessor for Date();
              v85 = v67;
              v84 = 1;
            }

            sub_1000223E8(v85, v84, 1, v86);
            v87 = v93;
            CUPairedPeer.initialPairingTime.setter();
            sub_10000DF50(v87, v94);
            sub_10000DF50(v89, *(&v89 + 1));
            sub_10000DF50(v59, v95);
            swift_unknownObjectRelease();
            goto LABEL_16;
          }
        }

        else
        {
          v80 = sub_100022560(&v98, &qword_100099A00, &qword_100077540);
        }

        v79 = 0;
        goto LABEL_64;
      }
    }

    sub_100021650(v31);

    v54 = *(&v89 + 1);
    goto LABEL_70;
  }

  __break(1u);
}

uint64_t sub_10001FE84()
{
  sub_1000215B4();
  if (!v0)
  {
    v1 = sub_10001C2A4();
    sub_1000229A0();
    CUPairingIdentity.authTag(for:type:)();
  }

  return sub_10000D048();
}

void sub_10001FF08(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, unint64_t, void), uint64_t a4)
{
  sub_10000E228(a1, a2);

  v7 = sub_1000228C0();

  sub_10001AEE4(v7, v8, a2, a3, a4);
}

uint64_t sub_10001FF70(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t, uint64_t))
{
  if (a2)
  {
    swift_errorRetain();
    v7 = 0;
    v8 = 1;
  }

  else
  {
    a1 = CUPairingIdentity.authTag(for:type:)();
    v7 = v9;
    v8 = 0;
  }

  a5(a1, v7, v8);

  return sub_10000ED08(a1, v7, v8);
}

void sub_100020028()
{
  sub_10001E884();
  if (!v0)
  {
    sub_10000CBB8(v1);
    sub_100022ABC();
  }
}

uint64_t sub_100020070(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  swift_beginAccess();

  sub_100053F40();
  v7 = *(*(v3 + 16) + 16);
  sub_1000540C8(v7);
  v8 = *(v3 + 16);
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 16 * v7;
  *(v9 + 32) = sub_100022670;
  *(v9 + 40) = v6;
  *(v3 + 16) = v8;
  return swift_endAccess();
}

void sub_10002012C()
{
  sub_10000D600();
  v3 = v2;
  v4 = type metadata accessor for RemotePairingError();
  v5 = sub_10000CBBC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000CBDC();
  v12 = v11 - v10;
  v13 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  sub_10000D368(v13);
  v15 = *(v14 + 64);
  sub_10000D8B0();
  __chkstk_darwin(v16);
  v18 = &v62 - v17;
  sub_1000215B4();
  if (v1)
  {
    goto LABEL_19;
  }

  v64 = v0;
  v65 = v12;
  v66 = v7;
  v67 = v4;
  v19 = type metadata accessor for UUID();
  v63 = sub_100022484(v3, 1, v19);
  sub_100013414(&qword_100099A08, &qword_100077548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000773B0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v21;
  type metadata accessor for CFString(0);
  *(inited + 72) = v22;
  *(inited + 48) = kSecClassGenericPassword;
  if (kSecUseSystemKeychain)
  {
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v23;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 96) = 1;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v24;
    sub_100022988();
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = 0xD00000000000001ALL;
    *(inited + 152) = v25;
    v26 = kSecClassGenericPassword;
    v27 = Dictionary.init(dictionaryLiteral:)();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000225B8(v3, v18);
    if (sub_100022484(v18, 1, v19) == 1)
    {
      sub_100022560(v18, &qword_1000999E8, &unk_100077D60);
      v28 = sub_10002297C();
      v30 = sub_10004FEF0(v28, v29);
      if (v31)
      {
        v32 = v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v68[0] = v27;
        v34 = *(v27 + 24);
        sub_100013414(&qword_10009B0C0, &unk_100077550);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v34);
        v35 = *&v68[0];
        v36 = *(*(*&v68[0] + 48) + 16 * v32 + 8);

        sub_10000E8A4((*(v35 + 56) + 32 * v32), &v69);
        _NativeDictionary._delete(at:)();
      }

      else
      {
        v70 = 0u;
        v69 = 0u;
      }

      sub_100022560(&v69, &qword_100099A00, &qword_100077540);
    }

    else
    {
      v37 = UUID.uuidString.getter();
      *(&v70 + 1) = &type metadata for String;
      *&v69 = v37;
      *(&v69 + 1) = v38;
      (*(*(v19 - 8) + 8))(v18, v19);
      sub_10000E8A4(&v69, v68);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100022AC8();
      sub_100068B8C();
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v70 + 1) = &type metadata for String;
    *&v69 = 0xD000000000000017;
    *(&v69 + 1) = 0x800000010007CF00;
    sub_10000E8A4(&v69, v68);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100022AC8();
    sub_100068B8C();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v40 = SecItemDelete(isa);

    v41 = v67;
    v42 = v66;
    v43 = v65;
    v44 = v64;
    if (!v40)
    {
      goto LABEL_12;
    }

    if (v40 == -25300)
    {
      if (v63 == 1)
      {
LABEL_12:
        swift_beginAccess();
        v45 = *(v44 + 16);
        v46 = *(v45 + 16);
        if (v46)
        {
          v47 = *(v44 + 16);

          v48 = (v45 + 40);
          do
          {
            v50 = *(v48 - 1);
            v49 = *v48;
            LOBYTE(v68[0]) = 1;

            v50(v68);

            v48 += 2;
            --v46;
          }

          while (v46);
        }

        goto LABEL_19;
      }

      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v57;
      v58 = objc_allocWithZone(NSError);
      v55 = sub_1000228D8(v56, v51, -25300);
      static RemotePairingError.pairingRecordNotFound.getter();
    }

    else
    {
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = objc_allocWithZone(NSError);
      v53 = sub_10000D048();
      v55 = sub_1000228D8(v53, v54, v40);
      static RemotePairingError.pairingRecordRemovalFailed.getter();
    }

    sub_10000EE10();
    sub_100022628(v59, v51);
    sub_1000229C4();
    sub_10000D294();
    sub_100022628(v60, v51);
    v61 = v55;
    _Error.wrapping(_:)();

    (*(v42 + 8))(v43, v41);
    swift_willThrow();

LABEL_19:
    sub_100016010();
    return;
  }

  __break(1u);
}

void sub_1000207B0()
{
  v4 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  v5 = sub_10000D368(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10000EDF0();
  v141 = v8 - v9;
  sub_100022894();
  __chkstk_darwin(v10);
  v139 = &v129 - v11;
  sub_100022894();
  __chkstk_darwin(v12);
  v140 = &v129 - v13;
  sub_100022894();
  __chkstk_darwin(v14);
  v137 = &v129 - v15;
  sub_100022894();
  __chkstk_darwin(v16);
  v136 = &v129 - v17;
  v18 = sub_100013414(&unk_10009A8C0, &unk_100077D50);
  v19 = sub_10000D368(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  sub_10000EDF0();
  v146 = v22 - v23;
  sub_100022894();
  __chkstk_darwin(v24);
  v145 = &v129 - v25;
  v26 = type metadata accessor for Date();
  v143 = sub_10000CBBC(v26);
  v144 = v27;
  v29 = *(v28 + 64);
  __chkstk_darwin(v143);
  sub_10000EDF0();
  sub_100022930();
  v31 = __chkstk_darwin(v30);
  v33 = &v129 - v32;
  __chkstk_darwin(v31);
  sub_10002284C();
  v34 = type metadata accessor for UUID();
  v35 = sub_10000CBBC(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  __chkstk_darwin(v35);
  sub_10000EDF0();
  v42 = v40 - v41;
  __chkstk_darwin(v43);
  v45 = &v129 - v44;
  v156 = v0;
  sub_1000215B4();
  if (v1)
  {
    v158 = v1;
  }

  else
  {
    v134 = v37;
    v133 = v42;
    v157 = v45;
    v148 = v33;
    v135 = v2;
    v142 = v3;
    v155 = v34;
    static os_log_type_t.default.getter();
    v46 = qword_10009CED0;
    os_log(_:dso:log:_:_:)();
    sub_10001E884();
    v158 = 0;
    v48 = v47;
    v153 = v46;
    v49 = sub_10004997C(v47);
    v50 = 0;
    v151 = v48 & 0xC000000000000001;
    v152 = v49;
    v150 = v48 & 0xFFFFFFFFFFFFFF8;
    v138 = (v144 + 32);
    v147 = (v144 + 8);
    v154 = (v134 + 8);
    v132 = (v144 + 16);
    v134 += 16;
    *&v51 = 136315138;
    v131 = v51;
    *&v51 = 136315394;
    v129 = v51;
    v52 = v145;
    v53 = v155;
    v54 = v142;
    v55 = v143;
    v56 = v148;
    v149 = v48;
    while (1)
    {
      if (v152 == v50)
      {

        return;
      }

      if (v151)
      {
        sub_1000227B0();
        v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v50 >= *(v150 + 16))
        {
          goto LABEL_41;
        }

        v57 = *(v48 + 8 * v50 + 32);
      }

      v58 = v57;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      v59 = [v57 identifier];
      if (!v59)
      {
        goto LABEL_42;
      }

      v60 = v59;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10006A564(v52);
      if (sub_100022484(v52, 1, v55) == 1)
      {
        sub_100022560(v52, &unk_10009A8C0, &unk_100077D50);
        v61 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v153, v61))
        {
          sub_10000D054();
          v62 = swift_slowAlloc();
          sub_10000CCCC();
          v63 = swift_slowAlloc();
          v161[0] = v63;
          *v62 = v131;
          v64 = [v58 identifier];
          if (v64)
          {
            v65 = v64;
            v66 = v141;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v67 = 0;
          }

          else
          {
            v67 = 1;
            v66 = v141;
          }

          v83 = v155;
          sub_1000223E8(v66, v67, 1, v155);
          v84 = v139;
          sub_1000224F0(v66, v139);
          if (sub_100022484(v84, 1, v83))
          {
            sub_100022560(v84, &qword_1000999E8, &unk_100077D60);
            v85 = 0;
            v86 = 0;
          }

          else
          {
            sub_1000228F0();
            v87 = v133;
            v88(v133, v84, v83);
            sub_100022560(v84, &qword_1000999E8, &unk_100077D60);
            v85 = UUID.uuidString.getter();
            v86 = v89;
            sub_100022B08();
            v90(v87, v83);
          }

          v55 = v143;
          v159 = v85;
          v160 = v86;
          sub_100013414(&qword_100099A10, &unk_100077560);
          v91 = String.init<A>(describing:)();
          v93 = sub_10000C600(v91, v92, v161);

          *(v62 + 4) = v93;
          _os_log_impl(&_mh_execute_header, v153, v61, "Found old peer %s without last used date set. Setting last used date to now.", v62, 0xCu);
          sub_10000CADC(v63);
          sub_100015FBC();

          sub_100015FBC();

          v52 = v145;
          v54 = v142;
          v56 = v148;
        }

        v94 = v146;
        Date.init()();
        sub_100022A9C();
        sub_1000223E8(v95, v96, v97, v55);
        sub_10006A420(v94);
        v98 = v158;
        sub_10001D85C();
        v158 = v98;
        if (v98)
        {
          (*v154)(v157, v155);

          return;
        }

        v53 = v155;
        (*v154)(v157, v155);
      }

      else
      {
        v68 = *v138;
        v69 = sub_10001ADC8();
        v70(v69);
        Date.init()();
        Date.distance(to:)();
        v72 = v71;
        v73 = *v147;
        (*v147)(v56, v55);
        sub_1000224AC();
        if (sub_10006A5CC() >= v72)
        {

          v73(v54, v55);
          sub_100022B08();
          v82(v157, v53);
        }

        else
        {
          v144 = v73;
          v74 = static os_log_type_t.default.getter();
          v75 = v135;
          (*v132)(v135, v54, v55);
          if (os_log_type_enabled(v153, v74))
          {
            v76 = swift_slowAlloc();
            v130 = swift_slowAlloc();
            v161[0] = v130;
            *v76 = v129;
            v77 = [v58 identifier];
            if (v77)
            {
              v78 = v77;
              v79 = v137;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v80 = v79;
              v53 = v155;
              v81 = 0;
            }

            else
            {
              v81 = 1;
              v80 = v137;
            }

            v99 = v133;
            sub_1000223E8(v80, v81, 1, v53);
            v100 = v80;
            v101 = v136;
            sub_1000224F0(v100, v136);
            if (sub_100022484(v101, 1, v53))
            {
              sub_100022560(v101, &qword_1000999E8, &unk_100077D60);
              v102 = 0;
              v103 = 0;
            }

            else
            {
              sub_1000228F0();
              v104(v99, v101, v53);
              sub_100022560(v101, &qword_1000999E8, &unk_100077D60);
              v102 = UUID.uuidString.getter();
              v105 = v53;
              v103 = v106;
              (*v154)(v99, v105);
            }

            v159 = v102;
            v160 = v103;
            sub_100013414(&qword_100099A10, &unk_100077560);
            v107 = String.init<A>(describing:)();
            v109 = sub_10000C600(v107, v108, v161);

            *(v76 + 4) = v109;
            *(v76 + 12) = 2080;
            sub_100022628(&qword_100099A18, &type metadata accessor for Date);
            dispatch thunk of CustomStringConvertible.description.getter();
            sub_100022B20();
            sub_100022920();
            v110();
            v111 = sub_1000228C0();
            v114 = sub_10000C600(v111, v112, v113);

            *(v76 + 14) = v114;
            _os_log_impl(&_mh_execute_header, v153, v74, "Found expired peer %s with last used date %s. Removing.", v76, 0x16u);
            swift_arrayDestroy();
            sub_100015FBC();

            sub_100015FBC();

            v52 = v145;
          }

          else
          {
            (v144)(v75, v55);
          }

          v115 = v157;
          sub_1000228F0();
          v116 = v140;
          v117 = sub_1000228CC();
          v118 = v155;
          v119(v117);
          sub_100022A9C();
          sub_1000223E8(v120, v121, v122, v118);
          v123 = v158;
          sub_10002012C();
          v158 = v123;
          if (v123)
          {

            sub_100022560(v116, &qword_1000999E8, &unk_100077D60);
            sub_100022920();
            v127();
            sub_100022B08();
            v128(v115, v118);
            return;
          }

          sub_100022560(v116, &qword_1000999E8, &unk_100077D60);
          v124 = v142;
          sub_100022920();
          v125();
          sub_100022B08();
          v126(v115, v118);
          v53 = v118;
          v54 = v124;
        }

        v56 = v148;
      }

      v48 = v149;
      ++v50;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}