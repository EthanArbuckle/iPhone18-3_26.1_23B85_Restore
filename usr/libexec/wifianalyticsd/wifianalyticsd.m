id WALogCategoryDefaultHandle()
{
  if (qword_10010DF30 != -1)
  {
    dispatch_once(&qword_10010DF30, &stru_1000ED5B0);
  }

  v1 = qword_10010DF38;

  return v1;
}

uint64_t sub_100002C2C(uint64_t a1)
{
  qword_10010DE88 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

uint64_t sub_1000039EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003A24()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003A5C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003AAC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003AE4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003B20()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003B58()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id variable initialization expression of WAPerPeerPopulator.apple80211()
{
  result = [objc_opt_self() sharedObject];
  if (result)
  {
    v1 = result;
    v2 = [result getInfraApple80211];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__CFDictionary *sub_100003C54(uint64_t a1)
{
  v2 = *&kCFTypeDictionaryKeyCallBacks.release;
  *&keyCallBacks.version = *&kCFTypeDictionaryKeyCallBacks.version;
  *&keyCallBacks.release = v2;
  *&keyCallBacks.equal = *&kCFTypeDictionaryKeyCallBacks.equal;
  equal = kCFTypeDictionaryValueCallBacks.equal;
  v4 = *&kCFTypeDictionaryValueCallBacks.release;
  *&valueCallBacks.version = *&kCFTypeDictionaryValueCallBacks.version;
  *&valueCallBacks.release = v4;
  valueCallBacks.equal = equal;
  v5 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &keyCallBacks, &valueCallBacks);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_4:
  v11 = v10;
LABEL_12:
  v14 = __clz(__rbit64(v8));
  v8 &= v8 - 1;
  v15 = v14 | (v11 << 6);
  v16 = (*(a1 + 48) + 16 * v15);
  v18 = *v16;
  v17 = v16[1];
  sub_1000040B4(*(a1 + 56) + 32 * v15, v22);
  valueCallBacks.version = v18;
  valueCallBacks.retain = v17;
  sub_100004110(v22, &valueCallBacks.release);

  v13 = v11;
  while (1)
  {
    keyCallBacks = valueCallBacks;
    if (!valueCallBacks.retain)
    {
      break;
    }

    sub_100004110(&keyCallBacks.release, &valueCallBacks);
    v19 = String._bridgeToObjectiveC()();

    sub_100004120(&valueCallBacks, valueCallBacks.copyDescription);
    v20 = _bridgeAnythingToObjectiveC<A>(_:)();
    CFDictionarySetValue(v5, v19, v20);

    swift_unknownObjectRelease();
    sub_100004068(&valueCallBacks.version);
    v10 = v13;
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_5:
    if (v9 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    else
    {
      v12 = v9;
    }

    v13 = v12 - 1;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
      }

      if (v11 >= v9)
      {
        break;
      }

      v8 = *(a1 + 64 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_12;
      }
    }

    v8 = 0;
    memset(&valueCallBacks, 0, sizeof(valueCallBacks));
  }

  return v5;
}

uint64_t sub_100003E8C(void *a1)
{
  v11 = 0;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  v2 = static os_log_type_t.default.getter();
  sub_100004008();
  v3 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    type metadata accessor for CFMutableDictionary(0);
    v6 = a1;
    v7 = String.init<A>(describing:)();
    v9 = sub_10000E318(v7, v8, &v11);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v2, "Error: Unable to cast CFMutableDictionary to Swift Dictionary, cfDictionary is %s", v4, 0xCu);
    sub_100004068(v5);
  }

  return 0;
}

unint64_t sub_100004008()
{
  result = qword_10010D428;
  if (!qword_10010D428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10010D428);
  }

  return result;
}

uint64_t sub_100004068(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000040B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_100004110(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_100004120(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100004164(uint64_t a1)
{
  type metadata accessor for CFDictionary(255);
  *(a1 + 16) = v2;
  return 0;
}

void sub_1000041C0(uint64_t a1, unint64_t *a2)
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

uint64_t sub_10000420C()
{
  sub_100005C98(0, &qword_10010D428, OS_os_log_ptr);
  result = OS_os_log.init(subsystem:category:)();
  qword_10010DF08 = result;
  return result;
}

void *sub_1000042A8(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10000DFA4(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100005BE8(&qword_10010D518, &qword_1000A9068);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000043AC(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10000DE94(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000044A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1000040B4((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_1000044F0@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000040B4(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_100004110(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_100005C38(v22, &qword_10010D520, &qword_1000A9070);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100004650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  *&v129 = a5;
  *(&v129 + 1) = a6;
  v7 = 0;
  v8 = a1 + 32;
  v130 = 0;
  v9 = &unk_10010D518;
  p_superclass = CADataTransformEngine.superclass;
  while (1)
  {
    sub_1000040B4(v8 + 32 * v7, &v134);
    v11 = sub_100005BE8(v9, &qword_1000A9068);
    if (!swift_dynamicCast())
    {
      static os_log_type_t.error.getter();
      if (p_superclass[109] != -1)
      {
        swift_once();
        p_superclass = (CADataTransformEngine + 8);
      }

      os_log(_:dso:log:_:_:)();
      goto LABEL_4;
    }

    v12 = *&v133[0];
    if (!*(*&v133[0] + 16))
    {
      goto LABEL_27;
    }

    v13 = sub_10000E9EC(0xD000000000000011, 0x80000001000A96B0);
    if ((v14 & 1) == 0)
    {
      goto LABEL_27;
    }

    sub_1000040B4(*(v12 + 56) + 32 * v13, &v134);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_27;
    }

    v15 = *(&v133[0] + 1);
    if (!*(v12 + 16))
    {
      goto LABEL_26;
    }

    v16 = *&v133[0];
    v17 = sub_10000E9EC(0xD000000000000014, 0x80000001000A96D0);
    if ((v18 & 1) == 0)
    {
      goto LABEL_26;
    }

    sub_1000040B4(*(v12 + 56) + 32 * v17, &v134);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_26;
    }

    v131 = *(&v133[0] + 1);
    if (!*(v12 + 16) || (v126 = *&v133[0], v19 = sub_10000E9EC(0xD000000000000010, 0x80000001000A9660), (v20 & 1) == 0) || (sub_1000040B4(*(v12 + 56) + 32 * v19, &v134), v127 = sub_100005BE8(&qword_10010D528, &qword_1000A9078), (swift_dynamicCast() & 1) == 0))
    {

LABEL_26:

LABEL_27:
      v28 = static os_log_type_t.error.getter();
      if (p_superclass[109] != -1)
      {
        swift_once();
      }

      v29 = qword_10010DF08;
      if (os_log_type_enabled(qword_10010DF08, v28))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *&v134 = v31;
        *v30 = 136315138;
        v132 = v28;
        v32 = v7;
        v33 = v6;
        v34 = v8;
        v35 = v9;
        v36 = Dictionary.description.getter();
        v38 = v37;

        v39 = v36;
        v9 = v35;
        v8 = v34;
        v6 = v33;
        v7 = v32;
        v40 = sub_10000E318(v39, v38, &v134);

        *(v30 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v29, v132, "incomplete entry in legend entry %s", v30, 0xCu);
        sub_100004068(v31);

        p_superclass = (CADataTransformEngine + 8);
      }

      else
      {
      }

      goto LABEL_4;
    }

    v21 = *&v133[0];
    if (*(v12 + 16) && (v22 = sub_10000E9EC(0xD000000000000013, 0x80000001000A96F0), (v23 & 1) != 0))
    {
      sub_1000040B4(*(v12 + 56) + 32 * v22, &v134);
      sub_100005C38(&v134, &qword_10010D530, &qword_1000A9080);
      if (*(v12 + 16) && (v24 = sub_10000E9EC(0xD000000000000013, 0x80000001000A96F0), (v25 & 1) != 0))
      {
        sub_1000040B4(*(v12 + 56) + 32 * v24, &v134);

        v26 = swift_dynamicCast();
        v27 = *&v133[0];
        if (!v26)
        {
          v27 = 0;
        }
      }

      else
      {

        v27 = 0;
      }

      p_superclass = (CADataTransformEngine + 8);
    }

    else
    {

      v134 = 0u;
      v135 = 0u;
      sub_100005C38(&v134, &qword_10010D530, &qword_1000A9080);
      v27 = 0;
    }

    v41 = v21;
    v42 = *(v21 + 16);
    if (v42)
    {
      break;
    }

LABEL_110:

    v9 = &unk_10010D518;
LABEL_4:
    if (++v7 == v6)
    {
      return v130;
    }
  }

  v123 = v27;
  v124 = v15;
  v122 = v16;
  v43 = v41 + 32;
  while (1)
  {
    sub_1000040B4(v43, &v134);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_49;
    }

    v45 = *(*&v133[0] + 16);
    if (!v45)
    {

      p_superclass = CADataTransformEngine.superclass;
LABEL_49:
      static os_log_type_t.error.getter();
      if (p_superclass[109] != -1)
      {
        swift_once();
        p_superclass = (CADataTransformEngine + 8);
      }

      os_log(_:dso:log:_:_:)();
      goto LABEL_40;
    }

    v128 = *&v133[0];
    NSDecimal._bridgeToObjectiveC()(v44);
    v47 = v46;
    if (v45 == 1)
    {

      static os_log_type_t.error.getter();
      p_superclass = CADataTransformEngine.superclass;
      if (qword_10010D368 != -1)
      {
        swift_once();
        p_superclass = (CADataTransformEngine + 8);
      }

      os_log(_:dso:log:_:_:)();

      goto LABEL_40;
    }

    *(&v135 + 1) = sub_100005C98(0, qword_10010D538, NSNumber_ptr);
    *&v134 = v47;
    sub_100004110(&v134, v133);
    v125 = v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = sub_10000E9EC(0x4449726576697244, 0xE800000000000000);
    v51 = _swiftEmptyDictionarySingleton[2];
    v52 = (v50 & 1) == 0;
    v53 = __OFADD__(v51, v52);
    v54 = v51 + v52;
    if (v53)
    {
      break;
    }

    v55 = v50;
    if (_swiftEmptyDictionarySingleton[3] < v54)
    {
      sub_10000EBC0(v54, isUniquelyReferenced_nonNull_native);
      v49 = sub_10000E9EC(0x4449726576697244, 0xE800000000000000);
      if ((v55 & 1) != (v56 & 1))
      {
        goto LABEL_124;
      }

LABEL_53:
      if (v55)
      {
        goto LABEL_54;
      }

      goto LABEL_56;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_53;
    }

    v58 = v49;
    sub_10000F7B8();
    v49 = v58;
    if (v55)
    {
LABEL_54:
      v57 = (_swiftEmptyDictionarySingleton[7] + 32 * v49);
      sub_100004068(v57);
      sub_100004110(v133, v57);
      goto LABEL_58;
    }

LABEL_56:
    _swiftEmptyDictionarySingleton[(v49 >> 6) + 8] |= 1 << v49;
    v59 = (_swiftEmptyDictionarySingleton[6] + 16 * v49);
    *v59 = 0x4449726576697244;
    v59[1] = 0xE800000000000000;
    sub_100004110(v133, (_swiftEmptyDictionarySingleton[7] + 32 * v49));
    v60 = _swiftEmptyDictionarySingleton[2];
    v53 = __OFADD__(v60, 1);
    v61 = v60 + 1;
    if (v53)
    {
      goto LABEL_119;
    }

    _swiftEmptyDictionarySingleton[2] = v61;
LABEL_58:
    *(&v135 + 1) = &type metadata for String;
    v134 = v129;
    sub_100004110(&v134, v133);

    v62 = swift_isUniquelyReferenced_nonNull_native();
    v63 = sub_10000E9EC(0x614E726576697244, 0xEA0000000000656DLL);
    v65 = _swiftEmptyDictionarySingleton[2];
    v66 = (v64 & 1) == 0;
    v53 = __OFADD__(v65, v66);
    v67 = v65 + v66;
    if (v53)
    {
      goto LABEL_114;
    }

    v68 = v64;
    if (_swiftEmptyDictionarySingleton[3] < v67)
    {
      sub_10000EBC0(v67, v62);
      v63 = sub_10000E9EC(0x614E726576697244, 0xEA0000000000656DLL);
      if ((v68 & 1) != (v69 & 1))
      {
        goto LABEL_124;
      }

LABEL_63:
      if (v68)
      {
        goto LABEL_64;
      }

      goto LABEL_66;
    }

    if (v62)
    {
      goto LABEL_63;
    }

    v71 = v63;
    sub_10000F7B8();
    v63 = v71;
    if (v68)
    {
LABEL_64:
      v70 = (_swiftEmptyDictionarySingleton[7] + 32 * v63);
      sub_100004068(v70);
      sub_100004110(v133, v70);
      goto LABEL_68;
    }

LABEL_66:
    _swiftEmptyDictionarySingleton[(v63 >> 6) + 8] |= 1 << v63;
    v72 = (_swiftEmptyDictionarySingleton[6] + 16 * v63);
    *v72 = 0x614E726576697244;
    v72[1] = 0xEA0000000000656DLL;
    sub_100004110(v133, (_swiftEmptyDictionarySingleton[7] + 32 * v63));
    v73 = _swiftEmptyDictionarySingleton[2];
    v53 = __OFADD__(v73, 1);
    v74 = v73 + 1;
    if (v53)
    {
      goto LABEL_120;
    }

    _swiftEmptyDictionarySingleton[2] = v74;
LABEL_68:
    *(&v135 + 1) = v127;
    *&v134 = v128;
    sub_100004110(&v134, v133);

    v75 = swift_isUniquelyReferenced_nonNull_native();
    v76 = sub_10000E9EC(0x6843646E6567654CLL, 0xED00006C656E6E61);
    v78 = _swiftEmptyDictionarySingleton[2];
    v79 = (v77 & 1) == 0;
    v53 = __OFADD__(v78, v79);
    v80 = v78 + v79;
    if (v53)
    {
      goto LABEL_115;
    }

    v81 = v77;
    if (_swiftEmptyDictionarySingleton[3] < v80)
    {
      sub_10000EBC0(v80, v75);
      v76 = sub_10000E9EC(0x6843646E6567654CLL, 0xED00006C656E6E61);
      if ((v81 & 1) != (v82 & 1))
      {
        goto LABEL_124;
      }

LABEL_73:
      if (v81)
      {
        goto LABEL_74;
      }

      goto LABEL_76;
    }

    if (v75)
    {
      goto LABEL_73;
    }

    v84 = v76;
    sub_10000F7B8();
    v76 = v84;
    if (v81)
    {
LABEL_74:
      v83 = (_swiftEmptyDictionarySingleton[7] + 32 * v76);
      sub_100004068(v83);
      sub_100004110(v133, v83);
      goto LABEL_78;
    }

LABEL_76:
    _swiftEmptyDictionarySingleton[(v76 >> 6) + 8] |= 1 << v76;
    v85 = _swiftEmptyDictionarySingleton[6] + 16 * v76;
    strcpy(v85, "LegendChannel");
    *(v85 + 14) = -4864;
    sub_100004110(v133, (_swiftEmptyDictionarySingleton[7] + 32 * v76));
    v86 = _swiftEmptyDictionarySingleton[2];
    v53 = __OFADD__(v86, 1);
    v87 = v86 + 1;
    if (v53)
    {
      goto LABEL_121;
    }

    _swiftEmptyDictionarySingleton[2] = v87;
LABEL_78:
    *(&v135 + 1) = &type metadata for String;
    *&v134 = v16;
    *(&v134 + 1) = v124;
    sub_100004110(&v134, v133);

    v88 = swift_isUniquelyReferenced_nonNull_native();
    v89 = sub_10000E9EC(0xD000000000000011, 0x80000001000A96B0);
    v91 = _swiftEmptyDictionarySingleton[2];
    v92 = (v90 & 1) == 0;
    v53 = __OFADD__(v91, v92);
    v93 = v91 + v92;
    if (v53)
    {
      goto LABEL_116;
    }

    v94 = v90;
    if (_swiftEmptyDictionarySingleton[3] < v93)
    {
      sub_10000EBC0(v93, v88);
      v89 = sub_10000E9EC(0xD000000000000011, 0x80000001000A96B0);
      if ((v94 & 1) != (v95 & 1))
      {
        goto LABEL_124;
      }

LABEL_83:
      if ((v94 & 1) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_84;
    }

    if (v88)
    {
      goto LABEL_83;
    }

    v97 = v89;
    sub_10000F7B8();
    v89 = v97;
    if ((v94 & 1) == 0)
    {
LABEL_86:
      _swiftEmptyDictionarySingleton[(v89 >> 6) + 8] |= 1 << v89;
      v98 = (_swiftEmptyDictionarySingleton[6] + 16 * v89);
      *v98 = 0xD000000000000011;
      v98[1] = 0x80000001000A96B0;
      sub_100004110(v133, (_swiftEmptyDictionarySingleton[7] + 32 * v89));
      v99 = _swiftEmptyDictionarySingleton[2];
      v53 = __OFADD__(v99, 1);
      v100 = v99 + 1;
      if (v53)
      {
        goto LABEL_122;
      }

      _swiftEmptyDictionarySingleton[2] = v100;
      goto LABEL_88;
    }

LABEL_84:
    v96 = (_swiftEmptyDictionarySingleton[7] + 32 * v89);
    sub_100004068(v96);
    sub_100004110(v133, v96);
LABEL_88:
    *(&v135 + 1) = &type metadata for String;
    *&v134 = v126;
    *(&v134 + 1) = v131;
    sub_100004110(&v134, v133);

    v101 = swift_isUniquelyReferenced_nonNull_native();
    v102 = sub_10000E9EC(0xD000000000000014, 0x80000001000A96D0);
    v104 = _swiftEmptyDictionarySingleton[2];
    v105 = (v103 & 1) == 0;
    v53 = __OFADD__(v104, v105);
    v106 = v104 + v105;
    if (v53)
    {
      goto LABEL_117;
    }

    v107 = v103;
    if (_swiftEmptyDictionarySingleton[3] >= v106)
    {
      if ((v101 & 1) == 0)
      {
        v120 = v102;
        sub_10000F7B8();
        v102 = v120;
      }
    }

    else
    {
      sub_10000EBC0(v106, v101);
      v102 = sub_10000E9EC(0xD000000000000014, 0x80000001000A96D0);
      if ((v107 & 1) != (v108 & 1))
      {
        goto LABEL_124;
      }
    }

    if (v107)
    {
      v109 = (_swiftEmptyDictionarySingleton[7] + 32 * v102);
      sub_100004068(v109);
      sub_100004110(v133, v109);
    }

    else
    {
      _swiftEmptyDictionarySingleton[(v102 >> 6) + 8] |= 1 << v102;
      v110 = (_swiftEmptyDictionarySingleton[6] + 16 * v102);
      *v110 = 0xD000000000000014;
      v110[1] = 0x80000001000A96D0;
      sub_100004110(v133, (_swiftEmptyDictionarySingleton[7] + 32 * v102));
      v111 = _swiftEmptyDictionarySingleton[2];
      v53 = __OFADD__(v111, 1);
      v112 = v111 + 1;
      if (v53)
      {
        goto LABEL_123;
      }

      _swiftEmptyDictionarySingleton[2] = v112;
    }

    if (v123)
    {
      *(&v135 + 1) = v11;
      *&v134 = v123;
      sub_100004110(&v134, v133);

      v113 = swift_isUniquelyReferenced_nonNull_native();
      sub_10000F480(v133, 0xD000000000000013, 0x80000001000A96F0, v113);
    }

    if (*(v128 + 16) < 3uLL)
    {
      goto LABEL_118;
    }

    sub_1000040B4(v128 + 96, &v134);

    if (swift_dynamicCast())
    {
      *(&v135 + 1) = &type metadata for String;
      v134 = v133[0];
      sub_100004110(&v134, v133);
      v114 = swift_isUniquelyReferenced_nonNull_native();
      sub_10000F480(v133, 0x4E6C656E6E616843, 0xEB00000000656D61, v114);
    }

    v16 = v122;
    v115 = v130;
    if (!v130)
    {
      v115 = &_swiftEmptyArrayStorage;
    }

    *(&v135 + 1) = v11;
    *&v134 = _swiftEmptyDictionarySingleton;
    v116 = v115;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v116 = sub_10000DE94(0, *(v116 + 2) + 1, 1, v116);
    }

    v117 = v116;
    v119 = *(v116 + 2);
    v118 = *(v116 + 3);
    if (v119 >= v118 >> 1)
    {
      v117 = sub_10000DE94((v118 > 1), v119 + 1, 1, v116);
    }

    *(v117 + 2) = v119 + 1;
    v130 = v117;
    sub_100004110(&v134, &v117[32 * v119 + 32]);
    p_superclass = (CADataTransformEngine + 8);
LABEL_40:
    v43 += 32;
    if (!--v42)
    {
      goto LABEL_110;
    }
  }

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
LABEL_123:
  __break(1u);
LABEL_124:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100005614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_100004650(a1, a2, a3, a4, a5, a6);
  if (result)
  {
    v7 = result;
    v12 = &type metadata for Int32;
    LODWORD(v11) = 0;
    sub_100004110(&v11, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000F480(v10, 0x74704F7972657551, 0xE900000000000073, isUniquelyReferenced_nonNull_native);
    v12 = sub_100005BE8(&qword_10010D528, &qword_1000A9078);
    *&v11 = v7;
    sub_100004110(&v11, v10);
    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_10000F480(v10, 0xD000000000000010, 0x80000001000A9660, v9);
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100005708(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v50 = a1;
  v51 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v52 = v8;
  v53 = 0;
  v54 = v11 & v9;
  v55 = a2;
  v56 = a3;

  sub_1000044F0(&v48);
  v12 = *(&v48 + 1);
  if (!*(&v48 + 1))
  {
    goto LABEL_25;
  }

  v13 = v48;
  sub_100004110(v49, v47);
  v14 = *a5;
  result = sub_10000E9EC(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_10000EBC0(v20, a4 & 1);
    v22 = *a5;
    result = sub_10000E9EC(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_10000F7B8();
    result = v27;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v24 = *a5;
    v25 = 32 * result;
    sub_1000040B4(*(*a5 + 56) + 32 * result, v46);
    sub_100004068(v47);

    v26 = *(v24 + 56);
    sub_100004068((v26 + v25));
    sub_100004110(v46, (v26 + v25));
    goto LABEL_15;
  }

LABEL_13:
  v28 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v29 = (v28[6] + 16 * result);
  *v29 = v13;
  v29[1] = v12;
  result = sub_100004110(v47, (v28[7] + 32 * result));
  v30 = v28[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v19)
  {
    v28[2] = v31;
LABEL_15:
    sub_1000044F0(&v48);
    v12 = *(&v48 + 1);
    if (*(&v48 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v48;
        sub_100004110(v49, v47);
        v35 = *a5;
        result = sub_10000E9EC(v13, v12);
        v37 = *(v35 + 16);
        v38 = (v36 & 1) == 0;
        v19 = __OFADD__(v37, v38);
        v39 = v37 + v38;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v36;
        if (*(v35 + 24) < v39)
        {
          sub_10000EBC0(v39, 1);
          v40 = *a5;
          result = sub_10000E9EC(v13, v12);
          if ((a4 & 1) != (v41 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v32 = *a5;
          v33 = 32 * result;
          sub_1000040B4(*(*a5 + 56) + 32 * result, v46);
          sub_100004068(v47);

          v34 = *(v32 + 56);
          sub_100004068((v34 + v33));
          sub_100004110(v46, (v34 + v33));
        }

        else
        {
          v42 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v43 = (v42[6] + 16 * result);
          *v43 = v13;
          v43[1] = v12;
          result = sub_100004110(v47, (v42[7] + 32 * result));
          v44 = v42[2];
          v19 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v42[2] = v45;
        }

        sub_1000044F0(&v48);
        v12 = *(&v48 + 1);
      }

      while (*(&v48 + 1));
    }

LABEL_25:
    sub_100005C30();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100005A44(uint64_t result, uint64_t *a2)
{
  if (*(result + 16))
  {
    v3 = result;
    result = sub_10000E9EC(0xD000000000000010, 0x80000001000A9660);
    if (v4)
    {
      sub_1000040B4(*(v3 + 56) + 32 * result, v13);
      v5 = sub_100005BE8(&qword_10010D510, &qword_1000A9060);
      result = swift_dynamicCast();
      if (result)
      {
        v6 = *a2;
        if (*(*a2 + 16) && (v7 = sub_10000E9EC(0xD000000000000010, 0x80000001000A9660), (v8 & 1) != 0) && (sub_1000040B4(*(v6 + 56) + 32 * v7, v13), (swift_dynamicCast() & 1) != 0))
        {
          sub_1000042A8(v12);
          v13[3] = v5;
          v13[0] = v11;
          return sub_1000080A4(v13, 0xD000000000000010, 0x80000001000A9660);
        }

        else
        {

          v9 = *a2;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v13[0] = *a2;
          sub_100005708(v3, sub_1000044A4, 0, isUniquelyReferenced_nonNull_native, v13);

          *a2 = v13[0];
        }
      }
    }
  }

  return result;
}

uint64_t sub_100005BE8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100005C38(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005BE8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100005C98(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100005D5C()
{
  sub_100004008();
  result = OS_os_log.init(subsystem:category:)();
  qword_10010DF10 = result;
  return result;
}

uint64_t sub_100005DBC()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  v1 = *(v0 + *(*v0 + 112));

  v2 = *(v0 + *(*v0 + 120));

  return v0;
}

uint64_t sub_100005E7C()
{
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 104));

  v1 = *(v0 + *(*v0 + 128));

  v2 = *(*v0 + 136);
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_100005F90(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return _swift_deallocClassInstance(v1, v2, v3);
}

uint64_t sub_100005FE8()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);
  sub_100006244(*(v0 + 64));
  v5 = *(v0 + 88);
  sub_100006244(*(v0 + 80));
  return v0;
}

uint64_t sub_100006030()
{
  sub_100005FE8();

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_10000607C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100006134(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for UUID();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100006244(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100006254(uint64_t a1, uint64_t a2, char **a3)
{
  v42 = a3;
  v43 = a2;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v11)
  {
    swift_beginAccess();
    v13 = *(a1 + 40);
    v14 = v13 + 64;
    v15 = 1 << *(v13 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v13 + 64);
    v18 = (v15 + 63) >> 6;

    v19 = 0;
    *&v20 = 136315138;
    v39 = v20;
    v41 = v13;
    while (v17)
    {
LABEL_12:
      v23 = __clz(__rbit64(v17)) | (v19 << 6);
      v24 = (*(v13 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(*(v13 + 56) + 8 * v23) + 16);

      if (sub_10000BBD8(v28))
      {
        v29 = static os_log_type_t.info.getter();
        if (qword_10010D378 != -1)
        {
          swift_once();
        }

        v44 = v25;
        v30 = qword_10010DF18;
        if (os_log_type_enabled(qword_10010DF18, v29))
        {
          v31 = swift_slowAlloc();
          v40 = v29;
          v32 = v31;
          v33 = swift_slowAlloc();
          v45 = v33;
          *v32 = v39;
          *(v32 + 4) = sub_10000E318(v44, v26, &v45);
          _os_log_impl(&_mh_execute_header, v30, v40, "sampleTrackedPeers: Adding keysNoLongerExisting peer %s", v32, 0xCu);
          sub_100004068(v33);
        }

        v34 = v42;
        v35 = *v42;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v34 = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = sub_10000E20C(0, *(v35 + 2) + 1, 1, v35);
          *v42 = v35;
        }

        v38 = *(v35 + 2);
        v37 = *(v35 + 3);
        if (v38 >= v37 >> 1)
        {
          v35 = sub_10000E20C((v37 > 1), v38 + 1, 1, v35);
          *v42 = v35;
        }

        *(v35 + 2) = v38 + 1;
        v21 = &v35[16 * v38];
        *(v21 + 4) = v44;
        *(v21 + 5) = v26;
        v13 = v41;
      }

      v17 &= v17 - 1;
    }

    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v22 >= v18)
      {
      }

      v17 = *(v14 + 8 * v22);
      ++v19;
      if (v17)
      {
        v19 = v22;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000065F0(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    swift_beginAccess();
    v12 = *(a1 + 40);
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    v16 = (v13 + 63) >> 6;

    for (i = 0; v15; result = )
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = v19 | (v18 << 6);
      v21 = (*(v12 + 48) + 16 * v20);
      v22 = v21[1];
      v23 = *(*(v12 + 56) + 8 * v20);
      v25[0] = *v21;
      v25[1] = v22;
      v24 = *(v23 + 16);

      sub_10000FE44(v25, &v24, a2);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(v12 + 64 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100006818(uint64_t a1, char **a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v27[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 16);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    swift_beginAccess();
    v14 = *(a1 + 40);
    v15 = 1 << *(v14 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v14 + 64);
    v18 = (v15 + 63) >> 6;

    for (i = 0; v17; result = )
    {
      v20 = i;
LABEL_10:
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v22 = v21 | (v20 << 6);
      v23 = (*(v14 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = *(*(v14 + 56) + 8 * v22);
      v27[0] = *v23;
      v27[1] = v24;
      v26 = *(v25 + 16);

      sub_10000D598(v27, &v26, a2, a3);
    }

    while (1)
    {
      v20 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
      }

      v17 = *(v14 + 64 + 8 * v20);
      ++i;
      if (v17)
      {
        i = v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100006A7C()
{
  sub_100004008();
  result = OS_os_log.init(subsystem:category:)();
  qword_10010DF18 = result;
  return result;
}

uint64_t sub_100006AE8()
{
  v1 = static os_log_type_t.debug.getter();
  if (qword_10010D378 != -1)
  {
    swift_once();
  }

  v2 = qword_10010DF18;
  if (os_log_type_enabled(qword_10010DF18, v1))
  {
    v3 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v3 = 136315394;
    *(v3 + 4) = sub_10000E318(*(v0 + 16), *(v0 + 24), &v14);
    *(v3 + 12) = 2080;
    v4 = String.init<A>(describing:)();
    v6 = sub_10000E318(v4, v5, &v14);

    *(v3 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v2, v1, "Deinit PeerEntry key %s %s", v3, 0x16u);
    swift_arrayDestroy();
  }

  v7 = *(v0 + 32);
  *(v0 + 32) = &_swiftEmptyArrayStorage;

  v8 = *(v0 + 40);
  *(v0 + 40) = 0;

  v9 = *(v0 + 56);
  *(v0 + 56) = 0;

  if (*(v0 + 48))
  {
    swift_unknownObjectRelease();
  }

  v10 = *(v0 + 24);

  v11 = *(v0 + 32);

  v12 = *(v0 + 40);

  return v0;
}

uint64_t sub_100006CA4()
{
  sub_100006AE8();

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_100006CFC()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100006D58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100006D9C()
{
  sub_100005C98(0, &qword_10010D428, OS_os_log_ptr);
  result = OS_os_log.init(subsystem:category:)();
  qword_10010DF20 = result;
  return result;
}

IONotificationPortRef WAIOReporterUpdateObserver.init(service:)(int a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  __chkstk_darwin();
  v33 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  __chkstk_darwin();
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v11 = type metadata accessor for DispatchQoS();
  v31 = *(v11 - 8);
  v32 = v11;
  v12 = *(v31 + 64);
  __chkstk_darwin();
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC14wifianalyticsd26WAIOReporterUpdateObserver_notification] = 0;
  *&v1[OBJC_IVAR____TtC14wifianalyticsd26WAIOReporterUpdateObserver_callbackHandlers] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC14wifianalyticsd26WAIOReporterUpdateObserver_service] = a1;
  result = IONotificationPortCreate(kIOMainPortDefault);
  if (result)
  {
    *&v1[OBJC_IVAR____TtC14wifianalyticsd26WAIOReporterUpdateObserver_notifyPort] = result;
    v28[1] = sub_100005C98(0, &qword_10010D878, OS_dispatch_queue_ptr);
    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10000779C(&qword_10010D880, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_100005BE8(&qword_10010D888, &unk_1000A9210);
    sub_1000077E4(&qword_10010D890, &qword_10010D888, &unk_1000A9210);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v29 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v30);
    *&v1[OBJC_IVAR____TtC14wifianalyticsd26WAIOReporterUpdateObserver_dispatch_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    updated = type metadata accessor for WAIOReporterUpdateObserver();
    v38.receiver = v1;
    v38.super_class = updated;
    v17 = objc_msgSendSuper2(&v38, "init");
    v18 = *&v17[OBJC_IVAR____TtC14wifianalyticsd26WAIOReporterUpdateObserver_notifyPort];
    v19 = OBJC_IVAR____TtC14wifianalyticsd26WAIOReporterUpdateObserver_dispatch_queue;
    v20 = *&v17[OBJC_IVAR____TtC14wifianalyticsd26WAIOReporterUpdateObserver_dispatch_queue];
    v21 = v17;
    IONotificationPortSetDispatchQueue(v18, v20);
    v22 = *&v17[v19];
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10000777C;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006D58;
    aBlock[3] = &unk_1000ED2E8;
    v24 = _Block_copy(aBlock);
    v25 = v22;

    static DispatchQoS.unspecified.getter();
    v36 = &_swiftEmptyArrayStorage;
    sub_10000779C(&qword_10010D8A0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005BE8(&qword_10010D8A8, &qword_1000A92E0);
    sub_1000077E4(&qword_10010D8B0, &qword_10010D8A8, &qword_1000A92E0);
    v26 = v33;
    v27 = v35;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);

    (*(v34 + 8))(v26, v27);
    (*(v31 + 8))(v14, v32);

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000739C(uint64_t *a1, uint64_t *a2)
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

void sub_100007408()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC14wifianalyticsd26WAIOReporterUpdateObserver_notifyPort;
    v3 = *(Strong + OBJC_IVAR____TtC14wifianalyticsd26WAIOReporterUpdateObserver_notifyPort);
    v4 = OBJC_IVAR____TtC14wifianalyticsd26WAIOReporterUpdateObserver_service;
    v5 = *(Strong + OBJC_IVAR____TtC14wifianalyticsd26WAIOReporterUpdateObserver_service);
    v6 = OBJC_IVAR____TtC14wifianalyticsd26WAIOReporterUpdateObserver_notification;
    swift_beginAccess();
    LODWORD(v3) = IOServiceAddInterestNotification(v3, v5, "IOGeneralInterest", sub_100007838, v1, &v1[v6]);
    swift_endAccess();
    if (v3)
    {
      v7 = static os_log_type_t.fault.getter();
      if (qword_10010D380 != -1)
      {
        swift_once();
      }

      v8 = qword_10010DF20;
      if (os_log_type_enabled(qword_10010DF20, v7))
      {
        v9 = v1;
        v10 = swift_slowAlloc();
        v26[0] = swift_slowAlloc();
        *v10 = 136316162;
        v25 = *&v1[v2];
        v11 = String.init<A>(describing:)();
        v13 = sub_10000E318(v11, v12, v26);

        *(v10 + 4) = v13;
        *(v10 + 12) = 2080;
        LODWORD(v25) = *&v1[v4];
        v14 = dispatch thunk of CustomStringConvertible.description.getter();
        v16 = v15;

        v17 = sub_10000E318(v14, v16, v26);

        *(v10 + 14) = v17;
        *(v10 + 22) = 2080;
        *(v10 + 24) = sub_10000E318(0xD000000000000011, 0x80000001000A9A20, v26);
        *(v10 + 32) = 2080;
        v18 = String.init<A>(describing:)();
        v20 = sub_10000E318(v18, v19, v26);

        *(v10 + 34) = v20;
        *(v10 + 42) = 2080;
        LODWORD(v25) = *&v1[v6];
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = v22;

        v24 = sub_10000E318(v21, v23, v26);

        *(v10 + 44) = v24;
        _os_log_impl(&_mh_execute_header, v8, v7, "Failed to configure IOServiceAddInterestNotification, %s %s %s %s  %s ", v10, 0x34u);
        swift_arrayDestroy();

        return;
      }
    }

    else
    {
      static os_log_type_t.default.getter();
      if (qword_10010D380 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
    }
  }
}

uint64_t sub_100007784(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000779C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000077E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000739C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id WAIOReporterUpdateObserver.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC14wifianalyticsd26WAIOReporterUpdateObserver_dispatch_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100007AC4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_100007ACC;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007AF4;
  aBlock[3] = &unk_1000ED360;
  v4 = _Block_copy(aBlock);
  v5 = v1;
  v6 = v0;

  dispatch_sync(v5, v4);

  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {

    v8.receiver = v6;
    v8.super_class = type metadata accessor for WAIOReporterUpdateObserver();
    return objc_msgSendSuper2(&v8, "dealloc");
  }

  return result;
}

uint64_t sub_1000079E4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14wifianalyticsd26WAIOReporterUpdateObserver_notification;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3)
  {
    IOObjectRelease(v3);
    *(a1 + v2) = 0;
  }

  IONotificationPortDestroy(*(a1 + OBJC_IVAR____TtC14wifianalyticsd26WAIOReporterUpdateObserver_notifyPort));
  IOObjectRelease(*(a1 + OBJC_IVAR____TtC14wifianalyticsd26WAIOReporterUpdateObserver_service));
  static os_log_type_t.default.getter();
  if (qword_10010D380 != -1)
  {
    swift_once();
  }

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_100007ACC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t WAIOReporterUpdateObserver.addIOServicePropertyChangeCallback(_:)(const void *a1)
{
  v2 = _Block_copy(a1);
  v3 = *&v1[OBJC_IVAR____TtC14wifianalyticsd26WAIOReporterUpdateObserver_dispatch_queue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100007E24;
  *(v5 + 24) = v4;
  v10[4] = sub_100008098;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100007AF4;
  v10[3] = &unk_1000ED3D8;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100007CEC(uint64_t a1, const void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100007F1C;
  *(v5 + 24) = v4;
  v6 = OBJC_IVAR____TtC14wifianalyticsd26WAIOReporterUpdateObserver_callbackHandlers;
  swift_beginAccess();
  v7 = *(a1 + v6);
  _Block_copy(a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_10000E0D8(0, v7[2] + 1, 1, v7);
    *(a1 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_10000E0D8((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_100007ACC;
  v11[5] = v5;
  *(a1 + v6) = v7;
  return swift_endAccess();
}

id WAIOReporterUpdateObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_100007F2C(void *a1, int a2)
{
  if (a1)
  {
    v3 = a1;
    if (a2 == -536870608)
    {
      v11 = v3;
      static os_log_type_t.debug.getter();
      if (qword_10010D380 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      v4 = OBJC_IVAR____TtC14wifianalyticsd26WAIOReporterUpdateObserver_callbackHandlers;
      swift_beginAccess();
      v5 = *&v11[v4];
      v6 = *(v5 + 16);
      if (v6)
      {

        v7 = (v5 + 40);
        do
        {
          v9 = *(v7 - 1);
          v8 = *v7;

          v9(v10);

          v7 += 2;
          --v6;
        }

        while (v6);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1000080A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100004110(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_10000F480(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_100005C38(a1, &qword_10010D530, &qword_1000A9080);
    sub_10000EB1C(a2, a3, v10);

    return sub_100005C38(v10, &qword_10010D530, &qword_1000A9080);
  }

  return result;
}

uint64_t sub_100008174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_10000F5D0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_10000E9EC(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_10000F95C();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_10000F2D0(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_10000826C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + 16);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    swift_beginAccess();
    v14 = *(v3 + 40);
    if (*(v14 + 16) && (v15 = sub_10000E9EC(a1, a2), (v16 & 1) != 0))
    {
      v17 = *(*(v14 + 56) + 8 * v15);
      swift_endAccess();
      v18 = *(v17 + 40);

      sub_100008404(v19);
    }

    else
    {
      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100008404(void *a1)
{
  v2 = v1;
  sub_100009028(a1);
  v4 = static os_log_type_t.debug.getter();
  if (qword_10010D370 != -1)
  {
    swift_once();
  }

  v5 = qword_10010DF10;
  if (os_log_type_enabled(qword_10010DF10, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27[0] = v7;
    *v6 = 136315138;
    v8 = a1[3];
    v27[1] = a1[2];
    v27[2] = v8;

    v9 = String.init<A>(describing:)();
    v11 = sub_10000E318(v9, v10, v27);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v4, "Remove setting cache key %s to nil", v6, 0xCu);
    sub_100004068(v7);
  }

  v13 = a1[2];
  v12 = a1[3];
  swift_beginAccess();
  v14 = v2[5];
  v15 = *(v14 + 16);

  if (v15 && (v16 = sub_10000E9EC(v13, v12), (v17 & 1) != 0))
  {
    v18 = *(*(v14 + 56) + 8 * v16);
    swift_endAccess();

    [*(v18 + 32) invalidate];
  }

  else
  {
    swift_endAccess();
  }

  v19 = a1[2];
  v20 = a1[3];
  swift_beginAccess();

  sub_100008174(0, v19, v20);
  swift_endAccess();
  v21 = a1[5];
  a1[5] = 0;

  v22 = a1[4];
  a1[4] = 0;

  if (!*(v2[5] + 16))
  {
    v24 = v2[8];
    if (v24)
    {
      v25 = v2[9];

      v24(v26);
      return sub_100006244(v24);
    }
  }

  return result;
}

uint64_t sub_100008660(uint64_t a1, void *a2, double a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = (&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v3 + 40) = sub_1000100F4(&_swiftEmptyArrayStorage);
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 16) = a2;
  *v11 = a2;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = a2;
  LOBYTE(a2) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v11, v7);
  if (a2)
  {
    *(v3 + 24) = a1 & ~(a1 >> 63);
    *(v3 + 32) = a3;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000087A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v84 = a3;
  v7 = type metadata accessor for UUID();
  v82 = *(v7 - 8);
  v8 = *(v82 + 64);
  v9 = (__chkstk_darwin)();
  v83 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v10;
  __chkstk_darwin(v9);
  v12 = &v72 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v4 + 2);
  *v17 = v18;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_10;
  }

  swift_beginAccess();
  v21 = *(v4 + 5);
  v78 = *(v21 + 16);
  v79 = a1;
  if (v78)
  {
    v22 = sub_10000E9EC(a2, v84);
    if (v23)
    {
      v24 = *(*(v21 + 56) + 8 * v22);

      v25 = static os_log_type_t.debug.getter();
      if (qword_10010D370 != -1)
      {
        swift_once();
      }

      v26 = qword_10010DF10;
      if (os_log_type_enabled(qword_10010DF10, v25))
      {
        v27 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v85 = v81;
        aBlock = a2;
        *v27 = 136315138;
        v87 = v84;

        v28 = String.init<A>(describing:)();
        v30 = sub_10000E318(v28, v29, &v85);

        *(v27 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v26, v25, "Set called for existing key %s", v27, 0xCu);
        sub_100004068(v81);
      }

      [*(v24 + 32) invalidate];
      v31 = *(v24 + 40);

      sub_100009028(v32);

      goto LABEL_12;
    }
  }

  LOBYTE(v13) = static os_log_type_t.debug.getter();
  if (qword_10010D370 != -1)
  {
    goto LABEL_23;
  }

LABEL_10:
  v33 = qword_10010DF10;
  if (os_log_type_enabled(qword_10010DF10, v13))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v85 = v35;
    aBlock = a2;
    *v34 = 136315138;
    v87 = v84;

    v36 = String.init<A>(describing:)();
    v38 = sub_10000E318(v36, v37, &v85);

    *(v34 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v33, v13, "Set called for new key %s", v34, 0xCu);
    sub_100004068(v35);
  }

LABEL_12:
  v39 = v7;
  if (*(*(v4 + 5) + 16) >= *(v4 + 3))
  {
    sub_100009228();
  }

  sub_100005BE8(&qword_10010D968, &qword_1000A92D0);
  v40 = swift_allocObject();
  v40[4] = 0;
  v40[5] = 0;
  v40[2] = a2;
  v77 = a2;
  v40[3] = v84;

  sub_10000940C(v40);
  UUID.init()();
  v75 = objc_opt_self();
  v41 = v4[4];
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = v12;
  v44 = v82;
  v74 = v4;
  v73 = *(v82 + 16);
  v45 = v83;
  v73(v83, v43, v39);
  v46 = *(v44 + 80);
  v81 = v39;
  v47 = (v46 + 40) & ~v46;
  v48 = swift_allocObject();
  v48[2] = v42;
  v48[3] = a2;
  v48[4] = v84;
  v76 = *(v44 + 32);
  v49 = v48 + v47;
  v50 = v81;
  v76(v49, v45, v81);
  v90 = sub_100010940;
  v91 = v48;
  aBlock = _NSConcreteStackBlock;
  v87 = 1107296256;
  v88 = sub_10000A4F0;
  v89 = &unk_1000ED4C8;
  v51 = _Block_copy(&aBlock);

  v52 = v40;

  v53 = [v75 scheduledTimerWithTimeInterval:0 repeats:v51 block:v41];
  _Block_release(v51);
  v54 = v74;
  v55 = *(v74 + 4);
  v56 = v83;
  v80 = v43;
  v73(v83, v43, v50);
  v57 = sub_100005BE8(&qword_10010D970, &qword_1000A92D8);
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  v60 = swift_allocObject();
  *(v60 + 2) = v79;
  *(v60 + 3) = v55;
  *(v60 + 4) = v53;
  *(v60 + 5) = v52;
  v76(&v60[*(*v60 + 136)], v56, v50);
  swift_beginAccess();
  v61 = v84;

  v62 = v53;

  v63 = *(v54 + 5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v85 = *(v54 + 5);
  v54[5] = -0.0;
  sub_10000F5D0(v60, v77, v61, isUniquelyReferenced_nonNull_native);
  v65 = v54;

  v66 = v85;
  *(v65 + 5) = v85;
  swift_endAccess();
  if (v78 || (v67 = v80, v68 = v82, *(v66 + 16) != 1))
  {
    (*(v82 + 8))(v80, v50);
  }

  else
  {
    swift_beginAccess();
    v69 = *(v65 + 10);
    if (v69)
    {
      v70 = *(v65 + 11);
      swift_endAccess();

      v69(v71);
      sub_100006244(v69);

      (*(v68 + 8))(v67, v81);
      return;
    }

    (*(v68 + 8))(v67, v81);
    swift_endAccess();
  }
}

uint64_t sub_100009028(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  if (v4)
  {
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;
    swift_retain_n();
    swift_retain_n();
  }

  else
  {
    v6 = *(v1 + 48);
    *(v1 + 48) = v3;
    swift_retain_n();
  }

  v7 = (v3 + 40);
  if (!v3)
  {
    v7 = (v1 + 56);
  }

  v8 = *v7;
  *v7 = v4;

  v9 = static os_log_type_t.debug.getter();
  if (qword_10010D370 != -1)
  {
    swift_once();
  }

  v10 = qword_10010DF10;
  if (os_log_type_enabled(qword_10010DF10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    v17 = a1[2];
    v18 = a1[3];

    v13 = String.init<A>(describing:)();
    v15 = sub_10000E318(v13, v14, &v19);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v10, v9, "removeFromList node key %s", v11, 0xCu);
    sub_100004068(v12);
  }

  else
  {
  }
}

void sub_100009228()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v3 = v1[2];
    v2 = v1[3];
    swift_beginAccess();
    v4 = *(v0 + 40);
    v5 = *(v4 + 16);

    if (v5 && (v6 = sub_10000E9EC(v3, v2), (v7 & 1) != 0))
    {
      v8 = *(*(v4 + 56) + 8 * v6);
      swift_endAccess();
      [*(v8 + 32) invalidate];
    }

    else
    {
      swift_endAccess();
    }

    v9 = static os_log_type_t.debug.getter();
    if (qword_10010D370 != -1)
    {
      swift_once();
    }

    v10 = qword_10010DF10;
    if (os_log_type_enabled(qword_10010DF10, v9))
    {

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16[0] = v12;
      v16[1] = v3;
      *v11 = 136315138;
      v16[2] = v2;
      v13 = String.init<A>(describing:)();
      v15 = sub_10000E318(v13, v14, v16);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v10, v9, "removeLRU removing key %s", v11, 0xCu);
      sub_100004068(v12);
    }

    sub_100008404(v1);
  }
}

uint64_t sub_10000940C(uint64_t a1)
{
  v3 = *(a1 + 32);
  *(a1 + 32) = *(v1 + 48);

  v4 = *(a1 + 40);
  *(a1 + 40) = 0;

  v5 = *(v1 + 48);
  if (v5)
  {
    v6 = *(v5 + 40);
    *(v5 + 40) = a1;

    v7 = *(v1 + 48);
  }

  *(v1 + 48) = a1;

  if (!*(v1 + 56))
  {
    *(v1 + 56) = a1;
  }
}

uint64_t sub_1000094C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v93 = *(v6 - 8);
  v94 = v6;
  v7 = *(v93 + 64);
  v8 = __chkstk_darwin(v6);
  v9 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v88 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v3 + 2);
  *v16 = v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  v20 = *(v13 + 8);
  v19 = v13 + 8;
  v20(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  swift_beginAccess();
  if (!*(*(v3 + 5) + 16) || (sub_10000E9EC(a1, a2), (v21 & 1) == 0))
  {
    swift_endAccess();
    v19 = static os_log_type_t.debug.getter();
    if (qword_10010D370 == -1)
    {
LABEL_17:
      v60 = qword_10010DF10;
      if (!os_log_type_enabled(qword_10010DF10, v19))
      {
        return 0;
      }

      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v101 = v62;
      *v61 = 136315138;
      aBlock = a1;
      v96 = a2;

      v63 = String.init<A>(describing:)();
      v65 = sub_10000E318(v63, v64, &v101);

      *(v61 + 4) = v65;
      v66 = "Get called for missing key %s";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v60, v19, v66, v61, 0xCu);
      sub_100004068(v62);

      return 0;
    }

LABEL_41:
    swift_once();
    goto LABEL_17;
  }

  swift_endAccess();
  swift_beginAccess();
  v22 = *(v3 + 5);
  if (!*(v22 + 16) || (v23 = sub_10000E9EC(a1, a2), (v24 & 1) == 0))
  {
    swift_endAccess();
    v19 = static os_log_type_t.debug.getter();
    if (qword_10010D370 != -1)
    {
      swift_once();
    }

    v60 = qword_10010DF10;
    if (!os_log_type_enabled(qword_10010DF10, v19))
    {
      return 0;
    }

    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v101 = v62;
    *v61 = 136315138;
    aBlock = a1;
    v96 = a2;

    v67 = String.init<A>(describing:)();
    v69 = sub_10000E318(v67, v68, &v101);

    *(v61 + 4) = v69;
    v66 = "Get called for key %s that was removed between checks";
    goto LABEL_23;
  }

  v25 = *(v22 + 56);
  v26 = v11;
  v27 = *(v25 + 8 * v23);
  swift_endAccess();
  v28 = v27[4];
  v29 = v27 + *(*v27 + 136);
  v90 = *(v93 + 16);
  v91 = v26;
  v90(v26, v29, v94);
  swift_beginAccess();
  v30 = *(v3 + 5);
  v31 = *(v30 + 16);
  v92 = v27;

  v32 = v28;
  if (!v31 || (v33 = sub_10000E9EC(a1, a2), (v34 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_26;
  }

  v35 = *(*(v30 + 56) + 8 * v33);
  swift_endAccess();
  if (v35 != v92)
  {
LABEL_26:
    v71 = static os_log_type_t.debug.getter();
    v72 = v91;
    if (qword_10010D370 != -1)
    {
      swift_once();
    }

    v73 = qword_10010DF10;
    if (os_log_type_enabled(qword_10010DF10, v71))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v101 = v75;
      *v74 = 136315138;
      aBlock = a1;
      v96 = a2;

      v76 = String.init<A>(describing:)();
      v78 = sub_10000E318(v76, v77, &v101);

      *(v74 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v73, v71, "Get called but key %s was replaced during access", v74, 0xCu);
      sub_100004068(v75);
    }

    else
    {
    }

    (*(v93 + 8))(v72, v94);
    return 0;
  }

  v89 = objc_opt_self();
  v36 = v3[4];
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = v94;
  v90(v9, v91, v94);
  v39 = v93;
  v40 = (*(v93 + 80) + 40) & ~*(v93 + 80);
  v41 = swift_allocObject();
  *(v41 + 2) = v37;
  *(v41 + 3) = a1;
  *(v41 + 4) = a2;
  v42 = v38;
  v43 = v92;
  (*(v39 + 32))(&v41[v40], v9, v42);
  v99 = sub_100010D00;
  v100 = v41;
  aBlock = _NSConcreteStackBlock;
  v96 = 1107296256;
  v97 = sub_10000A4F0;
  v98 = &unk_1000ED568;
  v44 = _Block_copy(&aBlock);

  v45 = [v89 scheduledTimerWithTimeInterval:0 repeats:v44 block:v36];
  _Block_release(v44);
  v46 = v43[4];
  v43[4] = v45;
  v47 = v45;

  [v32 invalidate];
  swift_beginAccess();
  v48 = *(v3 + 5);
  if (!*(v48 + 16) || (v49 = sub_10000E9EC(a1, a2), (v50 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_33;
  }

  v51 = *(*(v48 + 56) + 8 * v49);
  swift_endAccess();
  if (v51 != v43)
  {
LABEL_33:
    v79 = static os_log_type_t.debug.getter();
    if (qword_10010D370 != -1)
    {
      swift_once();
    }

    v80 = qword_10010DF10;
    if (os_log_type_enabled(qword_10010DF10, v79))
    {
      v81 = swift_slowAlloc();
      v82 = v47;
      v83 = swift_slowAlloc();
      v101 = v83;
      *v81 = 136315138;
      aBlock = a1;
      v96 = a2;

      v84 = String.init<A>(describing:)();
      v86 = sub_10000E318(v84, v85, &v101);

      *(v81 + 4) = v86;
      _os_log_impl(&_mh_execute_header, v80, v79, "Get called but key %s was removed during timer update", v81, 0xCu);
      sub_100004068(v83);
      v47 = v82;
    }

    [v47 invalidate];

    (*(v93 + 8))(v91, v94);
    return 0;
  }

  v52 = v43[5];

  sub_100009F48(v53);

  LODWORD(v90) = static os_log_type_t.debug.getter();
  if (qword_10010D370 != -1)
  {
    swift_once();
  }

  v54 = qword_10010DF10;
  if (os_log_type_enabled(qword_10010DF10, v90))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v101 = v56;
    *v55 = 136315138;
    aBlock = a1;
    v96 = a2;

    v57 = String.init<A>(describing:)();
    v59 = sub_10000E318(v57, v58, &v101);

    *(v55 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v54, v90, "Get called for existing key %s", v55, 0xCu);
    sub_100004068(v56);
  }

  else
  {
  }

  (*(v93 + 8))(v91, v94);
  v87 = v43[2];

  return v87;
}

uint64_t sub_100009F48(uint64_t result)
{
  v2 = *(v1 + 48);
  if (v2)
  {
    v3 = v2 == result;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    v4 = result;
    v5 = *(v1 + 48);

    if (v2)
    {
      while (v2 != v4)
      {
        v6 = v2[4];

        v2 = v6;
        if (!v6)
        {
          goto LABEL_8;
        }
      }

      v15 = v4[4];
      v14 = v4[5];
      if (v14)
      {
        v16 = *(v14 + 32);
        *(v14 + 32) = v15;
        swift_retain_n();
        swift_retain_n();
      }

      else
      {
        v17 = *(v1 + 48);
        *(v1 + 48) = v15;
        swift_retain_n();
      }

      if (v15)
      {
        v18 = *(v15 + 40);
        *(v15 + 40) = v14;
      }

      else
      {
        v19 = *(v1 + 56);
        *(v1 + 56) = v14;
      }

      v20 = v4[5];
      v4[5] = 0;

      v21 = v4[4];
      v4[4] = *(v1 + 48);

      v22 = *(v1 + 48);
      if (v22)
      {
        v23 = *(v22 + 40);
        *(v22 + 40) = v4;

        v24 = *(v1 + 48);
      }

      *(v1 + 48) = v4;
    }

    else
    {
LABEL_8:
      v7 = static os_log_type_t.error.getter();
      if (qword_10010D370 != -1)
      {
        swift_once();
      }

      v8 = qword_10010DF10;
      result = os_log_type_enabled(qword_10010DF10, v7);
      if (result)
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v27 = v10;
        *v9 = 136315138;
        v25 = v4[2];
        v26 = v4[3];

        v11 = String.init<A>(describing:)();
        v13 = sub_10000E318(v11, v12, &v27);

        *(v9 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v8, v7, "Attempted to move node that's not in list for key %s", v9, 0xCu);
        sub_100004068(v10);
      }
    }
  }

  return result;
}

uint64_t sub_10000A1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + 40);
    if (*(v7 + 16) && (v8 = sub_10000E9EC(a2, a3), (v9 & 1) != 0))
    {
      v10 = *(*(v7 + 56) + 8 * v8);
      swift_endAccess();
      v11 = *(*v10 + 136);

      if (static UUID.== infix(_:_:)())
      {
        v12 = static os_log_type_t.info.getter();
        if (qword_10010D370 != -1)
        {
          swift_once();
        }

        v13 = qword_10010DF10;
        if (os_log_type_enabled(qword_10010DF10, v12))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v28 = v15;
          v29 = a2;
          *v14 = 136315138;
          v30 = a3;

          v16 = String.init<A>(describing:)();
          v18 = sub_10000E318(v16, v17, &v28);

          *(v14 + 4) = v18;
          _os_log_impl(&_mh_execute_header, v13, v12, "Timeout hit, removing key %s", v14, 0xCu);
          sub_100004068(v15);
        }

        v19 = v10[5];

        sub_100008404(v20);
      }
    }

    else
    {
      swift_endAccess();
    }

    v21 = static os_log_type_t.debug.getter();
    if (qword_10010D370 != -1)
    {
      swift_once();
    }

    v22 = qword_10010DF10;
    if (os_log_type_enabled(qword_10010DF10, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      v29 = a2;
      *v23 = 136315138;
      v30 = a3;

      v25 = String.init<A>(describing:)();
      v27 = sub_10000E318(v25, v26, &v28);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v22, v21, "Timer fired for already removed or replaced key %s", v23, 0xCu);
      sub_100004068(v24);
    }
  }

  return result;
}

void sub_10000A4F0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10000A558()
{
  sub_100004008();
  result = OS_os_log.init(subsystem:category:)();
  qword_10010DF28 = result;
  return result;
}

id WAPerPeerPopulator.__allocating_init(queue:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1000106CC(a1);

  return v4;
}

id WAPerPeerPopulator.init(queue:)(void *a1)
{
  v2 = sub_1000106CC(a1);

  return v2;
}

uint64_t sub_10000AD78(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v44 = 0;
  _StringGuts.grow(_:)(22);

  v43[2] = 0x80000001000A9B30;
  v7 = String.uppercased()();
  String.append(_:)(v7);

  v43[0] = 0;
  v43[1] = 0;
  v8 = static os_log_type_t.default.getter();
  if (qword_10010D388 != -1)
  {
    swift_once();
  }

  v9 = qword_10010DF28;
  if (os_log_type_enabled(qword_10010DF28, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v42 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10000E318(a1, a2, &v42);
    _os_log_impl(&_mh_execute_header, v9, v8, "createSubscriptionForPeer: Fetching legend for peer: %s", v10, 0xCu);
    sub_100004068(v11);
  }

  v12 = *(a3 + 16);
  v13 = v3;

  if (v12)
  {
    v14 = (a3 + 32);
    do
    {
      v15 = *v14++;
      v42 = v15;

      sub_10000B3A8(&v42, v13, 0xD000000000000014, 0x80000001000A9B30, a1, a2, v43);

      --v12;
    }

    while (v12);
  }

  swift_bridgeObjectRelease_n();

  if (!_swiftEmptyArrayStorage[2])
  {
    v36 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v9, v36))
    {
LABEL_23:

      return 0;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v42 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_10000E318(a1, a2, &v42);
    v39 = "createSubscriptionForPeer: Error IOReporters don't exist yet for peer: %s";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v9, v36, v39, v37, 0xCu);
    sub_100004068(v38);

    goto LABEL_23;
  }

  v16 = *&v13[OBJC_IVAR____TtC14wifianalyticsd18WAPerPeerPopulator_apple80211];
  if (!v16 || (v17 = [*&v13[OBJC_IVAR____TtC14wifianalyticsd18WAPerPeerPopulator_apple80211] getIOReportingDriverName]) == 0)
  {
LABEL_22:
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    goto LABEL_23;
  }

  v18 = v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  sub_100010A70([v16 getIOReportingService]);
  if ((v24 & 0x100000000) != 0)
  {

    goto LABEL_22;
  }

  v25 = sub_100005614(_swiftEmptyArrayStorage, v22, v23, v24, v19, v21);

  if (!v25 || (v26 = sub_100003C54(v25), , !v26))
  {
    v36 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v9, v36))
    {
      goto LABEL_23;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v42 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_10000E318(a1, a2, &v42);
    v39 = "createSubscriptionForPeer: Error failed to create subscription candidates for peer: %s";
    goto LABEL_20;
  }

  Subscription = IOReportCreateSubscription();
  v28 = v44;
  if (v44)
  {
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v42 = v32;
      *v30 = 136315394;
      *(v30 + 4) = sub_10000E318(a1, a2, &v42);
      *(v30 + 12) = 2112;
      type metadata accessor for CFError(0);
      sub_1000109C4(&qword_10010D930, type metadata accessor for CFError);
      swift_allocError();
      *v33 = v28;
      v34 = v28;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 14) = v35;
      *v31 = v35;
      _os_log_impl(&_mh_execute_header, v9, v29, "createSubscriptionForPeer: Error calling IOReportCreateSubscription on peer %s Error: %@", v30, 0x16u);
      sub_100005C38(v31, &qword_10010D938, &qword_1000A9298);

      sub_100004068(v32);
    }

    else
    {
    }

    return 0;
  }

  v41 = Subscription;

  return v41;
}

uint64_t sub_10000B3A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void **a7)
{
  v10 = *a1;
  if (*(*a1 + 16) && (v11 = sub_10000E9EC(0x6E696765626773, 0xE700000000000000), (v12 & 1) != 0))
  {
    sub_1000040B4(*(v10 + 56) + 32 * v11, v63);
    if (swift_dynamicCast())
    {
      v13 = v62;
    }

    else
    {
      v13 = 0;
    }

    if (!*(v10 + 16))
    {
LABEL_15:
      v16 = 0;
      v17 = *(v10 + 16);
      if (!v17)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v13 = 0;
    if (!*(v10 + 16))
    {
      goto LABEL_15;
    }
  }

  v14 = sub_10000E9EC(0x746E6F636773, 0xE600000000000000);
  if ((v15 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_1000040B4(*(v10 + 56) + 32 * v14, v63);
  if (swift_dynamicCast())
  {
    v16 = v62;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v10 + 16);
  if (v17)
  {
LABEL_16:
    v18 = sub_10000E9EC(0x73646E656773, 0xE600000000000000);
    if (v19)
    {
      sub_1000040B4(*(v10 + 56) + 32 * v18, v63);
      if (swift_dynamicCast())
      {
        v17 = v62;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

LABEL_21:
  v61 = v17;
  v20 = *(v10 + 16);
  if (v20)
  {
    v21 = sub_10000E9EC(1936287603, 0xE400000000000000);
    if (v22)
    {
      sub_1000040B4(*(v10 + 56) + 32 * v21, v63);
      if (swift_dynamicCast())
      {
        v20 = v62;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  v60 = v20;
  if (*(v10 + 16) && (v23 = sub_10000E9EC(1936287843, 0xE400000000000000), (v24 & 1) != 0))
  {
    sub_1000040B4(*(v10 + 56) + 32 * v23, v63);
    if (swift_dynamicCast())
    {
      v25 = v62;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  LOBYTE(v63[0]) = 0;
  v26 = *(a2 + OBJC_IVAR____TtC14wifianalyticsd18WAPerPeerPopulator_apple80211);
  if (v26)
  {
    v57 = a6;
    v27 = String._bridgeToObjectiveC()();
    if (v13)
    {
      v28 = String._bridgeToObjectiveC()();
      if (!v16)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v28 = 0;
      if (!v16)
      {
LABEL_38:
        if (v61)
        {
          v29 = String._bridgeToObjectiveC()();
        }

        else
        {
          v29 = 0;
        }

        v59 = a7;
        if (v60)
        {
          v40 = String._bridgeToObjectiveC()();
          if (v25)
          {
LABEL_53:
            v41 = String._bridgeToObjectiveC()();
            goto LABEL_56;
          }
        }

        else
        {
          v40 = 0;
          if (v25)
          {
            goto LABEL_53;
          }
        }

        v41 = 0;
LABEL_56:
        v42 = [v26 getIOReportLegendItemsGroupBeginsWith:0 groupContains:0 groupEndsWith:0 groupEquals:v27 subgroupBeginsWith:v28 subgroupContains:v16 subgroupEndsWith:v29 subgroupEquals:v40 channelEquals:v41 retErr:v63];

        if (v42)
        {
          v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {

          v30 = 0;
        }

        a7 = v59;
        a6 = v57;
        v31 = LOBYTE(v63[0]);
        if (LOBYTE(v63[0]))
        {
          goto LABEL_60;
        }

        goto LABEL_41;
      }
    }

    v16 = String._bridgeToObjectiveC()();
    goto LABEL_38;
  }

  v30 = 0;
  v31 = LOBYTE(v63[0]);
  if (LOBYTE(v63[0]))
  {
LABEL_60:
    v43 = static os_log_type_t.error.getter();
LABEL_62:
    v44 = v43;
    if (qword_10010D388 != -1)
    {
      swift_once();
    }

    v45 = qword_10010DF28;
    if (os_log_type_enabled(qword_10010DF28, v44))
    {
      v46 = a7;
      v47 = v31 != 0;
      v48 = swift_slowAlloc();
      v63[0] = swift_slowAlloc();
      *v48 = 136315650;
      *(v48 + 4) = sub_10000E318(a5, a6, v63);
      *(v48 + 12) = 1024;
      *(v48 + 14) = v47;
      *(v48 + 18) = 2080;
      v49 = Dictionary.description.getter();
      v51 = sub_10000E318(v49, v50, v63);
      a7 = v46;

      *(v48 + 20) = v51;
      _os_log_impl(&_mh_execute_header, v45, v44, "createSubscriptionForPeer: Zero result fetching peer: %s error: %{BOOL}d for: %s", v48, 0x1Cu);
      swift_arrayDestroy();
    }

    v52 = *a7;
    if (!*a7)
    {
      v52 = &_swiftEmptyArrayStorage;
      *a7 = &_swiftEmptyArrayStorage;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a7 = v52;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v52 = sub_10000DFA4(0, v52[2] + 1, 1, v52);
      *a7 = v52;
    }

    v55 = v52[2];
    v54 = v52[3];
    if (v55 >= v54 >> 1)
    {
      *a7 = sub_10000DFA4((v54 > 1), v55 + 1, 1, v52);
    }

    v56 = *a7;
    v56[2] = v55 + 1;
    v56[v55 + 4] = v10;
    return result;
  }

LABEL_41:
  if (!v30 || !*(v30 + 16))
  {
    v43 = static os_log_type_t.default.getter();
    goto LABEL_62;
  }

  v32 = static os_log_type_t.debug.getter();
  if (qword_10010D388 != -1)
  {
    swift_once();
  }

  v33 = qword_10010DF28;
  if (os_log_type_enabled(qword_10010DF28, v32))
  {
    swift_bridgeObjectRetain_n();
    v34 = swift_slowAlloc();
    v63[0] = swift_slowAlloc();
    *v34 = 136315650;
    *(v34 + 4) = sub_10000E318(a5, a6, v63);
    *(v34 + 12) = 2080;
    v35 = Dictionary.description.getter();
    v37 = sub_10000E318(v35, v36, v63);

    *(v34 + 14) = v37;
    *(v34 + 22) = 2048;
    v38 = *(v30 + 16);

    *(v34 + 24) = v38;

    _os_log_impl(&_mh_execute_header, v33, v32, "createSubscriptionForPeer: Success fetching legend peer: %s %s legend.count: %ld", v34, 0x20u);
    swift_arrayDestroy();
  }

  return sub_1000043AC(v30);
}

uint64_t sub_10000BBD8(void *a1)
{
  v2 = a1;
  if (sub_10000FACC(a1))
  {
    LOBYTE(v1) = static os_log_type_t.info.getter();
    if (qword_10010D378 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_104;
  }

  v6 = v2[4];
  v66 = *(v6 + 16);
  if (!v66)
  {
LABEL_99:
    v48 = 0;
    return v48 & 1;
  }

  v51 = OBJC_IVAR____TtC14wifianalyticsd18WAPerPeerPopulator_apple80211;
  v52 = v2;
  v67 = v6 + 32;

  v56 = 0;
  v7 = 0;
  v2 = &type metadata for String;
  v68 = v6;
  while (1)
  {
    if (v7 >= *(v6 + 16))
    {
      __break(1u);
LABEL_104:
      swift_once();
LABEL_3:
      v3 = qword_10010DF18;
      if (os_log_type_enabled(qword_10010DF18, v1))
      {
        v4 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        *&v74 = v5;
        *v4 = 136315138;
        *(v4 + 4) = sub_10000E318(v2[2], v2[3], &v74);
        _os_log_impl(&_mh_execute_header, v3, v1, "peerEntryRSSIStateNoLongerExists: peer %s RSSI State not yet found, can't determine if its existence has changed", v4, 0xCu);
        sub_100004068(v5);
      }

      goto LABEL_99;
    }

    v8 = *(v67 + 8 * v7);
    v69 = v7 + 1;
    v9 = 1 << *(v8 + 32);
    v10 = v9 < 64 ? ~(-1 << v9) : -1;
    v11 = v10 & *(v8 + 64);
    v12 = (v9 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v13 = 0;
    if (!v11)
    {
      break;
    }

    while (1)
    {
      while (1)
      {
        v14 = v13;
LABEL_24:
        v16 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v17 = v16 | (v14 << 6);
        v18 = (*(v8 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        sub_1000040B4(*(v8 + 56) + 32 * v17, v70);
        *&v71 = v20;
        *(&v71 + 1) = v19;
        sub_100004110(v70, &v72);

        v1 = v14;
LABEL_25:
        v74 = v71;
        v75[0] = v72;
        v75[1] = v73;
        if (!*(&v71 + 1))
        {

          v6 = v68;
          goto LABEL_8;
        }

        sub_100004110(v75, &v71);
        if (swift_dynamicCast())
        {
          break;
        }

        v13 = v1;
        if (!v11)
        {
          goto LABEL_17;
        }
      }

      v71 = v70[0];
      *&v70[0] = 0x6174532049535352;
      *(&v70[0] + 1) = 0xEA00000000006574;
      sub_100010878();
      if (StringProtocol.contains<A>(_:)())
      {
        break;
      }

      v13 = v1;
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    *&v71 = 0;
    *(&v71 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    *&v71 = 0xD000000000000014;
    *(&v71 + 1) = 0x80000001000A9B30;
    v21 = *(v52 + 1);
    object = v21._object;
    countAndFlagsBits = v21._countAndFlagsBits;
    String.append(_:)(v21);
    if (!*(v8 + 16))
    {
      v1 = 0;
      v6 = v68;
LABEL_46:
      v65 = 0;
      if (!*(v8 + 16))
      {
        goto LABEL_53;
      }

      goto LABEL_47;
    }

    v22 = sub_10000E9EC(0x6E696765626773, 0xE700000000000000);
    v6 = v68;
    if (v23)
    {
      sub_1000040B4(*(v8 + 56) + 32 * v22, &v71);
      if (swift_dynamicCast())
      {
        v1 = *(&v70[0] + 1);
      }

      else
      {
        v1 = 0;
      }

      if (!*(v8 + 16))
      {
        goto LABEL_46;
      }
    }

    else
    {
      v1 = 0;
      if (!*(v8 + 16))
      {
        goto LABEL_46;
      }
    }

    v24 = sub_10000E9EC(0x746E6F636773, 0xE600000000000000);
    if ((v25 & 1) == 0)
    {
      goto LABEL_46;
    }

    sub_1000040B4(*(v8 + 56) + 32 * v24, &v71);
    if (swift_dynamicCast())
    {
      v26 = *(&v70[0] + 1);
    }

    else
    {
      v26 = 0;
    }

    v65 = v26;
    if (!*(v8 + 16))
    {
LABEL_53:
      v64 = 0;
      if (!*(v8 + 16))
      {
        goto LABEL_60;
      }

      goto LABEL_54;
    }

LABEL_47:
    v27 = sub_10000E9EC(0x73646E656773, 0xE600000000000000);
    if ((v28 & 1) == 0)
    {
      goto LABEL_53;
    }

    sub_1000040B4(*(v8 + 56) + 32 * v27, &v71);
    if (swift_dynamicCast())
    {
      v29 = *(&v70[0] + 1);
    }

    else
    {
      v29 = 0;
    }

    v64 = v29;
    if (!*(v8 + 16))
    {
LABEL_60:
      v63 = 0;
      v33 = *(v8 + 16);
      if (!v33)
      {
        goto LABEL_66;
      }

LABEL_61:
      v34 = sub_10000E9EC(1936287843, 0xE400000000000000);
      if (v35)
      {
        sub_1000040B4(*(v8 + 56) + 32 * v34, &v71);
        if (swift_dynamicCast())
        {
          v33 = *(&v70[0] + 1);
        }

        else
        {
          v33 = 0;
        }
      }

      else
      {
        v33 = 0;
      }

      goto LABEL_66;
    }

LABEL_54:
    v30 = sub_10000E9EC(1936287603, 0xE400000000000000);
    if ((v31 & 1) == 0)
    {
      goto LABEL_60;
    }

    sub_1000040B4(*(v8 + 56) + 32 * v30, &v71);
    if (swift_dynamicCast())
    {
      v32 = *(&v70[0] + 1);
    }

    else
    {
      v32 = 0;
    }

    v63 = v32;
    v33 = *(v8 + 16);
    if (v33)
    {
      goto LABEL_61;
    }

LABEL_66:
    v62 = v33;
    LOBYTE(v71) = 0;
    v36 = *(v61 + v51);
    if (!v36)
    {
      v37 = 0;
LABEL_89:

      goto LABEL_90;
    }

    v50 = String._bridgeToObjectiveC()();
    if (v1)
    {
      v55 = String._bridgeToObjectiveC()();
      if (v65)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v55 = 0;
      if (v65)
      {
LABEL_69:
        v54 = String._bridgeToObjectiveC()();
        goto LABEL_73;
      }
    }

    v54 = 0;
LABEL_73:
    v60 = v1;
    if (v64)
    {
      v38 = String._bridgeToObjectiveC()();
      if (v63)
      {
        goto LABEL_75;
      }
    }

    else
    {
      v38 = 0;
      if (v63)
      {
LABEL_75:
        v39 = String._bridgeToObjectiveC()();
        if (v62)
        {
          goto LABEL_76;
        }

        goto LABEL_79;
      }
    }

    v39 = 0;
    if (v62)
    {
LABEL_76:
      v40 = String._bridgeToObjectiveC()();
      goto LABEL_80;
    }

LABEL_79:
    v40 = 0;
LABEL_80:
    v53 = v40;
    v41 = [v36 getIOReportLegendItemsGroupBeginsWith:0 groupContains:0 groupEndsWith:0 groupEquals:v50 subgroupBeginsWith:v55 subgroupContains:v54 subgroupEndsWith:v38 subgroupEquals:v39 channelEquals:v40 retErr:&v71];

    if (v41)
    {
      v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {

      v37 = 0;
    }

    LOBYTE(v1) = v60;
    v6 = v68;
    if (!v71)
    {
      goto LABEL_89;
    }

    v42 = static os_log_type_t.info.getter();
    if (qword_10010D378 != -1)
    {
      swift_once();
    }

    v43 = qword_10010DF18;
    if (os_log_type_enabled(qword_10010DF18, v42))
    {
      v1 = swift_slowAlloc();
      v57 = v42;
      v44 = swift_slowAlloc();
      *&v71 = v44;
      *v1 = 136315138;
      *(v1 + 4) = sub_10000E318(countAndFlagsBits, object, &v71);
      _os_log_impl(&_mh_execute_header, v43, v57, "peerEntryRSSIStateNoLongerExists: getIOReportLegend for peer %s encountered error, assuming noLongerExists", v1, 0xCu);
      sub_100004068(v44);

      LOBYTE(v1) = v60;
    }

    v56 = 1;
LABEL_90:

    if (!v37)
    {

LABEL_94:
      LOBYTE(v1) = static os_log_type_t.info.getter();
      if (qword_10010D378 != -1)
      {
        swift_once();
      }

      v45 = qword_10010DF18;
      if (os_log_type_enabled(qword_10010DF18, v1))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *&v71 = v47;
        *v46 = 136315138;
        *(v46 + 4) = sub_10000E318(countAndFlagsBits, object, &v71);
        _os_log_impl(&_mh_execute_header, v45, v1, "peerEntryRSSIStateNoLongerExists: getIOReportLegend for peer %s returned no results, assuming noLongerExists", v46, 0xCu);
        sub_100004068(v47);
      }

      v56 = 1;
      goto LABEL_8;
    }

    if (!*(v37 + 16))
    {
      goto LABEL_94;
    }

LABEL_8:
    v7 = v69;
    if (v69 == v66)
    {
      goto LABEL_102;
    }
  }

LABEL_17:
  if (v12 <= v13 + 1)
  {
    v15 = v13 + 1;
  }

  else
  {
    v15 = v12;
  }

  v1 = v15 - 1;
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
      v11 = 0;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      goto LABEL_25;
    }

    v11 = *(v8 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_102:

  v48 = v56;
  return v48 & 1;
}

NSDictionary_optional __swiftcall WAPerPeerPopulator.sampleTrackedPeers()()
{
  v130 = type metadata accessor for DispatchPredicate();
  v117 = *(v130 - 8);
  v1 = v117[8];
  __chkstk_darwin(v130);
  v129 = (&v115 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = swift_allocObject();
  v4 = sub_1000101F8(_swiftEmptyArrayStorage);
  v120 = v3;
  *(v3 + 16) = v4;
  v116 = (v3 + 16);
  v138 = _swiftEmptyArrayStorage;
  v136 = _swiftEmptyArrayStorage;
  v132 = *&v0[OBJC_IVAR____TtC14wifianalyticsd18WAPerPeerPopulator_perPeerManager];
  v5 = *(v132 + 16);
  v6 = v0;

  sub_100006254(v7, v6, &v138);

  v126 = v6;

  v119 = v138;
  v9 = *(v138 + 2);
  if (v9)
  {
    LODWORD(v131) = enum case for DispatchPredicate.onQueue(_:);
    *&v128 = v117 + 13;
    v10 = (v117 + 1);
    v11 = (v119 + 40);
    *&v8 = 136315138;
    v127 = v8;
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v14 = *(v132 + 16);

      isa = sub_1000094C4(v12, v13);

      v16 = static os_log_type_t.info.getter();
      if (isa)
      {
        if (qword_10010D378 != -1)
        {
          swift_once();
        }

        v17 = qword_10010DF18;
        if (os_log_type_enabled(qword_10010DF18, v16))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v135[0] = v19;
          *v18 = v127;
          *(v18 + 4) = sub_10000E318(v12, v13, v135);
          _os_log_impl(&_mh_execute_header, v17, v16, "sampleTrackedPeers: Removing keysNoLongerExisting peer %s", v18, 0xCu);
          sub_100004068(v19);
        }

        v20 = *(v132 + 16);
        v21 = *(v20 + 16);
        v23 = v129;
        v22 = v130;
        *v129 = v21;
        (*v128)(v23, v131, v22);

        v24 = v21;
        v25 = _dispatchPreconditionTest(_:)();
        (*v10)(v23, v22);
        if ((v25 & 1) == 0)
        {
          goto LABEL_61;
        }

        swift_beginAccess();
        v26 = *(v20 + 40);
        if (*(v26 + 16) && (v27 = sub_10000E9EC(v12, v13), (v28 & 1) != 0))
        {
          v29 = *(*(v26 + 56) + 8 * v27);
          swift_endAccess();

          v30 = *(v29 + 40);

          sub_100008404(v31);
        }

        else
        {
          swift_endAccess();
        }
      }

      else
      {
        if (qword_10010D378 != -1)
        {
          swift_once();
        }

        v32 = qword_10010DF18;
        if (os_log_type_enabled(qword_10010DF18, v16))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v135[0] = v34;
          *v33 = v127;
          v35 = sub_10000E318(v12, v13, v135);

          *(v33 + 4) = v35;
          _os_log_impl(&_mh_execute_header, v32, v16, "sampleTrackedPeers: ERROR cant access peer %s", v33, 0xCu);
          sub_100004068(v34);
        }

        else
        {
        }
      }

      v11 += 2;
      --v9;
    }

    while (v9);
  }

  v137 = _swiftEmptyArrayStorage;
  v36 = *(v132 + 16);
  v37 = v126;

  sub_1000065F0(v38, &v137);

  v126 = v37;

  v118 = v137;
  v40 = v137[2];
  if (v40)
  {
    v41 = v118 + 5;
    *&v39 = 136315138;
    v127 = v39;
    *&v39 = 136315394;
    v121 = v39;
    do
    {
      v42 = *(v41 - 1);
      v43 = *v41;
      v44 = *(v132 + 16);

      v45 = sub_1000094C4(v42, v43);

      v131 = v45;
      if (v45)
      {
        v46 = *(v131 + 32);

        v47 = static os_log_type_t.info.getter();
        if (qword_10010D378 != -1)
        {
          swift_once();
        }

        v48 = qword_10010DF18;
        if (os_log_type_enabled(qword_10010DF18, v47))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v135[0] = v50;
          *v49 = v127;
          *(v49 + 4) = sub_10000E318(v42, v43, v135);
          _os_log_impl(&_mh_execute_header, v48, v47, "sampleTrackedPeers: Removing keysNeedingNewSubscription peer %s", v49, 0xCu);
          sub_100004068(v50);
        }

        v51 = *(v132 + 16);

        sub_10000826C(v42, v43);

        v52 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v48, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v135[0] = v54;
          *v53 = v127;
          *(v53 + 4) = sub_10000E318(v42, v43, v135);
          _os_log_impl(&_mh_execute_header, v48, v52, "sampleTrackedPeers: createSubscriptionForPeer %s", v53, 0xCu);
          sub_100004068(v54);
        }

        v55 = sub_10000AD78(v42, v43, v46);
        v57 = v56;
        *&v128 = v58;
        if (v55 && v56)
        {
          v59 = v55;
          v60 = static os_log_type_t.info.getter();
          v61 = os_log_type_enabled(v48, v60);
          v125 = v46;
          if (v61)
          {
            v62 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v135[0] = v63;
            *v62 = v127;
            *(v62 + 4) = sub_10000E318(v42, v43, v135);
            _os_log_impl(&_mh_execute_header, v48, v60, "sampleTrackedPeers: addPeerEntry %s", v62, 0xCu);
            sub_100004068(v63);

            v46 = v125;
          }

          type metadata accessor for PeerEntry();
          v64 = swift_allocObject();
          v64[2] = v42;
          v64[3] = v43;
          v65 = v128;
          v64[4] = v46;
          v64[5] = v65;
          v64[6] = v59;
          v64[7] = v57;
          v124 = v57;

          v66 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v48, v66))
          {
            v67 = swift_slowAlloc();
            v122 = v66;
            v68 = v67;
            v123 = swift_slowAlloc();
            v135[0] = v123;
            *v68 = v121;
            *(v68 + 4) = sub_10000E318(v42, v43, v135);
            *(v68 + 12) = 2080;
            v134 = v64;
            v69 = String.init<A>(describing:)();
            v71 = v40;
            v72 = sub_10000E318(v69, v70, v135);

            *(v68 + 14) = v72;
            v40 = v71;
            _os_log_impl(&_mh_execute_header, v48, v122, "Init PeerEntry key %s %s", v68, 0x16u);
            swift_arrayDestroy();
          }

          v73 = *(v132 + 16);
          sub_1000087A8(v64, v42, v43);
          v74 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v48, v74))
          {
            v75 = swift_slowAlloc();
            v76 = v40;
            v77 = swift_slowAlloc();
            v135[0] = v77;
            *v75 = v127;
            *(v75 + 4) = sub_10000E318(v42, v43, v135);
            _os_log_impl(&_mh_execute_header, v48, v74, "Added Peer to lruPeerCache: %s", v75, 0xCu);
            sub_100004068(v77);
            v40 = v76;
          }

          goto LABEL_23;
        }

        v78 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v48, v78))
        {
          v79 = swift_slowAlloc();
          v80 = v40;
          v81 = swift_slowAlloc();
          v135[0] = v81;
          *v79 = v127;
          v82 = sub_10000E318(v42, v43, v135);

          *(v79 + 4) = v82;
          _os_log_impl(&_mh_execute_header, v48, v78, "sampleTrackedPeers: removed %s due to no found channels", v79, 0xCu);
          sub_100004068(v81);
          v40 = v80;
        }

        else
        {
        }
      }

LABEL_23:
      v41 += 2;
      --v40;
    }

    while (v40);
  }

  v83 = *(v132 + 16);

  sub_100006818(v84, &v136, v120);

  *&v127 = v136;
  isa = *(v136 + 2);
  if (isa)
  {
    LODWORD(v131) = enum case for DispatchPredicate.onQueue(_:);
    v10 = (v117 + 13);
    v86 = (v117 + 1);
    v87 = (v127 + 40);
    *&v85 = 136315138;
    v128 = v85;
    while (1)
    {
      v88 = *(v87 - 1);
      v89 = *v87;

      v90 = static os_log_type_t.error.getter();
      if (qword_10010D378 != -1)
      {
        swift_once();
      }

      v91 = qword_10010DF18;
      if (os_log_type_enabled(qword_10010DF18, v90))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v135[0] = v93;
        *v92 = v128;
        *(v92 + 4) = sub_10000E318(v88, v89, v135);
        _os_log_impl(&_mh_execute_header, v91, v90, "sampleTrackedPeers: Removing keysToPurgeForProducingErrors peer %s for previous encounterd errors", v92, 0xCu);
        sub_100004068(v93);
      }

      v94 = *(v132 + 16);
      v95 = *(v94 + 16);
      v97 = v129;
      v96 = v130;
      *v129 = v95;
      (*v10)(v97, v131, v96);

      v98 = v95;
      v25 = _dispatchPreconditionTest(_:)();
      (*v86)(v97, v96);
      if ((v25 & 1) == 0)
      {
        break;
      }

      swift_beginAccess();
      v99 = *(v94 + 40);
      if (*(v99 + 16) && (v100 = sub_10000E9EC(v88, v89), (v101 & 1) != 0))
      {
        v102 = *(*(v99 + 56) + 8 * v100);
        swift_endAccess();

        v103 = *(v102 + 40);

        sub_100008404(v104);
      }

      else
      {
        swift_endAccess();
      }

      v87 += 2;
      if (!--isa)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
  }

  else
  {
LABEL_56:

    v105 = v116;
    swift_beginAccess();
    v106 = *v105;

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    *v105 = _swiftEmptyDictionarySingleton;
    v10 = isa;

    v25 = static os_log_type_t.info.getter();
    if (qword_10010D378 == -1)
    {
      goto LABEL_57;
    }
  }

  swift_once();
LABEL_57:
  v107 = qword_10010DF18;

  if (os_log_type_enabled(v107, v25))
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v133 = isa;
    v134 = v109;
    *v108 = 136315138;
    v10 = v10;
    sub_100005BE8(&qword_10010D8E8, &unk_1000A9260);
    v110 = String.init<A>(describing:)();
    v112 = sub_10000E318(v110, v111, &v134);

    *(v108 + 4) = v112;
    _os_log_impl(&_mh_execute_header, v107, v25, "sampleTrackedPeers: Returning ret %s", v108, 0xCu);
    sub_100004068(v109);
  }

  v114 = isa;
  result.value.super.isa = v114;
  result.is_nil = v113;
  return result;
}

void sub_10000D598(uint64_t *a1, uint64_t *a2, char **a3, uint64_t a4)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;
  v62 = 0;
  v9 = static os_log_type_t.info.getter();
  if (qword_10010D378 != -1)
  {
    swift_once();
  }

  v10 = qword_10010DF18;
  if (os_log_type_enabled(qword_10010DF18, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v60[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10000E318(v7, v6, v60);
    _os_log_impl(&_mh_execute_header, v10, v9, "sampleTrackedPeers: Attempting to sample IOReportCreateSamples on peer %s", v11, 0xCu);
    sub_100004068(v12);
  }

  if (*(v8 + 48) && (v13 = *(v8 + 56)) != 0)
  {
    v14 = v13;
    Samples = IOReportCreateSamples();
    if (Samples)
    {
      v16 = Samples;
      v17 = v62;
      if (v62)
      {
        v18 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v10, v18))
        {
          v19 = swift_slowAlloc();
          v59 = v14;
          v20 = swift_slowAlloc();
          v58 = v16;
          v21 = swift_slowAlloc();
          v60[0] = v21;
          *v19 = 136315394;
          *(v19 + 4) = sub_10000E318(v7, v6, v60);
          *(v19 + 12) = 2112;
          type metadata accessor for CFError(0);
          sub_1000109C4(&qword_10010D930, type metadata accessor for CFError);
          swift_allocError();
          *v22 = v17;
          v23 = v17;
          v24 = _swift_stdlib_bridgeErrorToNSError();
          *(v19 + 14) = v24;
          *v20 = v24;
          _os_log_impl(&_mh_execute_header, v10, v18, "sampleTrackedPeers: Error calling IOReportCreateSamples on peer %s Error: %@", v19, 0x16u);
          sub_100005C38(v20, &qword_10010D938, &qword_1000A9298);
          v14 = v59;

          sub_100004068(v21);
          v16 = v58;
        }

        v25 = *a3;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a3 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = sub_10000E20C(0, *(v25 + 2) + 1, 1, v25);
          *a3 = v25;
        }

        v28 = *(v25 + 2);
        v27 = *(v25 + 3);
        if (v28 >= v27 >> 1)
        {
          *a3 = sub_10000E20C((v27 > 1), v28 + 1, 1, v25);
        }

        v29 = *a3;
        *(v29 + 2) = v28 + 1;
        v30 = &v29[16 * v28];
        *(v30 + 4) = v7;
        *(v30 + 5) = v6;
      }

      else
      {
        v36 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v10, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v60[0] = v38;
          *v37 = 136315138;
          *(v37 + 4) = sub_10000E318(v7, v6, v60);
          _os_log_impl(&_mh_execute_header, v10, v36, "sampleTrackedPeers: Success calling IOReportCreateSamples on peer %s", v37, 0xCu);
          sub_100004068(v38);
        }

        v39 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v10, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v60[0] = v41;
          *v40 = 136315138;
          *(v40 + 4) = sub_10000E318(v7, v6, v60);
          _os_log_impl(&_mh_execute_header, v10, v39, "sampleTrackedPeers: Converting samples to peerDict for %s", v40, 0xCu);
          sub_100004068(v41);
        }

        v42 = sub_100003E8C(v16);
        if (v42)
        {
          v43 = v42;
          v44 = v16;
          v45 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v10, v45))
          {
            v46 = swift_slowAlloc();
            v60[0] = swift_slowAlloc();
            *v46 = 136315394;
            *(v46 + 4) = sub_10000E318(v7, v6, v60);
            *(v46 + 12) = 2080;
            v47 = Dictionary.description.getter();
            v49 = sub_10000E318(v47, v48, v60);

            *(v46 + 14) = v49;
            _os_log_impl(&_mh_execute_header, v10, v45, "sampleTrackedPeers: Converted %s peerDict is %s", v46, 0x16u);
            swift_arrayDestroy();
          }

          swift_beginAccess();
          sub_100005A44(v43, (a4 + 16));
          swift_endAccess();

          v16 = v44;
        }

        v50 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v10, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v61 = v52;
          *v51 = 136315138;
          swift_beginAccess();
          v53 = *(a4 + 16);

          v54 = Dictionary.description.getter();
          v56 = v55;

          v57 = sub_10000E318(v54, v56, &v61);

          *(v51 + 4) = v57;
          _os_log_impl(&_mh_execute_header, v10, v50, "sampleTrackedPeers: mergedDictionary is now %s", v51, 0xCu);
          sub_100004068(v52);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v31))
    {
      v32 = swift_slowAlloc();
      v60[0] = swift_slowAlloc();
      *v32 = 136315394;
      *(v32 + 4) = sub_10000E318(v7, v6, v60);
      *(v32 + 12) = 2080;
      v61 = v8;
      type metadata accessor for PeerEntry();

      v33 = String.init<A>(describing:)();
      v35 = sub_10000E318(v33, v34, v60);

      *(v32 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v10, v31, "sampleTrackedPeers: PeerEntry %s incomplete entry: %s", v32, 0x16u);
      swift_arrayDestroy();
    }
  }
}

id WAPerPeerPopulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WAPerPeerPopulator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10000DE94(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005BE8(&qword_10010D978, &qword_1000A92E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000DFA4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005BE8(&qword_10010D950, &qword_1000A92B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005BE8(&qword_10010D518, &qword_1000A9068);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000E0D8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005BE8(&qword_10010D988, &qword_1000A92F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005BE8(&qword_10010D990, &qword_1000A9300);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000E20C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005BE8(&qword_10010D940, &unk_1000A92A0);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_10000E318(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000E3E4(v11, 0, 0, 1, a1, a2);
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
    sub_1000040B4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004068(v11);
  return v7;
}

unint64_t sub_10000E3E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000E4F0(a5, a6);
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

char *sub_10000E4F0(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000E53C(a1, a2);
  sub_10000E66C(&off_1000ED010);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000E53C(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000E758(v5, 0);
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
        v7 = sub_10000E758(v10, 0);
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

uint64_t sub_10000E66C(uint64_t result)
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

  result = sub_10000E7CC(result, v12, 1, v3);
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

void *sub_10000E758(uint64_t a1, uint64_t a2)
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

  sub_100005BE8(&qword_10010D960, &qword_1000A92C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000E7CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005BE8(&qword_10010D960, &qword_1000A92C8);
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

char *sub_10000E8C0(char *a1, int64_t a2, char a3)
{
  result = sub_10000E8E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000E8E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005BE8(&qword_10010D940, &unk_1000A92A0);
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
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_10000E9EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10000EA64(a1, a2, v6);
}

unint64_t sub_10000EA64(uint64_t a1, uint64_t a2, uint64_t a3)
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

double sub_10000EB1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10000E9EC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10000F7B8();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_100004110((*(v12 + 56) + 32 * v9), a3);
    sub_10000F120(v9, v12);
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

uint64_t sub_10000EBC0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100005BE8(&qword_10010D948, &qword_1000A92B0);
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
        sub_100004110(v25, v37);
      }

      else
      {
        sub_1000040B4(v25, v37);
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
      result = sub_100004110(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_10000EE78(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100005BE8(&qword_10010D928, &qword_1000A9290);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10000F120(uint64_t result, uint64_t a2)
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

uint64_t sub_10000F2D0(uint64_t result, uint64_t a2)
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
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_10000F480(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000E9EC(a2, a3);
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
      sub_10000F7B8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10000EBC0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10000E9EC(a2, a3);
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
    sub_100004068(v23);

    return sub_100004110(a1, v23);
  }

  else
  {
    sub_10000F74C(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_10000F5D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000E9EC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10000EE78(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10000E9EC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10000F95C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

_OWORD *sub_10000F74C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100004110(a4, (a5[7] + 32 * a1));
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

void *sub_10000F7B8()
{
  v1 = v0;
  sub_100005BE8(&qword_10010D948, &qword_1000A92B0);
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
        sub_1000040B4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100004110(v25, (*(v4 + 56) + v22));
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

void *sub_10000F95C()
{
  v1 = v0;
  sub_100005BE8(&qword_10010D928, &qword_1000A9290);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

uint64_t sub_10000FACC(void *a1)
{
  v1 = a1[5];
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v28 = v2[2];
  if (!v28)
  {
LABEL_35:

    v24 = 0;
    return v24 & 1;
  }

  v29 = v2 + 4;

  v26 = 0;
  v4 = 0;
  v27 = v2;
  while (2)
  {
    if (v4 < v2[2])
    {
      v5 = v29[v4];
      v30 = v4 + 1;
      v6 = 1 << *(v5 + 32);
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      else
      {
        v7 = -1;
      }

      v8 = v7 & *(v5 + 64);
      v9 = (v6 + 63) >> 6;

      v10 = 0;
      while (1)
      {
        if (!v8)
        {
          if (v9 <= v10 + 1)
          {
            v12 = v10 + 1;
          }

          else
          {
            v12 = v9;
          }

          v13 = v12 - 1;
          while (1)
          {
            v11 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v11 >= v9)
            {
              v8 = 0;
              v33 = 0u;
              v34 = 0u;
              v10 = v13;
              v32 = 0u;
              goto LABEL_24;
            }

            v8 = *(v5 + 64 + 8 * v11);
            ++v10;
            if (v8)
            {
              v10 = v11;
              goto LABEL_23;
            }
          }

          __break(1u);
          goto LABEL_35;
        }

        v11 = v10;
LABEL_23:
        v14 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v15 = v14 | (v11 << 6);
        v16 = (*(v5 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        sub_1000040B4(*(v5 + 56) + 32 * v15, v31);
        *&v32 = v18;
        *(&v32 + 1) = v17;
        sub_100004110(v31, &v33);

LABEL_24:
        v35 = v32;
        v36[0] = v33;
        v36[1] = v34;
        if (!*(&v32 + 1))
        {

          v2 = v27;
          v4 = v30;
          goto LABEL_7;
        }

        sub_100004110(v36, &v32);
        if (swift_dynamicCast())
        {
          v32 = v31[0];
          *&v31[0] = 0x6174532049535352;
          *(&v31[0] + 1) = 0xEA00000000006574;
          sub_100010878();
          v19 = StringProtocol.contains<A>(_:)();

          if (v19)
          {
            break;
          }
        }
      }

      v20 = static os_log_type_t.info.getter();
      if (qword_10010D378 != -1)
      {
        swift_once();
      }

      v21 = qword_10010DF18;
      v2 = v27;
      v4 = v30;
      if (os_log_type_enabled(qword_10010DF18, v20))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *&v32 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_10000E318(a1[2], a1[3], &v32);
        _os_log_impl(&_mh_execute_header, v21, v20, "peerEntryRSSIStateNotYetFound: peer %s missing important RSSI State", v22, 0xCu);
        sub_100004068(v23);
      }

      v26 = 1;
LABEL_7:
      if (v4 != v28)
      {
        continue;
      }

      v24 = v26;
      return v24 & 1;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000FE44(uint64_t *a1, void **a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  result = sub_10000FACC(*a2);
  v8 = result;
  if ((result & 1) != 0 || !*(v6 + 48) || !*(v6 + 56))
  {
    v9 = static os_log_type_t.info.getter();
    if (qword_10010D378 != -1)
    {
      swift_once();
    }

    v10 = qword_10010DF18;
    if (os_log_type_enabled(qword_10010DF18, v9))
    {
      v11 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v11 = 136315906;
      *(v11 + 4) = sub_10000E318(v4, v5, &v22);
      *(v11 + 12) = 1024;
      *(v11 + 14) = v8 & 1;
      *(v11 + 18) = 2080;
      if (*(v6 + 48))
      {
        v12 = 0x6176206120736168;
      }

      else
      {
        v12 = 0x6C696E207369;
      }

      if (*(v6 + 48))
      {
        v13 = 0xEB0000000065756CLL;
      }

      else
      {
        v13 = 0xE600000000000000;
      }

      v14 = sub_10000E318(v12, v13, &v22);

      *(v11 + 20) = v14;
      *(v11 + 28) = 2080;
      if (*(v6 + 56))
      {
        v15 = 0x6176206120736168;
      }

      else
      {
        v15 = 0x6C696E207369;
      }

      if (*(v6 + 56))
      {
        v16 = 0xEB0000000065756CLL;
      }

      else
      {
        v16 = 0xE600000000000000;
      }

      v17 = sub_10000E318(v15, v16, &v22);

      *(v11 + 30) = v17;
      _os_log_impl(&_mh_execute_header, v10, v9, "sampleTrackedPeers: Adding keysNeedingNewSubscription peer %s missingPredicates: %{BOOL}d subscription %s subbedChs: %s", v11, 0x26u);
      swift_arrayDestroy();
    }

    v18 = *a3;

    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v18;
    if ((result & 1) == 0)
    {
      result = sub_10000E20C(0, *(v18 + 16) + 1, 1, v18);
      v18 = result;
      *a3 = result;
    }

    v20 = *(v18 + 16);
    v19 = *(v18 + 24);
    if (v20 >= v19 >> 1)
    {
      result = sub_10000E20C((v19 > 1), v20 + 1, 1, v18);
      v18 = result;
      *a3 = result;
    }

    *(v18 + 16) = v20 + 1;
    v21 = v18 + 16 * v20;
    *(v21 + 32) = v4;
    *(v21 + 40) = v5;
  }

  return result;
}

unint64_t sub_1000100F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005BE8(&qword_10010D928, &qword_1000A9290);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000E9EC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1000101F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005BE8(&qword_10010D948, &qword_1000A92B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000108D0(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_10000E9EC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100004110(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100010308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v28 = a2;
  v29 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v31 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v26 = *(result + 16);

    (*(v14 + 16))(&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v13);
    v18 = *(v14 + 80);
    v27 = v9;
    v19 = (v18 + 40) & ~v18;
    v20 = swift_allocObject();
    v21 = v28;
    v22 = v29;
    *(v20 + 2) = a1;
    *(v20 + 3) = v21;
    *(v20 + 4) = v22;
    (*(v14 + 32))(&v20[v19], v16, v13);
    aBlock[4] = sub_10001095C;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006D58;
    aBlock[3] = &unk_1000ED518;
    v23 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v32 = _swiftEmptyArrayStorage;
    sub_1000109C4(&qword_10010D8A0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005BE8(&qword_10010D8A8, &qword_1000A92E0);
    sub_100010A0C();
    v24 = v31;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v25 = v26;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    (*(v6 + 8))(v24, v5);
    (*(v30 + 8))(v12, v27);
  }

  return result;
}

id sub_1000106CC(void *a1)
{
  v2 = v1;
  result = [objc_opt_self() sharedObject];
  if (result)
  {
    v5 = result;
    v6 = OBJC_IVAR____TtC14wifianalyticsd18WAPerPeerPopulator_apple80211;
    v7 = [result getInfraApple80211];

    *&v2[v6] = v7;
    type metadata accessor for PerPeerManager();
    v8 = swift_allocObject();
    sub_100005BE8(&qword_10010D980, &qword_1000A92F0);
    swift_allocObject();
    *(v8 + 16) = sub_100008660(10, a1, 600.0);
    *&v2[OBJC_IVAR____TtC14wifianalyticsd18WAPerPeerPopulator_perPeerManager] = v8;
    if (!*&v2[v6])
    {
      static os_log_type_t.error.getter();
      if (qword_10010D388 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
    }

    v9.receiver = v2;
    v9.super_class = type metadata accessor for WAPerPeerPopulator();
    return objc_msgSendSuper2(&v9, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100010878()
{
  result = qword_10010D920;
  if (!qword_10010D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010D920);
  }

  return result;
}

uint64_t sub_1000108D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005BE8(&qword_10010D958, &qword_1000A92C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010944(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001095C()
{
  v1 = *(*(type metadata accessor for UUID() - 8) + 80);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];

  return sub_10000A1C4(v2, v3, v4);
}

uint64_t sub_1000109C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100010A0C()
{
  result = qword_10010D8B0;
  if (!qword_10010D8B0)
  {
    sub_10000739C(&qword_10010D8A8, &qword_1000A92E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010D8B0);
  }

  return result;
}

void sub_100010A70(io_registry_entry_t a1)
{
  v6 = 0;
  if (IORegistryEntryGetRegistryEntryID(a1, &v6))
  {
    v3 = static os_log_type_t.error.getter();
    if (qword_10010D388 != -1)
    {
      swift_once();
    }

    v4 = qword_10010DF28;
    if (os_log_type_enabled(qword_10010DF28, v3))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v4, v3, "getRegistryEntryID: Failed calling IORegistryEntryGetRegistryEntryID for entry: %u", v5, 8u);
    }
  }

  else
  {
    NSDecimal.init(_:)(v2, v6);
  }
}

uint64_t sub_100010BBC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100010C88()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_100010308(v2, v3, v4, v5);
}

void sub_100010D04(id a1)
{
  qword_10010DF38 = os_log_create("com.apple.wifi.analytics", "Default");

  _objc_release_x1();
}

id WALogDiagnosticProfileLogHandle()
{
  if (qword_10010DF40 != -1)
  {
    dispatch_once(&qword_10010DF40, &stru_1000ED5D0);
  }

  v1 = qword_10010DF48;

  return v1;
}

void sub_100010D9C(id a1)
{
  qword_10010DF48 = os_log_create("com.apple.wifi.analytics", "diagnosticstream");

  _objc_release_x1();
}

id WALogWorkReportHandle()
{
  if (qword_10010DF50 != -1)
  {
    dispatch_once(&qword_10010DF50, &stru_1000ED5F0);
  }

  v1 = qword_10010DF58;

  return v1;
}

void sub_100010E34(id a1)
{
  qword_10010DF58 = os_log_create("com.apple.wifi.analytics", "WorkReport");

  _objc_release_x1();
}

id WALogActivityManagerHandle()
{
  if (qword_10010DF60 != -1)
  {
    dispatch_once(&qword_10010DF60, &stru_1000ED610);
  }

  v1 = qword_10010DF68;

  return v1;
}

void sub_100010ECC(id a1)
{
  qword_10010DF68 = os_log_create("com.apple.wifi.analytics", "Activity");

  _objc_release_x1();
}

id WALogCategoryDeviceStoreHandle()
{
  if (qword_10010DF70 != -1)
  {
    dispatch_once(&qword_10010DF70, &stru_1000ED630);
  }

  v1 = qword_10010DF78;

  return v1;
}

void sub_100010F64(id a1)
{
  qword_10010DF78 = os_log_create("com.apple.wifi.analytics", "DeviceStore");

  _objc_release_x1();
}

id WALogCategoryInitPersistentLogHandle()
{
  if (qword_10010DF80 != -1)
  {
    dispatch_once(&qword_10010DF80, &stru_1000ED650);
  }

  v1 = qword_10010DF88;

  return v1;
}

void sub_100010FFC(id a1)
{
  qword_10010DF88 = os_log_create("com.apple.wifi.analytics", "InitPersistentLog");

  _objc_release_x1();
}

void sub_10001127C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [*(a1 + 32) uuid];
    v6 = [*(a1 + 32) key];
    v7 = [*(a1 + 32) originalClassName];
    v29 = 136447490;
    v30 = "[WAMessageAWDStore updateMessage:]_block_invoke";
    v31 = 1024;
    v32 = 60;
    v33 = 2112;
    v34 = v5;
    v35 = 2112;
    v36 = v6;
    v37 = 2112;
    v38 = v7;
    v39 = 2048;
    v40 = [WeakRetained storeSize];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Message store ingesting message with UUID: %@ key: %@ and original classname: %@ size before: %lu", &v29, 0x3Au);
  }

  v8 = [WeakRetained uuidToMessageMap];
  v9 = [*(a1 + 32) uuid];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [WeakRetained uuidToMessageMap];
    v12 = [*(a1 + 32) uuid];
    v13 = [v11 objectForKeyedSubscript:v12];
    v14 = [v13 size];

    v15 = [WeakRetained uuidToMessageMap];
    v16 = [*(a1 + 32) uuid];
    v17 = [v15 objectForKeyedSubscript:v16];
    [v17 updatePayload:*(a1 + 32)];

    v18 = [WeakRetained storeSize];
    v19 = [WeakRetained uuidToMessageMap];
    v20 = [*(a1 + 32) uuid];
    v21 = [v19 objectForKeyedSubscript:v20];
    [WeakRetained setStoreSize:{objc_msgSend(v21, "size") + v18 - v14}];

    v22 = [WeakRetained uuidToMessageMap];
    v23 = [*(a1 + 32) uuid];
    v24 = [v22 objectForKeyedSubscript:v23];
  }

  else
  {
    v24 = [[WAMessageAWDStoreEntry alloc] initWithPayload:*(a1 + 32)];
    v25 = [WeakRetained uuidToMessageMap];
    v26 = [*(a1 + 32) uuid];
    [v25 setObject:v24 forKeyedSubscript:v26];

    [WeakRetained setStoreSize:{objc_msgSend(WeakRetained, "storeSize") + -[WAMessageAWDStoreEntry size](v24, "size")}];
  }

  [WeakRetained _insertInOrder:v24];
  [WeakRetained _purgeIfNecessary];
  v27 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v28 = [WeakRetained storeSize];
    v29 = 136446722;
    v30 = "[WAMessageAWDStore updateMessage:]_block_invoke";
    v31 = 1024;
    v32 = 75;
    v33 = 2048;
    v34 = v28;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Size after: %lu", &v29, 0x1Cu);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100011888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v10 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_1000118B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000118C8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [WeakRetained uuidToMessageMap];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 32)];

  if (v5)
  {
    v6 = [v5 message];
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v6);
  if (v5)
  {
  }

  dispatch_semaphore_signal(*(a1 + 40));

  objc_autoreleasePoolPop(v2);
}

int64_t sub_100011A20(id a1, WAMessageAWDStoreEntry *a2, WAMessageAWDStoreEntry *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(WAMessageAWDStoreEntry *)v4 lastModifiedTimeInMillisecondEpoch];
  if (v6 <= [(WAMessageAWDStoreEntry *)v5 lastModifiedTimeInMillisecondEpoch])
  {
    v8 = [(WAMessageAWDStoreEntry *)v4 lastModifiedTimeInMillisecondEpoch];
    v7 = v8 < [(WAMessageAWDStoreEntry *)v5 lastModifiedTimeInMillisecondEpoch];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void sub_100011FB8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained uuidToMessageMap];
  [v4 removeAllObjects];

  v5 = [WeakRetained sortedByLastAccess];
  [v5 removeAllObjects];

  [WeakRetained setStoreSize:0];
  dispatch_semaphore_signal(*(a1 + 32));

  objc_autoreleasePoolPop(v2);
}

void sub_1000123E4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeMessageWithUUID:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

void sub_1000124DC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v304 = a2;
  v14 = a3;
  v15 = a4;
  objc_initWeak(&location, a5);
  v16 = a7;
  v297 = a8;
  v291 = a9;
  val = objc_loadWeakRetained(&location);
  v281 = objc_autoreleasePoolPush();
  v17 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "populateNWActivityInterfaceStats", "", buf, 2u);
  }

  v323 = 0;
  sub_100015E6C(v304, val, a6, v16, v14, v15, v297, &v323);
  v286 = v323;
  v18 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "populateNWActivityInterfaceStats", "", buf, 2u);
  }

  v19 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "populateNWActivityAWDLInterfaceStats", "", buf, 2u);
  }

  v20 = [v304 fieldForKey:@"NWA_awdlIfStats"];
  [v20 subMessageValue];
  v21 = v282 = v20;
  objc_initWeak(&v329, val);
  v314 = v16;
  v298 = v14;
  v22 = v15;
  v307 = objc_loadWeakRetained(&v329);
  v23 = v21;
  v24 = sub_10001E74C(v22);
  context = objc_autoreleasePoolPush();
  v327 = 0u;
  v328 = 0u;
  *v325 = 0u;
  v326 = 0u;
  v25 = [v22 objectForKeyedSubscript:v24];
  v26 = [v25 allKeys];

  v27 = [v26 countByEnumeratingWithState:v325 objects:buf count:16];
  if (v27)
  {
    v28 = *v326;
LABEL_9:
    v29 = 0;
    while (1)
    {
      if (*v326 != v28)
      {
        objc_enumerationMutation(v26);
      }

      v30 = *(v325[1] + v29);
      if ([v30 containsString:@"Interface awdl"])
      {
        if (([v30 containsString:@"Peer"] & 1) == 0)
        {
          break;
        }
      }

      if (v27 == ++v29)
      {
        v27 = [v26 countByEnumeratingWithState:v325 objects:buf count:16];
        if (v27)
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }
    }

    v34 = v30;

    if (!v34)
    {
      goto LABEL_17;
    }

    v36 = [v23 fieldForKey:@"NWAAWDLIS_role"];
    v37 = [v36 stringValue];
    v38 = [v37 isEqualToString:v34];

    v39 = WALogCategoryDefaultHandle();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG);
    if (v38)
    {
      if (v40)
      {
        *v330 = 136446466;
        v331 = "void populateNWActivityAWDLInterfaceStats(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
        v332 = 1024;
        v333 = 1310;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Found AWDL Interface", v330, 0x12u);
      }
    }

    else
    {
      if (v40)
      {
        *v330 = 136446466;
        v331 = "void populateNWActivityAWDLInterfaceStats(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
        v332 = 1024;
        v333 = 1307;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Setting AWDL Interface", v330, 0x12u);
      }

      v39 = [v23 fieldForKey:@"NWAAWDLIS_role"];
      [v39 setStringValue:v34];
    }

    v41 = [v22 objectForKeyedSubscript:v24];
    v42 = [v41 objectForKeyedSubscript:v34];
    v43 = [v42 objectForKeyedSubscript:@"Manager Config"];

    if (v43)
    {
      sub_10003453C(v22, v23, @"NWAAWDLIS_enabled", v24, v34, @"Manager Config", @"Enabled");
      sub_10003453C(v22, v23, @"NWAAWDLIS_rtPeerCount", v24, v34, @"Manager Config", @"Realtime Group Peer Count");
      sub_10003453C(v22, v23, @"NWAAWDLIS_peerCount", v24, v34, @"Manager Config", @"Peer Count");
      sub_10003453C(v22, v23, @"NWAAWDLIS_peersAdded", v24, v34, @"Manager Config", @"Peers Added");
      sub_10003453C(v22, v23, @"NWAAWDLIS_peersRemoved", v24, v34, @"Manager Config", @"Peers Removed");
    }

    else
    {
      v44 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *v330 = 136446466;
        v331 = "void populateNWActivityAWDLInterfaceStats(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
        v332 = 1024;
        v333 = 1320;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%{public}s::%d:AWDL hasn't been enabled yet, rescan needed, continuing", v330, 0x12u);
      }
    }

    v45 = [v22 objectForKeyedSubscript:v24];
    v46 = [v45 objectForKeyedSubscript:v34];
    v47 = [v46 objectForKeyedSubscript:@"Action Frames"];

    if (v47)
    {
      sub_10003453C(v22, v23, @"NWAAWDLIS_afCount", v24, v34, @"Action Frames", @"Input");
    }

    v48 = [v22 objectForKeyedSubscript:v24];
    v49 = [v48 objectForKeyedSubscript:v34];
    v50 = [v49 objectForKeyedSubscript:@"Data Bytes"];

    if (v50)
    {
      sub_100034C04(v22, v23, v307, a6, v314, 0, @"NWAAWDLIS_bytes", v24, v34, @"Data Bytes", @"Rx Bytes");
      sub_100034C04(v22, v23, v307, a6, v314, 3u, @"NWAAWDLIS_bytes", v24, v34, @"Data Bytes", @"BE Tx Bytes");
      sub_100034C04(v22, v23, v307, a6, v314, 2u, @"NWAAWDLIS_bytes", v24, v34, @"Data Bytes", @"BK Tx Bytes");
      sub_100034C04(v22, v23, v307, a6, v314, 5u, @"NWAAWDLIS_bytes", v24, v34, @"Data Bytes", @"VI Tx Bytes");
      sub_100034C04(v22, v23, v307, a6, v314, 4u, @"NWAAWDLIS_bytes", v24, v34, @"Data Bytes", @"VO Tx Bytes");
      sub_100034C04(v22, v23, v307, a6, v314, 1u, @"NWAAWDLIS_bytes", v24, v34, @"Data Bytes", @"Tx Bytes");
    }

    v51 = [v22 objectForKeyedSubscript:v24];
    v52 = [v51 objectForKeyedSubscript:v34];
    v53 = [v52 objectForKeyedSubscript:@"Data Packets"];

    if (v53)
    {
      sub_100034C04(v22, v23, v307, a6, v314, 0, @"NWAAWDLIS_packets", v24, v34, @"Data Packets", @"Rx Packets");
      sub_100034C04(v22, v23, v307, a6, v314, 3u, @"NWAAWDLIS_packets", v24, v34, @"Data Packets", @"BE Tx Packets");
      sub_100034C04(v22, v23, v307, a6, v314, 2u, @"NWAAWDLIS_packets", v24, v34, @"Data Packets", @"BK Tx Packets");
      sub_100034C04(v22, v23, v307, a6, v314, 5u, @"NWAAWDLIS_packets", v24, v34, @"Data Packets", @"VI Tx Packets");
      sub_100034C04(v22, v23, v307, a6, v314, 4u, @"NWAAWDLIS_packets", v24, v34, @"Data Packets", @"VO Tx Packets");
      sub_100034C04(v22, v23, v307, a6, v314, 1u, @"NWAAWDLIS_packets", v24, v34, @"Data Packets", @"Tx Packets");
    }

    v54 = [v22 objectForKeyedSubscript:v24];
    v55 = [v54 objectForKeyedSubscript:v34];
    v56 = [v55 objectForKeyedSubscript:@"Manager Config"];

    if (v56)
    {
      sub_10003474C(v22, v23, v307, a6, v314, @"NWAAWDLIS_npeers", v24, v34, @"Manager Config", @"Peer Count State");
      sub_10003474C(v22, v23, v307, a6, v314, @"NWAAWDLIS_nrtpeers", v24, v34, @"Manager Config", @"Realtime Group Peer Count State");
      sub_10003474C(v22, v23, v307, a6, v314, @"NWAAWDLIS_enableStates", v24, v34, @"Manager Config", @"Enabled State");
    }

    v57 = [v22 objectForKeyedSubscript:v24];
    v58 = [v57 objectForKeyedSubscript:v34];
    v59 = [v58 objectForKeyedSubscript:@"AWDL Schedule"];

    if (v59)
    {
      sub_10003474C(v22, v23, v307, a6, v314, @"NWAAWDLIS_awdlStates", v24, v34, @"AWDL Schedule", @"AWDL Schedule State");
    }

    v60 = [v22 objectForKeyedSubscript:v24];
    v61 = [v60 objectForKeyedSubscript:v34];
    v62 = [v61 objectForKeyedSubscript:@"TxCompletion Latency"];
    v63 = [v62 objectForKeyedSubscript:@"Completion Latency Be"];

    if (v63)
    {
      sub_10003611C(v22, v23, v307, a6, v314, @"NWAAWDLIS_txLatencyBEs", v24, v34, @"Completion Latency Be");
    }

    v64 = [v22 objectForKeyedSubscript:v24];
    v65 = [v64 objectForKeyedSubscript:v34];
    v66 = [v65 objectForKeyedSubscript:@"TxCompletion Latency"];
    v67 = [v66 objectForKeyedSubscript:@"Completion Latency Bk"];

    if (v67)
    {
      sub_10003611C(v22, v23, v307, a6, v314, @"NWAAWDLIS_txLatencyBKs", v24, v34, @"Completion Latency Bk");
    }

    v68 = [v22 objectForKeyedSubscript:v24];
    v69 = [v68 objectForKeyedSubscript:v34];
    v70 = [v69 objectForKeyedSubscript:@"TxCompletion Latency"];
    v71 = [v70 objectForKeyedSubscript:@"Completion Latency Vo"];

    if (v71)
    {
      sub_10003611C(v22, v23, v307, a6, v314, @"NWAAWDLIS_txLatencyVOs", v24, v34, @"Completion Latency Vo");
    }

    v72 = [v22 objectForKeyedSubscript:v24];
    v73 = [v72 objectForKeyedSubscript:v34];
    v74 = [v73 objectForKeyedSubscript:@"TxCompletion Latency"];
    v35 = [v74 objectForKeyedSubscript:@"Completion Latency Vi"];

    if (v35)
    {
      sub_10003611C(v22, v23, v307, a6, v314, @"NWAAWDLIS_txLatencyVIs", v24, v34, @"Completion Latency Vi");
      LODWORD(v35) = 0;
    }
  }

  else
  {
LABEL_16:

LABEL_17:
    v31 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [v22 objectForKeyedSubscript:v24];
      v33 = [v32 allKeys];
      *v330 = 136446722;
      v331 = "void populateNWActivityAWDLInterfaceStats(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
      v332 = 1024;
      v333 = 1303;
      v334 = 2112;
      v335 = v33;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find group Interface awdlX:... we have %@", v330, 0x1Cu);
    }

    v34 = 0;
    LODWORD(v35) = 1;
  }

  objc_autoreleasePoolPop(context);
  if (v35)
  {
    v75 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      *v330 = 136446466;
      v331 = "void populateNWActivityAWDLInterfaceStats(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
      v332 = 1024;
      v333 = 1374;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed ", v330, 0x12u);
    }
  }

  objc_destroyWeak(&v329);
  contexta = v286;

  v76 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v76))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v76, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "populateNWActivityAWDLInterfaceStats", "", buf, 2u);
  }

  v77 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v77))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v77, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "populateNWActivityAPInterfaceStats", "", buf, 2u);
  }

  v78 = [v304 fieldForKey:@"NWA_apIfStats"];
  [v78 subMessageValue];
  v79 = v283 = v78;
  objc_initWeak(&v329, val);
  v315 = v314;
  v299 = v298;
  v80 = v22;
  v308 = objc_loadWeakRetained(&v329);
  v81 = v79;
  v82 = sub_10001E74C(v80);
  v287 = objc_autoreleasePoolPush();
  v327 = 0u;
  v328 = 0u;
  *v325 = 0u;
  v326 = 0u;
  v83 = [v80 objectForKeyedSubscript:v82];
  v84 = [v83 allKeys];

  v85 = [v84 countByEnumeratingWithState:v325 objects:buf count:16];
  if (v85)
  {
    v86 = *v326;
    while (2)
    {
      for (i = 0; i != v85; ++i)
      {
        if (*v326 != v86)
        {
          objc_enumerationMutation(v84);
        }

        v88 = *(v325[1] + i);
        if ([v88 containsString:@"Interface ap"] && (objc_msgSend(v88, "containsString:", @"Peer") & 1) == 0)
        {
          v89 = v88;

          if (v89)
          {
            v90 = [v81 fieldForKey:@"NWAAPIS_role"];
            v91 = [v90 stringValue];
            v92 = [v91 isEqualToString:v89];

            if ((v92 & 1) == 0)
            {
              v93 = WALogCategoryDefaultHandle();
              if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
              {
                *v330 = 136446466;
                v331 = "void populateNWActivityAPInterfaceStats(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
                v332 = 1024;
                v333 = 1410;
                _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Setting AP Interface", v330, 0x12u);
              }

              v94 = [v81 fieldForKey:@"NWAAPIS_role"];
              [v94 setStringValue:v89];
            }

            v95 = [v80 objectForKeyedSubscript:v82];
            v96 = [v95 objectForKeyedSubscript:v89];
            v97 = [v96 objectForKeyedSubscript:@"Manager Config"];

            if (v97)
            {
              sub_10003453C(v80, v81, @"NWAAPIS_enabled", v82, v89, @"Manager Config", @"Enabled");
              sub_10003453C(v80, v81, @"NWAAPIS_peerCount", v82, v89, @"Manager Config", @"Peer Count");
              sub_10003453C(v80, v81, @"NWAAPIS_peersAdded", v82, v89, @"Manager Config", @"Peers Added");
              sub_10003453C(v80, v81, @"NWAAPIS_peersRemoved", v82, v89, @"Manager Config", @"Peers Removed");
            }

            v98 = [v80 objectForKeyedSubscript:v82];
            v99 = [v98 objectForKeyedSubscript:v89];
            v100 = [v99 objectForKeyedSubscript:@"Data Bytes"];

            if (v100)
            {
              sub_100034C04(v80, v81, v308, a6, v315, 0, @"NWAAPIS_bytes", v82, v89, @"Data Bytes", @"Rx Bytes");
              sub_100034C04(v80, v81, v308, a6, v315, 3u, @"NWAAPIS_bytes", v82, v89, @"Data Bytes", @"BE Tx Bytes");
              sub_100034C04(v80, v81, v308, a6, v315, 2u, @"NWAAPIS_bytes", v82, v89, @"Data Bytes", @"BK Tx Bytes");
              sub_100034C04(v80, v81, v308, a6, v315, 5u, @"NWAAPIS_bytes", v82, v89, @"Data Bytes", @"VI Tx Bytes");
              sub_100034C04(v80, v81, v308, a6, v315, 4u, @"NWAAPIS_bytes", v82, v89, @"Data Bytes", @"VO Tx Bytes");
              sub_100034C04(v80, v81, v308, a6, v315, 1u, @"NWAAPIS_bytes", v82, v89, @"Data Bytes", @"Tx Bytes");
            }

            v101 = [v80 objectForKeyedSubscript:v82];
            v102 = [v101 objectForKeyedSubscript:v89];
            v103 = [v102 objectForKeyedSubscript:@"Data Packets"];

            if (v103)
            {
              sub_100034C04(v80, v81, v308, a6, v315, 0, @"NWAAPIS_packets", v82, v89, @"Data Packets", @"Rx Packets");
              sub_100034C04(v80, v81, v308, a6, v315, 3u, @"NWAAPIS_packets", v82, v89, @"Data Packets", @"BE Tx Packets");
              sub_100034C04(v80, v81, v308, a6, v315, 2u, @"NWAAPIS_packets", v82, v89, @"Data Packets", @"BK Tx Packets");
              sub_100034C04(v80, v81, v308, a6, v315, 5u, @"NWAAPIS_packets", v82, v89, @"Data Packets", @"VI Tx Packets");
              sub_100034C04(v80, v81, v308, a6, v315, 4u, @"NWAAPIS_packets", v82, v89, @"Data Packets", @"VO Tx Packets");
              sub_100034C04(v80, v81, v308, a6, v315, 1u, @"NWAAPIS_packets", v82, v89, @"Data Packets", @"Tx Packets");
            }

            v104 = [v80 objectForKeyedSubscript:v82];
            v105 = [v104 objectForKeyedSubscript:v89];
            v106 = [v105 objectForKeyedSubscript:@"Manager Config"];

            if (v106)
            {
              sub_10003474C(v80, v81, v308, a6, v315, @"NWAAPIS_npeers", v82, v89, @"Manager Config", @"Peer Count State");
              sub_10003474C(v80, v81, v308, a6, v315, @"NWAAPIS_enableStates", v82, v89, @"Manager Config", @"Enabled State");
            }

            v107 = [v80 objectForKeyedSubscript:v82];
            v108 = [v107 objectForKeyedSubscript:v89];
            v109 = [v108 objectForKeyedSubscript:@"TxCompletion Latency"];
            v110 = [v109 objectForKeyedSubscript:@"Completion Latency Be"];

            if (v110)
            {
              sub_10003611C(v80, v81, v308, a6, v315, @"NWAAPIS_txLatencyBEs", v82, v89, @"Completion Latency Be");
            }

            v111 = [v80 objectForKeyedSubscript:v82];
            v112 = [v111 objectForKeyedSubscript:v89];
            v113 = [v112 objectForKeyedSubscript:@"TxCompletion Latency"];
            v114 = [v113 objectForKeyedSubscript:@"Completion Latency Bk"];

            if (v114)
            {
              sub_10003611C(v80, v81, v308, a6, v315, @"NWAAPIS_txLatencyBKs", v82, v89, @"Completion Latency Bk");
            }

            v115 = [v80 objectForKeyedSubscript:v82];
            v116 = [v115 objectForKeyedSubscript:v89];
            v117 = [v116 objectForKeyedSubscript:@"TxCompletion Latency"];
            v118 = [v117 objectForKeyedSubscript:@"Completion Latency Vo"];

            if (v118)
            {
              sub_10003611C(v80, v81, v308, a6, v315, @"NWAAPIS_txLatencyVOs", v82, v89, @"Completion Latency Vo");
            }

            v119 = [v80 objectForKeyedSubscript:v82];
            v120 = [v119 objectForKeyedSubscript:v89];
            v121 = [v120 objectForKeyedSubscript:@"TxCompletion Latency"];
            v122 = [v121 objectForKeyedSubscript:@"Completion Latency Vi"];

            if (v122)
            {
              sub_10003611C(v80, v81, v308, a6, v315, @"NWAAPIS_txLatencyVIs", v82, v89, @"Completion Latency Vi");
            }
          }

          goto LABEL_89;
        }
      }

      v85 = [v84 countByEnumeratingWithState:v325 objects:buf count:16];
      if (v85)
      {
        continue;
      }

      break;
    }
  }

  v89 = 0;
LABEL_89:
  objc_autoreleasePoolPop(v287);

  objc_destroyWeak(&v329);
  contextb = contexta;

  v123 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v123))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v123, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "populateNWActivityAPInterfaceStats", "", buf, 2u);
  }

  v124 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v124))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v124, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "populateNWActivityIRInterfaceStats", "", buf, 2u);
  }

  v125 = [v304 fieldForKey:@"NWA_irIfStats"];
  [v125 subMessageValue];
  v126 = v284 = v125;
  objc_initWeak(&v329, val);
  v316 = v315;
  v300 = v299;
  v127 = v80;
  v309 = objc_loadWeakRetained(&v329);
  v128 = v126;
  v129 = sub_10001E74C(v127);
  v288 = objc_autoreleasePoolPush();
  v327 = 0u;
  v328 = 0u;
  *v325 = 0u;
  v326 = 0u;
  v130 = [v127 objectForKeyedSubscript:v129];
  v131 = [v130 allKeys];

  v132 = [v131 countByEnumeratingWithState:v325 objects:buf count:16];
  if (v132)
  {
    v133 = *v326;
    while (2)
    {
      for (j = 0; j != v132; ++j)
      {
        if (*v326 != v133)
        {
          objc_enumerationMutation(v131);
        }

        v135 = *(v325[1] + j);
        if ([v135 containsString:@"Interface ir"] && (objc_msgSend(v135, "containsString:", @"Peer") & 1) == 0)
        {
          v136 = v135;

          if (v136)
          {
            v137 = [v128 fieldForKey:@"NWAIRIS_role"];
            v138 = [v137 stringValue];
            v139 = [v138 isEqualToString:v136];

            if ((v139 & 1) == 0)
            {
              v140 = WALogCategoryDefaultHandle();
              if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
              {
                *v330 = 136446466;
                v331 = "void populateNWActivityIRInterfaceStats(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
                v332 = 1024;
                v333 = 1499;
                _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Setting IR Interface", v330, 0x12u);
              }

              v141 = [v128 fieldForKey:@"NWAIRIS_role"];
              [v141 setStringValue:v136];
            }

            v142 = [v127 objectForKeyedSubscript:v129];
            v143 = [v142 objectForKeyedSubscript:v136];
            v144 = [v143 objectForKeyedSubscript:@"Manager Config"];

            if (v144)
            {
              sub_10003453C(v127, v128, @"NWAIRIS_enabled", v129, v136, @"Manager Config", @"Enabled");
              sub_10003453C(v127, v128, @"NWAIRIS_peerCount", v129, v136, @"Manager Config", @"Peer Count");
              sub_10003453C(v127, v128, @"NWAIRIS_peersAdded", v129, v136, @"Manager Config", @"Peers Added");
              sub_10003453C(v127, v128, @"NWAIRIS_peersRemoved", v129, v136, @"Manager Config", @"Peers Removed");
            }

            v145 = [v127 objectForKeyedSubscript:v129];
            v146 = [v145 objectForKeyedSubscript:v136];
            v147 = [v146 objectForKeyedSubscript:@"Data Bytes"];

            if (v147)
            {
              sub_100034C04(v127, v128, v309, a6, v316, 0, @"NWAIRIS_bytes", v129, v136, @"Data Bytes", @"Rx Bytes");
              sub_100034C04(v127, v128, v309, a6, v316, 3u, @"NWAIRIS_bytes", v129, v136, @"Data Bytes", @"BE Tx Bytes");
              sub_100034C04(v127, v128, v309, a6, v316, 2u, @"NWAIRIS_bytes", v129, v136, @"Data Bytes", @"BK Tx Bytes");
              sub_100034C04(v127, v128, v309, a6, v316, 5u, @"NWAIRIS_bytes", v129, v136, @"Data Bytes", @"VI Tx Bytes");
              sub_100034C04(v127, v128, v309, a6, v316, 4u, @"NWAIRIS_bytes", v129, v136, @"Data Bytes", @"VO Tx Bytes");
              sub_100034C04(v127, v128, v309, a6, v316, 1u, @"NWAIRIS_bytes", v129, v136, @"Data Bytes", @"Tx Bytes");
            }

            v148 = [v127 objectForKeyedSubscript:v129];
            v149 = [v148 objectForKeyedSubscript:v136];
            v150 = [v149 objectForKeyedSubscript:@"Data Packets"];

            if (v150)
            {
              sub_100034C04(v127, v128, v309, a6, v316, 0, @"NWAIRIS_packets", v129, v136, @"Data Packets", @"Rx Packets");
              sub_100034C04(v127, v128, v309, a6, v316, 3u, @"NWAIRIS_packets", v129, v136, @"Data Packets", @"BE Tx Packets");
              sub_100034C04(v127, v128, v309, a6, v316, 2u, @"NWAIRIS_packets", v129, v136, @"Data Packets", @"BK Tx Packets");
              sub_100034C04(v127, v128, v309, a6, v316, 5u, @"NWAIRIS_packets", v129, v136, @"Data Packets", @"VI Tx Packets");
              sub_100034C04(v127, v128, v309, a6, v316, 4u, @"NWAIRIS_packets", v129, v136, @"Data Packets", @"VO Tx Packets");
              sub_100034C04(v127, v128, v309, a6, v316, 1u, @"NWAIRIS_packets", v129, v136, @"Data Packets", @"Tx Packets");
            }

            v151 = [v127 objectForKeyedSubscript:v129];
            v152 = [v151 objectForKeyedSubscript:v136];
            v153 = [v152 objectForKeyedSubscript:@"Manager Config"];

            if (v153)
            {
              sub_10003474C(v127, v128, v309, a6, v316, @"NWAIRIS_npeers", v129, v136, @"Manager Config", @"Peer Count State");
              sub_10003474C(v127, v128, v309, a6, v316, @"NWAIRIS_enableStates", v129, v136, @"Manager Config", @"Enabled State");
            }

            v154 = [v127 objectForKeyedSubscript:v129];
            v155 = [v154 objectForKeyedSubscript:v136];
            v156 = [v155 objectForKeyedSubscript:@"TxCompletion Latency"];
            v157 = [v156 objectForKeyedSubscript:@"Completion Latency Be"];

            if (v157)
            {
              sub_10003611C(v127, v128, v309, a6, v316, @"NWAIRIS_txLatencyBEs", v129, v136, @"Completion Latency Be");
            }

            v158 = [v127 objectForKeyedSubscript:v129];
            v159 = [v158 objectForKeyedSubscript:v136];
            v160 = [v159 objectForKeyedSubscript:@"TxCompletion Latency"];
            v161 = [v160 objectForKeyedSubscript:@"Completion Latency Bk"];

            if (v161)
            {
              sub_10003611C(v127, v128, v309, a6, v316, @"NWAIRIS_txLatencyBKs", v129, v136, @"Completion Latency Bk");
            }

            v162 = [v127 objectForKeyedSubscript:v129];
            v163 = [v162 objectForKeyedSubscript:v136];
            v164 = [v163 objectForKeyedSubscript:@"TxCompletion Latency"];
            v165 = [v164 objectForKeyedSubscript:@"Completion Latency Vo"];

            if (v165)
            {
              sub_10003611C(v127, v128, v309, a6, v316, @"NWAIRIS_txLatencyVOs", v129, v136, @"Completion Latency Vo");
            }

            v166 = [v127 objectForKeyedSubscript:v129];
            v167 = [v166 objectForKeyedSubscript:v136];
            v168 = [v167 objectForKeyedSubscript:@"TxCompletion Latency"];
            v169 = [v168 objectForKeyedSubscript:@"Completion Latency Vi"];

            if (v169)
            {
              sub_10003611C(v127, v128, v309, a6, v316, @"NWAIRIS_txLatencyVIs", v129, v136, @"Completion Latency Vi");
            }
          }

          goto LABEL_124;
        }
      }

      v132 = [v131 countByEnumeratingWithState:v325 objects:buf count:16];
      if (v132)
      {
        continue;
      }

      break;
    }
  }

  v136 = 0;
LABEL_124:
  objc_autoreleasePoolPop(v288);

  objc_destroyWeak(&v329);
  contextc = contextb;

  v170 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v170))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v170, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "populateNWActivityIRInterfaceStats", "", buf, 2u);
  }

  v171 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v171))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v171, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "populateNWActivityNANInterfaceStats", "", buf, 2u);
  }

  v172 = [v304 fieldForKey:@"NWA_nanIfStats"];
  [v172 subMessageValue];
  v173 = v285 = v172;
  objc_initWeak(&v329, val);
  v317 = v316;
  v301 = v300;
  v174 = v127;
  v310 = objc_loadWeakRetained(&v329);
  v175 = v173;
  v176 = sub_10001E74C(v174);
  v289 = objc_autoreleasePoolPush();
  v327 = 0u;
  v328 = 0u;
  *v325 = 0u;
  v326 = 0u;
  v177 = [v174 objectForKeyedSubscript:v176];
  v178 = [v177 allKeys];

  v179 = [v178 countByEnumeratingWithState:v325 objects:buf count:16];
  if (v179)
  {
    v180 = *v326;
    while (2)
    {
      for (k = 0; k != v179; ++k)
      {
        if (*v326 != v180)
        {
          objc_enumerationMutation(v178);
        }

        v182 = *(v325[1] + k);
        if ([v182 containsString:@"Interface nan"] && (objc_msgSend(v182, "containsString:", @"Peer") & 1) == 0)
        {
          v183 = v182;

          if (v183)
          {
            v184 = [v175 fieldForKey:@"NWANANIS_role"];
            v185 = [v184 stringValue];
            v186 = [v185 isEqualToString:v183];

            if ((v186 & 1) == 0)
            {
              v187 = WALogCategoryDefaultHandle();
              if (os_log_type_enabled(v187, OS_LOG_TYPE_DEBUG))
              {
                *v330 = 136446466;
                v331 = "void populateNWActivityNANInterfaceStats(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
                v332 = 1024;
                v333 = 1588;
                _os_log_impl(&_mh_execute_header, v187, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Setting NAN Interface", v330, 0x12u);
              }

              v188 = [v175 fieldForKey:@"NWANANIS_role"];
              [v188 setStringValue:v183];
            }

            v189 = [v174 objectForKeyedSubscript:v176];
            v190 = [v189 objectForKeyedSubscript:v183];
            v191 = [v190 objectForKeyedSubscript:@"Manager Config"];

            if (v191)
            {
              sub_10003453C(v174, v175, @"NWANANIS_enabled", v176, v183, @"Manager Config", @"Enabled");
              sub_10003453C(v174, v175, @"NWANANIS_peerCount", v176, v183, @"Manager Config", @"Peer Count");
              sub_10003453C(v174, v175, @"NWANANIS_peersAdded", v176, v183, @"Manager Config", @"Peers Added");
              sub_10003453C(v174, v175, @"NWANANIS_peersRemoved", v176, v183, @"Manager Config", @"Peers Removed");
            }

            v192 = [v174 objectForKeyedSubscript:v176];
            v193 = [v192 objectForKeyedSubscript:v183];
            v194 = [v193 objectForKeyedSubscript:@"Data Bytes"];

            if (v194)
            {
              sub_100034C04(v174, v175, v310, a6, v317, 0, @"NWANANIS_bytes", v176, v183, @"Data Bytes", @"Rx Bytes");
              sub_100034C04(v174, v175, v310, a6, v317, 3u, @"NWANANIS_bytes", v176, v183, @"Data Bytes", @"BE Tx Bytes");
              sub_100034C04(v174, v175, v310, a6, v317, 2u, @"NWANANIS_bytes", v176, v183, @"Data Bytes", @"BK Tx Bytes");
              sub_100034C04(v174, v175, v310, a6, v317, 5u, @"NWANANIS_bytes", v176, v183, @"Data Bytes", @"VI Tx Bytes");
              sub_100034C04(v174, v175, v310, a6, v317, 4u, @"NWANANIS_bytes", v176, v183, @"Data Bytes", @"VO Tx Bytes");
              sub_100034C04(v174, v175, v310, a6, v317, 1u, @"NWANANIS_bytes", v176, v183, @"Data Bytes", @"Tx Bytes");
            }

            v195 = [v174 objectForKeyedSubscript:v176];
            v196 = [v195 objectForKeyedSubscript:v183];
            v197 = [v196 objectForKeyedSubscript:@"Data Packets"];

            if (v197)
            {
              sub_100034C04(v174, v175, v310, a6, v317, 0, @"NWANANIS_packets", v176, v183, @"Data Packets", @"Rx Packets");
              sub_100034C04(v174, v175, v310, a6, v317, 3u, @"NWANANIS_packets", v176, v183, @"Data Packets", @"BE Tx Packets");
              sub_100034C04(v174, v175, v310, a6, v317, 2u, @"NWANANIS_packets", v176, v183, @"Data Packets", @"BK Tx Packets");
              sub_100034C04(v174, v175, v310, a6, v317, 5u, @"NWANANIS_packets", v176, v183, @"Data Packets", @"VI Tx Packets");
              sub_100034C04(v174, v175, v310, a6, v317, 4u, @"NWANANIS_packets", v176, v183, @"Data Packets", @"VO Tx Packets");
              sub_100034C04(v174, v175, v310, a6, v317, 1u, @"NWANANIS_packets", v176, v183, @"Data Packets", @"Tx Packets");
            }

            v198 = [v174 objectForKeyedSubscript:v176];
            v199 = [v198 objectForKeyedSubscript:v183];
            v200 = [v199 objectForKeyedSubscript:@"Manager Config"];

            if (v200)
            {
              sub_10003474C(v174, v175, v310, a6, v317, @"NWANANIS_npeers", v176, v183, @"Manager Config", @"Peer Count State");
              sub_10003474C(v174, v175, v310, a6, v317, @"NWANANIS_enableStates", v176, v183, @"Manager Config", @"Enabled State");
            }

            v201 = [v174 objectForKeyedSubscript:v176];
            v202 = [v201 objectForKeyedSubscript:v183];
            v203 = [v202 objectForKeyedSubscript:@"TxCompletion Latency"];
            v204 = [v203 objectForKeyedSubscript:@"Completion Latency Be"];

            if (v204)
            {
              sub_10003611C(v174, v175, v310, a6, v317, @"NWANANIS_txLatencyBEs", v176, v183, @"Completion Latency Be");
            }

            v205 = [v174 objectForKeyedSubscript:v176];
            v206 = [v205 objectForKeyedSubscript:v183];
            v207 = [v206 objectForKeyedSubscript:@"TxCompletion Latency"];
            v208 = [v207 objectForKeyedSubscript:@"Completion Latency Bk"];

            if (v208)
            {
              sub_10003611C(v174, v175, v310, a6, v317, @"NWANANIS_txLatencyBKs", v176, v183, @"Completion Latency Bk");
            }

            v209 = [v174 objectForKeyedSubscript:v176];
            v210 = [v209 objectForKeyedSubscript:v183];
            v211 = [v210 objectForKeyedSubscript:@"TxCompletion Latency"];
            v212 = [v211 objectForKeyedSubscript:@"Completion Latency Vo"];

            if (v212)
            {
              sub_10003611C(v174, v175, v310, a6, v317, @"NWANANIS_txLatencyVOs", v176, v183, @"Completion Latency Vo");
            }

            v213 = [v174 objectForKeyedSubscript:v176];
            v214 = [v213 objectForKeyedSubscript:v183];
            v215 = [v214 objectForKeyedSubscript:@"TxCompletion Latency"];
            v216 = [v215 objectForKeyedSubscript:@"Completion Latency Vi"];

            if (v216)
            {
              sub_10003611C(v174, v175, v310, a6, v317, @"NWANANIS_txLatencyVIs", v176, v183, @"Completion Latency Vi");
            }
          }

          goto LABEL_159;
        }
      }

      v179 = [v178 countByEnumeratingWithState:v325 objects:buf count:16];
      if (v179)
      {
        continue;
      }

      break;
    }
  }

  v183 = 0;
LABEL_159:
  objc_autoreleasePoolPop(v289);

  objc_destroyWeak(&v329);
  v217 = contextc;

  v218 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v218))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v218, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "populateNWActivityNANInterfaceStats", "", buf, 2u);
  }

  v219 = [v304 fieldForKey:@"NWA_controllerStats"];
  contextd = [v219 subMessageValue];

  v220 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v220))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v220, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "nwActivityIteratorblock", "", buf, 2u);
  }

  v221 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v221))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v221, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "populateNWActivityControllerStats", "", buf, 2u);
  }

  v322 = v217;
  sub_100017F44(contextd, val, a6, v317, v301, v174, &v322);
  v222 = v322;

  v223 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v223))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v223, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "populateNWActivityControllerStats", "", buf, 2u);
  }

  v224 = [v304 fieldForKey:@"NWA_linkQualSample"];
  v225 = [v224 subMessageValue];
  v321 = v222;
  sub_10001C99C(v225, v317, v301, v174, &v321);
  v290 = v321;

  v226 = v304;
  objc_initWeak(v325, val);
  v318 = v317;
  v305 = v301;
  v227 = v174;
  WeakRetained = objc_loadWeakRetained(v325);
  v302 = objc_autoreleasePoolPush();
  v228 = sub_10001E74C(v227);
  v229 = 0;
  v230 = 0;
  v231 = 1;
  while (1)
  {
    v232 = v231;
    v233 = [[NSString alloc] initWithFormat:@"WiFi Quality Score Slice %lu", v230];

    v234 = [v227 objectForKeyedSubscript:v228];
    v229 = v233;
    v235 = [v234 objectForKeyedSubscript:v233];
    v236 = v235 == 0;

    if (v236)
    {
      goto LABEL_174;
    }

    v237 = [v227 objectForKeyedSubscript:v228];
    v238 = [v237 objectForKeyedSubscript:v229];
    v239 = [v238 objectForKeyedSubscript:@"Counters"];
    v240 = v239 == 0;

    if (v240)
    {
      break;
    }

    v241 = [v226 fieldForKey:@"NWA_scores"];
    v242 = [v241 repeatableValues];
    v243 = v242 == 0;

    if (v243)
    {
      v244 = [WeakRetained getNewMessageForKey:@"QS" groupType:a6 forProcessWithToken:v318];
      v245 = [v226 fieldForKey:@"NWA_scores"];
      [v245 addRepeatableSubMessageValue:v244];

      v246 = [v226 fieldForKey:@"NWA_scores"];
      v247 = [v244 copy];
      [v246 addRepeatableSubMessageValue:v247];
    }

    v248 = [v226 fieldForKey:@"NWA_scores"];
    v249 = [v248 repeatableValues];
    v250 = [v249 objectAtIndex:v230];

    if (!v250)
    {
      v277 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v277, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v337 = "void populateNWActivityQualityScore(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
        v338 = 1024;
        v339 = 2643;
        _os_log_impl(&_mh_execute_header, v277, OS_LOG_TYPE_ERROR, "%{public}s::%d:Bad sliceSpecificMessage", buf, 0x12u);
      }

      goto LABEL_200;
    }

    sub_10003453C(v227, v250, @"QS_channelQuality", v228, v229, @"Counters", @"Channel Quality Score");
    sub_10003453C(v227, v250, @"QS_txLoss", v228, v229, @"Counters", @"Tx Loss Score");
    sub_10003453C(v227, v250, @"QS_rxLoss", v228, v229, @"Counters", @"Rx Loss Score");
    sub_10003453C(v227, v250, @"QS_txLatency", v228, v229, @"Counters", @"Tx Latency Score");
    sub_10003453C(v227, v250, @"QS_rxLatency", v228, v229, @"Counters", @"Rx Latency Score");

LABEL_174:
    v231 = 0;
    v251 = 0;
    v230 = 1;
    if ((v232 & 1) == 0)
    {
      goto LABEL_175;
    }
  }

  v277 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v277, OS_LOG_TYPE_ERROR))
  {
    v278 = [v227 objectForKeyedSubscript:v228];
    v279 = [v278 objectForKeyedSubscript:v229];
    v280 = [v279 allKeys];
    *buf = 136446722;
    v337 = "void populateNWActivityQualityScore(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
    v338 = 1024;
    v339 = 2632;
    v340 = 2112;
    v341 = v280;
    _os_log_impl(&_mh_execute_header, v277, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find subgroup with contains Counters, we have %@", buf, 0x1Cu);
  }

LABEL_200:

  v251 = 1;
LABEL_175:

  objc_autoreleasePoolPop(v302);
  if (v251)
  {
    v252 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v252, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v337 = "void populateNWActivityQualityScore(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
      v338 = 1024;
      v339 = 2657;
      _os_log_impl(&_mh_execute_header, v252, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed ", buf, 0x12u);
    }
  }

  objc_destroyWeak(v325);
  v253 = v226;
  objc_initWeak(v325, val);
  v319 = v318;
  v306 = v305;
  v254 = v227;
  v312 = objc_loadWeakRetained(v325);
  v303 = objc_autoreleasePoolPush();
  v255 = sub_10001E74C(v254);
  v256 = 0;
  v257 = 1;
  while (2)
  {
    v258 = v257;
    v259 = [[NSString alloc] initWithFormat:@"BT LE Connection Stats Slice %lu", v256];
    v260 = [v254 objectForKeyedSubscript:v255];
    v261 = [v260 objectForKeyedSubscript:v259];
    v262 = v261 == 0;

    if (v262)
    {
LABEL_185:

      v257 = 0;
      v273 = 0;
      v256 = 1;
      if ((v258 & 1) == 0)
      {
        goto LABEL_186;
      }

      continue;
    }

    break;
  }

  v263 = [v253 fieldForKey:@"NWA_btleConnections"];
  v264 = [v263 repeatableValues];
  v265 = v264 == 0;

  if (v265)
  {
    v266 = [v312 getNewMessageForKey:@"WFAAWDBTLECS" groupType:a6 forProcessWithToken:v319];
    v267 = [v253 fieldForKey:@"NWA_btleConnections"];
    [v267 addRepeatableSubMessageValue:v266];

    v268 = [v253 fieldForKey:@"NWA_btleConnections"];
    v269 = [v266 copy];
    [v268 addRepeatableSubMessageValue:v269];
  }

  v270 = [v253 fieldForKey:@"NWA_btleConnections"];
  v271 = [v270 repeatableValues];
  v272 = [v271 objectAtIndex:v256];

  if (v272)
  {
    sub_10003453C(v254, v272, @"WFAAWDBTLECS_start", v255, v259, @"Counters", @"BT LE Cnx Start");
    sub_10003453C(v254, v272, @"WFAAWDBTLECS_complete", v255, v259, @"Counters", @"BT LE Cnx Complete");
    sub_10003453C(v254, v272, @"WFAAWDBTLECS_peakOutage", v255, v259, @"Counters", @"BT LE Cnx Peak Outage");
    sub_10003453C(v254, v272, @"WFAAWDBTLECS_totalDuration", v255, v259, @"Counters", @"BT LE Cnx Total Duration");
    sub_10003453C(v254, v272, @"WFAAWDBTLECS_dc0", v255, v259, @"Counters", @"BT LE Cnx DC 0");
    sub_10003453C(v254, v272, @"WFAAWDBTLECS_dc1", v255, v259, @"Counters", @"BT LE Cnx DC 1");
    sub_10003453C(v254, v272, @"WFAAWDBTLECS_dc2", v255, v259, @"Counters", @"BT LE Cnx DC 2");
    sub_10003453C(v254, v272, @"WFAAWDBTLECS_dc3", v255, v259, @"Counters", @"BT LE Cnx DC 3");
    sub_10003453C(v254, v272, @"WFAAWDBTLECS_dc4", v255, v259, @"Counters", @"BT LE Cnx DC 4");
    sub_10003453C(v254, v272, @"WFAAWDBTLECS_dc5", v255, v259, @"Counters", @"BT LE Cnx DC 5");

    goto LABEL_185;
  }

  v276 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v276, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v337 = "void populateNWActivityBTLEConnection(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
    v338 = 1024;
    v339 = 2588;
    _os_log_impl(&_mh_execute_header, v276, OS_LOG_TYPE_ERROR, "%{public}s::%d:Bad sliceSpecificMessage", buf, 0x12u);
  }

  v273 = 1;
LABEL_186:

  objc_autoreleasePoolPop(v303);
  if (v273)
  {
    v274 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v274, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v337 = "void populateNWActivityBTLEConnection(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
      v338 = 1024;
      v339 = 2608;
      _os_log_impl(&_mh_execute_header, v274, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed ", buf, 0x12u);
    }
  }

  objc_destroyWeak(v325);
  v275 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v275))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v275, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "nwActivityIteratorblock", "", buf, 2u);
  }

  objc_autoreleasePoolPop(v281);
  v291[2](v291, v253, v290);

  objc_destroyWeak(&location);
}

void sub_100015D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, id location, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a28);
  _Unwind_Resume(a1);
}

void sub_100015E6C(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v141 = a1;
  objc_initWeak(&location, a2);
  v149 = a4;
  v140 = a5;
  v154 = a6;
  v161 = a7;
  v148 = objc_loadWeakRetained(&location);
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v13 = [v141 fieldForKey:@"NWA_interfaceStats"];
  v14 = [v13 repeatableValues];

  v15 = [v14 countByEnumeratingWithState:&v167 objects:v177 count:16];
  if (!v15)
  {

    v162 = 0;
LABEL_13:
    v24 = [v148 getNewMessageForKey:@"NWAIS" groupType:a3 forProcessWithToken:v149];

    v25 = [v141 fieldForKey:@"NWA_interfaceStats"];
    [v25 addRepeatableSubMessageValue:v24];

    if ([v161 hasSuffix:v161])
    {
      v26 = [v24 fieldForKey:@"NWAIS_role"];
      [v26 setStringValue:v161];
    }

    v162 = v24;
    goto LABEL_16;
  }

  v162 = 0;
  v16 = 0;
  v17 = *v168;
  do
  {
    for (i = 0; i != v15; i = i + 1)
    {
      if (*v168 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v167 + 1) + 8 * i);
      v20 = [v19 fieldForKey:@"NWAIS_role"];
      v21 = [v20 stringValue];
      v22 = [v21 isEqualToString:v161];

      if (v22)
      {
        v23 = v19;

        v16 = 1;
        v162 = v23;
      }
    }

    v15 = [v14 countByEnumeratingWithState:&v167 objects:v177 count:16];
  }

  while (v15);

  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_16:
  v27 = [v162 fieldForKey:@"NWAIS_role"];
  v28 = [v27 stringValue];
  v29 = [v28 isEqualToString:v161];

  v30 = &WAXPCRequestDelegateInterface_ptr;
  if (v29)
  {
    v31 = v162;
    v145 = v149;
    v152 = v161;
    v150 = v140;
    v32 = v154;
    v33 = [v31 fieldForKey:@"NWAIS_assoc"];
    obj = [v33 subMessageValue];
    context = v32;

    v34 = [NSString stringWithFormat:@"Interface %@", v152];
    v35 = sub_10001E74C(v32);
    v187 = 0u;
    v188 = 0u;
    memset(v186, 0, sizeof(v186));
    v36 = [v32 objectForKeyedSubscript:v35];
    v37 = [v36 allKeys];

    v38 = [v37 countByEnumeratingWithState:v186 objects:v189 count:16];
    if (v38)
    {
      v39 = **&v186[16];
LABEL_19:
      v40 = 0;
      while (1)
      {
        if (**&v186[16] != v39)
        {
          objc_enumerationMutation(v37);
        }

        v41 = *(*&v186[8] + 8 * v40);
        if ([v41 isEqualToString:v34])
        {
          break;
        }

        if (v38 == ++v40)
        {
          v38 = [v37 countByEnumeratingWithState:v186 objects:v189 count:16];
          if (v38)
          {
            goto LABEL_19;
          }

          goto LABEL_25;
        }
      }

      v45 = v41;

      if (!v45)
      {
        goto LABEL_26;
      }

      v174 = 0u;
      v175 = 0u;
      v172 = 0u;
      v173 = 0u;
      v46 = [context objectForKeyedSubscript:v35];
      v47 = [v46 objectForKeyedSubscript:v45];
      v48 = [v47 allKeys];

      v49 = [v48 countByEnumeratingWithState:&v172 objects:buf count:16];
      v143 = v31;
      if (!v49)
      {
LABEL_38:

        v31 = v143;
LABEL_39:
        v42 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v54 = [context objectForKeyedSubscript:v35];
          v55 = [v54 objectForKeyedSubscript:v45];
          v56 = [v55 allKeys];
          *v178 = 136446722;
          v179 = "void populateNWActivityInterfaceAssocStats(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
          v180 = 1024;
          v181 = 1068;
          v182 = 2112;
          v183 = v56;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find subgroup, we have %@", v178, 0x1Cu);
        }

        goto LABEL_41;
      }

      v50 = *v173;
LABEL_32:
      v51 = v30;
      v52 = 0;
      while (1)
      {
        if (*v173 != v50)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v172 + 1) + 8 * v52);
        if ([v53 containsString:@"Association Join Counters"])
        {
          break;
        }

        if (v49 == ++v52)
        {
          v49 = [v48 countByEnumeratingWithState:&v172 objects:buf count:16];
          v30 = v51;
          if (v49)
          {
            goto LABEL_32;
          }

          goto LABEL_38;
        }
      }

      v58 = v53;

      v30 = v51;
      v31 = v143;
      if (!v58)
      {
        goto LABEL_39;
      }

      sub_10003453C(context, obj, @"NWAA_authSuccess", v35, v45, v58, @"Auth Success");
      sub_10003453C(context, obj, @"NWAA_authFailed", v35, v45, v58, @"Auth Failed");
      sub_10003453C(context, obj, @"NWAA_assocSuccess", v35, v45, v58, @"Assoc Success");
      sub_10003453C(context, obj, @"NWAA_assocFailed", v35, v45, v58, @"Assoc Failed");
      sub_10003453C(context, obj, @"NWAA_reassocSuccess", v35, v45, v58, @"Reassoc Success");
      sub_10003453C(context, obj, @"NWAA_reassocFailed", v35, v45, v58, @"Reassoc Failed");
      sub_10003453C(context, obj, @"NWAA_linkChanged", v35, v45, v58, @"Link Changed");
      sub_10003453C(context, obj, @"NWAA_roamSuccess", v35, v45, v58, @"Roam Success");
      sub_10003453C(context, obj, @"NWAA_roamFailed", v35, v45, v58, @"Roam Failed");
      sub_10003453C(context, obj, @"NWAA_assocDoneSuccess", v35, v45, v58, @"Assoc Done Success");
      sub_10003453C(context, obj, @"NWAA_assocDoneFailed", v35, v45, v58, @"Assoc Done Failed");
      sub_10003453C(context, obj, @"NWAA_assocReady", v35, v45, v58, @"Assoc Ready");
      sub_10003453C(context, obj, @"NWAA_ssidChanged", v35, v45, v58, @"SSID Changed");
      sub_10003453C(context, obj, @"NWAA_bssidChanged", v35, v45, v58, @"BSSID Changed");
      sub_10003453C(context, obj, @"NWAA_deauthReceived", v35, v45, v58, @"Deauth Received");
      sub_10003453C(context, obj, @"NWAA_disassocReceived", v35, v45, v58, @"Dissasoc Received");
      sub_10003453C(context, obj, @"NWAA_decryptError", v35, v45, v58, @"Decrypt Error");
      sub_10003453C(context, obj, @"NWAA_pruned", v35, v45, v58, @"Pruned");
      sub_10003453C(context, obj, @"NWAA_supplicant", v35, v45, v58, @"Supplicant");
      sub_10003453C(context, obj, @"NWAA_macAddrChanged", v35, v45, v58, @"MAC Addr Changed");
      sub_10003453C(context, obj, @"NWAA_rssiChanged", v35, v45, v58, @"RSSI Changed");
      sub_10003453C(context, obj, @"NWAA_homeChanQualChanged", v35, v45, v58, @"Home Channel Qual Changed");
      sub_10003453C(context, obj, @"NWAA_chanSwitchEvent", v35, v45, v58, @"Channel Switch Event");
      sub_10003453C(context, obj, @"NWAA_roamPrep", v35, v45, v58, @"Roam Prep");
      sub_10003453C(context, obj, @"NWAA_roamScanStart", v35, v45, v58, @"Roam Scan Start");
      sub_10003453C(context, obj, @"NWAA_roamScanEnd", v35, v45, v58, @"Roam Scan End");
      sub_10003453C(context, obj, @"NWAA_scanResults", v35, v45, v58, @"Scan Results");
      sub_10003453C(context, obj, @"NWAA_scanSummary", v35, v45, v58, @"Scan Summary");
      sub_10003453C(context, obj, @"NWAA_scanDone", v35, v45, v58, @"Scan Done");
      sub_10003453C(context, obj, @"NWAA_scanInternalDone", v35, v45, v58, @"Scan Internal Done");
      sub_10003453C(context, obj, @"NWAA_bssDisallowEvent", v35, v45, v58, @"BSS Disallow Event");
      sub_10003453C(context, obj, @"NWAA_slowWiFiSymptom", v35, v45, v58, @"Slow WiFi Symptom");
      sub_10003453C(context, obj, @"NWAA_dpsSymptom", v35, v45, v58, @"DPS Symptom");
      sub_10003453C(context, obj, @"NWAA_crashTracerTrig", v35, v45, v58, @"Crash Tracer Triggered");
      sub_10003453C(context, obj, @"NWAA_rc1Stats", v35, v45, v58, @"RC1 Stats");
      sub_10003453C(context, obj, @"NWAA_rc2Stats", v35, v45, v58, @"RC2 Stats");
      sub_10003453C(context, obj, @"NWAA_escoTrafficInd", v35, v45, v58, @"ESCO Traffic Indication");
    }

    else
    {
LABEL_25:

LABEL_26:
      v42 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = [context objectForKeyedSubscript:v35];
        v44 = [v43 allKeys];
        *buf = 136446978;
        *&buf[4] = "void populateNWActivityInterfaceAssocStats(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
        *&buf[12] = 1024;
        *&buf[14] = 1059;
        *&buf[18] = 2112;
        *&buf[20] = v34;
        *&buf[28] = 2112;
        *&buf[30] = v44;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find group %@, we have %@", buf, 0x26u);
      }

      v45 = 0;
LABEL_41:

      v57 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *v178 = 136446466;
        v179 = "void populateNWActivityInterfaceAssocStats(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
        v180 = 1024;
        v181 = 1116;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed ", v178, 0x12u);
      }

      v58 = 0;
    }
  }

  v59 = [v30[401] stringWithFormat:@"Interface %@", v161];
  v153 = sub_10001E74C(v154);
  v60 = v59;
  v144 = [v30[401] stringWithFormat:@"Interface %@ Chip", v161];
  v151 = v60;
  if (v60)
  {
    v61 = [v154 objectForKeyedSubscript:v153];
    v62 = [v61 objectForKeyedSubscript:v151];
    v63 = [v62 objectForKeyedSubscript:@"Manager Config"];

    if (v63)
    {
      sub_10003453C(v154, v162, @"NWAIS_enabled", v153, v151, @"Manager Config", @"Enabled");
      sub_10003474C(v154, v162, v148, a3, v149, @"NWAIS_enableStates", v153, v151, @"Manager Config", @"Enabled State");
    }

    else
    {
      v64 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        *v189 = 136446466;
        v190 = "void populateNWActivityInterfaceStats(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSString * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
        v191 = 1024;
        v192 = 1178;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "%{public}s::%d:Infra hasn't been enabled yet, rescan needed, continuing", v189, 0x12u);
      }
    }

    v65 = [v154 objectForKeyedSubscript:v153];
    v66 = [v65 objectForKeyedSubscript:v151];
    v67 = [v66 objectForKeyedSubscript:@"Data Bytes"];

    if (v67)
    {
      sub_100034C04(v154, v162, v148, a3, v149, 0, @"NWAIS_bytes", v153, v151, @"Data Bytes", @"Rx Bytes");
      sub_100034C04(v154, v162, v148, a3, v149, 3u, @"NWAIS_bytes", v153, v151, @"Data Bytes", @"BE Tx Bytes");
      sub_100034C04(v154, v162, v148, a3, v149, 2u, @"NWAIS_bytes", v153, v151, @"Data Bytes", @"BK Tx Bytes");
      sub_100034C04(v154, v162, v148, a3, v149, 5u, @"NWAIS_bytes", v153, v151, @"Data Bytes", @"VI Tx Bytes");
      sub_100034C04(v154, v162, v148, a3, v149, 4u, @"NWAIS_bytes", v153, v151, @"Data Bytes", @"VO Tx Bytes");
      sub_100034C04(v154, v162, v148, a3, v149, 1u, @"NWAIS_bytes", v153, v151, @"Data Bytes", @"Tx Bytes");
    }

    else
    {
      v68 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        *v189 = 136446466;
        v190 = "void populateNWActivityInterfaceStats(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSString * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
        v191 = 1024;
        v192 = 1192;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "%{public}s::%d:Infra Missing Data Bytes subgroup, continuing", v189, 0x12u);
      }
    }

    v69 = [v154 objectForKeyedSubscript:v153];
    v70 = [v69 objectForKeyedSubscript:v151];
    v71 = [v70 objectForKeyedSubscript:@"Data Packets"];

    if (v71)
    {
      sub_100034C04(v154, v162, v148, a3, v149, 0, @"NWAIS_packets", v153, v151, @"Data Packets", @"Rx Packets");
      sub_100034C04(v154, v162, v148, a3, v149, 3u, @"NWAIS_packets", v153, v151, @"Data Packets", @"BE Tx Packets");
      sub_100034C04(v154, v162, v148, a3, v149, 2u, @"NWAIS_packets", v153, v151, @"Data Packets", @"BK Tx Packets");
      sub_100034C04(v154, v162, v148, a3, v149, 5u, @"NWAIS_packets", v153, v151, @"Data Packets", @"VI Tx Packets");
      sub_100034C04(v154, v162, v148, a3, v149, 4u, @"NWAIS_packets", v153, v151, @"Data Packets", @"VO Tx Packets");
      sub_100034C04(v154, v162, v148, a3, v149, 1u, @"NWAIS_packets", v153, v151, @"Data Packets", @"Tx Packets");
    }

    else
    {
      v72 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        *v189 = 136446466;
        v190 = "void populateNWActivityInterfaceStats(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSString * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
        v191 = 1024;
        v192 = 1206;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "%{public}s::%d:Infra Missing Data Packets subgroup, continuing", v189, 0x12u);
      }
    }

    v73 = [v154 objectForKeyedSubscript:v153];
    v74 = [v73 objectForKeyedSubscript:v144];

    if (v74)
    {
      v75 = [v154 objectForKeyedSubscript:v153];
      v76 = [v75 objectForKeyedSubscript:v144];
      v77 = [v76 objectForKeyedSubscript:@"Rx Data Frame Counters"];

      if (v77)
      {
        sub_100034F98(v154, v162, v148, a3, v149, 6, @"NWAIS_packets", v153, v144, @"Rx Data Frame Counters", @"SU MPDU Data");
        sub_100034F98(v154, v162, v148, a3, v149, 8, @"NWAIS_packets", v153, v144, @"Rx Data Frame Counters", @"OFDMA MPDU Data");
        sub_100034F98(v154, v162, v148, a3, v149, 10, @"NWAIS_packets", v153, v144, @"Rx Data Frame Counters", @"MU MIMO MPDU Data");
      }

      v78 = [v154 objectForKeyedSubscript:v153];
      v79 = [v78 objectForKeyedSubscript:v144];
      v80 = [v79 objectForKeyedSubscript:@"Rx Data Byte Counters"];

      if (v80)
      {
        sub_100034F98(v154, v162, v148, a3, v149, 6, @"NWAIS_bytes", v153, v144, @"Rx Data Byte Counters", @"SU MPDU Bytes");
        sub_100034F98(v154, v162, v148, a3, v149, 8, @"NWAIS_bytes", v153, v144, @"Rx Data Byte Counters", @"OFDMA MPDU Bytes");
        sub_100034F98(v154, v162, v148, a3, v149, 10, @"NWAIS_bytes", v153, v144, @"Rx Data Byte Counters", @"MU MIMO MPDU Bytes");
      }

      v81 = [v154 objectForKeyedSubscript:v153];
      v82 = [v81 objectForKeyedSubscript:v144];
      v83 = [v82 objectForKeyedSubscript:@"Tx Data Frame Counters"];

      if (v83)
      {
        sub_100034F98(v154, v162, v148, a3, v149, 7, @"NWAIS_packets", v153, v144, @"Tx Data Frame Counters", @"SU MPDU Data");
        sub_100034F98(v154, v162, v148, a3, v149, 9, @"NWAIS_packets", v153, v144, @"Tx Data Frame Counters", @"OFDMA MPDU Data");
      }

      v84 = [v154 objectForKeyedSubscript:v153];
      v85 = [v84 objectForKeyedSubscript:v144];
      v86 = [v85 objectForKeyedSubscript:@"Tx Data Byte Counters"];

      if (v86)
      {
        sub_100034F98(v154, v162, v148, a3, v149, 7, @"NWAIS_bytes", v153, v144, @"Tx Data Byte Counters", @"SU MPDU Bytes");
        sub_100034F98(v154, v162, v148, a3, v149, 9, @"NWAIS_bytes", v153, v144, @"Tx Data Byte Counters", @"OFDMA MPDU Bytes");
      }
    }

    else
    {
      v87 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        *v189 = 136446466;
        v190 = "void populateNWActivityInterfaceStats(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSString * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
        v191 = 1024;
        v192 = 1233;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "%{public}s::%d:Infra Missing Interface en0 Chip group, continuing", v189, 0x12u);
      }
    }

    v88 = [v154 objectForKeyedSubscript:v153];
    v89 = [v88 objectForKeyedSubscript:v151];
    v90 = [v89 objectForKeyedSubscript:@"Phy Mode"];

    if (v90)
    {
      sub_10003474C(v154, v162, v148, a3, v149, @"NWAIS_phymodes", v153, v151, @"Phy Mode", @"PhyMode State");
    }

    v91 = [v154 objectForKeyedSubscript:v153];
    v92 = [v91 objectForKeyedSubscript:v151];
    v93 = [v92 objectForKeyedSubscript:@"NSS"];

    if (v93)
    {
      sub_10003474C(v154, v162, v148, a3, v149, @"NWAIS_nss", v153, v151, @"NSS", @"NSS State");
    }

    v94 = [v154 objectForKeyedSubscript:v153];
    v95 = [v94 objectForKeyedSubscript:v151];
    v96 = [v95 objectForKeyedSubscript:@"Data Path Stuck"];

    if (v96)
    {
      sub_10003453C(v154, v162, @"NWAIS_consecutivedps", v153, v151, @"Data Path Stuck", @"Consecutive DPS Detected");
      sub_10003453C(v154, v162, @"NWAIS_dps", v153, v151, @"Data Path Stuck", @"DPS Detected");
    }

    v142 = v162;
    obja = v153;
    v97 = v151;
    v146 = v154;
    contexta = objc_autoreleasePoolPush();
    v98 = v97;
    v99 = [v146 allKeys];
    v100 = [v146 objectForKeyedSubscript:obja];
    v101 = [v100 allKeys];

    v102 = [v146 objectForKeyedSubscript:obja];
    v103 = [v102 objectForKeyedSubscript:v98];
    v104 = [v103 allKeys];

    v105 = [v146 objectForKeyedSubscript:obja];
    LODWORD(v102) = v105 == 0;

    if (v102)
    {
      v115 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_95;
      }

      *v189 = 136446978;
      v190 = "void populateNWActivityRxDataStallStats(WAMessageAWD * _Nullable __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
      v191 = 1024;
      v192 = 2527;
      v193 = 2112;
      v194 = obja;
      v195 = 2112;
      v196 = v99;
      v116 = "%{public}s::%d:RxStall Debug: Driver '%@' not found in keyD '%@'";
      v117 = v189;
      v118 = v115;
      v119 = 38;
    }

    else
    {
      v106 = [v146 objectForKeyedSubscript:obja];
      v107 = [v106 objectForKeyedSubscript:v98];
      v108 = v107 == 0;

      if (v108)
      {
        v115 = WALogCategoryDefaultHandle();
        if (!os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_95;
        }

        *v189 = 136447234;
        v190 = "void populateNWActivityRxDataStallStats(WAMessageAWD * _Nullable __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
        v191 = 1024;
        v192 = 2528;
        v193 = 2112;
        v194 = v98;
        v195 = 2112;
        v196 = obja;
        v197 = 2112;
        v198 = v101;
        v116 = "%{public}s::%d:RxStall Debug: Group '%@' not found for driver '%@' in available groups '%@'";
        v117 = v189;
        v118 = v115;
        v119 = 48;
      }

      else
      {
        v185 = 0u;
        memset(buf, 0, sizeof(buf));
        v109 = v104;
        v110 = [v109 countByEnumeratingWithState:buf objects:v189 count:16];
        if (v110)
        {
          v111 = **&buf[16];
LABEL_85:
          v112 = v104;
          v113 = 0;
          while (1)
          {
            if (**&buf[16] != v111)
            {
              objc_enumerationMutation(v109);
            }

            v114 = *(*&buf[8] + 8 * v113);
            if ([v114 isEqualToString:@"Rx Data Stall Counters"])
            {
              break;
            }

            if (v110 == ++v113)
            {
              v110 = [v109 countByEnumeratingWithState:buf objects:v189 count:16];
              v104 = v112;
              if (v110)
              {
                goto LABEL_85;
              }

              goto LABEL_91;
            }
          }

          v120 = v114;

          v104 = v112;
          if (!v120)
          {
            goto LABEL_92;
          }

          v121 = [v142 fieldForKey:@"NWAIS_rxStall"];
          v115 = [v121 subMessageValue];

          if (v115)
          {
            sub_100035F68(v146, v115, @"RDSS_healthcheckFaults", obja, v98, v120, @"HC Reason Reason Fault");
            sub_100035F68(v146, v115, @"RDSS_healthcheckFaultsRtscts", obja, v98, v120, @"HC Report Fault RTS CTS");
            sub_100035F68(v146, v115, @"RDSS_txCtsNoUcast", obja, v98, v120, @"RtsCts TxCts No Ucast");
            sub_100035F68(v146, v115, @"RDSS_txCtsRxUcast", obja, v98, v120, @"RtsCts TxCts Rx Ucast");
            sub_100035F68(v146, v115, @"RDSS_rxMuRts", obja, v98, v120, @"RtsCts Rx MU RTS");
            sub_100035F68(v146, v115, @"RDSS_rxTotalPpdu", obja, v98, v120, @"RtsCts Rx Total PPDU");
            sub_100035F68(v146, v115, @"RDSS_rxMuPpdu", obja, v98, v120, @"RtsCts Rx MU PPDU");
            sub_100035F68(v146, v115, @"RDSS_stallAge", obja, v98, v120, @"RtsCts Stall Age");
            sub_100035F68(v146, v115, @"RDSS_stallElapsedDur", obja, v98, v120, @"RtsCts Stall Start");
            sub_100035F68(v146, v115, @"RDSS_srStallInProgress", obja, v98, v120, @"RtsCts SR-Stall-in-Prog");
            sub_100035F68(v146, v115, @"RDSS_srTimNoUcast", obja, v98, v120, @"RtsCts SR-Tim-No-Ucast");
            sub_100035F68(v146, v115, @"RDSS_srRtsCtsNoUcast", obja, v98, v120, @"RtsCts SR-RtsCts-No-Ucast");
            sub_100035F68(v146, v115, @"RDSS_srMuRtsNoUcast", obja, v98, v120, @"RtsCts SR-MURts-No-Ucast");
            sub_100035F68(v146, v115, @"RDSS_srTxBlanking", obja, v98, v120, @"RtsCts SR-Tx-Blanking");
          }

          else
          {
            v115 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
            {
              *v186 = 136446466;
              *&v186[4] = "void populateNWActivityRxDataStallStats(WAMessageAWD * _Nullable __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
              *&v186[12] = 1024;
              *&v186[14] = 2538;
              _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_ERROR, "%{public}s::%d:RxStall: Could not find 'Rx Data Stall Counters key from NW I/F Stats'", v186, 0x12u);
            }
          }

LABEL_99:

          objc_autoreleasePoolPop(contexta);
          v163 = 0u;
          v164 = 0u;
          v165 = 0u;
          v166 = 0u;
          v122 = [v142 fieldForKey:@"NWAIS_peers"];
          objb = [v122 repeatableValues];

          v123 = [objb countByEnumeratingWithState:&v163 objects:v176 count:16];
          if (v123)
          {
            v124 = 0;
            contextb = 0;
            v125 = *v164;
            do
            {
              for (j = 0; j != v123; j = j + 1)
              {
                if (*v164 != v125)
                {
                  objc_enumerationMutation(objb);
                }

                v127 = *(*(&v163 + 1) + 8 * j);
                v128 = [v127 fieldForKey:@"NWAPS_hashID"];
                v129 = [v128 stringValue];
                v130 = [v129 isEqualToString:@"00:00:00:00:00:00"];

                if (v130)
                {
                  v131 = v127;

                  contextb = 1;
                  v124 = v131;
                }
              }

              v123 = [objb countByEnumeratingWithState:&v163 objects:v176 count:16];
            }

            while (v123);

            if (contextb)
            {
              goto LABEL_112;
            }
          }

          else
          {

            v124 = 0;
          }

          v132 = [v148 getNewMessageForKey:@"NWAPS" groupType:a3 forProcessWithToken:v149];

          v133 = [v142 fieldForKey:@"NWAIS_peers"];
          [v133 addRepeatableSubMessageValue:v132];

          v134 = [v132 fieldForKey:@"NWAPS_hashID"];
          [v134 setStringValue:@"00:00:00:00:00:00"];

          v124 = v132;
LABEL_112:
          sub_10001E980(v142, v124, v148, a3, v149, v140, v146, v161, @"00:00:00:00:00:00", a8);
          goto LABEL_113;
        }

LABEL_91:

LABEL_92:
        v115 = WALogCategoryDefaultHandle();
        if (!os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
        {
LABEL_95:
          v120 = 0;
          goto LABEL_99;
        }

        *v186 = 136446466;
        *&v186[4] = "void populateNWActivityRxDataStallStats(WAMessageAWD * _Nullable __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
        *&v186[12] = 1024;
        *&v186[14] = 2536;
        v116 = "%{public}s::%d:RxStall: Could not find 'Rx Data Stall Counters'";
        v117 = v186;
        v118 = v115;
        v119 = 18;
      }
    }

    _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, v116, v117, v119);
    goto LABEL_95;
  }

  v135 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
  {
    v136 = [v154 objectForKeyedSubscript:v153];
    v137 = [v136 allKeys];
    *v189 = 136446978;
    v190 = "void populateNWActivityInterfaceStats(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSString * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
    v191 = 1024;
    v192 = 1172;
    v193 = 2112;
    v194 = 0;
    v195 = 2112;
    v196 = v137;
    _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find group %@, we have %@", v189, 0x26u);
  }

  v138 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
  {
    *v189 = 136446466;
    v190 = "void populateNWActivityInterfaceStats(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSString * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
    v191 = 1024;
    v192 = 1274;
    _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed ", v189, 0x12u);
  }

  v124 = 0;
LABEL_113:

  objc_destroyWeak(&location);
}

void sub_100017F44(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7)
{
  v11 = a1;
  objc_initWeak(&location, a2);
  v12 = a4;
  v13 = a5;
  v14 = a6;
  val = objc_loadWeakRetained(&location);
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = [v15 fieldForKey:@"NWACS_scanActivity"];
  v20 = [v19 subMessageValue];

  v21 = sub_10001E74C(v18);
  v22 = [v18 objectForKeyedSubscript:v21];
  v23 = [v22 objectForKeyedSubscript:@"WLAN Power"];
  v24 = v23 == 0;

  if (v24)
  {
    v309 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v309, OS_LOG_TYPE_ERROR))
    {
      v310 = [v18 objectForKeyedSubscript:v21];
      v311 = [v310 allKeys];
      *v414 = 136446722;
      v415 = "void populateNWActivityScanActivity(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
      v416 = 1024;
      v417 = 1657;
      v418 = 2112;
      v419 = v311;
      _os_log_impl(&_mh_execute_header, v309, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find group, we have %@", v414, 0x1Cu);
    }
  }

  else
  {
    v25 = [v18 objectForKeyedSubscript:v21];
    v26 = [v25 objectForKeyedSubscript:@"WLAN Power"];
    v27 = [v26 objectForKeyedSubscript:@"Phy Scan"];
    v28 = v27 == 0;

    if (!v28)
    {
      sub_10003453C(v18, v20, @"NWASA_userCount", v21, @"WLAN Power", @"Phy Scan", @"User Scan Count");
      sub_10003453C(v18, v20, @"NWASA_userDur", v21, @"WLAN Power", @"Phy Scan", @"User Scan Dur");
      sub_10003453C(v18, v20, @"NWASA_roamCount", v21, @"WLAN Power", @"Phy Scan", @"Roam Scan Count");
      sub_10003453C(v18, v20, @"NWASA_roamDur", v21, @"WLAN Power", @"Phy Scan", @"Roam Scan Dur");
      sub_10003453C(v18, v20, @"NWASA_assocCount", v21, @"WLAN Power", @"Phy Scan", @"Assoc Scan Count");
      sub_10003453C(v18, v20, @"NWASA_assocDur", v21, @"WLAN Power", @"Phy Scan", @"Assoc Scan Dur");
      sub_10003453C(v18, v20, @"NWASA_pnoBSSIDCount", v21, @"WLAN Power", @"Phy Scan", @"PNO BSSID Scan Count");
      sub_10003453C(v18, v20, @"NWASA_pnoBSSIDDur", v21, @"WLAN Power", @"Phy Scan", @"PNO BSSID Scan Dur");
      sub_10003453C(v18, v20, @"NWASA_pnoSSIDCount", v21, @"WLAN Power", @"Phy Scan", @"PNO SSID  Scan Count");
      sub_10003453C(v18, v20, @"NWASA_pnoSSIDDur", v21, @"WLAN Power", @"Phy Scan", @"PNO SSID  Scan Dur");
      sub_10003453C(v18, v20, @"NWASA_otherCount", v21, @"WLAN Power", @"Phy Scan", @"Other Scan Count");
      sub_10003453C(v18, v20, @"NWASA_otherDur", v21, @"WLAN Power", @"Phy Scan", @"Other Scan Dur");
      goto LABEL_4;
    }

    v309 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v309, OS_LOG_TYPE_ERROR))
    {
      v318 = [v18 objectForKeyedSubscript:v21];
      v319 = [v318 objectForKeyedSubscript:@"WLAN Power"];
      v320 = [v319 allKeys];
      *v414 = 136446722;
      v415 = "void populateNWActivityScanActivity(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
      v416 = 1024;
      v417 = 1658;
      v418 = 2112;
      v419 = v320;
      _os_log_impl(&_mh_execute_header, v309, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find subgroup, we have %@", v414, 0x1Cu);
    }
  }

  v321 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v321, OS_LOG_TYPE_ERROR))
  {
    *v414 = 136446466;
    v415 = "void populateNWActivityScanActivity(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
    v416 = 1024;
    v417 = 1677;
    _os_log_impl(&_mh_execute_header, v321, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed ", v414, 0x12u);
  }

LABEL_4:
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = [v29 fieldForKey:@"NWACS_powerActivity"];
  v34 = [v33 subMessageValue];

  v35 = sub_10001E74C(v32);
  v36 = [v32 objectForKeyedSubscript:v35];
  v37 = [v36 objectForKeyedSubscript:@"WLAN Power"];
  v38 = v37 == 0;

  if (v38)
  {
    v312 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v312, OS_LOG_TYPE_ERROR))
    {
      v313 = [v32 objectForKeyedSubscript:v35];
      v314 = [v313 allKeys];
      *v414 = 136446722;
      v415 = "void populateNWActivityPowerActivity(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
      v416 = 1024;
      v417 = 1696;
      v418 = 2112;
      v419 = v314;
      _os_log_impl(&_mh_execute_header, v312, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find group, we have %@", v414, 0x1Cu);
    }
  }

  else
  {
    v39 = [v32 objectForKeyedSubscript:v35];
    v40 = [v39 objectForKeyedSubscript:@"WLAN Power"];
    v41 = [v40 objectForKeyedSubscript:@"Phy Activity"];
    v42 = v41 == 0;

    if (!v42)
    {
      sub_100035F68(v32, v34, @"NWAPPS_kRadioPhyReportTxDur", v35, @"WLAN Power", @"Phy Activity", @"Radio Tx Dur");
      sub_100035F68(v32, v34, @"NWAPPS_kRadioPhyReportRxDur", v35, @"WLAN Power", @"Phy Activity", @"Radio Rx Dur");
      goto LABEL_7;
    }

    v312 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v312, OS_LOG_TYPE_ERROR))
    {
      v391 = [v32 objectForKeyedSubscript:v35];
      v322 = [v391 objectForKeyedSubscript:@"WLAN Power"];
      v323 = [v322 allKeys];
      *v414 = 136446978;
      v415 = "void populateNWActivityPowerActivity(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
      v416 = 1024;
      v417 = 1698;
      v418 = 2112;
      v419 = @"Phy Activity";
      v420 = 2112;
      v421 = v323;
      _os_log_impl(&_mh_execute_header, v312, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find subgroup %@, we have %@", v414, 0x26u);
    }
  }

  v324 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v324, OS_LOG_TYPE_ERROR))
  {
    *v414 = 136446466;
    v415 = "void populateNWActivityPowerActivity(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
    v416 = 1024;
    v417 = 1706;
    _os_log_impl(&_mh_execute_header, v324, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed ", v414, 0x12u);
  }

LABEL_7:
  v384 = v29;
  objc_initWeak(v397, val);
  v43 = v30;
  v377 = v31;
  v44 = v32;
  v45 = [v384 fieldForKey:@"NWACS_impedingFunctions"];
  v46 = [v45 subMessageValue];

  v47 = [v46 fieldForKey:@"NWAIF_sdbtdm"];
  v48 = [v47 subMessageValue];

  WeakRetained = objc_loadWeakRetained(v397);
  v50 = sub_10001E74C(v44);
  v51 = [v44 objectForKeyedSubscript:v50];
  v52 = [v51 objectForKeyedSubscript:@"TVPM Slice 0"];
  v53 = v52 == 0;

  if (!v53)
  {
    sub_10003453C(v44, v46, @"NWAIF_txduty0", v50, @"TVPM Slice 0", @"Temperature Voltage Power Management", @"Tx Duty Cycle (%)");
    sub_10003453C(v44, v46, @"NWAIF_txpowerbackoff0", v50, @"TVPM Slice 0", @"Temperature Voltage Power Management", @"Tx Power Backoff (1/4dBm)");
    sub_10003453C(v44, v46, @"NWAIF_activechains0", v50, @"TVPM Slice 0", @"Temperature Voltage Power Management", @"Active Chains");
    sub_10003453C(v44, v46, @"NWAIF_temp0", v50, @"TVPM Slice 0", @"Temperature Voltage Power Management", @"Temperature (C)");
    sub_10003453C(v44, v46, @"NWAIF_voltage0", v50, @"TVPM Slice 0", @"Temperature Voltage Power Management", @"Battery Voltage (10xV)");
    sub_10003453C(v44, v46, @"NWAIF_ppm0", v50, @"TVPM Slice 0", @"Temperature Voltage Power Management", @"PPM");
    sub_10003453C(v44, v46, @"NWAIF_ctlmid0", v50, @"TVPM Slice 0", @"Temperature Voltage Power Management", @"CTLM Index");
    sub_10003474C(v44, v46, WeakRetained, a3, v43, @"NWAIF_cTLMIndexs", v50, @"TVPM Slice 0", @"CTLM Index", @"CTLM Index");
    sub_10003474C(v44, v46, WeakRetained, a3, v43, @"NWAIF_txPowerBackoffDBs", v50, @"TVPM Slice 0", @"Tx Power Backoff", @"Tx Power Backoff");
    sub_10003474C(v44, v46, WeakRetained, a3, v43, @"NWAIF_txDutyCyclePcts", v50, @"TVPM Slice 0", @"Tx Duty Cycle", @"Tx Duty Cycle");
  }

  v54 = [v44 objectForKeyedSubscript:v50];
  v55 = [v54 objectForKeyedSubscript:@"TVPM Slice 1"];
  v56 = v55 == 0;

  if (!v56)
  {
    sub_10003453C(v44, v46, @"NWAIF_txduty1", v50, @"TVPM Slice 1", @"Temperature Voltage Power Management", @"Tx Duty Cycle (%)");
    sub_10003453C(v44, v46, @"NWAIF_txpowerbackoff1", v50, @"TVPM Slice 1", @"Temperature Voltage Power Management", @"Tx Power Backoff (1/4dBm)");
    sub_10003453C(v44, v46, @"NWAIF_activechains1", v50, @"TVPM Slice 1", @"Temperature Voltage Power Management", @"Active Chains");
    sub_10003453C(v44, v46, @"NWAIF_temp1", v50, @"TVPM Slice 1", @"Temperature Voltage Power Management", @"Temperature (C)");
    sub_10003453C(v44, v46, @"NWAIF_voltage1", v50, @"TVPM Slice 1", @"Temperature Voltage Power Management", @"Battery Voltage (10xV)");
    sub_10003453C(v44, v46, @"NWAIF_ppm1", v50, @"TVPM Slice 1", @"Temperature Voltage Power Management", @"PPM");
    sub_10003453C(v44, v46, @"NWAIF_ctlmid1", v50, @"TVPM Slice 1", @"Temperature Voltage Power Management", @"CTLM Index");
    sub_10003474C(v44, v46, WeakRetained, a3, v43, @"NWAIF_cTLMIndex1s", v50, @"TVPM Slice 1", @"CTLM Index", @"CTLM Index");
    sub_10003474C(v44, v46, WeakRetained, a3, v43, @"NWAIF_txPowerBackoffDB1s", v50, @"TVPM Slice 1", @"Tx Power Backoff", @"Tx Power Backoff");
    sub_10003474C(v44, v46, WeakRetained, a3, v43, @"NWAIF_txDutyCyclePct1s", v50, @"TVPM Slice 1", @"Tx Duty Cycle", @"Tx Duty Cycle");
  }

  v57 = [v44 objectForKeyedSubscript:v50];
  v58 = [v57 objectForKeyedSubscript:@"TDM Slice 0"];
  v59 = v58 == 0;

  if (!v59)
  {
    v60 = [v48 fieldForKey:@"TDM_sliceStats"];
    v61 = [v60 repeatableValues];
    v62 = v61 == 0;

    if (v62)
    {
      v63 = [WeakRetained getNewMessageForKey:@"TDMS" groupType:a3 forProcessWithToken:v43];
      v64 = [v48 fieldForKey:@"TDM_sliceStats"];
      [v64 addRepeatableSubMessageValue:v63];

      v65 = [v48 fieldForKey:@"TDM_sliceStats"];
      v66 = [v63 copy];
      [v65 addRepeatableSubMessageValue:v66];
    }

    v67 = [v48 fieldForKey:@"TDM_sliceStats"];
    v68 = [v67 repeatableValues];
    v69 = [v68 objectAtIndex:0];

    if (!v69)
    {
      v326 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v326, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_239;
      }

      *v414 = 136446466;
      v415 = "void populateNWActivityImpedingFunctions(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
      v416 = 1024;
      v417 = 1773;
      v327 = "%{public}s::%d:Bad sliceSpecificMessage";
      goto LABEL_238;
    }

    sub_100035F68(v44, v69, @"TDMS_txDeferDuration", v50, @"TDM Slice 0", @"TDM Counters", @"TXA Defer Duration");
    sub_100035F68(v44, v69, @"TDMS_txaDuration", v50, @"TDM Slice 0", @"TDM Counters", @"TXA On Duration");
    sub_100035F68(v44, v69, @"TDMS_txPriDuration", v50, @"TDM Slice 0", @"TDM Counters", @"TXA Priority Duration");
    sub_10003453C(v44, v69, @"TDMS_txaONCount", v50, @"TDM Slice 0", @"TDM Counters", @"TXA Set On");
    sub_10003453C(v44, v69, @"TDMS_txaTimeoutCount", v50, @"TDM Slice 0", @"TDM Counters", @"TXA Timeout Count");
    sub_10003453C(v44, v69, @"TDMS_txaPORCount", v50, @"TDM Slice 0", @"TDM Counters", @"Path Off Requests");
    sub_10003453C(v44, v69, @"TDMS_txPathEnableReqCount", v50, @"TDM Slice 0", @"TDM Counters", @"Path Unmute Requests");
    sub_10003453C(v44, v69, @"TDMS_txPathMuteCount", v50, @"TDM Slice 0", @"TDM Counters", @"Path Mute Requests");
    sub_10003453C(v44, v69, @"TDMS_txMuteCount", v50, @"TDM Slice 0", @"TDM Counters", @"Active Tx Muted");
    sub_10003453C(v44, v69, @"TDMS_ackTxPowerBackoffCount", v50, @"TDM Slice 0", @"TDM Counters", @"Active Tx Power Backedoff");
    sub_10003453C(v44, v69, @"TDMS_txPriorityCount", v50, @"TDM Slice 0", @"TDM Counters", @"TXA Priority Taken");
    sub_10003453C(v44, v69, @"TDMS_txDeferredCount", v50, @"TDM Slice 0", @"TDM Counters", @"TXA Defer Count");
  }

  v70 = [v44 objectForKeyedSubscript:v50];
  v71 = [v70 objectForKeyedSubscript:@"TDM Slice 1"];
  v72 = v71 == 0;

  if (!v72)
  {
    v73 = [v48 fieldForKey:@"TDM_sliceStats"];
    v74 = [v73 repeatableValues];
    v75 = v74 == 0;

    if (!v75)
    {
      v76 = [v48 fieldForKey:@"TDM_sliceStats"];
      v77 = [v76 repeatableValues];
      v78 = [v77 objectAtIndex:1];

      if (v78)
      {
        sub_100035F68(v44, v78, @"TDMS_txDeferDuration", v50, @"TDM Slice 1", @"TDM Counters", @"TXA Defer Duration");
        sub_100035F68(v44, v78, @"TDMS_txaDuration", v50, @"TDM Slice 1", @"TDM Counters", @"TXA On Duration");
        sub_100035F68(v44, v78, @"TDMS_txPriDuration", v50, @"TDM Slice 1", @"TDM Counters", @"TXA Priority Duration");
        sub_10003453C(v44, v78, @"TDMS_txaONCount", v50, @"TDM Slice 1", @"TDM Counters", @"TXA Set On");
        sub_10003453C(v44, v78, @"TDMS_txaTimeoutCount", v50, @"TDM Slice 1", @"TDM Counters", @"TXA Timeout Count");
        sub_10003453C(v44, v78, @"TDMS_txaPORCount", v50, @"TDM Slice 1", @"TDM Counters", @"Path Off Requests");
        sub_10003453C(v44, v78, @"TDMS_txPathEnableReqCount", v50, @"TDM Slice 1", @"TDM Counters", @"Path Unmute Requests");
        sub_10003453C(v44, v78, @"TDMS_txPathMuteCount", v50, @"TDM Slice 1", @"TDM Counters", @"Path Mute Requests");
        sub_10003453C(v44, v78, @"TDMS_txMuteCount", v50, @"TDM Slice 1", @"TDM Counters", @"Active Tx Muted");
        sub_10003453C(v44, v78, @"TDMS_ackTxPowerBackoffCount", v50, @"TDM Slice 1", @"TDM Counters", @"Active Tx Power Backedoff");
        sub_10003453C(v44, v78, @"TDMS_txPriorityCount", v50, @"TDM Slice 1", @"TDM Counters", @"TXA Priority Taken");
        sub_10003453C(v44, v78, @"TDMS_txDeferredCount", v50, @"TDM Slice 1", @"TDM Counters", @"TXA Defer Count");

        goto LABEL_20;
      }

      v326 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v326, OS_LOG_TYPE_ERROR))
      {
        *v414 = 136446466;
        v415 = "void populateNWActivityImpedingFunctions(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
        v416 = 1024;
        v417 = 1796;
        v327 = "%{public}s::%d:Bad sliceSpecificMessage";
        goto LABEL_238;
      }

LABEL_239:

      v328 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v328, OS_LOG_TYPE_ERROR))
      {
        *v414 = 136446466;
        v415 = "void populateNWActivityImpedingFunctions(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
        v416 = 1024;
        v417 = 1837;
        _os_log_impl(&_mh_execute_header, v328, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed ", v414, 0x12u);
      }

      goto LABEL_24;
    }

    v326 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v326, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_239;
    }

    *v414 = 136446466;
    v415 = "void populateNWActivityImpedingFunctions(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
    v416 = 1024;
    v417 = 1793;
    v327 = "%{public}s::%d:TDM_sliceStats should exist when looking at slice 1";
LABEL_238:
    _os_log_impl(&_mh_execute_header, v326, OS_LOG_TYPE_ERROR, v327, v414, 0x12u);
    goto LABEL_239;
  }

LABEL_20:
  v79 = [v44 objectForKeyedSubscript:v50];
  v80 = [v79 objectForKeyedSubscript:@"RC1 Coex"];
  v81 = v80 == 0;

  if (!v81)
  {
    sub_10003453C(v44, v46, @"NWAIF_rc1Request", v50, @"RC1 Coex", @"Counters", @"RC1 Request");
    sub_10003453C(v44, v46, @"NWAIF_rc1Duration", v50, @"RC1 Coex", @"Counters", @"RC1 Duration");
    sub_10003453C(v44, v46, @"NWAIF_rc1wlanCrit", v50, @"RC1 Coex", @"Counters", @"WLAN Crit");
    sub_10003453C(v44, v46, @"NWAIF_rc1wlanCritDuration", v50, @"RC1 Coex", @"Counters", @"WLAN Crit Duration");
  }

  v82 = [v44 objectForKeyedSubscript:v50];
  v83 = [v82 objectForKeyedSubscript:@"RC2 Coex"];
  v84 = v83 == 0;

  if (!v84)
  {
    sub_10003453C(v44, v46, @"NWAIF_rc2Request", v50, @"RC2 Coex", @"Counters", @"Request");
    sub_10003453C(v44, v46, @"NWAIF_rc2Duration", v50, @"RC2 Coex", @"Counters", @"RC2 Duration");
    sub_10003453C(v44, v46, @"NWAIF_rc2LongGrant", v50, @"RC2 Coex", @"Counters", @"Grant Delay Larger than 4.5ms");
    sub_10003453C(v44, v46, @"NWAIF_rc2Grant", v50, @"RC2 Coex", @"Counters", @"Grant");
    sub_10003453C(v44, v46, @"NWAIF_rc2cts2a", v50, @"RC2 Coex", @"Counters", @"Successfully TXed CTS2A");
  }

LABEL_24:

  objc_destroyWeak(v397);
  sub_10003665C(v384, v43, v377, v44, a7);
  v85 = v384;
  v338 = v43;
  v339 = v377;
  v385 = v44;
  v337 = v85;
  v86 = [v85 fieldForKey:@"NWACS_btCoex"];
  v378 = [v86 subMessageValue];

  v87 = [v378 fieldForKey:@"NWABC_btrequestReason"];
  v88 = [v87 subMessageValue];

  v89 = sub_10001E74C(v385);
  v90 = [v385 objectForKeyedSubscript:v89];
  v91 = [v90 objectForKeyedSubscript:@"BT Coex"];
  LODWORD(v87) = v91 == 0;

  if (v87)
  {
    v315 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v315, OS_LOG_TYPE_ERROR))
    {
      v316 = [v385 objectForKeyedSubscript:v89];
      v317 = [v316 allKeys];
      *v414 = 136446722;
      v415 = "void populateNWActivityBTCoex(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
      v416 = 1024;
      v417 = 2038;
      v418 = 2112;
      v419 = v317;
      _os_log_impl(&_mh_execute_header, v315, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find group, we have %@", v414, 0x1Cu);
    }

    v95 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      *v414 = 136446466;
      v415 = "void populateNWActivityBTCoex(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
      v416 = 1024;
      v417 = 2080;
      _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed ", v414, 0x12u);
    }
  }

  else
  {
    sub_10003453C(v385, v378, @"NWABC_request", v89, @"BT Coex", @"Counters", @"Antenna Requests");
    sub_10003453C(v385, v378, @"NWABC_grant", v89, @"BT Coex", @"Counters", @"Antenna Grants");
    sub_10003453C(v385, v378, @"NWABC_btabort", v89, @"BT Coex", @"Counters", @"WLAN Preempted");
    sub_10003453C(v385, v378, @"NWABC_psnullretrycount", v89, @"BT Coex", @"Counters", @"PSNULL exceeded");
    sub_10003453C(v385, v378, @"NWABC_ucodehighlatency", v89, @"BT Coex", @"Counters", @"High UCode Latency");
    v92 = [v385 objectForKeyedSubscript:v89];
    v93 = [v92 objectForKeyedSubscript:@"BT Coex"];
    v94 = [v93 objectForKeyedSubscript:@"Extra Counters"];

    if (v94)
    {
      sub_10003453C(v385, v378, @"NWABC_pm", v89, @"BT Coex", @"Extra Counters", @"PM Protection Success");
      sub_10003453C(v385, v378, @"NWABC_wlantxpreempt", v89, @"BT Coex", @"Extra Counters", @"WLAN Tx Preemption");
      sub_10003453C(v385, v378, @"NWABC_wlanrxpreempt", v89, @"BT Coex", @"Extra Counters", @"WLAN Rx Preemption");
      sub_10003453C(v385, v378, @"NWABC_aptxafterpm", v89, @"BT Coex", @"Extra Counters", @"AP Tx after PM Protection");
      sub_10003453C(v385, v378, @"NWABC_audiogrant", v89, @"BT Coex", @"Extra Counters", @"Periodic Audio Grant Count");
      sub_10003453C(v385, v378, @"NWABC_audiodeny", v89, @"BT Coex", @"Extra Counters", @"Periodic Audio Deny Count");
      sub_10003453C(v385, v378, @"NWABC_a2dpgrant", v89, @"BT Coex", @"Extra Counters", @"A2DP Grant Count");
      sub_10003453C(v385, v378, @"NWABC_a2dpdeny", v89, @"BT Coex", @"Extra Counters", @"A2DP Deny Count");
      sub_10003453C(v385, v378, @"NWABC_sniffgrant", v89, @"BT Coex", @"Extra Counters", @"Sniff Grant Count");
      sub_10003453C(v385, v378, @"NWABC_sniffdeny", v89, @"BT Coex", @"Extra Counters", @"Sniff Deny Count");
    }

    sub_10003453C(v385, v88, @"NWABCRR_acl", v89, @"BT Coex", @"Antenna Request Reason", @"ACL");
    sub_10003453C(v385, v88, @"NWABCRR_sco", v89, @"BT Coex", @"Antenna Request Reason", @"SCO");
    sub_10003453C(v385, v88, @"NWABCRR_esco", v89, @"BT Coex", @"Antenna Request Reason", @"eSCO");
    sub_10003453C(v385, v88, @"NWABCRR_a2dp", v89, @"BT Coex", @"Antenna Request Reason", @"A2DP");
    sub_10003453C(v385, v88, @"NWABCRR_sniff", v89, @"BT Coex", @"Antenna Request Reason", @"Sniff");
    sub_10003453C(v385, v88, @"NWABCRR_pagescan", v89, @"BT Coex", @"Antenna Request Reason", @"Page Scan");
    sub_10003453C(v385, v88, @"NWABCRR_inquiryscan", v89, @"BT Coex", @"Antenna Request Reason", @"Inquity Scan");
    sub_10003453C(v385, v88, @"NWABCRR_page", v89, @"BT Coex", @"Antenna Request Reason", @"Page");
    sub_10003453C(v385, v88, @"NWABCRR_inquiry", v89, @"BT Coex", @"Antenna Request Reason", @"Inquiry");
    sub_10003453C(v385, v88, @"NWABCRR_mss", v89, @"BT Coex", @"Antenna Request Reason", @"MSS");
    sub_10003453C(v385, v88, @"NWABCRR_park", v89, @"BT Coex", @"Antenna Request Reason", @"PARK");
    sub_10003453C(v385, v88, @"NWABCRR_blescan", v89, @"BT Coex", @"Antenna Request Reason", @"BLE Scan");
    sub_10003453C(v385, v88, @"NWABCRR_ble", v89, @"BT Coex", @"Antenna Request Reason", @"BLE");
    sub_10003453C(v385, v88, @"NWABCRR_other", v89, @"BT Coex", @"Antenna Request Reason", @"Other");
    v95 = v378;
    v371 = v89;
    v96 = sub_1000351BC(v385, v371, @"BT Coex", @"Antenna Ownership", @"Antenna Ownership while on 2GHz");
    if (v96)
    {
      Count = IOReportStateGetCount();
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          v99 = IOReportStateGetNameForIndex();
          if ([v99 containsString:@"BT"])
          {
            IOReportStateGetResidency();
            IOReportChannelGetUnit();
            IOReportScaleValue();
            v101 = v100;
            v102 = [v95 fieldForKey:@"NWABC_duration"];
            [v102 setUint32Value:v101];
          }
        }
      }

      CFRelease(v96);
    }

    else
    {
      v325 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v325, OS_LOG_TYPE_ERROR))
      {
        *v414 = 136447490;
        v415 = "_Bool fillUInt32FieldFromState(NSDictionary * _Nonnull __strong, WAMessageAWD * _Nullable __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
        v416 = 1024;
        v417 = 375;
        v418 = 2112;
        v419 = v371;
        v420 = 2112;
        v421 = @"BT Coex";
        v422 = 2112;
        v423 = @"Antenna Ownership";
        v424 = 2112;
        v425 = @"Antenna Ownership while on 2GHz";
        _os_log_impl(&_mh_execute_header, v325, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find %@ %@ %@ %@", v414, 0x3Au);
      }
    }
  }

  if (qword_10010DD18 != 3)
  {
    v103 = v337;
    v333 = v338;
    v334 = v339;
    v379 = v385;
    v332 = v103;
    v104 = [v103 fieldForKey:@"NWACS_phyrate"];
    v341 = [v104 subMessageValue];

    v372 = sub_10001E74C(v379);
    context = objc_autoreleasePoolPush();
    v399 = 0u;
    v400 = 0u;
    *v397 = 0u;
    v398 = 0u;
    v105 = [v379 objectForKeyedSubscript:v372];
    obj = [v105 allKeys];

    v106 = [obj countByEnumeratingWithState:v397 objects:v414 count:16];
    if (v106)
    {
      v354 = *v398;
LABEL_38:
      v107 = 0;
      while (1)
      {
        if (*v398 != v354)
        {
          objc_enumerationMutation(obj);
        }

        v108 = *(v397[1] + v107);
        v109 = [v379 objectForKeyedSubscript:v372];
        v110 = [v109 objectForKeyedSubscript:v108];
        v111 = [v110 objectForKeyedSubscript:@"Tx MCS Success"];
        if (v111 || ([v379 objectForKeyedSubscript:v372], v366 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v366, "objectForKeyedSubscript:", v108), v359 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v359, "objectForKeyedSubscript:", @"Tx VHT Success"), (v95 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v112 = 0;
        }

        else
        {
          v346 = [v379 objectForKeyedSubscript:v372];
          v347 = [v346 objectForKeyedSubscript:v108];
          v349 = [v347 objectForKeyedSubscript:@"Tx HE Success"];
          if (!v349)
          {

            v95 = 0;
            v349 = 0;
            v114 = 0;
LABEL_53:

            if (v114)
            {
LABEL_57:
              v115 = v108;
              goto LABEL_58;
            }

            goto LABEL_54;
          }

          v95 = 0;
          v112 = 1;
        }

        v113 = [v108 containsString:@"awdl"];
        v114 = v113 ^ 1;
        if (v112)
        {

          if (!v111)
          {
            goto LABEL_53;
          }
        }

        else if (!v111)
        {
          goto LABEL_53;
        }

        if ((v113 & 1) == 0)
        {
          goto LABEL_57;
        }

LABEL_54:
        if (v106 == ++v107)
        {
          v106 = [obj countByEnumeratingWithState:v397 objects:v414 count:16];
          if (v106)
          {
            goto LABEL_38;
          }

          break;
        }
      }
    }

    v115 = 0;
LABEL_58:

    v116 = [v379 objectForKeyedSubscript:v372];
    v117 = [v116 objectForKeyedSubscript:v115];

    if (v117)
    {
      v118 = [v379 objectForKeyedSubscript:v372];
      v119 = [v118 objectForKeyedSubscript:v115];
      v120 = [v119 objectForKeyedSubscript:@"Tx MPDU in AMPDU Usage"];

      if (v120)
      {
        sub_100038278(v379, v341, @"NWARAA_ampduAGGs", v372, v115, @"Tx MPDU in AMPDU Usage", @"Tx MPDU in AMPDU Usage", 64, 1u);
      }

      v121 = [v379 objectForKeyedSubscript:v372];
      v122 = [v121 objectForKeyedSubscript:v115];
      v123 = [v122 objectForKeyedSubscript:@"Rx MCS Success"];

      if (v123)
      {
        sub_100038278(v379, v341, @"NWARAA_rxMCSSuccess", v372, v115, @"Rx MCS Success", @"Rx MCS Success", 33, 0);
      }

      v124 = [v379 objectForKeyedSubscript:v372];
      v125 = [v124 objectForKeyedSubscript:v115];
      v126 = [v125 objectForKeyedSubscript:@"Tx MCS Success"];

      if (v126)
      {
        sub_100038278(v379, v341, @"NWARAA_txMCSSuccess", v372, v115, @"Tx MCS Success", @"Tx MCS Success", 33, 0);
      }

      v127 = [v379 objectForKeyedSubscript:v372];
      v128 = [v127 objectForKeyedSubscript:v115];
      v129 = [v128 objectForKeyedSubscript:@"Rx VHT Success"];

      if (v129)
      {
        sub_100038278(v379, v341, @"NWARAA_rxVHTSuccess", v372, v115, @"Rx VHT Success", @"Rx VHT Success", 33, 0);
      }

      v130 = [v379 objectForKeyedSubscript:v372];
      v131 = [v130 objectForKeyedSubscript:v115];
      v132 = [v131 objectForKeyedSubscript:@"Tx VHT Success"];

      if (v132)
      {
        sub_100038278(v379, v341, @"NWARAA_txVHTSuccess", v372, v115, @"Tx VHT Success", @"Tx VHT Success", 33, 0);
      }

      v133 = [v379 objectForKeyedSubscript:v372];
      v134 = [v133 objectForKeyedSubscript:v115];
      v135 = [v134 objectForKeyedSubscript:@"Rx HE Success"];

      if (v135)
      {
        sub_100038278(v379, v341, @"NWARAA_rxHESuccess", v372, v115, @"Rx HE Success", @"Rx HE Success", 33, 0);
      }

      v136 = [v379 objectForKeyedSubscript:v372];
      v137 = [v136 objectForKeyedSubscript:v115];
      v138 = [v137 objectForKeyedSubscript:@"Tx HE Success"];

      if (v138)
      {
        sub_100038278(v379, v341, @"NWARAA_txHESuccess", v372, v115, @"Tx HE Success", @"Tx HE Success", 33, 0);
      }

      v139 = [v379 objectForKeyedSubscript:v372];
      v140 = [v139 objectForKeyedSubscript:v115];
      v141 = [v140 objectForKeyedSubscript:@"Rx MPDU in SU AMPDU Usage"];

      if (v141)
      {
        sub_100038278(v379, v341, @"NWARAA_rxampduSUs", v372, v115, @"Rx MPDU in SU AMPDU Usage", @"Rx MPDU in SU AMPDU Usage", 64, 1u);
      }

      v142 = [v379 objectForKeyedSubscript:v372];
      v143 = [v142 objectForKeyedSubscript:v115];
      v144 = [v143 objectForKeyedSubscript:@"Tx MPDU in SU AMPDU Usage"];

      if (v144)
      {
        sub_100038278(v379, v341, @"NWARAA_txampduSUs", v372, v115, @"Tx MPDU in SU AMPDU Usage", @"Tx MPDU in SU AMPDU Usage", 64, 1u);
      }

      v145 = [v379 objectForKeyedSubscript:v372];
      v146 = [v145 objectForKeyedSubscript:v115];
      v147 = [v146 objectForKeyedSubscript:@"Rx MPDU in OFDMA AMPDU Usage"];

      if (v147)
      {
        sub_100038278(v379, v341, @"NWARAA_rxampduOFDMAs", v372, v115, @"Rx MPDU in OFDMA AMPDU Usage", @"Rx MPDU in OFDMA AMPDU Usage", 64, 1u);
      }

      v148 = [v379 objectForKeyedSubscript:v372];
      v149 = [v148 objectForKeyedSubscript:v115];
      v150 = [v149 objectForKeyedSubscript:@"Tx MPDU in OFDMA AMPDU Usage"];

      if (v150)
      {
        sub_100038278(v379, v341, @"NWARAA_txampduOFDMAs", v372, v115, @"Tx MPDU in OFDMA AMPDU Usage", @"Tx MPDU in OFDMA AMPDU Usage", 64, 1u);
      }

      v151 = [v379 objectForKeyedSubscript:v372];
      v152 = [v151 objectForKeyedSubscript:v115];
      v153 = [v152 objectForKeyedSubscript:@"Rx MPDU in MU-MIMO AMPDU Usage"];

      if (v153)
      {
        sub_100038278(v379, v341, @"NWARAA_rxampduMUMIMOs", v372, v115, @"Rx MPDU in MU-MIMO AMPDU Usage", @"Rx MPDU in MU-MIMO AMPDU Usage", 64, 1u);
      }

      v154 = [v379 objectForKeyedSubscript:v372];
      v155 = [v154 objectForKeyedSubscript:v115];
      v156 = [v155 objectForKeyedSubscript:@"Tx MPDU in MU-MIMO AMPDU Usage"];

      if (v156)
      {
        sub_100038278(v379, v341, @"NWARAA_txampduMUMIMOs", v372, v115, @"Tx MPDU in MU-MIMO AMPDU Usage", @"Tx MPDU in MU-MIMO AMPDU Usage", 64, 1u);
      }
    }

    else
    {
      v329 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v329, OS_LOG_TYPE_ERROR))
      {
        v330 = [v379 objectForKeyedSubscript:v372];
        v331 = [v330 allKeys];
        *buf = 136447490;
        *&buf[4] = "void populateNWActivityRateAndAgg(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
        v403 = 1024;
        v404 = 2196;
        v405 = 2112;
        v406 = @"Tx MCS Success";
        v407 = 2112;
        v408 = @"Tx VHT Success";
        v409 = 2112;
        v410 = @"Tx HE Success";
        v411 = 2112;
        v412 = v331;
        _os_log_impl(&_mh_execute_header, v329, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find group that contains subgroup %@ or %@ or %@, we have %@", buf, 0x3Au);
      }
    }

    objc_autoreleasePoolPop(context);
    if (!v117)
    {
      v157 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "void populateNWActivityRateAndAgg(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
        v403 = 1024;
        v404 = 2254;
        _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed ", buf, 0x12u);
      }

      if (!*a7)
      {
        v413 = NSLocalizedFailureReasonErrorKey;
        *buf = @"WAErrorCodeHEVHTMCSMissing";
        v158 = [NSDictionary dictionaryWithObjects:buf forKeys:&v413 count:1];
        *a7 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9026 userInfo:v158];
      }
    }
  }

  v380 = v337;
  objc_initWeak(&v413, val);
  v360 = v338;
  v350 = v339;
  v373 = v385;
  v355 = objc_loadWeakRetained(&v413);
  v367 = sub_10001E74C(v373);
  v159 = 0;
  v160 = 0;
  v161 = 1;
  while (1)
  {
    v386 = v161;
    v399 = 0u;
    v400 = 0u;
    *v397 = 0u;
    v398 = 0u;
    v162 = [v373 objectForKeyedSubscript:v367];
    v163 = [v162 allKeys];

    v164 = [v163 countByEnumeratingWithState:v397 objects:v414 count:16];
    if (v164)
    {
      v165 = *v398;
      while (2)
      {
        for (j = 0; j != v164; ++j)
        {
          if (*v398 != v165)
          {
            objc_enumerationMutation(v163);
          }

          v167 = *(v397[1] + j);
          v168 = [[NSString alloc] initWithFormat:@"%lu", v160];
          if ([v167 containsString:@"Tx MPDU WME Slice "] && (objc_msgSend(v167, "containsString:", v168) & 1) != 0)
          {
            v169 = v167;

            v159 = v169;
            goto LABEL_103;
          }
        }

        v164 = [v163 countByEnumeratingWithState:v397 objects:v414 count:16];
        if (v164)
        {
          continue;
        }

        break;
      }
    }

LABEL_103:

    if (!v159)
    {
      goto LABEL_108;
    }

    v170 = [v380 fieldForKey:@"NWACS_txmpduWMEs"];
    v171 = [v170 repeatableValues];
    v172 = v171 == 0;

    if (v172)
    {
      v173 = [v355 getNewMessageForKey:@"NWAMWME" groupType:a3 forProcessWithToken:v360];
      v174 = [v380 fieldForKey:@"NWACS_txmpduWMEs"];
      [v174 addRepeatableSubMessageValue:v173];

      v175 = [v380 fieldForKey:@"NWACS_txmpduWMEs"];
      v176 = [v173 copy];
      [v175 addRepeatableSubMessageValue:v176];
    }

    v177 = [v380 fieldForKey:@"NWACS_txmpduWMEs"];
    v178 = [v177 repeatableValues];
    v179 = [v178 objectAtIndex:v160];

    if (!v179)
    {
      break;
    }

    sub_100035F68(v373, v179, @"NWAMWME_tid0", v367, v159, @"Counters", @"                        Tx MPDU Tid0");
    sub_100035F68(v373, v179, @"NWAMWME_tid1", v367, v159, @"Counters", @"                        Tx MPDU Tid1");
    sub_100035F68(v373, v179, @"NWAMWME_tid2", v367, v159, @"Counters", @"                        Tx MPDU Tid2");
    sub_100035F68(v373, v179, @"NWAMWME_tid3", v367, v159, @"Counters", @"                        Tx MPDU Tid3");
    sub_100035F68(v373, v179, @"NWAMWME_tid4", v367, v159, @"Counters", @"                        Tx MPDU Tid4");
    sub_100035F68(v373, v179, @"NWAMWME_tid5", v367, v159, @"Counters", @"                        Tx MPDU Tid5");
    sub_100035F68(v373, v179, @"NWAMWME_tid6", v367, v159, @"Counters", @"                        Tx MPDU Tid6");
    sub_100035F68(v373, v179, @"NWAMWME_tid7", v367, v159, @"Counters", @"                        Tx MPDU Tid7");

LABEL_108:
    v161 = 0;
    v160 = 1;
    if ((v386 & 1) == 0)
    {
      goto LABEL_109;
    }
  }

  v303 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v303, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = "void populateNWActivityTxMpduWME(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
    v403 = 1024;
    v404 = 2297;
    _os_log_impl(&_mh_execute_header, v303, OS_LOG_TYPE_ERROR, "%{public}s::%d:Bad sliceSpecificMessage", buf, 0x12u);
  }

  v304 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v304, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = "void populateNWActivityTxMpduWME(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
    v403 = 1024;
    v404 = 2314;
    _os_log_impl(&_mh_execute_header, v304, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed ", buf, 0x12u);
  }

LABEL_109:
  objc_destroyWeak(&v413);

  v381 = v380;
  objc_initWeak(&v413, val);
  v361 = v360;
  v351 = v350;
  v374 = v373;
  v356 = objc_loadWeakRetained(&v413);
  v368 = sub_10001E74C(v374);
  v180 = 0;
  v181 = 0;
  v182 = 1;
  while (2)
  {
    v387 = v182;
    v399 = 0u;
    v400 = 0u;
    *v397 = 0u;
    v398 = 0u;
    v183 = [v374 objectForKeyedSubscript:v368];
    v184 = [v183 allKeys];

    v185 = [v184 countByEnumeratingWithState:v397 objects:v414 count:16];
    if (v185)
    {
      v186 = *v398;
      while (2)
      {
        for (k = 0; k != v185; ++k)
        {
          if (*v398 != v186)
          {
            objc_enumerationMutation(v184);
          }

          v188 = *(v397[1] + k);
          v189 = [[NSString alloc] initWithFormat:@"%lu", v181];
          if ([v188 containsString:@"Rx MPDU WME Slice "] && (objc_msgSend(v188, "containsString:", v189) & 1) != 0)
          {
            v190 = v188;

            v180 = v190;
            goto LABEL_121;
          }
        }

        v185 = [v184 countByEnumeratingWithState:v397 objects:v414 count:16];
        if (v185)
        {
          continue;
        }

        break;
      }
    }

LABEL_121:

    if (!v180)
    {
LABEL_126:
      v182 = 0;
      v181 = 1;
      if ((v387 & 1) == 0)
      {
        goto LABEL_127;
      }

      continue;
    }

    break;
  }

  v191 = [v381 fieldForKey:@"NWACS_rxmpduWMEs"];
  v192 = [v191 repeatableValues];
  v193 = v192 == 0;

  if (v193)
  {
    v194 = [v356 getNewMessageForKey:@"NWAMWME" groupType:a3 forProcessWithToken:v361];
    v195 = [v381 fieldForKey:@"NWACS_rxmpduWMEs"];
    [v195 addRepeatableSubMessageValue:v194];

    v196 = [v381 fieldForKey:@"NWACS_rxmpduWMEs"];
    v197 = [v194 copy];
    [v196 addRepeatableSubMessageValue:v197];
  }

  v198 = [v381 fieldForKey:@"NWACS_rxmpduWMEs"];
  v199 = [v198 repeatableValues];
  v200 = [v199 objectAtIndex:v181];

  if (v200)
  {
    sub_100035F68(v374, v200, @"NWAMWME_tid0", v368, v180, @"Counters", @"                        Rx MPDU Tid0");
    sub_100035F68(v374, v200, @"NWAMWME_tid1", v368, v180, @"Counters", @"                        Rx MPDU Tid1");
    sub_100035F68(v374, v200, @"NWAMWME_tid2", v368, v180, @"Counters", @"                        Rx MPDU Tid2");
    sub_100035F68(v374, v200, @"NWAMWME_tid3", v368, v180, @"Counters", @"                        Rx MPDU Tid3");
    sub_100035F68(v374, v200, @"NWAMWME_tid4", v368, v180, @"Counters", @"                        Rx MPDU Tid4");
    sub_100035F68(v374, v200, @"NWAMWME_tid5", v368, v180, @"Counters", @"                        Rx MPDU Tid5");
    sub_100035F68(v374, v200, @"NWAMWME_tid6", v368, v180, @"Counters", @"                        Rx MPDU Tid6");
    sub_100035F68(v374, v200, @"NWAMWME_tid7", v368, v180, @"Counters", @"                        Rx MPDU Tid7");

    goto LABEL_126;
  }

  v305 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v305, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = "void populateNWActivityRxMpduWME(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
    v403 = 1024;
    v404 = 2352;
    _os_log_impl(&_mh_execute_header, v305, OS_LOG_TYPE_ERROR, "%{public}s::%d:Bad sliceSpecificMessage", buf, 0x12u);
  }

  v306 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v306, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = "void populateNWActivityRxMpduWME(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
    v403 = 1024;
    v404 = 2369;
    _os_log_impl(&_mh_execute_header, v306, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed ", buf, 0x12u);
  }

LABEL_127:
  objc_destroyWeak(&v413);

  v382 = v381;
  objc_initWeak(&v413, val);
  v362 = v361;
  v352 = v351;
  v375 = v374;
  v357 = objc_loadWeakRetained(&v413);
  v369 = sub_10001E74C(v375);
  v201 = 0;
  v202 = 0;
  v203 = 1;
  while (2)
  {
    v388 = v203;
    v399 = 0u;
    v400 = 0u;
    *v397 = 0u;
    v398 = 0u;
    v204 = [v375 objectForKeyedSubscript:v369];
    v205 = [v204 allKeys];

    v206 = [v205 countByEnumeratingWithState:v397 objects:v414 count:16];
    if (v206)
    {
      v207 = *v398;
      while (2)
      {
        for (m = 0; m != v206; ++m)
        {
          if (*v398 != v207)
          {
            objc_enumerationMutation(v205);
          }

          v209 = *(v397[1] + m);
          v210 = [[NSString alloc] initWithFormat:@"%lu", v202];
          if ([v209 containsString:@"Rx MPDU Lost Slice "] && (objc_msgSend(v209, "containsString:", v210) & 1) != 0)
          {
            v211 = v209;

            v201 = v211;
            goto LABEL_139;
          }
        }

        v206 = [v205 countByEnumeratingWithState:v397 objects:v414 count:16];
        if (v206)
        {
          continue;
        }

        break;
      }
    }

LABEL_139:

    if (!v201)
    {
LABEL_144:
      v203 = 0;
      v202 = 1;
      if ((v388 & 1) == 0)
      {
        goto LABEL_145;
      }

      continue;
    }

    break;
  }

  v212 = [v382 fieldForKey:@"NWACS_rxmdpuLosts"];
  v213 = [v212 repeatableValues];
  v214 = v213 == 0;

  if (v214)
  {
    v215 = [v357 getNewMessageForKey:@"NWAML" groupType:a3 forProcessWithToken:v362];
    v216 = [v382 fieldForKey:@"NWACS_rxmdpuLosts"];
    [v216 addRepeatableSubMessageValue:v215];

    v217 = [v382 fieldForKey:@"NWACS_rxmdpuLosts"];
    v218 = [v215 copy];
    [v217 addRepeatableSubMessageValue:v218];
  }

  v219 = [v382 fieldForKey:@"NWACS_rxmdpuLosts"];
  v220 = [v219 repeatableValues];
  v221 = [v220 objectAtIndex:v202];

  if (v221)
  {
    v222 = [v221 fieldForKey:@"NWAML_nonBALost"];
    v223 = [v222 subMessageValue];

    v224 = [v221 fieldForKey:@"NWAML_bALost"];
    v225 = [v224 subMessageValue];

    sub_100035F68(v375, v225, @"NWAMWME_tid0", v369, v201, @"Counters", @"                        Rx LOST MPDU BA Tid0");
    sub_100035F68(v375, v225, @"NWAMWME_tid1", v369, v201, @"Counters", @"                        Rx LOST MPDU BA Tid1");
    sub_100035F68(v375, v225, @"NWAMWME_tid2", v369, v201, @"Counters", @"                        Rx LOST MPDU BA Tid2");
    sub_100035F68(v375, v225, @"NWAMWME_tid3", v369, v201, @"Counters", @"                        Rx LOST MPDU BA Tid3");
    sub_100035F68(v375, v225, @"NWAMWME_tid4", v369, v201, @"Counters", @"                        Rx LOST MPDU BA Tid4");
    sub_100035F68(v375, v225, @"NWAMWME_tid5", v369, v201, @"Counters", @"                        Rx LOST MPDU BA Tid5");
    sub_100035F68(v375, v225, @"NWAMWME_tid6", v369, v201, @"Counters", @"                        Rx LOST MPDU BA Tid6");
    sub_100035F68(v375, v225, @"NWAMWME_tid7", v369, v201, @"Counters", @"                        Rx LOST MPDU BA Tid7");
    sub_100035F68(v375, v223, @"NWAMWME_tid0", v369, v201, @"Counters", @"                        Rx LOST MPDU NonBA Tid0");
    sub_100035F68(v375, v223, @"NWAMWME_tid1", v369, v201, @"Counters", @"                        Rx LOST MPDU NonBA Tid1");
    sub_100035F68(v375, v223, @"NWAMWME_tid2", v369, v201, @"Counters", @"                        Rx LOST MPDU NonBA Tid2");
    sub_100035F68(v375, v223, @"NWAMWME_tid3", v369, v201, @"Counters", @"                        Rx LOST MPDU NonBA Tid3");
    sub_100035F68(v375, v223, @"NWAMWME_tid4", v369, v201, @"Counters", @"                        Rx LOST MPDU NonBA Tid4");
    sub_100035F68(v375, v223, @"NWAMWME_tid5", v369, v201, @"Counters", @"                        Rx LOST MPDU NonBA Tid5");
    sub_100035F68(v375, v223, @"NWAMWME_tid6", v369, v201, @"Counters", @"                        Rx LOST MPDU NonBA Tid6");
    sub_100035F68(v375, v223, @"NWAMWME_tid7", v369, v201, @"Counters", @"                        Rx LOST MPDU NonBA Tid7");

    goto LABEL_144;
  }

  v307 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v307, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = "void populateNWActivityLostMpdu(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
    v403 = 1024;
    v404 = 2408;
    _os_log_impl(&_mh_execute_header, v307, OS_LOG_TYPE_ERROR, "%{public}s::%d:Bad sliceSpecificMessage", buf, 0x12u);
  }

  v308 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v308, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = "void populateNWActivityLostMpdu(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
    v403 = 1024;
    v404 = 2437;
    _os_log_impl(&_mh_execute_header, v308, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed ", buf, 0x12u);
  }

LABEL_145:
  objc_destroyWeak(&v413);

  v226 = v382;
  v389 = v362;
  v227 = v352;
  v228 = v375;
  v229 = [v226 fieldForKey:@"NWACS_omi"];
  v230 = [v229 subMessageValue];

  v231 = sub_10001E74C(v228);
  v232 = [v228 objectForKeyedSubscript:v231];
  v233 = [v232 objectForKeyedSubscript:@"Slice 0"];
  if (v233)
  {
    v234 = [v228 objectForKeyedSubscript:v231];
    v235 = [v234 objectForKeyedSubscript:@"Slice 0"];
    v236 = [v235 objectForKeyedSubscript:@"OMI Counters"];
    v237 = v236 == 0;

    if (v237)
    {
      goto LABEL_154;
    }

    v238 = [v228 objectForKeyedSubscript:v231];
    v239 = [v238 objectForKeyedSubscript:@"Slice 1"];
    if (v239)
    {
      v240 = [v228 objectForKeyedSubscript:v231];
      v241 = [v240 objectForKeyedSubscript:@"Slice 1"];
      v242 = [v241 objectForKeyedSubscript:@"OMI Counters"];
      v243 = v242 == 0;

      if (!v243)
      {
        sub_1000385DC(v228, v230, @"NWAOMI_scheduled", v231, @"Total number of OMIs scheduled");
        sub_1000385DC(v228, v230, @"NWAOMI_success", v231, @"OMI Tx Success");
        sub_1000385DC(v228, v230, @"NWAOMI_retries", v231, @"OMI retries as TxDone not set");
        sub_1000385DC(v228, v230, @"NWAOMI_completionDelay", v231, @"Accumulated duration of OMI completion time(ms)");
        sub_1000385DC(v228, v230, @"NWAOMI_uLMUReq", v231, @"UL MU enable/disable change request");
        sub_1000385DC(v228, v230, @"NWAOMI_uLMUAck", v231, @"UL MU enable/disable request txed successfully");
        sub_1000385DC(v228, v230, @"NWAOMI_txNSTSReq", v231, @"Tx NSTS change request");
        sub_1000385DC(v228, v230, @"NWAOMI_txNSTSAck", v231, @"Tx NSTS change request txed successfully");
        sub_1000385DC(v228, v230, @"NWAOMI_rxNSSReq", v231, @"Rx NSS change request");
        sub_1000385DC(v228, v230, @"NWAOMI_rxNSSAck", v231, @"Rx NSS change request txed successfully");
        sub_1000385DC(v228, v230, @"NWAOMI_chBWReq", v231, @"Channel Width change request");
        sub_1000385DC(v228, v230, @"NWAOMI_chBWAck", v231, @"Channel Width hange request txed successfully");
        sub_1000385DC(v228, v230, @"NWAOMI_eRSUReq", v231, @"ER SU enable/disable req");
        sub_1000385DC(v228, v230, @"NWAOMI_eRSUAck", v231, @"ER SU enable/disable req txed successfully");
        sub_1000385DC(v228, v230, @"NWAOMI_dLResoundReq", v231, @"DL MU-MIMO Resound recommendation change req");
        sub_1000385DC(v228, v230, @"NWAOMI_dLResoundAck", v231, @"DL MU-MIMO Resound recommendation request txed successfully");
        goto LABEL_154;
      }
    }

    else
    {
    }

    v232 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v232, OS_LOG_TYPE_ERROR))
    {
      *v414 = 136446466;
      v415 = "void populateNWActivityOMI(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong)";
      v416 = 1024;
      v417 = 2116;
      _os_log_impl(&_mh_execute_header, v232, OS_LOG_TYPE_ERROR, "%{public}s::%d:Missing Slice 1 OMI Counters", v414, 0x12u);
    }
  }

LABEL_154:
  v363 = v226;
  objc_initWeak(v414, val);
  v342 = v389;
  v340 = v227;
  v376 = v228;
  v244 = objc_loadWeakRetained(v414);
  v245 = [v363 fieldForKey:@"NWACS_ruUsage"];
  v246 = [v245 subMessageValue];

  v247 = sub_10001E74C(v376);
  v248 = objc_autoreleasePoolPush();
  v249 = [v376 objectForKeyedSubscript:v247];
  v250 = [v249 objectForKeyedSubscript:@"Slice 0"];
  if (!v250)
  {
    goto LABEL_159;
  }

  v251 = [v376 objectForKeyedSubscript:v247];
  v252 = [v251 objectForKeyedSubscript:@"Slice 0"];
  v253 = [v252 objectForKeyedSubscript:@"Tx OFDMA RU Counters"];
  v254 = v253 == 0;

  if (v254)
  {
    goto LABEL_160;
  }

  v249 = [v376 objectForKeyedSubscript:v247];
  v255 = [v249 objectForKeyedSubscript:@"Slice 1"];
  if (v255)
  {
    v256 = [v376 objectForKeyedSubscript:v247];
    v257 = [v256 objectForKeyedSubscript:@"Slice 1"];
    v258 = [v257 objectForKeyedSubscript:@"Tx OFDMA RU Counters"];
    v259 = v258 == 0;

    if (!v259)
    {
      sub_100038864(v376, v246, v244, a3, v342, @"NWARU_txs", v247, @"Tx OFDMA RU Counters");
    }
  }

  else
  {
LABEL_159:
  }

LABEL_160:
  v260 = [v376 objectForKeyedSubscript:v247];
  v261 = [v260 objectForKeyedSubscript:@"Slice 0"];
  if (!v261)
  {
    goto LABEL_165;
  }

  v262 = [v376 objectForKeyedSubscript:v247];
  v263 = [v262 objectForKeyedSubscript:@"Slice 0"];
  v264 = [v263 objectForKeyedSubscript:@"Rx OFDMA RU Counters"];
  v265 = v264 == 0;

  if (v265)
  {
    goto LABEL_166;
  }

  v260 = [v376 objectForKeyedSubscript:v247];
  v266 = [v260 objectForKeyedSubscript:@"Slice 1"];
  if (v266)
  {
    v267 = [v376 objectForKeyedSubscript:v247];
    v268 = [v267 objectForKeyedSubscript:@"Slice 1"];
    v269 = [v268 objectForKeyedSubscript:@"Rx OFDMA RU Counters"];
    v270 = v269 == 0;

    if (!v270)
    {
      sub_100038864(v376, v246, v244, a3, v342, @"NWARU_rxs", v247, @"Rx OFDMA RU Counters");
    }
  }

  else
  {
LABEL_165:
  }

LABEL_166:
  objc_autoreleasePoolPop(v248);

  objc_destroyWeak(v414);
  v271 = [v363 fieldForKey:@"NWACS_channelsVisited0"];
  [v271 setUint32Value:0];

  v272 = [v363 fieldForKey:@"NWACS_channelsVisited1"];
  [v272 setUint32Value:0];

  v370 = sub_10001E74C(v376);
  *v397 = 0u;
  v398 = 0u;
  v399 = 0u;
  v400 = 0u;
  v273 = [v376 allKeys];
  v274 = [v273 countByEnumeratingWithState:v397 objects:v414 count:16];
  if (v274)
  {
    v275 = *v398;
    while (2)
    {
      for (n = 0; n != v274; ++n)
      {
        if (*v398 != v275)
        {
          objc_enumerationMutation(v273);
        }

        v277 = *(v397[1] + n);
        if ([v277 containsString:@"CCPipe"])
        {
          obja = v277;

          v273 = obja;
          goto LABEL_176;
        }
      }

      v274 = [v273 countByEnumeratingWithState:v397 objects:v414 count:16];
      if (v274)
      {
        continue;
      }

      break;
    }
  }

  obja = 0;
LABEL_176:

  sub_10003453C(v376, v363, @"NWACS_controllerResets", v370, @"Controller", @"Driver Availability", @"Driver Transitioned to Unavailable");
  v278 = [v376 objectForKeyedSubscript:v370];
  v279 = [v278 objectForKeyedSubscript:@"TX STATUS"];
  v280 = [v279 objectForKeyedSubscript:@"TX Backoff Stuck"];

  v281 = v376;
  if (v280)
  {
    sub_10003453C(v376, v363, @"NWACS_backoffStuck", v370, @"TX STATUS", @"TX Backoff Stuck", @"Backoff Stuck Detected");
  }

  v282 = 0;
  v283 = 1;
  v365 = @"NWACS_channelsVisited0";
  do
  {
    v348 = v283;
    v383 = [[NSString alloc] initWithFormat:@"Channel Switch: Slice %lu", v282];
    v284 = [v281 objectForKeyedSubscript:v370];
    v285 = [v284 objectForKeyedSubscript:v383];
    v286 = v285 == 0;

    if (!v286)
    {
      v394 = 0u;
      v395 = 0u;
      v392 = 0u;
      v393 = 0u;
      v287 = [v376 objectForKeyedSubscript:v370];
      v288 = [v287 objectForKeyedSubscript:v383];
      v289 = [v288 objectForKeyedSubscript:@"Channels Visited"];
      v353 = [v289 allKeys];

      v290 = [v353 countByEnumeratingWithState:&v392 objects:v401 count:16];
      if (v290)
      {
        v358 = *v393;
        do
        {
          v390 = v290;
          for (ii = 0; ii != v390; ii = ii + 1)
          {
            if (*v393 != v358)
            {
              objc_enumerationMutation(v353);
            }

            v292 = *(*(&v392 + 1) + 8 * ii);
            v293 = v363;
            v294 = v365;
            v295 = v370;
            v296 = v383;
            v297 = v292;
            v298 = sub_1000351BC(v376, v295, v296, @"Channels Visited", v297);
            if (v298)
            {
              IntegerValue = IOReportSimpleGetIntegerValue();
              v300 = [v293 fieldForKey:v294];
              v301 = [v293 fieldForKey:v294];
              [v300 setUint32Value:{objc_msgSend(v301, "uint32Value") + IntegerValue}];

              CFRelease(v298);
            }

            else
            {
              v302 = WALogCategoryDefaultHandle();
              if (os_log_type_enabled(v302, OS_LOG_TYPE_ERROR))
              {
                *v414 = 136447490;
                v415 = "_Bool addUInt32FieldFromSimple(NSDictionary * _Nonnull __strong, WAMessageAWD * _Nullable __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
                v416 = 1024;
                v417 = 171;
                v418 = 2112;
                v419 = v370;
                v420 = 2112;
                v421 = v383;
                v422 = 2112;
                v423 = @"Channels Visited";
                v424 = 2112;
                v425 = v297;
                _os_log_impl(&_mh_execute_header, v302, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find %@ %@ %@ %@", v414, 0x3Au);
              }
            }
          }

          v290 = [v353 countByEnumeratingWithState:&v392 objects:v401 count:16];
        }

        while (v290);
      }
    }

    v283 = 0;
    v365 = @"NWACS_channelsVisited1";
    v282 = 1;
    v281 = v376;
  }

  while ((v348 & 1) != 0);
  sub_100035F68(v376, v363, @"NWACS_commandsIssued", v370, @"Commander", @"Counters", @"Commands Issued");
  sub_10003453C(v376, v363, @"NWACS_commanderHalted", v370, @"Commander", @"Counters", @"Commander Quiesce");
  sub_10003453C(v376, v363, @"NWACS_iorSuccess", v370, @"IOReporter API", @"UpdateReport Calls", @"Success");
  sub_10003453C(v376, v363, @"NWACS_iorWA", v370, @"IOReporter API", @"UpdateReport Calls", @"wifianalyticsd");
  sub_10003453C(v376, v363, @"NWACS_ccCaptureDriverLogs", obja, @"CoreCapture", @"Pipe DriverLogs", @"                       Capture Requests");

  objc_destroyWeak(&location);
}