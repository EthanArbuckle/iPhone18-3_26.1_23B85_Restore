uint64_t sub_1000016D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100001734()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = (__chkstk_darwin)();
  __chkstk_darwin(v4);
  v6 = &v46 - v5;
  v7 = [objc_opt_self() sharedInstance];
  v8 = *(v0 + 16);
  v9 = [v7 objectForInputValue:v8];
  if (!v9)
  {
    v20 = sub_100003960();
    (*(v2 + 16))(v6, v20, v1);
    sub_100001E48(v0, v50);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      v24 = v50[2];
      sub_100001E80(v50);
      *(v23 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v21, v22, "Unknown input type: %llu", v23, 0xCu);
    }

    else
    {
      sub_100001E80(v50);
    }

    (*(v2 + 8))(v6, v1);
    sub_100001EB0(&qword_10005BAE0, &unk_100033370);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100033350;
    v30 = sub_10001F4BC(v8);
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    *(inited + 32) = v31;
    *(inited + 40) = v33;
    *(inited + 48) = 5;
    v34 = sub_1000030B4(inited);
    swift_setDeallocating();
    sub_1000031B0(inited + 32);
    v19 = nullsub_1(0, v34, 0);
    goto LABEL_19;
  }

  v10 = v9;
  if ([v9 status])
  {
    sub_100001EB0(&qword_10005BAE0, &unk_100033370);
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_100033350;
    v12 = sub_10001F4BC(v8);
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    *(v11 + 32) = v13;
    *(v11 + 40) = v15;
    *(v11 + 48) = [v10 status];
    v16 = sub_1000030B4(v11);
    swift_setDeallocating();
    sub_1000031B0(v11 + 32);
    v17 = *(v0 + 40);
    if (*(v0 + 48))
    {
      v18 = 1;
    }

    else
    {
      v18 = *(v0 + 40);
    }

    v19 = nullsub_1(v18, v16, 0);

    return v19;
  }

  v25 = *(v0 + 32);
  if (!v25)
  {
    if (![v10 performSelector:*(v0 + 24)])
    {
LABEL_17:
      v36 = 2;
      v35 = 2;
      goto LABEL_18;
    }

LABEL_15:
    v35 = 3;
    v36 = 4;
LABEL_18:
    sub_100001EB0(&qword_10005BAE0, &unk_100033370);
    v40 = swift_initStackObject();
    *(v40 + 16) = xmmword_100033350;
    v41 = sub_10001F4BC(v8);
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    *(v40 + 32) = v42;
    *(v40 + 40) = v44;
    *(v40 + 48) = v35;
    v45 = sub_1000030B4(v40);
    swift_setDeallocating();
    sub_1000031B0(v40 + 32);
    v19 = nullsub_1(v36, v45, 0);

LABEL_19:
    return v19;
  }

  v47 = *(v0 + 24);
  v48 = v7;
  v27 = *(v0 + 80);
  v26 = *(v0 + 88);
  result = sub_100003274((v0 + 56), v27);
  if (*(v25 + 16))
  {
    sub_100003218(v25 + 32, v49);
    (*(v26 + 8))(v50, v49, v27, v26);
    sub_100003374(v49);
    sub_100003274(v50, v50[3]);
    v37 = _bridgeAnythingToObjectiveC<A>(_:)();
    v38 = v10;
    v39 = [v38 performSelector:v47 withObject:v37];
    swift_unknownObjectRelease();
    sub_100003374(v50);
    v7 = v48;
    if (!v39)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_100001EB0(uint64_t *a1, uint64_t *a2)
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

void sub_100001EF8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  *a4 = 0;
  *(a4 + 8) = 0;
  v10 = sub_10000A874();
  if (!*(a1 + 16))
  {
    goto LABEL_11;
  }

  v11 = *v10;
  v12 = v10[1];

  v13 = sub_100002F84(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_100003218(*(a1 + 56) + 32 * v13, v71);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v71[5] = a3;
  v16 = sub_10000A88C();
  if (!*(a1 + 16) || (v17 = *v16, v18 = v16[1], , v19 = sub_100002F84(v17, v18), v21 = v20, , (v21 & 1) == 0) || (sub_100003218(*(a1 + 56) + 32 * v19, v71), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:
    strcpy(v71, "InputPolicy: ");
    HIWORD(v71[1]) = -4864;
    v30 = Dictionary.description.getter();
    v32 = v31;

    v33._countAndFlagsBits = v30;
    v33._object = v32;
    String.append(_:)(v33);

    v34 = v71[0];
    v35 = v71[1];
    sub_1000032B8();
    swift_allocError();
    *v36 = v34;
    *(v36 + 8) = v35;
    *(v36 + 16) = 1;
    swift_willThrow();
LABEL_12:
    swift_unknownObjectRelease();
    sub_10000330C(a2);
    return;
  }

  v22 = sub_10000A8A4();
  if (*(a1 + 16) && (v23 = *v22, v24 = v22[1], , v25 = sub_100002F84(v23, v24), v27 = v26, , (v27 & 1) != 0) && (sub_100003218(*(a1 + 56) + 32 * v25, v71), (swift_dynamicCast() & 1) != 0))
  {
    v28 = 0;
    v29 = v70;
  }

  else
  {
    v29 = 0;
    v28 = 1;
  }

  *(a4 + 40) = v29;
  *(a4 + 48) = v28;
  v37 = sub_10000A898();
  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

  v38 = *v37;
  v39 = v37[1];

  v40 = sub_100002F84(v38, v39);
  v42 = v41;

  if ((v42 & 1) == 0 || (sub_100003218(*(a1 + 56) + 32 * v40, v71), sub_100001EB0(&qword_10005BAF8, &qword_100033380), (swift_dynamicCast() & 1) == 0))
  {
LABEL_19:
    v43 = 0;
    goto LABEL_20;
  }

  v43 = v70;
  if (*(v70 + 16) != 1)
  {

    v71[0] = 0;
    v71[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v61._countAndFlagsBits = 0xD000000000000032;
    v61._object = 0x8000000100038E90;
    String.append(_:)(v61);
    v62 = Array.description.getter();
    v64 = v63;

    v65._countAndFlagsBits = v62;
    v65._object = v64;
    String.append(_:)(v65);

    v66 = v71[0];
    v67 = v71[1];
    sub_1000032B8();
    swift_allocError();
    *v68 = v66;
    *(v68 + 8) = v67;
    *(v68 + 16) = 1;
    swift_willThrow();
    goto LABEL_12;
  }

LABEL_20:
  *(a4 + 32) = v43;
  v44 = Selector.init(_:)();
  v45 = [objc_opt_self() sharedInstance];
  v46 = [v45 objectForInputValue:v70];
  if (!v46)
  {

    v71[0] = 0;
    v71[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    v49._countAndFlagsBits = 0xD000000000000022;
    v49._object = 0x8000000100038E20;
    String.append(_:)(v49);
    type metadata accessor for os_eligibility_input_t(0);
    _print_unlocked<A, B>(_:_:)();
    v50 = v45;
    v51 = v71[0];
    v52 = v71[1];
    sub_1000032B8();
    swift_allocError();
    *v53 = v51;
    *(v53 + 8) = v52;
    *(v53 + 16) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();

LABEL_26:
    sub_10000330C(a2);

    return;
  }

  v47 = v46;
  if (([v46 respondsToSelector:v44] & 1) == 0)
  {

    v71[0] = 0;
    v71[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v54 = v45;
    v55._object = 0x8000000100038E50;
    v55._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v55);
    type metadata accessor for os_eligibility_input_t(0);
    _print_unlocked<A, B>(_:_:)();
    v56._countAndFlagsBits = 0xD00000000000001DLL;
    v56._object = 0x8000000100038E70;
    String.append(_:)(v56);
    v57._countAndFlagsBits = Selector.description.getter();
    String.append(_:)(v57);

    v58 = v71[0];
    v59 = v71[1];
    sub_1000032B8();
    swift_allocError();
    *v60 = v58;
    *(v60 + 8) = v59;
    *(v60 + 16) = 1;
    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  *(a4 + 16) = v70;
  *(a4 + 24) = v44;
  sub_1000016D0(a2 + 8, a4 + 56);
  v48 = sub_100008304(a1);
  if (v5)
  {
    sub_10000330C(a2);

    swift_unknownObjectRelease();

    sub_100003374((a4 + 56));
  }

  else
  {
    *a4 = v48 & 1;
    v69 = sub_1000083C0(a1);
    sub_10000330C(a2);

    swift_unknownObjectRelease();

    *(a4 + 8) = v69;
  }
}

Swift::Int sub_1000028F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100002968()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void *sub_1000029C0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000029DC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002AA8(v11, 0, 0, 1, a1, a2);
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
    sub_100003218(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003374(v11);
  return v7;
}

unint64_t sub_100002AA8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002BB4(a5, a6);
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

char *sub_100002BB4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100002C00(a1, a2);
  sub_100002D30(&off_100045028);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100002C00(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002E1C(v5, 0);
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
        v7 = sub_100002E1C(v10, 0);
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

uint64_t sub_100002D30(uint64_t result)
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

  result = sub_100002E90(result, v12, 1, v3);
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

void *sub_100002E1C(uint64_t a1, uint64_t a2)
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

  sub_100001EB0(&qword_10005BB70, &qword_1000335C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002E90(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001EB0(&qword_10005BB70, &qword_1000335C8);
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

unint64_t sub_100002F84(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100002FFC(a1, a2, v6);
}

unint64_t sub_100002FFC(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1000030B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001EB0(&qword_10005BB28, &unk_1000335D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100002F84(v5, v6);
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

uint64_t sub_1000031B0(uint64_t a1)
{
  v2 = sub_100001EB0(&qword_10005BAE8, &unk_100034290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003218(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100003274(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1000032B8()
{
  result = qword_10005BAF0;
  if (!qword_10005BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BAF0);
  }

  return result;
}

uint64_t sub_100003374(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1000033C0(uint64_t a1)
{
  result = sub_1000033E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000033E8()
{
  result = qword_10005BB00;
  if (!qword_10005BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BB00);
  }

  return result;
}

__n128 sub_10000343C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100003458(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000034A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100003530(uint64_t a1, unint64_t *a2)
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

unint64_t sub_100003580()
{
  result = qword_10005BB20;
  if (!qword_10005BB20)
  {
    type metadata accessor for os_eligibility_answer_t(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BB20);
  }

  return result;
}

uint64_t sub_1000035E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];

  return v1;
}

uint64_t sub_100003630@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{

  v4 = sub_1000030B4(&_swiftEmptyArrayStorage);
  v5 = nullsub_1(4, v4, 0);
  v7 = v6;
  v9 = v8;
  swift_unknownObjectRelease();
  result = sub_10000330C(a1);
  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  return result;
}

uint64_t sub_1000036BC()
{
  v7 = *v0;
  v1 = *(v0 + 2);
  v2._countAndFlagsBits = 60;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x696C6F5074736554;
  v3._object = 0xEA00000000007963;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  _print_unlocked<A, B>(_:_:)();
  v5._countAndFlagsBits = 62;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 0;
}

unint64_t sub_10000376C(uint64_t a1)
{
  result = sub_100003794();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100003794()
{
  result = qword_10005BB30;
  if (!qword_10005BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BB30);
  }

  return result;
}

__n128 sub_1000037E8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000037FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100003844(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100003894(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000038E8(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100003AA8(v3, a2);
  sub_100003894(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100003998()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100003AA8(v0, qword_10005D580);
  sub_100003894(v0, qword_10005D580);
  return OSSignposter.init(subsystem:category:)();
}

uint64_t sub_100003A48(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return sub_100003894(v4, a3);
}

uint64_t *sub_100003AA8(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100003B1C(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 sub_100003B38(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100003B4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100003B94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_100003BDC(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_100003C04(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (xpc_string_get_string_ptr(a1))
  {
    v11 = String.init(cString:)();
    v13 = v12;
    if (sub_100003E30(v11, v12, a2))
    {
      v14 = *a3;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v14;
      if ((result & 1) == 0)
      {
        result = sub_100004BA4(0, *(v14 + 16) + 1, 1, v14);
        v14 = result;
        *a3 = result;
      }

      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_100004BA4((v16 > 1), v17 + 1, 1, v14);
        v14 = result;
        *a3 = result;
      }

      *(v14 + 16) = v17 + 1;
      v18 = v14 + 16 * v17;
      *(v18 + 32) = v11;
      *(v18 + 40) = v13;
    }

    else
    {
    }
  }

  else
  {
    v19 = sub_100003960();
    (*(v7 + 16))(v10, v19, v6);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to read precise location string, skipping", v22, 2u);
    }

    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_100003E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100003F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

uint64_t sub_100003F80(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v8 = *(a1 + 16);
  if (!v8)
  {
    v10 = &_swiftEmptyDictionarySingleton;
LABEL_62:
    if (!v10[2])
    {

      return 0;
    }

    return v10;
  }

  v78 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v4;
  v87 = 0x8000000100038F10;
  v85 = 0x8000000100038F40;
  v82 = 0x8000000100038F80;
  v81 = 0x8000000100038FB0;
  v80 = 0x8000000100038FE0;
  v77 = (v5 + 16);
  v76 = (v5 + 8);
  v9 = (a1 + 40);
  v10 = &_swiftEmptyDictionarySingleton;
  v11 = &qword_100033778;
  *&v7 = 136315138;
  v75 = v7;
  v83 = xmmword_100033350;
  while (1)
  {
    v13 = *(v9 - 1);
    v14 = *v9;
    v97 = 0;
    v95 = 0u;
    v96 = 0u;
    v15 = v13 == 0xD000000000000026 && v87 == v14;
    if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v16 = objc_opt_self();
      v86 = v14;

      v17 = [v16 sharedInstance];
      v18 = [v17 objectForInputValue:2];
      if (v18)
      {
        v19 = v18;
        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (v20)
        {
          v21 = [v20 countryCode];
          if (v21)
          {
            v22 = v13;
            v23 = v10;
            v24 = v21;
            v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v84 = v9;
            v26 = v11;
            v28 = v27;

            v10 = v23;
            v13 = v22;

            *&v89 = v25;
            *(&v89 + 1) = v28;
            v11 = v26;
            v9 = v84;
            AnyHashable.init<A>(_:)();
            sub_100006A80(&v95, &qword_10005BB48, v11);
LABEL_26:
            v14 = v86;
LABEL_27:
            v95 = v92;
            v96 = v93;
            v97 = v94;
            goto LABEL_28;
          }

          sub_100006A80(&v95, &qword_10005BB48, v11);
        }

        else
        {

          sub_100006A80(&v95, &qword_10005BB48, v11);
        }
      }

      else
      {
        sub_100006A80(&v95, &qword_10005BB48, v11);
      }

      v94 = 0;
      v92 = 0u;
      v93 = 0u;
      goto LABEL_26;
    }

    v29 = v13 == 0xD000000000000030 && v85 == v14;
    if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v30 = v13;
      v31 = v14;
      v32 = v10;
      v33 = v31;

      v35 = sub_100016754(v34);
      if (v36)
      {
        v37 = v35;
        v38 = v36;
        sub_100001EB0(&qword_10005BB40, &unk_1000342A0);
        v39 = swift_allocObject();
        *(v39 + 16) = v83;
        *(v39 + 32) = v37;
        *(v39 + 40) = v38;
        *&v89 = v39;
        sub_100001EB0(&qword_10005BB50, "|*");
        sub_1000069A4();
        AnyHashable.init<A>(_:)();
        sub_100006A80(&v95, &qword_10005BB48, v11);
      }

      else
      {
        sub_100006A80(&v95, &qword_10005BB48, v11);
        v92 = 0u;
        v93 = 0u;
        v94 = 0;
      }

      v10 = v32;
      v95 = v92;
      v96 = v93;
      v97 = v94;
      v14 = v33;
      v13 = v30;
      goto LABEL_28;
    }

    if (v13 == 0xD000000000000025 && v82 == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v54 = sub_100006104();
      if (v54)
      {
LABEL_42:
        *&v89 = v54;
        sub_100001EB0(&qword_10005BB50, "|*");
        sub_1000069A4();
LABEL_43:
        AnyHashable.init<A>(_:)();
        sub_100006A80(&v95, &qword_10005BB48, v11);
        goto LABEL_27;
      }

LABEL_48:
      sub_100006A80(&v95, &qword_10005BB48, v11);
      v92 = 0u;
      v93 = 0u;
      v94 = 0;
      goto LABEL_27;
    }

    if (v13 == 0xD000000000000027 && v81 == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v54 = sub_1000063BC();
      if (v54)
      {
        goto LABEL_42;
      }

      goto LABEL_48;
    }

    if (v13 == 0xD00000000000002DLL && v80 == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v55 = sub_100006614();
      if (v56)
      {
        *&v89 = v55;
        *(&v89 + 1) = v56;
        goto LABEL_43;
      }

      goto LABEL_48;
    }

    v57 = sub_100003960();
    v58 = v78;
    v59 = v79;
    (*v77)(v78, v57, v79);

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    v62 = v14;
    v63 = v61;
    v86 = v62;

    if (os_log_type_enabled(v60, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v84 = v10;
      v66 = v65;
      *&v92 = v65;
      *v64 = v75;
      *(v64 + 4) = sub_1000029DC(v13, v86, &v92);
      _os_log_impl(&_mh_execute_header, v60, v63, "Unknown context key: %s", v64, 0xCu);
      sub_100003374(v66);
      v10 = v84;

      (*v76)(v58, v79);
    }

    else
    {

      (*v76)(v58, v59);
    }

    v14 = v86;
LABEL_28:
    sub_100006828(&v95, &v89);
    if (!*(&v90 + 1))
    {
      sub_100006A80(&v95, &qword_10005BB48, v11);

      v12 = &v89;
LABEL_4:
      sub_100006A80(v12, &qword_10005BB48, v11);
      goto LABEL_5;
    }

    v92 = v89;
    v93 = v90;
    v94 = v91;
    sub_100006898(&v92, &v89);
    v40 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = v40;
    v42 = v13;
    v43 = v13;
    v44 = v14;
    v45 = sub_100002F84(v43, v14);
    v47 = v40[2];
    v48 = (v46 & 1) == 0;
    v49 = __OFADD__(v47, v48);
    v50 = v47 + v48;
    if (v49)
    {
      break;
    }

    v51 = v46;
    if (v40[3] < v50)
    {
      sub_1000055F8(v50, isUniquelyReferenced_nonNull_native);
      v45 = sub_100002F84(v42, v44);
      if ((v51 & 1) != (v52 & 1))
      {
        goto LABEL_67;
      }

LABEL_34:
      if (v51)
      {
        goto LABEL_35;
      }

      goto LABEL_59;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_34;
    }

    v67 = v45;
    sub_1000058C8();
    v45 = v67;
    if (v51)
    {
LABEL_35:
      v53 = v45;

      v10 = v88;
      sub_100006948(&v89, v88[7] + 40 * v53);
      sub_1000068F4(&v92);
      v12 = &v95;
      goto LABEL_4;
    }

LABEL_59:
    v10 = v88;
    v88[(v45 >> 6) + 8] |= 1 << v45;
    v68 = (v10[6] + 16 * v45);
    *v68 = v42;
    v68[1] = v44;
    v69 = v10[7] + 40 * v45;
    v70 = v91;
    v71 = v90;
    *v69 = v89;
    *(v69 + 16) = v71;
    *(v69 + 32) = v70;
    sub_1000068F4(&v92);
    sub_100006A80(&v95, &qword_10005BB48, v11);
    v72 = v10[2];
    v49 = __OFADD__(v72, 1);
    v73 = v72 + 1;
    if (v49)
    {
      goto LABEL_66;
    }

    v10[2] = v73;
LABEL_5:
    v9 += 2;
    if (!--v8)
    {
      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100004898(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = a1;
  sub_100005AC8(a2, sub_100005A7C, 0, isUniquelyReferenced_nonNull_native, &v6);
  return v6;
}

uint64_t sub_100004930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003960();
  (*(v7 + 16))(v10, v11, v6);
  sub_100006898(a1, v28);
  sub_100006898(a2, v27);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = a3;
    v15 = v14;
    v26 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = AnyHashable.description.getter();
    v18 = v17;
    sub_1000068F4(v28);
    v19 = sub_1000029DC(v16, v18, &v26);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = AnyHashable.description.getter();
    v22 = v21;
    sub_1000068F4(v27);
    v23 = sub_1000029DC(v20, v22, &v26);

    *(v15 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "Trying to merge two context dictionaries with the same keys: %s vs %s; Ignoring the new one", v15, 0x16u);
    swift_arrayDestroy();

    a3 = v25;
  }

  else
  {

    sub_1000068F4(v27);
    sub_1000068F4(v28);
  }

  (*(v7 + 8))(v10, v6);
  return sub_100006898(a1, a3);
}

char *sub_100004BA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001EB0(&qword_10005BB40, &unk_1000342A0);
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

void *sub_100004CB0(uint64_t a1, uint64_t a2)
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

  sub_100001EB0(&qword_10005BB40, &unk_1000342A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_100004D34(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1000050E4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100004E84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001EB0(&unk_10005BBE0, &qword_1000337B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_1000050E4(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100004E84(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100005264();
      goto LABEL_16;
    }

    sub_1000053C0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100005264()
{
  v1 = v0;
  sub_100001EB0(&unk_10005BBE0, &qword_1000337B0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1000053C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001EB0(&unk_10005BBE0, &qword_1000337B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000055F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001EB0(&qword_10005BB78, &unk_1000337A0);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_100006898(v28, &v42);
      }

      v31 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void *sub_1000058C8()
{
  v1 = v0;
  sub_100001EB0(&qword_10005BB78, &unk_1000337A0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v22 = 40 * v17;
        sub_100006898(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
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

uint64_t sub_100005A7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_100006898((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_100005AC8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  v10 = -1 << *(a1 + 32);
  v11 = ~v10;
  v12 = *(a1 + 64);
  v13 = -v10;
  v52 = a1;
  v53 = a1 + 64;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v54 = v11;
  v55 = 0;
  v56 = v14 & v12;
  v57 = a2;
  v58 = a3;

  v59 = a3;

  sub_100005FB8(&v47);
  v15 = v48;
  if (!v48)
  {
LABEL_18:
    sub_100006A78();
  }

  while (1)
  {
    v16 = v47;
    v45 = v47;
    v46 = v15;
    v42 = v49;
    v43 = v50;
    v44 = v51;
    v17 = *a5;
    v18 = sub_100002F84(v47, v15);
    v20 = v17[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_24;
    }

    v24 = v19;
    if (v17[3] >= v23)
    {
      break;
    }

    sub_1000055F8(v23, a4 & 1);
    v25 = *a5;
    v18 = sub_100002F84(v16, v15);
    if ((v24 & 1) != (v26 & 1))
    {
      goto LABEL_23;
    }

LABEL_12:
    if (v24)
    {
      goto LABEL_13;
    }

LABEL_16:
    v30 = *a5;
    *(*a5 + 8 * (v18 >> 6) + 64) |= 1 << v18;
    v31 = (v30[6] + 16 * v18);
    *v31 = v16;
    v31[1] = v15;
    v32 = v30[7] + 40 * v18;
    v33 = v42;
    v34 = v43;
    *(v32 + 32) = v44;
    *v32 = v33;
    *(v32 + 16) = v34;
    v35 = v30[2];
    v22 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v22)
    {
      goto LABEL_22;
    }

    v30[2] = v36;
LABEL_6:
    sub_100005FB8(&v47);
    v15 = v48;
    a4 = 1;
    if (!v48)
    {
      goto LABEL_18;
    }
  }

  if (a4)
  {
    goto LABEL_12;
  }

  v29 = v18;
  sub_1000058C8();
  v18 = v29;
  if ((v24 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v27 = *a5;
  v28 = v18;
  sub_100006898(*(*a5 + 56) + 40 * v18, v40);
  sub_100004930(v40, &v42, v41);
  if (!v6)
  {
    sub_1000068F4(v40);
    sub_1000068F4(&v42);

    sub_100006948(v41, v27[7] + 40 * v28);
    goto LABEL_6;
  }

  sub_1000068F4(v40);
  v40[0] = v6;
  swift_errorRetain();
  sub_100001EB0(&qword_10005BB60, &qword_100033990);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1000068F4(&v42);
    sub_100006A78();
  }

LABEL_24:
  v41[0] = 0;
  v41[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v38._object = 0x8000000100039040;
  v38._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v38);
  _print_unlocked<A, B>(_:_:)();
  v39._countAndFlagsBits = 39;
  v39._object = 0xE100000000000000;
  String.append(_:)(v39);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_100005E60(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100005FB8@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v4 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100006898(*(v4 + 56) + 40 * v13, &v23);
    v21 = v24;
    v22 = v23;
    v17 = v25;
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v12;

    if (v15)
    {
      v20 = v1[5];
      v19 = v1[6];
      *&v23 = v16;
      *(&v23 + 1) = v15;
      v25 = v21;
      v24 = v22;
      v26 = v17;
      v20(&v23);
      return sub_100006A80(&v23, &qword_10005BB68, &qword_100033798);
    }

    else
    {
LABEL_13:
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
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
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v8);
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

uint64_t sub_100006104()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 objectForInputValue:2];
  if (!v1)
  {
    goto LABEL_15;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {

    return 0;
  }

  v4 = v3;
  v5 = [v0 objectForInputValue:1];
  if (!v5)
  {

LABEL_15:
    return 0;
  }

  v6 = v5;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {

    return 0;
  }

  v8 = v7;
  v9 = [v0 objectForInputValue:6];
  if (!v9)
  {

    goto LABEL_15;
  }

  v10 = v9;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {

    return 0;
  }

  v22 = _swiftEmptySetSingleton;
  if ([v11 isChinaSKU] & 1) != 0 || (isa = Array._bridgeToObjectiveC()().super.isa, v18 = objc_msgSend(v8, "anyInArray:", isa), isa, v18) && ((v19 = Array._bridgeToObjectiveC()().super.isa, v20 = objc_msgSend(v4, "inArray:", v19), v19, (v20) || objc_msgSend(v4, "status")))
  {
    sub_100004D34(&v21, 20035, 0xE200000000000000);

    v12 = v22;
    v13 = v22[2];
    if (!v13)
    {
LABEL_23:

      return 0;
    }
  }

  else
  {
    v12 = _swiftEmptySetSingleton;
    v13 = _swiftEmptySetSingleton[2];
    if (!v13)
    {
      goto LABEL_23;
    }
  }

  v14 = sub_100004CB0(v13, 0);
  v15 = sub_100005E60(&v21, v14 + 4, v13, v12);
  result = sub_100006A78();
  if (v15 == v13)
  {

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000063BC()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 objectForInputValue:16];
  if (!v1)
  {

    return 0;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3 || (v4 = [v3 countryCodes]) == 0)
  {

    return 0;
  }

  v5 = v4;
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v6 + 16))
  {

    return 0;
  }

  v16 = &_swiftEmptyArrayStorage;
  v7 = os_eligibility_precise_locations();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = &v16;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100006B18;
  *(v9 + 24) = v8;
  aBlock[4] = sub_100006B4C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003F28;
  aBlock[3] = &unk_1000453C8;
  v10 = _Block_copy(aBlock);

  xpc_array_apply(v7, v10);
  swift_unknownObjectRelease();

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return result;
  }

  v13 = v16;
  v14 = v16[2];

  result = v13;
  if (!v14)
  {

    return 0;
  }

  return result;
}

uint64_t sub_100006614()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 objectForInputValue:10];
  if (!v6)
  {
LABEL_6:
    v13 = sub_100003960();
    (*(v1 + 16))(v4, v13, v0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Missing input values for siri language", v16, 2u);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }

  v7 = v6;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {

    goto LABEL_6;
  }

  v9 = [v8 language];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v11;
  }

  return 0;
}

uint64_t sub_100006828(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EB0(&qword_10005BB48, &qword_100033778);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000069A4()
{
  result = qword_10005BB58;
  if (!qword_10005BB58)
  {
    sub_100006A20(&qword_10005BB50, "|*");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BB58);
  }

  return result;
}

uint64_t sub_100006A20(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100006A80(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001EB0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006AE0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006B4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_100006B78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B90(uint64_t a1)
{
  v1 = 2;
  if (a1 != 3)
  {
    v1 = a1;
  }

  if (a1 == 2)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100006BAC()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_100003274(v0 + 2, v1);
  v3 = (*(v2 + 16))(v1, v2);
  v5 = v4;
  if (v3 == 2)
  {
    v6 = 4;
  }

  else
  {
    v6 = v3;
    if (v3 == 4)
    {
      v6 = 2;
    }
  }

  sub_100001EB0(&qword_10005BB28, &unk_1000335D0);
  result = static _DictionaryStorage.copy(original:)();
  v8 = result;
  v9 = 0;
  v10 = 1 << *(v5 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (v12)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = (*(v5 + 48) + 16 * v18);
      v20 = *v19;
      result = v19[1];
      v21 = *(*(v5 + 56) + 8 * v18);
      v22 = 3;
      if (v21 != 2)
      {
        v22 = *(*(v5 + 56) + 8 * v18);
      }

      v23 = v21 == 3 ? 2 : v22;
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v24 = (v8[6] + 16 * v18);
      *v24 = v20;
      v24[1] = result;
      *(v8[7] + 8 * v18) = v23;
      v25 = v8[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v8[2] = v27;

      if (!v12)
      {
        goto LABEL_9;
      }
    }

LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_9:
    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v9 >= v13)
      {
        break;
      }

      v17 = *(v5 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    return nullsub_1(v6, v8, 0);
  }

  return result;
}

uint64_t sub_100006D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  *a4 = 0;
  *(a4 + 8) = 0;
  v10 = sub_10000A850();
  if (*(a1 + 16) && (v11 = *v10, v12 = v10[1], , v13 = sub_100002F84(v11, v12), v15 = v14, , (v15 & 1) != 0))
  {
    sub_100003218(*(a1 + 56) + 32 * v13, v23);
    sub_100007120(v23, v24);
    sub_100007C48(v24, a2, a3, v23);
    if (v5)
    {

      swift_unknownObjectRelease();
      sub_10000330C(a2);
      return sub_100003374(v24);
    }

    else
    {
      sub_100007130(v23, a4 + 16);
      *a4 = sub_100008304(a1) & 1;
      v22 = sub_1000083C0(a1);

      swift_unknownObjectRelease();
      sub_10000330C(a2);
      result = sub_100003374(v24);
      *(a4 + 8) = v22;
    }
  }

  else
  {
    v17 = Dictionary.description.getter();
    v19 = v18;

    v20._countAndFlagsBits = v17;
    v20._object = v19;
    String.append(_:)(v20);

    sub_1000032B8();
    swift_allocError();
    *v21 = 0x63696C6F50746F4ELL;
    *(v21 + 8) = 0xEA00000000002079;
    *(v21 + 16) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    return sub_10000330C(a2);
  }

  return result;
}

_OWORD *sub_100007120(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100007130(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_100007148(uint64_t a1)
{
  result = sub_100007170();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100007170()
{
  result = qword_10005BC50;
  if (!qword_10005BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BC50);
  }

  return result;
}

__n128 sub_1000071C4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000071E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100007228(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_100007284(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_100002F84(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000073B8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_100006898(*(v3 + 56) + 40 * v12, &v24);
    v21 = v24;
    v22 = v25;
    v16 = v26;

    if (!v14)
    {
      return 1;
    }

    v24 = v21;
    v25 = v22;
    v26 = v16;
    v17 = sub_100002F84(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_1000068F4(&v24);
      return 0;
    }

    sub_100006898(*(a2 + 56) + 40 * v17, v23);
    v20 = static AnyHashable.== infix(_:_:)();
    sub_1000068F4(v23);
    result = sub_1000068F4(&v24);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100007554(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[2];
  v3 = a1[2];
  if (sub_100007284(a1[1], a2[1]))
  {
    if (v3)
    {
      if (v2)
      {

        v4 = sub_1000073B8(v3, v2);

        if (v4)
        {
          return 1;
        }
      }
    }

    else if (!v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1000075D8(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_1000339D0[a1 - 1];
  }
}

Swift::UInt64 sub_1000075FC(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(a1);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v27 - v9;
  v12 = (*(v11 + 24))(v8);
  v14 = v13;
  v15 = *(v3 + 16);
  v15(v10, v1, a1);
  sub_100001EB0(&qword_10005BC58, &qword_100033870);
  if (swift_dynamicCast())
  {
    v27[1] = v14;
    v16 = v12;
    sub_100007130(&v28, v31);
    v17 = v32;
    v18 = v33;
    sub_100003274(v31, v32);
    if ((*(v18 + 8))(v17, v18))
    {

      sub_1000030B4(&_swiftEmptyArrayStorage);
    }

    sub_100003374(v31);
    v12 = v16;
  }

  else
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    sub_100006A80(&v28, &qword_10005BC60, &qword_100033878);
  }

  v15(v7, v1, a1);
  sub_100001EB0(&qword_10005BC68, &qword_100033880);
  if (swift_dynamicCast())
  {
    sub_100007130(&v28, v31);
    v19 = v32;
    v20 = v33;
    sub_100003274(v31, v32);
    v21 = (*(v20 + 8))(v19, v20);
    if (v21)
    {
      v22 = v21;

      if (*(v22 + 16) && (v23 = sub_100008958(v12), (v24 & 1) != 0))
      {
        v25 = *(*(v22 + 56) + 8 * v23);
      }

      else
      {
      }
    }

    sub_100003374(v31);
  }

  else
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    sub_100006A80(&v28, &qword_10005BC70, &qword_100033888);
  }

  return v12;
}

uint64_t sub_1000078F0(uint64_t result, void *a2, uint64_t a3)
{
  v4 = v3;
  v47 = *(result + 16);
  if (!v47)
  {
    return result;
  }

  v6 = 0;
  v7 = result + 32;
  v46 = result + 32;
  while (2)
  {
    v8 = *(v7 + 8 * v6);
    v48 = v6 + 1;
    v49 = v8;
    v9 = v8 + 64;
    v10 = 1 << *(v8 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v8 + 64);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    v50 = v13;
    for (i = v9; ; v9 = i)
    {
      if (!v12)
      {
        if (v13 <= v14 + 1)
        {
          v19 = v14 + 1;
        }

        else
        {
          v19 = v13;
        }

        v20 = v19 - 1;
        while (1)
        {
          v18 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v18 >= v13)
          {
            v12 = 0;
            v56 = 0u;
            v57 = 0u;
            v14 = v20;
            v55 = 0u;
            goto LABEL_20;
          }

          v12 = *(v9 + 8 * v18);
          ++v14;
          if (v12)
          {
            v14 = v18;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v18 = v14;
LABEL_19:
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v22 = v21 | (v18 << 6);
      v23 = (*(v49 + 48) + 16 * v22);
      v25 = *v23;
      v24 = v23[1];
      sub_100003218(*(v49 + 56) + 32 * v22, v53);
      *&v55 = v25;
      *(&v55 + 1) = v24;
      sub_100007120(v53, &v56);

LABEL_20:
      v58 = v55;
      v59[0] = v56;
      v59[1] = v57;
      v26 = *(&v55 + 1);
      if (!*(&v55 + 1))
      {
        break;
      }

      v27 = v58;
      sub_100007120(v59, v54);
      sub_100007C48(v54, a2, a3, &v55);
      if (v4)
      {
        sub_100003374(v54);
      }

      sub_100007130(&v55, v53);
      v28 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = a2;
      v31 = isUniquelyReferenced_nonNull_native;
      v32 = v30;
      v60 = *v30;
      v33 = v60;
      v34 = sub_100002F84(v27, v26);
      v36 = v33[2];
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        goto LABEL_38;
      }

      v40 = v35;
      if (v33[3] < v39)
      {
        sub_100008A30(v39, v31);
        v34 = sub_100002F84(v27, v26);
        if ((v40 & 1) != (v41 & 1))
        {
          goto LABEL_40;
        }

LABEL_27:
        a2 = v32;
        if (v40)
        {
          goto LABEL_7;
        }

        goto LABEL_28;
      }

      if (v31)
      {
        goto LABEL_27;
      }

      v45 = v34;
      sub_100008F84();
      v34 = v45;
      a2 = v32;
      if (v40)
      {
LABEL_7:
        v15 = v34;

        v16 = v60;
        v17 = (v60[7] + 40 * v15);
        sub_100003374(v17);
        sub_100007130(v53, v17);
        sub_100003374(v54);
        goto LABEL_8;
      }

LABEL_28:
      v16 = v60;
      v60[(v34 >> 6) + 8] |= 1 << v34;
      v42 = (v16[6] + 16 * v34);
      *v42 = v27;
      v42[1] = v26;
      sub_100007130(v53, v16[7] + 40 * v34);
      sub_100003374(v54);
      v43 = v16[2];
      v38 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v38)
      {
        goto LABEL_39;
      }

      v16[2] = v44;
LABEL_8:
      *a2 = v16;
      v4 = 0;
      v13 = v50;
    }

    v6 = v48;
    v7 = v46;
    if (v48 != v47)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_100007C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  sub_100003218(a1, v44);
  if (swift_dynamicCast())
  {
    v10 = *a2;
    if (*(*a2 + 16))
    {
      v11 = sub_100002F84(v43[0]._countAndFlagsBits, v43[0]._object);
      if (v12)
      {
        sub_1000016D0(*(v10 + 56) + 40 * v11, v43);

        sub_100007130(&v43[0]._countAndFlagsBits, v44);
        return sub_100007130(v44, a4);
      }
    }

    *&v44[0] = 0;
    *(&v44[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v44[0] = v43[0];
    v21._countAndFlagsBits = 0xD000000000000018;
    v21._object = 0x80000001000390A0;
    String.append(_:)(v21);
    v22 = v44[0];
    sub_1000032B8();
    swift_allocError();
    *v23 = v22;
    v24 = 1;
    goto LABEL_12;
  }

  sub_100003218(a1, v44);
  sub_100001EB0(&qword_10005BC78, &qword_100033890);
  if (!swift_dynamicCast())
  {
    sub_1000032B8();
    swift_allocError();
    *v23 = xmmword_100033860;
    v24 = 4;
LABEL_12:
    *(v23 + 16) = v24;
    return swift_willThrow();
  }

  v42 = a3;
  v14 = sub_10000A820();
  if (*(v43[0]._countAndFlagsBits + 16) && (v15 = *v14, v16 = v14[1], , v17 = sub_100002F84(v15, v16), v19 = v18, , (v19 & 1) != 0) && (sub_100003218(*(v43[0]._countAndFlagsBits + 56) + 32 * v17, v44), (swift_dynamicCast() & 1) != 0))
  {
    countAndFlagsBits = v43[0]._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = sub_10000A258(&_swiftEmptyArrayStorage);
  }

  v25 = sub_10000A814();
  v26 = v25;
  if (!*(v43[0]._countAndFlagsBits + 16) || (v45 = countAndFlagsBits, v27 = *v25, v28 = v25[1], , v29 = sub_100002F84(v27, v28), v31 = v30, , (v31 & 1) == 0))
  {

    goto LABEL_23;
  }

  sub_100003218(*(v43[0]._countAndFlagsBits + 56) + 32 * v29, v44);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:

    v36 = *v26;
    v35 = v26[1];
    sub_1000032B8();
    swift_allocError();
    *v37 = v36;
    *(v37 + 8) = v35;
    *(v37 + 16) = 1;
    swift_willThrow();
  }

  v32 = v43[0]._countAndFlagsBits;
  if (*v43 == __PAIR128__(0xE900000000000079, 0x63696C6F50646E41) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v33 = &type metadata for AndPolicy;
    v34 = sub_10000A704();
    goto LABEL_20;
  }

  if (*v43 == __PAIR128__(0xE800000000000000, 0x7963696C6F50724FLL) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v33 = &type metadata for OrPolicy;
    v34 = sub_10000A6B0();
    goto LABEL_20;
  }

  if (*v43 == __PAIR128__(0xE900000000000079, 0x63696C6F50746F4ELL) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v33 = &type metadata for NotPolicy;
    v34 = sub_10000A65C();
    goto LABEL_20;
  }

  if (__PAIR128__(0x80000001000390E0, 0xD000000000000011) == *v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v33 = &type metadata for InputStatusPolicy;
    v34 = sub_10000A608();
    goto LABEL_20;
  }

  if (*v43 == __PAIR128__(0xEB00000000796369, 0x6C6F507475706E49) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v33 = &type metadata for InputPolicy;
    v34 = sub_10000A5B4();
    goto LABEL_20;
  }

  if (__PAIR128__(0x8000000100039100, 0xD000000000000011) == *v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v33 = &type metadata for GracePeriodPolicy;
    v34 = sub_10000A560();
    goto LABEL_20;
  }

  if (__PAIR128__(0x8000000100039120, 0xD00000000000001ALL) == *v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v33 = &type metadata for AISupportedLanguagesPolicy;
    v34 = sub_10000A50C();
    goto LABEL_20;
  }

  if (*v43 == __PAIR128__(0xEA00000000007963, 0x696C6F5074736554) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v33 = &type metadata for TestPolicy;
    v34 = sub_10000A4B8();
LABEL_20:
    v32 = v34;
    if (v5)
    {
LABEL_21:
    }

    goto LABEL_46;
  }

  *&v44[0] = 0;
  *(&v44[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  *&v44[0] = 0xD000000000000012;
  *(&v44[0] + 1) = 0x8000000100039140;
  String.append(_:)(v43[0]);
  v38 = *(&v44[0] + 1);
  v33 = *&v44[0];
  sub_1000032B8();
  v39 = swift_allocError();
  *v40 = __PAIR128__(v38, v33);
  *(v40 + 16) = 1;
  swift_willThrow();
  if (v39)
  {
    goto LABEL_21;
  }

LABEL_46:

  sub_10000A388(a2, v44);
  v41 = *(v32 + 32);
  a4[3] = v33;
  a4[4] = v32;
  sub_10000A3E4(a4);
  swift_unknownObjectRetain();
  return v41(v45, v44, v42, v33, v32);
}

uint64_t sub_100008304(uint64_t a1)
{
  v2 = sub_10000A82C();
  if (!*(a1 + 16))
  {
    return 0;
  }

  v3 = *v2;
  v4 = v2[1];

  v5 = sub_100002F84(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_100003218(*(a1 + 56) + 32 * v5, v9);
  result = swift_dynamicCast();
  if (result)
  {
    return v9[47];
  }

  return result;
}

uint64_t sub_1000083C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000A838();
  if (!*(a1 + 16))
  {
    return 0;
  }

  v5 = *v4;
  v6 = v4[1];

  v7 = sub_100002F84(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  sub_100003218(*(a1 + 56) + 32 * v7, v55);
  sub_100001EB0(&qword_10005BC80, &qword_100033898);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v52 = v2;
  v10 = v56 + 64;
  v11 = 1 << *(v56 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v56 + 64);
  v14 = (v11 + 63) >> 6;
  v54 = v56;

  v15 = 0;
  v53 = &_swiftEmptyArrayStorage;
  if (!v13)
  {
    while (1)
    {
LABEL_12:
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_96;
      }

      if (v19 >= v14)
      {
        break;
      }

      v13 = *(v10 + 8 * v19);
      ++v15;
      if (v13)
      {
        v15 = v19;
        goto LABEL_16;
      }
    }

    if (v53[2])
    {
      sub_100001EB0(&qword_10005BC88, qword_1000338A0);
      v50 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v50 = &_swiftEmptyDictionarySingleton;
    }

    v55[0] = v50;

    sub_100009288(v51, 1, v55);
    if (!v52)
    {

      return v55[0];
    }

    goto LABEL_100;
  }

  while (1)
  {
LABEL_16:
    v20 = __clz(__rbit64(v13)) | (v15 << 6);
    v21 = (*(v54 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    v24 = *(*(v54 + 56) + 8 * v20);
    v25 = HIBYTE(v22) & 0xF;
    v26 = *v21 & 0xFFFFFFFFFFFFLL;
    if ((v22 & 0x2000000000000000) != 0)
    {
      v27 = HIBYTE(v22) & 0xF;
    }

    else
    {
      v27 = *v21 & 0xFFFFFFFFFFFFLL;
    }

    v28 = v21[1];

    if (!v27)
    {
      goto LABEL_9;
    }

    if ((v22 & 0x1000000000000000) == 0)
    {
      break;
    }

    v17 = sub_10000972C(v23, v22, 10);
    v48 = v47;

    if ((v48 & 1) == 0)
    {
LABEL_80:

      v18 = v24;
      goto LABEL_10;
    }

LABEL_9:
    v17 = 0;
    v18 = 0;
LABEL_10:
    v13 &= v13 - 1;

    if (v18)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_1000095F8(0, v53[2] + 1, 1, v53);
      }

      v45 = v53[2];
      v44 = v53[3];
      if (v45 >= v44 >> 1)
      {
        v53 = sub_1000095F8((v44 > 1), v45 + 1, 1, v53);
      }

      v53[2] = v45 + 1;
      v46 = &v53[2 * v45];
      v46[4] = v17;
      v46[5] = v18;
      if (!v13)
      {
        goto LABEL_12;
      }
    }

    else if (!v13)
    {
      goto LABEL_12;
    }
  }

  if ((v22 & 0x2000000000000000) == 0)
  {
    if ((v23 & 0x1000000000000000) != 0)
    {
      v29 = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v29 = _StringObject.sharedUTF8.getter();
      v26 = v49;
    }

    v30 = *v29;
    if (v30 == 43)
    {
      if (v26 < 1)
      {
        goto LABEL_99;
      }

      v31 = v26 - 1;
      if (v26 == 1)
      {
        goto LABEL_78;
      }

      v17 = 0;
      if (v29)
      {
        v37 = v29 + 1;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            goto LABEL_78;
          }

          if (!is_mul_ok(v17, 0xAuLL))
          {
            goto LABEL_78;
          }

          v34 = __CFADD__(10 * v17, v38);
          v17 = 10 * v17 + v38;
          if (v34)
          {
            goto LABEL_78;
          }

          ++v37;
          if (!--v31)
          {
            goto LABEL_79;
          }
        }
      }
    }

    else if (v30 == 45)
    {
      if (v26 < 1)
      {
        goto LABEL_97;
      }

      v31 = v26 - 1;
      if (v26 == 1)
      {
        goto LABEL_78;
      }

      v17 = 0;
      if (v29)
      {
        v32 = v29 + 1;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            goto LABEL_78;
          }

          if (!is_mul_ok(v17, 0xAuLL))
          {
            goto LABEL_78;
          }

          v34 = 10 * v17 >= v33;
          v17 = 10 * v17 - v33;
          if (!v34)
          {
            goto LABEL_78;
          }

          ++v32;
          if (!--v31)
          {
            goto LABEL_79;
          }
        }
      }
    }

    else
    {
      if (!v26)
      {
LABEL_78:
        v17 = 0;
        LOBYTE(v31) = 1;
LABEL_79:
        LOBYTE(v56) = v31;
        if ((v31 & 1) == 0)
        {
          goto LABEL_80;
        }

        goto LABEL_9;
      }

      v17 = 0;
      if (v29)
      {
        do
        {
          v41 = *v29 - 48;
          if (v41 > 9)
          {
            goto LABEL_78;
          }

          if (!is_mul_ok(v17, 0xAuLL))
          {
            goto LABEL_78;
          }

          v34 = __CFADD__(10 * v17, v41);
          v17 = 10 * v17 + v41;
          if (v34)
          {
            goto LABEL_78;
          }

          ++v29;
        }

        while (--v26);
      }
    }

LABEL_77:
    LOBYTE(v31) = 0;
    goto LABEL_79;
  }

  v55[0] = v23;
  v55[1] = v22 & 0xFFFFFFFFFFFFFFLL;
  if (v23 == 43)
  {
    if (!v25)
    {
      goto LABEL_98;
    }

    v31 = v25 - 1;
    if (v25 != 1)
    {
      v17 = 0;
      v39 = v55 + 1;
      while (1)
      {
        v40 = *v39 - 48;
        if (v40 > 9)
        {
          break;
        }

        if (!is_mul_ok(v17, 0xAuLL))
        {
          break;
        }

        v34 = __CFADD__(10 * v17, v40);
        v17 = 10 * v17 + v40;
        if (v34)
        {
          break;
        }

        ++v39;
        if (!--v31)
        {
          goto LABEL_79;
        }
      }
    }

    goto LABEL_78;
  }

  if (v23 != 45)
  {
    if (v25)
    {
      v17 = 0;
      v42 = v55;
      while (1)
      {
        v43 = *v42 - 48;
        if (v43 > 9)
        {
          break;
        }

        if (!is_mul_ok(v17, 0xAuLL))
        {
          break;
        }

        v34 = __CFADD__(10 * v17, v43);
        v17 = 10 * v17 + v43;
        if (v34)
        {
          break;
        }

        ++v42;
        if (!--v25)
        {
          goto LABEL_77;
        }
      }
    }

    goto LABEL_78;
  }

  if (v25)
  {
    v31 = v25 - 1;
    if (v25 != 1)
    {
      v17 = 0;
      v35 = v55 + 1;
      while (1)
      {
        v36 = *v35 - 48;
        if (v36 > 9)
        {
          break;
        }

        if (!is_mul_ok(v17, 0xAuLL))
        {
          break;
        }

        v34 = 10 * v17 >= v36;
        v17 = 10 * v17 - v36;
        if (!v34)
        {
          break;
        }

        ++v35;
        if (!--v31)
        {
          goto LABEL_79;
        }
      }
    }

    goto LABEL_78;
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_100008958(Swift::UInt64 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return sub_1000089C4(a1, v4);
}

unint64_t sub_1000089C4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_100008A30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001EB0(&qword_10005BCF0, &qword_1000339C0);
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
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_100007130(v25, v37);
      }

      else
      {
        sub_1000016D0(v25, v37);
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
      result = sub_100007130(v37, *(v8 + 56) + 40 * v16);
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

uint64_t sub_100008CF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001EB0(&qword_10005BC88, qword_1000338A0);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_100008F84()
{
  v1 = v0;
  sub_100001EB0(&qword_10005BCF0, &qword_1000339C0);
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
        v22 = 40 * v17;
        sub_1000016D0(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100007130(v25, *(v4 + 56) + v22);
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

void *sub_10000912C()
{
  v1 = v0;
  sub_100001EB0(&qword_10005BC88, qword_1000338A0);
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

uint64_t sub_100009288(void *a1, char a2, void *a3)
{
  v46 = a1[2];
  if (!v46)
  {
  }

  v7 = a1[4];
  v6 = a1[5];
  v8 = *a3;
  v9 = sub_100008958(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v9;
  v15 = v10;
  v16 = v8[3];

  if (v16 >= v13)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_10000912C();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100001EB0(&qword_10005BB60, &qword_100033990);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_29;
  }

  sub_100008CF4(v13, a2 & 1);
  v17 = *a3;
  v18 = sub_100008958(v7);
  if ((v15 & 1) != (v19 & 1))
  {
LABEL_28:
    type metadata accessor for os_eligibility_answer_t(0);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_29:
    _StringGuts.grow(_:)(30);
    v44._object = 0x8000000100039040;
    v44._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v44);
    type metadata accessor for os_eligibility_answer_t(0);
    _print_unlocked<A, B>(_:_:)();
    v45._countAndFlagsBits = 39;
    v45._object = 0xE100000000000000;
    String.append(_:)(v45);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v14 = v18;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v21[6] + 8 * v14) = v7;
  *(v21[7] + 8 * v14) = v6;
  v22 = v21[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21[2] = v24;
  if (v46 != 1)
  {
    v25 = a1 + 7;
    v26 = 1;
    while (v26 < a1[2])
    {
      v28 = *(v25 - 1);
      v27 = *v25;
      v29 = *a3;
      v30 = sub_100008958(v28);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_25;
      }

      v35 = v30;
      v36 = v31;
      v37 = v29[3];

      if (v37 < v34)
      {
        sub_100008CF4(v34, 1);
        v38 = *a3;
        v39 = sub_100008958(v28);
        if ((v36 & 1) != (v40 & 1))
        {
          goto LABEL_28;
        }

        v35 = v39;
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v41 = *a3;
      *(*a3 + 8 * (v35 >> 6) + 64) |= 1 << v35;
      *(v41[6] + 8 * v35) = v28;
      *(v41[7] + 8 * v35) = v27;
      v42 = v41[2];
      v23 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v23)
      {
        goto LABEL_26;
      }

      ++v26;
      v41[2] = v43;
      v25 += 2;
      if (v46 == v26)
      {
      }
    }

    goto LABEL_27;
  }
}

void *sub_1000095F8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001EB0(&qword_10005BC90, &qword_100033998);
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
    sub_100001EB0(&qword_10005BC98, &unk_1000339A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unsigned __int8 *sub_10000972C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100009CB0();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_100009CB0()
{
  v0 = String.subscript.getter();
  v4 = sub_100009D30(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100009D30(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100002E1C(v9, 0);
  v12 = sub_100009E88(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100009E88(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10000A0A8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10000A0A8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10000A0A8(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_10000A124(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001EB0(&qword_10005BCF0, &qword_1000339C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000A758(v4, &v13, &qword_10005BCF8, &qword_1000339C8);
      v5 = v13;
      v6 = v14;
      result = sub_100002F84(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100007130(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_10000A258(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001EB0(&qword_10005BCE0, &qword_1000339B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000A758(v4, &v13, &qword_10005BCE8, &qword_1000339B8);
      v5 = v13;
      v6 = v14;
      result = sub_100002F84(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100007120(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t *sub_10000A3E4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t *sub_10000A448(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64);
  }

  return result;
}

unint64_t sub_10000A4B8()
{
  result = qword_10005BCA0;
  if (!qword_10005BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BCA0);
  }

  return result;
}

unint64_t sub_10000A50C()
{
  result = qword_10005BCA8;
  if (!qword_10005BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BCA8);
  }

  return result;
}

unint64_t sub_10000A560()
{
  result = qword_10005BCB0;
  if (!qword_10005BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BCB0);
  }

  return result;
}

unint64_t sub_10000A5B4()
{
  result = qword_10005BCB8;
  if (!qword_10005BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BCB8);
  }

  return result;
}

unint64_t sub_10000A608()
{
  result = qword_10005BCC0;
  if (!qword_10005BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BCC0);
  }

  return result;
}

unint64_t sub_10000A65C()
{
  result = qword_10005BCC8;
  if (!qword_10005BCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BCC8);
  }

  return result;
}

unint64_t sub_10000A6B0()
{
  result = qword_10005BCD0;
  if (!qword_10005BCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BCD0);
  }

  return result;
}

unint64_t sub_10000A704()
{
  result = qword_10005BCD8;
  if (!qword_10005BCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BCD8);
  }

  return result;
}

uint64_t sub_10000A758(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001EB0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000A928()
{
  v1 = v0;
  v101 = type metadata accessor for Logger();
  v103 = *(v101 - 8);
  v2 = *(v103 + 64);
  __chkstk_darwin(v101);
  v102 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001EB0(&qword_10005BD00, "^/");
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v109 = &v99 - v9;
  v10 = type metadata accessor for Date();
  v108 = *(v10 - 8);
  v11 = v108[8];
  v12 = __chkstk_darwin(v10);
  v100 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v105 = &v99 - v14;
  v15 = v0[5];
  v16 = v0[6];
  sub_100003274(v0 + 2, v15);
  v17 = (*(v16 + 16))(v15, v16);
  v19 = v18;
  v21 = v20;
  v22 = v1[8];
  v23 = v1[9];
  v24 = v1[10];
  v25 = String._bridgeToObjectiveC()();
  v107 = v17;
  if (v17 == 4)
  {
    [v22 createGracePeriod:v25];

    v26 = 4;
    v109 = v19;
LABEL_41:

    v98 = nullsub_1(v26, v109, v21);

    return v98;
  }

  v99 = v10;
  v106 = v21;
  v27 = [v22 hasGracePeriod:v25];

  if (!v27)
  {

    v109 = v19;
    v21 = v106;
    goto LABEL_7;
  }

  v28 = String._bridgeToObjectiveC()();
  v29 = [v22 getGracePeriodStartDate:v28];

  v30 = v19;
  if (v29)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = v108;
    v32 = v108[7];
    v33 = v8;
    v34 = 0;
  }

  else
  {
    v31 = v108;
    v32 = v108[7];
    v33 = v8;
    v34 = 1;
  }

  v35 = v99;
  v32(v33, v34, 1, v99);
  v21 = v106;
  v36 = v8;
  v37 = v109;
  sub_10000B24C(v36, v109);
  v38 = (v31[6])(v37, 1, v35);
  v104 = v19;
  if (v38 != 1)
  {
    v62 = v105;
    (v31[4])(v105, v37, v35);
    Date.timeIntervalSinceNow.getter();
    if (-v63 < v1[7])
    {
      v64 = sub_100003960();
      v66 = v102;
      v65 = v103;
      v67 = v101;
      (*(v103 + 16))(v102, v64, v101);
      sub_10000B324(v1, v111);
      v68 = v100;
      (v31[2])(v100, v62, v35);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        *v71 = 136315394;
        v72 = v112;
        v73 = v113;

        sub_10000B35C(v111);
        v74 = sub_1000029DC(v72, v73, &v110);

        *(v71 + 4) = v74;
        *(v71 + 12) = 2080;
        sub_10000BD88(&qword_10005BD08, &type metadata accessor for Date);
        v75 = dispatch thunk of CustomStringConvertible.description.getter();
        v77 = v76;
        v107 = v108[1];
        v107(v68, v35);
        v78 = sub_1000029DC(v75, v77, &v110);

        *(v71 + 14) = v78;
        _os_log_impl(&_mh_execute_header, v69, v70, "Grace period in effect: %s since %s", v71, 0x16u);
        swift_arrayDestroy();

        (*(v103 + 8))(v102, v67);
      }

      else
      {

        v107 = v31[1];
        v107(v68, v35);
        sub_10000B35C(v111);
        (*(v65 + 8))(v66, v67);
      }

      sub_100001EB0(&qword_10005BB28, &unk_1000335D0);
      result = static _DictionaryStorage.copy(original:)();
      v79 = 0;
      v80 = v30 + 64;
      v81 = 1 << *(v30 + 32);
      v82 = -1;
      if (v81 < 64)
      {
        v82 = ~(-1 << v81);
      }

      v83 = v82 & *(v30 + 64);
      v84 = (v81 + 63) >> 6;
      v109 = result;
      for (i = result + 64; v83; *(v109 + 16) = v97)
      {
        v86 = __clz(__rbit64(v83));
        v83 &= v83 - 1;
LABEL_37:
        v89 = v86 | (v79 << 6);
        v90 = (*(v104 + 48) + 16 * v89);
        v92 = *v90;
        v91 = v90[1];
        v93 = *(*(v104 + 56) + 8 * v89);

        result = sub_100006B90(v93);
        *(i + ((v89 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v89;
        v94 = v109;
        v95 = (*(v109 + 48) + 16 * v89);
        *v95 = v92;
        v95[1] = v91;
        *(*(v94 + 56) + 8 * v89) = result;
        v96 = *(v94 + 16);
        v60 = __OFADD__(v96, 1);
        v97 = v96 + 1;
        if (v60)
        {
          goto LABEL_45;
        }
      }

      v87 = v79;
      v21 = v106;
      while (1)
      {
        v79 = v87 + 1;
        if (__OFADD__(v87, 1))
        {
          goto LABEL_43;
        }

        if (v79 >= v84)
        {
          v107(v105, v99);
          v26 = 4;
          goto LABEL_41;
        }

        v88 = *(v80 + 8 * v79);
        ++v87;
        if (v88)
        {
          v86 = __clz(__rbit64(v88));
          v83 = (v88 - 1) & v88;
          goto LABEL_37;
        }
      }
    }

    (v31[1])(v62, v35);

    v109 = v30;
LABEL_7:
    v26 = v107;
    goto LABEL_41;
  }

  sub_10000B2BC(v37);
  v39 = String._bridgeToObjectiveC()();
  [v22 startGracePeriod:v39];

  sub_100001EB0(&qword_10005BB28, &unk_1000335D0);
  result = static _DictionaryStorage.copy(original:)();
  v41 = 0;
  v42 = v19 + 64;
  v43 = 1 << *(v19 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v19 + 64);
  v46 = (v43 + 63) >> 6;
  v109 = result;
  for (j = result + 64; v45; v30 = v104)
  {
    v48 = __clz(__rbit64(v45));
    v45 &= v45 - 1;
LABEL_19:
    v51 = v48 | (v41 << 6);
    v52 = *(v30 + 56);
    v53 = (*(v30 + 48) + 16 * v51);
    v55 = *v53;
    v54 = v53[1];
    v56 = *(v52 + 8 * v51);

    result = sub_100006B90(v56);
    *(j + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
    v57 = v109;
    v58 = (*(v109 + 48) + 16 * v51);
    *v58 = v55;
    v58[1] = v54;
    *(*(v57 + 56) + 8 * v51) = result;
    v59 = *(v57 + 16);
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (v60)
    {
      goto LABEL_44;
    }

    *(v109 + 16) = v61;
  }

  v49 = v41;
  while (1)
  {
    v41 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v41 >= v46)
    {
      v21 = v106;
      v26 = 4;
      goto LABEL_41;
    }

    v50 = *(v42 + 8 * v41);
    ++v49;
    if (v50)
    {
      v48 = __clz(__rbit64(v50));
      v45 = (v50 - 1) & v50;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_10000B24C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EB0(&qword_10005BD00, "^/");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B2BC(uint64_t a1)
{
  v2 = sub_100001EB0(&qword_10005BD00, "^/");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000B38C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  *a4 = 0;
  *(a4 + 8) = 0;
  v10 = sub_10000A850();
  if (!*(a1 + 16))
  {
    goto LABEL_12;
  }

  v11 = *v10;
  v12 = v10[1];

  v13 = sub_100002F84(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_100003218(*(a1 + 56) + 32 * v13, v45);
  sub_100007120(v45, v47);
  v16 = sub_10000A868();
  if (!*(a1 + 16) || (v17 = *v16, v18 = v16[1], , v19 = sub_100002F84(v17, v18), v21 = v20, , (v21 & 1) == 0) || (sub_100003218(*(a1 + 56) + 32 * v19, v45), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:
    sub_100003374(v47);
LABEL_12:
    *&v45[0] = 0;
    *(&v45[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    *&v45[0] = 0xD000000000000013;
    *(&v45[0] + 1) = 0x8000000100039180;
    v31 = Dictionary.description.getter();
    v33 = v32;

    v34._countAndFlagsBits = v31;
    v34._object = v33;
    String.append(_:)(v34);

    v35 = v45[0];
    sub_1000032B8();
    swift_allocError();
    *v36 = v35;
    *(v36 + 16) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    return sub_10000330C(a2);
  }

  v22 = *(&v46[0] + 1);
  v43 = *&v46[0];
  v23 = sub_10000A85C();
  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

  v44 = v22;
  v24 = *v23;
  v25 = v23[1];
  v42 = v23;

  v26 = sub_100002F84(v24, v25);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_100003218(*(a1 + 56) + 32 * v26, v45);
  sub_100007120(v45, v46);
  v29 = a2[4];
  v30 = a2[5];
  sub_100003274(a2 + 1, v29);
  (*(v30 + 8))(v45, v46, v29, v30);
  if (v5)
  {

    swift_unknownObjectRelease();

LABEL_17:
    sub_100003374(v46);
    sub_100003374(v47);
    return sub_10000330C(a2);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    v39 = *v42;
    v38 = v42[1];
    sub_1000032B8();
    swift_allocError();
    *v40 = v39;
    *(v40 + 8) = v38;
    *(v40 + 16) = 1;
    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  *(a4 + 56) = v48;
  sub_100007C48(v47, a2, a3, v45);
  sub_100007130(v45, a4 + 16);
  *(a4 + 72) = v43;
  *(a4 + 80) = v44;
  *(a4 + 64) = a3;
  *a4 = sub_100008304(a1) & 1;
  v41 = sub_1000083C0(a1);

  sub_100003374(v46);
  sub_100003374(v47);
  result = sub_10000330C(a2);
  *(a4 + 8) = v41;
  return result;
}

unint64_t sub_10000BC3C(uint64_t a1)
{
  result = sub_10000BC64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000BC64()
{
  result = qword_10005BD10;
  if (!qword_10005BD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BD10);
  }

  return result;
}

__n128 sub_10000BCB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10000BCDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000BD24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000BD88(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_10000BDD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_100003218(a1, v17);
  if (!swift_dynamicCast())
  {
    return sub_100003218(a1, a3);
  }

  v6._countAndFlagsBits = 36;
  v6._object = 0xE100000000000000;
  if (String.hasPrefix(_:)(v6))
  {
    sub_10000BF74(1uLL, v15, v16);

    v7 = static String._fromSubstring(_:)();
    v9 = v8;

    if (*(a2 + 16) && (v10 = sub_100002F84(v7, v9), (v11 & 1) != 0))
    {
      v12 = v10;

      sub_100003218(*(a2 + 56) + 32 * v12, v17);
      return sub_100007120(v17, a3);
    }

    else
    {
      sub_1000032B8();
      swift_allocError();
      *v14 = v7;
      *(v14 + 8) = v9;
      *(v14 + 16) = 2;
      return swift_willThrow();
    }
  }

  else
  {
    sub_100003218(a1, a3);
  }
}

unint64_t sub_10000BF74(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

id sub_10000C0F4(uint64_t a1, uint64_t a2)
{
  v134 = a2;
  v131 = a1;
  v121 = type metadata accessor for OSSignpostError();
  v120 = *(v121 - 8);
  v2 = *(v120 + 64);
  __chkstk_darwin(v121);
  v119 = &v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001EB0(&qword_10005BD88, &qword_100033D10);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v128 = &v115 - v6;
  v132 = type metadata accessor for OSSignpostID();
  v7 = *(v132 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v132);
  v127 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v115 - v12;
  __chkstk_darwin(v11);
  v15 = &v115 - v14;
  v16 = type metadata accessor for OSSignposter();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v126 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v115 - v21;
  v23 = sub_100003A10();
  v24 = v17;
  v25 = *(v17 + 16);
  v123 = v23;
  v133 = v16;
  v124 = v17 + 16;
  v122 = v25;
  (v25)(v22);
  static OSSignpostID.exclusive.getter();
  v26 = OSSignposter.logHandle.getter();
  v27 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, v27, v29, "ParsePlist", "", v28, 2u);
  }

  v30 = v132;
  (*(v7 + 16))(v13, v15, v132);
  v31 = type metadata accessor for OSSignpostIntervalState();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = OSSignpostIntervalState.init(id:isOpen:)();
  v35 = v7 + 8;
  v36 = *(v7 + 8);
  v125 = v35;
  v36(v15, v30);
  v38 = v24 + 8;
  v37 = *(v24 + 8);
  v37(v22, v133);
  if (v134)
  {
    v39 = v134;
  }

  else
  {
    type metadata accessor for SwiftDataStore();
    v68 = type metadata accessor for URL();
    v69 = v128;
    (*(*(v68 - 8) + 56))(v128, 1, 1, v68);
    v70 = v129;
    v71 = sub_100013C58(v69);
    v129 = v70;
    if (v70)
    {

      goto LABEL_20;
    }

    v39 = v71;
  }

  v40 = v131;
  swift_unknownObjectRetain();
  v41 = sub_10000A808();
  if (!*(v40 + 16))
  {
    goto LABEL_16;
  }

  v128 = v37;
  v42 = *v41;
  v43 = v41[1];

  v44 = sub_100002F84(v42, v43);
  v46 = v45;

  if ((v46 & 1) == 0 || (v131 = v39, sub_100003218(*(v40 + 56) + 32 * v44, v138), sub_100001EB0(&qword_10005BD90, &unk_100033D18), (swift_dynamicCast() & 1) == 0))
  {
LABEL_16:

    sub_1000032B8();
    swift_allocError();
    *v66 = xmmword_100033860;
    *(v66 + 16) = 4;
    swift_willThrow();
LABEL_17:
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v67 = v130;
LABEL_21:
    type metadata accessor for PlistParser();
    swift_deallocPartialClassInstance();
    return v67;
  }

  v47 = v137;
  v48 = sub_1000078E4();
  v49 = sub_10000A7C0();
  if (!*(v40 + 16))
  {
    goto LABEL_25;
  }

  v117 = v47;
  v118 = v34;
  v50 = *v49;
  v51 = v49[1];

  v52 = sub_100002F84(v50, v51);
  v54 = v53;

  if ((v54 & 1) == 0 || (sub_100003218(*(v40 + 56) + 32 * v52, v138), sub_100001EB0(&qword_10005BC78, &qword_100033890), (swift_dynamicCast() & 1) == 0))
  {
LABEL_25:

    sub_1000032B8();
    swift_allocError();
    v74 = xmmword_100033D00;
LABEL_26:
    *v73 = v74;
    *(v73 + 16) = 4;
    swift_willThrow();
    goto LABEL_17;
  }

  v57 = nullsub_1(v137, v55, v56);
  v58 = sub_10000A7CC();
  if (!*(v40 + 16) || (v59 = *v58, v60 = v58[1], , v61 = sub_100002F84(v59, v60), v63 = v62, , (v63 & 1) == 0))
  {

LABEL_28:
    sub_1000032B8();
    swift_allocError();
    v74 = xmmword_100033CF0;
    goto LABEL_26;
  }

  sub_100003218(*(v40 + 56) + 32 * v61, v138);

  sub_100001EB0(&qword_10005BD98, &qword_100033D28);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_28;
  }

  v116 = v36;
  v64 = v137;
  v138[4] = &type metadata for ConstantsProvider;
  v138[5] = &off_100045738;
  v138[0] = v48;
  v138[1] = v57;
  v65 = v129;
  sub_1000078F0(v117, v138, v131);
  if (v65)
  {
    sub_10000330C(v138);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

LABEL_20:

    v67 = v130;
    goto LABEL_21;
  }

  v129 = 0;

  v75 = 0;
  v76 = &_swiftEmptyArrayStorage;
  v137 = &_swiftEmptyArrayStorage;
  v77 = v64 + 64;
  v78 = 1 << *(v64 + 32);
  v79 = -1;
  if (v78 < 64)
  {
    v79 = ~(-1 << v78);
  }

  v80 = v79 & *(v64 + 64);
  v81 = (v78 + 63) >> 6;
  v117 = v64 + 64;
  v82 = v81;
  v83 = v127;
  if (v80)
  {
    while (1)
    {
      v115 = v76;
LABEL_38:
      v85 = __clz(__rbit64(v80)) | (v75 << 6);
      v86 = (*(v64 + 48) + 16 * v85);
      v88 = *v86;
      v87 = v86[1];
      v89 = *(*(v64 + 56) + 8 * v85);
      swift_bridgeObjectRetain_n();

      v90 = sub_10000CF2C(v88, v87);
      if ((v91 & 1) != 0 || (v92 = v90) == 0)
      {

        sub_1000032B8();
        swift_allocError();
        *v110 = v88;
        *(v110 + 8) = v87;
        *(v110 + 16) = 0;
        swift_willThrow();

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        sub_10000330C(v138);
        v67 = v130;
        goto LABEL_21;
      }

      v93 = objc_allocWithZone(Domain);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v136 = 0;
      v95 = [v93 initWithDomain:v92 dictionary:isa error:{&v136, v115}];

      if (!v95)
      {
        v114 = v136;

        _convertNSErrorToError(_:)();

        swift_willThrow();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        sub_10000330C(v138);
        goto LABEL_20;
      }

      v96 = v136;
      v97 = v129;
      sub_10000EC40(v89, v138, v131);
      v129 = v97;
      if (v97)
      {
        break;
      }

      v98 = v95;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v137 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v137 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v99 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v80 &= v80 - 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v76 = v137;
      v77 = v117;
      v81 = v82;
      v83 = v127;
      if (!v80)
      {
        goto LABEL_34;
      }
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    sub_10000330C(v138);
    goto LABEL_20;
  }

  while (1)
  {
LABEL_34:
    v84 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      __break(1u);
    }

    if (v84 >= v81)
    {
      break;
    }

    v80 = *(v77 + 8 * v84);
    ++v75;
    if (v80)
    {
      v115 = v76;
      v75 = v84;
      goto LABEL_38;
    }
  }

  v100 = v76;
  v117 = v38;

  v122(v126, v123, v133);
  v101 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v102 = v83;
  v103 = static os_signpost_type_t.end.getter();
  v104 = OS_os_log.signpostsEnabled.getter();
  v105 = v131;
  if (v104)
  {

    v106 = v119;
    checkForErrorAndConsumeState(state:)();

    v107 = v120;
    v108 = v121;
    if ((*(v120 + 88))(v106, v121) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v109 = "[Error] Interval already ended";
    }

    else
    {
      (*(v107 + 8))(v106, v108);
      v109 = "";
    }

    v111 = swift_slowAlloc();
    *v111 = 0;
    v102 = v127;
    v112 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v101, v103, v112, "ParsePlist", v109, v111, 2u);
  }

  v116(v102, v132);
  (v128)(v126, v133);
  sub_10000330C(v138);
  v113 = v130;
  *&v130[OBJC_IVAR___PlistParser_domains] = v100;
  *&v113[OBJC_IVAR___PlistParser_dataStore] = v105;
  v135.receiver = v113;
  v135.super_class = PlistParser;
  v67 = objc_msgSendSuper2(&v135, "init");
  swift_unknownObjectRelease();
  return v67;
}

unint64_t type metadata accessor for PlistParser()
{
  result = qword_10005CD90;
  if (!qword_10005CD90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005CD90);
  }

  return result;
}

uint64_t sub_10000CF2C(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_10000972C(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

id Domain.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

__n128 sub_10000D398(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000D3AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10000D3F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double variable initialization expression of Domain.policy@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10000D58C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003960();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "This method should only be called for testing purposes as it is inefficient", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v11 = &v1[OBJC_IVAR___Domain_policy];
  swift_beginAccess();
  v12 = *(v11 + 3);
  if (v12)
  {
    v13 = *(v11 + 4);
    v14 = sub_100003274(v11, *(v11 + 3));
    v15 = *(v12 - 8);
    v16 = *(v15 + 64);
    __chkstk_darwin(v14);
    v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v18);
    v19 = (*(v13 + 16))(v12, v13);
    v21 = v20;
    (*(v15 + 8))(v18, v12);
    if ([v1 enabled])
    {
      if (v21)
      {
        sub_10000D878(v19, v21);
        return v19;
      }

      return [v1 defaultAnswer];
    }

    v23 = v19;
  }

  else
  {
    if ([v1 enabled])
    {
      return [v1 defaultAnswer];
    }

    v21 = 0;
    v23 = 0;
  }

  sub_10000D878(v23, v21);
  return 1;
}

uint64_t sub_10000D878(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void *sub_10000D94C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003960();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "This method should only be called for testing purposes as it is inefficient", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v11 = (v1 + OBJC_IVAR___Domain_policy);
  swift_beginAccess();
  v12 = v11[3];
  if (v12)
  {
    v13 = v11[4];
    v14 = sub_100003274(v11, v11[3]);
    v15 = *(v12 - 8);
    v16 = *(v15 + 64);
    __chkstk_darwin(v14);
    v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v18);
    v19 = (*(v13 + 16))(v12, v13);
    v21 = v20;
    (*(v15 + 8))(v18, v12);
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = sub_10000DBEC(v21);
  sub_10000D878(v19, v21);
  return v22;
}

void *sub_10000DBEC(uint64_t a1)
{
  if (![v1 enabled])
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (!a1)
  {
    return 0;
  }

  sub_100001EB0(&qword_10005BE58, &unk_100033DD0);
  result = static _DictionaryStorage.copy(original:)();
  v4 = result;
  v5 = 0;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v24 = (result + 8);
  v25 = result;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v14 = v11 | (v5 << 6);
      v15 = a1;
      v16 = (*(a1 + 48) + 16 * v14);
      v17 = v16[1];
      v26 = *v16;
      v18 = *(*(a1 + 56) + 8 * v14);
      v19 = objc_allocWithZone(NSNumber);

      result = [v19 initWithUnsignedLongLong:v18];
      v4 = v25;
      *&v24[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
      v20 = (v25[6] + 16 * v14);
      *v20 = v26;
      v20[1] = v17;
      *(v25[7] + 8 * v14) = result;
      v21 = v25[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v25[2] = v23;
      a1 = v15;
      if (!v9)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        return v4;
      }

      v13 = *(v6 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10000DDC8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003960();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "This method should only be called for testing purposes as it is inefficient", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v11 = &v1[OBJC_IVAR___Domain_policy];
  swift_beginAccess();
  v12 = *(v11 + 3);
  if (v12)
  {
    v13 = *(v11 + 4);
    v14 = sub_100003274(v11, *(v11 + 3));
    v15 = *(v12 - 8);
    v16 = *(v15 + 64);
    __chkstk_darwin(v14);
    v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v18);
    (*(v13 + 16))(v12, v13);
    v20 = v19;
    (*(v15 + 8))(v18, v12);
    v21 = [v1 contextKeys];
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = sub_100003F80(v22);

    v24 = sub_100004898(v20, v23);

    if (v24)
    {
      v25 = sub_10000E0D4(v24);

      return v25;
    }
  }

  return 0;
}

unint64_t sub_10000E0D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100001EB0(&qword_10005BCE0, &qword_1000339B0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        sub_100006898(*(a1 + 56) + 40 * v15, &v30);
        v28 = v18;
        v29 = v17;

        swift_dynamicCast();
        sub_100007120(&v24, v26);
        sub_100007120(v26, v27);
        sub_100007120(v27, &v25);
        result = sub_100002F84(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_100003374(v12);
          result = sub_100007120(&v25, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_100007120(&v25, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10000E35C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 domain];
  if (os_eligibility_get_domain_notification_name())
  {
    return String.init(cString:)();
  }

  v8 = sub_100003960();
  (*(v3 + 16))(v6, v8, v2);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Could not get domain change notification name. Falling back to default", v11, 2u);
  }

  (*(v3 + 8))(v6, v2);
  return 0xD000000000000026;
}

Class sub_10000E500(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

uint64_t sub_10000E588()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR___Domain_policy];
  swift_beginAccess();
  v3 = *(v2 + 3);
  if (v3)
  {
    v4 = *(v2 + 4);
    v5 = sub_100003274(v2, *(v2 + 3));
    v6 = *(v3 - 8);
    v7 = *(v6 + 64);
    __chkstk_darwin(v5);
    v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9);
    v10 = (*(v4 + 16))(v3, v4);
    v12 = v11;
    v14 = v13;
    (*(v6 + 8))(v9, v3);
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v14 = 0;
  }

  sub_100001EB0(&qword_10005BDE8, &qword_100033D98);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000017;
  *(inited + 16) = xmmword_100033D80;
  *(inited + 40) = 0x80000001000392B0;
  if ([v1 enabled])
  {
    v16 = v10;
    if (!v12)
    {
      v16 = [v1 defaultAnswer];
    }
  }

  else
  {
    v16 = 1;
  }

  *(inited + 48) = v16;
  *(inited + 72) = &type metadata for UInt64;
  *(inited + 80) = 0xD00000000000001ELL;
  *(inited + 88) = 0x80000001000392D0;
  *(inited + 96) = 1;
  *(inited + 120) = &type metadata for UInt64;
  *(inited + 128) = 0x737574617473;
  *(inited + 136) = 0xE600000000000000;
  v17 = sub_10000DBEC(v12);
  v18 = v17;
  if (v17)
  {
    v17 = sub_100001EB0(&qword_10005BDF8, &qword_100033DA8);
  }

  else
  {
    *(inited + 152) = 0;
    *(inited + 160) = 0;
  }

  *(inited + 144) = v18;
  *(inited + 168) = v17;
  *(inited + 176) = 0x747865746E6F63;
  *(inited + 184) = 0xE700000000000000;
  if (!v12)
  {
    goto LABEL_15;
  }

  v19 = [v1 contextKeys];
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = sub_100003F80(v20);

  v22 = sub_100004898(v14, v21);

  if (!v22)
  {
    sub_10000D878(v10, v12);
LABEL_15:
    *(inited + 192) = 0u;
    *(inited + 208) = 0u;
    goto LABEL_16;
  }

  v23 = sub_10000E0D4(v22);

  sub_10000D878(v10, v12);
  *(inited + 216) = sub_100001EB0(&qword_10005BC78, &qword_100033890);
  *(inited + 192) = v23;
LABEL_16:
  v24 = sub_10000F93C(inited);
  swift_setDeallocating();
  sub_100001EB0(&qword_10005BDF0, &qword_100033DA0);
  swift_arrayDestroy();
  v25 = sub_10000E91C(v24);

  return v25;
}

uint64_t sub_10000E91C(uint64_t a1)
{
  v1 = &_swiftEmptyDictionarySingleton;
  v39 = &_swiftEmptyDictionarySingleton;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_7:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v9 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
  }

  while (!v5);
  v40 = v1;
  v8 = v9;
  while (1)
  {
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_10000A758(*(a1 + 56) + 32 * v11, v38, &qword_10005BE40, &qword_100033DB8);
    *&v37 = v14;
    *(&v37 + 1) = v13;
    v34 = v37;
    v35 = v38[0];
    v36 = v38[1];
    sub_10000A758(&v35, &v28, &qword_10005BE40, &qword_100033DB8);
    if (!v29)
    {

      sub_100006A80(&v34, &qword_10005BE48, &qword_100033DC0);
      result = sub_100006A80(&v28, &qword_10005BE40, &qword_100033DB8);
      v1 = v40;
      if (!v5)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    sub_100007120(&v28, v33);
    v31 = v34;
    v32[0] = v35;
    v32[1] = v36;
    sub_100007120(v33, v30);
    v1 = v40;
    v15 = v40[2];
    if (v40[3] <= v15)
    {

      sub_10000F684(v15 + 1, 1);
      v1 = v39;
    }

    else
    {
    }

    v16 = v31;
    v17 = v1[5];
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v18 = (v1 + 8);
    v19 = -1 << *(v1 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~v1[(v20 >> 6) + 8]) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~v1[(v20 >> 6) + 8])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *&v18[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
    *(v1[6] + 16 * v22) = v16;
    sub_100007120(v30, (v1[7] + 32 * v22));
    ++v1[2];
    result = sub_100006A80(v32, &qword_10005BE40, &qword_100033DB8);
    if (!v5)
    {
      goto LABEL_7;
    }

LABEL_11:
    v40 = v1;
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *&v18[8 * v21];
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_26;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_10000EC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = sub_10000A7D8();
  if (*(a1 + 16) && (v11 = *v10, v12 = v10[1], , v13 = sub_100002F84(v11, v12), v15 = v14, , (v15 & 1) != 0))
  {
    sub_100003218(*(a1 + 56) + 32 * v13, v19);
    sub_100007120(v19, v21);
    sub_100007C48(v21, a2, a3, v19);
    result = sub_100003374(v21);
    if (v5)
    {
      return result;
    }

    v17 = OBJC_IVAR___Domain_policy;
    swift_beginAccess();
    sub_10000FA6C(v19, v6 + v17);
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    v18 = OBJC_IVAR___Domain_policy;
    swift_beginAccess();
    sub_10000FA6C(v19, v6 + v18);
  }

  return swift_endAccess();
}

id sub_10000ED7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = &v3[OBJC_IVAR___Domain_policy];
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0;
  *&v3[OBJC_IVAR___Domain_domain] = a1;
  v6 = sub_10000A7FC();
  if (!*(a2 + 16))
  {
    goto LABEL_5;
  }

  v7 = *v6;
  v8 = v6[1];

  v9 = sub_100002F84(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_100003218(*(a2 + 56) + 32 * v9, v30);
  sub_100001EB0(&qword_10005BB50, "|*");
  if (swift_dynamicCast())
  {
    v12 = v29;
  }

  else
  {
LABEL_5:
    v12 = &_swiftEmptyArrayStorage;
  }

  *&v3[OBJC_IVAR___Domain_contextKeys] = v12;
  v13 = sub_10000A7F0();
  if (*(a2 + 16) && (v14 = *v13, v15 = v13[1], , v16 = sub_100002F84(v14, v15), v18 = v17, , (v18 & 1) != 0) && (sub_100003218(*(a2 + 56) + 32 * v16, v30), (swift_dynamicCast() & 1) != 0))
  {
    v19 = v29;
  }

  else
  {
    v19 = 4;
  }

  *&v3[OBJC_IVAR___Domain_defaultAnswer] = v19;
  v20 = sub_10000A7E4();
  if (!*(a2 + 16) || (v21 = *v20, v22 = v20[1], , v23 = sub_100002F84(v21, v22), v25 = v24, , (v25 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_100003218(*(a2 + 56) + 32 * v23, v30);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v26 = 1;
    goto LABEL_17;
  }

  v26 = v29;
LABEL_17:
  v3[OBJC_IVAR___Domain_enabled] = v26;
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  swift_beginAccess();
  sub_10000FA6C(v30, v5);
  swift_endAccess();
  v28.receiver = v3;
  v28.super_class = Domain;
  return objc_msgSendSuper2(&v28, "init");
}

id sub_10000F078(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t Domain.description.getter()
{
  v1 = v0;
  v51 = 7104878;
  v2 = &v0[OBJC_IVAR___Domain_policy];
  swift_beginAccess();
  v3 = *(v2 + 3);
  if (v3)
  {
    v4 = *(v2 + 4);
    v5 = sub_100003274(v2, *(v2 + 3));
    v6 = *(v3 - 8);
    v7 = *(v6 + 64);
    __chkstk_darwin(v5);
    v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9);
    v10 = *(v4 + 8);
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    (*(v6 + 8))(v9, v3);
  }

  else
  {
    v12 = 0xE300000000000000;
    v50 = 7104878;
  }

  v13 = [v1 context];
  if (v13)
  {
    v14 = v13;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = Dictionary.description.getter();
    v16 = v15;

    v17 = *(v2 + 3);
    if (v17)
    {
LABEL_6:
      v18 = *(v2 + 4);
      v19 = sub_100003274(v2, v17);
      v20 = *(v17 - 8);
      v21 = *(v20 + 64);
      __chkstk_darwin(v19);
      v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v23);
      v24 = (*(v18 + 16))(v17, v18);
      v26 = v25;
      (*(v20 + 8))(v23, v17);
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0xE300000000000000;
    v49 = 7104878;
    v17 = *(v2 + 3);
    if (v17)
    {
      goto LABEL_6;
    }
  }

  v24 = 0;
  v26 = 0;
LABEL_9:
  if (sub_10000DBEC(v26))
  {
    sub_10000FAF0(0, &qword_10005BE10, NSNumber_ptr);
    v51 = Dictionary.description.getter();
    v28 = v27;
  }

  else
  {
    v28 = 0xE300000000000000;
  }

  if ([v1 enabled])
  {
    if (v26)
    {
      sub_10000D878(v24, v26);
    }

    else
    {
      v24 = [v1 defaultAnswer];
    }
  }

  else
  {
    sub_10000D878(v24, v26);
    v24 = 1;
  }

  if (sub_10001F30C(v24))
  {
    v29 = String.init(cString:)();
    v31 = v30;
  }

  else
  {
    v31 = 0xE700000000000000;
    v29 = 0x6E776F6E6B6E55;
  }

  sub_10001BE98([v1 domain]);
  v32 = String.init(cString:)();
  v34 = v33;
  v53 = 0;
  v54 = 0xE000000000000000;
  _StringGuts.grow(_:)(50);

  v53 = 60;
  v54 = 0xE100000000000000;
  v35._countAndFlagsBits = v32;
  v35._object = v34;
  String.append(_:)(v35);

  v36._countAndFlagsBits = 40;
  v36._object = 0xE100000000000000;
  String.append(_:)(v36);
  v52 = [v1 domain];
  v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v37);

  v38._countAndFlagsBits = 0x6577736E61203A29;
  v38._object = 0xEA00000000003D72;
  String.append(_:)(v38);
  v39._countAndFlagsBits = v29;
  v39._object = v31;
  String.append(_:)(v39);

  v40._countAndFlagsBits = 0x3D73757461747320;
  v40._object = 0xE800000000000000;
  String.append(_:)(v40);
  v41._countAndFlagsBits = v51;
  v41._object = v28;
  String.append(_:)(v41);

  v42._countAndFlagsBits = 0x747865746E6F6320;
  v42._object = 0xE90000000000003DLL;
  String.append(_:)(v42);
  v43._countAndFlagsBits = v49;
  v43._object = v16;
  String.append(_:)(v43);

  v44._countAndFlagsBits = 0x3D7963696C6F7020;
  v44._object = 0xE800000000000000;
  String.append(_:)(v44);
  v45._countAndFlagsBits = v50;
  v45._object = v12;
  String.append(_:)(v45);

  v46._countAndFlagsBits = 62;
  v46._object = 0xE100000000000000;
  String.append(_:)(v46);
  return v53;
}

uint64_t sub_10000F684(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001EB0(&qword_10005BCE0, &qword_1000339B0);
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
        sub_100007120(v25, v37);
      }

      else
      {
        sub_100003218(v25, v37);
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
      result = sub_100007120(v37, (*(v8 + 56) + 32 * v16));
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

unint64_t sub_10000F93C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001EB0(&qword_10005BE50, &qword_100033DC8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000A758(v4, &v15, &qword_10005BDF0, &qword_100033DA0);
      v5 = v15;
      v6 = v16;
      result = sub_100002F84(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000FA6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EB0(&qword_10005BDD0, &qword_100033D90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000FAF0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10000FB38(char a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    v6 = 0;
    v8 = 2;
    goto LABEL_30;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = (a3 + 32);
  v8 = 2;
  do
  {
    v9 = v6;
    v10 = v7[3];
    v11 = v7[4];
    sub_100003274(v7, v10);
    v12 = (*(v11 + 16))(v10, v11);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    if (v12 <= 2)
    {
      if (v12 == 1)
      {
        v18 = v5 == 3;
        if (v5 < 3)
        {
          v5 = 3;
          goto LABEL_4;
        }
      }

      else if (v12 == 2)
      {
        v18 = v5 == 2;
        if (v5 < 2)
        {
          v5 = 2;
          goto LABEL_4;
        }
      }

      else
      {
LABEL_16:
        v18 = v5 == 1;
        if (v5 < 1)
        {
          v5 = 1;
          goto LABEL_4;
        }
      }

LABEL_22:
      if (!v18 || v8 == 4)
      {
        goto LABEL_5;
      }

      goto LABEL_25;
    }

    if (v12 == 3)
    {
      v18 = v5 == 4;
      if (v5 < 4)
      {
        v5 = 4;
        goto LABEL_4;
      }

      goto LABEL_22;
    }

    if (v12 != 4)
    {
      goto LABEL_16;
    }

    if (v5 < 5)
    {
      v5 = 5;
LABEL_4:

      v4 = v15;
      v8 = v13;
      goto LABEL_5;
    }

    if (v8 == 4)
    {
      v5 = 5;
      goto LABEL_5;
    }

LABEL_25:
    if (v4)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v4;
      sub_10001047C(v15, sub_100010464, 0, isUniquelyReferenced_nonNull_native, &v24, a1 & 1, a2, a3);

      v4 = v24;
    }

LABEL_5:
    v6 = sub_100004898(v9, v17);

    v7 += 5;
    --v3;
  }

  while (v3);
  if (!v4)
  {
LABEL_30:
    v4 = sub_1000030B4(&_swiftEmptyArrayStorage);
  }

  return nullsub_1(v8, v4, v6);
}

uint64_t sub_10000FDA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_100010778(a1, a2, a3);
  if (!v4)
  {
    *a4 = result & 1;
    *(a4 + 8) = v7;
    *(a4 + 16) = v8;
  }

  return result;
}

uint64_t sub_10000FDE8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001EB0(&qword_10005BB28, &unk_1000335D0);
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

void *sub_100010088()
{
  v1 = v0;
  sub_100001EB0(&qword_10005BB28, &unk_1000335D0);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_1000101F0(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001EB0(&qword_10005BE70, &qword_100033E98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001EB0(&qword_10005BE78, &qword_100033EA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100010338(char *a1, int64_t a2, char a3)
{
  result = sub_100010358(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100010358(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001EB0(&qword_10005BB40, &unk_1000342A0);
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

uint64_t sub_100010464@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_10001047C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5, char a6, uint64_t a7, uint64_t a8)
{
  v10 = a1 + 64;
  v11 = -1 << *(a1 + 32);
  if (-v11 < 64)
  {
    v12 = ~(-1 << -v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(a1 + 64);
  v44 = -1 << *(a1 + 32);
  v14 = (63 - v11) >> 6;
  v52 = a6 & 1;

  v15 = 0;
  v50 = v14;
  v51 = v10;
  v45 = a5;
  while (v13)
  {
    v20 = v15;
LABEL_15:
    v22 = __clz(__rbit64(v13)) | (v20 << 6);
    v23 = (*(a1 + 48) + 16 * v22);
    v24 = v23[1];
    v25 = *(*(a1 + 56) + 8 * v22);
    v58 = *v23;
    v59 = v24;
    v60 = v25;

    a2(&v55, &v58);

    v26 = v55;
    v27 = v56;
    v61 = v57;
    v28 = *a5;
    v30 = sub_100002F84(v55, v56);
    v31 = v28[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_26;
    }

    v34 = v29;
    if (v28[3] >= v33)
    {
      if ((a4 & 1) == 0)
      {
        sub_100010088();
      }
    }

    else
    {
      sub_10000FDE8(v33, a4 & 1);
      v35 = *a5;
      v36 = sub_100002F84(v26, v27);
      if ((v34 & 1) != (v37 & 1))
      {
        goto LABEL_28;
      }

      v30 = v36;
    }

    v13 &= v13 - 1;
    v38 = *a5;
    if (v34)
    {
      v16 = *(v38[7] + 8 * v30);
      v49 = v16;
      LOBYTE(v58) = v52;
      v59 = a7;
      v60 = a8;
      sub_10000A6B0();
      v48 = sub_1000075D8(v16);
      LOBYTE(v58) = v52;
      v59 = a7;
      v60 = a8;
      a5 = v45;
      v17 = v61;
      v18 = sub_1000075D8(v61);

      v19 = v49;
      if (v18 >= v48)
      {
        v19 = v17;
      }

      *(v38[7] + 8 * v30) = v19;
    }

    else
    {
      v38[(v30 >> 6) + 8] |= 1 << v30;
      v39 = (v38[6] + 16 * v30);
      *v39 = v26;
      v39[1] = v27;
      *(v38[7] + 8 * v30) = v61;
      v40 = v38[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_27;
      }

      v38[2] = v42;
    }

    a4 = 1;
    v15 = v20;
    v14 = v50;
    v10 = v51;
  }

  v21 = v15;
  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v14)
    {
      sub_100006A78();
    }

    v13 = *(v10 + 8 * v20);
    ++v21;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}