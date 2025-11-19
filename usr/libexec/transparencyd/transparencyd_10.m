uint64_t sub_100142890()
{
  v0 = String.subscript.getter();
  v4 = sub_100142910(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100142910(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
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
  v11 = sub_100099E24(v9, 0);
  v12 = sub_100142A68(v15, (v11 + 4), v10, a1, a2, a3, a4);

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

unint64_t sub_100142A68(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_100142C88(v12, a6, a7);
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

    result = sub_100142C88(v12, a6, a7);
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

uint64_t sub_100142C88(unsigned __int16 a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100142D04(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100142DB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100095820(&qword_100387888, &qword_1002DCB88);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

id sub_100143054()
{
  v1 = v0;
  sub_100095820(&qword_100387888, &qword_1002DCB88);
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

        result = v20;
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

BOOL sub_1001431C0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

id sub_1001432B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for String.Encoding();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = objc_opt_self();
  v15 = a3;
  v16 = _convertErrorToNSError(_:)();
  v17 = [v14 analyticsErrorData:v16];

  if (v17)
  {
    v34 = a4;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = objc_opt_self();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v35 = 0;
    v20 = [v18 dataWithJSONObject:isa options:0 error:&v35];

    v21 = v35;
    if (v20)
    {
      v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      static String.Encoding.utf8.getter();
      v17 = String.init(data:encoding:)();
      v26 = v25;

      sub_1000956CC(v22, v24);
    }

    else
    {
      v27 = v21;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v17 = 0;
      v26 = 0;
    }

    a4 = v34;
  }

  else
  {

    v26 = 0;
  }

  sub_1000AB050(a4, v11, &qword_100383FB0, &unk_1002D6690);
  v28 = type metadata accessor for KTEligibilityStatusResult(0);
  v29 = objc_allocWithZone(v28);
  *&v29[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_result] = 2;
  v30 = &v29[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_errorString];
  *v30 = v17;
  *(v30 + 1) = v26;
  v31 = &v29[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_element];
  *v31 = a1;
  *(v31 + 1) = a2;
  sub_1000AB050(v11, &v29[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_dateStored], &qword_100383FB0, &unk_1002D6690);
  v36.receiver = v29;
  v36.super_class = v28;

  v32 = objc_msgSendSuper2(&v36, "init");
  sub_1000057C4(v11, &qword_100383FB0, &unk_1002D6690);
  return v32;
}

id sub_1001435FC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for String.Encoding();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = objc_opt_self();
  v13 = a3;
  v14 = _convertErrorToNSError(_:)();
  v15 = [v12 analyticsErrorData:v14];

  if (v15)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = objc_opt_self();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v34 = 0;
    v18 = [v16 dataWithJSONObject:isa options:0 error:&v34];

    v19 = v34;
    if (v18)
    {
      v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      static String.Encoding.utf8.getter();
      v23 = String.init(data:encoding:)();
      v15 = v24;

      sub_1000956CC(v20, v22);
    }

    else
    {
      v25 = v19;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v23 = 0;
      v15 = 0;
    }
  }

  else
  {

    v23 = 0;
  }

  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
  v27 = type metadata accessor for KTEligibilityStatusResult(0);
  v28 = objc_allocWithZone(v27);
  *&v28[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_result] = 2;
  v29 = &v28[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_errorString];
  *v29 = v23;
  v29[1] = v15;
  v30 = &v28[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_element];
  *v30 = a1;
  *(v30 + 1) = a2;
  sub_1000AB050(v9, &v28[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_dateStored], &qword_100383FB0, &unk_1002D6690);
  v35.receiver = v28;
  v35.super_class = v27;

  v31 = objc_msgSendSuper2(&v35, "init");
  sub_1000057C4(v9, &qword_100383FB0, &unk_1002D6690);
  return v31;
}

uint64_t sub_1001439B4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_100143A0C()
{
  result = qword_100384440;
  if (!qword_100384440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100384440);
  }

  return result;
}

unint64_t sub_100143A58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100095820(&qword_100387888, &qword_1002DCB88);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10000574C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_100143B60()
{
  result = qword_100387760;
  if (!qword_100387760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100387760);
  }

  return result;
}

unint64_t sub_100143BB8()
{
  result = qword_100387768;
  if (!qword_100387768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100387768);
  }

  return result;
}

unint64_t sub_100143C10()
{
  result = qword_100387770;
  if (!qword_100387770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100387770);
  }

  return result;
}

void sub_100143C8C()
{
  sub_1000B7104();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100143D78()
{
  sub_1000B7104();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100143E14()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v5 = *(v0 + 4);
  v4 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000A0E9C;

  return sub_100141B04(v2, v5, v4, v3);
}

uint64_t sub_100143ED8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A0E9C;

  return sub_100140C9C(v2, v3);
}

uint64_t sub_100143F84()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A0E9C;

  return sub_1001408D8(v2, v3);
}

uint64_t sub_100144030()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A0E9C;

  return sub_1001401A4(v2, v3, v4);
}

uint64_t sub_1001440E4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000A0E9C;

  return sub_10013FA48(v2, v3, v4, v6, v5);
}

uint64_t sub_1001441AC()
{
  v2 = v0[2];
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A0E9C;

  return sub_10013F518(v3, v4, v2);
}

uint64_t sub_100144260()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A0E9C;

  return sub_10013F180(v2, v4, v3);
}

uint64_t sub_100144314()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A0E9C;

  return sub_10013EDE8(v2, v4, v3);
}

uint64_t sub_1001443C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A0E9C;

  return sub_10013EA5C(v2, v3);
}

uint64_t sub_100144474()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A0E9C;

  return sub_10013E6E8(v2, v3);
}

uint64_t sub_100144520()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000A0E9C;

  return sub_10013DE30(v2, v3, v5, v4);
}

uint64_t sub_1001445E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A0E9C;

  return sub_10013D6D0(v2, v3);
}

uint64_t sub_10014468C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A0E9C;

  return sub_10013D138(v2, v3);
}

uint64_t sub_100144738()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A0E9C;

  return sub_10013C92C(v2, v3);
}

uint64_t sub_1001447E4()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100144824()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A0E9C;

  return sub_10013C40C(v2, v3, v4);
}

uint64_t sub_1001448D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A0E9C;

  return sub_10013BD74(v2, v3);
}

uint64_t sub_100144984()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A0E9C;

  return sub_10013B70C(v2, v3, v4);
}

uint64_t sub_100144A38()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000A0E9C;

  return sub_10013AE3C(v2, v3, v5, v4);
}

uint64_t sub_100144AF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000A0510;

  return sub_10013A3CC(v2, v3, v5, v4);
}

uint64_t sub_100144BB8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A0E9C;

  return sub_100139A54(v2, v3, v4);
}

uint64_t sub_100144C6C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A0E9C;

  return sub_1001392EC(v2, v3, v4);
}

uint64_t sub_100144D20()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A0E9C;

  return sub_100138E24(v2, v3);
}

uint64_t sub_100144DCC()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100144E14()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A0E9C;

  return sub_1001384C4(v2, v3, v4);
}

uint64_t sub_100144EC8()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100144F08()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A0E9C;

  return sub_100137C10(v2, v3);
}

_BYTE *sub_100144FB4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_100145050()
{
  v1 = OBJC_IVAR____TtC13transparencyd10KTWatchdog_watchers;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_100145098(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd10KTWatchdog_watchers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100145150@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13transparencyd10KTWatchdog_log;
  swift_beginAccess();
  v4 = type metadata accessor for Logger();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1001451D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd10KTWatchdog_log;
  swift_beginAccess();
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_100145310()
{
  v1 = OBJC_IVAR____TtC13transparencyd10KTWatchdog_intervalTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_100145358(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd10KTWatchdog_intervalTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id KTWatchdog.__allocating_init(control:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_100148600(a1);
  swift_unknownObjectRelease();
  return v4;
}

id KTWatchdog.init(control:)(uint64_t a1)
{
  v1 = sub_100148600(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t KTWatchdog.description.getter()
{
  (*((swift_isaMask & *v0) + 0x88))();
  sub_100095820(&qword_100387898, &unk_1002DCBC0);
  sub_1000D29A4(&qword_1003878A0, &qword_100387898, &unk_1002DCBC0);
  sub_100008D30();
  v1 = Sequence<>.joined(separator:)();
  v3 = v2;

  v4._countAndFlagsBits = v1;
  v4._object = v3;
  String.append(_:)(v4);

  v5._countAndFlagsBits = 62;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 0x446863746157544BLL;
}

id sub_10014579C()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v1 - 8);
  v63 = v1;
  v64 = v2;
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v51 = (&v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v61 = (&v50 - v6);
  v62 = type metadata accessor for DispatchTime();
  v52 = *(v62 - 8);
  v7 = *(v52 + 64);
  v8 = __chkstk_darwin(v62);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v60 = &v50 - v10;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v11 - 8);
  v59 = v11;
  v12 = *(v58 + 8);
  __chkstk_darwin(v11);
  v55 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v56 = *(v14 - 8);
  v57 = v14;
  v15 = *(v56 + 64);
  __chkstk_darwin(v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009FDA0(0, &qword_100385460, OS_dispatch_source_ptr);
  v23 = *(v0 + OBJC_IVAR____TtC13transparencyd10KTWatchdog_queue);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100148F8C(&qword_100385468, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_100095820(&qword_100385470, &unk_1002D7C20);
  sub_1000D29A4(&unk_100385478, &qword_100385470, &unk_1002D7C20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v54;
  static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v19 + 8))(v22, v18);
  ObjectType = swift_getObjectType();
  v26 = swift_allocObject();
  v27 = v53;
  *(v26 + 16) = v53;
  aBlock[4] = sub_100148C0C;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A31E0;
  aBlock[3] = &unk_100323250;
  v28 = _Block_copy(aBlock);
  v29 = v27;
  static DispatchQoS.unspecified.getter();
  v30 = v55;
  sub_1000F6078();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v28);
  (*(v58 + 1))(v30, v59);
  (*(v56 + 8))(v17, v57);

  static DispatchTime.now()();
  v31 = *&v29[OBJC_IVAR____TtC13transparencyd10KTWatchdog_dep];
  result = [v31 watchdogInterval];
  v34 = v33 * 1000.0;
  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v34 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v58 = v29;
  v59 = ObjectType;
  v35 = v61;
  *v61 = v34;
  v36 = enum case for DispatchTimeInterval.milliseconds(_:);
  v37 = v63;
  v38 = v64;
  v39 = *(v64 + 104);
  v39(v35, enum case for DispatchTimeInterval.milliseconds(_:), v63);
  + infix(_:_:)();
  v40 = *(v38 + 8);
  v64 = v38 + 8;
  v40(v35, v37);
  v41 = *(v52 + 8);
  v41(v24, v62);
  result = [v31 watchdogInterval];
  v43 = v42 * 1000.0;
  if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v43 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v43 < 9.22337204e18)
  {
    v44 = v61;
    *v61 = v43;
    v45 = v63;
    v39(v44, v36, v63);
    v46 = v51;
    *v51 = 100;
    v39(v46, v36, v45);
    v47 = v60;
    OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
    v40(v46, v45);
    v40(v44, v45);
    OS_dispatch_source.resume()();
    v48 = *((swift_isaMask & *v58) + 0xC0);
    v49 = swift_unknownObjectRetain();
    v48(v49);
    swift_unknownObjectRelease();
    return (v41)(v47, v62);
  }

LABEL_13:
  __break(1u);
  return result;
}

Swift::Void __swiftcall KTWatchdog.resume()()
{
  if ((*((swift_isaMask & *v0) + 0xB8))())
  {

    swift_unknownObjectRelease();
  }

  else
  {
    v1 = *((swift_isaMask & *v0) + 0xD8);

    v1();
  }
}

uint64_t KTWatchdog.add(named:watcher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v23);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&v4[OBJC_IVAR____TtC13transparencyd10KTWatchdog_workQueue];
  v18 = swift_allocObject();
  v18[2] = v4;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = a4;
  aBlock[4] = sub_100148C80;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A31E0;
  aBlock[3] = &unk_1003232A0;
  v19 = _Block_copy(aBlock);
  v20 = v4;

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_100148F8C(&qword_100384BD0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095820(&qword_100384BD8, &qword_1002D74B8);
  sub_1000D29A4(&unk_100384BE0, &qword_100384BD8, &qword_1002D74B8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v23);
}

void *sub_100146440()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v23[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC13transparencyd10KTWatchdog_workQueue);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v9 = (*((swift_isaMask & *v0) + 0x88))(result);
    v10 = v9;
    v25 = _swiftEmptyArrayStorage;
    v11 = v9 + 64;
    v12 = 1 << *(v9 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v9 + 64);
    v15 = (v12 + 63) >> 6;

    for (i = 0; v14; result = )
    {
      v17 = i;
LABEL_10:
      v18 = (v17 << 10) | (16 * __clz(__rbit64(v14)));
      v19 = *(v10 + 56);
      v20 = (*(v10 + 48) + v18);
      v21 = v20[1];
      v23[0] = *v20;
      v23[1] = v21;
      v22 = *(v19 + v18);
      v24 = v22;

      sub_100146690(&v25, v23, v0);
      v14 &= v14 - 1;
    }

    while (1)
    {
      v17 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        return v25;
      }

      v14 = *(v11 + 8 * v17);
      ++i;
      if (v14)
      {
        i = v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100146690(uint64_t *a1, uint64_t *a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  swift_retain_n();

  v16 = v13(&v32, v15);
  if (v32)
  {
  }

  else
  {
    (*((swift_isaMask & *a3) + 0xA0))(v16);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v29 = a1;
      v21 = v20;
      v22 = swift_slowAlloc();
      v30 = v12;
      v31 = v22;
      v23 = v22;
      *v21 = 136315138;

      v24 = sub_1000999E4(v30, v11, &v31);

      *(v21 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "watcher %s failed", v21, 0xCu);
      sub_10009A9E8(v23);
      v12 = v30;

      a1 = v29;
    }

    (*(v7 + 8))(v10, v6);

    v25 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000B3938(0, *(v25 + 16) + 1, 1, v25);
      v25 = result;
    }

    v27 = *(v25 + 16);
    v26 = *(v25 + 24);
    if (v27 >= v26 >> 1)
    {
      result = sub_1000B3938((v26 > 1), v27 + 1, 1, v25);
      v25 = result;
    }

    *(v25 + 16) = v27 + 1;
    v28 = v25 + 16 * v27;
    *(v28 + 32) = v12;
    *(v28 + 40) = v11;
    *a1 = v25;
  }

  return result;
}

Swift::Void __swiftcall KTWatchdog.shutdown(reason:)(Swift::String reason)
{
  v2 = v1;
  object = reason._object;
  countAndFlagsBits = reason._countAndFlagsBits;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  __chkstk_darwin(v3);
  v38 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v37 = *(v39 - 8);
  v6 = *(v37 + 64);
  __chkstk_darwin(v39);
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTimeInterval();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for DispatchTime();
  v34 = *(v42 - 8);
  v13 = *(v34 + 64);
  v14 = __chkstk_darwin(v42);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v32 - v18;
  v20 = *((swift_isaMask & *v1) + 0xB8);
  if (!(v20)(v17) || (swift_getObjectType(), v21 = OS_dispatch_source.isCancelled.getter(), swift_unknownObjectRelease(), (v21 & 1) == 0))
  {
    if (v20())
    {
      swift_getObjectType();
      OS_dispatch_source.cancel()();
      swift_unknownObjectRelease();
    }

    v22 = *&v1[OBJC_IVAR____TtC13transparencyd10KTWatchdog_dep];
    [*&v2[OBJC_IVAR____TtC13transparencyd10KTWatchdog_dep] watchdogNiceExit];
    static DispatchTime.now()();
    [v22 watchdogNiceWaitTime];
    v24 = v23 * 1000.0;
    if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v24 > -9.22337204e18)
    {
      if (v24 < 9.22337204e18)
      {
        *v12 = v24;
        (*(v9 + 104))(v12, enum case for DispatchTimeInterval.milliseconds(_:), v8);
        + infix(_:_:)();
        (*(v9 + 8))(v12, v8);
        v34 = *(v34 + 8);
        (v34)(v16, v42);
        v32 = *&v2[OBJC_IVAR____TtC13transparencyd10KTWatchdog_queue];
        v25 = swift_allocObject();
        v26 = countAndFlagsBits;
        v25[2] = v2;
        v25[3] = v26;
        v25[4] = object;
        aBlock[4] = sub_100148DA4;
        aBlock[5] = v25;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000A31E0;
        aBlock[3] = &unk_1003232F0;
        v27 = _Block_copy(aBlock);
        v28 = v2;

        v29 = v36;
        static DispatchQoS.unspecified.getter();
        v43 = _swiftEmptyArrayStorage;
        sub_100148F8C(&qword_100384BD0, &type metadata accessor for DispatchWorkItemFlags);
        sub_100095820(&qword_100384BD8, &qword_1002D74B8);
        sub_1000D29A4(&unk_100384BE0, &qword_100384BD8, &qword_1002D74B8);
        v30 = v38;
        v31 = v41;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v27);
        (*(v40 + 8))(v30, v31);
        (*(v37 + 8))(v29, v39);
        (v34)(v19, v42);

        return;
      }

LABEL_12:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_100146F90()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v1 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v36 = *(v5 - 8);
  v37 = v5;
  v6 = *(v36 + 64);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v0 + OBJC_IVAR____TtC13transparencyd10KTWatchdog_queue);
  *v20 = v21;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v20, v16);
  if (v21)
  {
    v23 = *(v0 + OBJC_IVAR____TtC13transparencyd10KTWatchdog_dep);
    if (([v23 watchdogDisableDebuggerCheck] & 1) != 0 || (_s13transparencyd10KTWatchdogC12isInDebuggerSbyFZ_0() & 1) == 0)
    {
      if (*(v0 + OBJC_IVAR____TtC13transparencyd10KTWatchdog_pending))
      {
        v27 = v0;
        (*((swift_isaMask & *v0) + 0xA0))();
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v28, v29, "watch is still pending, shuting down", v30, 2u);
        }

        (*(v39 + 8))(v13, v40);
        if ([v23 watchDogFastRudeExit])
        {
          v31 = String._bridgeToObjectiveC()();
          [v23 watchdogRudeExitWithReason:v31];
        }

        else
        {
          (*((swift_isaMask & *v27) + 0xF8))(0x676E69646E6570, 0xE700000000000000);
        }
      }

      else
      {
        *(v0 + OBJC_IVAR____TtC13transparencyd10KTWatchdog_pending) = 1;
        v32 = *(v0 + OBJC_IVAR____TtC13transparencyd10KTWatchdog_workQueue);
        v33 = swift_allocObject();
        *(v33 + 16) = v0;
        aBlock[4] = sub_100148E0C;
        aBlock[5] = v33;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000A31E0;
        aBlock[3] = &unk_100323340;
        v34 = _Block_copy(aBlock);
        v35 = v0;
        static DispatchQoS.unspecified.getter();
        v41 = _swiftEmptyArrayStorage;
        sub_100148F8C(&qword_100384BD0, &type metadata accessor for DispatchWorkItemFlags);
        sub_100095820(&qword_100384BD8, &qword_1002D74B8);
        sub_1000D29A4(&unk_100384BE0, &qword_100384BD8, &qword_1002D74B8);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v34);
        (*(v38 + 8))(v4, v1);
        (*(v36 + 8))(v8, v37);
      }
    }

    else
    {
      (*((swift_isaMask & *v0) + 0xA0))();
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "skipping watchdog since we are in debugger", v26, 2u);
      }

      (*(v39 + 8))(v15, v40);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100147630(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v7 = *(v18 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*((swift_isaMask & *a1) + 0xF0))(v9);
  *(a1 + OBJC_IVAR____TtC13transparencyd10KTWatchdog_pending) = 0;
  v17[1] = *(a1 + OBJC_IVAR____TtC13transparencyd10KTWatchdog_queue);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = sub_100005A84;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A31E0;
  aBlock[3] = &unk_1003233B8;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100148F8C(&qword_100384BD0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095820(&qword_100384BD8, &qword_1002D74B8);
  sub_1000D29A4(&unk_100384BE0, &qword_100384BD8, &qword_1002D74B8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v11, v18);
}

uint64_t sub_100147948(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    (*((swift_isaMask & *a2) + 0xA0))(result);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "watchdog failed, shuting down", v12, 2u);
    }

    (*(v5 + 8))(v9, v4);
    v14 = 0x3A72656863746177;
    v15 = 0xE900000000000020;
    v13._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v13);

    (*((swift_isaMask & *a2) + 0xF8))(v14, v15);
  }

  return result;
}

uint64_t sub_100147BA0()
{
  result = (*((swift_isaMask & *v0) + 0xB8))();
  if (result)
  {
    swift_getObjectType();
    OS_dispatch_source.cancel()();

    return swift_unknownObjectRelease();
  }

  return result;
}

id KTWatchdog.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KTWatchdog();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100147E0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095820(&unk_1003878E0, &qword_1002DCC48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_100147F24(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100095820(&qword_1003878D8, &qword_1002DCC40);
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1001481DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10000574C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100147F24(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_10000574C(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100148364();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

void *sub_100148364()
{
  v1 = v0;
  sub_100095820(&qword_1003878D8, &qword_1002DCC40);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

unint64_t sub_1001484E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100095820(&qword_1003878D8, &qword_1002DCC40);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_10000574C(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

id sub_100148600(uint64_t a1)
{
  v2 = v1;
  v32 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v32 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v32);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = OBJC_IVAR____TtC13transparencyd10KTWatchdog_intervalTimer;
  *&v2[OBJC_IVAR____TtC13transparencyd10KTWatchdog_intervalTimer] = 0;
  *&v2[OBJC_IVAR____TtC13transparencyd10KTWatchdog_dep] = a1;
  swift_unknownObjectRetain();
  *&v2[OBJC_IVAR____TtC13transparencyd10KTWatchdog_watchers] = sub_1001484E4(_swiftEmptyArrayStorage);
  Logger.init(transparencyCategory:)();
  (*(v13 + 32))(&v2[OBJC_IVAR____TtC13transparencyd10KTWatchdog_log], v16, v12);
  v2[OBJC_IVAR____TtC13transparencyd10KTWatchdog_pending] = 0;
  v30 = sub_10009FDA0(0, &qword_100385400, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  v29 = sub_100148F8C(&unk_1003878F0, &type metadata accessor for OS_dispatch_queue.Attributes);
  v28 = sub_100095820(&unk_100385410, &qword_1002D66F8);
  sub_1000D29A4(&qword_100387900, &unk_100385410, &qword_1002D66F8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v18 = v4 + 104;
  v19 = *(v4 + 104);
  v26 = v7;
  v27 = v18;
  v20 = v32;
  v19(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v32);
  *&v2[OBJC_IVAR____TtC13transparencyd10KTWatchdog_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v25[1] = "rkQueue";
  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19(v26, v17, v20);
  *&v2[OBJC_IVAR____TtC13transparencyd10KTWatchdog_workQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v21 = v31;
  swift_beginAccess();
  v22 = *&v2[v21];
  *&v2[v21] = 0;
  swift_unknownObjectRelease();
  v23 = type metadata accessor for KTWatchdog();
  v33.receiver = v2;
  v33.super_class = v23;
  return objc_msgSendSuper2(&v33, "init");
}

uint64_t _s13transparencyd10KTWatchdogC12isInDebuggerSbyFZ_0()
{
  bzero(v9, 0x288uLL);
  v7 = 648;
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processIdentifier];

  v6 = 12;
  v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v2 + 16) = 12;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 32) = 0u;
  *v8 = xmmword_1002DCBB0;
  sysctlnametomib(v8, (v2 + 32), &v6);
  v3 = v6;
  v4 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v4 < 12)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }

LABEL_11:
    v2 = sub_100147F10(v2);
    if ((v3 & 0x8000000000000000) == 0)
    {
LABEL_5:
      if (v3 < *(v2 + 16))
      {
        *(v2 + 32 + 4 * v3) = v1;
        v6 = v4;
        if ((v4 & 0x8000000000000000) == 0)
        {
          sysctl((v2 + 32), v4, v9, &v7, 0, 0);

          return (v9[33] >> 3) & 1;
        }

LABEL_14:
        __break(1u);
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_100148C68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100148C80()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = *((swift_isaMask & *v2) + 0x98);

  v8 = v7(v15);
  v10 = v9;
  v11 = *v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v10;
  *v10 = 0x8000000000000000;
  sub_1001481DC(sub_100148F58, v6, v1, v3, isUniquelyReferenced_nonNull_native);

  *v10 = v14;
  return v8(v15, 0);
}

void sub_100148DA4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v0[2] + OBJC_IVAR____TtC13transparencyd10KTWatchdog_dep);
  v4 = String._bridgeToObjectiveC()();
  [v3 watchdogRudeExitWithReason:v4];
}

uint64_t type metadata accessor for KTWatchdog()
{
  result = qword_10039A430;
  if (!qword_10039A430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100148E68()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_100148F58@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100148F8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t KTError.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for KTError();
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a1)
  {
    case 1:
    case 4:
    case 5:
    case 6:
    case 8:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
      goto LABEL_6;
    case 3:
      v8 = sub_100095820(&qword_100387920, &qword_1002DCC50);
      v9 = *(v8 + 48);
      v10 = *(v8 + 64);
      *v7 = 0;
      *(v7 + 1) = 0xE000000000000000;
      v11 = type metadata accessor for Date();
      v12 = *(*(v11 - 8) + 56);
      v12(&v7[v9], 1, 1, v11);
      v12(&v7[v10], 1, 1, v11);
      goto LABEL_6;
    case 7:
      *v7 = _swiftEmptyArrayStorage;
      goto LABEL_6;
    case 15:
      *v7 = 0;
      *(v7 + 1) = 0xE000000000000000;
      goto LABEL_6;
    case 16:
      *v7 = 0;
      *(v7 + 1) = 0xE000000000000000;
LABEL_6:
      swift_storeEnumTagMultiPayload();
      sub_10014A61C(v7, a2);
      result = (*(v16 + 56))(a2, 0, 1, v4);
      break;
    default:
      v14 = *(v16 + 56);

      result = v14(a2, 1, 1, v4);
      break;
  }

  return result;
}

uint64_t KTError.rawValue.getter()
{
  v1 = type metadata accessor for KTError();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10014A680(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 1;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v7 = *(v4 + 1);

      v8 = sub_100095820(&qword_100387920, &qword_1002DCC50);
      v9 = *(v8 + 48);
      sub_1000057C4(&v4[*(v8 + 64)], &qword_100383FB0, &unk_1002D6690);
      sub_1000057C4(&v4[v9], &qword_100383FB0, &unk_1002D6690);
      result = 3;
      break;
    case 2:
      sub_10014A6E4(v4);
      result = 7;
      break;
    case 3:
      sub_10014A6E4(v4);
      result = 15;
      break;
    case 4:
      sub_10014A6E4(v4);
      result = 16;
      break;
    case 5:
      return result;
    case 6:
      result = 4;
      break;
    case 7:
      result = 5;
      break;
    case 8:
      result = 6;
      break;
    case 9:
      result = 8;
      break;
    case 10:
      result = 10;
      break;
    case 11:
      result = 11;
      break;
    case 12:
      result = 12;
      break;
    case 13:
      result = 13;
      break;
    case 14:
      result = 14;
      break;
    case 15:
      result = 17;
      break;
    default:
      sub_10014A6E4(v4);
      result = 2;
      break;
  }

  return result;
}

uint64_t static KTError.errorDomain.getter()
{
  swift_beginAccess();
  v0 = static KTError.errorDomain;

  return v0;
}

uint64_t static KTError.errorDomain.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  static KTError.errorDomain = a1;
  off_100387918 = a2;
}

uint64_t KTError.errorUserInfo.getter()
{
  v1 = v0;
  v2 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v48[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v4);
  v9 = &v48[-v8];
  v10 = __chkstk_darwin(v7);
  v12 = &v48[-v11];
  __chkstk_darwin(v10);
  v14 = &v48[-v13];
  v15 = type metadata accessor for KTError();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v48[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10014A680(v1, v18);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result == 3 || result == 4)
    {
      v36 = *v18;
      v37 = v18[1];
      sub_100095820(&unk_100387750, &unk_1002D7630);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002D47B0;
      *(inited + 32) = 6910581;
      v39 = inited + 32;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = 0xE300000000000000;
      *(inited + 48) = v36;
      *(inited + 56) = v37;
LABEL_18:
      v26 = sub_1000BEA10(inited);
      swift_setDeallocating();
      sub_1000057C4(v39, &qword_100384660, &qword_1002D7640);
      return v26;
    }

LABEL_13:
    v26 = sub_1000BEA10(_swiftEmptyArrayStorage);
    sub_10014A6E4(v18);
    return v26;
  }

  if (result == 1)
  {
    v27 = *v18;
    v28 = v18[1];
    v29 = sub_100095820(&qword_100387920, &qword_1002DCC50);
    v30 = *(v29 + 64);
    sub_1000ABF3C(v18 + *(v29 + 48), v14);
    sub_1000ABF3C(v18 + v30, v12);
    v31 = sub_1000BEA10(_swiftEmptyArrayStorage);
    v52 = &type metadata for String;
    *&v51 = v27;
    *(&v51 + 1) = v28;
    sub_10009C6AC(&v51, v50);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v31;
    sub_10014A270(v50, 6910581, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
    v53 = v49;
    sub_1000AB050(v14, v9, &qword_100383FB0, &unk_1002D6690);
    v33 = type metadata accessor for Date();
    v34 = *(v33 - 8);
    v35 = *(v34 + 48);
    if (v35(v9, 1, v33) == 1)
    {
      sub_1000057C4(v9, &qword_100383FB0, &unk_1002D6690);
      sub_100149D64(0x73656D6954746D73, 0xEC000000706D6174, &v51);
      sub_1000057C4(&v51, &qword_1003834D8, &qword_1002D6708);
    }

    else
    {
      v52 = v33;
      v42 = sub_1000AA7F4(&v51);
      (*(v34 + 32))(v42, v9, v33);
      sub_10009C6AC(&v51, v50);
      v43 = v53;
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v49 = v43;
      sub_10014A270(v50, 0x73656D6954746D73, 0xEC000000706D6174, v44);
      v53 = v49;
    }

    sub_1000AB050(v12, v6, &qword_100383FB0, &unk_1002D6690);
    if (v35(v6, 1, v33) == 1)
    {
      sub_1000057C4(v6, &qword_100383FB0, &unk_1002D6690);
      sub_100149D64(0x63655264756F6C63, 0xEB0000000064726FLL, v50);
      sub_1000057C4(v50, &qword_1003834D8, &qword_1002D6708);
      sub_1000057C4(v12, &qword_100383FB0, &unk_1002D6690);
      sub_1000057C4(v14, &qword_100383FB0, &unk_1002D6690);
      return v53;
    }

    else
    {
      v52 = v33;
      v45 = sub_1000AA7F4(&v51);
      (*(v34 + 32))(v45, v6, v33);
      sub_10009C6AC(&v51, v50);
      v46 = v53;
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v49 = v46;
      sub_10014A270(v50, 0x63655264756F6C63, 0xEB0000000064726FLL, v47);
      sub_1000057C4(v12, &qword_100383FB0, &unk_1002D6690);
      sub_1000057C4(v14, &qword_100383FB0, &unk_1002D6690);
      return v49;
    }
  }

  if (result != 2)
  {
    goto LABEL_13;
  }

  v20 = *v18;
  v21 = _swiftEmptyArrayStorage;
  *&v51 = _swiftEmptyArrayStorage;
  v22 = *(v20 + 16);
  if (!v22)
  {
LABEL_17:

    sub_100095820(&unk_100387750, &unk_1002D7630);
    v40 = swift_initStackObject();
    *(v40 + 16) = xmmword_1002D47B0;
    *(v40 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v40 + 32;
    *(v40 + 40) = v41;
    *(v40 + 72) = sub_100095820(&qword_100387928, &qword_1002DCC58);
    *(v40 + 48) = v21;
    inited = v40;
    goto LABEL_18;
  }

  v23 = 0;
  while (v23 < *(v20 + 16))
  {
    v24 = *(v20 + 32 + 8 * v23);
    swift_errorRetain();
    _convertErrorToNSError(_:)();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v25 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v23;
    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if (v22 == v23)
    {
      v21 = v51;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100149BD0(uint64_t a1)
{
  v2 = sub_10014AA34(&unk_100387A00);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100149C28(uint64_t a1)
{
  v2 = sub_10014AA34(&unk_100387A00);
  v3 = sub_10014AA34(&qword_1003879F8);
  v4 = sub_10009C574();

  return Error<>._code.getter(a1, v2, v3, v4);
}

uint64_t sub_100149CBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014AA34(&qword_1003879F8);
  v5 = sub_10009C574();

  return CustomNSError<>.errorCode.getter(a1, a2, v4, v5);
}

uint64_t sub_100149D3C@<X0>(uint64_t *a1@<X8>)
{
  result = KTError.rawValue.getter();
  *a1 = result;
  return result;
}

double sub_100149D64@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10000574C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10014A42C();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_10009C6AC((*(v12 + 56) + 32 * v9), a3);
    sub_10014A0C0(v9, v12);
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

uint64_t sub_100149E08(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100095820(&qword_100384A90, &unk_1002D7150);
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
        sub_10009C6AC(v25, v37);
      }

      else
      {
        sub_10009AA34(v25, v37);
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
      result = sub_10009C6AC(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_10014A0C0(uint64_t result, uint64_t a2)
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

_OWORD *sub_10014A270(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000574C(a2, a3);
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
      sub_10014A42C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100149E08(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10000574C(a2, a3);
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
    sub_10009A9E8(v23);

    return sub_10009C6AC(a1, v23);
  }

  else
  {
    sub_10014A3C0(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_10014A3C0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10009C6AC(a4, (a5[7] + 32 * a1));
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

void *sub_10014A42C()
{
  v1 = v0;
  sub_100095820(&qword_100384A90, &unk_1002D7150);
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
        sub_10009AA34(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10009C6AC(v25, (*(v4 + 56) + v22));
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

uint64_t type metadata accessor for KTError()
{
  result = qword_10039A740;
  if (!qword_10039A740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014A61C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KTError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014A680(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KTError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014A6E4(uint64_t a1)
{
  v2 = type metadata accessor for KTError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10014A744()
{
  result = qword_100387930;
  if (!qword_100387930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100387930);
  }

  return result;
}

void sub_10014A7DC()
{
  sub_10014A878();
  if (v0 <= 0x3F)
  {
    sub_10014A8DC();
    if (v1 <= 0x3F)
    {
      sub_10014A958();
      if (v2 <= 0x3F)
      {
        sub_10014AA04();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_10014A878()
{
  if (!qword_1003879A8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1003879A8);
    }
  }
}

void sub_10014A8DC()
{
  if (!qword_1003879B0)
  {
    sub_1000967DC(&qword_100383FB0, &unk_1002D6690);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1003879B0);
    }
  }
}

void sub_10014A958()
{
  if (!qword_1003879B8)
  {
    sub_10014A9A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1003879B8);
    }
  }
}

void sub_10014A9A0()
{
  if (!qword_1003879C0)
  {
    sub_1000967DC(&qword_100382DD0, &unk_1002D7500);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1003879C0);
    }
  }
}

void *sub_10014AA04()
{
  result = qword_1003879C8;
  if (!qword_1003879C8)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1003879C8);
  }

  return result;
}

uint64_t sub_10014AA34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for KTError();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10014AA84()
{
  swift_beginAccess();
  v0 = qword_100387A10;

  return v0;
}

uint64_t sub_10014AB50(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_100387A10 = a1;
  off_100387A18 = a2;
}

id sub_10014AC80(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC13transparencyd31KTFixupRemoveMacAppSupportFiles_deps] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id sub_10014ACD0(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC13transparencyd31KTFixupRemoveMacAppSupportFiles_deps] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for KTFixupRemoveMacAppSupportFiles();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_10014ADEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KTFixupRemoveMacAppSupportFiles();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10014AE30()
{
  v0 = type metadata accessor for Logger();
  sub_100098130(v0, qword_10039A758);
  sub_10009597C(v0, qword_10039A758);
  return Logger.init(transparencyCategory:)();
}

uint64_t KTStoreOptInOperation.storedRecords.getter()
{
  v1 = OBJC_IVAR____TtC13transparencyd21KTStoreOptInOperation_storedRecords;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t KTStoreOptInOperation.storedRecords.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd21KTStoreOptInOperation_storedRecords;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id KTStoreOptInOperation.__allocating_init(database:context:records:type:overwrite:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR____TtC13transparencyd21KTStoreOptInOperation_storedRecords] = &_swiftEmptyArrayStorage;
  *&v13[OBJC_IVAR____TtC13transparencyd21KTStoreOptInOperation_context] = a2;
  *&v13[OBJC_IVAR____TtC13transparencyd21KTStoreOptInOperation_records] = a3;
  *&v13[OBJC_IVAR____TtC13transparencyd21KTStoreOptInOperation_database] = a1;
  v13[OBJC_IVAR____TtC13transparencyd21KTStoreOptInOperation_overwrite] = a6;
  v14 = &v13[OBJC_IVAR____TtC13transparencyd21KTStoreOptInOperation_type];
  *v14 = a4;
  v14[1] = a5;
  v16.receiver = v13;
  v16.super_class = v6;
  return objc_msgSendSuper2(&v16, "init");
}

id KTStoreOptInOperation.init(database:context:records:type:overwrite:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *&v6[OBJC_IVAR____TtC13transparencyd21KTStoreOptInOperation_storedRecords] = _swiftEmptyArrayStorage;
  *&v6[OBJC_IVAR____TtC13transparencyd21KTStoreOptInOperation_context] = a2;
  *&v6[OBJC_IVAR____TtC13transparencyd21KTStoreOptInOperation_records] = a3;
  *&v6[OBJC_IVAR____TtC13transparencyd21KTStoreOptInOperation_database] = a1;
  v6[OBJC_IVAR____TtC13transparencyd21KTStoreOptInOperation_overwrite] = a6;
  v7 = &v6[OBJC_IVAR____TtC13transparencyd21KTStoreOptInOperation_type];
  *v7 = a4;
  v7[1] = a5;
  v9.receiver = v6;
  v9.super_class = type metadata accessor for KTStoreOptInOperation();
  return objc_msgSendSuper2(&v9, "init");
}

unint64_t sub_10014B308()
{
  result = qword_100385720;
  if (!qword_100385720)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100385720);
  }

  return result;
}

void sub_10014B354(uint64_t a1, void *a2, char a3)
{
  v5 = *(v3 + 16);
  if (a3)
  {
    v6 = _convertErrorToNSError(_:)();
    [v5 setError:v6];

    if (qword_10039A750 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10009597C(v7, qword_10039A758);
    v8 = static os_log_type_t.error.getter();
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    sub_10000F1C8(a2, 1);
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, oslog, v8, "KTStoreOptInOperation:perRecordSaveBlock: fail: %@", v9, 0xCu);
      sub_1000A4AD8(v10);
    }
  }

  else
  {
    v12 = *((swift_isaMask & *v5) + 0x90);
    v13 = a2;
    v14 = v12(v19);
    v16 = v15;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      osloga = *((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v14(v19, 0);
  }
}

void *KTDeleteOptInOperation.deletedRecordID.getter()
{
  v1 = OBJC_IVAR____TtC13transparencyd22KTDeleteOptInOperation_deletedRecordID;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void KTDeleteOptInOperation.deletedRecordID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd22KTDeleteOptInOperation_deletedRecordID;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id KTDeleteOptInOperation.__allocating_init(database:context:recordID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC13transparencyd22KTDeleteOptInOperation_deletedRecordID] = 0;
  *&v7[OBJC_IVAR____TtC13transparencyd22KTDeleteOptInOperation_context] = a2;
  *&v7[OBJC_IVAR____TtC13transparencyd22KTDeleteOptInOperation_recordID] = a3;
  *&v7[OBJC_IVAR____TtC13transparencyd22KTDeleteOptInOperation_database] = a1;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, "init");
}

id KTDeleteOptInOperation.init(database:context:recordID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC13transparencyd22KTDeleteOptInOperation_deletedRecordID] = 0;
  *&v3[OBJC_IVAR____TtC13transparencyd22KTDeleteOptInOperation_context] = a2;
  *&v3[OBJC_IVAR____TtC13transparencyd22KTDeleteOptInOperation_recordID] = a3;
  *&v3[OBJC_IVAR____TtC13transparencyd22KTDeleteOptInOperation_database] = a1;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for KTDeleteOptInOperation();
  return objc_msgSendSuper2(&v5, "init");
}

Swift::Void __swiftcall KTDeleteOptInOperation.groupStart()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(NSBlockOperation) init];
  [v0 dependOnBeforeGroupFinished:v2];
  sub_10014B308();
  sub_100095820(&qword_100384A50, &qword_1002D7650);
  v3 = swift_allocObject();
  v4 = v3;
  *(v3 + 16) = xmmword_1002D6360;
  v5 = *&v0[OBJC_IVAR____TtC13transparencyd22KTDeleteOptInOperation_recordID];
  *(v3 + 32) = v5;
  v6 = v5;
  v14.value._rawValue = _swiftEmptyArrayStorage;
  v14.is_nil = v4;
  v12 = CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v14, v15).super.super.super.super.isa;
  [(objc_class *)v12 setQualityOfService:25];
  v7 = String._bridgeToObjectiveC()();
  [(objc_class *)v12 setName:v7];

  *(swift_allocObject() + 16) = v1;
  v8 = v1;
  CKModifyRecordsOperation.perRecordDeleteBlock.setter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v2;
  v10 = v8;
  v11 = v2;
  CKModifyRecordsOperation.modifyRecordsResultBlock.setter();
  [*&v10[OBJC_IVAR____TtC13transparencyd22KTDeleteOptInOperation_database] addOperation:v12];
}

void sub_10014BADC(void *a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  if (a3)
  {
    v6 = _convertErrorToNSError(_:)();
    [v4 setError:v6];

    if (qword_10039A750 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10009597C(v7, qword_10039A758);
    v8 = static os_log_type_t.error.getter();
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    sub_1000A4FB0(a2, 1);
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, oslog, v8, "KTDeleteOptInOperation:perRecordSaveBlock: fail: %@", v9, 0xCu);
      sub_1000A4AD8(v10);
    }
  }

  else
  {
    v12 = *((swift_isaMask & *v4) + 0x78);
    v14 = a1;
    v12(a1);
  }
}

void sub_10014BCC0(uint64_t a1, char a2, const char *a3, const char *a4)
{
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  if (a2)
  {
    v9 = _convertErrorToNSError(_:)();
    [v6 setError:v9];

    if (qword_10039A750 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10009597C(v10, qword_10039A758);
    v11 = static os_log_type_t.error.getter();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    sub_1000A4FB0(a1, 1);
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v12, v11, a3, v13, 0xCu);
      sub_1000A4AD8(v14);

LABEL_10:
    }
  }

  else
  {
    if (qword_10039A750 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10009597C(v17, qword_10039A758);
    v12 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v12, v18, a4, v19, 2u);
      goto LABEL_10;
    }
  }

  v20 = [v6 operationQueue];
  [v20 addOperation:v5];
}

id sub_10014BFDC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10014C08C()
{
  v1 = OBJC_IVAR____TtC13transparencyd16KTOptIOValidator_optInRecords;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_10014C0D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd16KTOptIOValidator_optInRecords;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10014C19C()
{
  v1 = OBJC_IVAR____TtC13transparencyd16KTOptIOValidator_intendedState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10014C1E0(char a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd16KTOptIOValidator_intendedState;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10014C2DC(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for KTOptIOValidator.OptInResult() + 20);

  return sub_1000BECD4(a1, v3);
}

uint64_t sub_10014C368()
{
  v1 = (v0 + *(type metadata accessor for KTOptIOValidator.OptInResult() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_10014C3A8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for KTOptIOValidator.OptInResult() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_10014C438@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for KTOptIOValidator.OptInResult();
  v3 = *(v2 + 20);
  v4 = type metadata accessor for Date();
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = (a1 + *(v2 + 24));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_10014C4C8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2 & 1;
  v10 = type metadata accessor for KTOptIOValidator.OptInResult();
  result = sub_1000ABF3C(a3, a6 + *(v10 + 20));
  v12 = (a6 + *(v10 + 24));
  *v12 = a4;
  v12[1] = a5;
  return result;
}

id KTOptIOValidator.__allocating_init(optInRecords:uriToSMT:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC13transparencyd16KTOptIOValidator_intendedState;
  v5[OBJC_IVAR____TtC13transparencyd16KTOptIOValidator_intendedState] = 2;
  *&v5[OBJC_IVAR____TtC13transparencyd16KTOptIOValidator_optInRecords] = a1;
  *&v5[OBJC_IVAR____TtC13transparencyd16KTOptIOValidator_uriToSMT] = a2;
  swift_beginAccess();
  v5[v6] = 2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, "init");
}

id KTOptIOValidator.init(optInRecords:uriToSMT:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC13transparencyd16KTOptIOValidator_intendedState;
  v2[OBJC_IVAR____TtC13transparencyd16KTOptIOValidator_intendedState] = 2;
  *&v2[OBJC_IVAR____TtC13transparencyd16KTOptIOValidator_optInRecords] = a1;
  *&v2[OBJC_IVAR____TtC13transparencyd16KTOptIOValidator_uriToSMT] = a2;
  swift_beginAccess();
  v2[v3] = 2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for KTOptIOValidator();
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t sub_10014C7F4@<X0>(unint64_t a1@<X0>, char *a2@<X1>, char **a3@<X2>, unint64_t *a4@<X8>)
{
  v87 = a2;
  v88 = a3;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v10 = __chkstk_darwin(v7);
  v79 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v81 = &v78 - v13;
  v14 = __chkstk_darwin(v12);
  v78 = &v78 - v15;
  v16 = __chkstk_darwin(v14);
  v80 = &v78 - v17;
  __chkstk_darwin(v16);
  v86 = &v78 - v18;
  v19 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v78 - v21;
  v92 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    v23 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v91 = v7;
  v84 = a4;
  v83 = v8;
  if (v23)
  {
    v24 = 0;
    v89 = a1 & 0xFFFFFFFFFFFFFF8;
    v90 = a1 & 0xC000000000000001;
    v85 = (v8 + 32);
    v25 = (v8 + 56);
    do
    {
      if (v90)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v24 >= *(v89 + 16))
        {
          goto LABEL_60;
        }

        v26 = *(a1 + 8 * v24 + 32);
      }

      v27 = v26;
      v28 = v24 + 1;
      if (__OFADD__(v24, 1))
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
LABEL_65:
        v76 = v84;
        type metadata accessor for KTError();
        sub_100151914();
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        return sub_10015196C(v76);
      }

      v29 = [v26 smtTimestamp];
      if (v29)
      {
        v30 = v86;
        v31 = v29;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v32 = v91;
        (*v85)(v22, v30, v91);
        (*v25)(v22, 0, 1, v32);
        sub_1000BEC3C(v22);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v4 = a1;
        v33 = v92[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a1 = v4;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {

        (*v25)(v22, 1, 1, v91);
        sub_1000BEC3C(v22);
      }

      ++v24;
    }

    while (v28 != v23);
    v4 = v92;
    v8 = v83;
    v92 = _swiftEmptyArrayStorage;
    if (v4 < 0)
    {
      goto LABEL_67;
    }
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
    v92 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
LABEL_67:
      v34 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_19;
    }
  }

  if ((v4 & 0x4000000000000000) != 0)
  {
    goto LABEL_67;
  }

  v34 = *(v4 + 16);
LABEL_19:
  v35 = v84;
  v36 = v91;
  if (!v34)
  {
    goto LABEL_36;
  }

  v37 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v37 >= *(v4 + 16))
      {
        goto LABEL_62;
      }

      v39 = *(v4 + 8 * v37 + 32);
    }

    v40 = v39;
    v41 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      goto LABEL_61;
    }

    v42 = [v39 application];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    if (v43 == v87 && v45 == v88)
    {

LABEL_22:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v38 = v92[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      goto LABEL_23;
    }

    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v47)
    {
      goto LABEL_22;
    }

LABEL_23:
    ++v37;
  }

  while (v41 != v34);
  v8 = v83;
  v35 = v84;
  v36 = v91;
LABEL_36:

  v92 = sub_1000CD634(v48);
  v49 = v82;
  sub_10014F560(&v92);
  if (v49)
  {

    __break(1u);
    return result;
  }

  v89 = 0;

  v50 = v92;
  *v35 = 0;
  *(v35 + 8) = 1;
  v51 = type metadata accessor for KTOptIOValidator.OptInResult();
  v52 = *(v51 + 20);
  v53 = *(v8 + 7);
  v87 = v8 + 56;
  v85 = v52;
  v86 = v53;
  (v53)(v52 + v35, 1, 1, v36);
  v54 = (v35 + *(v51 + 24));
  *v54 = 0;
  v54[1] = 0;
  if ((v50 & 0x8000000000000000) != 0 || (v50 & 0x4000000000000000) != 0)
  {
    v55 = _CocoaArrayWrapper.endIndex.getter();
    if (!v55)
    {
    }

LABEL_40:
    v56 = 0;
    v88 = (v8 + 32);
    v57 = 1;
    for (i = 0; ; ++i)
    {
      while (1)
      {
        if ((v50 & 0xC000000000000001) != 0)
        {
          v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *(v50 + 16))
          {
            goto LABEL_64;
          }

          v59 = *(v50 + 8 * i + 32);
        }

        v4 = v59;
        v60 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_63;
        }

        v61 = [v59 state];
        if (v61)
        {
          break;
        }

        v90 = 0;
        if (!(v57 & 1 | (v56 != [v4 state])))
        {
          goto LABEL_56;
        }

        v71 = [v4 smtTimestamp];
        if (!v71)
        {
          goto LABEL_65;
        }

        v72 = v71;
        v73 = v79;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v83 = *v88;
        v74 = v73;
        v66 = v91;
        (v83)(v81, v74, v91);
        v68 = v84;
        v67 = v85;
        sub_1000BEC3C(v85 + v84);
        v69 = v67 + v68;
        v70 = v81;
LABEL_55:
        (v83)(v69, v70, v66);
        (v86)(v67 + v68, 0, 1, v66);
LABEL_56:

        v57 = 0;
        v56 = v90;
        v75 = v84;
        *v84 = v90;
        *(v75 + 8) = 0;
        if (v60 == v55)
        {
        }

        i = v60;
      }

      if (v61 == 1)
      {
        v90 = 1;
        if (!(v57 & 1 | (v56 != [v4 state])))
        {
          goto LABEL_56;
        }

        v62 = [v4 smtTimestamp];
        if (!v62)
        {
          goto LABEL_65;
        }

        v63 = v62;
        v64 = v78;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v83 = *v88;
        v65 = v64;
        v66 = v91;
        (v83)(v80, v65, v91);
        v68 = v84;
        v67 = v85;
        sub_1000BEC3C(v85 + v84);
        v69 = v67 + v68;
        v70 = v80;
        goto LABEL_55;
      }

      if (v60 == v55)
      {
      }
    }
  }

  v55 = *(v50 + 16);
  if (v55)
  {
    goto LABEL_40;
  }
}

uint64_t sub_10014CFC8(void **a1, void **a2)
{
  v4 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v39 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v39 - v18;
  __chkstk_darwin(v17);
  v21 = &v39 - v20;
  v22 = *a1;
  v23 = *a2;
  v24 = &stru_10036E000;
  v25 = [v22 smtTimestamp];
  v40 = v21;
  if (v25)
  {
    v26 = v25;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = v16;
    v28 = v8;
    v29 = v23;
    v30 = *(v12 + 32);
    v30(v10, v19, v11);
    v39 = *(v12 + 56);
    v39(v10, 0, 1, v11);
    v30(v21, v10, v11);
    v23 = v29;
    v8 = v28;
    v16 = v27;
    v24 = &stru_10036E000;
  }

  else
  {
    v39 = *(v12 + 56);
    v39(v10, 1, 1, v11);
    static Date.distantPast.getter();
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_1000BEC3C(v10);
    }
  }

  v31 = [v23 v24[201].attr];
  if (v31)
  {
    v32 = v31;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = *(v12 + 32);
    v33(v8, v19, v11);
    v39(v8, 0, 1, v11);
    v33(v16, v8, v11);
    v34 = v40;
  }

  else
  {
    v39(v8, 1, 1, v11);
    static Date.distantPast.getter();
    v35 = (*(v12 + 48))(v8, 1, v11);
    v34 = v40;
    if (v35 != 1)
    {
      sub_1000BEC3C(v8);
    }
  }

  v36 = static Date.< infix(_:_:)();
  v37 = *(v12 + 8);
  v37(v16, v11);
  v37(v34, v11);
  return v36 & 1;
}

void *sub_10014D37C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(a1 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = [v8 uri];
      if (v11)
      {
        v12 = v11;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        if (v13 == a2 && v15 == a3)
        {

          return v9;
        }

        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          return v9;
        }
      }

      if (v10 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return 0;
}

uint64_t KTOptIOValidator.evaluateLogData(application:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v190 = a2;
  v6 = type metadata accessor for Date();
  v183 = *(v6 - 8);
  v184 = v6;
  v7 = *(v183 + 64);
  v8 = __chkstk_darwin(v6);
  v175 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v174 = &v154 - v11;
  v12 = __chkstk_darwin(v10);
  v176 = &v154 - v13;
  v14 = __chkstk_darwin(v12);
  v177 = &v154 - v15;
  v16 = __chkstk_darwin(v14);
  v180 = &v154 - v17;
  v18 = __chkstk_darwin(v16);
  v178 = &v154 - v19;
  v20 = __chkstk_darwin(v18);
  v179 = &v154 - v21;
  __chkstk_darwin(v20);
  v23 = &v154 - v22;
  v24 = type metadata accessor for KTOptIOValidator.OptInResult();
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24);
  v28 = &v154 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v154 - v29;
  v31 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v182 = &v154 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v181 = &v154 - v36;
  v37 = __chkstk_darwin(v35);
  v39 = &v154 - v38;
  v40 = __chkstk_darwin(v37);
  v186 = &v154 - v41;
  v42 = *((swift_isaMask & *v2) + 0x68);
  v191 = (swift_isaMask & *v2) + 104;
  v192 = v42;
  v43 = (v42)(v40);
  if (!(v43 >> 62))
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v44)
    {
      goto LABEL_3;
    }

LABEL_15:
    v168 = v4;
    v49 = v183;
    v51 = *(v183 + 56);
    v164 = v183 + 56;
    v165 = v51;
    v51(v186, 1, 1, v184);
    v172 = 0;
LABEL_16:
    v173 = _swiftEmptyArrayStorage;
    v171 = sub_100151A2C(_swiftEmptyArrayStorage);
    v52 = *(v5 + OBJC_IVAR____TtC13transparencyd16KTOptIOValidator_uriToSMT);
    v53 = v52 + 64;
    v54 = 1 << *(v52 + 32);
    v55 = -1;
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    v56 = v55 & *(v52 + 64);
    v57 = (v54 + 63) >> 6;
    v170 = (v49 + 48);
    v166 = (v49 + 32);
    v167 = (v49 + 8);
    v163 = (v49 + 16);
    v162 = v49 + 40;
    v189 = v52;

    v169 = 0;
    v58 = 0;
    v59 = v192;
    v187 = v57;
    v188 = v5;
    while (1)
    {
      v60 = v58;
      if (!v56)
      {
        goto LABEL_21;
      }

      while (1)
      {
        v58 = v60;
LABEL_24:
        v61 = __clz(__rbit64(v56)) | (v58 << 6);
        v62 = (*(v189 + 48) + 16 * v61);
        v64 = *v62;
        v63 = v62[1];
        v65 = *(*(v189 + 56) + 8 * v61);

        v59(v66);
        v67 = *((swift_isaMask & *v5) + 0xB0);
        v185 = v64;
        v190 = v63;
        v68 = v67();

        v69 = v65 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v56 &= v56 - 1;
        if (v69)
        {
          break;
        }

        v60 = v58;
        v57 = v187;
        v5 = v188;
        v59 = v192;
        if (!v56)
        {
          while (1)
          {
LABEL_21:
            v58 = v60 + 1;
            if (__OFADD__(v60, 1))
            {
              __break(1u);
              goto LABEL_90;
            }

            if (v58 >= v57)
            {
              break;
            }

            v56 = *(v53 + 8 * v58);
            ++v60;
            if (v56)
            {
              goto LABEL_24;
            }
          }

          v144 = v173;
          if (v173[2])
          {

            v28 = type metadata accessor for KTError();
            sub_100151914();
            swift_allocError();
            *v145 = v144;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            goto LABEL_83;
          }

          v147 = v182;
          sub_1000AB050(v186, v182, &qword_100383FB0, &unk_1002D6690);
          v148 = v184;
          if ((*v170)(v147, 1, v184) == 1)
          {
            isa = 0;
          }

          else
          {
            isa = Date._bridgeToObjectiveC()().super.isa;
            (*v167)(v147, v148);
          }

          v150 = v169;
          v151 = objc_allocWithZone(KTOptIOValidatorResult);
          v152 = v172;
          v28 = [v151 initWithState:v172 timestamp:isa];

          (*((swift_isaMask & *v5) + 0xC8))(v152, v28);
          v153 = Dictionary._bridgeToObjectiveC()().super.isa;

          [v28 setUriNeedsOptInChange:v153];

          [v28 setUsedIntendedState:v150 & 1];
          sub_1000BEC3C(v186);
          return v28;
        }
      }

      v70 = v69 - 1;
      if (__OFSUB__(v69, 1))
      {
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      if ((v65 & 0xC000000000000001) != 0)
      {
        v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v70 & 0x8000000000000000) != 0)
        {
          goto LABEL_91;
        }

        if (v70 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_92;
        }

        v71 = *(v65 + 8 * v70 + 32);
      }

      v72 = v172 == 1;
      v161 = v71;
      if (v72 != [v71 optIn])
      {
        v73 = (*((swift_isaMask & *v188) + 0x80))();
        if (v73 == 2 || (v74 = v73, (([v161 optIn] ^ v73) & 1) != 0))
        {

          type metadata accessor for KTError();
          sub_100151914();
          v75 = swift_allocError();
          v76 = v190;
          *v77 = v185;
          v77[1] = v76;
          swift_storeEnumTagMultiPayload();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v173 = sub_1001511E0(0, v173[2] + 1, 1, v173);
          }

          v78 = v161;
          v80 = v173[2];
          v79 = v173[3];
          if (v80 >= v79 >> 1)
          {
            v143 = sub_1001511E0((v79 > 1), v80 + 1, 1, v173);
            v78 = v161;
            v173 = v143;
          }

          v81 = v173;
          v173[2] = v80 + 1;
          v81[v80 + 4] = v75;
          goto LABEL_43;
        }

        v172 = v74 & 1;
        v169 = 1;
      }

      v159 = v65 & 0xC000000000000001;
      if (v68)
      {
        v82 = v68;
        v83 = [v82 smtTimestamp];
        v155 = v82;

        if (v83)
        {
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v157 = v65 & 0xFFFFFFFFFFFFFF8;
          v156 = v65 + 32;
          v84 = v181;
          while (1)
          {
            v85 = __OFSUB__(v69--, 1);
            if (v85)
            {
              goto LABEL_93;
            }

            if (v159)
            {
              v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if ((v69 & 0x8000000000000000) != 0)
              {
                goto LABEL_94;
              }

              if (v69 >= *(v157 + 16))
              {
                goto LABEL_95;
              }

              v86 = *(v156 + 8 * v69);
            }

            v87 = v86;
            sub_1000AB050(v186, v84, &qword_100383FB0, &unk_1002D6690);
            v88 = v184;
            v89 = (*v170)(v84, 1, v184);
            v160 = v87;
            if (v89 == 1)
            {
              sub_1000BEC3C(v84);
            }

            else
            {
              v90 = v178;
              (*v166)(v178, v84, v88);
              v91 = [v87 smtTimestamp];
              v92 = v180;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              LODWORD(v158) = static Date.> infix(_:_:)();
              v93 = *v167;
              v94 = v92;
              v95 = v184;
              (*v167)(v94, v184);
              v93(v90, v95);
              v87 = v160;
              if (v158)
              {
                v93(v179, v184);

                goto LABEL_43;
              }
            }

            v96 = v172 == 1;
            if (v96 != [v87 optIn])
            {
              v97 = [v87 smtTimestamp];
              v98 = v180;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v99 = v177;
              Date.addingTimeInterval(_:)();
              v100 = v98;
              LODWORD(v158) = static Date.> infix(_:_:)();
              v101 = *v167;
              v102 = v99;
              v103 = v184;
              (*v167)(v102, v184);
              v104 = v103;
              v87 = v160;
              v101(v100, v104);
              if (v158)
              {
                v158 = v101;

                type metadata accessor for KTError();
                sub_100151914();
                v159 = swift_allocError();
                v108 = v107;
                v109 = sub_100095820(&qword_100387920, &qword_1002DCC50);
                v110 = *(v109 + 48);
                v111 = *(v109 + 64);
                v112 = v190;
                *v108 = v185;
                *(v108 + 1) = v112;
                v113 = [v87 smtTimestamp];
                v114 = v176;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                v115 = v184;
                (*v166)(&v108[v110], v114, v184);
                v116 = &v108[v110];
                v117 = v165;
                v165(v116, 0, 1, v115);
                (*v163)(&v108[v111], v179, v115);
                v117(&v108[v111], 0, 1, v115);
                swift_storeEnumTagMultiPayload();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v173 = sub_1001511E0(0, v173[2] + 1, 1, v173);
                }

                v5 = v188;
                v118 = v155;
                v119 = v158;
                v121 = v173[2];
                v120 = v173[3];
                if (v121 >= v120 >> 1)
                {
                  v173 = sub_1001511E0((v120 > 1), v121 + 1, 1, v173);
                }

                v119(v179, v184);
                v122 = v173;
                v173[2] = v121 + 1;
                v122[v121 + 4] = v159;
                goto LABEL_44;
              }
            }

            v105 = v172 == 1;
            v106 = [v87 optIn];

            v5 = v188;
            if (v105 == v106)
            {
              v84 = v181;
              if (v69)
              {
                continue;
              }
            }

            (*v167)(v179, v184);

            goto LABEL_44;
          }
        }
      }

      else
      {
        v155 = 0;
      }

      v123 = [v161 smtTimestamp];
      v124 = v174;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v125 = *v166;
      (*v166)(v175, v124, v184);
      v126 = v171;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v193 = v126;
      v129 = sub_10000574C(v185, v190);
      v130 = *(v126 + 16);
      v131 = (v128 & 1) == 0;
      v132 = v130 + v131;
      if (__OFADD__(v130, v131))
      {
        goto LABEL_96;
      }

      v133 = v128;
      if (*(v126 + 24) >= v132)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100151694();
        }
      }

      else
      {
        sub_100151314(v132, isUniquelyReferenced_nonNull_native);
        v134 = sub_10000574C(v185, v190);
        if ((v133 & 1) != (v135 & 1))
        {
          goto LABEL_98;
        }

        v129 = v134;
      }

      v136 = v155;
      if (v133)
      {

        v171 = v193;
        (*(v183 + 40))(v193[7] + *(v183 + 72) * v129, v175, v184);
      }

      else
      {
        v137 = v193;
        v193[(v129 >> 6) + 8] |= 1 << v129;
        v138 = (v137[6] + 16 * v129);
        v139 = v184;
        v140 = v190;
        *v138 = v185;
        v138[1] = v140;
        v125((v137[7] + *(v183 + 72) * v129), v175, v139);

        v141 = v137[2];
        v85 = __OFADD__(v141, 1);
        v142 = v141 + 1;
        if (v85)
        {
          goto LABEL_97;
        }

        v171 = v137;
        v137[2] = v142;
      }

LABEL_43:
      v5 = v188;
LABEL_44:
      v59 = v192;
      v57 = v187;
    }
  }

  v188 = v2;
  v50 = _CocoaArrayWrapper.endIndex.getter();
  v4 = v3;
  v5 = v188;

  if (!v50)
  {
    goto LABEL_15;
  }

LABEL_3:
  v192(v45);
  (*((swift_isaMask & *v5) + 0xA8))();

  if (!v4)
  {
    sub_1001519C8(v28, v30);
    if ((v30[8] & 1) != 0 || (v172 = *v30, v172 > 1))
    {
      v28 = type metadata accessor for KTError();
      sub_100151914();
      swift_allocError();
      goto LABEL_9;
    }

    sub_1000AB050(&v30[*(v24 + 20)], v39, &qword_100383FB0, &unk_1002D6690);
    v47 = v183;
    v46 = v184;
    if ((*(v183 + 48))(v39, 1, v184) == 1)
    {
      sub_1000BEC3C(v39);
      v28 = type metadata accessor for KTError();
      sub_100151914();
      swift_allocError();
LABEL_9:
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_10015196C(v30);
      return v28;
    }

    (*(v47 + 32))(v23, v39, v46);
    v48 = v186;
    (*(v47 + 16))(v186, v23, v46);
    v165 = *(v47 + 56);
    v165(v48, 0, 1, v46);
    v49 = v47;
    if (v172 == 1 && !*(*(v5 + OBJC_IVAR____TtC13transparencyd16KTOptIOValidator_uriToSMT) + 16))
    {
      v28 = type metadata accessor for KTError();
      sub_100151914();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v47 + 8))(v23, v46);
      sub_10015196C(v30);
LABEL_83:
      sub_1000BEC3C(v186);
      return v28;
    }

    v164 = v47 + 56;
    v168 = 0;
    (*(v47 + 8))(v23, v46);
    sub_10015196C(v30);
    goto LABEL_16;
  }

  return v28;
}

int *KTOptIOValidator.evaluateCloudData(application:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a1;
  v31 = a2;
  v4 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for Date();
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for KTOptIOValidator.OptInResult();
  v13 = *(*(v12 - 1) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v2) + 0x68))(v14);
  v17 = v32;
  (*((swift_isaMask & *v2) + 0xA8))();

  if (!v17)
  {
    v18 = v7;
    v19 = v29;
    if ((v16[8] & 1) == 0)
    {
      v20 = v11;
      v21 = *v16;
      v22 = &v16[v12[5]];
      v12 = v18;
      sub_1000AB050(v22, v18, &qword_100383FB0, &unk_1002D6690);
      v23 = v8;
      if ((*(v19 + 48))(v12, 1, v8) != 1)
      {
        v25 = v20;
        (*(v19 + 32))(v20, v12, v23);
        v26 = objc_allocWithZone(KTOptIOValidatorResult);
        isa = Date._bridgeToObjectiveC()().super.isa;
        v12 = [v26 initWithState:v21 timestamp:isa];

        (*((swift_isaMask & *v3) + 0xC8))(v21, v12);
        (*(v19 + 8))(v25, v23);
        sub_10015196C(v16);
        return v12;
      }

      sub_1000BEC3C(v12);
    }

    type metadata accessor for KTError();
    sub_100151914();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_10015196C(v16);
  }

  return v12;
}

id sub_10014EBF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = a1;
  v11 = a5(v7, v9);

  return v11;
}

void sub_10014ECCC(id a1, void *a2)
{
  v4 = (*((swift_isaMask & *v2) + 0x68))();
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    v8 = v5 & 0xC000000000000001;
    while (1)
    {
      if (v8)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ([v9 state] == a1)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v12 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v8 = v5 & 0xC000000000000001;
      }

      else
      {
      }

      ++v7;
      if (v11 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
LABEL_38:
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (!v13)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v13 = _swiftEmptyArrayStorage[2];
    if (!v13)
    {
      goto LABEL_39;
    }
  }

  v14 = 0;
  v15 = _swiftEmptyArrayStorage;
  do
  {
    v16 = v14;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v16 >= _swiftEmptyArrayStorage[2])
        {
          goto LABEL_37;
        }

        v17 = _swiftEmptyArrayStorage[v16 + 4];
      }

      v18 = v17;
      v14 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v19 = [v17 uri];
      if (v19)
      {
        break;
      }

      ++v16;
      if (v14 == v13)
      {
        goto LABEL_39;
      }
    }

    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1000B3938(0, *(v15 + 2) + 1, 1, v15);
    }

    v25 = *(v15 + 2);
    v24 = *(v15 + 3);
    if (v25 >= v24 >> 1)
    {
      v15 = sub_1000B3938((v24 > 1), v25 + 1, 1, v15);
    }

    *(v15 + 2) = v25 + 1;
    v26 = &v15[16 * v25];
    *(v26 + 4) = v21;
    *(v26 + 5) = v23;
  }

  while (v14 != v13);
LABEL_39:

  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setUris:isa];
}

char *KTOptIOValidator.urisNeedOptIn(application:)()
{
  v3 = (*((swift_isaMask & *v0) + 0xC0))();
  if (!v1)
  {
    v28 = v3;
    v4 = &selRef_started;
    v2 = _swiftEmptyArrayStorage;
    if ([v3 state] == 1)
    {
LABEL_43:

      return v2;
    }

    v5 = (*((swift_isaMask & *v0) + 0x68))();
    v6 = v5;
    if (v5 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v8 = 0;
      v9 = v6 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v9 + 16))
          {
            goto LABEL_17;
          }

          v12 = *(v6 + 8 * v8 + 32);
        }

        v13 = v12;
        v14 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if ([v12 v4[1]])
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v10 = v4;
          v11 = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v4 = v10;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v9 = v6 & 0xFFFFFFFFFFFFFF8;
        }

        ++v8;
        if (v14 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_19:

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
    {
LABEL_40:
      v15 = _CocoaArrayWrapper.endIndex.getter();
      if (v15)
      {
LABEL_22:
        v16 = 0;
        v2 = _swiftEmptyArrayStorage;
        do
        {
          v17 = v16;
          while (1)
          {
            if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
            {
              v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v17 >= _swiftEmptyArrayStorage[2])
              {
                goto LABEL_39;
              }

              v18 = _swiftEmptyArrayStorage[v17 + 4];
            }

            v19 = v18;
            v16 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              __break(1u);
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

            v20 = [v18 uri];
            if (v20)
            {
              break;
            }

            ++v17;
            if (v16 == v15)
            {
              goto LABEL_42;
            }
          }

          v21 = v20;
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v23;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1000B3938(0, *(v2 + 2) + 1, 1, v2);
          }

          v25 = *(v2 + 2);
          v24 = *(v2 + 3);
          if (v25 >= v24 >> 1)
          {
            v2 = sub_1000B3938((v24 > 1), v25 + 1, 1, v2);
          }

          *(v2 + 2) = v25 + 1;
          v26 = &v2[16 * v25];
          *(v26 + 4) = v22;
          *(v26 + 5) = v29;
        }

        while (v16 != v15);
        goto LABEL_42;
      }
    }

    else
    {
      v15 = _swiftEmptyArrayStorage[2];
      if (v15)
      {
        goto LABEL_22;
      }
    }

    v2 = _swiftEmptyArrayStorage;
LABEL_42:

    goto LABEL_43;
  }

  return v2;
}

id KTOptIOValidator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KTOptIOValidator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for KTOptIOValidator.OptInResult()
{
  result = qword_10039A770;
  if (!qword_10039A770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014F560(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000CD87C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10014F5DC(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_10014F5DC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100151DDC();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_10014FB58(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10014F6E0(0, v2, 1, a1);
  }
}

void sub_10014F6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v57 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v48 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v62 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v59 = &v48 - v19;
  __chkstk_darwin(v18);
  v53 = &v48 - v21;
  v49 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v58 = (v20 + 32);
    v61 = (v20 + 56);
    v54 = (v20 + 48);
    v55 = (v20 + 8);
    v56 = v22;
    v23 = v22 + 8 * a3 - 8;
    v24 = a1 - a3;
LABEL_5:
    v51 = v23;
    v52 = a3;
    v25 = *(v56 + 8 * a3);
    v50 = v24;
    v26 = v53;
    while (1)
    {
      v27 = *v23;
      v28 = v25;
      v63 = v27;
      v60 = v28;
      v29 = [v28 smtTimestamp];
      if (v29)
      {
        v30 = v29;
        v31 = v59;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v32 = *v58;
        (*v58)(v13, v31, v14);
        v33 = *v61;
        (*v61)(v13, 0, 1, v14);
        v32(v26, v13, v14);
      }

      else
      {
        v33 = *v61;
        (*v61)(v13, 1, 1, v14);
        static Date.distantPast.getter();
        if ((*v54)(v13, 1, v14) != 1)
        {
          sub_1000BEC3C(v13);
        }
      }

      v34 = [v63 smtTimestamp];
      if (v34)
      {
        v35 = v59;
        v36 = v34;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = *v58;
        v38 = v13;
        v39 = v57;
        v40 = v35;
        v26 = v53;
        (*v58)(v57, v40, v14);
        v33(v39, 0, 1, v14);
        v41 = v39;
        v13 = v38;
        v37(v62, v41, v14);
      }

      else
      {
        v42 = v57;
        v33(v57, 1, 1, v14);
        static Date.distantPast.getter();
        if ((*v54)(v42, 1, v14) != 1)
        {
          sub_1000BEC3C(v57);
        }
      }

      v43 = v62;
      v44 = static Date.< infix(_:_:)();
      v45 = *v55;
      (*v55)(v43, v14);
      v45(v26, v14);

      if ((v44 & 1) == 0)
      {
LABEL_4:
        a3 = v52 + 1;
        v23 = v51 + 8;
        v24 = v50 - 1;
        if (v52 + 1 == v49)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v56)
      {
        break;
      }

      v46 = *v23;
      v25 = *(v23 + 8);
      *v23 = v25;
      *(v23 + 8) = v46;
      v23 -= 8;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10014FB58(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v149 = a1;
  v8 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v166 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v163 = &v145 - v13;
  v14 = __chkstk_darwin(v12);
  v156 = &v145 - v15;
  __chkstk_darwin(v14);
  v155 = &v145 - v16;
  v17 = type metadata accessor for Date();
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v20 = __chkstk_darwin(v19);
  v170 = &v145 - v21;
  v22 = __chkstk_darwin(v20);
  v154 = &v145 - v23;
  v24 = __chkstk_darwin(v22);
  v168 = &v145 - v25;
  __chkstk_darwin(v24);
  v159 = &v145 - v28;
  v157 = a3;
  v29 = *(a3 + 8);
  if (v29 < 1)
  {
    v31 = _swiftEmptyArrayStorage;
LABEL_108:
    a3 = *v149;
    if (!*v149)
    {
      goto LABEL_149;
    }

    a4 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_143;
    }

    v140 = a4;
LABEL_111:
    v174 = v140;
    a4 = *(v140 + 2);
    if (a4 >= 2)
    {
      while (*v157)
      {
        v141 = *&v140[16 * a4];
        v142 = v140;
        v143 = *&v140[16 * a4 + 24];
        sub_10015089C((*v157 + 8 * v141), (*v157 + 8 * *&v140[16 * a4 + 16]), (*v157 + 8 * v143), a3);
        if (v5)
        {
          goto LABEL_119;
        }

        if (v143 < v141)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v142 = sub_1000CD004(v142);
        }

        if (a4 - 2 >= *(v142 + 2))
        {
          goto LABEL_137;
        }

        v144 = &v142[16 * a4];
        *v144 = v141;
        *(v144 + 1) = v143;
        v174 = v142;
        sub_1000CCF78(a4 - 1);
        v140 = v174;
        a4 = *(v174 + 2);
        if (a4 <= 1)
        {
          goto LABEL_119;
        }
      }

      goto LABEL_147;
    }

LABEL_119:

    return;
  }

  v146 = a4;
  v30 = 0;
  v167 = (v26 + 32);
  v171 = (v26 + 56);
  v160 = (v26 + 48);
  v165 = (v26 + 8);
  v31 = _swiftEmptyArrayStorage;
  v161 = v17;
  v162 = v27;
  while (1)
  {
    v32 = v30;
    v33 = v30 + 1;
    if (v30 + 1 < v29)
    {
      v148 = v31;
      a4 = *v157;
      v34 = *(*v157 + 8 * v33);
      v172 = *(*v157 + 8 * v30);
      v35 = v172;
      v173 = v34;
      v36 = v34;
      a3 = v35;
      LODWORD(v164) = sub_10014CFC8(&v173, &v172);
      if (v5)
      {

        return;
      }

      v37 = v30 + 2;
      v147 = v30;
      v152 = 8 * v30;
      v38 = (a4 + 8 * v30 + 16);
      v153 = v29;
      while (v29 != v37)
      {
        v158 = v5;
        v46 = *(v38 - 1);
        v47 = *v38;
        v48 = v46;
        v169 = v47;
        v49 = [v47 smtTimestamp];
        if (v49)
        {
          v50 = v49;
          v51 = v168;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v52 = *v167;
          v53 = v155;
          (*v167)(v155, v51, v17);
          v54 = *v171;
          (*v171)(v53, 0, 1, v17);
          (v52)(v159, v53, v17);
        }

        else
        {
          v54 = *v171;
          v55 = v155;
          (*v171)(v155, 1, 1, v17);
          static Date.distantPast.getter();
          if ((*v160)(v55, 1, v17) != 1)
          {
            sub_1000BEC3C(v55);
          }
        }

        v56 = [v48 smtTimestamp];
        if (v56)
        {
          v39 = v168;
          v40 = v56;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v41 = *v167;
          v42 = v156;
          (*v167)(v156, v39, v17);
          v54(v42, 0, 1, v17);
          v43 = v154;
          (v41)(v154, v42, v17);
        }

        else
        {
          v57 = v156;
          v54(v156, 1, 1, v17);
          v43 = v154;
          static Date.distantPast.getter();
          if ((*v160)(v57, 1, v17) != 1)
          {
            sub_1000BEC3C(v156);
          }
        }

        v44 = v159;
        a4 = static Date.< infix(_:_:)();
        a3 = v165;
        v45 = *v165;
        (*v165)(v43, v17);
        v45(v44, v17);

        ++v37;
        ++v38;
        v5 = v158;
        v29 = v153;
        if ((v164 ^ a4))
        {
          v29 = v37 - 1;
          break;
        }
      }

      v31 = v148;
      v32 = v147;
      v58 = v152;
      if (v164)
      {
        if (v29 < v147)
        {
          goto LABEL_142;
        }

        if (v147 < v29)
        {
          v59 = 8 * v29 - 8;
          v60 = v29;
          v61 = v147;
          do
          {
            if (v61 != --v60)
            {
              v62 = *v157;
              if (!*v157)
              {
                goto LABEL_146;
              }

              v63 = *(v62 + v58);
              *(v62 + v58) = *(v62 + v59);
              *(v62 + v59) = v63;
            }

            ++v61;
            v59 -= 8;
            v58 += 8;
          }

          while (v61 < v60);
        }
      }

      v33 = v29;
    }

    v64 = v157[1];
    if (v33 >= v64)
    {
      v30 = v33;
      if (v33 < v32)
      {
        goto LABEL_138;
      }

      goto LABEL_38;
    }

    v65 = v33;
    v83 = __OFSUB__(v33, v32);
    v66 = v33 - v32;
    if (v83)
    {
      goto LABEL_139;
    }

    if (v66 < v146)
    {
      v67 = v32 + v146;
      if (__OFADD__(v32, v146))
      {
        goto LABEL_140;
      }

      if (v67 >= v64)
      {
        v67 = v157[1];
      }

      if (v67 < v32)
      {
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        v140 = sub_1000CD004(a4);
        goto LABEL_111;
      }

      if (v65 != v67)
      {
        break;
      }
    }

    v30 = v65;
    if (v65 < v32)
    {
      goto LABEL_138;
    }

LABEL_38:
    v68 = v31;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v31 = v68;
    }

    else
    {
      v31 = sub_1000CB0CC(0, *(v68 + 2) + 1, 1, v68);
    }

    a3 = *(v31 + 2);
    v69 = *(v31 + 3);
    v70 = a3 + 1;
    if (a3 >= v69 >> 1)
    {
      v31 = sub_1000CB0CC((v69 > 1), a3 + 1, 1, v31);
    }

    *(v31 + 2) = v70;
    v71 = &v31[16 * a3];
    *(v71 + 4) = v32;
    *(v71 + 5) = v30;
    v72 = *v149;
    if (!*v149)
    {
      goto LABEL_148;
    }

    if (a3)
    {
      while (1)
      {
        a3 = v70 - 1;
        if (v70 >= 4)
        {
          break;
        }

        if (v70 == 3)
        {
          v73 = *(v31 + 4);
          v74 = *(v31 + 5);
          v83 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          v76 = v83;
LABEL_57:
          if (v76)
          {
            goto LABEL_127;
          }

          v89 = &v31[16 * v70];
          v91 = *v89;
          v90 = *(v89 + 1);
          v92 = __OFSUB__(v90, v91);
          v93 = v90 - v91;
          v94 = v92;
          if (v92)
          {
            goto LABEL_130;
          }

          v95 = &v31[16 * a3 + 32];
          v97 = *v95;
          v96 = *(v95 + 1);
          v83 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v83)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v93, v98))
          {
            goto LABEL_134;
          }

          if (v93 + v98 >= v75)
          {
            if (v75 < v98)
            {
              a3 = v70 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v99 = &v31[16 * v70];
        v101 = *v99;
        v100 = *(v99 + 1);
        v83 = __OFSUB__(v100, v101);
        v93 = v100 - v101;
        v94 = v83;
LABEL_71:
        if (v94)
        {
          goto LABEL_129;
        }

        v102 = &v31[16 * a3];
        v104 = *(v102 + 4);
        v103 = *(v102 + 5);
        v83 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v83)
        {
          goto LABEL_132;
        }

        if (v105 < v93)
        {
          goto LABEL_3;
        }

LABEL_78:
        a4 = a3 - 1;
        if (a3 - 1 >= v70)
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v157)
        {
          goto LABEL_145;
        }

        v110 = v31;
        v111 = *&v31[16 * a4 + 32];
        v112 = *&v31[16 * a3 + 40];
        sub_10015089C((*v157 + 8 * v111), (*v157 + 8 * *&v31[16 * a3 + 32]), (*v157 + 8 * v112), v72);
        if (v5)
        {
          goto LABEL_119;
        }

        if (v112 < v111)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_1000CD004(v110);
        }

        if (a4 >= *(v110 + 2))
        {
          goto LABEL_124;
        }

        v113 = &v110[16 * a4];
        *(v113 + 4) = v111;
        *(v113 + 5) = v112;
        v174 = v110;
        a4 = &v174;
        sub_1000CCF78(a3);
        v31 = v174;
        v70 = *(v174 + 2);
        if (v70 <= 1)
        {
          goto LABEL_3;
        }
      }

      v77 = &v31[16 * v70 + 32];
      v78 = *(v77 - 64);
      v79 = *(v77 - 56);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_125;
      }

      v82 = *(v77 - 48);
      v81 = *(v77 - 40);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_126;
      }

      v84 = &v31[16 * v70];
      v86 = *v84;
      v85 = *(v84 + 1);
      v83 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v83)
      {
        goto LABEL_128;
      }

      v83 = __OFADD__(v75, v87);
      v88 = v75 + v87;
      if (v83)
      {
        goto LABEL_131;
      }

      if (v88 >= v80)
      {
        v106 = &v31[16 * a3 + 32];
        v108 = *v106;
        v107 = *(v106 + 1);
        v83 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v83)
        {
          goto LABEL_135;
        }

        if (v75 < v109)
        {
          a3 = v70 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v29 = v157[1];
    if (v30 >= v29)
    {
      goto LABEL_108;
    }
  }

  v148 = v31;
  v158 = v5;
  v164 = *v157;
  v114 = v164 + 8 * v65 - 8;
  v147 = v32;
  v115 = v32 - v65;
  v150 = v67;
LABEL_89:
  v153 = v65;
  v116 = *(v164 + 8 * v65);
  v151 = v115;
  v152 = v114;
  while (1)
  {
    v117 = *v114;
    v118 = v116;
    v119 = v117;
    v169 = v118;
    v120 = [v118 smtTimestamp];
    if (v120)
    {
      v121 = v168;
      v122 = v120;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v123 = *v167;
      v124 = v163;
      (*v167)(v163, v121, v17);
      v125 = *v171;
      (*v171)(v124, 0, 1, v17);
      (v123)(v170, v124, v17);
    }

    else
    {
      v125 = *v171;
      v126 = v163;
      (*v171)(v163, 1, 1, v17);
      static Date.distantPast.getter();
      if ((*v160)(v126, 1, v17) != 1)
      {
        sub_1000BEC3C(v126);
      }
    }

    v127 = [v119 smtTimestamp];
    if (v127)
    {
      v128 = v168;
      v129 = v127;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v130 = v166;
      v131 = *v167;
      v132 = v128;
      v133 = v161;
      (*v167)(v166, v132, v161);
      v125(v130, 0, 1, v133);
      v134 = v162;
      v131();
      v17 = v133;
    }

    else
    {
      v135 = v166;
      v17 = v161;
      v125(v166, 1, 1, v161);
      v134 = v162;
      static Date.distantPast.getter();
      if ((*v160)(v135, 1, v17) != 1)
      {
        sub_1000BEC3C(v166);
      }
    }

    v136 = v170;
    a4 = static Date.< infix(_:_:)();
    a3 = v165;
    v137 = *v165;
    (*v165)(v134, v17);
    v137(v136, v17);

    if ((a4 & 1) == 0)
    {
LABEL_88:
      v65 = v153 + 1;
      v114 = v152 + 8;
      v115 = v151 - 1;
      if (v153 + 1 != v150)
      {
        goto LABEL_89;
      }

      v30 = v150;
      v5 = v158;
      v31 = v148;
      v32 = v147;
      if (v150 < v147)
      {
        goto LABEL_138;
      }

      goto LABEL_38;
    }

    if (!v164)
    {
      break;
    }

    v138 = *v114;
    v116 = *(v114 + 8);
    *v114 = v116;
    *(v114 + 8) = v138;
    v114 -= 8;
    if (__CFADD__(v115++, 1))
    {
      goto LABEL_88;
    }
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
}

uint64_t sub_10015089C(void **a1, void **a2, void **a3, void **a4)
{
  v8 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v94 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v92 = &v87 - v13;
  v14 = __chkstk_darwin(v12);
  v95 = &v87 - v15;
  __chkstk_darwin(v14);
  v93 = &v87 - v16;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v89 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v98 = &v87 - v23;
  v24 = __chkstk_darwin(v22);
  v91 = (&v87 - v25);
  v26 = __chkstk_darwin(v24);
  v99 = &v87 - v27;
  __chkstk_darwin(v26);
  v97 = &v87 - v28;
  v29 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v29 = a2 - a1;
  }

  v30 = v29 >> 3;
  v102 = a3;
  v31 = a3 - a2;
  v32 = v31 / 8;
  if (v29 >> 3 >= v31 / 8)
  {
    v87 = a1;
    if (a4 != a2 || &a2[v32] <= a4)
    {
      memmove(a4, a2, 8 * v32);
    }

    v101 = &a4[v32];
    if (v31 >= 8 && a2 > v87)
    {
      v93 = (v18 + 32);
      v97 = (v18 + 56);
      v88 = (v18 + 48);
      v90 = (v18 + 8);
      v59 = &stru_10036E000;
      v100 = a4;
      v60 = v89;
LABEL_32:
      v96 = a2;
      v61 = a2 - 1;
      --v102;
      v62 = v101;
      v91 = v61;
      do
      {
        v63 = *--v62;
        v64 = *v61;
        v65 = v63;
        v66 = v64;
        v67 = [v65 v59[201].attr];
        v95 = v65;
        if (v67)
        {
          v68 = v99;
          v69 = v67;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v70 = v92;
          v71 = *v93;
          (*v93)(v92, v68, v17);
          v72 = *v97;
          (*v97)(v70, 0, 1, v17);
          v71(v98, v70, v17);
        }

        else
        {
          v72 = *v97;
          v73 = v92;
          (*v97)(v92, 1, 1, v17);
          static Date.distantPast.getter();
          if ((*v88)(v73, 1, v17) != 1)
          {
            sub_1000BEC3C(v73);
          }
        }

        v74 = [v66 v59[201].attr];
        if (v74)
        {
          v75 = v66;
          v76 = v99;
          v77 = v74;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v78 = v94;
          v79 = *v93;
          v80 = v76;
          v66 = v75;
          v60 = v89;
          (*v93)(v94, v80, v17);
          v72(v78, 0, 1, v17);
          v79(v60, v78, v17);
        }

        else
        {
          v81 = v94;
          v72(v94, 1, 1, v17);
          static Date.distantPast.getter();
          if ((*v88)(v81, 1, v17) != 1)
          {
            sub_1000BEC3C(v94);
          }
        }

        v82 = v98;
        v83 = static Date.< infix(_:_:)();
        v84 = *v90;
        (*v90)(v60, v17);
        (v84)(v82, v17);

        if (v83)
        {
          v59 = &stru_10036E000;
          v85 = v91;
          if (v102 + 1 != v96)
          {
            *v102 = *v91;
          }

          a4 = v100;
          if (v101 <= v100 || (a2 = v85, v85 <= v87))
          {
            a2 = v85;
            goto LABEL_52;
          }

          goto LABEL_32;
        }

        v59 = &stru_10036E000;
        if (v102 + 1 != v101)
        {
          *v102 = *v62;
        }

        --v102;
        v101 = v62;
        a4 = v100;
        v61 = v91;
      }

      while (v62 > v100);
      v101 = v62;
      a2 = v96;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v30] <= a4)
    {
      memmove(a4, a1, 8 * v30);
    }

    v101 = &a4[v30];
    if (a2 - a1 < 8)
    {
      a2 = a1;
    }

    else
    {
      v33 = a1;
      if (a2 < v102)
      {
        v94 = (v18 + 32);
        v98 = (v18 + 56);
        v90 = (v18 + 48);
        v92 = (v18 + 8);
        while (1)
        {
          v96 = a2;
          v34 = *a2;
          v100 = a4;
          v35 = *a4;
          v36 = v34;
          v37 = v35;
          v38 = [v36 smtTimestamp];
          if (v38)
          {
            v39 = v38;
            v40 = v99;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v41 = v93;
            v42 = *v94;
            (*v94)(v93, v40, v17);
            v43 = *v98;
            (*v98)(v41, 0, 1, v17);
            v42(v97, v41, v17);
          }

          else
          {
            v43 = *v98;
            v44 = v93;
            (*v98)(v93, 1, 1, v17);
            static Date.distantPast.getter();
            if ((*v90)(v44, 1, v17) != 1)
            {
              sub_1000BEC3C(v44);
            }
          }

          v45 = [v37 smtTimestamp];
          if (v45)
          {
            v46 = v33;
            v47 = v99;
            v48 = v45;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v49 = v95;
            v50 = *v94;
            v51 = v47;
            v33 = v46;
            (*v94)(v95, v51, v17);
            v43(v49, 0, 1, v17);
            v52 = v91;
            v50(v91, v49, v17);
          }

          else
          {
            v53 = v95;
            v43(v95, 1, 1, v17);
            v52 = v91;
            static Date.distantPast.getter();
            if ((*v90)(v53, 1, v17) != 1)
            {
              sub_1000BEC3C(v95);
            }
          }

          v54 = v97;
          v55 = static Date.< infix(_:_:)();
          v56 = v52;
          v57 = *v92;
          (*v92)(v56, v17);
          v57(v54, v17);

          if ((v55 & 1) == 0)
          {
            break;
          }

          v58 = v96;
          a2 = v96 + 1;
          a4 = v100;
          if (v33 != v96)
          {
            goto LABEL_22;
          }

LABEL_23:
          ++v33;
          if (a4 >= v101 || a2 >= v102)
          {
            goto LABEL_25;
          }
        }

        v58 = v100;
        a4 = v100 + 1;
        a2 = v96;
        if (v33 == v100)
        {
          goto LABEL_23;
        }

LABEL_22:
        *v33 = *v58;
        goto LABEL_23;
      }

LABEL_25:
      a2 = v33;
    }
  }

LABEL_52:
  if (a2 != a4 || a2 >= (a4 + ((v101 - a4 + (v101 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v101 - a4));
  }

  return 1;
}

void *sub_1001511E0(void *result, int64_t a2, char a3, void *a4)
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
    sub_100095820(&qword_100387BC8, &unk_1002DCEB8);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_100095820(&qword_100382DD0, &unk_1002D7500);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100151314(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = type metadata accessor for Date();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_100095820(&qword_100387BC0, &qword_1002DCEB0);
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

char *sub_100151694()
{
  v1 = v0;
  v36 = type metadata accessor for Date();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100095820(&qword_100387BC0, &qword_1002DCEB0);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

unint64_t sub_100151914()
{
  result = qword_100384A78;
  if (!qword_100384A78)
  {
    type metadata accessor for KTError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100384A78);
  }

  return result;
}

uint64_t sub_10015196C(uint64_t a1)
{
  v2 = type metadata accessor for KTOptIOValidator.OptInResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001519C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KTOptIOValidator.OptInResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100151A2C(uint64_t a1)
{
  v2 = sub_100095820(&unk_100387BD0, &qword_1002DCEC8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100095820(&qword_100387BC0, &qword_1002DCEB0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000AB050(v10, v6, &unk_100387BD0, &qword_1002DCEC8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_10000574C(*v6, v13);
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
      v19 = type metadata accessor for Date();
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

void sub_100151C40()
{
  sub_100151D38(319, &unk_100387B88, type metadata accessor for KTOptIn);
  if (v0 <= 0x3F)
  {
    sub_100151D38(319, &qword_100384100, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      sub_100151D8C(319, &unk_1003847D0, &type metadata for String, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100151D38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100151D8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_100151DDC()
{
  result = qword_100384AA0;
  if (!qword_100384AA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100384AA0);
  }

  return result;
}

unint64_t sub_100151E28()
{
  result = qword_100384AA8;
  if (!qword_100384AA8)
  {
    sub_1000967DC(&qword_1003846B8, &unk_1002DCED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100384AA8);
  }

  return result;
}

uint64_t sub_100151EC0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13transparencyd11KTRepairCKV_log;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_100152004(void *a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_100152EAC(a1, a2, a3);

  swift_unknownObjectRelease();
  return v8;
}

id sub_100152068(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_100152EAC(a1, a2, a3);

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_10015214C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13transparencyd11KTRepairCKV_doHardRepairConfig);
  v2 = *(v0 + OBJC_IVAR____TtC13transparencyd11KTRepairCKV_doHardRepairConfig + 8);

  return v1;
}

uint64_t sub_100152188(void *a1)
{
  v80 = a1;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v79 = &v73 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v73 - v11;
  __chkstk_darwin(v10);
  v14 = &v73 - v13;
  v15 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v81 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v73 - v20;
  __chkstk_darwin(v19);
  v23 = &v73 - v22;
  v24 = *(v3 + 56);
  v24(&v73 - v22, 1, 1, v2);
  v82 = v1;
  v25 = *(v1 + OBJC_IVAR____TtC13transparencyd11KTRepairCKV_repair);
  if (KTRepair.hardReset.getter())
  {
    v78 = v7;
    if (KTRepair.bypassRateControl.getter())
    {
      v26 = v82;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "bypass rate control for repair", v29, 2u);
      }

      goto LABEL_6;
    }

    v76 = v3;
    v77 = v2;
    v33 = v82;
    v34 = *(v82 + OBJC_IVAR____TtC13transparencyd11KTRepairCKV_deps);
    v35 = [v34 smDataStore];
    v36 = *(v33 + OBJC_IVAR____TtC13transparencyd11KTRepairCKV_doHardRepairConfig);
    v37 = *(v33 + OBJC_IVAR____TtC13transparencyd11KTRepairCKV_doHardRepairConfig + 8);
    v38 = String._bridgeToObjectiveC()();
    v39 = [v35 getSettingsDate:v38];

    swift_unknownObjectRelease();
    if (v39)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      if (static Date.> infix(_:_:)())
      {
        v40 = v76;
        v41 = v77;
        (*(v76 + 16))(v12, v14, v77);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v81 = v44;
          v82 = swift_slowAlloc();
          v83[0] = v82;
          *v44 = 136315138;
          sub_10015302C();
          v45 = dispatch thunk of CustomStringConvertible.description.getter();
          v47 = v46;
          v48 = *(v40 + 8);
          v48(v12, v41);
          v49 = sub_1000999E4(v45, v47, v83);

          v50 = v81;
          *(v81 + 4) = v49;
          _os_log_impl(&_mh_execute_header, v42, v43, "skipping hard reset until %s", v50, 0xCu);
          sub_10009A9E8(v82);

          v48(v14, v41);
        }

        else
        {

          v68 = *(v40 + 8);
          v68(v12, v41);
          v68(v14, v41);
        }

        return sub_1000BEC3C(v23);
      }

      (*(v76 + 8))(v14, v77);
    }

    v58 = [v34 dew];
    if (!v58)
    {
      return sub_1000BEC3C(v23);
    }

    v59 = [v58 dewConfig];
    swift_unknownObjectRelease();
    sub_100095820(&unk_100387C00, &unk_1002D6B08);
    type metadata accessor for DewConfigurationInt();
    v83[0] = sub_1000A5E70(7, 2, 1095);
    v60 = v59;
    v61 = sub_1000A6AFC(0xD000000000000010, 0x800000010029DAD0, 1, v83, v60, 0xD000000000000021, 0x800000010029DAF0);
    (*(*v61 + 200))(v83);
    Date.addingTimeInterval(_:)();
    v2 = v77;
    v24(v21, 0, 1, v77);
    sub_1000BECD4(v21, v23);
    v26 = v82;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v74 = v63;
      v80 = v60;
      v64 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v83[0] = v73;
      v75 = v64;
      *v64 = 136315138;
      swift_beginAccess();
      v3 = v76;
      v65 = (*(v76 + 48))(v23, 1, v2);
      v30 = v78;
      v31 = v81;
      if (v65)
      {
        v66 = 0xE100000000000000;
        v67 = 45;
      }

      else
      {
        (*(v3 + 16))(v79, v23, v2);
        v67 = Date.description.getter();
        v66 = v70;
        (*(v3 + 8))(v79, v2);
      }

      v71 = sub_1000999E4(v67, v66, v83);

      v72 = v75;
      *(v75 + 1) = v71;
      _os_log_impl(&_mh_execute_header, v62, v74, "next hard reset will go ahead at %s", v72, 0xCu);
      sub_10009A9E8(v73);

      v2 = v77;
      goto LABEL_7;
    }

    v3 = v76;
LABEL_6:
    v30 = v78;
    v31 = v81;
LABEL_7:
    v32 = *(v26 + OBJC_IVAR____TtC13transparencyd11KTRepairCKV_deps);
    [*(v26 + OBJC_IVAR____TtC13transparencyd11KTRepairCKV_reset) resetLocalState:v32];
    swift_beginAccess();
    sub_1000AB284(v23, v31);
    if ((*(v3 + 48))(v31, 1, v2) == 1)
    {
      sub_1000BEC3C(v31);
    }

    else
    {
      (*(v3 + 32))(v30, v31, v2);
      v51 = v2;
      v52 = [v32 smDataStore];
      v53 = *(v26 + OBJC_IVAR____TtC13transparencyd11KTRepairCKV_doHardRepairConfig);
      v54 = *(v26 + OBJC_IVAR____TtC13transparencyd11KTRepairCKV_doHardRepairConfig + 8);
      v55 = v3;
      v56 = String._bridgeToObjectiveC()();
      isa = Date._bridgeToObjectiveC()().super.isa;
      [v52 setSettingsDate:v56 date:isa];
      swift_unknownObjectRelease();

      (*(v55 + 8))(v30, v51);
    }
  }

  return sub_1000BEC3C(v23);
}

uint64_t sub_100152B5C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  (*((swift_isaMask & *v0) + 0x80))(v5);
  return (*(v2 + 8))(v5, v1);
}

id sub_100152DC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KTRepairCKV();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100152EAC(void *a1, void *a2, uint64_t a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v3[OBJC_IVAR____TtC13transparencyd11KTRepairCKV_doHardRepairConfig];
  *v12 = 0xD000000000000012;
  *(v12 + 1) = 0x800000010029DAB0;
  *&v3[OBJC_IVAR____TtC13transparencyd11KTRepairCKV_deps] = a1;
  *&v3[OBJC_IVAR____TtC13transparencyd11KTRepairCKV_repair] = a2;
  *&v3[OBJC_IVAR____TtC13transparencyd11KTRepairCKV_reset] = a3;
  v13 = a1;
  v14 = a2;
  swift_unknownObjectRetain();
  Logger.init(transparencyCategory:)();
  (*(v8 + 32))(&v3[OBJC_IVAR____TtC13transparencyd11KTRepairCKV_log], v11, v7);
  v15 = type metadata accessor for KTRepairCKV();
  v17.receiver = v3;
  v17.super_class = v15;
  return objc_msgSendSuper2(&v17, "init");
}

unint64_t sub_10015302C()
{
  result = qword_1003846E8;
  if (!qword_1003846E8)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003846E8);
  }

  return result;
}

uint64_t type metadata accessor for KTRepairCKV()
{
  result = qword_10039A880;
  if (!qword_10039A880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001530D8()
{
  result = type metadata accessor for Logger();
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

void sub_1001531C8(uint64_t a1@<X8>)
{
  sub_10015E614();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_10015320C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_10015E614();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

uint64_t sub_100153244(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001603DC();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_100153320@<X0>(void *a1@<X8>)
{
  v3 = sub_100095820(&qword_100387C38, &qword_1002DCFE8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for DewValue(0);
  sub_1000AB050(v1 + *(v7 + 28), v6, &qword_100387C38, &qword_1002DCFE8);
  v8 = type metadata accessor for Conditions(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10015E628(v6, a1, type metadata accessor for Conditions);
  }

  *a1 = _swiftEmptyArrayStorage;
  v10 = a1 + *(v8 + 20);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000057C4(v6, &qword_100387C38, &qword_1002DCFE8);
  }

  return result;
}

uint64_t sub_10015349C@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  v2 = a2 + *(a1(0) + 20);
  return UnknownStorage.init()();
}

uint64_t sub_1001534E4(uint64_t a1)
{
  v3 = *(type metadata accessor for DewValue(0) + 28);
  sub_1000057C4(v1 + v3, &qword_100387C38, &qword_1002DCFE8);
  sub_10015E628(a1, v1 + v3, type metadata accessor for Conditions);
  v4 = type metadata accessor for Conditions(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_10015359C(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100095820(&qword_100387C38, &qword_1002DCFE8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Conditions(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for DewValue(0) + 28);
  *(v4 + 12) = v14;
  sub_1000AB050(v1 + v14, v7, &qword_100387C38, &qword_1002DCFE8);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = _swiftEmptyArrayStorage;
    v16 = v13 + *(v8 + 20);
    UnknownStorage.init()();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_100387C38, &qword_1002DCFE8);
    }
  }

  else
  {
    sub_10015E628(v7, v13, type metadata accessor for Conditions);
  }

  return sub_1001537B8;
}

void sub_1001537B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_10015E690((*a1)[5], v4, type metadata accessor for Conditions);
    sub_1000057C4(v9 + v3, &qword_100387C38, &qword_1002DCFE8);
    sub_10015E628(v4, v9 + v3, type metadata accessor for Conditions);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_10015E6F8(v5, type metadata accessor for Conditions);
  }

  else
  {
    sub_1000057C4(v9 + v3, &qword_100387C38, &qword_1002DCFE8);
    sub_10015E628(v5, v9 + v3, type metadata accessor for Conditions);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_100153920()
{
  v1 = sub_100095820(&qword_100387C38, &qword_1002DCFE8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for DewValue(0);
  sub_1000AB050(v0 + *(v5 + 28), v4, &qword_100387C38, &qword_1002DCFE8);
  v6 = type metadata accessor for Conditions(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000057C4(v4, &qword_100387C38, &qword_1002DCFE8);
  return v7;
}

uint64_t sub_100153A14()
{
  v1 = *(type metadata accessor for DewValue(0) + 28);
  sub_1000057C4(v0 + v1, &qword_100387C38, &qword_1002DCFE8);
  v2 = type metadata accessor for Conditions(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_100153AA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100095820(&qword_100387C40, &unk_1002DCFF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for DewValue(0);
  sub_1000AB050(v1 + *(v7 + 32), v6, &qword_100387C40, &unk_1002DCFF0);
  v8 = type metadata accessor for ConfigurationValue(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10015E628(v6, a1, type metadata accessor for ConfigurationValue);
  }

  v10 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(v8 + 20);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000057C4(v6, &qword_100387C40, &unk_1002DCFF0);
  }

  return result;
}

uint64_t sub_100153C38@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for ConfigurationValue(0) + 20);
  return UnknownStorage.init()();
}

uint64_t sub_100153CAC(uint64_t a1)
{
  v3 = *(type metadata accessor for DewValue(0) + 32);
  sub_1000057C4(v1 + v3, &qword_100387C40, &unk_1002DCFF0);
  sub_10015E628(a1, v1 + v3, type metadata accessor for ConfigurationValue);
  v4 = type metadata accessor for ConfigurationValue(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_100153D64(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100095820(&qword_100387C40, &unk_1002DCFF0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for ConfigurationValue(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for DewValue(0) + 32);
  *(v4 + 12) = v14;
  sub_1000AB050(v1 + v14, v7, &qword_100387C40, &unk_1002DCFF0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    v16 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    v17 = v13 + *(v8 + 20);
    UnknownStorage.init()();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_100387C40, &unk_1002DCFF0);
    }
  }

  else
  {
    sub_10015E628(v7, v13, type metadata accessor for ConfigurationValue);
  }

  return sub_100153FB4;
}

void sub_100153FB4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_10015E690((*a1)[5], v4, type metadata accessor for ConfigurationValue);
    sub_1000057C4(v9 + v3, &qword_100387C40, &unk_1002DCFF0);
    sub_10015E628(v4, v9 + v3, type metadata accessor for ConfigurationValue);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_10015E6F8(v5, type metadata accessor for ConfigurationValue);
  }

  else
  {
    sub_1000057C4(v9 + v3, &qword_100387C40, &unk_1002DCFF0);
    sub_10015E628(v5, v9 + v3, type metadata accessor for ConfigurationValue);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_10015411C()
{
  v1 = sub_100095820(&qword_100387C40, &unk_1002DCFF0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for DewValue(0);
  sub_1000AB050(v0 + *(v5 + 32), v4, &qword_100387C40, &unk_1002DCFF0);
  v6 = type metadata accessor for ConfigurationValue(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000057C4(v4, &qword_100387C40, &unk_1002DCFF0);
  return v7;
}

uint64_t sub_100154210()
{
  v1 = *(type metadata accessor for DewValue(0) + 32);
  sub_1000057C4(v0 + v1, &qword_100387C40, &unk_1002DCFF0);
  v2 = type metadata accessor for ConfigurationValue(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_100154314@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  v2 = type metadata accessor for DewValue(0);
  v3 = &a1[v2[6]];
  UnknownStorage.init()();
  v4 = v2[7];
  v5 = type metadata accessor for Conditions(0);
  (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  v6 = v2[8];
  v7 = type metadata accessor for ConfigurationValue(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a1[v6], 1, 1, v7);
}

uint64_t sub_100154424@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_1001544B0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10015454C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100154718()
{
  v1 = sub_100095820(&qword_100383F78, &qword_1002D6B18);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v7 - v3;
  sub_1000AB050(v0, &v7 - v3, &qword_100383F78, &qword_1002D6B18);
  v5 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_1000057C4(v4, &qword_100383F78, &qword_1002D6B18);
    return 0;
  }

  else if (swift_getEnumCaseMultiPayload())
  {
    sub_10015E6F8(v4, type metadata accessor for ConfigurationValue.OneOf_Value);
    return 0;
  }

  else
  {
    return *v4;
  }
}

uint64_t sub_100154848(uint64_t a1)
{
  sub_1000057C4(v1, &qword_100383F78, &qword_1002D6B18);
  *v1 = a1;
  v3 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*sub_1001548E4(uint64_t *a1))(uint64_t **a1)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v2;
  v6 = *(*(sub_100095820(&qword_100383F78, &qword_1002D6B18) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[2] = v7;
  sub_1000AB050(v2, v7, &qword_100383F78, &qword_1002D6B18);
  v9 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  v5[3] = v9;
  v10 = *(v9 - 8);
  v5[4] = v10;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000057C4(v8, &qword_100383F78, &qword_1002D6B18);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v11 = *v8;
      goto LABEL_12;
    }

    sub_10015E6F8(v8, type metadata accessor for ConfigurationValue.OneOf_Value);
  }

  v11 = 0;
LABEL_12:
  *v5 = v11;
  return sub_100154A70;
}

void sub_100154A70(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = (*a1)[1];
  v4 = (*a1)[2];
  v6 = **a1;
  sub_1000057C4(v5, &qword_100383F78, &qword_1002D6B18);
  *v5 = v6;
  swift_storeEnumTagMultiPayload();
  (*(v3 + 56))(v5, 0, 1, v2);
  free(v4);

  free(v1);
}

uint64_t sub_100154B14()
{
  v1 = sub_100095820(&qword_100383F78, &qword_1002D6B18);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = (&v8 - v3);
  sub_1000AB050(v0, &v8 - v3, &qword_100383F78, &qword_1002D6B18);
  v5 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_1000057C4(v4, &qword_100383F78, &qword_1002D6B18);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      result = *v4;
      v7 = v4[1];
      return result;
    }

    sub_10015E6F8(v4, type metadata accessor for ConfigurationValue.OneOf_Value);
  }

  return 0;
}

uint64_t sub_100154C48(uint64_t a1, uint64_t a2)
{
  sub_1000057C4(v2, &qword_100383F78, &qword_1002D6B18);
  *v2 = a1;
  v2[1] = a2;
  v5 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

void (*sub_100154CF0(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v2;
  v6 = *(*(sub_100095820(&qword_100383F78, &qword_1002D6B18) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[3] = v7;
  sub_1000AB050(v2, v7, &qword_100383F78, &qword_1002D6B18);
  v9 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  v5[4] = v9;
  v10 = *(v9 - 8);
  v5[5] = v10;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000057C4(v8, &qword_100383F78, &qword_1002D6B18);
LABEL_12:
    v11 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10015E6F8(v8, type metadata accessor for ConfigurationValue.OneOf_Value);
    goto LABEL_12;
  }

  v11 = *v8;
  v12 = v8[1];
LABEL_13:
  *v5 = v11;
  v5[1] = v12;
  return sub_100154E84;
}

void sub_100154E84(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  if (a2)
  {
    v9 = (*a1)[1];

    sub_1000057C4(v8, &qword_100383F78, &qword_1002D6B18);
    *v8 = v4;
    v8[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v8, 0, 1, v5);
    v10 = v2[1];
  }

  else
  {
    sub_1000057C4((*a1)[2], &qword_100383F78, &qword_1002D6B18);
    *v8 = v4;
    v8[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v8, 0, 1, v5);
  }

  free(v7);

  free(v2);
}

uint64_t sub_100154F94()
{
  v1 = sub_100095820(&qword_100383F78, &qword_1002D6B18);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v7 - v3;
  sub_1000AB050(v0, &v7 - v3, &qword_100383F78, &qword_1002D6B18);
  v5 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_1000057C4(v4, &qword_100383F78, &qword_1002D6B18);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return *v4;
    }

    sub_10015E6F8(v4, type metadata accessor for ConfigurationValue.OneOf_Value);
  }

  return 0;
}

uint64_t sub_1001550C4(char a1)
{
  sub_1000057C4(v1, &qword_100383F78, &qword_1002D6B18);
  *v1 = a1;
  v3 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*sub_100155160(void *a1))(_BYTE ***a1)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = v4 + 4;
  v7 = *(*(sub_100095820(&qword_100383F78, &qword_1002D6B18) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  sub_1000AB050(v2, v8, &qword_100383F78, &qword_1002D6B18);
  v10 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v5[3] = v11;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000057C4(v9, &qword_100383F78, &qword_1002D6B18);
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_10015E6F8(v9, type metadata accessor for ConfigurationValue.OneOf_Value);
    goto LABEL_12;
  }

  v12 = *v9;
LABEL_13:
  *v6 = v12;
  return sub_1001552FC;
}

void sub_1001552FC(_BYTE ***a1)
{
  v1 = *a1;
  v2 = (*a1)[2];
  v3 = (*a1)[3];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = *(*a1 + 32);
  sub_1000057C4(v5, &qword_100383F78, &qword_1002D6B18);
  *v5 = v6;
  swift_storeEnumTagMultiPayload();
  (*(v3 + 7))(v5, 0, 1, v2);
  free(v4);

  free(v1);
}

double sub_1001553A0()
{
  v1 = sub_100095820(&qword_100383F78, &qword_1002D6B18);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v7 - v3;
  sub_1000AB050(v0, &v7 - v3, &qword_100383F78, &qword_1002D6B18);
  v5 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_1000057C4(v4, &qword_100383F78, &qword_1002D6B18);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return *v4;
    }

    sub_10015E6F8(v4, type metadata accessor for ConfigurationValue.OneOf_Value);
  }

  return 0.0;
}

uint64_t sub_1001554D0(double a1)
{
  sub_1000057C4(v1, &qword_100383F78, &qword_1002D6B18);
  *v1 = a1;
  v3 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*sub_100155574(uint64_t *a1))(uint64_t **a1)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v2;
  v6 = *(*(sub_100095820(&qword_100383F78, &qword_1002D6B18) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[2] = v7;
  sub_1000AB050(v2, v7, &qword_100383F78, &qword_1002D6B18);
  v9 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  v5[3] = v9;
  v10 = *(v9 - 8);
  v5[4] = v10;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000057C4(v8, &qword_100383F78, &qword_1002D6B18);
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10015E6F8(v8, type metadata accessor for ConfigurationValue.OneOf_Value);
    goto LABEL_12;
  }

  v11 = *v8;
LABEL_13:
  *v5 = v11;
  return sub_100155704;
}

void sub_100155704(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = (*a1)[1];
  v4 = (*a1)[2];
  v6 = **a1;
  sub_1000057C4(v5, &qword_100383F78, &qword_1002D6B18);
  *v5 = v6;
  swift_storeEnumTagMultiPayload();
  (*(v3 + 56))(v5, 0, 1, v2);
  free(v4);

  free(v1);
}

uint64_t sub_1001557B0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100095820(&qword_100383F78, &qword_1002D6B18);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  sub_1000AB050(v2, &v11 - v6, &qword_100383F78, &qword_1002D6B18);
  v8 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1000057C4(v7, &qword_100383F78, &qword_1002D6B18);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_10015E628(v7, a1, type metadata accessor for Strings);
    }

    sub_10015E6F8(v7, type metadata accessor for ConfigurationValue.OneOf_Value);
  }

  *a1 = _swiftEmptyArrayStorage;
  v10 = a1 + *(type metadata accessor for Strings(0) + 20);
  return UnknownStorage.init()();
}

uint64_t sub_100155928(uint64_t a1)
{
  sub_1000057C4(v1, &qword_100383F78, &qword_1002D6B18);
  sub_10015E628(a1, v1, type metadata accessor for Strings);
  v3 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*sub_1001559E0(void *a1))(uint64_t **a1, char a2)
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
  *v3 = v1;
  v5 = *(*(sub_100095820(&qword_100383F78, &qword_1002D6B18) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Strings(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  sub_1000AB050(v1, v7, &qword_100383F78, &qword_1002D6B18);
  v12 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_1000057C4(v7, &qword_100383F78, &qword_1002D6B18);
LABEL_15:
    *v11 = _swiftEmptyArrayStorage;
    v14 = v11 + *(v8 + 20);
    UnknownStorage.init()();
    return sub_100155C08;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_10015E6F8(v7, type metadata accessor for ConfigurationValue.OneOf_Value);
    goto LABEL_15;
  }

  sub_10015E628(v7, v11, type metadata accessor for Strings);
  return sub_100155C08;
}

void sub_100155C08(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_10015E690((*a1)[3], v5, type metadata accessor for Strings);
    sub_1000057C4(v8, &qword_100383F78, &qword_1002D6B18);
    sub_10015E628(v5, v8, type metadata accessor for Strings);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_10015E6F8(v6, type metadata accessor for Strings);
  }

  else
  {
    sub_1000057C4(**a1, &qword_100383F78, &qword_1002D6B18);
    sub_10015E628(v6, v8, type metadata accessor for Strings);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_100155F38@<X0>(void *a1@<X8>)
{
  v3 = sub_100095820(&qword_100387C48, &qword_1002DD000);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Condition(0);
  sub_1000AB050(v1 + *(v7 + 20), v6, &qword_100387C48, &qword_1002DD000);
  v8 = type metadata accessor for Condition.OneOf_Condition(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1000057C4(v6, &qword_100387C48, &qword_1002DD000);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_10015E628(v6, a1, type metadata accessor for Conditions);
    }

    sub_10015E6F8(v6, type metadata accessor for Condition.OneOf_Condition);
  }

  *a1 = _swiftEmptyArrayStorage;
  v9 = a1 + *(type metadata accessor for Conditions(0) + 20);
  return UnknownStorage.init()();
}

void (*sub_1001560D0(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100095820(&qword_100387C48, &qword_1002DD000) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Conditions(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  v12 = *(type metadata accessor for Condition(0) + 20);
  *(v4 + 12) = v12;
  sub_1000AB050(v1 + v12, v7, &qword_100387C48, &qword_1002DD000);
  v13 = type metadata accessor for Condition.OneOf_Condition(0);
  v4[4] = v13;
  v14 = *(v13 - 8);
  v4[5] = v14;
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_1000057C4(v7, &qword_100387C48, &qword_1002DD000);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_10015E628(v7, v11, type metadata accessor for Conditions);
      return sub_100156304;
    }

    sub_10015E6F8(v7, type metadata accessor for Condition.OneOf_Condition);
  }

  *v11 = _swiftEmptyArrayStorage;
  v15 = v11 + *(v8 + 20);
  UnknownStorage.init()();
  return sub_100156304;
}

uint64_t sub_100156348@<X0>(void *a1@<X8>)
{
  v3 = sub_100095820(&qword_100387C48, &qword_1002DD000);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Condition(0);
  sub_1000AB050(v1 + *(v7 + 20), v6, &qword_100387C48, &qword_1002DD000);
  v8 = type metadata accessor for Condition.OneOf_Condition(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1000057C4(v6, &qword_100387C48, &qword_1002DD000);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_10015E628(v6, a1, type metadata accessor for Conditions);
    }

    sub_10015E6F8(v6, type metadata accessor for Condition.OneOf_Condition);
  }

  *a1 = _swiftEmptyArrayStorage;
  v10 = a1 + *(type metadata accessor for Conditions(0) + 20);
  return UnknownStorage.init()();
}

void (*sub_1001564E4(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100095820(&qword_100387C48, &qword_1002DD000) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Conditions(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  v12 = *(type metadata accessor for Condition(0) + 20);
  *(v4 + 12) = v12;
  sub_1000AB050(v1 + v12, v7, &qword_100387C48, &qword_1002DD000);
  v13 = type metadata accessor for Condition.OneOf_Condition(0);
  v4[4] = v13;
  v14 = *(v13 - 8);
  v4[5] = v14;
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_1000057C4(v7, &qword_100387C48, &qword_1002DD000);
LABEL_15:
    *v11 = _swiftEmptyArrayStorage;
    v15 = v11 + *(v8 + 20);
    UnknownStorage.init()();
    return sub_10015671C;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10015E6F8(v7, type metadata accessor for Condition.OneOf_Condition);
    goto LABEL_15;
  }

  sub_10015E628(v7, v11, type metadata accessor for Conditions);
  return sub_10015671C;
}

uint64_t sub_100156760@<X0>(void *a1@<X8>)
{
  v3 = sub_100095820(&qword_100387C48, &qword_1002DD000);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Condition(0);
  sub_1000AB050(v1 + *(v7 + 20), v6, &qword_100387C48, &qword_1002DD000);
  v8 = type metadata accessor for Condition.OneOf_Condition(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1000057C4(v6, &qword_100387C48, &qword_1002DD000);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_10015E628(v6, a1, type metadata accessor for ConditionDSID);
    }

    sub_10015E6F8(v6, type metadata accessor for Condition.OneOf_Condition);
  }

  v10 = type metadata accessor for ConditionDSID(0);
  *a1 = 0;
  a1[1] = 0;
  v11 = a1 + *(v10 + 24);
  return UnknownStorage.init()();
}

uint64_t sub_1001568D8@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ConditionDSID(0);
  *a1 = 0;
  a1[1] = 0;
  v3 = a1 + *(v2 + 24);
  return UnknownStorage.init()();
}

void (*sub_10015692C(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100095820(&qword_100387C48, &qword_1002DD000) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for ConditionDSID(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  v12 = *(type metadata accessor for Condition(0) + 20);
  *(v4 + 12) = v12;
  sub_1000AB050(v1 + v12, v7, &qword_100387C48, &qword_1002DD000);
  v13 = type metadata accessor for Condition.OneOf_Condition(0);
  v4[4] = v13;
  v14 = *(v13 - 8);
  v4[5] = v14;
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_1000057C4(v7, &qword_100387C48, &qword_1002DD000);
LABEL_15:
    *v11 = 0;
    v11[1] = 0;
    v15 = v11 + *(v8 + 24);
    UnknownStorage.init()();
    return sub_100156B5C;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_10015E6F8(v7, type metadata accessor for Condition.OneOf_Condition);
    goto LABEL_15;
  }

  sub_10015E628(v7, v11, type metadata accessor for ConditionDSID);
  return sub_100156B5C;
}

uint64_t sub_100156BA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100095820(&qword_100387C48, &qword_1002DD000);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Condition(0);
  sub_1000AB050(v1 + *(v7 + 20), v6, &qword_100387C48, &qword_1002DD000);
  v8 = type metadata accessor for Condition.OneOf_Condition(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1000057C4(v6, &qword_100387C48, &qword_1002DD000);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_10015E628(v6, a1, type metadata accessor for ConditionVersion);
    }

    sub_10015E6F8(v6, type metadata accessor for Condition.OneOf_Condition);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  v10 = type metadata accessor for ConditionVersion(0);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v11 = a1 + *(v10 + 32);
  return UnknownStorage.init()();
}

uint64_t sub_100156D24@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for ConditionVersion(0);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = a1 + *(v2 + 32);
  return UnknownStorage.init()();
}

uint64_t sub_100156D84(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = *(type metadata accessor for Condition(0) + 20);
  sub_1000057C4(v2 + v5, &qword_100387C48, &qword_1002DD000);
  sub_10015E628(a1, v2 + v5, a2);
  v6 = type metadata accessor for Condition.OneOf_Condition(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v2 + v5, 0, 1, v6);
}

void (*sub_100156E50(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100095820(&qword_100387C48, &qword_1002DD000) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for ConditionVersion(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  v12 = *(type metadata accessor for Condition(0) + 20);
  *(v4 + 12) = v12;
  sub_1000AB050(v1 + v12, v7, &qword_100387C48, &qword_1002DD000);
  v13 = type metadata accessor for Condition.OneOf_Condition(0);
  v4[4] = v13;
  v14 = *(v13 - 8);
  v4[5] = v14;
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_1000057C4(v7, &qword_100387C48, &qword_1002DD000);
LABEL_15:
    *v11 = 0;
    *(v11 + 8) = 1;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    v15 = v11 + *(v8 + 32);
    UnknownStorage.init()();
    return sub_10015708C;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10015E6F8(v7, type metadata accessor for Condition.OneOf_Condition);
    goto LABEL_15;
  }

  sub_10015E628(v7, v11, type metadata accessor for ConditionVersion);
  return sub_10015708C;
}

void sub_1001570D0(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = *(*a1 + 12);
  v11 = (*a1)[2];
  v12 = (*a1)[3];
  v13 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_10015E690(v12, v11, a5);
    sub_1000057C4(v13 + v10, &qword_100387C48, &qword_1002DD000);
    sub_10015E628(v11, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
    sub_10015E6F8(v12, a6);
  }

  else
  {
    sub_1000057C4(v13 + v10, &qword_100387C48, &qword_1002DD000);
    sub_10015E628(v12, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
  }

  free(v12);
  free(v11);
  free(v15);

  free(v7);
}

uint64_t sub_100157250@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1001572EC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1001573E4(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = *(type metadata accessor for ConditionDSID(0) + 24);
  type metadata accessor for UnknownStorage();
  sub_1000049D0(&qword_1003825C8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1001574A4@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Condition(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for Condition.OneOf_Condition(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 24)];
  return UnknownStorage.init()();
}

uint64_t sub_1001575E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ConditionVersion(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100157660(uint64_t a1)
{
  v3 = *(type metadata accessor for ConditionVersion(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_100157724()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D578);
  sub_10009597C(v0, qword_10039D578);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D7190;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "macos";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "iphoneos";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "watchos";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "tvos";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "visionos";
  *(v15 + 8) = 8;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100157AA4()
{
  if (!*(*v0 + 16) || (type metadata accessor for DewValue(0), sub_1000049D0(&qword_100387C50, type metadata accessor for DewValue), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for CloudConfiguration(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100157BB4(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a4(0) + 20);
  type metadata accessor for UnknownStorage();
  sub_1000049D0(&qword_1003825C8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100157CCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000049D0(&qword_100388340, type metadata accessor for CloudConfiguration);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100157D6C(uint64_t a1)
{
  v2 = sub_1000049D0(&qword_1003834F0, type metadata accessor for CloudConfiguration);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100157DD8()
{
  sub_1000049D0(&qword_1003834F0, type metadata accessor for CloudConfiguration);

  return Message.hash(into:)();
}

uint64_t sub_100157E90()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D5A8);
  sub_10009597C(v0, qword_10039D5A8);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "version";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "conditions";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "value";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100158120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    if (!v3[2] || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v4))
    {
      result = sub_100158204(v3, a1, a2, a3);
      if (!v4)
      {
        sub_100158420(v3, a1, a2, a3);
        v12 = v3 + *(type metadata accessor for DewValue(0) + 24);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t sub_100158204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100095820(&qword_100387C38, &qword_1002DCFE8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Conditions(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DewValue(0);
  sub_1000AB050(a1 + *(v14 + 28), v8, &qword_100387C38, &qword_1002DCFE8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000057C4(v8, &qword_100387C38, &qword_1002DCFE8);
  }

  sub_10015E628(v8, v13, type metadata accessor for Conditions);
  sub_1000049D0(&qword_100387CF8, type metadata accessor for Conditions);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10015E6F8(v13, type metadata accessor for Conditions);
}

uint64_t sub_100158420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100095820(&qword_100387C40, &unk_1002DCFF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ConfigurationValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DewValue(0);
  sub_1000AB050(a1 + *(v14 + 32), v8, &qword_100387C40, &unk_1002DCFF0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000057C4(v8, &qword_100387C40, &unk_1002DCFF0);
  }

  sub_10015E628(v8, v13, type metadata accessor for ConfigurationValue);
  sub_1000049D0(&qword_100387D28, type metadata accessor for ConfigurationValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10015E6F8(v13, type metadata accessor for ConfigurationValue);
}

uint64_t sub_1001586A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000049D0(&qword_100388338, type metadata accessor for DewValue);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100158740(uint64_t a1)
{
  v2 = sub_1000049D0(&qword_100387C50, type metadata accessor for DewValue);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001587AC()
{
  sub_1000049D0(&qword_100387C50, type metadata accessor for DewValue);

  return Message.hash(into:)();
}

uint64_t sub_100158910()
{
  if (!*(*v0 + 16) || (type metadata accessor for Condition(0), sub_1000049D0(&qword_100387C68, type metadata accessor for Condition), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Conditions(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100158A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000049D0(&qword_100388330, type metadata accessor for Conditions);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100158AF4(uint64_t a1)
{
  v2 = sub_1000049D0(&qword_100387CF8, type metadata accessor for Conditions);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100158B60()
{
  sub_1000049D0(&qword_100387CF8, type metadata accessor for Conditions);

  return Message.hash(into:)();
}

uint64_t sub_100158C30(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for _NameMap();
  sub_100098130(v7, a2);
  sub_10009597C(v7, a2);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v8 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002D47B0;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = enum case for _NameMap.NameDescription.same(_:);
  v14 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100158DE4()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
    }
  }

  return result;
}

uint64_t sub_100158E54()
{
  if (!*(*v0 + 16) || (result = dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Strings(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100158F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000049D0(&qword_100388328, type metadata accessor for Strings);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100158FF4(uint64_t a1)
{
  v2 = sub_1000049D0(&qword_100387D10, type metadata accessor for Strings);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100159060()
{
  sub_1000049D0(&qword_100387D10, type metadata accessor for Strings);

  return Message.hash(into:)();
}

uint64_t sub_1001590F4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  sub_1000049D0(&qword_1003825C8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1001591C8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D5F0);
  sub_10009597C(v0, qword_10039D5F0);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D7190;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 100;
  *v6 = "integer";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 101;
  *v10 = "string";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 102;
  *v12 = "BOOL";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 103;
  *v14 = "timeInterval";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 104;
  *v15 = "strings";
  *(v15 + 8) = 7;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001594A8(uint64_t a1, void *a2)
{
  v4 = sub_100095820(&qword_100383F78, &qword_1002D6B18);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v15 = 0;
  v16 = 1;
  result = dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
  if (!v2 && (v16 & 1) == 0)
  {
    v17 = 0;
    v14 = v15;
    sub_1000AB050(a2, v7, &qword_100383F78, &qword_1002D6B18);
    v9 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v7, 1, v9);
    sub_1000057C4(v7, &qword_100383F78, &qword_1002D6B18);
    if (v11 != 1)
    {
      v12 = v17;
      result = dispatch thunk of Decoder.handleConflictingOneOf()();
      if (v12)
      {
        return result;
      }

      v17 = 0;
    }

    sub_1000057C4(a2, &qword_100383F78, &qword_1002D6B18);
    *a2 = v14;
    swift_storeEnumTagMultiPayload();
    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  return result;
}

uint64_t sub_100159684(uint64_t a1, void *a2)
{
  v4 = sub_100095820(&qword_100383F78, &qword_1002D6B18);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v15 = 0;
  v16 = 0;
  result = dispatch thunk of Decoder.decodeSingularStringField(value:)();
  if (v2)
  {
  }

  if (v16)
  {
    v17 = v16;
    v14 = v15;
    sub_1000AB050(a2, v7, &qword_100383F78, &qword_1002D6B18);
    v9 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v7, 1, v9);
    sub_1000057C4(v7, &qword_100383F78, &qword_1002D6B18);
    if (v11 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000057C4(a2, &qword_100383F78, &qword_1002D6B18);
    v12 = v17;
    *a2 = v14;
    a2[1] = v12;
    swift_storeEnumTagMultiPayload();
    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  return result;
}

uint64_t sub_100159878(uint64_t a1, _BYTE *a2)
{
  v4 = sub_100095820(&qword_100383F78, &qword_1002D6B18);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  v16 = 2;
  result = dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  if (!v2)
  {
    v9 = v16;
    if (v16 != 2)
    {
      v15 = 0;
      sub_1000AB050(a2, v7, &qword_100383F78, &qword_1002D6B18);
      v10 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
      v11 = *(v10 - 8);
      v12 = (*(v11 + 48))(v7, 1, v10);
      sub_1000057C4(v7, &qword_100383F78, &qword_1002D6B18);
      if (v12 != 1)
      {
        v13 = v15;
        result = dispatch thunk of Decoder.handleConflictingOneOf()();
        if (v13)
        {
          return result;
        }

        v15 = 0;
      }

      sub_1000057C4(a2, &qword_100383F78, &qword_1002D6B18);
      *a2 = v9 & 1;
      swift_storeEnumTagMultiPayload();
      return (*(v11 + 56))(a2, 0, 1, v10);
    }
  }

  return result;
}

uint64_t sub_100159A4C(uint64_t a1, void *a2)
{
  v4 = sub_100095820(&qword_100383F78, &qword_1002D6B18);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  v16 = 0;
  v17 = 1;
  result = dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
  if (!v2 && (v17 & 1) == 0)
  {
    v15 = 0;
    v9 = v16;
    sub_1000AB050(a2, v7, &qword_100383F78, &qword_1002D6B18);
    v10 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v7, 1, v10);
    sub_1000057C4(v7, &qword_100383F78, &qword_1002D6B18);
    if (v12 != 1)
    {
      v13 = v15;
      result = dispatch thunk of Decoder.handleConflictingOneOf()();
      if (v13)
      {
        return result;
      }

      v15 = 0;
    }

    sub_1000057C4(a2, &qword_100383F78, &qword_1002D6B18);
    *a2 = v9;
    swift_storeEnumTagMultiPayload();
    return (*(v11 + 56))(a2, 0, 1, v10);
  }

  return result;
}

uint64_t sub_100159C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_100095820(&qword_100383F78, &qword_1002D6B18);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v16 - v10;
  sub_1000AB050(v3, &v16 - v10, &qword_100383F78, &qword_1002D6B18);
  v12 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_10015E6F8(v11, type metadata accessor for ConfigurationValue.OneOf_Value);
        result = sub_100159FAC(v3);
        if (v4)
        {
          return result;
        }
      }

      else
      {
        result = sub_100159E4C(v3);
        if (v4)
        {
          return result;
        }
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      result = sub_10015A124(v3);
      if (v4)
      {
        return result;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      result = sub_10015A288(v3);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      sub_10015A3EC(v3, a1, a2, a3);
      result = sub_10015E6F8(v11, type metadata accessor for ConfigurationValue.OneOf_Value);
      if (v4)
      {
        return result;
      }
    }
  }

  v15 = v3 + *(type metadata accessor for ConfigurationValue(0) + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100159E4C(uint64_t a1)
{
  v2 = sub_100095820(&qword_100383F78, &qword_1002D6B18);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (&v9 - v4);
  sub_1000AB050(a1, &v9 - v4, &qword_100383F78, &qword_1002D6B18);
  v6 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_1000057C4(v5, &qword_100383F78, &qword_1002D6B18);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    v7 = *v5;
    return dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)();
  }

  result = sub_10015E6F8(v5, type metadata accessor for ConfigurationValue.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_100159FAC(uint64_t a1)
{
  v2 = sub_100095820(&qword_100383F78, &qword_1002D6B18);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (&v10 - v4);
  sub_1000AB050(a1, &v10 - v4, &qword_100383F78, &qword_1002D6B18);
  v6 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_1000057C4(v5, &qword_100383F78, &qword_1002D6B18);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v5;
    v8 = v5[1];
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  result = sub_10015E6F8(v5, type metadata accessor for ConfigurationValue.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_10015A124(uint64_t a1)
{
  v2 = sub_100095820(&qword_100383F78, &qword_1002D6B18);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  sub_1000AB050(a1, &v9 - v4, &qword_100383F78, &qword_1002D6B18);
  v6 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_1000057C4(v5, &qword_100383F78, &qword_1002D6B18);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *v5;
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  result = sub_10015E6F8(v5, type metadata accessor for ConfigurationValue.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_10015A288(uint64_t a1)
{
  v2 = sub_100095820(&qword_100383F78, &qword_1002D6B18);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (&v9 - v4);
  sub_1000AB050(a1, &v9 - v4, &qword_100383F78, &qword_1002D6B18);
  v6 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_1000057C4(v5, &qword_100383F78, &qword_1002D6B18);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    v7 = *v5;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  result = sub_10015E6F8(v5, type metadata accessor for ConfigurationValue.OneOf_Value);
  __break(1u);
  return result;
}