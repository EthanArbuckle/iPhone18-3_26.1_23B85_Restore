uint64_t Connection.rekey(key:)(uint64_t a1, unint64_t a2)
{

  sub_100017D5C(a1, a2);
  v6 = sub_1008D2180(a1, a2, v2, a1, a2, &sqlite3_rekey_v2, &sqlite3_rekey_v2);
  sub_100016590(a1, a2);
  Connection.scalar(_:_:)();
  if (!v3)
  {
    sub_10000B3A8(v8, &qword_1016AD370, &qword_1013C3B68);
  }

  return v6;
}

uint64_t sub_1008D1AEC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B590);
  sub_1000076D4(v0, qword_10177B590);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1008D1BDC(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1000136BC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_1008D1C38(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_101699368, &unk_1013B34B0);
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

_BYTE **sub_1008D1D2C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1008D1D3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLResourceValues();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v29 - v15;
  __chkstk_darwin(v14);
  v18 = &v29 - v17;
  v19 = [objc_opt_self() defaultManager];
  (*(a2 + 72))(v18, v16, v13, a1, a2);
  URLResourceValues.init()();
  URLResourceValues.isExcludedFromBackup.setter();
  URL.path.getter();
  v20 = String._bridgeToObjectiveC()();

  LODWORD(a1) = [v19 fileExistsAtPath:v20];

  if (a1)
  {
    v21 = v31;
    URL.setResourceValues(_:)();
    if (v21)
    {
      goto LABEL_9;
    }

    v31 = 0;
  }

  URL.path.getter();
  v22 = String._bridgeToObjectiveC()();

  v23 = [v19 fileExistsAtPath:v22];

  if (v23)
  {
    v24 = v31;
    URL.setResourceValues(_:)();
    if (v24)
    {
      goto LABEL_9;
    }

    v31 = 0;
  }

  URL.path.getter();
  v25 = String._bridgeToObjectiveC()();

  v26 = [v19 fileExistsAtPath:v25];

  if (v26)
  {
    URL.setResourceValues(_:)();
  }

LABEL_9:

  (*(v29 + 8))(v7, v30);
  v27 = *(v9 + 8);
  v27(v13, v8);
  v27(v16, v8);
  return (v27)(v18, v8);
}

uint64_t sub_1008D2080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t, const char *, uint64_t, uint64_t))
{
  v10 = __DataStorage._bytes.getter();
  if (v10)
  {
    v11 = v10;
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v13 = a1 - result + v11;
  }

  else
  {
    v13 = 0;
  }

  __DataStorage._length.getter();
  result = Connection.handle.getter();
  v14 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (!v14)
    {
      v15 = BYTE6(a5);
      return a6(result, "main", v13, v15);
    }

    goto LABEL_13;
  }

  if (v14 != 2)
  {
LABEL_16:
    v15 = 0;
    return a6(result, "main", v13, v15);
  }

  v17 = *(a4 + 16);
  v16 = *(a4 + 24);
  v15 = v16 - v17;
  if (!__OFSUB__(v16, v17))
  {
    if (v15 >= 0xFFFFFFFF80000000)
    {
      if (v15 <= 0x7FFFFFFF)
      {
        return a6(result, "main", v13, v15);
      }

      __break(1u);
LABEL_13:
      v15 = (HIDWORD(a4) - a4);
      if (!__OFSUB__(HIDWORD(a4), a4))
      {
        return a6(result, "main", v13, v15);
      }

      __break(1u);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1008D2180(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t, const char *, uint64_t, uint64_t), uint64_t (*a7)(uint64_t, const char *, void *, uint64_t))
{
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    goto LABEL_8;
  }

  if (v10)
  {
    if (a1 <= a1 >> 32)
    {
      v13 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = a1;
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_33;
  }

  v11 = a4;
  v21[0] = a1;
  LOWORD(v21[1]) = a2;
  BYTE2(v21[1]) = BYTE2(a2);
  BYTE3(v21[1]) = BYTE3(a2);
  BYTE4(v21[1]) = BYTE4(a2);
  BYTE5(v21[1]) = BYTE5(a2);
  a1 = Connection.handle.getter();
  v12 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v12 != 2)
    {
LABEL_29:
      a4 = 0;
      goto LABEL_30;
    }

    v17 = *(v11 + 16);
    v16 = *(v11 + 24);
    a4 = v16 - v17;
    if (__OFSUB__(v16, v17))
    {
      goto LABEL_35;
    }

    if (a4 >= 0xFFFFFFFF80000000)
    {
      LODWORD(v15) = 0x7FFFFFFF;
      if (a4 <= 0x7FFFFFFF)
      {
        goto LABEL_30;
      }

      __break(1u);
LABEL_21:
      a4 = 0;
      if (v15 != 2)
      {
        goto LABEL_30;
      }

      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      a4 = v18 - v19;
      if (__OFSUB__(v18, v19))
      {
LABEL_36:
        __break(1u);
      }

      if (a4 >= 0xFFFFFFFF80000000)
      {
        if (a4 <= 0x7FFFFFFF)
        {
          goto LABEL_30;
        }

        __break(1u);
LABEL_26:
        a4 = (HIDWORD(v11) - v11);
        if (!__OFSUB__(HIDWORD(v11), v11))
        {
          goto LABEL_30;
        }

        __break(1u);
        goto LABEL_29;
      }

      goto LABEL_34;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (!v12)
  {
LABEL_15:
    a4 = BYTE6(a5);
LABEL_30:
    v14 = a7(a1, "main", v21, a4);

    return v14;
  }

  v10 = HIDWORD(v11);
  a4 = (HIDWORD(v11) - v11);
  if (!__OFSUB__(HIDWORD(v11), v11))
  {
    goto LABEL_30;
  }

  __break(1u);
LABEL_8:
  if (v10 != 2)
  {
    v11 = a4;
    memset(v21, 0, 14);
    a1 = Connection.handle.getter();
    v15 = a5 >> 62;
    if ((a5 >> 62) <= 1)
    {
      if (!v15)
      {
        goto LABEL_15;
      }

      goto LABEL_26;
    }

    goto LABEL_21;
  }

  a1 = *(a1 + 16);
  v13 = a2 & 0x3FFFFFFFFFFFFFFFLL;
LABEL_12:
  v14 = sub_1008D2080(a1, v13, a3, a4, a5, a6);

  return v14;
}

unint64_t sub_1008D23C4()
{
  result = qword_1016AD380;
  if (!qword_1016AD380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD380);
  }

  return result;
}

unint64_t sub_1008D241C()
{
  result = qword_1016AD388;
  if (!qword_1016AD388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD388);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DatabaseError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1008D24DC(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008D24F8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_1008D2528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008D2598()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(type metadata accessor for Logger() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_1008D1430(v6, v0 + v5, v2, v3);
}

uint64_t sub_1008D26E0()
{
  v1 = v0[2];
  swift_defaultActor_initialize();
  v1[14] = 0xD00000000000001ALL;
  v1[15] = 0x80000001013C3D10;
  v1[18] = _swiftEmptyDictionarySingleton;
  v2 = sub_1000BC4D4(&unk_1016AD690, &qword_1013C4058);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v1[19] = AsyncStreamProvider.init()();
  v5 = [objc_opt_self() sharedInstance];
  v0[3] = v5;
  if (v5)
  {
    v6 = v0[2];
    *(v6 + 128) = v5;
    v7 = v5;
    v8 = objc_allocWithZone(type metadata accessor for AccessoryDelegateTrampoline());
    v9 = v7;
    *(v6 + 136) = [v8 init];

    return _swift_task_switch(sub_1008D2930, v6, 0);
  }

  else
  {
    if (qword_101694A40 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177B5A8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "ACCConnectionInfo.sharedInstance() returned nil!", v13, 2u);
    }

    v14 = v0[2];

    v15 = v1[15];

    v16 = v1[18];

    v17 = v1[19];

    type metadata accessor for AccessoryConnectionService();
    swift_defaultActor_destroy();
    swift_deallocPartialClassInstance();
    v18 = v0[1];

    return v18(0);
  }
}

uint64_t sub_1008D2930()
{
  v1 = *(v0 + 16);

  v2 = *(v1 + 136);
  swift_weakAssign();
  v3 = *(v0 + 16);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1008D29AC@<X0>(uint64_t a1@<X8>)
{
  v52[1] = a1;
  v2 = type metadata accessor for AccessoryConnectionService.Event();
  v65 = *(v2 - 8);
  v66 = v2;
  v3 = *(v65 + 64);
  __chkstk_darwin(v2);
  v75 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016AD630, &qword_1013C3FD0);
  v63 = *(v5 - 8);
  v64 = v5;
  v6 = *(v63 + 64);
  __chkstk_darwin(v5);
  v62 = v52 - v7;
  v8 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v74 = v52 - v10;
  v73 = type metadata accessor for UUID();
  v11 = *(v73 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v73);
  v72 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1000BC4D4(&qword_1016AD688, &qword_1013C4048);
  v14 = *(*(v60 - 8) + 64);
  v15 = __chkstk_darwin(v60);
  v59 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v52 - v17;
  swift_beginAccess();
  v52[0] = v1;
  v19 = *(v1 + 144);
  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;
  v55 = v11 + 16;
  v54 = v11 + 32;
  v61 = v11;
  v53 = (v11 + 8);
  v67 = v19;
  result = swift_bridgeObjectRetain_n();
  v26 = 0;
  v27 = _swiftEmptyArrayStorage;
  v57 = v20;
  v56 = v24;
  for (i = v18; v23; v24 = v56)
  {
    v71 = v27;
LABEL_9:
    v29 = __clz(__rbit64(v23)) | (v26 << 6);
    v30 = v67;
    v31 = v61;
    v32 = *(v67 + 48) + *(v61 + 72) * v29;
    v70 = *(v61 + 16);
    v33 = v73;
    v70(v18, v32, v73);
    v34 = *(v30 + 56) + *(v63 + 72) * v29;
    v35 = v60;
    sub_1000D2A70(v34, &v18[*(v60 + 48)], &qword_1016AD630, &qword_1013C3FD0);
    v36 = v18;
    v37 = v59;
    sub_1000D2A70(v36, v59, &qword_1016AD688, &qword_1013C4048);
    v38 = (v37 + *(v35 + 48));
    v39 = v38[1];
    v68 = *v38;
    v69 = v39;
    v40 = *(v64 + 64);
    v41 = v62;
    sub_1000E18CC(&v38[v40], &v62[v40]);
    v42 = v72;
    (*(v31 + 32))(v72, v37, v33);
    v43 = v74;
    sub_1000E18CC(&v41[v40], v74);
    v44 = sub_1000BC4D4(&qword_1016AD680, &qword_1013C4040);
    v45 = v44[12];
    v46 = v44[16];
    v47 = v44[20];
    v48 = v75;
    v70(v75, v42, v33);
    *(v48 + v45) = v68;
    sub_1000D2A70(v43, v48 + v46, &qword_1016A40D0, &unk_10138BE70);
    *(v48 + v47) = v69;
    swift_storeEnumTagMultiPayload();
    v27 = v71;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_100A5E250(0, v27[2] + 1, 1, v27);
    }

    v50 = v27[2];
    v49 = v27[3];
    v20 = v57;
    v18 = i;
    if (v50 >= v49 >> 1)
    {
      v27 = sub_100A5E250(v49 > 1, v50 + 1, 1, v27);
    }

    v23 &= v23 - 1;
    sub_10000B3A8(v74, &qword_1016A40D0, &unk_10138BE70);
    (*v53)(v72, v73);
    sub_10000B3A8(v18, &qword_1016AD688, &qword_1013C4048);
    v27[2] = v50 + 1;
    result = sub_1008D8340(v75, v27 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v50);
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v24)
    {

      v51 = *(v52[0] + 152);
      AsyncStreamProvider.stream(initialEvents:)();
    }

    v23 = *(v20 + 8 * v28);
    ++v26;
    if (v23)
    {
      v71 = v27;
      v26 = v28;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1008D2FBC()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 144);

  v3 = *(v0 + 152);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1008D3038(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for AccessoryConnectionService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_1008D30E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AccessoryConnectionService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_1008D31A4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for AccessoryConnectionService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_1008D326C()
{
  [*(*(v0 + 16) + 128) registerDelegate:*(*(v0 + 16) + 136)];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008D32DC(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for AccessoryConnectionService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_1008D3384()
{
  v1 = *v0;
  type metadata accessor for AccessoryConnectionService();
  sub_1008D7F84(&unk_1016AD620, v2, type metadata accessor for AccessoryConnectionService);
  return ActorServiceProtocol.description.getter();
}

Swift::Int sub_1008D3410()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_1013C4064[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1008D3498()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_1013C4064[v1]);
  return Hasher._finalize()();
}

uint64_t sub_1008D34E4@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1008D69BC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1008D3528()
{
  v1 = 0x6E776F6E6B6E752ELL;
  v2 = 0x6465737361702ELL;
  if (*v0 != 2)
  {
    v2 = 0x74756F656D69742ELL;
  }

  if (*v0)
  {
    v1 = 0x64656C6961662ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1008D35A4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B5C0);
  sub_1000076D4(v0, qword_10177B5C0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1008D3624(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_1016998D8, &qword_101392028);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  v15 = type metadata accessor for AccessoryConnectionService.Event();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v8;
  v19 = *(v8 + 16);
  v19(v18, a1, v7);
  v35 = v18;
  swift_storeEnumTagMultiPayload();
  v19(v14, a1, v7);
  v20 = sub_1000BC4D4(&qword_1016AD630, &qword_1013C3FD0);
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  swift_beginAccess();
  v36 = v1;
  sub_1001E01B8(v6, v14);
  swift_endAccess();
  if (qword_101694A40 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177B5A8);
  v19(v12, a1, v7);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v37 = v25;
    *v24 = 136446210;
    sub_1008D7F84(&qword_101696930, 255, &type metadata accessor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v34 + 8))(v12, v7);
    v29 = sub_1000136BC(v26, v28, &v37);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "Accessory detached: %{public}s", v24, 0xCu);
    sub_100007BAC(v25);
  }

  else
  {

    (*(v34 + 8))(v12, v7);
  }

  v30 = type metadata accessor for Transaction();
  __chkstk_darwin(v30);
  v31 = v35;
  *(&v33 - 2) = v36;
  *(&v33 - 1) = v31;
  static Transaction.named<A>(_:with:)();
  return sub_1008D7F28(v31);
}

uint64_t sub_1008D3A94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v131 = a1;
  v5 = type metadata accessor for MACAddress();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v116 - v11;
  v125 = type metadata accessor for AccessoryConnectionService.Event();
  v13 = *(*(v125 - 8) + 64);
  __chkstk_darwin(v125);
  v128 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&qword_1016998D8, &qword_101392028);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v122 = &v116 - v17;
  v18 = type metadata accessor for UUID();
  v129 = *(v18 - 8);
  v130 = v18;
  v19 = *(v129 + 64);
  v20 = __chkstk_darwin(v18);
  v119 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v116 - v23;
  __chkstk_darwin(v22);
  v118 = &v116 - v25;
  v117 = sub_1000BC4D4(&qword_1016AD630, &qword_1013C3FD0);
  v116 = *(v117 - 8);
  v26 = *(v116 + 64);
  __chkstk_darwin(v117);
  v28 = &v116 - v27;
  v29 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v124 = &v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v35 = &v116 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v116 - v37;
  __chkstk_darwin(v36);
  v132 = &v116 - v39;
  v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v134 = v40;
  AnyHashable.init<A>(_:)();
  v41 = *(a2 + 16);
  v127 = v6;
  v121 = v10;
  v120 = v24;
  if (!v41 || (v42 = sub_100771E5C(&v135), (v43 & 1) == 0))
  {
    sub_100476E48(&v135);
LABEL_6:
    v45 = 0;
    v46 = 1;
    goto LABEL_7;
  }

  sub_100013894(*(a2 + 56) + 32 * v42, v137);
  sub_100476E48(&v135);
  sub_1000BC4D4(&qword_1016A0B00, &unk_1013A48B0);
  sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
  if (!swift_dynamicCast())
  {
    v6 = v127;
    goto LABEL_6;
  }

  v44 = v133;
  v135 = 0;
  v136 = 1;
  static Int._conditionallyBridgeFromObjectiveC(_:result:)();

  v45 = v135;
  v46 = v136;
  v6 = v127;
LABEL_7:
  v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v134 = v47;
  AnyHashable.init<A>(_:)();
  v48 = *(a2 + 16);
  v126 = v3;
  if (!v48 || (v49 = sub_100771E5C(&v135), (v50 & 1) == 0))
  {
    sub_100476E48(&v135);
    goto LABEL_14;
  }

  sub_100013894(*(a2 + 56) + 32 * v49, v137);
  sub_100476E48(&v135);
  sub_1000BC4D4(&qword_1016A0B00, &unk_1013A48B0);
  sub_100008BB8(0, &qword_1016AD648, NSData_ptr);
  if (!swift_dynamicCast())
  {
LABEL_14:
    v52 = 1;
    goto LABEL_15;
  }

  v51 = v133;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  MACAddress.init(data:type:)();
  v6 = v127;
  if ((*(v127 + 48))(v38, 1, v5) == 1)
  {
    sub_10000B3A8(v38, &qword_1016A40D0, &unk_10138BE70);
    v52 = 1;
  }

  else
  {
    (*(v6 + 32))(v132, v38, v5);
    v52 = 0;
  }

  v3 = v126;
LABEL_15:
  result = (*(v6 + 56))(v132, v52, 1, v5);
  v123 = v12;
  v54 = v131;
  if (v46)
  {
    v55 = 0;
    LODWORD(v45) = 0;
    goto LABEL_22;
  }

  if ((v45 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_58;
  }

  if (!HIDWORD(v45))
  {
    if ((v45 - 1) > 2)
    {
      v55 = 0;
    }

    else
    {
      v55 = v45;
    }

LABEL_22:
    v56 = v5;
    swift_beginAccess();
    v57 = *(v3 + 144);
    if (*(v57 + 16))
    {
      v58 = *(v3 + 144);

      v59 = sub_1000210EC(v54);
      if (v60)
      {
        v61 = v116;
        sub_1000D2A70(*(v57 + 56) + *(v116 + 72) * v59, v28, &qword_1016AD630, &qword_1013C3FD0);

        v62 = *v28;
        v63 = v117;
        sub_1000E18CC(&v28[*(v117 + 64)], v35);
        v64 = v118;
        (*(v129 + 16))(v118, v54, v130);
        v65 = *(v63 + 64);
        v66 = v122;
        *v122 = v62;
        *(v66 + 1) = v55;
        sub_1000D2A70(v35, v66 + v65, &qword_1016A40D0, &unk_10138BE70);
        (*(v61 + 56))(v66, 0, 1, v63);
        swift_beginAccess();
        sub_1001E01B8(v66, v64);
        swift_endAccess();
        v54 = v131;
        sub_10000B3A8(v35, &qword_1016A40D0, &unk_10138BE70);
      }

      else
      {
      }
    }

    LODWORD(v122) = v55;
    v67 = sub_1000BC4D4(&unk_1016AD638, &qword_1013C3FD8);
    v68 = *(v67 + 48);
    v69 = v128;
    v3 = *(v129 + 16);
    (v3)(v128, v54, v130);
    v70 = &v69[v68];
    v71 = v132;
    sub_1000D2A70(v132, v70, &qword_1016A40D0, &unk_10138BE70);
    if (v45 >= 4)
    {
      v72 = 0;
    }

    else
    {
      v72 = v45;
    }

    v69[*(v67 + 64)] = v72;
    swift_storeEnumTagMultiPayload();
    v73 = v124;
    sub_1000D2A70(v71, v124, &qword_1016A40D0, &unk_10138BE70);
    v74 = v127;
    v75 = v56;
    if ((*(v127 + 48))(v73, 1, v56) != 1)
    {
      v92 = v123;
      (*(v74 + 32))(v123, v73, v56);
      if (qword_101694A40 != -1)
      {
        swift_once();
      }

      v93 = type metadata accessor for Logger();
      sub_1000076D4(v93, qword_10177B5A8);
      v94 = v120;
      v95 = v130;
      (v3)(v120, v131, v130);
      v96 = v121;
      (*(v74 + 16))(v121, v92, v75);
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v137[0] = swift_slowAlloc();
        *v99 = 136446722;
        sub_1008D7F84(&qword_101696930, 255, &type metadata accessor for UUID);
        v100 = dispatch thunk of CustomStringConvertible.description.getter();
        v102 = v101;
        (*(v129 + 8))(v94, v95);
        v103 = sub_1000136BC(v100, v102, v137);

        *(v99 + 4) = v103;
        *(v99 + 12) = 2082;
        if (v122 > 1u)
        {
          if (v122 == 2)
          {
            v105 = 0xE700000000000000;
            v104 = 0x6465737361702ELL;
          }

          else
          {
            v105 = 0xE800000000000000;
            v104 = 0x74756F656D69742ELL;
          }
        }

        else if (v122)
        {
          v105 = 0xE700000000000000;
          v104 = 0x64656C6961662ELL;
        }

        else
        {
          v104 = 0x6E776F6E6B6E752ELL;
          v105 = 0xE800000000000000;
        }

        v89 = v126;
        v108 = sub_1000136BC(v104, v105, v137);

        *(v99 + 14) = v108;
        *(v99 + 22) = 2082;
        sub_1008D7F84(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
        v109 = dispatch thunk of CustomStringConvertible.description.getter();
        v111 = v110;
        v112 = *(v127 + 8);
        v112(v96, v75);
        v113 = sub_1000136BC(v109, v111, v137);

        *(v99 + 24) = v113;
        _os_log_impl(&_mh_execute_header, v97, v98, "Accessory property changed: %{public}s authStatus: %{public}s macAddress: %{public}s", v99, 0x20u);
        swift_arrayDestroy();

        v112(v123, v75);
        goto LABEL_56;
      }

      v106 = *(v74 + 8);
      v106(v96, v75);
      (*(v129 + 8))(v94, v95);
      v106(v92, v75);
      goto LABEL_43;
    }

    sub_10000B3A8(v73, &qword_1016A40D0, &unk_10138BE70);
    if (qword_101694A40 == -1)
    {
LABEL_31:
      v76 = type metadata accessor for Logger();
      sub_1000076D4(v76, qword_10177B5A8);
      v77 = v119;
      v78 = v130;
      (v3)(v119, v131, v130);
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.default.getter();
      v81 = os_log_type_enabled(v79, v80);
      v82 = v122;
      if (v81)
      {
        v83 = swift_slowAlloc();
        v137[0] = swift_slowAlloc();
        *v83 = 136446466;
        sub_1008D7F84(&qword_101696930, 255, &type metadata accessor for UUID);
        v84 = dispatch thunk of CustomStringConvertible.description.getter();
        v86 = v85;
        (*(v129 + 8))(v77, v78);
        v87 = sub_1000136BC(v84, v86, v137);

        *(v83 + 4) = v87;
        *(v83 + 12) = 2082;
        v88 = v82;
        v89 = v126;
        if (v88 > 1)
        {
          if (v88 == 2)
          {
            v91 = 0xE700000000000000;
            v90 = 0x6465737361702ELL;
          }

          else
          {
            v91 = 0xE800000000000000;
            v90 = 0x74756F656D69742ELL;
          }
        }

        else if (v88)
        {
          v91 = 0xE700000000000000;
          v90 = 0x64656C6961662ELL;
        }

        else
        {
          v90 = 0x6E776F6E6B6E752ELL;
          v91 = 0xE800000000000000;
        }

        v107 = sub_1000136BC(v90, v91, v137);

        *(v83 + 14) = v107;
        _os_log_impl(&_mh_execute_header, v79, v80, "Accessory attached: %{public}s authStatus: %{public}s macAddress: nil)", v83, 0x16u);
        swift_arrayDestroy();

        goto LABEL_56;
      }

      (*(v129 + 8))(v77, v78);
LABEL_43:
      v89 = v126;
LABEL_56:
      v114 = type metadata accessor for Transaction();
      __chkstk_darwin(v114);
      v115 = v128;
      *(&v116 - 2) = v89;
      *(&v116 - 1) = v115;
      static Transaction.named<A>(_:with:)();
      sub_10000B3A8(v132, &qword_1016A40D0, &unk_10138BE70);
      return sub_1008D7F28(v115);
    }

LABEL_58:
    swift_once();
    goto LABEL_31;
  }

  __break(1u);
  return result;
}

uint64_t sub_1008D49EC(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100044B3C(v3, a2);
  v4 = sub_1000076D4(v3, a2);
  if (qword_101694A48 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v3, qword_10177B5C0);
  v6 = *(*(v3 - 8) + 16);

  return v6(v4, v5, v3);
}

uint64_t sub_1008D4AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v32 = a5;
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v27 - v17;
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v30 = result;
      UUID.init(uuidString:)();
      if ((*(v13 + 48))(v11, 1, v12) == 1)
      {

        return sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
      }

      else
      {
        v20 = *(v13 + 32);
        v20(v18, v11, v12);
        v21 = sub_1008D6A44(a3);
        v22 = v32;
        if (v32)
        {
          v29 = v21;
          v31 = sub_1008D78EC(v31);
          v28 = sub_1008D78EC(v22);
          v32 = *(v5 + OBJC_IVAR____TtC12searchpartydP33_8DF307D51982B56654A13C398BADC9D727AccessoryDelegateTrampoline_workItemQueue);
          (*(v13 + 16))(v16, v18, v12);
          v23 = (*(v13 + 80) + 24) & ~*(v13 + 80);
          v24 = v23 + v14;
          v25 = (v23 + v14) & 0xFFFFFFFFFFFFFFF8;
          v27 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
          v26 = swift_allocObject();
          *(v26 + 16) = v30;
          v20((v26 + v23), v16, v12);
          *(v26 + v24) = v29;
          *(v26 + v25 + 8) = v31;
          *(v26 + v27) = v28;

          dispatch thunk of WorkItemQueue.enqueue(_:)();

          return (*(v13 + 8))(v18, v12);
        }

        else
        {
          (*(v13 + 8))(v18, v12);
        }
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1008D4E04(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 64) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return _swift_task_switch(sub_1008D4E2C, 0, 0);
}

uint64_t sub_1008D4E2C()
{
  v1 = *(v0 + 64);
  type metadata accessor for Transaction();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = async function pointer to static Transaction.named<A>(_:with:)[1];
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1008D4F28;

  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_1008D4F28()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 48);

    return _swift_task_switch(Database.await(state:), 0, 0);
  }
}

uint64_t sub_1008D5064(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 64) = a4;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  return _swift_task_switch(sub_1008D508C, 0, 0);
}

uint64_t sub_1008D508C()
{
  v1 = v0[5];
  v2 = v0[2];
  v0[6] = sub_10069586C(v0[4]);
  v0[7] = sub_10069586C(v1);

  return _swift_task_switch(sub_1008D5108, v2, 0);
}

uint64_t sub_1008D5108()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  sub_1008D6A54(*(v0 + 24), *(v0 + 64), *(v0 + 56));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1008D528C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v20 - v13;
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v16 = result;
      UUID.init(uuidString:)();
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {

        return sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
      }

      else
      {
        v21 = *(v9 + 32);
        v21(v14, v7, v8);
        v17 = *(v2 + OBJC_IVAR____TtC12searchpartydP33_8DF307D51982B56654A13C398BADC9D727AccessoryDelegateTrampoline_workItemQueue);
        (*(v9 + 16))(v12, v14, v8);
        v18 = (*(v9 + 80) + 24) & ~*(v9 + 80);
        v19 = swift_allocObject();
        *(v19 + 16) = v16;
        v21((v19 + v18), v12, v8);

        dispatch thunk of WorkItemQueue.enqueue(_:)();

        return (*(v9 + 8))(v14, v8);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1008D5550(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1008D5570, 0, 0);
}

uint64_t sub_1008D5570()
{
  type metadata accessor for Transaction();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = async function pointer to static Transaction.named<A>(_:with:)[1];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1008D5658;

  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_1008D5658()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 32);

    return _swift_task_switch(j___s12searchpartyd8DatabasePAAE5await5stateyAA0B5StateO_tYaKF, 0, 0);
  }
}

uint64_t sub_1008D5794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_1008D57B0, a2, 0);
}

uint64_t sub_1008D57B0()
{
  v1 = v0[2];
  sub_1008D3624(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1008D5888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v28 = result;
      UUID.init(uuidString:)();
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {

        return sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
      }

      else
      {
        v18 = *(v11 + 32);
        v18(v16, v9, v10);
        if (a3)
        {
          v19 = sub_1008D78EC(a3);
          v20 = *(v3 + OBJC_IVAR____TtC12searchpartydP33_8DF307D51982B56654A13C398BADC9D727AccessoryDelegateTrampoline_workItemQueue);
          v26 = v19;
          v27 = v20;
          (*(v11 + 16))(v14, v16, v10);
          v21 = (*(v11 + 80) + 24) & ~*(v11 + 80);
          v22 = v18;
          v23 = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
          v24 = swift_allocObject();
          *(v24 + 16) = v28;
          v22(v24 + v21, v14, v10);
          *(v24 + v23) = v26;

          dispatch thunk of WorkItemQueue.enqueue(_:)();

          return (*(v11 + 8))(v16, v10);
        }

        else
        {
          (*(v11 + 8))(v16, v10);
        }
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1008D5B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1008D5BC0, 0, 0);
}

uint64_t sub_1008D5BC0()
{
  v1 = *(v0 + 32);
  type metadata accessor for Transaction();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  v3 = async function pointer to static Transaction.named<A>(_:with:)[1];
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1008D5CB8;

  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_1008D5CB8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 40);

    return _swift_task_switch(j___s12searchpartyd8DatabasePAAE5await5stateyAA0B5StateO_tYaKF, 0, 0);
  }
}

uint64_t sub_1008D5DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return _swift_task_switch(sub_1008D5E18, 0, 0);
}

uint64_t sub_1008D5E18()
{
  v1 = v0[2];
  v0[5] = sub_10069586C(v0[4]);

  return _swift_task_switch(sub_1008D5E88, v1, 0);
}

uint64_t sub_1008D5E88()
{
  v1 = v0[2];
  sub_1008D3A94(v0[3], v0[5]);

  v2 = v0[1];

  return v2();
}

uint64_t type metadata accessor for AccessoryConnectionService.Event()
{
  result = qword_1016AD5A8;
  if (!qword_1016AD5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1008D61F4()
{
  sub_1008D627C(319);
  if (v0 <= 0x3F)
  {
    sub_1008D63B0();
    if (v1 <= 0x3F)
    {
      sub_1008D6438();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1008D627C(uint64_t a1)
{
  if (!qword_1016AD5B8)
  {
    __chkstk_darwin(a1);
    type metadata accessor for UUID();
    sub_1000BC580(&qword_1016A40D0, &unk_10138BE70);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1016AD5B8);
    }
  }
}

void sub_1008D63B0()
{
  if (!qword_1016AD5C8)
  {
    type metadata accessor for UUID();
    sub_1000BC580(&qword_1016A40D0, &unk_10138BE70);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1016AD5C8);
    }
  }
}

void sub_1008D6438()
{
  if (!qword_1016AD5D0)
  {
    v0 = type metadata accessor for UUID();
    if (!v1)
    {
      atomic_store(v0, &qword_1016AD5D0);
    }
  }
}

unint64_t sub_1008D64A4()
{
  result = qword_1016AD600;
  if (!qword_1016AD600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD600);
  }

  return result;
}

unint64_t sub_1008D64FC()
{
  result = qword_1016AD608;
  if (!qword_1016AD608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD608);
  }

  return result;
}

uint64_t sub_1008D65E0(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  sub_1000D2A70(a1 + 32, &v48, &unk_1016AD670, &unk_1013C3FF0);
  v8 = v48;
  v7 = v49;
  v46 = v48;
  v47 = v49;
  sub_1001E6224(v50, v45);
  v9 = *a3;
  v10 = sub_100771D58(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_100FECAA8(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_100771D58(v8, v7);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v21 = v10;
  sub_101008208();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v51 = v19;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_100007BAC(v45);
    }

    goto LABEL_26;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  sub_1001E6224(v45, (v22[7] + 32 * v10));
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v14)
  {
    v22[2] = v25;
    if (v4 == 1)
    {
    }

    v26 = a1 + 80;
    v27 = 1;
    while (v27 < *(a1 + 16))
    {
      sub_1000D2A70(v26, &v48, &unk_1016AD670, &unk_1013C3FF0);
      v29 = v48;
      v28 = v49;
      v46 = v48;
      v47 = v49;
      sub_1001E6224(v50, v45);
      v30 = *a3;
      v31 = sub_100771D58(v29, v28);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v14 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v14)
      {
        goto LABEL_23;
      }

      v36 = v32;
      if (v30[3] < v35)
      {
        sub_100FECAA8(v35, 1);
        v37 = *a3;
        v31 = sub_100771D58(v29, v28);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v40 = (v39[6] + 16 * v31);
      *v40 = v29;
      v40[1] = v28;
      sub_1001E6224(v45, (v39[7] + 32 * v31));
      v41 = v39[2];
      v14 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v27;
      v39[2] = v42;
      v26 += 48;
      if (v4 == v27)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  _StringGuts.grow(_:)(30);
  v43._object = 0x8000000101360AB0;
  v43._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v43);
  _print_unlocked<A, B>(_:_:)();
  v44._countAndFlagsBits = 39;
  v44._object = 0xE100000000000000;
  String.append(_:)(v44);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1008D69BC(uint64_t result)
{
  if (result > 4)
  {
    if (result <= 9)
    {
      return result;
    }

    if (result == 0xFFFF)
    {
      return 10;
    }

    return 11;
  }

  if (result < 0)
  {
    return 11;
  }

  return result;
}

uint64_t sub_1008D6A44(uint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  else
  {
    return result;
  }
}

void sub_1008D6A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v117 = a2;
  v120 = a1;
  v6 = type metadata accessor for MACAddress();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v110 = &v106 - v12;
  v13 = sub_1000BC4D4(&qword_1016998D8, &qword_101392028);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v106 - v15;
  v17 = type metadata accessor for UUID();
  v121 = *(v17 - 8);
  v18 = *(v121 + 64);
  v19 = __chkstk_darwin(v17);
  v108 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v109 = &v106 - v22;
  __chkstk_darwin(v21);
  v115 = &v106 - v23;
  v113 = type metadata accessor for AccessoryConnectionService.Event();
  v24 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v26 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v114 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v33 = &v106 - v32;
  __chkstk_darwin(v31);
  v122 = &v106 - v34;
  v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v124 = v35;
  AnyHashable.init<A>(_:)();
  v36 = *(a3 + 16);
  v118 = v7;
  if (!v36 || (v37 = sub_100771E5C(&v125), (v38 & 1) == 0))
  {
    sub_100476E48(&v125);
LABEL_7:
    v40 = 0;
    goto LABEL_8;
  }

  sub_100013894(*(a3 + 56) + 32 * v37, v127);
  sub_100476E48(&v125);
  sub_1000BC4D4(&qword_1016A0B00, &unk_1013A48B0);
  sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
  if (!swift_dynamicCast())
  {
    v7 = v118;
    goto LABEL_7;
  }

  v39 = v123;
  v125 = 0;
  v126 = 1;
  static Int._conditionallyBridgeFromObjectiveC(_:result:)();

  if (v126)
  {
    v40 = 0;
    v7 = v118;
    goto LABEL_8;
  }

  v40 = v125;
  v7 = v118;
  if ((v125 & 0x8000000000000000) == 0)
  {
    if (HIDWORD(v125))
    {
      __break(1u);
      goto LABEL_42;
    }

LABEL_8:
    v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v124 = v41;
    AnyHashable.init<A>(_:)();
    v42 = *(a3 + 16);
    v119 = v4;
    v107 = v11;
    v112 = v16;
    if (!v42 || (v43 = sub_100771E5C(&v125), (v44 & 1) == 0))
    {
      v46 = v6;
      v47 = v26;
      sub_100476E48(&v125);
      goto LABEL_14;
    }

    sub_100013894(*(a3 + 56) + 32 * v43, v127);
    sub_100476E48(&v125);
    sub_1000BC4D4(&qword_1016A0B00, &unk_1013A48B0);
    sub_100008BB8(0, &qword_1016AD648, NSData_ptr);
    if (!swift_dynamicCast())
    {
      v46 = v6;
      v47 = v26;
      goto LABEL_14;
    }

    v45 = v123;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    MACAddress.init(data:type:)();
    v7 = v118;
    if ((*(v118 + 48))(v33, 1, v6) == 1)
    {
      v46 = v6;
      v47 = v26;
      sub_10000B3A8(v33, &qword_1016A40D0, &unk_10138BE70);
LABEL_14:
      v48 = 1;
      goto LABEL_15;
    }

LABEL_42:
    v47 = v26;
    v46 = v6;
    (*(v7 + 32))(v122, v33, v6);
    v48 = 0;
LABEL_15:
    v49 = *(v7 + 56);
    v50 = v122;
    v51 = v46;
    v49(v122, v48, 1, v46);
    if (v40 >= 4)
    {
      v52 = 0;
    }

    else
    {
      v52 = v40;
    }

    v53 = sub_1000BC4D4(&qword_1016AD680, &qword_1013C4040);
    v54 = v53[12];
    v55 = v53[16];
    v116 = v51;
    v111 = v53[20];
    v56 = v120;
    v57 = *(v121 + 16);
    v57(v47, v120, v17);
    v58 = v117;
    v47[v54] = v117;
    sub_1000D2A70(v50, &v47[v55], &qword_1016A40D0, &unk_10138BE70);
    v47[v111] = v52;
    v59 = v116;
    v111 = v47;
    swift_storeEnumTagMultiPayload();
    v60 = v115;
    v57(v115, v56, v17);
    v61 = sub_1000BC4D4(&qword_1016AD630, &qword_1013C3FD0);
    v62 = *(v61 + 64);
    v63 = v112;
    *v112 = v58;
    LODWORD(v113) = v52;
    *(v63 + 1) = v52;
    v64 = v122;
    sub_1000D2A70(v122, v63 + v62, &qword_1016A40D0, &unk_10138BE70);
    (*(*(v61 - 8) + 56))(v63, 0, 1, v61);
    swift_beginAccess();
    sub_1001E01B8(v63, v60);
    swift_endAccess();
    v65 = v114;
    v66 = v118;
    sub_1000D2A70(v64, v114, &qword_1016A40D0, &unk_10138BE70);
    if ((*(v66 + 48))(v65, 1, v59) == 1)
    {
      sub_10000B3A8(v65, &qword_1016A40D0, &unk_10138BE70);
      if (qword_101694A40 != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      sub_1000076D4(v67, qword_10177B5A8);
      v68 = v108;
      v57(v108, v120, v17);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        *v71 = 136446722;
        sub_1008D7F84(&qword_101696930, 255, &type metadata accessor for UUID);
        v72 = dispatch thunk of CustomStringConvertible.description.getter();
        v74 = v73;
        (*(v121 + 8))(v68, v17);
        v75 = sub_1000136BC(v72, v74, &v125);

        *(v71 + 4) = v75;
        v76 = dword_1013C4064[v117];
        *(v71 + 12) = 1024;
        *(v71 + 14) = v76;
        *(v71 + 18) = 2082;
        if (v113 > 1u)
        {
          if (v113 == 2)
          {
            v78 = 0xE700000000000000;
            v77 = 0x6465737361702ELL;
          }

          else
          {
            v78 = 0xE800000000000000;
            v77 = 0x74756F656D69742ELL;
          }
        }

        else if (v113)
        {
          v78 = 0xE700000000000000;
          v77 = 0x64656C6961662ELL;
        }

        else
        {
          v77 = 0x6E776F6E6B6E752ELL;
          v78 = 0xE800000000000000;
        }

        v95 = sub_1000136BC(v77, v78, &v125);

        *(v71 + 20) = v95;
        _os_log_impl(&_mh_execute_header, v69, v70, "Accessory attached: %{public}s type: %u authStatus: %{public}s macAddress: nil)", v71, 0x1Cu);
        swift_arrayDestroy();
      }

      else
      {

        (*(v121 + 8))(v68, v17);
      }
    }

    else
    {
      v79 = v110;
      (*(v66 + 32))(v110, v65, v59);
      if (qword_101694A40 != -1)
      {
        swift_once();
      }

      v80 = type metadata accessor for Logger();
      sub_1000076D4(v80, qword_10177B5A8);
      v81 = v109;
      v57(v109, v120, v17);
      v82 = v107;
      (*(v66 + 16))(v107, v79, v59);
      v83 = v59;
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        *v86 = 136446978;
        sub_1008D7F84(&qword_101696930, 255, &type metadata accessor for UUID);
        v87 = dispatch thunk of CustomStringConvertible.description.getter();
        v89 = v88;
        (*(v121 + 8))(v81, v17);
        v90 = sub_1000136BC(v87, v89, &v125);

        *(v86 + 4) = v90;
        v91 = dword_1013C4064[v117];
        *(v86 + 12) = 1024;
        *(v86 + 14) = v91;
        *(v86 + 18) = 2082;
        if (v113 > 1u)
        {
          if (v113 == 2)
          {
            v93 = 0xE700000000000000;
            v92 = 0x6465737361702ELL;
          }

          else
          {
            v93 = 0xE800000000000000;
            v92 = 0x74756F656D69742ELL;
          }
        }

        else if (v113)
        {
          v93 = 0xE700000000000000;
          v92 = 0x64656C6961662ELL;
        }

        else
        {
          v92 = 0x6E776F6E6B6E752ELL;
          v93 = 0xE800000000000000;
        }

        v98 = sub_1000136BC(v92, v93, &v125);

        *(v86 + 20) = v98;
        *(v86 + 28) = 2082;
        sub_1008D7F84(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
        v99 = v116;
        v100 = dispatch thunk of CustomStringConvertible.description.getter();
        v102 = v101;
        v103 = *(v118 + 8);
        v103(v82, v99);
        v104 = sub_1000136BC(v100, v102, &v125);

        *(v86 + 30) = v104;
        _os_log_impl(&_mh_execute_header, v84, v85, "Accessory attached: %{public}s type: %u authStatus: %{public}s macAddress: %{public}s", v86, 0x26u);
        swift_arrayDestroy();

        v103(v110, v99);
        v97 = v111;
        v96 = v119;
        goto LABEL_50;
      }

      v94 = *(v66 + 8);
      v94(v82, v83);
      (*(v121 + 8))(v81, v17);
      v94(v79, v83);
    }

    v96 = v119;
    v97 = v111;
LABEL_50:
    v105 = type metadata accessor for Transaction();
    __chkstk_darwin(v105);
    *(&v106 - 2) = v96;
    *(&v106 - 1) = v97;
    static Transaction.named<A>(_:with:)();
    sub_10000B3A8(v122, &qword_1016A40D0, &unk_10138BE70);
    sub_1008D7F28(v97);
    return;
  }

  __break(1u);
}

uint64_t sub_1008D78EC(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;

  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v5)) | (v7 << 6);
    sub_100476DEC(*(v1 + 48) + 40 * v10, v40);
    sub_100013894(*(v1 + 56) + 32 * v10, v41);
    sub_100476DEC(v40, &v33);
    if (swift_dynamicCast())
    {
      v37 = v36;
      v11 = v42;
      v12 = sub_1000035D0(v41, v42);
      *(&v39 + 1) = v11;
      v13 = sub_1000280DC(&v38);
      (*(*(v11 - 8) + 16))(v13, v12, v11);
    }

    else
    {
      if (qword_101694A50 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000076D4(v14, qword_1016AD390);
      sub_100476DEC(v40, &v33);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *&v36 = v18;
        *v17 = 136446210;
        v19 = AnyHashable.description.getter();
        v32 = v8;
        v21 = v20;
        sub_100476E48(&v33);
        v22 = sub_1000136BC(v19, v21, &v36);
        v8 = v32;

        *(v17 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v15, v16, "Dropping non-String metadata key: %{public}s", v17, 0xCu);
        sub_100007BAC(v18);

        v1 = v31;
      }

      else
      {

        sub_100476E48(&v33);
      }

      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
    }

    v5 &= v5 - 1;
    sub_10000B3A8(v40, &unk_1016A0AF0, &unk_1013A48A0);
    if (*(&v37 + 1))
    {
      v33 = v37;
      v34 = v38;
      v35 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100A5CDE8(0, v8[2] + 1, 1, v8);
      }

      v24 = v8[2];
      v23 = v8[3];
      if (v24 >= v23 >> 1)
      {
        v8 = sub_100A5CDE8((v23 > 1), v24 + 1, 1, v8);
      }

      v8[2] = v24 + 1;
      v25 = &v8[6 * v24];
      v26 = v33;
      v27 = v35;
      v25[3] = v34;
      v25[4] = v27;
      v25[2] = v26;
    }

    else
    {
      sub_10000B3A8(&v37, &unk_1016AD660, &unk_1013C3FE0);
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (v8[2])
  {
    sub_1000BC4D4(&qword_1016A0B08, &unk_1013C5390);
    v28 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v28 = _swiftEmptyDictionarySingleton;
  }

  v40[0] = v28;

  sub_1008D65E0(v29, 1, v40);

  return v40[0];
}

uint64_t sub_1008D7D38()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_1008D5B9C(v4, v0 + v3, v5);
}

uint64_t sub_1008D7E40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1008D5DF4(a1, v4, v5, v6);
}

uint64_t sub_1008D7EF4()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + 152);
  return AsyncStreamProvider.yield(value:transaction:)();
}

uint64_t sub_1008D7F28(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryConnectionService.Event();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1008D7F84(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1008D7FCC()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1008D5550(v4, v0 + v3);
}

uint64_t sub_1008D80A4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_1008D5794(a1, v5, v4);
}

uint64_t sub_1008D8150()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(v0 + 16);
  v6 = *(v0 + (v4 & 0xFFFFFFFFFFFFFFF8) + 8);
  v7 = *(v0 + (((v4 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v0 + v4);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014650;

  return sub_1008D4E04(v5, v0 + v3, v8, v6, v7);
}

uint64_t sub_1008D8278(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_1008D5064(a1, v4, v5, v8, v6, v7);
}

uint64_t sub_1008D8340(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryConnectionService.Event();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for FamilyCryptoKeysV2()
{
  result = qword_1016AD6F8;
  if (!qword_1016AD6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008D8430()
{
  result = type metadata accessor for DateInterval();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1008D84B4(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AD750, &qword_1013C4100);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1008D8CBC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = type metadata accessor for FamilyCryptoKeysV2();
    v13 = *(v12 + 20);
    LOBYTE(v18) = 1;
    type metadata accessor for DateInterval();
    sub_1008D8DD0(&qword_1016AD758);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = (v3 + *(v12 + 24));
    v15 = v14[1];
    v18 = *v14;
    v19 = v15;
    v17[15] = 2;
    sub_100017D5C(v18, v15);
    sub_10049E410();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v18, v19);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1008D86B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for DateInterval();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000BC4D4(&qword_1016AD738, &qword_1013C40F8);
  v28 = *(v31 - 8);
  v8 = *(v28 + 64);
  __chkstk_darwin(v31);
  v10 = &v24 - v9;
  v11 = type metadata accessor for FamilyCryptoKeysV2();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1008D8CBC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v26 = a1;
  v17 = v28;
  v16 = v29;
  v18 = v30;
  LOBYTE(v32) = 0;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = v14;
  *v14 = v19;
  LOBYTE(v32) = 1;
  sub_1008D8DD0(&qword_1016AD748);
  v20 = v7;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = *(v16 + 32);
  v22 = v25;
  v24 = *(v11 + 20);
  v21(v25 + v24, v20, v18);
  v33 = 2;
  sub_10049E3BC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 8))(v10, v31);
  *(v22 + *(v11 + 24)) = v32;
  sub_1008D8D10(v22, v27);
  sub_100007BAC(v26);
  return sub_1008D8D74(v22);
}

uint64_t sub_1008D8A2C(char *a1, char *a2)
{
  if (qword_1013C4258[*a1] == qword_1013C4258[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_1008D8A94()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = qword_1013C4258[v1];
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1008D8AF0()
{
  v1 = qword_1013C4258[*v0];
  String.hash(into:)();
}

Swift::Int sub_1008D8B30()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = qword_1013C4258[v1];
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1008D8B88@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1008D8F2C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1008D8BEC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1008D8F2C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1008D8C14(uint64_t a1)
{
  v2 = sub_1008D8CBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008D8C50(uint64_t a1)
{
  v2 = sub_1008D8CBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1008D8CBC()
{
  result = qword_1016AD740;
  if (!qword_1016AD740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD740);
  }

  return result;
}

uint64_t sub_1008D8D10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyCryptoKeysV2();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008D8D74(uint64_t a1)
{
  v2 = type metadata accessor for FamilyCryptoKeysV2();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1008D8DD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DateInterval();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1008D8E28()
{
  result = qword_1016AD760;
  if (!qword_1016AD760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD760);
  }

  return result;
}

unint64_t sub_1008D8E80()
{
  result = qword_1016AD768;
  if (!qword_1016AD768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD768);
  }

  return result;
}

unint64_t sub_1008D8ED8()
{
  result = qword_1016AD770;
  if (!qword_1016AD770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD770);
  }

  return result;
}

unint64_t sub_1008D8F2C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160ADA0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1008D8F78(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v16 = a4;
  v8 = sub_1000BC4D4(&qword_1016AD850, &qword_1013C44B8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1008DA104();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v19 = 0;
  sub_1000BC4D4(&qword_101698DD8, &qword_1013C44B0);
  sub_1008DA158(&qword_1016AD858);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v17 = a3;
    v18 = v16;
    v19 = 1;
    sub_100017D5C(a3, v16);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v17, v18);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1008D9160(void *a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_1016AD870, &qword_1013C44D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1008DA3D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12[1] = a2;
    v13 = 1;
    sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
    sub_1008DA424(&qword_10169C9F8, sub_1000E3190);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1008D9328(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AD820, &qword_1013C44A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1008D9DB8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v23) = 0;
  type metadata accessor for UUID();
  sub_1008D9E0C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for NFCTapRequestContent();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v23) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v23) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v23) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = *(v3 + v11[8]);
    v22[15] = 4;
    sub_1008D9E64();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1008D955C()
{
  if (*v0)
  {
    result = 2036625250;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_1008D9594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000101364300 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1008D967C(uint64_t a1)
{
  v2 = sub_1008DA104();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008D96B8(uint64_t a1)
{
  v2 = sub_1008DA104();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008D96F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1008D9EB8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1008D9744()
{
  if (*v0)
  {
    result = 7562345;
  }

  else
  {
    result = 0x7461447472617473;
  }

  *v0;
  return result;
}

uint64_t sub_1008D977C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7562345 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1008D9860(uint64_t a1)
{
  v2 = sub_1008DA3D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008D989C(uint64_t a1)
{
  v2 = sub_1008DA3D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1008D98D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1008DA1C4(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = result;
  }

  return result;
}

uint64_t sub_1008D9928()
{
  v1 = *v0;
  v2 = 0x646975756162;
  v3 = 0x644970696863;
  v4 = 0x754E6C6169726573;
  if (v1 != 3)
  {
    v4 = 0x6269726373627573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1684628325;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1008D99C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1008DA7E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1008D99E8(uint64_t a1)
{
  v2 = sub_1008D9DB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008D9A24(uint64_t a1)
{
  v2 = sub_1008D9DB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_1008D9A78()
{
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v1 = result;
  v2 = MobileGestalt_copy_productType_obj();

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_11;
  }

  v6 = result;
  v7 = MobileGestalt_copy_productVersion_obj();

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = [objc_opt_self() processInfo];
  v12 = [v11 processName];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14._countAndFlagsBits = 47;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 32;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = v3;
  v17._object = v5;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 47;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = v8;
  v19._object = v10;
  String.append(_:)(v19);

  return v13;
}

uint64_t type metadata accessor for NFCTapRequestContent()
{
  result = qword_1016AD7D0;
  if (!qword_1016AD7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1008D9CC8()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1008D9D58();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1008D9D58()
{
  if (!qword_1016AD7E0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016AD7E0);
    }
  }
}

unint64_t sub_1008D9DB8()
{
  result = qword_1016AD828;
  if (!qword_1016AD828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD828);
  }

  return result;
}

unint64_t sub_1008D9E0C()
{
  result = qword_101698330;
  if (!qword_101698330)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698330);
  }

  return result;
}

unint64_t sub_1008D9E64()
{
  result = qword_1016AD830;
  if (!qword_1016AD830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD830);
  }

  return result;
}

uint64_t sub_1008D9EB8(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016AD838, &qword_1013C44A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = a1[3];
  sub_1000035D0(a1, v8);
  sub_1008DA104();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_101698DD8, &qword_1013C44B0);
    v15 = 0;
    sub_1008DA158(&qword_1016AD848);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v13;
    v15 = 1;
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v10 = v13;
    v11 = v14;

    sub_100017D5C(v10, v11);
    sub_100007BAC(a1);

    sub_100016590(v10, v11);
  }

  return v8;
}

unint64_t sub_1008DA104()
{
  result = qword_1016AD840;
  if (!qword_1016AD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD840);
  }

  return result;
}

uint64_t sub_1008DA158(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_101698DD8, &qword_1013C44B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1008DA1C4(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016AD860, &unk_1013C44C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_1000035D0(a1, a1[3]);
  sub_1008DA3D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    v13 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
    v12 = 1;
    sub_1008DA424(&qword_10169F5A0, sub_1000E307C);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100007BAC(a1);
  }

  return v9;
}

unint64_t sub_1008DA3D0()
{
  result = qword_1016AD868;
  if (!qword_1016AD868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD868);
  }

  return result;
}

uint64_t sub_1008DA424(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_101699EB8, &qword_101398AA0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1008DA4D0()
{
  result = qword_1016AD878;
  if (!qword_1016AD878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD878);
  }

  return result;
}

unint64_t sub_1008DA528()
{
  result = qword_1016AD880;
  if (!qword_1016AD880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD880);
  }

  return result;
}

unint64_t sub_1008DA580()
{
  result = qword_1016AD888;
  if (!qword_1016AD888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD888);
  }

  return result;
}

unint64_t sub_1008DA5D8()
{
  result = qword_1016AD890;
  if (!qword_1016AD890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD890);
  }

  return result;
}

unint64_t sub_1008DA630()
{
  result = qword_1016AD898;
  if (!qword_1016AD898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD898);
  }

  return result;
}

unint64_t sub_1008DA688()
{
  result = qword_1016AD8A0;
  if (!qword_1016AD8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD8A0);
  }

  return result;
}

unint64_t sub_1008DA6E0()
{
  result = qword_1016AD8A8;
  if (!qword_1016AD8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD8A8);
  }

  return result;
}

unint64_t sub_1008DA738()
{
  result = qword_1016AD8B0;
  if (!qword_1016AD8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD8B0);
  }

  return result;
}

unint64_t sub_1008DA790()
{
  result = qword_1016AD8B8;
  if (!qword_1016AD8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD8B8);
  }

  return result;
}

uint64_t sub_1008DA7E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646975756162 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684628325 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x644970696863 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xE900000000000065)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1008DA998(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  while (2)
  {
    v5 = *(&off_101607B50 + v4++ + 32);
    v6 = 0xEB0000000070756FLL;
    v7 = 0x72476E6F63616542;
    switch(v5)
    {
      case 1:
        v6 = 0x800000010134BC40;
        if (a1 == 0xD000000000000012)
        {
          goto LABEL_35;
        }

        goto LABEL_36;
      case 2:
        goto LABEL_34;
      case 3:
        v11 = 0x526572616853;
        goto LABEL_25;
      case 4:
        v6 = 0x800000010134BC20;
        if (a1 != 0xD000000000000012)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 5:
        v6 = 0x80000001013643C0;
        if (a1 != 0xD000000000000015)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 6:
        v6 = 0x80000001013643A0;
        if (a1 != 0xD000000000000017)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 7:
        v11 = 0x52687361654CLL;
LABEL_25:
        v6 = 0xEB0000000064726FLL;
        if ((v11 & 0xFFFFFFFFFFFFLL | 0x6365000000000000) != a1)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 8:
        v6 = 0xEC0000006E6F6974;
        if (a1 != 0x61636F4C65666153)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 9:
        v9 = 0x65646F4D74736F4CLL;
        v10 = 0x64726F636552;
        goto LABEL_17;
      case 10:
        v7 = 0xD000000000000012;
        v6 = 0x8000000101364380;
LABEL_34:
        if (v7 == a1)
        {
          goto LABEL_35;
        }

        goto LABEL_36;
      case 11:
        v6 = 0x8000000101364360;
        if (a1 != 0xD000000000000014)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 12:
        v9 = 0x65655072656E774FLL;
        v10 = 0x747375725472;
LABEL_17:
        v6 = v10 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v9 != a1)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 13:
        v6 = 0xEF74737572547265;
        if (a1 != 0x65507265626D654DLL)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 14:
        v6 = 0x8000000101364340;
        if (a1 != 0xD000000000000012)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 15:
        v6 = 0x8000000101364320;
        if (a1 != 0xD000000000000013)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 16:
        v6 = 0x8000000101351330;
        if (a1 != 0xD000000000000013)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      default:
        if (qword_101694E70 != -1)
        {
          swift_once();
        }

        v8 = qword_10177C060;
        v6 = *algn_10177C068;

        if (v8 != a1)
        {
          goto LABEL_36;
        }

LABEL_35:
        if (v6 == a2)
        {

          return v5;
        }

LABEL_36:
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v12)
        {
          return v5;
        }

        if (v4 != 17)
        {
          continue;
        }

        return 17;
    }
  }
}

uint64_t sub_1008DAD28@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      if (qword_101695470 != -1)
      {
        swift_once();
      }

      v3 = qword_10177CD50;
      break;
    case 2:
      if (qword_1016947B8 != -1)
      {
        swift_once();
      }

      v3 = qword_10177AEF8;
      break;
    case 3:
      if (qword_101694468 != -1)
      {
        swift_once();
      }

      v3 = qword_10177A518;
      break;
    case 4:
      if (qword_101694EB0 != -1)
      {
        swift_once();
      }

      v3 = qword_10177C0C0;
      break;
    case 5:
      if (qword_1016947A0 != -1)
      {
        swift_once();
      }

      v3 = qword_10177AEC8;
      break;
    case 6:
      if (qword_101694E08 != -1)
      {
        swift_once();
      }

      v3 = qword_10177BF38;
      break;
    case 7:
      if (qword_1016954B8 != -1)
      {
        swift_once();
      }

      v3 = qword_10177CDB8;
      break;
    case 8:
      if (qword_101694F88 != -1)
      {
        swift_once();
      }

      v3 = qword_10177C268;
      break;
    case 9:
      if (qword_101694EF8 != -1)
      {
        swift_once();
      }

      v3 = qword_10177C140;
      break;
    case 10:
      if (qword_101694460 != -1)
      {
        swift_once();
      }

      v3 = qword_10177A500;
      break;
    case 11:
      if (qword_101695268 != -1)
      {
        swift_once();
      }

      v3 = qword_10177C680;
      break;
    case 12:
      if (qword_101694568 != -1)
      {
        swift_once();
      }

      v3 = qword_10177A918;
      break;
    case 13:
      if (qword_101694F30 != -1)
      {
        swift_once();
      }

      v3 = qword_10177C1D0;
      break;
    case 14:
      if (qword_101694EB8 != -1)
      {
        swift_once();
      }

      v3 = qword_10177C0D8;
      break;
    case 15:
      if (qword_101694680 != -1)
      {
        swift_once();
      }

      v3 = qword_10177AC60;
      break;
    case 16:
      if (qword_101694E90 != -1)
      {
        swift_once();
      }

      v3 = qword_10177C090;
      break;
    default:
      if (qword_101694E78 != -1)
      {
        swift_once();
      }

      v3 = qword_10177C070;
      break;
  }

  v4 = type metadata accessor for URL();
  v5 = sub_1000076D4(v4, v3);
  v6 = *(*(v4 - 8) + 16);

  return v6(a2, v5, v4);
}

uint64_t sub_1008DB1C0(uint64_t a1, uint64_t a2)
{
  v2[41] = a1;
  v2[42] = a2;
  v3 = type metadata accessor for HashAlgorithm();
  v2[43] = v3;
  v4 = *(v3 - 8);
  v2[44] = v4;
  v5 = *(v4 + 64) + 15;
  v2[45] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[46] = v6;
  v7 = *(v6 - 8);
  v2[47] = v7;
  v8 = *(v7 + 64) + 15;
  v2[48] = swift_task_alloc();

  return _swift_task_switch(sub_1008DB2DC, 0, 0);
}

void sub_1008DB2DC()
{
  v1 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v3 = [objc_opt_self() currentDevice];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [v3 serverFriendlyDescription];

  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = *(v0 + 376);
  v6 = *(v0 + 384);
  v8 = *(v0 + 368);
  v9 = *(v0 + 328);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v10, v12, 0xD000000000000011, 0x800000010134EA40, v13);
  v14 = v1;
  Date.init()();
  v15 = Date.epoch.getter();
  (*(v7 + 8))(v6, v8);
  *(v0 + 312) = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v16, v18, 0xD000000000000015, 0x800000010134EA60, v19);
  *(v0 + 320) = 1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v24 = sub_100FFACA0(v20, v22, 0xD000000000000013, 0x800000010134EA80, v23);
  v25 = v14;
  v26 = sub_100EB2DF0(v24);
  v28 = v27;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v26, v28, 0x6567412D72657355, 0xEA0000000000746ELL, v29);
  *(v0 + 392) = v25;
  v30 = type metadata accessor for JSONEncoder();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  *(v0 + 400) = JSONEncoder.init()();
  *(v0 + 16) = *v9;
  v33 = v9[4];
  v35 = v9[1];
  v34 = v9[2];
  *(v0 + 64) = v9[3];
  *(v0 + 80) = v33;
  *(v0 + 32) = v35;
  *(v0 + 48) = v34;
  sub_1008DC318();
  v36 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 408) = 0;
  *(v0 + 416) = v36;
  *(v0 + 424) = v37;
  sub_100017D5C(v36, v37);
  v38 = swift_task_alloc();
  *(v0 + 432) = v38;
  *v38 = v0;
  v38[1] = sub_1008DB790;

  sub_100EA5FA4();
}

uint64_t sub_1008DB790(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 432);
  v6 = *v2;
  *(v3 + 440) = a1;
  *(v3 + 448) = a2;

  return _swift_task_switch(sub_1008DB890, 0, 0);
}

uint64_t sub_1008DB890()
{
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v3 = *(v0 + 408);
  v5 = *(v0 + 352);
  v4 = *(v0 + 360);
  v6 = *(v0 + 344);
  *(v0 + 296) = v2;
  *(v0 + 304) = v1;
  *(v0 + 280) = &type metadata for Data;
  *(v0 + 288) = &protocol witness table for Data;
  *(v0 + 256) = *(v0 + 416);
  v7 = sub_1000035D0((v0 + 256), &type metadata for Data);
  v8 = *v7;
  v9 = v7[1];
  sub_100017D5C(v2, v1);
  sub_100017DB0(v8, v9);
  sub_100016590(v2, v1);
  sub_100007BAC((v0 + 256));
  v10 = *(v0 + 304);
  *(v0 + 456) = *(v0 + 296);
  *(v0 + 464) = v10;
  (*(v5 + 104))(v4, enum case for HashAlgorithm.sha256(_:), v6);
  v11 = Data.hash(algorithm:)();
  v13 = v12;
  *(v0 + 472) = v11;
  *(v0 + 480) = v12;
  (*(v5 + 8))(v4, v6);
  v14 = swift_task_alloc();
  *(v0 + 488) = v14;
  *v14 = v0;
  v14[1] = sub_1008DBA2C;
  v15 = *(v0 + 336);

  return sub_100EA87F4(v11, v13, v15);
}

uint64_t sub_1008DBA2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 488);
  v6 = *v2;
  *(*v2 + 496) = v1;

  if (v1)
  {
    v7 = sub_1008DBF20;
  }

  else
  {
    v8 = v4[59];
    v9 = v4[60];
    v4[63] = a1;
    sub_100016590(v8, v9);
    v7 = sub_1008DBB5C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1008DBB5C()
{
  v48 = v0;
  v2 = v0[62];
  v1 = v0[63];
  v4 = v0[57];
  v3 = v0[58];
  v5 = v0[49];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = v5;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v47);

  sub_100016590(v4, v3);
  v7 = v47;
  static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
LABEL_17:
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v8 = v7 + 8;
  v9 = -1;
  v10 = -1 << *(v7 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & v7[8];
  v12 = (63 - v10) >> 6;
  v44 = v7;

  v13 = 0;
  while (v11)
  {
    v14 = v13;
    v15 = v44;
LABEL_11:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = (v14 << 10) | (16 * v16);
    v18 = v15[7];
    v19 = (v15[6] + v17);
    v20 = *v19;
    v21 = v19[1];
    v22 = (v18 + v17);
    v23 = v22[1];
    v45 = *v22;

    static os_log_type_t.debug.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_10138BBE0;
    v7 = &type metadata for String;
    *(v24 + 56) = &type metadata for String;
    v25 = sub_100008C00();
    *(v24 + 32) = v20;
    *(v24 + 40) = v21;
    *(v24 + 96) = &type metadata for String;
    *(v24 + 104) = v25;
    *(v24 + 64) = v25;
    *(v24 + 72) = v45;
    *(v24 + 80) = v23;
    os_log(_:dso:log:_:_:)();
  }

  v15 = v44;
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = v8[v14];
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_11;
    }
  }

  v26 = *(v43 + 416);
  v27 = *(v43 + 424);
  v28 = *(v43 + 400);
  v29 = *(v43 + 328);
  v46 = *(v43 + 336);

  static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_101385D80;
  *(v43 + 176) = *v29;
  v31 = v29[4];
  v33 = v29[1];
  v32 = v29[2];
  *(v43 + 224) = v29[3];
  *(v43 + 240) = v31;
  *(v43 + 192) = v33;
  *(v43 + 208) = v32;
  v34 = String.init<A>(describing:)();
  v36 = v35;
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = sub_100008C00();
  *(v30 + 32) = v34;
  *(v30 + 40) = v36;
  os_log(_:dso:log:_:_:)();

  sub_100017D5C(v26, v27);

  sub_100016590(v26, v27);
  v38 = *(v43 + 416);
  v37 = *(v43 + 424);
  v39 = *(v43 + 384);
  v40 = *(v43 + 360);

  v41 = *(v43 + 8);

  return v41(v44, v38, v37);
}

uint64_t sub_1008DBF20()
{
  v1 = v0[57];
  v2 = v0[58];
  sub_100016590(v0[59], v0[60]);
  sub_100016590(v1, v2);
  static os_log_type_t.error.getter();
  v3 = &qword_101695000;
  if (qword_1016950C8 != -1)
  {
LABEL_19:
    swift_once();
  }

  v4 = v0[62];
  os_log(_:dso:log:_:_:)();

  v39 = v0;
  v0 = v0[49];
  static os_log_type_t.debug.getter();
  if (*(v3 + 200) != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v5 = v0 + 8;
  v6 = -1;
  v7 = -1 << *(v0 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v3 = v6 & v0[8];
  v8 = (63 - v7) >> 6;
  v40 = v0;

  v9 = 0;
  while (v3)
  {
    v10 = v9;
    v11 = v40;
LABEL_13:
    v12 = __clz(__rbit64(v3));
    v3 &= v3 - 1;
    v13 = (v10 << 10) | (16 * v12);
    v14 = v11[7];
    v15 = (v11[6] + v13);
    v16 = *v15;
    v17 = v15[1];
    v18 = (v14 + v13);
    v19 = v18[1];
    v41 = *v18;

    static os_log_type_t.debug.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10138BBE0;
    v0 = &type metadata for String;
    *(v20 + 56) = &type metadata for String;
    v21 = sub_100008C00();
    *(v20 + 32) = v16;
    *(v20 + 40) = v17;
    *(v20 + 96) = &type metadata for String;
    *(v20 + 104) = v21;
    *(v20 + 64) = v21;
    *(v20 + 72) = v41;
    *(v20 + 80) = v19;
    os_log(_:dso:log:_:_:)();
  }

  v11 = v40;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v10 >= v8)
    {
      break;
    }

    v3 = v5[v10];
    ++v9;
    if (v3)
    {
      v9 = v10;
      goto LABEL_13;
    }
  }

  v22 = v39[52];
  v23 = v39[53];
  v24 = v39[50];
  v25 = v39[41];
  v42 = v39[42];

  static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_101385D80;
  *(v39 + 11) = *v25;
  v27 = v25[4];
  v29 = v25[1];
  v28 = v25[2];
  *(v39 + 14) = v25[3];
  *(v39 + 15) = v27;
  *(v39 + 12) = v29;
  *(v39 + 13) = v28;
  v30 = String.init<A>(describing:)();
  v32 = v31;
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = sub_100008C00();
  *(v26 + 32) = v30;
  *(v26 + 40) = v32;
  os_log(_:dso:log:_:_:)();

  sub_100017D5C(v22, v23);

  sub_100016590(v22, v23);
  v34 = v39[52];
  v33 = v39[53];
  v35 = v39[48];
  v36 = v39[45];

  v37 = v39[1];

  return v37(v40, v34, v33);
}

unint64_t sub_1008DC318()
{
  result = qword_1016AD8C0;
  if (!qword_1016AD8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD8C0);
  }

  return result;
}

uint64_t sub_1008DC37C()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - v4;
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177B5D8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Registering leech scanner.", v9, 2u);
  }

  type metadata accessor for Transaction();
  static Transaction.asyncTask(name:block:)();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;

  sub_1008CE048(0, 0, v5, &unk_1013C4990, v11);

  return sub_10000B3A8(v5, &qword_101698C00, &qword_10138B570);
}

uint64_t sub_1008DC594()
{
  v1[7] = v0;
  v2 = type metadata accessor for KeyGenerationBeaconInfo();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_1008DC654, 0, 0);
}

uint64_t sub_1008DC654()
{
  if (**(v0 + 56))
  {
    v1 = *(v0 + 80);

    v2 = *(v0 + 8);

    return v2(0);
  }

  else
  {
    v4 = async function pointer to daemon.getter[1];
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *v5 = v0;
    v5[1] = sub_1008DC730;

    return daemon.getter();
  }
}

uint64_t sub_1008DC730(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v12 = *v1;
  *(v3 + 96) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 104) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019588(&unk_1016B1090, type metadata accessor for BeaconKeyService);
  *v6 = v12;
  v6[1] = sub_1008DC90C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1008DC90C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  v4[14] = a1;
  v4[15] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1008DCDC8, 0, 0);
  }

  else
  {
    v7 = v4[12];

    v8 = swift_task_alloc();
    v4[16] = v8;
    *v8 = v6;
    v8[1] = sub_1008DCA94;

    return sub_10098F598();
  }
}

uint64_t sub_1008DCA94(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v7 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v5 = sub_1008DCE3C;
  }

  else
  {
    v5 = sub_1008DCBA8;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_1008DCBA8()
{
  v1 = 0;
  v2 = v0[17];
  v4 = v0[8];
  v3 = v0[9];
  v5 = *(v2 + 16);
  v6 = enum case for Feature.FindMy.spPlaySoundAll(_:);
  while (1)
  {
    v7 = v1;
    if (v5 == v1)
    {
LABEL_6:
      v12 = v0[17];
      v13 = v0[14];

      goto LABEL_8;
    }

    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v8 = v0[10];
    sub_10002963C(v0[17] + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v1, v8, type metadata accessor for KeyGenerationBeaconInfo);
    if (*(v8 + *(v4 + 28)))
    {
      break;
    }

    v9 = v0[10];
    ++v1;
    My = type metadata accessor for Feature.FindMy();
    v0[5] = My;
    v0[6] = sub_100019588(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
    v11 = sub_1000280DC(v0 + 2);
    (*(*(My - 8) + 104))(v11, v6, My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_10001F210(v9, type metadata accessor for KeyGenerationBeaconInfo);
    sub_100007BAC(v0 + 2);
    if (My)
    {
      goto LABEL_6;
    }
  }

  v14 = v0[17];
  v15 = v0[14];
  v16 = v0[10];

  sub_10001F210(v16, type metadata accessor for KeyGenerationBeaconInfo);
LABEL_8:
  v17 = v0[10];

  v18 = v0[1];

  v18(v5 != v7);
}

uint64_t sub_1008DCDC8()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[10];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_1008DCE3C()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[10];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_1008DCEB0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B5D8);
  sub_1000076D4(v0, qword_10177B5D8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1008DCF30()
{
  v1 = sub_1000BC4D4(&qword_101696C40, &unk_1013B8520);
  *(v0 + 48) = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  *(v0 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_1008DCFCC, 0, 0);
}

uint64_t sub_1008DCFCC()
{
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 64) = sub_1000076D4(v1, qword_10177B5D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, ">> Update leech scanner state.", v4, 2u);
  }

  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1008DD11C;

  return daemon.getter();
}

uint64_t sub_1008DD11C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  v3[10] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[11] = v6;
  v7 = type metadata accessor for Daemon();
  v3[12] = v7;
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[13] = v9;
  v10 = sub_100019588(&unk_1016B1090, type metadata accessor for BeaconKeyService);
  *v6 = v12;
  v6[1] = sub_1008DD2FC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1008DD2FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 112) = a1;

  v7 = *(v3 + 80);
  if (v1)
  {

    return _swift_task_switch(sub_1008DD4A8, 0, 0);
  }

  else
  {

    v8 = async function pointer to daemon.getter[1];
    v9 = swift_task_alloc();
    *(v4 + 120) = v9;
    *v9 = v6;
    v9[1] = sub_1008DD580;

    return daemon.getter();
  }
}

uint64_t sub_1008DD4A8()
{
  v1 = v0[8];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Leech scanner cannot update. Missing BeaconKeyService.", v4, 2u);
  }

  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1008DD580(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  v5 = *v1;
  v3[16] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[17] = v7;
  v8 = type metadata accessor for FinderStateObserver();
  v9 = sub_100019588(&unk_1016B1000, type metadata accessor for FinderStateObserver);
  *v7 = v5;
  v7[1] = sub_1008DD734;
  v10 = v3[13];
  v11 = v3[12];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1008DD734(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 136);
  v7 = *v2;

  v8 = *(v4 + 128);
  if (v1)
  {

    v9 = sub_1008DE750;
  }

  else
  {

    *(v5 + 144) = a1;
    v9 = sub_1008DD888;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1008DD888()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[18];

    v3 = sub_1008DDB54;
    v4 = v1;
    v5 = 0;

    return _swift_task_switch(v3, v4, v5);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  sub_100EB3A04(0xD000000000000019, 0x8000000101364440, qword_10177C218);
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return _swift_task_switch(v3, v4, v5);
    }

    v7 = v0[8];
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = v6;
      _os_log_impl(&_mh_execute_header, v8, v9, "Leech state override: %llu.", v10, 0xCu);
    }
  }

  v11 = v0[8];
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v12, v13, "Posting com.apple.SPOwner.SPCBLeechScanner Darwin notification state: %llu.", v14, 0xCu);
  }

  static DarwinNotification.setValue(name:value:)();
  static DarwinNotification.post(name:)();
  v15 = v0[8];
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[14];
  if (v18)
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "<< Update leech scanner state.", v20, 2u);
  }

  v21 = v0[7];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1008DDB54()
{
  v1 = v0[18];
  v2 = sub_100019588(&qword_101696CC8, type metadata accessor for FinderStateObserver);
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_1008DDC64;
  v5 = v0[18];
  v7 = v0[6];
  v6 = v0[7];

  return withCheckedContinuation<A>(isolation:function:_:)(v6, v1, v2, 0x6E4965746174735FLL, 0xEC00000029286F66, sub_1000DFF14, v5, v7);
}

uint64_t sub_1008DDC64()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return _swift_task_switch(sub_1008DDD7C, 0, 0);
}

void sub_1008DDD7C()
{
  v1 = v0[7];
  v2 = type metadata accessor for FinderStateInfo(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_101696C40, &unk_1013B8520);
    v3 = v0[18];
    if (qword_101694F58 != -1)
    {
      swift_once();
    }

    sub_100EB3A04(0xD000000000000019, 0x8000000101364440, qword_10177C218);
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4;
      if (v4 < 0)
      {
        __break(1u);
        return;
      }

      v9 = v0[8];
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 134217984;
        *(v12 + 4) = v6;
        _os_log_impl(&_mh_execute_header, v10, v11, "Leech state override: %llu.", v12, 0xCu);
      }
    }

    v13 = v0[8];
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = v6;
      _os_log_impl(&_mh_execute_header, v14, v15, "Posting com.apple.SPOwner.SPCBLeechScanner Darwin notification state: %llu.", v16, 0xCu);
    }

    static DarwinNotification.setValue(name:value:)();
    static DarwinNotification.post(name:)();

    v17 = v0[8];
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[14];
    if (v20)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "<< Update leech scanner state.", v22, 2u);
    }

    v23 = v0[7];

    v24 = v0[1];

    v24();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[20] = v7;
    *v7 = v0;
    v7[1] = sub_1008DE0DC;
    v8 = v0[7];

    sub_1008DC594();
  }
}

uint64_t sub_1008DE0DC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = sub_1008DE528;
  }

  else
  {
    *(v4 + 176) = a1 & 1;
    v7 = sub_1008DE208;
  }

  return _swift_task_switch(v7, 0, 0);
}

void sub_1008DE208()
{
  v1 = *(v0 + 176);
  sub_10001F210(*(v0 + 56), type metadata accessor for FinderStateInfo);
  v2 = *(v0 + 144);
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  sub_100EB3A04(0xD000000000000019, 0x8000000101364440, qword_10177C218);
  if ((v4 & 1) == 0)
  {
    v9 = v3;
    if (v3 < 0)
    {
      __break(1u);
      return;
    }

    v10 = *(v0 + 64);
    v6 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v11))
    {
      goto LABEL_13;
    }

    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v6, v11, "Leech state override: %llu.", v12, 0xCu);
    goto LABEL_10;
  }

  if (v1)
  {
    v5 = *(v0 + 64);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      v9 = 1;
      goto LABEL_13;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Enabling leech scanner.", v8, 2u);
    v9 = 1;
LABEL_10:

LABEL_13:

    goto LABEL_14;
  }

  v9 = 0;
LABEL_14:
  v13 = *(v0 + 64);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v14, v15, "Posting com.apple.SPOwner.SPCBLeechScanner Darwin notification state: %llu.", v16, 0xCu);
  }

  static DarwinNotification.setValue(name:value:)();
  static DarwinNotification.post(name:)();

  v17 = *(v0 + 64);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 112);
  if (v20)
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "<< Update leech scanner state.", v22, 2u);
  }

  v23 = *(v0 + 56);

  v24 = *(v0 + 8);

  v24();
}

uint64_t sub_1008DE528()
{
  v27 = v0;
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[7];
  v4 = v0[8];

  sub_10001F210(v3, type metadata accessor for FinderStateInfo);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[21];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = Error.localizedDescription.getter();
    v15 = sub_1000136BC(v13, v14, &v26);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to post com.apple.SPOwner.SPCBLeechScanner. error: %{public}s.", v8, 0xCu);
    sub_100007BAC(v9);
  }

  else
  {
    v16 = v0[21];
  }

  v17 = v0[8];
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[14];
  if (v20)
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "<< Update leech scanner state.", v22, 2u);
  }

  v23 = v0[7];

  v24 = v0[1];

  return v24();
}

void sub_1008DE750()
{
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  sub_100EB3A04(0xD000000000000019, 0x8000000101364440, qword_10177C218);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1;
    if (v1 < 0)
    {
      __break(1u);
      return;
    }

    v4 = v0[8];
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v3;
      _os_log_impl(&_mh_execute_header, v5, v6, "Leech state override: %llu.", v7, 0xCu);
    }
  }

  v8 = v0[8];
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v9, v10, "Posting com.apple.SPOwner.SPCBLeechScanner Darwin notification state: %llu.", v11, 0xCu);
  }

  static DarwinNotification.setValue(name:value:)();
  static DarwinNotification.post(name:)();
  v12 = v0[8];
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[14];
  if (v15)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "<< Update leech scanner state.", v17, 2u);
  }

  v18 = v0[7];

  v19 = v0[1];

  v19();
}

uint64_t sub_1008DE9CC()
{
  v1 = sub_1000BC4D4(&qword_1016AD8C8, &qword_1013C4968);
  v0[3] = v1;
  v2 = *(v1 - 8);
  v0[4] = v2;
  v3 = *(v2 + 64) + 15;
  v0[5] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016AD8D0, &qword_1013C4970);
  v0[6] = v4;
  v5 = *(v4 - 8);
  v0[7] = v5;
  v6 = *(v5 + 64) + 15;
  v0[8] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_1016AD8D8, &unk_1013C4978);
  v0[9] = v7;
  v8 = *(v7 - 8);
  v0[10] = v8;
  v9 = *(v8 + 64) + 15;
  v0[11] = swift_task_alloc();
  v10 = async function pointer to daemon.getter[1];
  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_1008DEB94;

  return daemon.getter();
}

uint64_t sub_1008DEB94(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v12 = *v1;
  *(v3 + 104) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 112) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019588(&unk_1016B1090, type metadata accessor for BeaconKeyService);
  *v6 = v12;
  v6[1] = sub_1008DED70;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1008DED70(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v5 = *v2;
  *(*v2 + 120) = a1;

  v6 = *(v3 + 104);
  if (v1)
  {

    v7 = sub_1008DEEC0;
  }

  else
  {

    v7 = sub_1008DEFF4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1008DEEC0()
{
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B5D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Advertisement cache observation storing cannot register. Missing BeaconKeyService.", v4, 2u);
  }

  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1008DEFF4()
{
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[16] = sub_1000076D4(v1, qword_10177B5D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Key service updates registered to advertisement cache observation storing.", v4, 2u);
  }

  v5 = v0[15];
  v6 = v0[11];
  v8 = v0[7];
  v7 = v0[8];
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[3];
  v12 = v0[4];

  (*(v12 + 104))(v10, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v11);
  AsyncStream.init(_:bufferingPolicy:_:)();
  AsyncStream.makeAsyncIterator()();
  (*(v8 + 8))(v7, v9);
  v13 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v14 = swift_task_alloc();
  v0[17] = v14;
  *v14 = v0;
  v14[1] = sub_1008DF204;
  v15 = v0[11];
  v16 = v0[9];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v16);
}

uint64_t sub_1008DF204()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return _swift_task_switch(sub_1008DF300, 0, 0);
}

uint64_t sub_1008DF300()
{
  if (v0[2])
  {
    v1 = v0[16];

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Key service updated. Updating leech scanner.", v4, 2u);
    }

    type metadata accessor for Transaction();
    static Transaction.asyncTask(name:block:)();
    v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_1008DF204;
    v7 = v0[11];
    v8 = v0[9];

    return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v8);
  }

  else
  {
    v9 = v0[15];
    (*(v0[10] + 8))(v0[11], v0[9]);

    v10 = v0[11];
    v11 = v0[8];
    v12 = v0[5];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1008DF4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(type metadata accessor for DiscoveredObject(0) - 8);
  v4[3] = v5;
  v4[4] = *(v5 + 64);
  v4[5] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_1016AD8E0, &qword_1013C4998) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_1016AD8E8, &qword_1013C49A0);
  v4[7] = v7;
  v8 = *(v7 - 8);
  v4[8] = v8;
  v9 = *(v8 + 64) + 15;
  v4[9] = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_1016AD8F0, &qword_1013C49A8);
  v4[10] = v10;
  v11 = *(v10 - 8);
  v4[11] = v11;
  v12 = *(v11 + 64) + 15;
  v4[12] = swift_task_alloc();
  v13 = sub_1000BC4D4(qword_1016AD8F8, &unk_1013C49B0);
  v4[13] = v13;
  v14 = *(v13 - 8);
  v4[14] = v14;
  v15 = *(v14 + 64) + 15;
  v4[15] = swift_task_alloc();
  v16 = async function pointer to daemon.getter[1];
  v17 = swift_task_alloc();
  v4[16] = v17;
  *v17 = v4;
  v17[1] = sub_1008DF744;

  return daemon.getter();
}

uint64_t sub_1008DF744(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v12 = *v1;
  *(v3 + 136) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 144) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LeechScanningService();
  v9 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019588(&unk_1016B1170, type metadata accessor for LeechScanningService);
  *v6 = v12;
  v6[1] = sub_1008DF920;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1008DF920(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v5 = *v2;
  *(*v2 + 152) = a1;

  v6 = *(v3 + 136);
  if (v1)
  {

    v7 = sub_1008DFA70;
  }

  else
  {

    v7 = sub_1008DFBB8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1008DFA70()
{
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B5D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Leech scanner cannot register. Missing LeechScanningService.", v4, 2u);
  }

  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[9];
  v9 = v0[5];
  v8 = v0[6];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1008DFBB8()
{
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B5D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Leech scanner registered for stream.", v4, 2u);
  }

  v5 = v0[19];
  v6 = v0[15];
  v8 = v0[11];
  v7 = v0[12];
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[7];
  v12 = v0[8];

  v0[20] = sub_1000BC4D4(&qword_101699CF0, &qword_101393000);
  (*(v12 + 104))(v10, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v11);
  AsyncStream.init(_:bufferingPolicy:_:)();
  AsyncStream.makeAsyncIterator()();
  (*(v8 + 8))(v7, v9);
  v13 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v14 = swift_task_alloc();
  v0[21] = v14;
  *v14 = v0;
  v14[1] = sub_1008DFDDC;
  v15 = v0[15];
  v16 = v0[13];
  v17 = v0[6];

  return AsyncStream.Iterator.next(isolation:)(v17, 0, 0, v16);
}

uint64_t sub_1008DFDDC()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return _swift_task_switch(sub_1008DFED8, 0, 0);
}

uint64_t sub_1008DFED8()
{
  v1 = v0[20];
  v2 = v0[6];
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[19];
    (*(v0[14] + 8))(v0[15], v0[13]);

    v4 = v0[15];
    v5 = v0[12];
    v6 = v0[9];
    v8 = v0[5];
    v7 = v0[6];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v12 = v0[4];
    v11 = v0[5];
    v13 = v0[2];
    v14 = v0[3];
    v15 = *v2;

    v16 = *(v1 + 48);
    type metadata accessor for Transaction();
    sub_100018118(v2 + v16, v11, type metadata accessor for DiscoveredObject);
    v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v13;
    sub_100018118(v11, v18 + v17, type metadata accessor for DiscoveredObject);

    static Transaction.asyncTask(name:block:)();

    v19 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v20 = swift_task_alloc();
    v0[21] = v20;
    *v20 = v0;
    v20[1] = sub_1008DFDDC;
    v21 = v0[15];
    v22 = v0[13];
    v23 = v0[6];

    return AsyncStream.Iterator.next(isolation:)(v23, 0, 0, v22);
  }
}

uint64_t sub_1008E012C(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = type metadata accessor for ObservedAdvertisement(0);
  v2[9] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for DiscoveredObject(0);
  v2[15] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v7 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v2[19] = v7;
  v8 = *(v7 - 8);
  v2[20] = v8;
  v9 = *(v8 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_1008E032C, 0, 0);
}

uint64_t sub_1008E032C()
{
  v1 = (v0[8] + *(v0[15] + 36));
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_1008E03E8;
  v5 = v0[30];
  v6 = v0[7];

  return sub_10001A7EC(v5, v3, v2);
}

uint64_t sub_1008E03E8()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return _swift_task_switch(sub_1008E04E4, 0, 0);
}

uint64_t sub_1008E04E4()
{
  v137 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  sub_1000D2A70(*(v0 + 240), v1, &unk_1016C1120, &qword_1013C49D0);
  v4 = *(v3 + 48);
  *(v0 + 256) = v4;
  *(v0 + 264) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v1, 1, v2);
  v6 = *(v0 + 232);
  if (v5 == 1)
  {
    sub_10000B3A8(v6, &unk_1016C1120, &qword_1013C49D0);
    v8 = *(v0 + 256);
    v7 = *(v0 + 264);
    v9 = *(v0 + 224);
    v10 = *(v0 + 152);
    sub_1000D2A70(*(v0 + 240), v9, &unk_1016C1120, &qword_1013C49D0);
    v11 = v8(v9, 1, v10);
    v12 = *(v0 + 224);
    if (v11 == 1)
    {
      sub_10000B3A8(v12, &unk_1016C1120, &qword_1013C49D0);
      if (qword_101694A58 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 136);
      v14 = *(v0 + 64);
      v15 = type metadata accessor for Logger();
      sub_1000076D4(v15, qword_10177B5D8);
      sub_10002963C(v14, v13, type metadata accessor for DiscoveredObject);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.info.getter();
      v18 = os_log_type_enabled(v16, v17);
      v19 = *(v0 + 240);
      v20 = *(v0 + 136);
      if (v18)
      {
        v21 = *(v0 + 120);
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v136 = v23;
        *v22 = 136446210;
        v24 = sub_10001904C(*(v20 + *(v21 + 36)), *(v20 + *(v21 + 36) + 8));
        v26 = v25;
        sub_10001F210(v20, type metadata accessor for DiscoveredObject);
        v27 = sub_1000136BC(v24, v26, &v136);

        *(v22 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v16, v17, "Leech did not reconcile advertisement %{public}s)!", v22, 0xCu);
        sub_100007BAC(v23);

        sub_10000B3A8(v19, &unk_1016C1120, &qword_1013C49D0);
      }

      else
      {

        sub_10000B3A8(v19, &unk_1016C1120, &qword_1013C49D0);
        sub_10001F210(v20, type metadata accessor for DiscoveredObject);
      }

      v82 = *(v0 + 232);
      v81 = *(v0 + 240);
      v84 = *(v0 + 216);
      v83 = *(v0 + 224);
      v86 = *(v0 + 200);
      v85 = *(v0 + 208);
      v87 = *(v0 + 184);
      v88 = *(v0 + 192);
      v90 = *(v0 + 168);
      v89 = *(v0 + 176);
      v124 = *(v0 + 144);
      v125 = *(v0 + 136);
      v126 = *(v0 + 128);
      v127 = *(v0 + 112);
      v128 = *(v0 + 104);
      v130 = *(v0 + 96);
      v133 = *(v0 + 88);
      v135 = *(v0 + 80);

      v91 = *(v0 + 8);

      return v91();
    }

    else
    {
      v33 = *(v0 + 192);
      v32 = *(v0 + 200);
      v34 = *(v0 + 184);
      v131 = v33;
      v134 = *(v0 + 152);
      v36 = *(v0 + 120);
      v35 = *(v0 + 128);
      v37 = *(v0 + 112);
      v38 = *(v0 + 64);
      v39 = *(v0 + 72);
      sub_100018118(v12, v32, type metadata accessor for BeaconKeyManager.IndexInformation);
      sub_10002963C(v38, v35, type metadata accessor for DiscoveredObject);
      sub_10002963C(v32, v33, type metadata accessor for BeaconKeyManager.IndexInformation);
      *v37 = 0;
      *(v37 + 8) = 513;
      v40 = (v35 + v36[9]);
      v41 = *v40;
      v42 = v40[1];
      *(v37 + 16) = *v40;
      *(v37 + 24) = v42;
      *(v37 + 32) = *(v35 + v36[11]);
      *(v37 + 33) = *(v35 + v36[12]);
      v43 = (v35 + v36[13]);
      v44 = *v43;
      LOBYTE(v43) = v43[1];
      *(v37 + 34) = v44;
      *(v37 + 35) = v43;
      *(v37 + 36) = *(v35 + v36[15]);
      v45 = v36[7];
      v46 = v39[11];
      v47 = type metadata accessor for Date();
      (*(*(v47 - 8) + 16))(v37 + v46, v35 + v45, v47);
      *(v37 + v39[14]) = 0;
      v48 = v39[12];
      v49 = type metadata accessor for ObservedAdvertisement.Location(0);
      (*(*(v49 - 8) + 56))(v37 + v48, 1, 1, v49);
      v50 = v37 + v39[13];
      sub_10002963C(v131, v34, type metadata accessor for BeaconKeyManager.IndexInformation);
      v129 = type metadata accessor for UUID();
      (*(*(v129 - 8) + 16))(v50, v34);
      v51 = (v34 + *(v134 + 20));
      v53 = v51[3];
      v52 = v51[4];
      sub_1000035D0(v51, v53);
      sub_100029784(v41, v42);
      LOBYTE(v41) = sub_10002BD40(v53, v52);
      v54 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
      *(v50 + *(v54 + 20)) = v41 & 1;
      v55 = v51[4];
      sub_1000035D0(v51, v51[3]);
      v56 = *(v55 + 56);
      dispatch thunk of RawRepresentable.rawValue.getter();
      sub_10001F210(v131, type metadata accessor for BeaconKeyManager.IndexInformation);
      sub_10001F210(v35, type metadata accessor for DiscoveredObject);
      sub_10001F210(v34, type metadata accessor for BeaconKeyManager.IndexInformation);
      *(v50 + *(v54 + 24)) = *(v0 + 40);
      (*(*(v54 - 8) + 56))(v50, 0, 1, v54);
      if (qword_101694A58 != -1)
      {
        swift_once();
      }

      v57 = *(v0 + 200);
      v58 = *(v0 + 176);
      v132 = *(v0 + 168);
      v60 = *(v0 + 104);
      v59 = *(v0 + 112);
      v62 = *(v0 + 88);
      v61 = *(v0 + 96);
      v63 = *(v0 + 80);
      v64 = type metadata accessor for Logger();
      *(v0 + 280) = sub_1000076D4(v64, qword_10177B5D8);
      sub_10002963C(v59, v60, type metadata accessor for ObservedAdvertisement);
      sub_10002963C(v59, v61, type metadata accessor for ObservedAdvertisement);
      sub_10002963C(v59, v62, type metadata accessor for ObservedAdvertisement);
      sub_10002963C(v59, v63, type metadata accessor for ObservedAdvertisement);
      sub_10002963C(v57, v58, type metadata accessor for BeaconKeyManager.IndexInformation);
      sub_10002963C(v57, v132, type metadata accessor for BeaconKeyManager.IndexInformation);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v68 = *(v0 + 96);
        v67 = *(v0 + 104);
        v69 = *(v0 + 88);
        v70 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        *v70 = 141559811;
        *(v70 + 4) = 1752392040;
        *(v70 + 12) = 2081;
        v71 = sub_10001904C(*(v67 + 16), *(v67 + 24));
        v73 = v72;
        sub_10001F210(v67, type metadata accessor for ObservedAdvertisement);
        v74 = sub_1000136BC(v71, v73, &v136);

        *(v70 + 14) = v74;
        *(v70 + 22) = 2082;
        sub_10001993C(*(v68 + 32) & 0xB);
        v75 = sub_100019E48();
        v77 = v76;
        sub_10001F210(v68, type metadata accessor for ObservedAdvertisement);
        v78 = sub_1000136BC(v75, v77, &v136);

        *(v70 + 24) = v78;
        *(v70 + 32) = 2082;
        if (*(v69 + 35))
        {
          v79 = 0xE400000000000000;
          v80 = 1701736302;
        }

        else
        {
          *(v0 + 304) = *(*(v0 + 88) + 34);
          sub_1000198E8();
          v98 = FixedWidthInteger.data.getter();
          v100 = v99;
          v80 = Data.hexString.getter();
          v79 = v101;
          sub_100016590(v98, v100);
        }

        v102 = *(v0 + 168);
        v103 = *(v0 + 176);
        v104 = *(v0 + 80);
        sub_10001F210(*(v0 + 88), type metadata accessor for ObservedAdvertisement);
        v105 = sub_1000136BC(v80, v79, &v136);

        *(v70 + 34) = v105;
        *(v70 + 42) = 2082;
        v106 = sub_100018DE0(*(v104 + 32));
        v108 = v107;
        sub_10001F210(v104, type metadata accessor for ObservedAdvertisement);
        v109 = sub_1000136BC(v106, v108, &v136);

        *(v70 + 44) = v109;
        *(v70 + 52) = 2080;
        v110 = (v103 + *(v134 + 20));
        v111 = v110[4];
        sub_1000035D0(v110, v110[3]);
        v112 = *(v111 + 16);
        v113 = dispatch thunk of CustomStringConvertible.description.getter();
        v115 = v114;
        sub_10001F210(v103, type metadata accessor for BeaconKeyManager.IndexInformation);
        v116 = sub_1000136BC(v113, v115, &v136);

        *(v70 + 54) = v116;
        *(v70 + 62) = 2160;
        *(v70 + 64) = 1752392040;
        *(v70 + 72) = 2081;
        sub_100019588(&qword_101696930, &type metadata accessor for UUID);
        v117 = dispatch thunk of CustomStringConvertible.description.getter();
        v119 = v118;
        sub_10001F210(v102, type metadata accessor for BeaconKeyManager.IndexInformation);
        v120 = sub_1000136BC(v117, v119, &v136);

        *(v70 + 74) = v120;
        _os_log_impl(&_mh_execute_header, v65, v66, "Leech Reconciled advertisement %{private,mask.hash}s, multiPart: %{public}s, hint: %{public}s, Type18: %{public}s,\nindex: %s, beacon: %{private,mask.hash}s.", v70, 0x52u);
        swift_arrayDestroy();
      }

      else
      {
        v92 = *(v0 + 168);
        v93 = *(v0 + 176);
        v95 = *(v0 + 96);
        v94 = *(v0 + 104);
        v97 = *(v0 + 80);
        v96 = *(v0 + 88);

        sub_10001F210(v92, type metadata accessor for BeaconKeyManager.IndexInformation);
        sub_10001F210(v97, type metadata accessor for ObservedAdvertisement);
        sub_10001F210(v96, type metadata accessor for ObservedAdvertisement);
        sub_10001F210(v95, type metadata accessor for ObservedAdvertisement);
        sub_10001F210(v94, type metadata accessor for ObservedAdvertisement);
        sub_10001F210(v93, type metadata accessor for BeaconKeyManager.IndexInformation);
      }

      v121 = swift_task_alloc();
      *(v0 + 288) = v121;
      *v121 = v0;
      v121[1] = sub_1008E2114;
      v122 = *(v0 + 112);
      v123 = *(v0 + 56);

      return sub_10002DC2C(v122);
    }
  }

  else
  {
    sub_100018118(v6, *(v0 + 216), type metadata accessor for BeaconKeyManager.IndexInformation);
    v28 = swift_task_alloc();
    *(v0 + 272) = v28;
    *v28 = v0;
    v28[1] = sub_1008E1170;
    v29 = *(v0 + 216);
    v30 = *(v0 + 56);

    return sub_10002B558(v29);
  }
}

uint64_t sub_1008E1170(char a1)
{
  v2 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 305) = a1;

  return _swift_task_switch(sub_1008E1270, 0, 0);
}

uint64_t sub_1008E1270()
{
  v153 = v0;
  if ((*(v0 + 305) & 1) == 0)
  {
    if (qword_101694A58 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 208);
    v23 = *(v0 + 216);
    v24 = *(v0 + 144);
    v25 = *(v0 + 64);
    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177B5D8);
    sub_10002963C(v23, v22, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_10002963C(v25, v24, type metadata accessor for DiscoveredObject);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 240);
    v32 = *(v0 + 208);
    v31 = *(v0 + 216);
    v33 = *(v0 + 144);
    if (v29)
    {
      v142 = *(v0 + 120);
      v34 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      *v34 = 141558531;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      type metadata accessor for UUID();
      v149 = v30;
      sub_100019588(&qword_101696930, &type metadata accessor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v145 = v31;
      v37 = v36;
      sub_10001F210(v32, type metadata accessor for BeaconKeyManager.IndexInformation);
      v38 = sub_1000136BC(v35, v37, &v152);

      *(v34 + 14) = v38;
      *(v34 + 22) = 2082;
      v39 = sub_10001904C(*(v33 + *(v142 + 36)), *(v33 + *(v142 + 36) + 8));
      v41 = v40;
      sub_10001F210(v33, type metadata accessor for DiscoveredObject);
      v42 = sub_1000136BC(v39, v41, &v152);

      *(v34 + 24) = v42;
      _os_log_impl(&_mh_execute_header, v27, v28, "Leech Ignoring unsupported beacon %{private,mask.hash}s advertisement %{public}s!", v34, 0x20u);
      swift_arrayDestroy();

      sub_10001F210(v145, type metadata accessor for BeaconKeyManager.IndexInformation);
      sub_10000B3A8(v149, &unk_1016C1120, &qword_1013C49D0);
      goto LABEL_19;
    }

    sub_10001F210(v32, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_10001F210(v31, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_10000B3A8(v30, &unk_1016C1120, &qword_1013C49D0);
    v92 = v33;
LABEL_18:
    sub_10001F210(v92, type metadata accessor for DiscoveredObject);
    goto LABEL_19;
  }

  sub_10001F210(*(v0 + 216), type metadata accessor for BeaconKeyManager.IndexInformation);
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 224);
  v4 = *(v0 + 152);
  sub_1000D2A70(*(v0 + 240), v3, &unk_1016C1120, &qword_1013C49D0);
  v5 = v2(v3, 1, v4);
  v6 = *(v0 + 224);
  if (v5 == 1)
  {
    sub_10000B3A8(v6, &unk_1016C1120, &qword_1013C49D0);
    if (qword_101694A58 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 136);
    v8 = *(v0 + 64);
    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177B5D8);
    sub_10002963C(v8, v7, type metadata accessor for DiscoveredObject);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 240);
    v14 = *(v0 + 136);
    if (v12)
    {
      v15 = *(v0 + 120);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v152 = v17;
      *v16 = 136446210;
      v18 = sub_10001904C(*(v14 + *(v15 + 36)), *(v14 + *(v15 + 36) + 8));
      v20 = v19;
      sub_10001F210(v14, type metadata accessor for DiscoveredObject);
      v21 = sub_1000136BC(v18, v20, &v152);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "Leech did not reconcile advertisement %{public}s)!", v16, 0xCu);
      sub_100007BAC(v17);

      sub_10000B3A8(v13, &unk_1016C1120, &qword_1013C49D0);
LABEL_19:
      v94 = *(v0 + 232);
      v93 = *(v0 + 240);
      v96 = *(v0 + 216);
      v95 = *(v0 + 224);
      v98 = *(v0 + 200);
      v97 = *(v0 + 208);
      v99 = *(v0 + 184);
      v100 = *(v0 + 192);
      v102 = *(v0 + 168);
      v101 = *(v0 + 176);
      v137 = *(v0 + 144);
      v138 = *(v0 + 136);
      v139 = *(v0 + 128);
      v140 = *(v0 + 112);
      v141 = *(v0 + 104);
      v144 = *(v0 + 96);
      v148 = *(v0 + 88);
      v151 = *(v0 + 80);

      v103 = *(v0 + 8);

      return v103();
    }

    sub_10000B3A8(v13, &unk_1016C1120, &qword_1013C49D0);
    v92 = v14;
    goto LABEL_18;
  }

  v44 = *(v0 + 192);
  v43 = *(v0 + 200);
  v45 = *(v0 + 184);
  v146 = v44;
  v150 = *(v0 + 152);
  v47 = *(v0 + 120);
  v46 = *(v0 + 128);
  v48 = *(v0 + 112);
  v49 = *(v0 + 64);
  v50 = *(v0 + 72);
  sub_100018118(v6, v43, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_10002963C(v49, v46, type metadata accessor for DiscoveredObject);
  sub_10002963C(v43, v44, type metadata accessor for BeaconKeyManager.IndexInformation);
  *v48 = 0;
  *(v48 + 8) = 513;
  v51 = (v46 + v47[9]);
  v52 = *v51;
  v53 = v51[1];
  *(v48 + 16) = *v51;
  *(v48 + 24) = v53;
  *(v48 + 32) = *(v46 + v47[11]);
  *(v48 + 33) = *(v46 + v47[12]);
  v54 = (v46 + v47[13]);
  v55 = *v54;
  LOBYTE(v54) = v54[1];
  *(v48 + 34) = v55;
  *(v48 + 35) = v54;
  *(v48 + 36) = *(v46 + v47[15]);
  v56 = v47[7];
  v57 = v50[11];
  v58 = type metadata accessor for Date();
  (*(*(v58 - 8) + 16))(v48 + v57, v46 + v56, v58);
  *(v48 + v50[14]) = 0;
  v59 = v50[12];
  v60 = type metadata accessor for ObservedAdvertisement.Location(0);
  (*(*(v60 - 8) + 56))(v48 + v59, 1, 1, v60);
  v61 = v48 + v50[13];
  sub_10002963C(v146, v45, type metadata accessor for BeaconKeyManager.IndexInformation);
  v143 = type metadata accessor for UUID();
  (*(*(v143 - 8) + 16))(v61, v45);
  v62 = (v45 + *(v150 + 20));
  v64 = v62[3];
  v63 = v62[4];
  sub_1000035D0(v62, v64);
  sub_100029784(v52, v53);
  LOBYTE(v52) = sub_10002BD40(v64, v63);
  v65 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  *(v61 + *(v65 + 20)) = v52 & 1;
  v66 = v62[4];
  sub_1000035D0(v62, v62[3]);
  v67 = *(v66 + 56);
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_10001F210(v146, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_10001F210(v46, type metadata accessor for DiscoveredObject);
  sub_10001F210(v45, type metadata accessor for BeaconKeyManager.IndexInformation);
  *(v61 + *(v65 + 24)) = *(v0 + 40);
  (*(*(v65 - 8) + 56))(v61, 0, 1, v65);
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v68 = *(v0 + 200);
  v69 = *(v0 + 176);
  v147 = *(v0 + 168);
  v71 = *(v0 + 104);
  v70 = *(v0 + 112);
  v73 = *(v0 + 88);
  v72 = *(v0 + 96);
  v74 = *(v0 + 80);
  v75 = type metadata accessor for Logger();
  *(v0 + 280) = sub_1000076D4(v75, qword_10177B5D8);
  sub_10002963C(v70, v71, type metadata accessor for ObservedAdvertisement);
  sub_10002963C(v70, v72, type metadata accessor for ObservedAdvertisement);
  sub_10002963C(v70, v73, type metadata accessor for ObservedAdvertisement);
  sub_10002963C(v70, v74, type metadata accessor for ObservedAdvertisement);
  sub_10002963C(v68, v69, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_10002963C(v68, v147, type metadata accessor for BeaconKeyManager.IndexInformation);
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v76, v77))
  {
    v79 = *(v0 + 96);
    v78 = *(v0 + 104);
    v80 = *(v0 + 88);
    v81 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    *v81 = 141559811;
    *(v81 + 4) = 1752392040;
    *(v81 + 12) = 2081;
    v82 = sub_10001904C(*(v78 + 16), *(v78 + 24));
    v84 = v83;
    sub_10001F210(v78, type metadata accessor for ObservedAdvertisement);
    v85 = sub_1000136BC(v82, v84, &v152);

    *(v81 + 14) = v85;
    *(v81 + 22) = 2082;
    sub_10001993C(*(v79 + 32) & 0xB);
    v86 = sub_100019E48();
    v88 = v87;
    sub_10001F210(v79, type metadata accessor for ObservedAdvertisement);
    v89 = sub_1000136BC(v86, v88, &v152);

    *(v81 + 24) = v89;
    *(v81 + 32) = 2082;
    if (*(v80 + 35))
    {
      v90 = 0xE400000000000000;
      v91 = 1701736302;
    }

    else
    {
      *(v0 + 304) = *(*(v0 + 88) + 34);
      sub_1000198E8();
      v111 = FixedWidthInteger.data.getter();
      v113 = v112;
      v91 = Data.hexString.getter();
      v90 = v114;
      sub_100016590(v111, v113);
    }

    v115 = *(v0 + 168);
    v116 = *(v0 + 176);
    v117 = *(v0 + 80);
    sub_10001F210(*(v0 + 88), type metadata accessor for ObservedAdvertisement);
    v118 = sub_1000136BC(v91, v90, &v152);

    *(v81 + 34) = v118;
    *(v81 + 42) = 2082;
    v119 = sub_100018DE0(*(v117 + 32));
    v121 = v120;
    sub_10001F210(v117, type metadata accessor for ObservedAdvertisement);
    v122 = sub_1000136BC(v119, v121, &v152);

    *(v81 + 44) = v122;
    *(v81 + 52) = 2080;
    v123 = (v116 + *(v150 + 20));
    v124 = v123[4];
    sub_1000035D0(v123, v123[3]);
    v125 = *(v124 + 16);
    v126 = dispatch thunk of CustomStringConvertible.description.getter();
    v128 = v127;
    sub_10001F210(v116, type metadata accessor for BeaconKeyManager.IndexInformation);
    v129 = sub_1000136BC(v126, v128, &v152);

    *(v81 + 54) = v129;
    *(v81 + 62) = 2160;
    *(v81 + 64) = 1752392040;
    *(v81 + 72) = 2081;
    sub_100019588(&qword_101696930, &type metadata accessor for UUID);
    v130 = dispatch thunk of CustomStringConvertible.description.getter();
    v132 = v131;
    sub_10001F210(v115, type metadata accessor for BeaconKeyManager.IndexInformation);
    v133 = sub_1000136BC(v130, v132, &v152);

    *(v81 + 74) = v133;
    _os_log_impl(&_mh_execute_header, v76, v77, "Leech Reconciled advertisement %{private,mask.hash}s, multiPart: %{public}s, hint: %{public}s, Type18: %{public}s,\nindex: %s, beacon: %{private,mask.hash}s.", v81, 0x52u);
    swift_arrayDestroy();
  }

  else
  {
    v105 = *(v0 + 168);
    v106 = *(v0 + 176);
    v108 = *(v0 + 96);
    v107 = *(v0 + 104);
    v110 = *(v0 + 80);
    v109 = *(v0 + 88);

    sub_10001F210(v105, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_10001F210(v110, type metadata accessor for ObservedAdvertisement);
    sub_10001F210(v109, type metadata accessor for ObservedAdvertisement);
    sub_10001F210(v108, type metadata accessor for ObservedAdvertisement);
    sub_10001F210(v107, type metadata accessor for ObservedAdvertisement);
    sub_10001F210(v106, type metadata accessor for BeaconKeyManager.IndexInformation);
  }

  v134 = swift_task_alloc();
  *(v0 + 288) = v134;
  *v134 = v0;
  v134[1] = sub_1008E2114;
  v135 = *(v0 + 112);
  v136 = *(v0 + 56);

  return sub_10002DC2C(v135);
}

uint64_t sub_1008E2114()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_1008E23BC;
  }

  else
  {
    v3 = sub_1008E2228;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1008E2228()
{
  v1 = v0[30];
  v2 = v0[25];
  sub_10001F210(v0[14], type metadata accessor for ObservedAdvertisement);
  sub_10001F210(v2, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_10000B3A8(v1, &unk_1016C1120, &qword_1013C49D0);
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[23];
  v10 = v0[24];
  v12 = v0[21];
  v11 = v0[22];
  v15 = v0[18];
  v16 = v0[17];
  v17 = v0[16];
  v18 = v0[14];
  v19 = v0[13];
  v20 = v0[12];
  v21 = v0[11];
  v22 = v0[10];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1008E23BC()
{
  v43 = v0;
  v1 = v0[37];
  v2 = v0[35];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[37];
    v40 = v0[30];
    v6 = v0[25];
    v7 = v0[14];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v42 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = Error.localizedDescription.getter();
    v15 = sub_1000136BC(v13, v14, &v42);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Leech cannot save observedAdvertisement. error: %{public}s.", v8, 0xCu);
    sub_100007BAC(v9);

    sub_10001F210(v7, type metadata accessor for ObservedAdvertisement);
    sub_10001F210(v6, type metadata accessor for BeaconKeyManager.IndexInformation);
    v16 = v40;
  }

  else
  {
    v17 = v0[37];
    v18 = v0[30];
    v19 = v0[25];
    v20 = v0[14];

    sub_10001F210(v20, type metadata accessor for ObservedAdvertisement);
    sub_10001F210(v19, type metadata accessor for BeaconKeyManager.IndexInformation);
    v16 = v18;
  }

  sub_10000B3A8(v16, &unk_1016C1120, &qword_1013C49D0);
  v22 = v0[29];
  v21 = v0[30];
  v24 = v0[27];
  v23 = v0[28];
  v26 = v0[25];
  v25 = v0[26];
  v27 = v0[23];
  v28 = v0[24];
  v30 = v0[21];
  v29 = v0[22];
  v33 = v0[18];
  v34 = v0[17];
  v35 = v0[16];
  v36 = v0[14];
  v37 = v0[13];
  v38 = v0[12];
  v39 = v0[11];
  v41 = v0[10];

  v31 = v0[1];

  return v31();
}

uint64_t sub_1008E26C0()
{
  v1 = v0[23];
  v2 = v0[21];

  v3 = v0[6];

  return _swift_task_switch(sub_1008E2734, v3, 0);
}

uint64_t sub_1008E2734()
{
  v0[26] = v0[6];
  v0[27] = 0;
  v1 = swift_allocObject();
  v0[28] = v1;
  *(v1 + 16) = 0;
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];
  v3 = swift_task_alloc();
  v0[29] = v3;
  v4 = sub_1000BC4D4(&qword_101699B80, &unk_101392660);
  *v3 = v0;
  v3[1] = sub_10001F754;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000012, 0x80000001013C4900, sub_10001F63C, v1, v4);
}

uint64_t sub_1008E2844()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[30];
  }

  else
  {
    v7 = v2[32];

    v8 = v2[26];

    return _swift_task_switch(sub_10001F9F0, v8, 0);
  }
}

uint64_t sub_1008E298C()
{
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B5D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get key service.", v4, 2u);
  }

  v5 = *(v0 + 48);

  v6 = *(v0 + 8);

  return v6(0);
}

uint64_t sub_1008E2AAC()
{
  v28 = v0;
  v1 = v0[13];
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = v0[2];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177B5D8);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[10];
  v12 = v0[5];
  v11 = v0[6];
  v13 = v0[4];
  if (v9)
  {
    v26 = v0[10];
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_100019588(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000136BC(v15, v17, &v27);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v19;
    *v24 = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to determine beacon info %{private,mask.hash}s. %@", v14, 0x20u);
    sub_10000B3A8(v24, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v25);
  }

  else
  {
    v20 = v0[10];

    (*(v12 + 8))(v11, v13);
  }

  v21 = v0[6];

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_1008E2D9C()
{
  v28 = v0;
  v1 = v0[15];
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = v0[2];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177B5D8);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[10];
  v12 = v0[5];
  v11 = v0[6];
  v13 = v0[4];
  if (v9)
  {
    v26 = v0[10];
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_100019588(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000136BC(v15, v17, &v27);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v19;
    *v24 = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to determine beacon info %{private,mask.hash}s. %@", v14, 0x20u);
    sub_10000B3A8(v24, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v25);
  }

  else
  {
    v20 = v0[10];

    (*(v12 + 8))(v11, v13);
  }

  v21 = v0[6];

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_1008E308C()
{
  v1 = v0[9];
  v2 = v0[20];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[6];
  (*(v0[8] + 8))(v0[12], v0[7]);
  (*(v4 + 8))(v3, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1008E3178()
{
  v1 = v0[19];
  v2 = v0[8];

  v12 = v0[22];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  v9 = v0[6];
  (*(v2 + 8))(v0[12], v0[7]);
  (*(v4 + 8))(v3, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1008E3278()
{
  v1 = v0[24];
  v2 = v0[19];
  v3 = v0[11];
  v4 = v0[7];
  v5 = v0[8];

  v1(v3, v4);
  v15 = v0[26];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[13];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];
  v12 = v0[6];
  (v0[24])(v0[12], v0[7]);
  (*(v7 + 8))(v6, v8);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1008E3398(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 264);
  v5 = *v1;
  v3[34] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[35] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019588(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v7 = v5;
  v7[1] = sub_1008E354C;
  v10 = v3[28];
  v11 = v3[27];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1008E354C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 280);
  v5 = *v2;
  *(*v2 + 288) = a1;

  v6 = *(v3 + 272);
  v7 = *(v3 + 40);
  if (v1)
  {

    v8 = sub_1008E47DC;
  }

  else
  {

    v8 = sub_1008E36B0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1008E36B0()
{
  v1 = v0[4];
  v0[37] = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[38] = v2;
  v3 = v0[36];
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = v0[29];
    sub_10001F210(v0[23], type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

    v7 = v0[22];
    v6 = v0[23];
    v9 = v0[18];
    v8 = v0[19];
    v11 = v0[14];
    v10 = v0[15];
    v12 = v0[11];
    v13 = v0[8];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v4 = v0[36];

    return _swift_task_switch(sub_1008E3804, v4, 0);
  }
}

uint64_t sub_1008E3804()
{
  v1 = v0[36];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[39] = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  v0[40] = v4;
  *v3 = v0;
  v3[1] = sub_1008E38E8;
  v5 = v0[36];

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v5, v4);
}

uint64_t sub_1008E38E8()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 288);
  v4 = *v0;

  return _swift_task_switch(sub_1008E3A00, v2, 0);
}

uint64_t sub_1008E3A00()
{
  v1 = v0[5];
  v0[41] = v0[2];
  return _swift_task_switch(sub_1008E3A24, v1, 0);
}

uint64_t sub_1008E3A24()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 120);
  *(v0 + 336) = *(*(v0 + 328) + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v4 = *(v1 + *(v2 + 20));
  *(v0 + 432) = v4;
  v5 = getuid();
  sub_1000294F0(v5);
  v6 = swift_task_alloc();
  *(v0 + 344) = v6;
  *v6 = v0;
  v6[1] = sub_1008E3B20;
  v7 = *(v0 + 184);
  v8 = *(v0 + 120);

  return sub_100686048(v8, v7, v4);
}

uint64_t sub_1008E3B20(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 344);
  v7 = *v3;
  v5[44] = a1;
  v5[45] = a2;
  v5[46] = v2;

  v8 = v4[42];
  v9 = v4[15];
  v10 = v4[13];
  v11 = v4[12];
  v12 = v4[5];
  v15 = *(v10 + 8);
  v13 = v10 + 8;
  v14 = v15;
  if (v2)
  {
    v14(v9, v11);

    v16 = sub_1008E4D28;
  }

  else
  {
    v5[47] = v14;
    v5[48] = v13 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v9, v11);

    v16 = sub_1008E3CEC;
  }

  return _swift_task_switch(v16, v12, 0);
}

uint64_t sub_1008E3CEC()
{
  v1 = v0[45];
  if (v1 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v2 = v0[44];
  v4 = v0[37];
  v3 = v0[38];
  sub_10002E98C(v2, v0[45]);
  sub_100029784(v4, v3);
  v5 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v2, v1, v4, v3);
  sub_10001E524(v4, v3);
  sub_100006654(v2, v1);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    v19 = v0[36];

    return _swift_task_switch(sub_1008E3E98, v19, 0);
  }

  else
  {
    v6 = v0[36];
    v7 = v0[29];
    v8 = v0[23];
    sub_100006654(v0[44], v0[45]);

    sub_10001F210(v8, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    v10 = v0[22];
    v9 = v0[23];
    v12 = v0[18];
    v11 = v0[19];
    v14 = v0[14];
    v13 = v0[15];
    v15 = v0[11];
    v16 = v0[8];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1008E3E98()
{
  v1 = v0[36];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[49] = v3;
  *v3 = v0;
  v3[1] = sub_1008E3F70;
  v4 = v0[40];
  v5 = v0[36];

  return unsafeBlocking<A>(context:_:)(v0 + 3, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_1008E3F70()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 288);
  v4 = *v0;

  return _swift_task_switch(sub_1008E4088, v2, 0);
}

uint64_t sub_1008E4088()
{
  v1 = v0[5];
  v0[50] = v0[3];
  return _swift_task_switch(sub_1008E40AC, v1, 0);
}

uint64_t sub_1008E40AC()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[14];
  v4 = *(v0[50] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v0[51] = v4;

  v0[52] = *(v1 + *(v2 + 24));
  v5 = getuid();
  sub_1000294F0(v5);

  return _swift_task_switch(sub_1008E4168, v4, 0);
}

uint64_t sub_1008E4168()
{
  v1 = *(v0 + 408);
  v2 = *(v1 + 112);
  if (!v2)
  {
    sub_10020223C();
    v13 = swift_allocError();
    *v19 = 2;
    *(v19 + 4) = 1;
    swift_willThrow();
LABEL_7:

    goto LABEL_8;
  }

  v3 = *(v1 + 112);

  v4 = sub_1002072CC();
  if (!v4)
  {
    v20 = *(v0 + 408);
    sub_10020223C();
    v13 = swift_allocError();
    *v21 = 2;
    *(v21 + 4) = 1;
    swift_willThrow();

    goto LABEL_7;
  }

  v5 = v4;
  v39 = *(v0 + 416);
  v42 = *(v0 + 368);
  v6 = *(v0 + 432);
  v37 = *(v0 + 304);
  v7 = *(v0 + 184);
  v8 = *(v0 + 112);
  v9 = *(v0 + 88);
  v10 = *(v0 + 64);
  v11 = *(v0 + 56);
  v33 = *(v0 + 296);
  v35 = *(v0 + 48);
  (*(*(v0 + 80) + 16))(v9, v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_keys, *(v0 + 72));
  v12 = swift_task_alloc();
  *(v12 + 16) = v9;
  *(v12 + 24) = v8;
  *(v12 + 32) = v7;
  *(v12 + 40) = v6;
  *(v12 + 48) = v39;
  *(v12 + 56) = v33;
  *(v12 + 64) = v37;
  *(v12 + 72) = v5;
  (*(v11 + 104))(v10, enum case for Connection.TransactionMode.deferred(_:), v35);
  Connection.transaction(_:block:)();
  v13 = v42;
  v14 = *(v0 + 408);
  if (v42)
  {
    v15 = *(v0 + 80);
    v16 = *(v0 + 64);
    v40 = *(v0 + 72);
    v43 = *(v0 + 88);
    v18 = *(v0 + 48);
    v17 = *(v0 + 56);

    (*(v17 + 8))(v16, v18);

    (*(v15 + 8))(v43, v40);
LABEL_8:
    *(v0 + 424) = v13;
    v22 = *(v0 + 384);
    v23 = *(v0 + 40);
    (*(v0 + 376))(*(v0 + 112), *(v0 + 96));
    v24 = sub_1008E46D4;
    v25 = v23;
    goto LABEL_9;
  }

  v38 = *(v0 + 376);
  v41 = *(v0 + 384);
  v44 = *(v0 + 288);
  v34 = *(v0 + 96);
  v36 = *(v0 + 112);
  v32 = *(v0 + 88);
  v27 = *(v0 + 72);
  v26 = *(v0 + 80);
  v29 = *(v0 + 56);
  v28 = *(v0 + 64);
  v30 = *(v0 + 48);

  (*(v29 + 8))(v28, v30);

  (*(v26 + 8))(v32, v27);
  v38(v36, v34);
  v24 = sub_1008E4480;
  v25 = v44;
LABEL_9:

  return _swift_task_switch(v24, v25, 0);
}

uint64_t sub_1008E4480()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 288) + 128);
  sub_100A8AF58();

  return _swift_task_switch(sub_1008E44F0, v1, 0);
}

uint64_t sub_1008E44F0()
{
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE40);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[36];
  v8 = v0[29];
  v9 = v0[23];
  if (v4)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Posted beacons set changed darwin notification for imported beacon.", v10, 2u);

    sub_100006654(v6, v5);
  }

  else
  {
    sub_100006654(v0[44], v0[45]);
  }

  sub_10001F210(v9, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  v12 = v0[22];
  v11 = v0[23];
  v14 = v0[18];
  v13 = v0[19];
  v16 = v0[14];
  v15 = v0[15];
  v17 = v0[11];
  v18 = v0[8];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1008E46D4()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[36];
  v4 = v0[29];
  v5 = v0[23];

  sub_100006654(v1, v2);
  sub_10001F210(v5, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  v6 = v0[53];
  v8 = v0[22];
  v7 = v0[23];
  v10 = v0[18];
  v9 = v0[19];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[11];
  v14 = v0[8];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1008E47DC()
{
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B5D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[29];
  v6 = v0[23];
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No BeaconStoreActor available!", v7, 2u);
  }

  sub_10001F210(v6, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  v9 = v0[22];
  v8 = v0[23];
  v11 = v0[18];
  v10 = v0[19];
  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[11];
  v15 = v0[8];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1008E4980()
{
  v27 = v0;
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[23];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B5D8);
  sub_10002963C(v2, v1, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[22];
  v7 = v0[23];
  if (v6)
  {
    v9 = v0[12];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    sub_100019588(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_10001F210(v8, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    v15 = sub_1000136BC(v12, v14, &v26);

    *(v10 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Cannot add imported beacon adv to Keys DB %{private,mask.hash}s:\nmissing BeaconKeyService.", v10, 0x16u);
    sub_100007BAC(v11);
  }

  else
  {

    sub_10001F210(v8, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  }

  sub_10001F210(v7, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  v17 = v0[22];
  v16 = v0[23];
  v19 = v0[18];
  v18 = v0[19];
  v21 = v0[14];
  v20 = v0[15];
  v22 = v0[11];
  v23 = v0[8];

  v24 = v0[1];

  return v24();
}

uint64_t sub_1008E4C3C()
{
  v1 = v0[29];
  v2 = v0[23];

  sub_10001F210(v2, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  v3 = v0[32];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[18];
  v6 = v0[19];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[11];
  v11 = v0[8];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1008E4D28()
{
  v1 = v0[36];
  v2 = v0[29];
  v3 = v0[23];

  sub_10001F210(v3, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  v4 = v0[46];
  v6 = v0[22];
  v5 = v0[23];
  v8 = v0[18];
  v7 = v0[19];
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[11];
  v12 = v0[8];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1008E4E20()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[16];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  (*(v6 + 16))(v4, v0[17], v7);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  v0[26] = v9;
  *(v9 + 16) = v3;
  v2(v9 + v8, v4, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  v0[27] = v11;
  v12 = sub_1000BC4D4(&qword_1016A78F0, &qword_1013DBEC0);
  *v11 = v0;
  v11[1] = sub_1008E4F8C;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_10002F3E4, v9, v12);
}

uint64_t sub_1008E4F8C()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 184);
  v5 = *v0;

  return _swift_task_switch(sub_1008E50B8, v3, 0);
}

uint64_t sub_1008E50B8()
{
  v1 = v0[4];
  (*(v0[14] + 8))(v0[17], v0[13]);
  v0[28] = v0[2];

  return _swift_task_switch(sub_1008E513C, v1, 0);
}

uint64_t sub_1008E513C()
{
  v1 = *(v0 + 224);
  v2 = *(v1 + 16);
  *(v0 + 232) = v2;
  if (v2)
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 40);
    v5 = *(v0 + 24);
    v6 = v5[32];
    *(v0 + 280) = v6;
    v7 = *(type metadata accessor for ObservedAdvertisement(0) + 44);
    *(v0 + 272) = v7;
    *(v0 + 281) = v5[9];
    *(v0 + 282) = v5[34];
    *(v0 + 283) = v5[35];
    v8 = *(v3 + 80);
    *(v0 + 276) = v8;
    *(v0 + 240) = *(v3 + 72);
    *(v0 + 248) = 0;
    v9 = *(v0 + 184);
    v10 = *(v0 + 88);
    v11 = *(v0 + 72);
    sub_10002963C(v1 + ((v8 + 32) & ~v8), v10, type metadata accessor for WildModeAssociationRecord);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 16))(v11, v10, v12);
    sub_10001F210(v10, type metadata accessor for WildModeAssociationRecord);
    v13 = v4[6];
    v14 = type metadata accessor for Date();
    (*(*(v14 - 8) + 16))(v11 + v13, &v5[v7], v14);
    *(v11 + v4[5]) = v6;
    *(v11 + v4[7]) = xmmword_10139D930;
    *(v11 + v4[8]) = 1;
    *(v11 + v4[9]) = 0;

    return _swift_task_switch(sub_1008E539C, v9, 0);
  }

  else
  {

    v15 = *(v0 + 184);
    sub_10001E524(*(v0 + 144), *(v0 + 152));

    v17 = *(v0 + 128);
    v16 = *(v0 + 136);
    v19 = *(v0 + 88);
    v18 = *(v0 + 96);
    v21 = *(v0 + 64);
    v20 = *(v0 + 72);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1008E539C()
{
  v1 = *(v0 + 283);
  v2 = *(v0 + 281);
  v3 = *(v0 + 184);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  sub_10002963C(*(v0 + 72), v4, type metadata accessor for BeaconStatus);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = v7 + v5;
  v9 = swift_allocObject();
  *(v0 + 256) = v9;
  *(v9 + 16) = v3;
  sub_100018118(v4, v9 + v7, type metadata accessor for BeaconStatus);
  v10 = v9 + v8;
  *v10 = v2;
  *(v10 + 2) = v1;
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 264) = v12;
  *v12 = v0;
  v12[1] = sub_1008E551C;

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1008EB0F8, v9, &type metadata for () + 8);
}

uint64_t sub_1008E551C()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 184);
  v5 = *v0;

  return _swift_task_switch(sub_1008E5648, v3, 0);
}

uint64_t sub_1008E5648()
{
  v1 = *(v0 + 32);
  sub_10001F210(*(v0 + 72), type metadata accessor for BeaconStatus);

  return _swift_task_switch(sub_1008E56C8, v1, 0);
}

uint64_t sub_1008E56C8()
{
  v1 = *(v0 + 248) + 1;
  if (v1 == *(v0 + 232))
  {
    v2 = *(v0 + 224);

    v3 = *(v0 + 184);
    sub_10001E524(*(v0 + 144), *(v0 + 152));

    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    *(v0 + 248) = v1;
    v12 = *(v0 + 272);
    v13 = *(v0 + 280);
    v14 = *(v0 + 184);
    v15 = *(v0 + 88);
    v16 = *(v0 + 72);
    v17 = *(v0 + 40);
    v18 = *(v0 + 24);
    sub_10002963C(*(v0 + 224) + ((*(v0 + 276) + 32) & ~*(v0 + 276)) + *(v0 + 240) * v1, v15, type metadata accessor for WildModeAssociationRecord);
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 16))(v16, v15, v19);
    sub_10001F210(v15, type metadata accessor for WildModeAssociationRecord);
    v20 = v17[6];
    v21 = type metadata accessor for Date();
    (*(*(v21 - 8) + 16))(v16 + v20, v18 + v12, v21);
    *(v16 + v17[5]) = v13;
    *(v16 + v17[7]) = xmmword_10139D930;
    *(v16 + v17[8]) = 1;
    *(v16 + v17[9]) = 0;

    return _swift_task_switch(sub_1008E539C, v14, 0);
  }
}

uint64_t sub_1008E5900()
{
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B5D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[18];
  v5 = v0[19];
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No BeaconStoreActor available!", v7, 2u);
  }

  sub_10001E524(v6, v5);

  v9 = v0[16];
  v8 = v0[17];
  v11 = v0[11];
  v10 = v0[12];
  v13 = v0[8];
  v12 = v0[9];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1008E5A64()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v5 = *v0;

  return _swift_task_switch(sub_1008E5B90, v3, 0);
}

uint64_t sub_1008E5B90()
{
  v1 = *(v0 + 24);
  sub_10001F210(*(v0 + 64), type metadata accessor for BeaconStatus);

  return _swift_task_switch(sub_10002D404, v1, 0);
}

uint64_t sub_1008E5C10()
{
  v1 = v0[17];

  v2 = v0[20];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[11];

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_1008E5C9C()
{
  v1 = v0[19];

  v2 = v0[23];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[11];

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_1008E5D28()
{
  v19 = v0;
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = v0[29];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B5D8);
  sub_10002963C(v1, v2, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[32];
    v7 = v0[29];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_100019588(&qword_101696930, &type metadata accessor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_10001F210(v7, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    v13 = sub_1000136BC(v10, v12, &v18);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Not a managed periphereral: %{private,mask.hash}s", v8, 0x16u);
    sub_100007BAC(v9);
  }

  else
  {
    v14 = v0[29];

    sub_10001F210(v14, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  }

  v15 = async function pointer to daemon.getter[1];
  v16 = swift_task_alloc();
  v0[36] = v16;
  *v16 = v0;
  v16[1] = sub_1008E615C;

  return daemon.getter();
}

uint64_t sub_1008E5FAC()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;

  if (v0)
  {
    v7 = v2 + 12;
    v5 = v2[12];
    v6 = v7[1];

    sub_10000B3A8(v6, &unk_10169BB50, &unk_101395760);

    return _swift_task_switch(sub_100039464, v5, 0);
  }

  else
  {
    sub_10000B3A8(v2[13], &unk_10169BB50, &unk_101395760);
    v8 = async function pointer to daemon.getter[1];
    v9 = swift_task_alloc();
    v2[36] = v9;
    *v9 = v4;
    v9[1] = sub_1008E615C;

    return daemon.getter();
  }
}

uint64_t sub_1008E615C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 288);
  v12 = *v1;
  v3[37] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[38] = v6;
  v7 = type metadata accessor for Daemon();
  v3[39] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v9 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[40] = v9;
  v10 = sub_100019588(&unk_101698D70, type metadata accessor for LegacyServiceContainer);
  *v6 = v12;
  v6[1] = sub_1008E633C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1008E633C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  v4[41] = a1;
  v4[42] = v1;

  if (v1)
  {
    v7 = v4[37];

    v4[45] = 0;
    v8 = async function pointer to daemon.getter[1];
    v9 = swift_task_alloc();
    v4[46] = v9;
    *v9 = v6;
    v9[1] = sub_1008E68A8;

    return daemon.getter();
  }

  else
  {

    return _swift_task_switch(sub_1008E64D4, a1, 0);
  }
}

uint64_t sub_1008E64D4()
{
  v1 = v0[41];
  v2 = v0[42];
  sub_10001B108();
  v0[43] = v3;
  v4 = v0[39];
  v5 = v0[37];
  if (v2)
  {

    sub_100019588(&qword_1016969E0, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    v9 = sub_1008E6800;
  }

  else
  {
    sub_100019588(&qword_1016969E0, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v10;
    v9 = sub_1008E65FC;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_1008E65FC()
{
  v1 = v0[41];
  v2 = v0[37];

  v3 = swift_task_alloc();
  v0[44] = v3;
  *v3 = v0;
  v3[1] = sub_1008E66B8;
  v4 = v0[31];

  return sub_1006FE608(v4);
}

uint64_t sub_1008E66B8()
{
  v1 = *v0;
  v2 = *(*v0 + 352);
  v3 = *v0;

  v1[45] = v1[43];
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v1[46] = v5;
  *v5 = v3;
  v5[1] = sub_1008E68A8;

  return daemon.getter();
}

uint64_t sub_1008E6800()
{
  v1 = v0[41];
  v2 = v0[37];

  v0[45] = 0;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v0[46] = v4;
  *v4 = v0;
  v4[1] = sub_1008E68A8;

  return daemon.getter();
}

uint64_t sub_1008E68A8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 368);
  v5 = *v1;
  v3[47] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[48] = v7;
  v8 = type metadata accessor for BeaconSharingService(0);
  v9 = sub_100019588(&unk_101696950, type metadata accessor for BeaconSharingService);
  *v7 = v5;
  v7[1] = sub_1008E6A5C;
  v10 = v3[40];
  v11 = v3[39];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1008E6A5C(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 384);
  v7 = *v2;

  v8 = *(v4 + 376);
  v9 = *(v4 + 96);
  if (v1)
  {

    v10 = sub_1008E6E14;
  }

  else
  {

    *(v5 + 392) = a1;
    v10 = sub_1008E6BC4;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1008E6BC4()
{
  v1 = *(v0 + 392);

  return _swift_task_switch(sub_1008E6C34, v1, 0);
}

uint64_t sub_1008E6C34()
{
  v1 = *(v0[49] + 200);
  v2 = swift_task_alloc();
  v0[50] = v2;
  *v2 = v0;
  v2[1] = sub_1008E6CE8;
  v3 = v0[31];

  return sub_100044130(v3, v1);
}

uint64_t sub_1008E6CE8()
{
  v1 = *(*v0 + 400);
  v2 = *(*v0 + 392);
  v3 = *(*v0 + 96);
  v5 = *v0;

  return _swift_task_switch(sub_100039C64, v3, 0);
}

uint64_t sub_1008E6E14()
{
  v1 = v0[45];
  v2 = v0[31];
  v3 = v0[25];
  v4 = v0[22];

  sub_10001F210(v4, type metadata accessor for ObservedAdvertisement);
  sub_10001F210(v3, type metadata accessor for BeaconIdentifier);
  sub_10001F210(v2, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[29];
  v9 = v0[25];
  v8 = v0[26];
  v10 = v0[24];
  v12 = v0[21];
  v11 = v0[22];
  v14 = v0[19];
  v13 = v0[20];
  v17 = v0[18];
  v18 = v0[17];
  v19 = v0[14];
  v20 = v0[13];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1008E6F88()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 152);
  if (v0)
  {
    v6 = sub_1008E8518;
  }

  else
  {
    v6 = sub_1008E70B4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1008E70B4()
{
  sub_10001F210(v0[39], type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[30];
  v7 = v0[28];
  v8 = v0[24];
  v9 = v0[21];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1008E71A0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 344);
  v12 = *v1;
  *(v3 + 352) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 360) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019588(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1008E737C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1008E737C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 360);
  v6 = *v2;
  v4[46] = a1;

  v7 = v4[44];
  if (v1)
  {
    a1 = v4[19];

    v8 = sub_1008E836C;
  }

  else
  {

    v8 = sub_1008E74D4;
  }

  return _swift_task_switch(v8, a1, 0);
}

uint64_t sub_1008E74D4()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 312);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v6 + 16);
  *(v0 + 376) = v7;
  *(v0 + 384) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v2, v5);
  v8 = *(v6 + 80);
  *(v0 + 472) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 392) = v10;
  *(v10 + 16) = v1;
  v11 = *(v6 + 32);
  *(v0 + 400) = v11;
  *(v0 + 408) = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v3, v5);
  v12 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v13 = swift_task_alloc();
  *(v0 + 416) = v13;
  *v13 = v0;
  v13[1] = sub_1008E7654;
  v15 = *(v0 + 232);
  v14 = *(v0 + 240);

  return unsafeBlocking<A>(context:_:)(v14, 0xD000000000000010, 0x800000010134A8C0, sub_1008EAC14, v10, v15);
}

uint64_t sub_1008E7654()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 392);
  v3 = *(*v0 + 152);
  v5 = *v0;

  return _swift_task_switch(sub_1008E7780, v3, 0);
}

uint64_t sub_1008E7780()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 240);
  if ((*(*(v0 + 256) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 368);
    sub_10000B3A8(v2, &unk_1016A9A20, &qword_10138B280);

    return _swift_task_switch(sub_1008E7B90, v3, 0);
  }

  else
  {
    v4 = *(v0 + 320);
    v5 = *(v0 + 264);
    v6 = *(v0 + 144);
    sub_100018118(v2, v5, type metadata accessor for OwnedBeaconRecord);
    v7 = *(v4 + 44);
    *(v0 + 120) = v1;
    *(v0 + 128) = sub_100019588(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
    v8 = sub_1000280DC((v0 + 96));
    sub_10002963C(v5, v8, type metadata accessor for OwnedBeaconRecord);
    v9 = swift_task_alloc();
    *(v0 + 424) = v9;
    *v9 = v0;
    v9[1] = sub_1008E794C;
    v10 = *(v0 + 477);

    return sub_1010B950C(v0 + 16, v10, v6 + v7, v0 + 96);
  }
}

uint64_t sub_1008E794C()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v8 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = sub_1008E88EC;
  }

  else
  {
    v6 = *(v2 + 152);
    sub_100007BAC((v2 + 96));
    v5 = sub_1008E7A74;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1008E7A74()
{
  v1 = v0[46];
  v2 = v0[33];

  sub_10001F210(v2, type metadata accessor for OwnedBeaconRecord);
  sub_10001F210(v0[39], type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100007BAC(v0 + 2);
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[37];
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[30];
  v9 = v0[28];
  v10 = v0[24];
  v11 = v0[21];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1008E7B90()
{
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 384);
  v4 = *(v0 + 368);
  v5 = *(v0 + 224);
  v6 = *(v0 + 200);
  v7 = (*(v0 + 472) + 24) & ~*(v0 + 472);
  (*(v0 + 376))(v5, *(v0 + 312), v6);
  v8 = swift_allocObject();
  *(v0 + 440) = v8;
  *(v8 + 16) = v4;
  v2(v8 + v7, v5, v6);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 448) = v10;
  *v10 = v0;
  v10[1] = sub_1008E7CDC;
  v12 = *(v0 + 160);
  v11 = *(v0 + 168);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_1008EAC2C, v8, v12);
}

uint64_t sub_1008E7CDC()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 440);
  v3 = *(*v0 + 152);
  v5 = *v0;

  return _swift_task_switch(sub_1008E7E08, v3, 0);
}

uint64_t sub_1008E7E08()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);
  if ((*(*(v0 + 184) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_101698C30, &unk_101392630);
    if (qword_1016944F0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177A7D8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 368);
    if (v6)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Not updating key sync metadata for unreconciled advertisement.", v8, 2u);
    }

    else
    {
      v17 = *(v0 + 368);
    }

    sub_10001F210(*(v0 + 312), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100007BAC((v0 + 16));
    v19 = *(v0 + 304);
    v18 = *(v0 + 312);
    v20 = *(v0 + 296);
    v22 = *(v0 + 264);
    v21 = *(v0 + 272);
    v23 = *(v0 + 240);
    v24 = *(v0 + 224);
    v25 = *(v0 + 192);
    v26 = *(v0 + 168);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v9 = *(v0 + 320);
    v10 = *(v0 + 192);
    v11 = *(v0 + 144);
    sub_100018118(v2, v10, type metadata accessor for SharedBeaconRecord);
    v12 = *(v9 + 44);
    *(v0 + 80) = v1;
    *(v0 + 88) = sub_100019588(&qword_101698D80, type metadata accessor for SharedBeaconRecord);
    v13 = sub_1000280DC((v0 + 56));
    sub_10002963C(v10, v13, type metadata accessor for SharedBeaconRecord);
    v14 = swift_task_alloc();
    *(v0 + 456) = v14;
    *v14 = v0;
    v14[1] = sub_1008E8128;
    v15 = *(v0 + 477);

    return sub_1010B950C(v0 + 16, v15, v11 + v12, v0 + 56);
  }
}

uint64_t sub_1008E8128()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v8 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = sub_1008E8CF8;
  }

  else
  {
    v6 = *(v2 + 152);
    sub_100007BAC((v2 + 56));
    v5 = sub_1008E8250;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1008E8250()
{
  v1 = v0[46];
  v2 = v0[24];

  sub_10001F210(v2, type metadata accessor for SharedBeaconRecord);
  sub_10001F210(v0[39], type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100007BAC(v0 + 2);
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[37];
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[30];
  v9 = v0[28];
  v10 = v0[24];
  v11 = v0[21];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1008E836C()
{
  if (qword_1016944F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A7D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to get BeaconStoreActor!", v4, 2u);
  }

  v5 = v0[39];

  sub_10001F210(v5, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100007BAC(v0 + 2);
  v7 = v0[38];
  v6 = v0[39];
  v8 = v0[37];
  v10 = v0[33];
  v9 = v0[34];
  v11 = v0[30];
  v12 = v0[28];
  v13 = v0[24];
  v14 = v0[21];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1008E8518()
{
  v34 = v0;
  *(v0 + 136) = *(v0 + 336);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 476) == 1)
  {
    sub_10001F210(*(v0 + 312), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

    v1 = *(v0 + 136);
  }

  else
  {
    v2 = *(v0 + 136);

    if (qword_1016944F0 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 312);
    v4 = *(v0 + 296);
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177A7D8);
    sub_10002963C(v3, v4, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 312);
    v10 = *(v0 + 296);
    if (v8)
    {
      v11 = *(v0 + 200);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v33 = v14;
      *v12 = 138543875;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      *(v12 + 12) = 2160;
      *(v12 + 14) = 1752392040;
      *(v12 + 22) = 2081;
      sub_100019588(&qword_101696930, &type metadata accessor for UUID);
      v32 = v9;
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      sub_10001F210(v10, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v19 = sub_1000136BC(v16, v18, &v33);

      *(v12 + 24) = v19;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to update key sync metadata %{public}@ for %{private,mask.hash}s.", v12, 0x20u);
      sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v14);

      v20 = v32;
    }

    else
    {

      sub_10001F210(v10, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v20 = v9;
    }

    sub_10001F210(v20, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  }

  v22 = *(v0 + 304);
  v21 = *(v0 + 312);
  v23 = *(v0 + 296);
  v25 = *(v0 + 264);
  v24 = *(v0 + 272);
  v26 = *(v0 + 240);
  v27 = *(v0 + 224);
  v28 = *(v0 + 192);
  v29 = *(v0 + 168);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1008E88EC()
{
  v36 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 264);

  sub_10001F210(v2, type metadata accessor for OwnedBeaconRecord);
  sub_100007BAC((v0 + 16));
  sub_100007BAC((v0 + 96));
  *(v0 + 136) = *(v0 + 432);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 476) == 1)
  {
    sub_10001F210(*(v0 + 312), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

    v3 = *(v0 + 136);
  }

  else
  {
    v4 = *(v0 + 136);

    if (qword_1016944F0 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 312);
    v6 = *(v0 + 296);
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177A7D8);
    sub_10002963C(v5, v6, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 312);
    v12 = *(v0 + 296);
    if (v10)
    {
      v13 = *(v0 + 200);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v35 = v16;
      *v14 = 138543875;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      *(v14 + 12) = 2160;
      *(v14 + 14) = 1752392040;
      *(v14 + 22) = 2081;
      sub_100019588(&qword_101696930, &type metadata accessor for UUID);
      v34 = v11;
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      sub_10001F210(v12, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v21 = sub_1000136BC(v18, v20, &v35);

      *(v14 + 24) = v21;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to update key sync metadata %{public}@ for %{private,mask.hash}s.", v14, 0x20u);
      sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v16);

      v22 = v34;
    }

    else
    {

      sub_10001F210(v12, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v22 = v11;
    }

    sub_10001F210(v22, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  }

  v24 = *(v0 + 304);
  v23 = *(v0 + 312);
  v25 = *(v0 + 296);
  v27 = *(v0 + 264);
  v26 = *(v0 + 272);
  v28 = *(v0 + 240);
  v29 = *(v0 + 224);
  v30 = *(v0 + 192);
  v31 = *(v0 + 168);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1008E8CF8()
{
  v36 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 192);

  sub_10001F210(v2, type metadata accessor for SharedBeaconRecord);
  sub_100007BAC((v0 + 16));
  sub_100007BAC((v0 + 56));
  *(v0 + 136) = *(v0 + 464);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 476) == 1)
  {
    sub_10001F210(*(v0 + 312), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

    v3 = *(v0 + 136);
  }

  else
  {
    v4 = *(v0 + 136);

    if (qword_1016944F0 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 312);
    v6 = *(v0 + 296);
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177A7D8);
    sub_10002963C(v5, v6, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 312);
    v12 = *(v0 + 296);
    if (v10)
    {
      v13 = *(v0 + 200);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v35 = v16;
      *v14 = 138543875;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      *(v14 + 12) = 2160;
      *(v14 + 14) = 1752392040;
      *(v14 + 22) = 2081;
      sub_100019588(&qword_101696930, &type metadata accessor for UUID);
      v34 = v11;
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      sub_10001F210(v12, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v21 = sub_1000136BC(v18, v20, &v35);

      *(v14 + 24) = v21;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to update key sync metadata %{public}@ for %{private,mask.hash}s.", v14, 0x20u);
      sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v16);

      v22 = v34;
    }

    else
    {

      sub_10001F210(v12, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v22 = v11;
    }

    sub_10001F210(v22, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  }

  v24 = *(v0 + 304);
  v23 = *(v0 + 312);
  v25 = *(v0 + 296);
  v27 = *(v0 + 264);
  v26 = *(v0 + 272);
  v28 = *(v0 + 240);
  v29 = *(v0 + 224);
  v30 = *(v0 + 192);
  v31 = *(v0 + 168);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1008E9104(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = type metadata accessor for UUID();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_101699DB0, &unk_101393100) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&unk_10169BB50, &unk_101395760) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = type metadata accessor for ObservedAdvertisement(0);
  v3[10] = v9;
  v10 = *(v9 - 8);
  v3[11] = v10;
  v11 = *(v10 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_1008E92B4, v2, 0);
}

uint64_t sub_1008E92B4()
{
  v70 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  sub_1000D2A70(v0[2], v3, &unk_10169BB50, &unk_101395760);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v20 = v0[14];
    v21 = v0[3];
    sub_100018118(v0[9], v20, type metadata accessor for ObservedAdvertisement);
    v23 = *(v20 + 16);
    v22 = *(v20 + 24);
    v24 = *(v21 + 16);
    v25 = *(v21 + 24);
    if ((v22 & 0x2000000000000000) != 0)
    {
      if ((v25 & 0x2000000000000000) == 0)
      {
        goto LABEL_23;
      }

      sub_100029784(v23, v22);
      sub_100029784(v24, v25);
      v27 = v22 & 0xDFFFFFFFFFFFFFFFLL;
      v29 = v25 & 0xDFFFFFFFFFFFFFFFLL;
      v26 = v23;
      v28 = v24;
    }

    else
    {
      if ((v25 & 0x2000000000000000) != 0)
      {
        goto LABEL_23;
      }

      sub_100029784(v23, v22);
      sub_100029784(v24, v25);
      v26 = v23;
      v27 = v22;
      v28 = v24;
      v29 = v25;
    }

    v30 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v26, v27, v28, v29);
    sub_10001E524(v24, v25);
    sub_10001E524(v23, v22);
    if (v30)
    {
      v31 = v0[14];
      v32 = v0[3];
      v33 = *(v32 + 35);
      if (*(v31 + 35))
      {
        if (*(v32 + 35))
        {
LABEL_32:
          sub_10001F210(v31, type metadata accessor for ObservedAdvertisement);
          goto LABEL_33;
        }
      }

      else
      {
        if (*(v31 + 34) != *(v32 + 34))
        {
          v33 = 1;
        }

        if ((v33 & 1) == 0)
        {
          goto LABEL_32;
        }
      }
    }

LABEL_23:
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v39 = v0[13];
    v40 = v0[14];
    v41 = type metadata accessor for Logger();
    sub_1000076D4(v41, qword_10177B810);
    sub_10002963C(v40, v39, type metadata accessor for ObservedAdvertisement);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v0[13];
    if (v44)
    {
      v46 = v0[10];
      v47 = v0[8];
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v69 = v49;
      *v48 = 141558275;
      *(v48 + 4) = 1752392040;
      *(v48 + 12) = 2081;
      sub_1000D2A70(v45 + *(v46 + 52), v47, &qword_101699DB0, &unk_101393100);
      v50 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
      v51 = (*(*(v50 - 8) + 48))(v47, 1, v50);
      v52 = v0[8];
      if (v51 == 1)
      {
        v53 = 0x6E776F6E6B6E55;
        sub_10000B3A8(v0[8], &qword_101699DB0, &unk_101393100);
        v54 = 0xE700000000000000;
      }

      else
      {
        v56 = v0[5];
        v55 = v0[6];
        v57 = v0[4];
        (*(v56 + 16))(v55, v0[8], v57);
        sub_10001F210(v52, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
        v53 = UUID.uuidString.getter();
        v54 = v58;
        (*(v56 + 8))(v55, v57);
      }

      sub_10001F210(v0[13], type metadata accessor for ObservedAdvertisement);
      v59 = sub_1000136BC(v53, v54, &v69);

      *(v48 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v42, v43, "Change detected in reconciled advt for %{private,mask.hash}s. Posting SPManagedCBPeripheralChanged.", v48, 0x16u);
      sub_100007BAC(v49);
    }

    else
    {

      sub_10001F210(v45, type metadata accessor for ObservedAdvertisement);
    }

    static DarwinNotification.post(name:)();
    v31 = v0[14];
    goto LABEL_32;
  }

  sub_10000B3A8(v0[9], &unk_10169BB50, &unk_101395760);
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v4 = v0[12];
  v5 = v0[3];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177B810);
  sub_10002963C(v5, v4, type metadata accessor for ObservedAdvertisement);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  if (v9)
  {
    v11 = v0[10];
    v12 = v0[7];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v69 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1000D2A70(v10 + *(v11 + 52), v12, &qword_101699DB0, &unk_101393100);
    v15 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
    v16 = (*(*(v15 - 8) + 48))(v12, 1, v15);
    v17 = v0[7];
    if (v16 == 1)
    {
      v18 = 0x6E776F6E6B6E55;
      sub_10000B3A8(v0[7], &qword_101699DB0, &unk_101393100);
      v19 = 0xE700000000000000;
    }

    else
    {
      v35 = v0[5];
      v34 = v0[6];
      v36 = v0[4];
      (*(v35 + 16))(v34, v0[7], v36);
      sub_10001F210(v17, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v18 = UUID.uuidString.getter();
      v19 = v37;
      (*(v35 + 8))(v34, v36);
    }

    sub_10001F210(v0[12], type metadata accessor for ObservedAdvertisement);
    v38 = sub_1000136BC(v18, v19, &v69);

    *(v13 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v7, v8, "First time we get an advertisement for %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v14);
  }

  else
  {

    sub_10001F210(v10, type metadata accessor for ObservedAdvertisement);
  }

  static DarwinNotification.post(name:)();
LABEL_33:
  v61 = v0[13];
  v60 = v0[14];
  v62 = v0[12];
  v64 = v0[8];
  v63 = v0[9];
  v66 = v0[6];
  v65 = v0[7];

  v67 = v0[1];

  return v67();
}

uint64_t sub_1008E9A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for KeySyncMetadata();
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  v4[8] = v8;
  *v8 = v4;
  v8[1] = sub_1008E9AF0;

  return daemon.getter();
}

uint64_t sub_1008E9AF0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v12 = *v1;
  *(v3 + 72) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 80) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019588(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_1008E9CCC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1008E9CCC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *v2;
  *(*v2 + 88) = a1;

  v6 = *(v3 + 72);
  v7 = *(v3 + 40);
  if (v1)
  {

    v8 = sub_1008EA144;
  }

  else
  {

    v8 = sub_1008E9E30;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1008E9E30()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(v1, v3, v6);
  v7 = (v1 + v2[6]);
  v7[3] = &type metadata for PrimaryIndex;
  v7[4] = sub_10002A2B8();
  *v7 = v5;
  v8 = v2[7];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 16))(v1 + v8, v4, v9);
  *(v1 + v2[5]) = 1;
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_1008E9F8C;
  v11 = v0[11];
  v12 = v0[7];

  return sub_1010CDAC4(v12);
}

uint64_t sub_1008E9F8C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_1008EA264;
  }

  else
  {
    v6 = sub_1008EA0B8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1008EA0B8()
{
  v1 = v0[11];
  v2 = v0[7];

  sub_10001F210(v2, type metadata accessor for KeySyncMetadata);
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1008EA144()
{
  if (qword_1016944F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A7D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No ObservationStoreService available.", v4, 2u);
  }

  v5 = *(v0 + 56);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1008EA264()
{
  v1 = v0[11];
  v2 = v0[7];

  sub_10001F210(v2, type metadata accessor for KeySyncMetadata);

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_1008EA2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_1008EA390, 0, 0);
}

uint64_t sub_1008EA390()
{
  v1 = v0[4];
  v2 = v0[5];
  if ((v1 & 0x2000000000000000) != 0)
  {
    if (v2)
    {
      v13 = sub_1012DCA30(v0[3], v1 & 0xDFFFFFFFFFFFFFFFLL);
      if (v13[2])
      {
        v14 = v0[2];
        v15 = v13;
        v11 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
        v12 = *(v11 - 8);
        sub_10002963C(v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v14, type metadata accessor for BeaconKeyManager.IndexInformation);

        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else if (v2)
  {
    v3 = v0[6];
    v4 = v0[3];
    v5 = type metadata accessor for UUID();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = sub_1012DD334(v4, v1, v3);
    v7 = v6[2];
    v8 = v0[6];
    if (v7)
    {
      v9 = v0[2];
      v10 = v7 - 1;
      v11 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
      v12 = *(v11 - 8);
      sub_10002963C(v6 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10, v9, type metadata accessor for BeaconKeyManager.IndexInformation);

      sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
LABEL_8:
      v16 = 0;
      goto LABEL_12;
    }

    sub_10000B3A8(v0[6], &qword_1016980D0, &unk_10138F3B0);
LABEL_10:
  }

  v11 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v12 = *(v11 - 8);
  v16 = 1;
LABEL_12:
  v17 = v0[6];
  (*(v12 + 56))(v0[2], v16, 1, v11);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1008EA628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1008EA648, a2, 0);
}

uint64_t sub_1008EA648(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 32) + 136);
  *(v3 + 56) = v4;
  if (v4)
  {
    a1 = sub_1008EA674;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, v4, a3);
}

uint64_t sub_1008EA674()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v5 = sub_1000BC4D4(&qword_10169C980, &qword_1013C4A70);
  v6 = sub_100019588(&unk_1016C1130, type metadata accessor for BeaconKeyServiceBuilder);
  v7 = swift_task_alloc();
  v0[8] = v7;
  v7[2] = v1;
  v7[3] = v3;
  v7[4] = v2;
  v8 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_1008EA7E0;
  v10 = v0[7];

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v4, v5, v10, v6, &unk_1013C4A78, v7, v4);
}

uint64_t sub_1008EA7E0()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v6 = *v0;

  v4 = *(v1 + 56);

  return _swift_task_switch(sub_1008EA914, v4, 0);
}

uint64_t sub_1008EA938()
{
  v1 = v0[10];
  if (*(v1 + 16))
  {
    v2 = v0[3];
    v3 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
    v4 = *(v3 - 8);
    sub_10002963C(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, type metadata accessor for BeaconKeyManager.IndexInformation);

    v5 = 0;
  }

  else
  {
    v6 = v0[10];

    v3 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
    v4 = *(v3 - 8);
    v5 = 1;
  }

  (*(v4 + 56))(v0[3], v5, 1, v3);
  v7 = v0[1];

  return v7();
}

uint64_t sub_1008EAA80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1008DF4E0(a1, v4, v5, v6);
}

uint64_t sub_1008EAB3C()
{
  v2 = *(type metadata accessor for DiscoveredObject(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1008E012C(v4, v0 + v3);
}

uint64_t sub_1008EAC44(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1008EACCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1008EA628(a1, v4, v5, v6);
}

uint64_t sub_1008EAD80()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];
  v8 = v0[14];
  v12 = v0[13];
  v13 = v0[12];
  v14 = v0[11];
  v15 = v0[10];
  v16 = v0[9];
  v17 = v0[6];
  v18 = v0[5];
  sub_10001F210(v0[8], type metadata accessor for ObservedAdvertisement);
  sub_10000B3A8(v2, &unk_1016C1120, &qword_1013C49D0);
  sub_10000B3A8(v1, &qword_101699DB0, &unk_101393100);

  v9 = v0[1];
  v10 = v0[29];

  return v9();
}

uint64_t sub_1008EAEFC(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(v1 + 16);

  (*(v3 + 8))(v1 + v4, v2);

  return _swift_deallocObject(v1, v4 + v5);
}

uint64_t sub_1008EAFC8()
{
  v1 = (type metadata accessor for BeaconStatus(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64) + v2;
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[8];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = *(v5 + v1[11]);

  return _swift_deallocObject(v0, v3 + 3);
}

uint64_t sub_1008EB0FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1008EB16C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1008EB2AC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1008EB4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v19[2] = *(v9 + 16);
  v19[3] = v11;
  v19[4] = v10;
  v19[5] = v12;
  v13 = _s11MaterializeV5InnerVMa();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v19 - v16;
  (*(v5 + 16))(v8, a1, a3);
  sub_1008EB6A4(v8, a3, v17);
  swift_getWitnessTable();
  Publisher.subscribe<A>(_:)();
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1008EB6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1);
  v4 = a3 + *(_s11MaterializeV5InnerVMa() + 52);
  return CombineIdentifier.init()();
}

uint64_t sub_1008EB73C(uint64_t a1)
{
  v3 = type metadata accessor for Mirror.AncestorRepresentation();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016ADA00, &qword_1013C4C18);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v18 - v11;
  v13 = *(*(a1 - 8) + 64);
  __chkstk_darwin(v10);
  (*(v15 + 16))(&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  v16 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  (*(v4 + 104))(v7, enum case for Mirror.AncestorRepresentation.generated(_:), v3);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

void sub_1008EB950(void *a1@<X8>)
{
  a1[3] = &type metadata for String;
  *a1 = 0x6C6169726574614DLL;
  a1[1] = 0xEB00000000657A69;
}

uint64_t sub_1008EB990(uint64_t a1, void *a2)
{
  v4 = a2[4];
  v5 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for Result();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v16 - v10, a1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  v12 = a2[3];
  v13 = a2[5];
  v14 = dispatch thunk of Subscriber.receive(_:)();
  (*(v8 + 8))(v11, v7);
  return v14;
}

uint64_t sub_1008EBB30(uint64_t a1, void *a2)
{
  v4 = a2[4];
  v5 = a2[2];
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for Result();
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v26 - v14;
  v16 = type metadata accessor for Subscribers.Completion();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  (*(v17 + 16))(&v26 - v19, a1, v16);
  if ((*(v12 + 48))(v20, 1, AssociatedTypeWitness) == 1)
  {
    (*(v17 + 8))(v20, v16);
    v21 = a2[3];
    v22 = a2[5];
  }

  else
  {
    (*(v12 + 32))(v15, v20, AssociatedTypeWitness);
    (*(v12 + 16))(v11, v15, AssociatedTypeWitness);
    swift_storeEnumTagMultiPayload();
    v23 = a2[3];
    v24 = a2[5];
    dispatch thunk of Subscriber.receive(_:)();
    (*(v27 + 8))(v11, v7);
    (*(v12 + 8))(v15, AssociatedTypeWitness);
  }

  v28 = 1;
  return dispatch thunk of Subscriber.receive(completion:)();
}

uint64_t sub_1008EBEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = type metadata accessor for CombineIdentifier();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1008EBF58(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for CombineIdentifier();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1008EBFE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for CombineIdentifier();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1008EC244(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for CombineIdentifier() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}