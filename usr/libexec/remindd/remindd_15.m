uint64_t sub_1001B854C@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v23 - v15;
  v17 = [*a1 identifier];
  if (v17)
  {
    v18 = v17;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 56))(v12, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v12, 1, 1, v4);
  }

  sub_100031B58(v12, v16, &unk_100939D90, "8\n\r");
  if ((*(v5 + 48))(v16, 1, v4))
  {
    result = sub_1000050A4(v16, &unk_100939D90, "8\n\r");
    v20 = 0;
    v21 = 0;
  }

  else
  {
    (*(v5 + 16))(v8, v16, v4);
    sub_1000050A4(v16, &unk_100939D90, "8\n\r");
    v20 = UUID.uuidString.getter();
    v21 = v22;
    result = (*(v5 + 8))(v8, v4);
  }

  *a2 = v20;
  a2[1] = v21;
  return result;
}

uint64_t sub_1001B87A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v14 - v6;
  v8 = *(a1 + 16);
  v14[0] = *(a1 + 8);
  v14[1] = v8;

  static Locale.current.getter();
  v9 = type metadata accessor for Locale();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  sub_10013BCF4();
  v10 = StringProtocol.foldedStringForWriting(locale:)();
  v12 = v11;
  sub_1000050A4(v7, &unk_10093F420, &unk_100797AE0);

  *a2 = v10;
  a2[1] = v12;
  return result;
}

Swift::Int sub_1001B88EC(uint64_t a1)
{
  v3 = v1;
  Hasher.init(_seed:)();
  v4 = *v1;
  NSObject.hash(into:)();
  v5 = v3[1];
  v6 = v3[2];
  String.hash(into:)();
  v7 = *(a1 + 24);
  type metadata accessor for UUID();
  sub_1001BC334(&qword_10093B410, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001B89A4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v2;
  NSObject.hash(into:)();
  v6 = v4[1];
  v7 = v4[2];
  String.hash(into:)();
  v8 = *(a2 + 24);
  type metadata accessor for UUID();
  sub_1001BC334(&qword_10093B410, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1001B8A40(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  Hasher.init(_seed:)();
  v5 = *v2;
  NSObject.hash(into:)();
  v6 = v4[1];
  v7 = v4[2];
  String.hash(into:)();
  v8 = *(a2 + 24);
  type metadata accessor for UUID();
  sub_1001BC334(&qword_10093B410, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001B8AF4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
  v6 = *a1;
  v7 = *a2;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v8 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v9 = *(a3 + 24);

  return static UUID.== infix(_:_:)();
}

uint64_t sub_1001B8BA0()
{
  v1 = [*(v0 + OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_reminder) hashtags];
  v2 = _swiftEmptySetSingleton;
  if (!v1)
  {
    return v2;
  }

  v3 = v1;
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  sub_10000CE28(&qword_10093B280, &qword_10093CFE0, off_1008D4190);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v4 & 0xC000000000000001) == 0)
  {
    v19 = *(v4 + 32);
    v2 = (((1 << v19) + 63) >> 6);
    if ((v19 & 0x3Fu) <= 0xD)
    {
      goto LABEL_23;
    }

    goto LABEL_40;
  }

  v37 = _swiftEmptySetSingleton;
  __CocoaSet.makeIterator()();
  v6 = __CocoaSet.Iterator.next()();
  if (!v6)
  {
LABEL_21:

    return v2;
  }

  while (1)
  {
    v35[2] = v6;
    swift_dynamicCast();
    v7 = v36;
    if (([v36 isConcealed] & 1) == 0)
    {
      break;
    }

LABEL_6:
    v6 = __CocoaSet.Iterator.next()();
    if (!v6)
    {
      goto LABEL_21;
    }
  }

  v8 = v2[2];
  if (v2[3] <= v8)
  {
    sub_100380E64(v8 + 1);
  }

  v2 = v37;
  v4 = v36;
  v9 = NSObject._rawHashValue(seed:)(v37[5]);
  v10 = v37 + 7;
  v11 = -1 << *(v37 + 32);
  v12 = v9 & ~v11;
  v13 = v12 >> 6;
  if (((-1 << v12) & ~v37[(v12 >> 6) + 7]) != 0)
  {
    v14 = __clz(__rbit64((-1 << v12) & ~v37[(v12 >> 6) + 7])) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_20:
    *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    *(v2[6] + 8 * v14) = v7;
    ++v2[2];
    goto LABEL_6;
  }

  v15 = 0;
  v16 = (63 - v11) >> 6;
  while (++v13 != v16 || (v15 & 1) == 0)
  {
    v17 = v13 == v16;
    if (v13 == v16)
    {
      v13 = 0;
    }

    v15 |= v17;
    v18 = v10[v13];
    if (v18 != -1)
    {
      v14 = __clz(__rbit64(~v18)) + (v13 << 6);
      goto LABEL_20;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_40:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_23:
    v35[0] = v35;
    __chkstk_darwin(v5);
    v21 = v35 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v21, v20);
    v22 = 0;
    v23 = 0;
    v24 = 1 << *(v4 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(v4 + 56);
    v27 = (v24 + 63) >> 6;
    while (v26)
    {
      v28 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
LABEL_33:
      v31 = v28 | (v23 << 6);
      if (([*(*(v4 + 48) + 8 * v31) isConcealed] & 1) == 0)
      {
        *&v21[(v31 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v31;
        if (__OFADD__(v22++, 1))
        {
          __break(1u);
          return sub_1001A112C(v21, v2, v22, v4);
        }
      }
    }

    v29 = v23;
    while (1)
    {
      v23 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v23 >= v27)
      {
        return sub_1001A112C(v21, v2, v22, v4);
      }

      v30 = *(v4 + 56 + 8 * v23);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v26 = (v30 - 1) & v30;
        goto LABEL_33;
      }
    }
  }

  v34 = swift_slowAlloc();
  v2 = sub_1001BAAE8(v34, v2, v4, sub_1001B8FD8, 0);

  return v2;
}

id sub_1001B9040()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001B90E4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22 - v8;
  Date.init()();
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v11 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.Metrics(0);
  v12 = sub_1001BBB60(v9, v3 + *(v11 + 40));
  v13 = sub_1001B9358(v12);
  v15 = v14;
  if (qword_100935B40 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100006654(v16, qword_10093AF90);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = sub_10000668C(a1, a2, &v23);
    *(v19 + 12) = 2080;
    v20 = sub_10000668C(v13, v15, &v23);

    *(v19 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return sub_1001B95AC();
}

uint64_t sub_1001B95AC()
{
  v1 = v0;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v16 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0[5];
  v16[1] = sub_10000F61C(v0 + 1, v0[4]);
  sub_1001B9A3C();
  v12 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.Metrics(0);
  sub_100010364(v1 + *(v12 + 40), v5, &unk_100938850, qword_100795AE0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000050A4(v5, &unk_100938850, qword_100795AE0);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v13 = v1 + *(v12 + 36);
    Date.distance(to:)();
    (*(v7 + 8))(v10, v6);
  }

  v14 = *v1;
  dispatch thunk of AnalyticsType.postEvent(_:payload:duration:error:performAutoBugCaptureOnError:)();
}

uint64_t sub_1001B97EC()
{
  v1 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.Metrics(0);
  sub_100010364(v0 + *(v10 + 40), v4, &unk_100938850, qword_100795AE0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000050A4(v4, &unk_100938850, qword_100795AE0);
    return 0x6E776F6E6B6E753CLL;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v12 = v0 + *(v10 + 36);
    Date.distance(to:)();
    v14 = v13;
    (*(v6 + 8))(v9, v5);
    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100791300;
    *(v15 + 56) = &type metadata for Double;
    *(v15 + 64) = &protocol witness table for Double;
    *(v15 + 32) = v14;
    v16 = String.init(format:arguments:)();

    return v16;
  }
}

unint64_t sub_1001B9A3C()
{
  sub_1000F5104(&unk_100939240, &unk_100798990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791320;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x80000001007EF4F0;
  v2 = v0[6];
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = 0xD000000000000018;
  *(inited + 64) = 0x80000001007EF510;
  v3 = v0[7];
  *(inited + 72) = Int._bridgeToObjectiveC()();
  *(inited + 80) = 0x7367617468736168;
  *(inited + 88) = 0xEF64657461657243;
  v4 = v0[8];
  *(inited + 96) = Int._bridgeToObjectiveC()();
  v5 = sub_10038D880(inited);
  swift_setDeallocating();
  sub_1000F5104(&unk_100939250, &unk_100795D30);
  swift_arrayDestroy();
  return v5;
}

uint64_t sub_1001B9BA0()
{
  result = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.Metrics(319);
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

void *sub_1001B9CA0(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    *a1 = v5;
    v3 = (v5 + ((v4 + 16) & ~v4));
  }

  else
  {
    v8 = *a2;
    swift_errorRetain();
    *v3 = v5;
    v9 = *(a2 + 2);
    *(v3 + 2) = v9;
    (**(v9 - 8))((v3 + 1), (a2 + 1));
    *(v3 + 3) = *(a2 + 3);
    v3[8] = a2[8];
    v10 = *(a3 + 36);
    v11 = type metadata accessor for Date();
    v12 = *(v11 - 8);
    v13 = *(v12 + 16);
    v13(v3 + v10, a2 + v10, v11);
    v14 = *(a3 + 40);
    if ((*(v12 + 48))(a2 + v14, 1, v11))
    {
      v15 = sub_1000F5104(&unk_100938850, qword_100795AE0);
      memcpy(v3 + v14, a2 + v14, *(*(v15 - 8) + 64));
    }

    else
    {
      v13(v3 + v14, a2 + v14, v11);
      (*(v12 + 56))(v3 + v14, 0, 1, v11);
    }
  }

  return v3;
}

uint64_t sub_1001B9E7C(void *a1, uint64_t a2)
{
  v5 = a1 + 1;
  v4 = *a1;

  sub_10000607C(v5);
  v6 = *(a2 + 36);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v11 = *(v8 + 8);
  v11(a1 + v6, v7);
  v9 = *(a2 + 40);
  result = (*(v8 + 48))(a1 + v9, 1, v7);
  if (!result)
  {

    return (v11)(a1 + v9, v7);
  }

  return result;
}

uint64_t sub_1001B9F84(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  swift_errorRetain();
  *a1 = v6;
  v7 = *(a2 + 2);
  *(a1 + 32) = v7;
  (**(v7 - 8))(a1 + 8, (a2 + 1));
  *(a1 + 48) = *(a2 + 3);
  *(a1 + 64) = a2[8];
  v8 = *(a3 + 36);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  v11(a1 + v8, a2 + v8, v9);
  v12 = *(a3 + 40);
  if ((*(v10 + 48))(a2 + v12, 1, v9))
  {
    v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy((a1 + v12), a2 + v12, *(*(v13 - 8) + 64));
  }

  else
  {
    v11(a1 + v12, a2 + v12, v9);
    (*(v10 + 56))(a1 + v12, 0, 1, v9);
  }

  return a1;
}

void *sub_1001BA114(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *a2;
  swift_errorRetain();
  *a1 = v7;

  sub_1001BA2F0(a1 + 1, a2 + 1);
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  v8 = *(a3 + 36);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 24);
  v11(a1 + v8, a2 + v8, v9);
  v12 = *(a3 + 40);
  v13 = *(v10 + 48);
  LODWORD(a3) = v13(a1 + v12, 1, v9);
  v14 = v13(a2 + v12, 1, v9);
  if (!a3)
  {
    if (!v14)
    {
      v11(a1 + v12, a2 + v12, v9);
      return a1;
    }

    (*(v10 + 8))(a1 + v12, v9);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    v15 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(a1 + v12, a2 + v12, *(*(v15 - 8) + 64));
    return a1;
  }

  (*(v10 + 16))(a1 + v12, a2 + v12, v9);
  (*(v10 + 56))(a1 + v12, 0, 1, v9);
  return a1;
}

uint64_t *sub_1001BA2F0(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t sub_1001BA50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  v6 = *(a3 + 36);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 32);
  v9(a1 + v6, a2 + v6, v7);
  v10 = *(a3 + 40);
  if ((*(v8 + 48))(a2 + v10, 1, v7))
  {
    v11 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy((a1 + v10), (a2 + v10), *(*(v11 - 8) + 64));
  }

  else
  {
    v9(a1 + v10, a2 + v10, v7);
    (*(v8 + 56))(a1 + v10, 0, 1, v7);
  }

  return a1;
}

uint64_t *sub_1001BA670(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  sub_10000607C(a1 + 1);
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 3) = *(a2 + 3);
  a1[5] = a2[5];
  *(a1 + 3) = *(a2 + 3);
  a1[8] = a2[8];
  v7 = *(a3 + 36);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 40);
  v10(a1 + v7, a2 + v7, v8);
  v11 = *(a3 + 40);
  v12 = *(v9 + 48);
  LODWORD(a3) = v12(a1 + v11, 1, v8);
  v13 = v12(a2 + v11, 1, v8);
  if (!a3)
  {
    if (!v13)
    {
      v10(a1 + v11, a2 + v11, v8);
      return a1;
    }

    (*(v9 + 8))(a1 + v11, v8);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(a1 + v11, a2 + v11, *(*(v14 - 8) + 64));
    return a1;
  }

  (*(v9 + 32))(a1 + v11, a2 + v11, v8);
  (*(v9 + 56))(a1 + v11, 0, 1, v8);
  return a1;
}

void sub_1001BA874()
{
  v0 = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100140DD4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initStructMetadata();
    }
  }
}

unint64_t sub_1001BA9AC()
{
  result = qword_10093B268;
  if (!qword_10093B268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B268);
  }

  return result;
}

uint64_t sub_1001BAA00(uint64_t a1)
{
  type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1001BAA34()
{
  v1 = [objc_allocWithZone(type metadata accessor for Analytics()) init];
  v2 = [*(v0 + 16) newBackgroundContextWithAuthor:RDSharedInlineTagAutoConvertAuthor];
  v3 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.Batcher(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  v7 = v1;
  sub_1001BB7C0(v2, v7, v6);
  sub_1001B45F8();
}

void *sub_1001BAAE8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_1004ADF48(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

void sub_1001BAB78(uint64_t a1, char a2, void *a3)
{
  v6 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F5104(&qword_10093B290, &qword_100798890);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v16 = (&v47 - v15);
  v17 = *(a1 + 16);
  if (v17)
  {
    v49 = a1;
    v50 = v7;
    v18 = *(v13 + 48);
    v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v52 = *(v14 + 72);
    v48 = v19;
    sub_100010364(a1 + v19, &v47 - v15, &qword_10093B290, &qword_100798890);
    v20 = *v16;
    v51 = v18;
    sub_1001BBA14(v16 + v18, v10, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
    v21 = *a3;
    v23 = sub_1003644E8(v20);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_23;
    }

    LOBYTE(v7) = v22;
    if (v21[3] >= v26)
    {
      if ((a2 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_7;
    }

    sub_10036CB0C(v26, a2 & 1);
    v27 = *a3;
    v28 = sub_1003644E8(v20);
    if ((v7 & 1) == (v29 & 1))
    {
      v23 = v28;
LABEL_7:
      v30 = v50;
      while (1)
      {
        v50 = v17;
        v31 = *a3;
        if (v7)
        {

          v17 = *(v30 + 72);
          sub_1001BBA88(v10, v31[7] + v17 * v23);
        }

        else
        {
          v31[(v23 >> 6) + 8] |= 1 << v23;
          *(v31[6] + 8 * v23) = v20;
          v17 = *(v30 + 72);
          sub_1001BBA14(v10, v31[7] + v17 * v23, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
          v32 = v31[2];
          v33 = __OFADD__(v32, 1);
          v34 = v32 + 1;
          if (v33)
          {
            goto LABEL_24;
          }

          v31[2] = v34;
        }

        v35 = v50 - 1;
        if (v50 == 1)
        {
          return;
        }

        v7 = v49 + v52 + v48;
        while (1)
        {
          sub_100010364(v7, v16, &qword_10093B290, &qword_100798890);
          v20 = *v16;
          sub_1001BBA14(v16 + v51, v10, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
          v36 = *a3;
          v37 = sub_1003644E8(v20);
          v39 = v36[2];
          v40 = (v38 & 1) == 0;
          v33 = __OFADD__(v39, v40);
          v41 = v39 + v40;
          if (v33)
          {
            break;
          }

          v23 = v38;
          if (v36[3] < v41)
          {
            sub_10036CB0C(v41, 1);
            v42 = *a3;
            v37 = sub_1003644E8(v20);
            if ((v23 & 1) != (v43 & 1))
            {
              goto LABEL_26;
            }
          }

          v44 = *a3;
          if (v23)
          {
            v23 = v37;

            sub_1001BBA88(v10, v44[7] + v17 * v23);
          }

          else
          {
            v44[(v37 >> 6) + 8] |= 1 << v37;
            *(v44[6] + 8 * v37) = v20;
            sub_1001BBA14(v10, v44[7] + v17 * v37, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
            v45 = v44[2];
            v33 = __OFADD__(v45, 1);
            v46 = v45 + 1;
            if (v33)
            {
              goto LABEL_24;
            }

            v44[2] = v46;
          }

          v7 += v52;
          if (!--v35)
          {
            return;
          }
        }

LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v30 = v50;
        sub_1003747E0();
      }
    }

LABEL_26:
    sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }
}

uint64_t sub_1001BAF9C(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100943C60, &unk_100798920);
  result = static _DictionaryStorage.copy(original:)();
  v5 = result;
  v6 = 0;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = result + 64;
  if (v9)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v15 = v12 | (v6 << 6);
      v16 = *(*(a1 + 48) + 8 * v15);
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(v5[6] + 8 * v15) = v16;
      *(v5[7] + 8 * v15) = a2;
      v17 = v5[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        break;
      }

      v5[2] = v19;
      v20 = v16;

      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        return v5;
      }

      v14 = *(a1 + 64 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int sub_1001BB0F0(uint64_t a1, uint64_t a2)
{
  if (__CocoaDictionary.count.getter())
  {
    sub_1000F5104(&unk_100943C60, &unk_100798920);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  v20 = v3;
  __CocoaDictionary.makeIterator()();
  swift_unknownObjectRetain();
  v4 = __CocoaDictionary.Iterator.next()();
  if (v4)
  {
    v5 = v4;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v6 = v5;
    do
    {
      v18 = v6;
      swift_dynamicCast();
      sub_1000060C8(0, &unk_10093F600, REMHashtag_ptr);
      swift_dynamicCast();

      v13 = v3[2];
      if (v3[3] <= v13)
      {
        sub_10036CE68(v13 + 1, 1);
      }

      v3 = v20;
      result = NSObject._rawHashValue(seed:)(v20[5]);
      v8 = v20 + 8;
      v9 = -1 << *(v20 + 32);
      v10 = result & ~v9;
      v11 = v10 >> 6;
      if (((-1 << v10) & ~v20[(v10 >> 6) + 8]) != 0)
      {
        v12 = __clz(__rbit64((-1 << v10) & ~v20[(v10 >> 6) + 8])) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v14 = 0;
        v15 = (63 - v9) >> 6;
        do
        {
          if (++v11 == v15 && (v14 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v16 = v11 == v15;
          if (v11 == v15)
          {
            v11 = 0;
          }

          v14 |= v16;
          v17 = v8[v11];
        }

        while (v17 == -1);
        v12 = __clz(__rbit64(~v17)) + (v11 << 6);
      }

      *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(v20[6] + 8 * v12) = v19;
      *(v20[7] + 8 * v12) = a2;
      ++v20[2];
      v6 = __CocoaDictionary.Iterator.next()();
    }

    while (v6);
  }

  return v3;
}

void *sub_1001BB358(unint64_t a1)
{
  v2 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v38 = &v36 - v4;
  v45 = _swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
LABEL_27:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v41 = a1 & 0xFFFFFFFFFFFFFF8;
      v42 = a1 & 0xC000000000000001;
      v7 = _swiftEmptyDictionarySingleton;
      v37 = xmmword_1007953F0;
      v39 = v5;
      v40 = a1;
      while (1)
      {
        if (v42)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *(v41 + 16))
          {
            goto LABEL_24;
          }

          v9 = *(a1 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v12 = [v9 name];
        if (v12)
        {
          v13 = v12;
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;

          v43 = v14;
          v44 = v16;
          v17 = v38;
          static Locale.current.getter();
          v18 = type metadata accessor for Locale();
          (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
          sub_10013BCF4();
          v19 = StringProtocol.foldedStringForWriting(locale:)();
          v21 = v20;
          sub_1000050A4(v17, &unk_10093F420, &unk_100797AE0);
        }

        else
        {
          v19 = 0;
          v21 = 0xE000000000000000;
        }

        a1 = sub_100005F4C(v19, v21);
        v23 = v7[2];
        v24 = (v22 & 1) == 0;
        v25 = v23 + v24;
        if (__OFADD__(v23, v24))
        {
          goto LABEL_25;
        }

        v26 = v22;
        if (v7[3] < v25)
        {
          sub_10036CE7C(v25, 1);
          v7 = v45;
          v27 = sub_100005F4C(v19, v21);
          if ((v26 & 1) != (v28 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          a1 = v27;
        }

        if (v26)
        {

          v8 = (v7[7] + 8 * a1);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v34 = *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v29 = swift_allocObject();
          *(v29 + 16) = v37;
          *(v29 + 32) = v10;
          v7[(a1 >> 6) + 8] |= 1 << a1;
          v30 = (v7[6] + 16 * a1);
          *v30 = v19;
          v30[1] = v21;
          *(v7[7] + 8 * a1) = v29;
          v31 = v7[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_26;
          }

          v7[2] = v33;
        }

        a1 = v40;
        ++v6;
        if (v11 == v39)
        {
          return v7;
        }
      }
    }
  }

  return _swiftEmptyDictionarySingleton;
}

unint64_t sub_1001BB6DC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 < 0)
  {
    return 0;
  }

  if (__OFADD__(a3, 1))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = String.index(_:offsetBy:limitedBy:)();
  if (v5)
  {
    return 0;
  }

  if (__OFSUB__(a4, 1))
  {
    goto LABEL_10;
  }

  v6 = result;
  result = String.index(_:offsetBy:limitedBy:)();
  if (v7)
  {
    return 0;
  }

  if (result >> 14 >= v6 >> 14)
  {
    return String.subscript.getter();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1001BB7C0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.Metrics(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18[3] = type metadata accessor for Analytics();
  v18[4] = &protocol witness table for Analytics;
  v18[0] = a2;
  *(a3 + 16) = a1;
  *(a3 + 24) = 100;
  sub_10000A87C(v18, v17);
  v10[7] = 0;
  v10[8] = 0;
  v10[6] = 0;
  v11 = *(v7 + 48);
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  sub_10000A87C(v17, (v10 + 1));
  v13 = *(v7 + 44);
  v14 = a1;
  Date.init()();
  sub_1001BB93C();
  v15 = swift_allocError();
  sub_10000607C(v17);
  sub_10000607C(v18);
  *v10 = v15;
  sub_1001BBA14(v10, a3 + OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler7Batcher_metrics, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.Metrics);
  return a3;
}

unint64_t sub_1001BB93C()
{
  result = qword_10093B270;
  if (!qword_10093B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B270);
  }

  return result;
}

uint64_t sub_1001BB9B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001BBA14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001BBA88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001BBAF8()
{
  result = qword_10093B320;
  if (!qword_10093B320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B320);
  }

  return result;
}

uint64_t sub_1001BBB60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001BBBD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1001BBC30(char *a1, char **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v5 = a1;
    v6 = a2[2];
    *(a1 + 1) = a2[1];
    *(a1 + 2) = v6;
    v7 = *(a3 + 24);
    v9 = type metadata accessor for UUID();
    v10 = *(*(v9 - 8) + 16);
    v11 = v4;

    v10(&v5[v7], a2 + v7, v9);
  }

  return v5;
}

uint64_t sub_1001BBD18(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);

  v5 = *(a2 + 24);
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

char *sub_1001BBD94(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v5;
  *(a1 + 2) = *(a2 + 16);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 16);
  v10 = v6;

  v9(&a1[v7], a2 + v7, v8);
  return a1;
}

uint64_t sub_1001BBE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  *(a1 + 8) = *(a2 + 8);
  v9 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v10 = *(a3 + 24);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 24))(a1 + v10, a2 + v10, v11);
  return a1;
}

uint64_t sub_1001BBEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t sub_1001BBF5C(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a2 + 2);
  v8 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 16) = v7;

  v9 = *(a3 + 24);
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 40))(a1 + v9, &a2[v9], v10);
  return a1;
}

uint64_t sub_1001BC018()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1001BC0BC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 2)
  {
    return swift_errorRetain();
  }

  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1001BC0F8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 2)
  {
  }

  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1001BC124(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1001BC0BC(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.AutoConversionError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1001BC0BC(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_1001BC0F8(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.AutoConversionError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_1001BC0F8(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.AutoConversionError(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.AutoConversionError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1001BC29C(uint64_t a1)
{
  if (*(a1 + 16) <= 3u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1001BC2B4(uint64_t result, unsigned int a2)
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

uint64_t sub_1001BC334(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001BC388()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093B418);
  v1 = sub_100006654(v0, qword_10093B418);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001BC450(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_10000F61C(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

void sub_1001BC4B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  swift_getObjectType();
  v5 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  *&v8 = __chkstk_darwin(v5).n128_u64[0];
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = 0;
  v11 = [v2 remObjectIDWithError:{&v34, v8}];
  if (v11)
  {
    v12 = v11;
    v13 = v34;
    v14 = [v3 displayName];
    if (v14)
    {
      v32 = a1;
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v17;
      v31 = v16;

      v18 = REMObjectID.codable.getter();
      v19 = [v3 canonicalName];
      if (v19)
      {
        v20 = v19;
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      v28 = v30;
      v29 = v31;
      *v10 = v18;
      v10[1] = v29;
      v10[2] = v28;
      v10[3] = v21;
      v10[4] = v23;
      (*(v6 + 104))(v10, enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:), v5);

      REMRemindersListDataView.SectionLite.init(type:reminders:)();
    }

    else
    {
      v25 = objc_opt_self();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v27 = String._bridgeToObjectiveC()();
      [v25 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v27];

      swift_willThrow();
    }
  }

  else
  {
    v24 = v34;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

id sub_1001BC748()
{
  v5 = 0;
  v1 = [v0 remObjectIDWithError:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

void sub_1001BC89C(uint64_t a1@<X8>)
{
  v2 = v1;
  v21[1] = a1;
  swift_getObjectType();
  v3 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = __chkstk_darwin(v3).n128_u64[0];
  v8 = (v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = 0;
  v9 = [v1 remObjectIDWithError:{&v22, v6}];
  if (v9)
  {
    v10 = v9;
    v11 = v22;
    v12 = [v2 displayName];
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      *v8 = REMObjectID.codable.getter();
      v8[1] = v14;
      v8[3] = 0;
      v8[4] = 0;
      v8[2] = v16;
      (*(v4 + 104))(v8, enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:), v3);

      REMRemindersListDataView.SectionLite.init(type:reminders:)();
    }

    else
    {
      v18 = objc_opt_self();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v20 = String._bridgeToObjectiveC()();
      [v18 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v20];

      swift_willThrow();
    }
  }

  else
  {
    v17 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void *sub_1001BCB28(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for UUID();
  v82 = *(v6 - 8);
  v7 = v82[8];
  v8 = __chkstk_darwin(v6);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v97 = &v75 - v12;
  v13 = __chkstk_darwin(v11);
  v86 = &v75 - v14;
  v15 = __chkstk_darwin(v13);
  v87 = &v75 - v16;
  __chkstk_darwin(v15);
  v18 = &v75 - v17;
  v19 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v101 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  __chkstk_darwin(v24);
  v105 = &v75 - v26;
  if (a3)
  {
    v107 = &_swiftEmptyDictionarySingleton;
    v95 = *(a1 + 16);
    if (v95)
    {
      v77 = v25;
      v78 = v10;
      v27 = 0;
      v29 = *(v20 + 16);
      v28 = v20 + 16;
      v103 = v29;
      v80 = *(v28 + 64);
      v81 = a1;
      v90 = (v80 + 32) & ~v80;
      v92 = a1 + v90;
      v104 = (v82 + 1);
      v102 = *(v28 + 56);
      v83 = (v82 + 4);
      v98 = a2 + 7;
      v99 = a2;
      v96 = v82 + 2;
      v89 = (v28 + 16);
      v91 = (v28 - 8);
      v30 = _swiftEmptyArrayStorage;
      v79 = xmmword_100791300;
      v85 = a3;
      v84 = v18;
      v93 = v28;
      v94 = v19;
      while (1)
      {
        v103(v105, v92 + v102 * v27, v19);
        v31 = [a3 membershipByMemberIdentifier];
        sub_1000060C8(0, &qword_10093B450, REMMembership_ptr);
        sub_1001BE27C(&qword_10093B410);
        v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v33 = REMRemindersListDataView.ReminderLite.objectID.getter();
        v34 = [v33 uuid];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(v32 + 16) && (v35 = sub_100363F20(v18), (v36 & 1) != 0))
        {
          v37 = *v104;
          v38 = *(*(v32 + 56) + 8 * v35);
          v100 = v37;
          v37(v18, v6);

          v39 = [v38 groupIdentifier];
          if (v39)
          {
            v88 = v38;
            v40 = v87;
            v41 = v86;
            v42 = v39;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v43 = v40;
            (*v83)(v40, v41, v6);
            if (v99[2])
            {
              v44 = v99;
              v45 = v99[5];
              v46 = dispatch thunk of Hashable._rawHashValue(seed:)();
              v47 = -1 << *(v44 + 32);
              v48 = v46 & ~v47;
              if ((*(v98 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48))
              {
                v49 = ~v47;
                v50 = v82[9];
                v51 = v82[2];
                while (1)
                {
                  v52 = v97;
                  v51(v97, v99[6] + v50 * v48, v6);
                  sub_1001BE27C(&qword_10093A3E0);
                  v53 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v100(v52, v6);
                  if (v53)
                  {
                    break;
                  }

                  v48 = (v48 + 1) & v49;
                  if (((*(v98 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
                  {
                    goto LABEL_12;
                  }
                }

                a3 = v85;
                if (v107[2] && (sub_100363F20(v43), (v56 & 1) != 0))
                {
                  v57 = v78;
                  v51(v78, v43, v6);
                  v76 = sub_1002618D8(&v106);
                  v59 = v43;
                  v18 = v84;
                  if (*v58)
                  {
                    v60 = v58;
                    v103(v77, v105, v94);
                    v61 = *v60;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *v60 = v61;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v61 = sub_100365A24(0, v61[2] + 1, 1, v61);
                      *v60 = v61;
                    }

                    v64 = v61[2];
                    v63 = v61[3];
                    if (v64 >= v63 >> 1)
                    {
                      v61 = sub_100365A24(v63 > 1, v64 + 1, 1, v61);
                      *v60 = v61;
                    }

                    v61[2] = v64 + 1;
                    v65 = v61 + v90 + v64 * v102;
                    v19 = v94;
                    (*v89)(v65, v77, v94);
                    (v76)(&v106, 0);

                    v66 = v100;
                    v100(v78, v6);
                    v66(v87, v6);
                    (*v91)(v105, v19);
                  }

                  else
                  {
                    (v76)(&v106, 0);

                    v73 = v100;
                    v100(v57, v6);
                    v73(v59, v6);
                    v19 = v94;
                    (*v91)(v105, v94);
                  }
                }

                else
                {
                  sub_1000F5104(&unk_1009430D0, &qword_10079D4F0);
                  v67 = v90;
                  v68 = swift_allocObject();
                  *(v68 + 16) = v79;
                  v69 = v68 + v67;
                  v70 = v105;
                  v19 = v94;
                  v103(v69, v105, v94);
                  v71 = v107;
                  v72 = swift_isUniquelyReferenced_nonNull_native();
                  v106 = v71;
                  sub_1002C7050(v68, v43, v72);

                  v107 = v106;
                  v100(v43, v6);
                  (*v91)(v70, v19);
                  v18 = v84;
                }

                goto LABEL_19;
              }
            }

LABEL_12:
            v100(v43, v6);

            a3 = v85;
            v18 = v84;
          }

          else
          {
          }
        }

        else
        {

          (*v104)(v18, v6);
        }

        v19 = v94;
        v103(v101, v105, v94);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_100365A24(0, *(v30 + 2) + 1, 1, v30);
        }

        v55 = *(v30 + 2);
        v54 = *(v30 + 3);
        if (v55 >= v54 >> 1)
        {
          v30 = sub_100365A24(v54 > 1, v55 + 1, 1, v30);
        }

        (*v91)(v105, v19);
        *(v30 + 2) = v55 + 1;
        (*v89)(&v30[v90 + v55 * v102], v101, v19);
LABEL_19:
        if (++v27 == v95)
        {

          return v107;
        }
      }
    }

    return &_swiftEmptyDictionarySingleton;
  }

  else
  {

    return sub_10038DB3C(_swiftEmptyArrayStorage);
  }
}

void *sub_1001BD57C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for REMJSONDeserializationError();
  v102 = *(v6 - 8);
  v7 = v102[8];
  __chkstk_darwin(v6);
  v9 = (&v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for UUID();
  v110 = *(v10 - 8);
  v111 = v10;
  v11 = v110[8];
  __chkstk_darwin(v10);
  v108 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v18 = *(v107 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v107);
  v112 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v101 = &v96 - v22;
  v23 = a1;
  v24 = a1[2];
  if (!v24)
  {
    sub_1000F5104(&qword_10093B448, &qword_10079D400);
    v50 = *(v18 + 72);
    v51 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v52 = swift_allocObject();
    *(v52 + 1) = xmmword_100791300;
    (*(v14 + 104))(v17, enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:), v13);

    REMRemindersListDataView.SectionLite.init(type:reminders:)();
    return v52;
  }

  v105 = a2;
  v109 = v18;
  v98 = v14;
  v99 = v17;
  v25 = v23[7];
  v26 = v23[8];
  v104 = v23;
  v106 = (v23 + 4);
  sub_10000F61C(v23 + 4, v25);
  v103 = (*(v26 + 24))(v25, v26);
  v100 = v13;
  if (v103)
  {
    v28 = v27;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v30 = sub_1001A3D08(ObjectType, v28);
    if (v3)
    {
      v97 = 0;
      swift_unknownObjectRelease();
      v118 = v3;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      if (swift_dynamicCast())
      {
        v31 = v102;
        if ((v102[11])(v9, v6) == enum case for REMJSONDeserializationError.notSupported(_:))
        {

          (v31[12])(v9, v6);
          v32 = *v9;
          if (qword_100935B48 != -1)
          {
            swift_once();
          }

          v33 = type metadata accessor for Logger();
          sub_100006654(v33, qword_10093B418);
          swift_unknownObjectRetain();
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.default.getter();
          swift_unknownObjectRelease();
          v36 = os_log_type_enabled(v34, v35);
          v37 = v106;
          if (v36)
          {
            v38 = swift_slowAlloc();
            v102 = swift_slowAlloc();
            v113 = v102;
            *v38 = 136446722;
            v114 = &_s9UtilitiesON_0;
            sub_1000F5104(&qword_10093B440, &unk_100798B58);
            v39 = String.init<A>(describing:)();
            v41 = sub_10000668C(v39, v40, &v113);
            v96 = v32;
            v42 = v41;

            *(v38 + 4) = v42;
            *(v38 + 12) = 2082;
            v43 = swift_getObjectType();
            v114 = (*(v28 + 8))(v43, v28);
            v115 = v44;
            sub_1000F5104(&unk_100939E40, &qword_100791BD0);
            v45 = String.init<A>(describing:)();
            v47 = sub_10000668C(v45, v46, &v113);

            *(v38 + 14) = v47;
            *(v38 + 22) = 2050;
            *(v38 + 24) = v96;
            _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s: Failed to deserialize 'membershipsOfRemindersInSectionsAsData' because current runtime version is lower than minimumSupportedVersion. {parentID: %{public}s, minimumSupportedVersion: %{public}ld}", v38, 0x20u);
            swift_arrayDestroy();
          }

          v48 = v110;
          v3 = v97;

          v49 = 0;
          goto LABEL_22;
        }

        (v31[1])(v9, v6);
      }

      v37 = v106;
      if (qword_100935B48 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      sub_100006654(v55, qword_10093B418);
      swift_unknownObjectRetain();
      swift_errorRetain();
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.fault.getter();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        LODWORD(v96) = v57;
        v59 = v58;
        v102 = swift_slowAlloc();
        v118 = v102;
        *v59 = 136446722;
        v114 = &_s9UtilitiesON_0;
        sub_1000F5104(&qword_10093B440, &unk_100798B58);
        v60 = String.init<A>(describing:)();
        v62 = sub_10000668C(v60, v61, &v118);

        *(v59 + 4) = v62;
        *(v59 + 12) = 2082;
        v63 = swift_getObjectType();
        v114 = (*(v28 + 8))(v63, v28);
        v115 = v64;
        sub_1000F5104(&unk_100939E40, &qword_100791BD0);
        v65 = String.init<A>(describing:)();
        v67 = sub_10000668C(v65, v66, &v118);

        *(v59 + 14) = v67;
        *(v59 + 22) = 2082;
        swift_getErrorValue();
        v68 = Error.rem_errorDescription.getter();
        v70 = sub_10000668C(v68, v69, &v118);

        *(v59 + 24) = v70;
        _os_log_impl(&_mh_execute_header, v56, v96, "%{public}s: Error upon fetching 'membershipsOfRemindersInSections' {parentID: %{public}s, error: %{public}s}", v59, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v49 = 0;
      v48 = v110;
      v3 = v97;
      goto LABEL_22;
    }

    v53 = v30;
    swift_unknownObjectRelease();
  }

  else
  {
    v53 = 0;
  }

  v54 = v53;
  v37 = v106;
  v48 = v110;
  v49 = v53;
LABEL_22:
  v114 = v104;
  sub_1000F5104(&qword_10093B430, &qword_100798B50);
  v71 = sub_1001BE218();
  sub_1001BE27C(&qword_10093B410);
  v72 = Sequence.compactMapToSet<A>(_:)();

  v104 = v49;
  v110 = sub_1001BCB28(v73, v72, v49);
  v102 = v74;
  v118 = _swiftEmptyArrayStorage;
  sub_1002532DC(0, v24, 0);
  v52 = v118;
  v105 = v109 + 32;
  v106 = (v48 + 8);
  do
  {
    if (!v24)
    {
      __break(1u);
LABEL_40:
      v52 = sub_100365A4C(0, v52[2] + 1, 1, v52);
      goto LABEL_35;
    }

    sub_10000A87C(v37, &v114);
    v75 = v116;
    v76 = v117;
    sub_10000F61C(&v114, v116);
    v77 = (*(v76 + 16))(v75, v76);
    if (v3)
    {

      swift_unknownObjectRelease();
      sub_10000607C(&v114);

      return v52;
    }

    v78 = v77;
    v79 = v24;
    v80 = [v77 uuid];
    v81 = v108;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v82 = v110;
    if (v110[2] && (v83 = sub_100363F20(v81), (v84 & 1) != 0))
    {
      v85 = v37;
      v86 = *(v82[7] + 8 * v83);
      v87 = *v106;

      v87(v81, v111);
    }

    else
    {
      v85 = v37;
      (*v106)(v81, v111);
      v86 = _swiftEmptyArrayStorage;
    }

    v89 = v116;
    v88 = v117;
    sub_10000F61C(&v114, v116);
    (*(v88 + 32))(v86, v89, v88);

    sub_10000607C(&v114);
    v118 = v52;
    v91 = v52[2];
    v90 = v52[3];
    if (v91 >= v90 >> 1)
    {
      sub_1002532DC(v90 > 1, v91 + 1, 1);
      v52 = v118;
    }

    v52[2] = v91 + 1;
    v48 = (*(v109 + 80) + 32) & ~*(v109 + 80);
    v49 = *(v109 + 72);
    v71 = *(v109 + 32);
    v71(v52 + v48 + v49 * v91, v112, v107);
    v37 = v85 + 40;
    v24 = v79 - 1;
  }

  while (v79 != 1);
  (*(v98 + 104))(v99, enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:), v100);

  v24 = v101;
  REMRemindersListDataView.SectionLite.init(type:reminders:)();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_35:
  v94 = v52[2];
  v93 = v52[3];
  if (v94 >= v93 >> 1)
  {
    v52 = sub_100365A4C(v93 > 1, v94 + 1, 1, v52);
  }

  swift_unknownObjectRelease();
  v52[2] = v94 + 1;
  v71(v52 + v48 + v94 * v49, v24, v107);
  return v52;
}

unint64_t sub_1001BE218()
{
  result = qword_10093B438;
  if (!qword_10093B438)
  {
    sub_1000F514C(&qword_10093B430, &qword_100798B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B438);
  }

  return result;
}

uint64_t sub_1001BE27C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001BE2C0(uint64_t a1, void *a2)
{
  v2 = qword_1009365A8;
  v3 = a2;
  if (v2 != -1)
  {
    swift_once();
  }

  type metadata accessor for REMCDListSection();
  v4 = sub_100597524();
  sub_100597980();
  v5 = sub_100596AB8(v3, 1u);
  v6 = [objc_allocWithZone(NSFetchRequest) init];
  v7 = [swift_getObjCClassFromMetadata() entity];
  [v6 setEntity:v7];

  [v6 setAffectedStores:0];
  [v6 setPredicate:v5];

  sub_10003450C(v4);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 setPropertiesToFetch:isa];

  v9 = Array._bridgeToObjectiveC()().super.isa;
  [v6 setRelationshipKeyPathsForPrefetching:v9];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v10 = Array._bridgeToObjectiveC()().super.isa;
  [v6 setSortDescriptors:v10];

  v11 = NSManagedObjectContext.fetch<A>(_:)();

  return v11;
}

uint64_t sub_1001BE4D4(uint64_t a1, void *a2)
{
  v2 = qword_100935D60;
  v3 = a2;
  if (v2 != -1)
  {
    swift_once();
  }

  type metadata accessor for REMCDSmartListSection();
  v4 = sub_10024C42C();
  sub_10024C888();
  v5 = sub_10024B964(v3, 1u);
  v6 = [objc_allocWithZone(NSFetchRequest) init];
  v7 = [swift_getObjCClassFromMetadata() entity];
  [v6 setEntity:v7];

  [v6 setAffectedStores:0];
  [v6 setPredicate:v5];

  sub_10003450C(v4);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 setPropertiesToFetch:isa];

  v9 = Array._bridgeToObjectiveC()().super.isa;
  [v6 setRelationshipKeyPathsForPrefetching:v9];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v10 = Array._bridgeToObjectiveC()().super.isa;
  [v6 setSortDescriptors:v10];

  v11 = NSManagedObjectContext.fetch<A>(_:)();

  return v11;
}

uint64_t sub_1001BE718()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093B458);
  v1 = sub_100006654(v0, qword_10093B458);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001BE7E0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1001BE840(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v31 = a3;
  v32 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v13 = *(v33 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v33);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_10093B458);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v30 = v16;
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "XPCSyncInterface.RestartCloudKitSync: Requested Restart CloudKit sync", v20, 2u);
    v16 = v30;
  }

  v21 = *&v5[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_queue];
  v22 = swift_allocObject();
  v23 = v31;
  v24 = v32;
  *(v22 + 16) = a1;
  *(v22 + 24) = v23;
  *(v22 + 32) = v24;
  *(v22 + 40) = v5;
  *(v22 + 48) = a2 & 1;
  aBlock[4] = sub_1001C6838;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E9018;
  v25 = _Block_copy(aBlock);
  v26 = a1;

  v27 = v5;
  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v33);
}

void sub_1001BEBD0(void *a1, void (*a2)(id), void *a3, char *a4, char a5)
{
  v9 = a1;
  v10 = _sSo24ICCloudContextSyncReasona7reminddE03xpcc9InterfacecD0ABSgSo010REMXPCSyncgcD0a_tcfC_0(v9);
  if (v10)
  {
    v11 = v10;
    if (a5)
    {
      v12 = qword_100935B50;
      v13 = v9;
      v14 = a4;
      swift_retain_n();
      v15 = v11;
      v16 = v13;
      v17 = v14;
      v49 = v15;
      if (v12 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100006654(v18, qword_10093B458);
      v19 = v16;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v50 = v23;
        *v22 = 136446210;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = sub_10000668C(v24, v25, &v50);

        *(v22 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v20, v21, "XPCSyncInterface.RestartCloudKitSync: Bypassed throttler and restart CloudKit sync now {reason: %{public}s}", v22, 0xCu);
        sub_10000607C(v23);
      }

      sub_1001BF0FC(v19, v17, a2, a3, v49);
    }

    else
    {
      v40 = *&a4[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_cloudKitThrottler];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;
      v44 = v9;
      v45 = a4;
      swift_retain_n();
      v46 = v11;
      v47 = v44;
      v48 = v45;
      v49 = v46;
      sub_1004C3B48(v41, v43, v40, v47, v48, a2, a3, v49);
    }
  }

  else
  {
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100006654(v27, qword_10093B458);
    v28 = v9;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v50 = v32;
      *v31 = 136315138;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = sub_10000668C(v33, v34, &v50);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "XPCSyncInterface.RestartCloudKitSync: Unsupported sync reason - %s", v31, 0xCu);
      sub_10000607C(v32);
    }

    v36 = objc_opt_self();
    v50 = 0;
    v51 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v50 = 0xD00000000000001ALL;
    v51 = 0x80000001007EF8C0;
    v37._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    String.append(_:)(v37);

    v38 = String._bridgeToObjectiveC()();

    v39 = [v36 internalErrorWithDebugDescription:v38];

    v49 = v39;
    a2(v39);
  }
}

void sub_1001BF0FC(void *a1, uint64_t a2, void (*a3)(id), uint64_t a4, void *a5)
{
  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_10093B458);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  v34 = v11;
  if (os_log_type_enabled(v12, v13))
  {
    v33 = a4;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136446210;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = a2;
    v19 = sub_10000668C(v16, v17, aBlock);

    *(v14 + 4) = v19;
    a2 = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "XPCSyncInterface.RestartCloudKitSync: Restart CloudKit sync {reason: %{public}s}", v14, 0xCu);
    sub_10000607C(v15);

    a4 = v33;
  }

  v20 = [*(a2 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_storeController) cloudContext];
  if (v20)
  {
    v21 = v20;
    v22 = swift_allocObject();
    v22[2] = v34;
    v22[3] = v21;
    v22[4] = a5;
    v22[5] = a3;
    v22[6] = a4;
    aBlock[4] = sub_1001C6848;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008E9068;
    v23 = _Block_copy(aBlock);
    v24 = v34;
    v25 = v21;
    v26 = a5;

    [v25 cancelEverythingWithCompletionHandler:v23];
    _Block_release(v23);
  }

  else
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "XPCSyncInterface.RestartCloudKitSync: CloudContext is nil -- can't restart cloudkit sync", v29, 2u);
    }

    v30 = objc_opt_self();
    v31 = String._bridgeToObjectiveC()();
    v32 = [v30 internalErrorWithDebugDescription:v31];

    v35 = v32;
    a3(v32);
  }
}

void sub_1001BF498(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_10093B458);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21[0] = v15;
    *v14 = 136446210;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = sub_10000668C(v16, v17, v21);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "XPCSyncInterface.RestartCloudKitSync: Done cancelling works in ICCC and now calls updateCloudContextStateWithSyncOption {reason: %{public}s}", v14, 0xCu);
    sub_10000607C(v15);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v21[4] = sub_1001C6878;
  v21[5] = v19;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_1001BF6C0;
  v21[3] = &unk_1008E90B8;
  v20 = _Block_copy(v21);

  [a2 updateCloudContextStateWithSyncOption:1 syncReason:a3 withCompletionHandler:v20];
  _Block_release(v20);
}

void sub_1001BF6C0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, v7);
}

uint64_t sub_1001BF7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a3;
  v31 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v13 = *(v32 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v32);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_10093B458);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29 = v16;
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Delete Application data from CloudKit", v20, 2u);
    v16 = v29;
  }

  v21 = *&v5[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_queue];
  v22 = swift_allocObject();
  v23 = v30;
  v24 = v31;
  v22[2] = v5;
  v22[3] = v23;
  v22[4] = a4;
  v22[5] = a1;
  v22[6] = v24;
  aBlock[4] = sub_1001C6808;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E8EB0;
  v25 = _Block_copy(aBlock);
  v26 = v5;

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v32);
}

void sub_1001BFB78(uint64_t a1, void (*a2)(id), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_storeController);
  v10 = [v9 cloudContext];
  if (v10)
  {
    v11 = v10;
    v12 = [v9 accountUtils];
    if (v12)
    {
      v13 = v12;
      v14 = String._bridgeToObjectiveC()();
      v15 = swift_allocObject();
      v15[2] = a2;
      v15[3] = a3;
      v15[4] = v13;
      v15[5] = a4;
      v15[6] = a5;
      aBlock[4] = sub_1001C6820;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100042968;
      aBlock[3] = &unk_1008E8F00;
      v16 = _Block_copy(aBlock);

      [v11 deleteAllApplicationDataFromServerWithAccountID:v14 completion:v16];
      _Block_release(v16);

      return;
    }

    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_10093B458);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Missing account utils -- can't purge migration state cache", v26, 2u);
    }

    v27 = objc_opt_self();
    v28 = String._bridgeToObjectiveC()();
    v29 = [v27 internalErrorWithDebugDescription:v28];

    v30 = v29;
    a2(v29);
  }

  else
  {
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006654(v17, qword_10093B458);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "CloudContext is nil -- can't delete server data", v20, 2u);
    }

    v21 = objc_opt_self();
    v22 = String._bridgeToObjectiveC()();
    v30 = [v21 internalErrorWithDebugDescription:v22];

    a2(v30);
  }
}

uint64_t sub_1001BFF70(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_10093B458);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136315138;
      swift_errorRetain();
      sub_1000F5104(&qword_10093B608, &unk_1007B20D0);
      v14 = String.init<A>(describing:)();
      v16 = sub_10000668C(v14, v15, &v21);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to delete application data from server {error: %s}", v12, 0xCu);
      sub_10000607C(v13);
    }

    return a2(a1);
  }

  else
  {
    v20 = swift_allocObject();
    *(v20 + 16) = a2;
    *(v20 + 24) = a3;

    sub_1006C1180(a5, a6, sub_1001C6830, v20);
  }
}

uint64_t sub_1001C0194(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006654(v4, qword_10093B458);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      v9 = String.init<A>(describing:)();
      v11 = sub_10000668C(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to purge migration state cache {error: %s}", v7, 0xCu);
      sub_10000607C(v8);
    }

    else
    {
    }
  }

  return a2(a1);
}

uint64_t sub_1001C0354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a1;
  v31 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v13 = *(v32 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v32);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_10093B458);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29 = v16;
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Reset migration state", v20, 2u);
    v16 = v29;
  }

  v21 = *&v5[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_queue];
  v22 = swift_allocObject();
  v23 = v30;
  v24 = v31;
  v22[2] = v5;
  v22[3] = v23;
  v22[4] = a2;
  v22[5] = a3;
  v22[6] = v24;
  aBlock[4] = sub_1001C67E4;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E8E38;
  v25 = _Block_copy(aBlock);

  v26 = v5;
  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v32);
}

void sub_1001C06E4(char *a1, uint64_t a2, unint64_t a3, void (*a4)(id), uint64_t a5)
{
  v10 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v52 - v12;
  sub_10031BE94();
  v14 = *&a1[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_storeController];
  sub_10031C3BC(v14);
  if (a3)
  {
    v53 = a4;
    v54 = a5;
  }

  else
  {
    v15 = [objc_opt_self() sharedInstance];
    v16 = [v15 unsafeUntilSystemReady_primaryICloudACAccount];

    if (!v16)
    {
      if (qword_100935B50 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_100006654(v42, qword_10093B458);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "deleteApplicationDataFromCloudKit: accountIdentifier is nil", v45, 2u);
      }

      v46 = objc_opt_self();
      v47 = String._bridgeToObjectiveC()();
      v52 = [v46 internalErrorWithDebugDescription:v47];

      a4(v52);
      v48 = v52;

      return;
    }

    v17 = [v16 identifier];
    if (!v17)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    v18 = v17;
    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v19;

    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006654(v20, qword_10093B458);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v53 = a4;
    v54 = a5;
    if (v23)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Primary account found - calling unmigration service for the account", v24, 2u);
    }
  }

  v25 = String._bridgeToObjectiveC()();
  v26 = [v14 newBackgroundContextWithAuthor:v25];

  __chkstk_darwin(v27);
  *(&v52 - 4) = a2;
  *(&v52 - 3) = a3;
  *(&v52 - 2) = v26;
  NSManagedObjectContext.rem_performAndWait<A>(_:)();
  if (v55 == 1)
  {
    UUID.init(uuidString:)();
    v28 = type metadata accessor for UUID();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v13, 1, v28) != 1)
    {

      v30 = objc_opt_self();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v29 + 8))(v13, v28);
      v32 = [v30 objectIDWithUUID:isa];

      sub_10031C72C(v32, v14);
      v33 = swift_allocObject();
      v33[2] = v53;
      v33[3] = v54;
      v33[4] = a1;
      v33[5] = v32;

      v34 = a1;
      v35 = v32;
      sub_100312738(sub_1001C67FC, v33);

      return;
    }

    goto LABEL_27;
  }

  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_100006654(v36, qword_10093B458);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v55 = v40;
    *v39 = 136315138;
    v41 = sub_10000668C(a2, a3, &v55);

    *(v39 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v37, v38, "deleteApplicationDataFromCloudKit: accountIdentifier { %s } is not from CloudKit account", v39, 0xCu);
    sub_10000607C(v40);
  }

  else
  {
  }

  v49 = objc_opt_self();
  v50 = String._bridgeToObjectiveC()();
  v51 = [v49 internalErrorWithDebugDescription:v50];

  v53(v51);
}

uint64_t sub_1001C0FF8(char a1, void *a2, void (*a3)(id), uint64_t a4, double a5, uint64_t a6, void *a7)
{
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_10093B458);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = a5;
      _os_log_impl(&_mh_execute_header, v19, v20, "Server unmigration succeed {timeElapsed: %f}", v21, 0xCu);
    }

    v22 = [a7 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = UUID.uuidString.getter();
    v25 = v24;
    (*(v14 + 8))(v17, v13);
    sub_1001BF7E8(v23, v25, a3, a4);
  }

  else
  {
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100006654(v27, qword_10093B458);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to unmigrate account - server returned error", v30, 2u);
    }

    if (a2)
    {
      v31 = a2;
    }

    else
    {
      v32 = objc_opt_self();
      v33 = String._bridgeToObjectiveC()();
      v31 = [v32 internalErrorWithDebugDescription:v33];
    }

    swift_errorRetain();
    a3(v31);
  }
}

uint64_t sub_1001C1394(void *a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v24[0] = a4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v15 = *(v25 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v25);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *&v5[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_queue];
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v5;
  *(v19 + 32) = a2;
  *(v19 + 33) = a3;
  *(v19 + 40) = v24[0];
  *(v19 + 48) = a5;
  aBlock[4] = sub_1001C67A8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E8CA8;
  v20 = _Block_copy(aBlock);
  v21 = a1;
  v22 = v5;

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v25);
}

uint64_t sub_1001C1638(void *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v112 = a6;
  v111 = a5;
  v108 = a4;
  v107 = a3;
  v119 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v116 = *(v7 - 8);
  v117 = v7;
  v8 = *(v116 + 64);
  __chkstk_darwin(v7);
  v114 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for DispatchQoS();
  v113 = *(v115 - 8);
  v10 = *(v113 + 64);
  __chkstk_darwin(v115);
  v110 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v100 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v105 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v100 - v21;
  v109 = swift_allocObject();
  *(v109 + 16) = 0;
  v106 = swift_allocObject();
  *(v106 + 16) = 0;
  v118 = dispatch_group_create();
  v23 = [objc_opt_self() sharedInstance];
  v24 = [v23 accountStore];

  v120 = a1;
  v25 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uuidString.getter();
  v26 = *(v17 + 8);
  v26(v22, v16);
  v27 = String._bridgeToObjectiveC()();

  v28 = [v24 accountWithIdentifier:v27];

  if (!v28)
  {
    __break(1u);
LABEL_31:
    __break(1u);
  }

  v29 = [v28 displayAccount];

  if (!v29)
  {
    goto LABEL_31;
  }

  v30 = [v29 identifier];

  v31 = &OBJC_INSTANCE_METHODS__TtP7remindd28RDAccountInitializerObserver_;
  v32 = v120;
  if (!v30)
  {
LABEL_6:
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_10093B458);
    v34 = v32;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    v37 = os_log_type_enabled(v35, v36);
    v38 = v119;
    if (v37)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138543362;
      *(v39 + 4) = v34;
      *v40 = v34;
      v41 = v34;
      _os_log_impl(&_mh_execute_header, v35, v36, "migrateICloudCalDavToCloudKit: Couldn't determine the display account ID for setting flag didChooseToMigrateLocally {accountID: %{public}@}", v39, 0xCu);
      sub_1000050A4(v40, &unk_100938E70, &unk_100797230);
      v31 = &OBJC_INSTANCE_METHODS__TtP7remindd28RDAccountInitializerObserver_;
    }

    goto LABEL_29;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    sub_1000050A4(v15, &unk_100939D90, "8\n\r");
    goto LABEL_6;
  }

  v104 = v26;
  v42 = v105;
  v43 = (*(v17 + 32))(v105, v15, v16);
  v38 = v119;
  v44 = *(v119 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_storeProvider + 8);
  v56 = (*(v119 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_storeProvider))(v43);
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v59 = [ObjCClassFromMetadata objectIDWithUUID:isa];

  aBlock = 0;
  v60 = v56;
  v61 = [v56 fetchAccountWithObjectID:v59 error:&aBlock];

  if (v61)
  {
    v103 = v60;
    v62 = aBlock;
    if (([v61 didChooseToMigrateLocally]& 1) != 0)
    {
      if (qword_100935B50 != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      sub_100006654(v63, qword_10093B458);
      v64 = v30;
      v65 = v32;
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();

      LODWORD(v102) = v67;
      v68 = v66;
      v69 = os_log_type_enabled(v66, v67);
      v70 = v104;
      if (v69)
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *v71 = 138543618;
        *(v71 + 4) = v64;
        *(v71 + 12) = 2114;
        *(v71 + 14) = v65;
        v101 = v72;
        *v72 = v30;
        v72[1] = v65;
        v73 = v64;
        v74 = v65;
        _os_log_impl(&_mh_execute_header, v68, v102, "migrateICloudCalDavToCloudKit: Account flag didChooseToMigrateLocally is already true {displayACAccountID: %{public}@, accountID: %{public}@}", v71, 0x16u);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        v64 = v103;
      }

      else
      {
        v73 = v66;
        v68 = v61;
        v61 = v103;
      }

      v85 = v105;
    }

    else
    {
      v76 = objc_allocWithZone(REMSaveRequest);
      v77 = [v76 initWithStore:v103];
      v102 = [v77 updateAccount:v61];
      [v102 setDidChooseToMigrateLocally:1];
      v78 = v118;
      dispatch_group_enter(v118);
      v101 = *(v38 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_queue);
      v79 = swift_allocObject();
      v79[2] = v30;
      v79[3] = v32;
      v79[4] = v78;
      v126 = sub_1001C67D8;
      v127 = v79;
      aBlock = _NSConcreteStackBlock;
      v123 = 1107296256;
      v124 = sub_100042968;
      v125 = &unk_1008E8DC0;
      v80 = v32;
      v81 = _Block_copy(&aBlock);
      v82 = v30;
      v83 = v80;
      v84 = v78;

      [v77 saveWithQueue:v101 completion:v81];
      v68 = v77;
      _Block_release(v81);

      v73 = v103;
      v64 = v61;
      v61 = v102;
      v85 = v105;
      v70 = v104;
    }

    v70(v85, v16);
    v32 = v120;
  }

  else
  {
    v75 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v104(v42, v16);
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100006654(v45, qword_10093B458);
    v46 = v32;
    swift_errorRetain();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      aBlock = v51;
      *v49 = 138543618;
      *(v49 + 4) = v46;
      *v50 = v46;
      *(v49 + 12) = 2082;
      swift_getErrorValue();
      v52 = v46;
      v38 = v119;
      v53 = Error.rem_errorDescription.getter();
      v55 = sub_10000668C(v53, v54, &aBlock);

      *(v49 + 14) = v55;
      v32 = v120;
      _os_log_impl(&_mh_execute_header, v47, v48, "migrateICloudCalDavToCloudKit: Failed to set flag didChooseToMigrateLocally before migration {accountID: %{public}@, error: %{public}s}", v49, 0x16u);
      sub_1000050A4(v50, &unk_100938E70, &unk_100797230);

      sub_10000607C(v51);
    }

    else
    {
    }
  }

  v31 = &OBJC_INSTANCE_METHODS__TtP7remindd28RDAccountInitializerObserver_;
LABEL_29:
  sub_10031C72C(v32, *(v38 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_storeController));
  v120 = v86;
  v87 = v118;
  dispatch_group_enter(v118);
  v88 = swift_allocObject();
  v89 = v109;
  v90 = v106;
  v88[2] = v109;
  v88[3] = v90;
  v88[4] = v87;
  v91 = v87;

  sub_100312C34(v107 & 1, v108 & 1, sub_1001C67BC, v88);

  v92 = *(v38 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_queue);
  v93 = swift_allocObject();
  v94 = v112;
  v93[2] = v111;
  v93[3] = v94;
  v93[4] = v89;
  v93[5] = v90;
  v126 = sub_1001C67CC;
  v127 = v93;
  aBlock = _NSConcreteStackBlock;
  v123 = v31[87];
  v124 = sub_100019200;
  v125 = &unk_1008E8D70;
  v95 = _Block_copy(&aBlock);

  v96 = v110;
  static DispatchQoS.unspecified.getter();
  v121 = _swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  v97 = v114;
  v98 = v117;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v95);

  (*(v116 + 8))(v97, v98);
  (*(v113 + 8))(v96, v115);
}

void sub_1001C241C(uint64_t a1, void *a2, void *a3, NSObject *a4)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_10093B458);
    swift_errorRetain();
    v8 = a2;
    v9 = a3;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v10, v11))
    {

      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v12 = 138543874;
    *(v12 + 4) = v8;
    *(v12 + 12) = 2114;
    *(v12 + 14) = v9;
    *v13 = v8;
    v13[1] = v9;
    *(v12 + 22) = 2082;
    swift_errorRetain();
    v15 = v8;
    v16 = v9;
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    v17 = String.init<A>(describing:)();
    v19 = sub_10000668C(v17, v18, &v28);

    *(v12 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "migrateICloudCalDavToCloudKit: Failed to save flag didChooseToMigrateLocally before migration {displayACAccountID: %{public}@, accountID: %{public}@, error: %{public}s}", v12, 0x20u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    sub_10000607C(v14);
  }

  else
  {
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006654(v20, qword_10093B458);
    v21 = a2;
    v22 = a3;
    v10 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543618;
      *(v24 + 4) = v21;
      *(v24 + 12) = 2114;
      *(v24 + 14) = v22;
      *v25 = v21;
      v25[1] = v22;
      v26 = v21;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, v10, v23, "migrateICloudCalDavToCloudKit: Saved flag didChooseToMigrateLocally before migration {displayACAccountID: %{public}@, accountID: %{public}@}", v24, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
    }
  }

LABEL_12:
  dispatch_group_leave(a4);
}

void sub_1001C2790(void *a1, char a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  if (a2)
  {
    swift_beginAccess();
    v8 = *(a4 + 16);
    *(a4 + 16) = a1;
    swift_errorRetain();
  }

  else
  {
    swift_beginAccess();
    v10 = *(a3 + 16);
    *(a3 + 16) = a1;
    v11 = a1;
  }

  dispatch_group_leave(a5);
}

void sub_1001C282C(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a3 + 16);
  swift_beginAccess();
  v8 = *(a4 + 16);
  v9 = v7;
  swift_errorRetain();
  a1(v7, v8);
}

uint64_t sub_1001C2920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v22[1] = *&v4[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_queue];
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = v4;
  v18[5] = a3;
  v18[6] = a4;
  aBlock[4] = sub_1001C671C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E8C08;
  v19 = _Block_copy(aBlock);

  v20 = v4;

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v23);
}

void sub_1001C2BBC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, id), uint64_t a5)
{
  if (a2)
  {

LABEL_10:
    v15 = objc_opt_self();
    v16 = String._bridgeToObjectiveC()();

    v17 = [v15 newCloudContainerForAccountID:v16];

    v18 = [v17 privateCloudDatabase];
    sub_1000060C8(0, &qword_10093B610, CKQuery_ptr);
    v19 = [objc_opt_self() predicateWithValue:1];
    v20._countAndFlagsBits = 0x6F6974617267694DLL;
    v20._object = 0xEE0065686361436ELL;
    isa = CKQuery.init(recordType:predicate:)(v20, v19).super.isa;
    v22 = [objc_allocWithZone(CKRecordZoneID) initWithZoneName:@"RemindersMigration" ownerName:CKCurrentUserDefaultName databaseScope:2];
    v23 = swift_allocObject();
    *(v23 + 16) = a4;
    *(v23 + 24) = a5;
    v24 = v22;

    CKDatabase.fetch(withQuery:inZoneWith:desiredKeys:resultsLimit:completionHandler:)();

    return;
  }

  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 unsafeUntilSystemReady_primaryICloudACAccount];

  if (v8)
  {
    v9 = [v8 identifier];
    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_10093B458);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Use primary account as default for debug downloading migration cache", v14, 2u);
    }

    goto LABEL_10;
  }

  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100006654(v25, qword_10093B458);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "debugDownloadMigrationCache: accountIdentifier is nil", v28, 2u);
  }

  v29 = objc_opt_self();
  v30 = String._bridgeToObjectiveC()();
  v31 = [v29 internalErrorWithDebugDescription:v30];

  a4(0, v31);
}

void sub_1001C3030(uint64_t a1, uint64_t a2, char a3, void (*a4)(void *, id))
{
  if (a3)
  {
    v6 = objc_opt_self();
    _StringGuts.grow(_:)(39);

    swift_getErrorValue();
    v7._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v7);

    v8 = String._bridgeToObjectiveC()();

    v9 = [v6 internalErrorWithDebugDescription:v8];

    a4(0, v9);
    return;
  }

  v10 = sub_10038F794(_swiftEmptyArrayStorage);
  v11 = *(a1 + 16);
  if (!v11)
  {
    v12 = _swiftEmptyDictionarySingleton;
LABEL_36:
    if (v12[2])
    {

      v64 = objc_opt_self();
      _StringGuts.grow(_:)(39);

      sub_1000060C8(0, &unk_100938CD0, CKRecordID_ptr);
      sub_1001C6740();
      v65 = Dictionary.description.getter();
      v67 = v66;

      v68._countAndFlagsBits = v65;
      v68._object = v67;
      String.append(_:)(v68);

      v69 = String._bridgeToObjectiveC()();

      v70 = [v64 internalErrorWithDebugDescription:v69];

      a4(0, v70);
    }

    else
    {

      a4(v10, 0);
    }

    return;
  }

  v12 = _swiftEmptyDictionarySingleton;
  v13 = (a1 + 48);
  while (1)
  {
    v17 = *(v13 - 2);
    v18 = *(v13 - 1);
    if (*v13)
    {
      break;
    }

    v73 = v17;
    sub_100066F20(v18, 0);
    v35 = [v18 recordID];
    v36 = [v35 recordName];

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
    CKRecordKeyValueSetting.subscript.getter();
    if (*(&v75 + 1) >> 60 == 15)
    {
      v40 = sub_100005F4C(v37, v39);
      v42 = v41;

      if (v42)
      {
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_100374E40();
        }

        v43 = *(v10[6] + 16 * v40 + 8);

        sub_10001BBA0(*(v10[7] + 16 * v40), *(v10[7] + 16 * v40 + 8));
        sub_1003328B8(v40, v10);
      }

      goto LABEL_6;
    }

    v44 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v10;
    v47 = sub_100005F4C(v37, v39);
    v48 = v10;
    v49 = v10[2];
    v50 = (v46 & 1) == 0;
    v51 = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      goto LABEL_40;
    }

    v52 = v46;
    if (v48[3] >= v51)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v12 = v44;
        if (v46)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_100374E40();
        v12 = v44;
        if (v52)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_10036D518(v51, isUniquelyReferenced_nonNull_native);
      v53 = sub_100005F4C(v37, v39);
      if ((v52 & 1) != (v54 & 1))
      {
        goto LABEL_44;
      }

      v47 = v53;
      v12 = v44;
      if (v52)
      {
LABEL_5:

        v10 = v74;
        v14 = (v74[7] + 16 * v47);
        v15 = *v14;
        v16 = v14[1];
        *v14 = v75;
        sub_10001BBA0(v15, v16);
LABEL_6:
        sub_100067078(v18, 0);

        goto LABEL_7;
      }
    }

    v10 = v74;
    v74[(v47 >> 6) + 8] |= 1 << v47;
    v60 = (v74[6] + 16 * v47);
    *v60 = v37;
    v60[1] = v39;
    *(v74[7] + 16 * v47) = v75;

    sub_100067078(v18, 0);
    v61 = v74[2];
    v31 = __OFADD__(v61, 1);
    v62 = v61 + 1;
    if (v31)
    {
      goto LABEL_42;
    }

    v74[2] = v62;
LABEL_7:
    v13 += 24;
    if (!--v11)
    {
      goto LABEL_36;
    }
  }

  v72 = v11;
  v19 = *(v13 - 1);
  v20 = v10;
  swift_getErrorValue();
  v21 = v17;
  v22 = v19;
  sub_100066F20(v19, 1);
  v23 = Error.localizedDescription.getter();
  v25 = v24;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  *&v75 = v12;
  v27 = sub_100364538(v21);
  v29 = v12[2];
  v30 = (v28 & 1) == 0;
  v31 = __OFADD__(v29, v30);
  v32 = v29 + v30;
  if (!v31)
  {
    v33 = v28;
    if (v12[3] >= v32)
    {
      if ((v26 & 1) == 0)
      {
        v63 = v27;
        sub_100374CD0();
        v27 = v63;
      }
    }

    else
    {
      sub_10036D294(v32, v26);
      v27 = sub_100364538(v21);
      if ((v33 & 1) != (v34 & 1))
      {
        goto LABEL_43;
      }
    }

    v10 = v20;
    if (v33)
    {
      v55 = (v12[7] + 16 * v27);
      v56 = v55[1];
      *v55 = v23;
      v55[1] = v25;

      sub_100067078(v22, 1);

      v11 = v72;
    }

    else
    {
      v12[(v27 >> 6) + 8] |= 1 << v27;
      *(v12[6] + 8 * v27) = v21;
      v57 = (v12[7] + 16 * v27);
      *v57 = v23;
      v57[1] = v25;
      sub_100067078(v22, 1);
      v58 = v12[2];
      v31 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      v11 = v72;
      if (v31)
      {
        goto LABEL_41;
      }

      v12[2] = v59;
    }

    goto LABEL_7;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  sub_1000060C8(0, &unk_100938CD0, CKRecordID_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_44:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1001C3734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

uint64_t sub_1001C37DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a3;
  v31 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v13 = *(v32 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v32);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_10093B458);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29 = v16;
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Manual fetch user record", v20, 2u);
    v16 = v29;
  }

  v21 = *&v5[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_queue];
  v22 = swift_allocObject();
  v23 = v30;
  v24 = v31;
  v22[2] = v5;
  v22[3] = v23;
  v22[4] = v24;
  v22[5] = a1;
  v22[6] = a2;
  aBlock[4] = sub_1001C66D4;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E8B40;
  v25 = _Block_copy(aBlock);

  v26 = v5;

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v32);
}

void sub_1001C3B6C(uint64_t a1, void (*a2)(void, id), uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = *(a1 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_storeController);
  v10 = [v9 cloudContext];
  if (v10)
  {
    v48 = v10;
    if (a5)
    {

LABEL_19:
      v26 = String._bridgeToObjectiveC()();
      v27 = [v9 newBackgroundContextWithAuthor:v26];

      __chkstk_darwin(v28);
      NSManagedObjectContext.rem_performAndWait<A>(_:)();
      if (aBlock == 1)
      {
        v29 = String._bridgeToObjectiveC()();

        v30 = swift_allocObject();
        *(v30 + 16) = a2;
        *(v30 + 24) = a3;
        v53 = sub_1001C66EC;
        v54 = v30;
        aBlock = _NSConcreteStackBlock;
        v50 = 1107296256;
        v51 = sub_10016AC08;
        v52 = &unk_1008E8B90;
        v31 = _Block_copy(&aBlock);

        [v48 fetchUserRecordWithAccountID:v29 completionHandler:v31];

        _Block_release(v31);
      }

      else
      {
        if (qword_100935B50 != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        sub_100006654(v32, qword_10093B458);

        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          aBlock = v36;
          *v35 = 136315138;
          *(v35 + 4) = sub_10000668C(a4, a5, &aBlock);
          _os_log_impl(&_mh_execute_header, v33, v34, "fetchUserRecord: accountIdentifier { %s } is not from CloudKit account", v35, 0xCu);
          sub_10000607C(v36);
        }

        v37 = objc_opt_self();
        aBlock = 0;
        v50 = 0xE000000000000000;
        _StringGuts.grow(_:)(33);

        aBlock = a4;
        v50 = a5;
        v38._countAndFlagsBits = 0xD00000000000001FLL;
        v38._object = 0x80000001007EE110;
        String.append(_:)(v38);
        v39 = String._bridgeToObjectiveC()();

        v40 = [v37 internalErrorWithDebugDescription:v39];

        a2(0, v40);
      }

      return;
    }

    v17 = [objc_opt_self() sharedInstance];
    v18 = [v17 unsafeUntilSystemReady_primaryICloudACAccount];

    if (v18)
    {
      v19 = [v18 identifier];
      if (!v19)
      {
        __break(1u);
        return;
      }

      v20 = v19;
      a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a5 = v21;

      if (qword_100935B50 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100006654(v22, qword_10093B458);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Use primary account as default for fetching user record", v25, 2u);
      }

      goto LABEL_19;
    }

    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100006654(v41, qword_10093B458);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "fetchUserRecord: accountIdentifier is nil", v44, 2u);
    }

    v45 = objc_opt_self();
    v46 = String._bridgeToObjectiveC()();
    v47 = [v45 internalErrorWithDebugDescription:v46];

    a2(0, v47);
  }

  else
  {
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_10093B458);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "CloudContext is nil -- can't fetch user record", v14, 2u);
    }

    v15 = objc_opt_self();
    v16 = String._bridgeToObjectiveC()();
    v48 = [v15 internalErrorWithDebugDescription:v16];

    a2(0, v48);
  }
}

uint64_t sub_1001C456C(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  if (a3)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  v15 = a1;
  a7(v12, a3, a6, v14);
}

uint64_t sub_1001C4638(int a1, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v36 = a7;
  v33 = a6;
  v34 = a4;
  v35 = a2;
  v32 = a1;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v16 = *(v37 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v37);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_10093B458);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v31 = v19;
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Force set migration state", v23, 2u);
    v19 = v31;
  }

  v24 = *&v8[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_queue];
  v25 = swift_allocObject();
  v27 = v33;
  v26 = v34;
  *(v25 + 16) = v8;
  *(v25 + 24) = v27;
  *(v25 + 32) = v36;
  *(v25 + 40) = v26;
  *(v25 + 48) = a5;
  *(v25 + 56) = v32 & 1;
  *(v25 + 57) = v35 & 1;
  *(v25 + 58) = a3 & 1;
  aBlock[4] = sub_1001C6664;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E8A50;
  v28 = _Block_copy(aBlock);

  v29 = v8;

  static DispatchQoS.unspecified.getter();
  v38 = _swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);
  (*(v12 + 8))(v15, v11);
  (*(v16 + 8))(v19, v37);
}

void sub_1001C49F8(uint64_t a1, void (*a2)(id), uint64_t a3, uint64_t a4, unint64_t a5, char a6, char a7, char a8)
{
  v15 = *(a1 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_storeController);
  v16 = [v15 cloudContext];
  if (!v16)
  {
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_10093B458);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "CloudContext is nil -- can't set migration state", v22, 2u);
    }

    v23 = objc_opt_self();
    v24 = String._bridgeToObjectiveC()();
    v67 = [v23 internalErrorWithDebugDescription:v24];

    a2(v67);
    goto LABEL_15;
  }

  v17 = v16;
  v18 = [v15 accountUtils];
  if (!v18)
  {
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_10093B458);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "AccountUtils is nil -- can't clear migration state cache", v28, 2u);
    }

    v29 = objc_opt_self();
    v30 = String._bridgeToObjectiveC()();
    v67 = [v29 internalErrorWithDebugDescription:v30];

    a2(v67);
LABEL_15:

    return;
  }

  v65 = v18;
  if (a5)
  {
    v66 = a4;

LABEL_25:
    v40 = String._bridgeToObjectiveC()();
    v41 = [v15 newBackgroundContextWithAuthor:v40];

    __chkstk_darwin(v42);
    v64 = v41;
    NSManagedObjectContext.rem_performAndWait<A>(_:)();
    if (LOBYTE(aBlock[0]) == 1)
    {
      v43 = String._bridgeToObjectiveC()();
      v44 = swift_allocObject();
      v45 = a6 & 1;
      *(v44 + 16) = v45;
      *(v44 + 17) = a7 & 1;
      *(v44 + 18) = a8 & 1;
      *(v44 + 24) = a2;
      *(v44 + 32) = a3;
      *(v44 + 40) = v65;
      *(v44 + 48) = v66;
      *(v44 + 56) = a5;
      aBlock[4] = sub_1001C6698;
      aBlock[5] = v44;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100042968;
      aBlock[3] = &unk_1008E8AA0;
      v46 = _Block_copy(aBlock);

      [v17 setMigrationStateToDidChooseToMigrate:v45 didFinishMigration:a7 & 1 createZoneAccountIfFinishMigration:a8 & 1 accountID:v43 completionHandler:v46];

      _Block_release(v46);
    }

    else
    {
      if (qword_100935B50 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_100006654(v47, qword_10093B458);

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        aBlock[0] = v51;
        *v50 = 136315138;
        v52 = sub_10000668C(v66, a5, aBlock);

        *(v50 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v48, v49, "setMigrationStateToDidChooseToMigrate: accountIdentifier { %s } is not from CloudKit account", v50, 0xCu);
        sub_10000607C(v51);
      }

      else
      {
      }

      v60 = objc_opt_self();
      v61 = String._bridgeToObjectiveC()();
      v62 = [v60 internalErrorWithDebugDescription:v61];

      v63 = v62;
      a2(v62);
    }

    return;
  }

  v31 = [objc_opt_self() sharedInstance];
  v32 = [v31 unsafeUntilSystemReady_primaryICloudACAccount];

  if (v32)
  {
    v33 = [v32 identifier];
    if (!v33)
    {
      __break(1u);
      return;
    }

    v34 = v33;
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a5 = v35;

    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100006654(v36, qword_10093B458);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Use primary account as default for calling set migration state", v39, 2u);
    }

    goto LABEL_25;
  }

  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  sub_100006654(v53, qword_10093B458);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "setMigrationStateToDidChooseToMigrate: accountIdentifier is nil", v56, 2u);
  }

  v57 = objc_opt_self();
  v58 = String._bridgeToObjectiveC()();
  v59 = [v57 internalErrorWithDebugDescription:v58];

  a2(v59);
}

uint64_t sub_1001C55A4(uint64_t a1, char a2, char a3, char a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_10093B458);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v18 = 136315906;
      swift_errorRetain();
      sub_1000F5104(&qword_10093B608, &unk_1007B20D0);
      v19 = String.init<A>(describing:)();
      v21 = a5;
      v22 = a3;
      v23 = sub_10000668C(v19, v20, &v29);

      *(v18 + 4) = v23;
      *(v18 + 12) = 1024;
      *(v18 + 14) = a2 & 1;
      *(v18 + 18) = 1024;
      v24 = v22 & 1;
      a5 = v21;
      *(v18 + 20) = v24;
      *(v18 + 24) = 1024;
      *(v18 + 26) = a4 & 1;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to set migration state {error: %s, didChooseToMigrate: %{BOOL}d, didFinishMigration: %{BOOL}d, createZoneAccountIfFinishMigration: %{BOOL}d", v18, 0x1Eu);
      sub_10000607C(v28);
    }

    return a5(a1);
  }

  else
  {
    v27 = swift_allocObject();
    *(v27 + 16) = a5;
    *(v27 + 24) = a6;

    sub_1006C1180(a8, a9, sub_100189954, v27);
  }
}

uint64_t sub_1001C58FC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = *&v3[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_queue];
  v17 = swift_allocObject();
  v17[2] = v3;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = sub_1001C64AC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E89D8;
  v18 = _Block_copy(aBlock);
  v19 = v3;
  v20 = a1;

  static DispatchQoS.unspecified.getter();
  v22[1] = _swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

uint64_t sub_1001C5B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_storeController);
  v5 = *(a1 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_clientIdentity + 16);
  v8 = *(a1 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_clientIdentity);
  v9[0] = v5;
  *(v9 + 14) = *(a1 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_clientIdentity + 30);
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;
  return sub_100014A64(&v8, sub_1001C64B8, v7);
}

void sub_1001C5DF4(uint64_t a1, void *a2, void (*a3)(void))
{
  v6 = sub_100577A10(a2);
  if (!v3)
  {
    if (v6)
    {
      v7 = v6;
      v8 = [v6 ckServerRecord];
      a3();
    }

    else
    {
      if (qword_100935B50 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100006654(v9, qword_10093B458);
      v10 = a2;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138543362;
        *(v13 + 4) = v10;
        *v14 = v10;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, v11, v12, "fetchServerRecord: Tried to fetch non-existent object {remObjectID: %{public}@}", v13, 0xCu);
        sub_1000050A4(v14, &unk_100938E70, &unk_100797230);
      }

      [objc_opt_self() noSuchObjectErrorWithObjectID:v10];
      swift_willThrow();
    }
  }
}

void sub_1001C6060(const char *a1, SEL *a2)
{
  v5 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_10093B458);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v7;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, a1, v12, 0xCu);
      sub_1000050A4(v13, &unk_100938E70, &unk_100797230);
    }

    v15 = type metadata accessor for RDStoreControllerActivityObserver();
    v16 = objc_allocWithZone(v15);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v22.receiver = v16;
    v22.super_class = v15;
    v17 = objc_msgSendSuper2(&v22, "init");
    [*(v5 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_storeController) *a2];
  }

  else
  {
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_10093B458);
    oslog = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v19, "Perform has no clientConnection. Is this really an XPC call? Without a real XPC call, I cannot ask the storeController to actively notify anything.", v20, 2u);
    }
  }
}

void *sub_1001C64D8(void *a1, uint64_t a2, void *a3)
{
  v3[2] = a3;
  v3[3] = a1;
  v7 = type metadata accessor for RDThrottler();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  *(v10 + 16) = 1;
  *(v10 + 24) = 0x403E000000000000;
  strcpy((v10 + 32), "CloudKit Sync");
  *(v10 + 46) = -4864;
  *(v10 + 48) = a3;
  v11 = a3;
  v12 = a1;
  Date.init(timeIntervalSinceNow:)();
  *(v10 + OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount) = 1;
  v3[5] = v10;
  v13 = *(v7 + 48);
  v14 = *(v7 + 52);
  v15 = swift_allocObject();
  v15[2] = 1;
  v15[3] = 0x403E000000000000;
  v15[4] = 0xD00000000000001DLL;
  v15[5] = 0x80000001007EF8E0;
  v15[6] = v11;
  v16 = v11;
  Date.init(timeIntervalSinceNow:)();
  *(v15 + OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount) = 1;
  v3[4] = v15;
  v17 = *(v7 + 48);
  v18 = *(v7 + 52);
  v19 = swift_allocObject();
  v19[2] = 1;
  v19[3] = 0x403E000000000000;
  v19[4] = 0x6563634161746144;
  v19[5] = 0xEF636E7953207373;
  v19[6] = v16;
  Date.init(timeIntervalSinceNow:)();
  *(v19 + OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount) = 1;
  v3[6] = v19;
  v3[7] = a2;
  return v3;
}

uint64_t sub_1001C66EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1001C6740()
{
  result = qword_10093B618;
  if (!qword_10093B618)
  {
    sub_1000060C8(255, &unk_100938CD0, CKRecordID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B618);
  }

  return result;
}

uint64_t sub_1001C6878(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a2);
}

uint64_t sub_1001C6940()
{
  sub_1001C7170(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t destroy for RDPublicCloudDatabaseControllerMock.FetchPublicCloudObjectResultMock(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 2)
  {
    v1 = *a1 + 2;
  }

  if (v1 != 1)
  {
    return sub_10000607C(a1);
  }

  v2 = *a1;
}

uint64_t initializeWithCopy for RDPublicCloudDatabaseControllerMock.FetchPublicCloudObjectResultMock(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 40);
  if (v3 >= 2)
  {
    v3 = *a2 + 2;
  }

  if (v3 == 1)
  {
    v4 = *a2;
    swift_errorRetain();
    *a1 = v4;
    v5 = 1;
  }

  else
  {
    v6 = *(a2 + 3);
    *(a1 + 24) = v6;
    (**(v6 - 8))(a1);
    v5 = 0;
  }

  *(a1 + 40) = v5;
  return a1;
}

uint64_t *assignWithCopy for RDPublicCloudDatabaseControllerMock.FetchPublicCloudObjectResultMock(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
      v5 = *a1;
    }

    else
    {
      sub_10000607C(a1);
    }

    v6 = *(a2 + 40);
    if (v6 >= 2)
    {
      v6 = *a2 + 2;
    }

    if (v6 == 1)
    {
      v7 = *a2;
      swift_errorRetain();
      *a1 = v7;
      v8 = 1;
    }

    else
    {
      v9 = a2[3];
      a1[3] = v9;
      a1[4] = a2[4];
      (**(v9 - 8))(a1, a2);
      v8 = 0;
    }

    *(a1 + 40) = v8;
  }

  return a1;
}

__n128 initializeWithTake for RDPublicCloudDatabaseControllerMock.FetchPublicCloudObjectResultMock(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t *assignWithTake for RDPublicCloudDatabaseControllerMock.FetchPublicCloudObjectResultMock(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = *(result + 40);
    if (v3 >= 2)
    {
      v3 = *result + 2;
    }

    v4 = result;
    if (v3 == 1)
    {
      v5 = *result;
    }

    else
    {
      sub_10000607C(result);
    }

    v6 = *(a2 + 40);
    if (v6 >= 2)
    {
      v6 = *a2 + 2;
    }

    result = v4;
    if (v6 == 1)
    {
      *v4 = *a2;
      v7 = 1;
    }

    else
    {
      v7 = 0;
      v8 = *(a2 + 1);
      *v4 = *a2;
      *(v4 + 1) = v8;
      v4[4] = a2[4];
    }

    *(v4 + 40) = v7;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RDPublicCloudDatabaseControllerMock.FetchPublicCloudObjectResultMock(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RDPublicCloudDatabaseControllerMock.FetchPublicCloudObjectResultMock(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001C6C78(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t sub_1001C6C94(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1001C6D64(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v24 = a1;
  sub_1000F514C(&unk_1009399E0, &qword_100795D00);
  v5 = type metadata accessor for Result();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v23 - v8);
  v10 = type metadata accessor for Optional();
  v23 = *(v10 - 8);
  v11 = *(v23 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C7138((v3 + 16), v27);
  if (v28)
  {
    *v9 = *&v27[0];
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v24(v9);

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    v20 = v24;
    sub_100054B6C(v27, v26);
    sub_10000A87C(v26, v25);
    sub_1000F5104(&qword_10093B6F0, &unk_100798CC0);
    v21 = swift_dynamicCast();
    v22 = *(v14 + 56);
    if (v21)
    {
      v22(v13, 0, 1, a3);
      (*(v14 + 32))(v18, v13, a3);
      (*(v14 + 16))(v9, v18, a3);
      swift_storeEnumTagMultiPayload();
      v20(v9);
      (*(v6 + 8))(v9, v5);
      (*(v14 + 8))(v18, a3);
    }

    else
    {
      v22(v13, 1, 1, a3);
      (*(v23 + 8))(v13, v10);
      *v9 = [objc_opt_self() cancelledError];
      swift_storeEnumTagMultiPayload();
      v20(v9);
      (*(v6 + 8))(v9, v5);
    }

    return sub_10000607C(v26);
  }
}

uint64_t sub_1001C71A0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093B6F8);
  v1 = sub_100006654(v0, qword_10093B6F8);
  if (qword_1009364F0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975218);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_1001C72D0()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001C7324()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  sub_1001C72AC();
  return Hasher._finalize()();
}

uint64_t sub_1001C7364(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1001C7268();
}

void sub_1001C73A4(uint64_t a1)
{
  v1 = a1;
  v38 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v47 = _swiftEmptyArrayStorage;
    sub_10025371C(0, v2 & ~(v2 >> 63), 0);
    v42 = _swiftEmptyArrayStorage;
    if (v38)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v44 = v3;
    v45 = v4;
    v46 = v38 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v35 = v1 + 56;
      v34 = v1 + 64;
      v36 = v2;
      v37 = v1;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v44;
        v10 = v46;
        v39 = v45;
        sub_100411D6C(v44, v45, v46, v1);
        v12 = v11;
        v41 = [v11 type];
        v13 = [v12 name];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v15;

        v16 = [v12 objectIdentifier];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20 = v42;
        v47 = v42;
        v22 = v42[2];
        v21 = v42[3];
        if (v22 >= v21 >> 1)
        {
          sub_10025371C((v21 > 1), v22 + 1, 1);
          v20 = v47;
        }

        v20[2] = v22 + 1;
        v23 = &v20[5 * v22];
        v23[4] = v41;
        v23[5] = v14;
        v23[6] = v40;
        v23[7] = v17;
        v23[8] = v19;
        v42 = v20;
        if (v38)
        {
          v1 = v37;
          if (!v10)
          {
            goto LABEL_40;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v36;
          sub_1000F5104(&qword_10093B7C0, &qword_1007A0250);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(v43, 0);
          if (v6 == v36)
          {
LABEL_32:
            sub_100010E34(v44, v45, v46);
            return;
          }
        }

        else
        {
          v1 = v37;
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v24 = 1 << *(v37 + 32);
          if (v9 >= v24)
          {
            goto LABEL_36;
          }

          v25 = v9 >> 6;
          v26 = *(v35 + 8 * (v9 >> 6));
          if (((v26 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v37 + 36) != v39)
          {
            goto LABEL_38;
          }

          v27 = v26 & (-2 << (v9 & 0x3F));
          if (v27)
          {
            v24 = __clz(__rbit64(v27)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v36;
          }

          else
          {
            v28 = v25 << 6;
            v29 = v25 + 1;
            v30 = (v34 + 8 * v25);
            v2 = v36;
            while (v29 < (v24 + 63) >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v28 += 64;
              ++v29;
              if (v32)
              {
                sub_100010E34(v9, v39, 0);
                v24 = __clz(__rbit64(v31)) + v28;
                goto LABEL_31;
              }
            }

            sub_100010E34(v9, v39, 0);
          }

LABEL_31:
          v33 = *(v37 + 36);
          v44 = v24;
          v45 = v33;
          v46 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

id sub_1001C7758()
{
  v1 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v40 - v3;
  v5 = type metadata accessor for TimeZone();
  v55 = *(v5 - 8);
  v6 = *(v55 + 64);
  __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Calendar.Identifier();
  v51 = *(v9 - 8);
  v10 = *(v51 + 64);
  __chkstk_darwin(v9);
  v44 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Calendar();
  v48 = *(v57 - 8);
  v12 = *(v48 + 64);
  __chkstk_darwin(v57);
  v43 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DateComponents();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for Date();
  v46 = *(v56 - 8);
  v19 = *(v46 + 64);
  __chkstk_darwin(v56);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for RDSavedReminder();
  v23 = *(v0 + *(v22 + 20));
  if (v23)
  {
    v45 = v15;
    v54 = v9;
    v24 = *(v23 + 16);
    v25 = _swiftEmptyArrayStorage;
    if (v24)
    {
      v40 = v22;
      v41 = v0;
      v42 = v4;
      v58 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v53 = v5;
      v26 = (v23 + 32);
      v27 = v51;
      v51 += 8;
      v52 = (v27 + 104);
      v50 = enum case for Calendar.Identifier.gregorian(_:);
      v48 += 8;
      v49 = (v55 + 8);
      v55 = v14;
      v46 += 8;
      v47 = (v45 + 8);
      v28 = v43;
      v29 = v44;
      do
      {
        v30 = *v26++;
        Date.init(timeIntervalSinceReferenceDate:)();
        v31 = v54;
        (*v52)(v29, v50, v54);
        Calendar.init(identifier:)();
        (*v51)(v29, v31);
        static TimeZone.current.getter();
        Calendar.dateComponents(in:from:)();
        (*v49)(v8, v53);
        (*v48)(v28, v57);
        v32 = objc_allocWithZone(REMAlarmDateTrigger);
        isa = DateComponents._bridgeToObjectiveC()().super.isa;
        v34 = [v32 initWithDateComponents:isa];

        (*v47)(v18, v55);
        (*v46)(v21, v56);
        [objc_allocWithZone(REMAlarm) initWithTrigger:v34];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v35 = v58[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v24;
      }

      while (v24);
      v25 = v58;
      v0 = v41;
      v4 = v42;
      v14 = v55;
      v22 = v40;
    }

    v15 = v45;
  }

  else
  {
    v25 = 0;
  }

  sub_100010364(v0 + *(v22 + 28), v4, &qword_10093B790, &qword_100798D88);
  if ((*(v15 + 48))(v4, 1, v14) != 1)
  {
    v36 = DateComponents._bridgeToObjectiveC()().super.isa;
    (*(v15 + 8))(v4, v14);
    if (v25)
    {
      goto LABEL_10;
    }

LABEL_12:
    v37.super.isa = 0;
    goto LABEL_13;
  }

  v36 = 0;
  if (!v25)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_1000060C8(0, &qword_10093B7B0, REMAlarm_ptr);
  v37.super.isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_13:
  v38 = [objc_opt_self() displayDateWithDueDateComponents:v36 alarms:v37.super.isa];

  return v38;
}

unint64_t sub_1001C7D58(char a1)
{
  result = 0x6E6F697461657263;
  switch(a1)
  {
    case 1:
      result = 0x6972546D72616C61;
      break;
    case 2:
    case 12:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x64656767616C66;
      break;
    case 5:
      result = 0x7367617468736168;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x797469726F697270;
      break;
    case 8:
      result = 0x6E65727275636572;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x656C746974;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001C7ED0(void *a1)
{
  v3 = v1;
  v5 = sub_1000F5104(&qword_10093B890, &qword_100798E78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v28 - v8;
  v10 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_1001CD138();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v29) = 0;
  type metadata accessor for Date();
  sub_1001CB52C(&qword_10093B8A0, &type metadata accessor for Date);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for RDSavedReminder();
    v12 = (v3 + v11[5]);
    v13 = v12[1];
    v29 = *v12;
    v30 = v13;
    v31 = 1;
    sub_1001CD18C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v29 = *(v3 + v11[6]);
    v31 = 2;
    sub_1000F5104(&qword_10093B8B0, &qword_100798E80);
    sub_1001CD1E0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = v11[7];
    LOBYTE(v29) = 3;
    type metadata accessor for DateComponents();
    sub_1001CB52C(&qword_10093B8C8, &type metadata accessor for DateComponents);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = *(v3 + v11[8]);
    LOBYTE(v29) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v29 = *(v3 + v11[9]);
    v31 = 5;
    sub_1000F5104(&qword_10093B8D0, &qword_100798E88);
    sub_1001CD2B8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = (v3 + v11[10]);
    v17 = v16[1];
    *&v29 = *v16;
    *(&v29 + 1) = v17;
    v31 = 6;
    sub_1001CB4B8(v29, v17);
    v28[1] = sub_10015377C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100031A14(v29, *(&v29 + 1));
    v18 = *(v3 + v11[11]);
    LOBYTE(v29) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v29 = *(v3 + v11[12]);
    v31 = 8;
    sub_1000F5104(&qword_10093B8E8, &qword_100798E90);
    sub_1001CD390();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = v11[13];
    LOBYTE(v29) = 9;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = (v3 + v11[14]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v29) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = (v3 + v11[15]);
    v24 = v23[1];
    *&v29 = *v23;
    *(&v29 + 1) = v24;
    v31 = 11;
    sub_100029344(v29, v24);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10001BBA0(v29, *(&v29 + 1));
    v26 = (v3 + v11[16]);
    v27 = v26[1];
    *&v29 = *v26;
    *(&v29 + 1) = v27;
    v31 = 12;
    sub_1001CB4B8(v29, v27);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100031A14(v29, *(&v29 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001C83EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  v10 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v51 = &v46 - v12;
  v13 = sub_1000F5104(&qword_10093B900, &qword_100798E98);
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = *(v52 + 64);
  __chkstk_darwin(v13);
  v16 = &v46 - v15;
  v17 = type metadata accessor for RDSavedReminder();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_1001CD138();
  v54 = v16;
  v22 = v55;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    return sub_10000607C(a1);
  }

  v23 = v9;
  v47 = v6;
  v48 = v17;
  v49 = a1;
  v55 = v20;
  type metadata accessor for Date();
  LOBYTE(v56) = 0;
  sub_1001CB52C(&qword_10093B908, &type metadata accessor for Date);
  v24 = v51;
  v26 = v53;
  v25 = v54;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v28 = v24;
  v29 = v55;
  sub_100031B58(v28, v55, &unk_100938850, qword_100795AE0);
  v58 = 1;
  sub_1001CD468();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v30 = v52;
  v31 = v48;
  v32 = (v29 + v48[5]);
  v33 = v57;
  *v32 = v56;
  v32[1] = v33;
  sub_1000F5104(&qword_10093B8B0, &qword_100798E80);
  v51 = 0;
  v58 = 2;
  sub_1001CD4BC();
  v34 = v51;
  v35 = v51;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v35)
  {
    (*(v30 + 8))(v25, v26);
    sub_10000607C(v49);
    result = sub_1000050A4(v55, &unk_100938850, qword_100795AE0);
    if (!v34)
    {
      v37 = &v55[v48[5]];
      v38 = v37[1];
      v39 = v37[2];
      v40 = v37[3];
      return sub_1001CB4CC(*v37);
    }
  }

  else
  {
    *(v29 + v31[6]) = v56;
    type metadata accessor for DateComponents();
    LOBYTE(v56) = 3;
    sub_1001CB52C(&qword_10093B928, &type metadata accessor for DateComponents);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100031B58(v23, v29 + v48[7], &qword_10093B790, &qword_100798D88);
    LOBYTE(v56) = 4;
    v36 = KeyedDecodingContainer.decode(_:forKey:)();
    v41 = v48;
    *(v29 + v48[8]) = v36;
    sub_1000F5104(&qword_10093B8D0, &qword_100798E88);
    v58 = 5;
    sub_1001CD594();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v29 + v41[9]) = v56;
    v58 = 6;
    sub_1000318F4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v29 + v48[10]) = v56;
    LOBYTE(v56) = 7;
    *(v29 + v48[11]) = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000F5104(&qword_10093B8E8, &qword_100798E90);
    v58 = 8;
    sub_1001CD66C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v55[v48[12]] = v56;
    LOBYTE(v56) = 9;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100031B58(v47, &v55[v48[13]], &qword_10093B790, &qword_100798D88);
    LOBYTE(v56) = 10;
    v42 = KeyedDecodingContainer.decode(_:forKey:)();
    v43 = &v55[v48[14]];
    *v43 = v42;
    v43[1] = v44;
    v58 = 11;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v55[v48[15]] = v56;
    v58 = 12;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v52 + 8))(v54, v53);
    v45 = v55;
    *&v55[v48[16]] = v56;
    sub_1001CD744(v45, v50);
    sub_10000607C(v49);
    return sub_1001CB574(v45);
  }

  return result;
}

uint64_t sub_1001C8E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001CDA00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001C8E74(uint64_t a1)
{
  v2 = sub_1001CD138();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C8EB0(uint64_t a1)
{
  v2 = sub_1001CD138();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001C8F20(id a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v145 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v139 - v11;
  v152 = type metadata accessor for Date();
  v150 = *(v152 - 8);
  v13 = *(v150 + 64);
  __chkstk_darwin(v152);
  v151 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v16 = *(*(v15 - 8) + 64);
  *&v17 = __chkstk_darwin(v15 - 8).n128_u64[0];
  v19 = &v139 - v18;
  v20 = [a1 titleDocument];
  if (!v20)
  {
    v25 = objc_opt_self();
    v153 = 0;
    v154 = 0xE000000000000000;
    _StringGuts.grow(_:)(137);
    v26._object = 0x80000001007EF970;
    v26._countAndFlagsBits = 0xD000000000000086;
    String.append(_:)(v26);
    v27 = [a1 objectID];
    v28 = [v27 description];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32._countAndFlagsBits = v29;
    v32._object = v31;
    String.append(_:)(v32);

    v33._countAndFlagsBits = 125;
    v33._object = 0xE100000000000000;
    String.append(_:)(v33);
    v34 = String._bridgeToObjectiveC()();

    [v25 invalidParameterErrorWithDescription:v34];

    swift_willThrow();
    return;
  }

  v148 = v3;
  v144 = v20;
  v141 = v12;
  if (a2)
  {
    v21 = v20;
    v22 = [v20 replicaIDSource];
    v23 = [v21 attributedString];
    v24 = [objc_allocWithZone(REMCRMergeableStringDocument) initWithReplicaIDSource:v22 attributedString:v23];
  }

  else
  {
    v24 = v20;
  }

  v35 = [v24 string];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v39 = type metadata accessor for RDSavedReminder();
  v40 = (a3 + v39[14]);
  *v40 = v36;
  v40[1] = v38;
  v149 = v38;
  v41 = a3;
  v143 = v24;
  v42 = [v24 serializedData];
  v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  v46 = v39[15];
  v146 = v41;
  v47 = v41 + v46;
  *v47 = v43;
  *(v47 + 8) = v45;
  v48 = [a1 notesDocument];
  v142 = v48;
  if (a2)
  {
    if (v48)
    {
      v49 = v48;
      v50 = [v49 replicaIDSource];
      v51 = [v49 attributedString];
      v52 = [objc_allocWithZone(REMCRMergeableStringDocument) initWithReplicaIDSource:v50 attributedString:v51];

LABEL_11:
      v53 = v52;
      v54 = [v53 serializedData];

      v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      goto LABEL_13;
    }
  }

  else if (v48)
  {
    v52 = v48;
    goto LABEL_11;
  }

  v55 = 0;
  v53 = 0;
  v57 = 0xF000000000000000;
LABEL_13:
  v147 = v39;
  v58 = v146;
  v59 = (v146 + v39[10]);
  *v59 = v55;
  *(v59 + 1) = v57;
  v60 = [a1 creationDate];
  v61 = v150;
  if (v60)
  {
    v62 = v60;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v61 + 56))(v19, 0, 1, v152);
  }

  else
  {
    (*(v150 + 56))(v19, 1, 1, v152);
  }

  sub_100031B58(v19, v58, &unk_100938850, qword_100795AE0);
  v63 = [a1 alarms];
  if (v63)
  {
    v64 = v63;
    sub_1000060C8(0, &qword_10093B7B0, REMAlarm_ptr);
    v65 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v66 = v148;
    v67 = sub_100152CF4(v65);
    if (v66)
    {

      sub_1000050A4(v58, &unk_100938850, qword_100795AE0);
LABEL_19:
      sub_100031A14(*v59, *(v59 + 1));

      sub_10001BBA0(*v47, *(v47 + 8));
      return;
    }

    v148 = 0;
    v72 = (v58 + v147[5]);
    *v72 = v67;
    v72[1] = v68;
    v72[2] = v69;
    v72[3] = v70;
  }

  else
  {
    v71 = (v58 + v147[5]);
    *v71 = 0u;
    v71[1] = 0u;
  }

  v73 = objc_autoreleasePoolPush();
  v74 = [a1 fetchedDueDateDeltaAlerts];
  v139 = v53;
  if (v74)
  {
    v75 = v74;
    sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
    v76 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v95 = [a1 dueDateDeltaAlertsData];
    if (v95)
    {
      v96 = v95;
      v97 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v98;

      type metadata accessor for RDDueDateDeltaAlerts();
      sub_1001CB52C(&qword_10093B7B8, type metadata accessor for RDDueDateDeltaAlerts);
      v100 = v148;
      static REMJSONRepresentable.fromJSONData(_:)();
      if (v100)
      {
        sub_10001BBA0(v97, v99);
        objc_autoreleasePoolPop(v73);

        sub_1000050A4(v58, &unk_100938850, qword_100795AE0);
        v101 = (v58 + v147[5]);
        v102 = v101[1];
        v103 = v101[2];
        v104 = v101[3];
        sub_1001CB4CC(*v101);
        goto LABEL_19;
      }

      v148 = 0;
      sub_10001BBA0(v97, v99);
      v105 = v153;
      v76 = *(v153 + OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_remObjects);

      v61 = v150;
    }

    else
    {
      v76 = _swiftEmptyArrayStorage;
    }
  }

  objc_autoreleasePoolPop(v73);
  v77 = v147;
  v140 = a1;
  if (v76 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v78 = _CocoaArrayWrapper.endIndex.getter();
      if (!v78)
      {

        v80 = _swiftEmptyArrayStorage;
        goto LABEL_44;
      }

      goto LABEL_26;
    }

LABEL_43:

    v80 = 0;
    goto LABEL_44;
  }

  v78 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v78)
  {
    goto LABEL_43;
  }

LABEL_26:
  v153 = _swiftEmptyArrayStorage;
  sub_10025373C(0, v78 & ~(v78 >> 63), 0);
  if (v78 < 0)
  {
    __break(1u);
    goto LABEL_63;
  }

  v79 = 0;
  v149 = v76 & 0xC000000000000001;
  v150 = v76;
  v80 = v153;
  v81 = (v61 + 8);
  v82 = v78;
  do
  {
    if (v149)
    {
      v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v83 = *(v150 + 8 * v79 + 32);
    }

    v84 = v83;
    v85 = [v83 dueDateDelta];
    v86 = REMDueDateDeltaInterval.codable.getter();

    v87 = [v84 creationDate];
    v88 = v151;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceReferenceDate.getter();
    v90 = v89;
    (*v81)(v88, v152);
    v91 = [v84 minimumSupportedAppVersion];

    v153 = v80;
    v93 = v80[2];
    v92 = v80[3];
    if (v93 >= v92 >> 1)
    {
      sub_10025373C((v92 > 1), v93 + 1, 1);
      v80 = v153;
    }

    v80[2] = v93 + 1;
    v94 = &v80[3 * v93];
    v94[4] = v86;
    ++v79;
    v94[5] = v90;
    v94[6] = v91;
  }

  while (v82 != v79);

  v58 = v146;
  v77 = v147;
LABEL_44:
  *(v58 + v77[6]) = v80;
  a1 = v140;
  v106 = [v140 dueDateComponents];
  if (v106)
  {
    v107 = v141;
    v108 = v106;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v109 = 0;
  }

  else
  {
    v109 = 1;
    v107 = v141;
  }

  v76 = type metadata accessor for DateComponents();
  v110 = *(v76 - 8);
  v61 = *(v110 + 56);
  v59 = (v110 + 56);
  (v61)(v107, v109, 1, v76);
  sub_100031B58(v107, v58 + v77[7], &qword_10093B790, &qword_100798D88);
  *(v58 + v77[8]) = [a1 flagged];
  v111 = [a1 hashtags];
  if (v111)
  {
    sub_1000060C8(0, &unk_10093F600, REMHashtag_ptr);
    sub_1001CB5D0();
    v112 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v113 = v148;
    sub_1001C73A4(v112);
    v111 = v114;
    v148 = v113;
  }

  *(v58 + v77[9]) = v111;
  *(v58 + v77[11]) = [a1 priority];
  v115 = [a1 recurrenceRules];
  if (!v115)
  {
    v119 = 0;
    goto LABEL_65;
  }

  v116 = v115;
  sub_1000060C8(0, &unk_100940C70, REMRecurrenceRule_ptr);
  v73 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v73 >> 62)
  {
LABEL_63:
    v117 = _CocoaArrayWrapper.endIndex.getter();
    if (v117)
    {
      goto LABEL_52;
    }

LABEL_64:

    v119 = _swiftEmptyArrayStorage;
    v58 = v146;
    goto LABEL_65;
  }

  v117 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v117)
  {
    goto LABEL_64;
  }

LABEL_52:
  v151 = v59;
  v152 = v61;
  v153 = _swiftEmptyArrayStorage;
  sub_1002536FC(0, v117 & ~(v117 >> 63), 0);
  if (v117 < 0)
  {
    __break(1u);
    return;
  }

  v118 = 0;
  v119 = v153;
  do
  {
    if ((v73 & 0xC000000000000001) != 0)
    {
      v120 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v120 = *(v73 + 8 * v118 + 32);
    }

    sub_1004AF6D8(v120, v155);
    v153 = v119;
    v122 = v119[2];
    v121 = v119[3];
    if (v122 >= v121 >> 1)
    {
      sub_1002536FC((v121 > 1), v122 + 1, 1);
      v119 = v153;
    }

    ++v118;
    v119[2] = v122 + 1;
    v123 = &v119[11 * v122];
    v124 = v155[1];
    *(v123 + 2) = v155[0];
    *(v123 + 3) = v124;
    v125 = v155[2];
    v126 = v155[3];
    v127 = v155[4];
    v123[14] = v156;
    *(v123 + 5) = v126;
    *(v123 + 6) = v127;
    *(v123 + 4) = v125;
  }

  while (v117 != v118);

  a1 = v140;
  v58 = v146;
  v77 = v147;
  v61 = v152;
LABEL_65:
  *(v58 + v77[12]) = v119;
  v128 = [a1 startDateComponents];
  if (v128)
  {
    v129 = v145;
    v130 = v128;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v131 = 0;
  }

  else
  {
    v131 = 1;
    v129 = v145;
  }

  (v61)(v129, v131, 1, v76);
  sub_100031B58(v129, v58 + v77[13], &qword_10093B790, &qword_100798D88);
  v132 = [a1 contactHandles];
  if (v132)
  {
    v133 = v132;
    v134 = [v132 archivedData];

    v135 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v137 = v136;
  }

  else
  {

    v135 = 0;
    v137 = 0xF000000000000000;
  }

  v138 = (v58 + v77[16]);
  *v138 = v135;
  v138[1] = v137;
}

uint64_t sub_1001C9D1C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v46 - v12;
  if ([a2 shouldIncludeHashtags])
  {
    v55 = *(a1 + *(type metadata accessor for RDSavedReminder() + 36));
  }

  else
  {
    v55 = 0;
  }

  if ([a2 shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval])
  {
    v14 = type metadata accessor for RDSavedReminder();
    sub_100010364(a1 + v14[13], v13, &qword_10093B790, &qword_100798D88);
    sub_100010364(a1 + v14[7], v9, &qword_10093B790, &qword_100798D88);
    v54 = *(a1 + v14[12]);
  }

  else
  {
    v15 = type metadata accessor for DateComponents();
    v16 = *(*(v15 - 8) + 56);
    v16(v13, 1, 1, v15);
    v16(v9, 1, 1, v15);
    v54 = 0;
  }

  if ((([a2 shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval] & 1) != 0 || objc_msgSend(a2, "shouldIncludeAlarmTriggersBasedOnLocationOrVehicle")) && (v17 = (a1 + *(type metadata accessor for RDSavedReminder() + 20)), (v18 = *v17) != 0))
  {
    v19 = v17[2];
    v20 = v17[3];
    v21 = v17[1];
    if ([a2 shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval])
    {
      v53 = v18;
    }

    else
    {
      v53 = _swiftEmptyArrayStorage;
    }

    if ([a2 shouldIncludeAlarmTriggersBasedOnLocationOrVehicle])
    {
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }

    if ([a2 shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval])
    {
    }

    else
    {
      v19 = _swiftEmptyArrayStorage;
    }

    if ([a2 shouldIncludeAlarmTriggersBasedOnLocationOrVehicle])
    {
    }

    else
    {
      v20 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v53 = 0;
    v21 = 0;
    v19 = 0;
    v20 = 0;
  }

  v22 = type metadata accessor for RDSavedReminder();
  v47 = *(a1 + v22[6]);

  v23 = [a2 shouldIncludeContactsHandleData];

  v56 = v9;
  v57 = v13;
  v51 = v19;
  v52 = v21;
  v50 = v20;
  if (v23)
  {
    v24 = (a1 + v22[16]);
    v25 = *v24;
    v48 = v24[1];
    v49 = v25;
    sub_1001CB4B8(v25, v48);
  }

  else
  {
    v48 = 0xF000000000000000;
    v49 = 0;
  }

  sub_100010364(a1, a3, &unk_100938850, qword_100795AE0);
  v26 = *(a1 + v22[8]);
  v27 = (a1 + v22[10]);
  v28 = *v27;
  v29 = v27[1];
  v30 = *(a1 + v22[11]);
  v31 = v22[15];
  v32 = (a1 + v22[14]);
  v33 = v32[1];
  v46 = *v32;
  v35 = *(a1 + v31);
  v34 = *(a1 + v31 + 8);
  v36 = (a3 + v22[5]);
  v37 = v52;
  *v36 = v53;
  v36[1] = v37;
  v38 = v50;
  v36[2] = v51;
  v36[3] = v38;
  *(a3 + v22[6]) = v47;
  sub_100031B58(v56, a3 + v22[7], &qword_10093B790, &qword_100798D88);
  *(a3 + v22[8]) = v26;
  v39 = v54;
  *(a3 + v22[9]) = v55;
  v40 = (a3 + v22[10]);
  *v40 = v28;
  v40[1] = v29;
  *(a3 + v22[11]) = v30;
  *(a3 + v22[12]) = v39;
  sub_100031B58(v57, a3 + v22[13], &qword_10093B790, &qword_100798D88);
  v41 = (a3 + v22[14]);
  *v41 = v46;
  v41[1] = v33;
  v42 = (a3 + v22[15]);
  *v42 = v35;
  v42[1] = v34;
  v43 = (a3 + v22[16]);
  v44 = v48;
  *v43 = v49;
  v43[1] = v44;
  sub_1001CB4B8(v28, v29);

  sub_100029344(v35, v34);
  return sub_1001CB574(a1);
}

uint64_t sub_1001CA174@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1001CA3A4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1001CA534(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_10001BBA0(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1001CA174(v13, a3, a4, &v12);
  v10 = v4;
  sub_10001BBA0(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1001CA534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_1001CA174(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1001CA5EC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100029344(a3, a4);
          return sub_1001CA3A4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1001CA754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateComponents();
  v5 = *(v4 - 8);
  v116 = v4;
  v117 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v113 = &v109[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v112 = &v109[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v115 = &v109[-v12];
  v119 = sub_1000F5104(&qword_10093B798, &qword_100798D90);
  v13 = *(*(v119 - 8) + 64);
  __chkstk_darwin(v119);
  v114 = &v109[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v118 = &v109[-v16];
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v109[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v109[-v24];
  v26 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v109[-v28];
  v31 = *(v30 + 56);
  v120 = a1;
  sub_100010364(a1, &v109[-v28], &unk_100938850, qword_100795AE0);
  v121 = a2;
  sub_100010364(a2, &v29[v31], &unk_100938850, qword_100795AE0);
  v32 = *(v18 + 48);
  if (v32(v29, 1, v17) == 1)
  {
    if (v32(&v29[v31], 1, v17) == 1)
    {
      sub_1000050A4(v29, &unk_100938850, qword_100795AE0);
      goto LABEL_9;
    }

LABEL_6:
    v33 = &qword_100938C18;
    v34 = &qword_1007957A0;
    v35 = v29;
LABEL_7:
    sub_1000050A4(v35, v33, v34);
    goto LABEL_48;
  }

  sub_100010364(v29, v25, &unk_100938850, qword_100795AE0);
  if (v32(&v29[v31], 1, v17) == 1)
  {
    (*(v18 + 8))(v25, v17);
    goto LABEL_6;
  }

  (*(v18 + 32))(v21, &v29[v31], v17);
  sub_1001CB52C(&qword_100938DB0, &type metadata accessor for Date);
  v36 = dispatch thunk of static Equatable.== infix(_:_:)();
  v37 = *(v18 + 8);
  v37(v21, v17);
  v37(v25, v17);
  sub_1000050A4(v29, &unk_100938850, qword_100795AE0);
  if ((v36 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_9:
  v38 = type metadata accessor for RDSavedReminder();
  v40 = v120;
  v39 = v121;
  if (*(v120 + v38[8]) != *(v121 + v38[8]) || *(v120 + v38[11]) != *(v121 + v38[11]))
  {
    goto LABEL_48;
  }

  v111 = v38;
  v41 = v38[7];
  v42 = v118;
  v43 = *(v119 + 48);
  sub_100010364(v120 + v41, v118, &qword_10093B790, &qword_100798D88);
  sub_100010364(v39 + v41, &v42[v43], &qword_10093B790, &qword_100798D88);
  v45 = v116;
  v44 = v117;
  v46 = *(v117 + 48);
  if (v46(v42, 1, v116) == 1)
  {
    if (v46(&v42[v43], 1, v45) == 1)
    {
      sub_1000050A4(v42, &qword_10093B790, &qword_100798D88);
      goto LABEL_17;
    }

LABEL_22:
    v33 = &qword_10093B798;
    v34 = &qword_100798D90;
    v35 = v42;
    goto LABEL_7;
  }

  v47 = v115;
  sub_100010364(v42, v115, &qword_10093B790, &qword_100798D88);
  if (v46(&v42[v43], 1, v45) == 1)
  {
    (*(v44 + 8))(v47, v45);
    goto LABEL_22;
  }

  v48 = &v42[v43];
  v49 = v113;
  (*(v44 + 32))(v113, v48, v45);
  sub_1001CB52C(&qword_10093B7A8, &type metadata accessor for DateComponents);
  v110 = dispatch thunk of static Equatable.== infix(_:_:)();
  v50 = *(v44 + 8);
  v50(v49, v45);
  v50(v47, v45);
  sub_1000050A4(v118, &qword_10093B790, &qword_100798D88);
  if ((v110 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_17:
  v51 = v111[13];
  v52 = *(v119 + 48);
  v42 = v114;
  sub_100010364(v40 + v51, v114, &qword_10093B790, &qword_100798D88);
  sub_100010364(v39 + v51, &v42[v52], &qword_10093B790, &qword_100798D88);
  if (v46(v42, 1, v45) == 1)
  {
    if (v46(&v42[v52], 1, v45) == 1)
    {
      sub_1000050A4(v42, &qword_10093B790, &qword_100798D88);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v53 = v112;
  sub_100010364(v42, v112, &qword_10093B790, &qword_100798D88);
  if (v46(&v42[v52], 1, v45) == 1)
  {
    (*(v117 + 8))(v53, v45);
    goto LABEL_22;
  }

  v54 = v117;
  v55 = v113;
  (*(v117 + 32))(v113, &v42[v52], v45);
  sub_1001CB52C(&qword_10093B7A8, &type metadata accessor for DateComponents);
  v56 = dispatch thunk of static Equatable.== infix(_:_:)();
  v57 = *(v54 + 8);
  v57(v55, v45);
  v57(v53, v45);
  sub_1000050A4(v42, &qword_10093B790, &qword_100798D88);
  if ((v56 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_24:
  v58 = v111;
  v59 = v111[14];
  v60 = *(v40 + v59);
  v61 = *(v40 + v59 + 8);
  v62 = (v39 + v59);
  if (v60 != *v62 || v61 != v62[1])
  {
    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v58 = v111;
    if ((v63 & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  v64 = v58[9];
  v65 = *(v40 + v64);
  v66 = *(v39 + v64);
  if (v65)
  {
    if (!v66)
    {
      goto LABEL_48;
    }

    v67 = sub_1003AF178(v65, v66);
    v58 = v111;
    if ((v67 & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v66)
  {
    goto LABEL_48;
  }

  v68 = v58[12];
  v69 = *(v40 + v68);
  v70 = *(v39 + v68);
  if (v69)
  {
    if (!v70)
    {
      goto LABEL_48;
    }

    v71 = sub_1003AF258(v69, v70);
    v58 = v111;
    if ((v71 & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v70)
  {
    goto LABEL_48;
  }

  v72 = v58[5];
  v73 = *(v40 + v72);
  v74 = *(v40 + v72 + 8);
  v76 = *(v40 + v72 + 16);
  v75 = *(v40 + v72 + 24);
  v77 = (v39 + v72);
  v79 = *v77;
  v78 = v77[1];
  v80 = v77[2];
  v81 = v77[3];
  if (v73)
  {
    if (v79)
    {
      if (sub_1003B0A38(v73, *v77))
      {
        sub_1001CB458(v79);
        sub_1001CB458(v73);
        if (sub_1003AE6C8(v74, v78) & 1) != 0 && (sub_1003B0A38(v76, v80))
        {
          v82 = sub_1003AE66C(v75, v81);

          sub_1001CB4CC(v73);
          v58 = v111;
          if ((v82 & 1) == 0)
          {
            goto LABEL_48;
          }

          goto LABEL_50;
        }
      }

      else
      {
        sub_1001CB458(v79);
        sub_1001CB458(v73);
      }

      sub_1001CB4CC(v73);
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  if (v79)
  {
LABEL_45:
    v122[0] = v73;
    v122[1] = v74;
    v122[2] = v76;
    v122[3] = v75;
    v122[4] = v79;
    v122[5] = v78;
    v122[6] = v80;
    v122[7] = v81;
    sub_1001CB458(v79);
    sub_1001CB458(v73);
    v33 = &unk_10093B7A0;
    v34 = &unk_100798D98;
    v35 = v122;
    goto LABEL_7;
  }

LABEL_50:
  v85 = v58[6];
  v87 = v120;
  v86 = v121;
  v88 = *(v120 + v85);
  v89 = *(v121 + v85);
  if (v88)
  {
    if (!v89)
    {
      goto LABEL_48;
    }

    v90 = *(v121 + v85);

    v91 = sub_1003AF32C(v88, v89);

    if (!v91)
    {
      goto LABEL_48;
    }
  }

  else if (v89)
  {
    goto LABEL_48;
  }

  if (sub_1001CA5EC(*(v87 + v111[15]), *(v87 + v111[15] + 8), *(v86 + v111[15]), *(v86 + v111[15] + 8)))
  {
    v92 = v111[10];
    v93 = v120 + v92;
    v95 = *(v120 + v92);
    v94 = *(v120 + v92 + 8);
    v96 = (v121 + v92);
    v98 = *v96;
    v97 = v96[1];
    if (v94 >> 60 == 15)
    {
      if (v97 >> 60 == 15)
      {
        sub_1001CB4B8(*v93, *(v93 + 8));
        sub_1001CB4B8(v98, v97);
        sub_100031A14(v95, v94);
LABEL_62:
        v102 = v111[16];
        v103 = v120 + v102;
        v105 = *(v120 + v102);
        v104 = *(v120 + v102 + 8);
        v106 = (v121 + v102);
        v108 = *v106;
        v107 = v106[1];
        if (v104 >> 60 == 15)
        {
          if (v107 >> 60 == 15)
          {
            sub_1001CB4B8(*v103, *(v103 + 8));
            sub_1001CB4B8(v108, v107);
            sub_100031A14(v105, v104);
            v83 = 1;
            return v83 & 1;
          }
        }

        else if (v107 >> 60 != 15)
        {
          sub_1001CB4B8(*v103, *(v103 + 8));
          sub_1001CB4B8(v108, v107);
          v83 = sub_1001CA5EC(v105, v104, v108, v107);
          sub_100031A14(v108, v107);
          sub_100031A14(v105, v104);
          return v83 & 1;
        }

        sub_1001CB4B8(*v103, *(v103 + 8));
        sub_1001CB4B8(v108, v107);
        sub_100031A14(v105, v104);
        v99 = v108;
        v100 = v107;
        goto LABEL_67;
      }

LABEL_60:
      sub_1001CB4B8(*v93, *(v93 + 8));
      sub_1001CB4B8(v98, v97);
      sub_100031A14(v95, v94);
      v99 = v98;
      v100 = v97;
LABEL_67:
      sub_100031A14(v99, v100);
      goto LABEL_48;
    }

    if (v97 >> 60 == 15)
    {
      goto LABEL_60;
    }

    sub_1001CB4B8(*v93, *(v93 + 8));
    sub_1001CB4B8(v98, v97);
    v101 = sub_1001CA5EC(v95, v94, v98, v97);
    sub_100031A14(v98, v97);
    sub_100031A14(v95, v94);
    if (v101)
    {
      goto LABEL_62;
    }
  }

LABEL_48:
  v83 = 0;
  return v83 & 1;
}

uint64_t type metadata accessor for RDSavedReminder()
{
  result = qword_10093B820;
  if (!qword_10093B820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001CB458(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001CB4B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100029344(a1, a2);
  }

  return a1;
}

uint64_t sub_1001CB4CC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001CB52C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001CB574(uint64_t a1)
{
  v2 = type metadata accessor for RDSavedReminder();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001CB5D0()
{
  result = qword_10093AA28;
  if (!qword_10093AA28)
  {
    sub_1000060C8(255, &unk_10093F600, REMHashtag_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093AA28);
  }

  return result;
}

uint64_t *sub_1001CB638(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = a3[5];
    v12 = (a1 + v11);
    v13 = (a2 + v11);
    if (*v13)
    {
      v14 = v13[1];
      v15 = v13[2];
      *v12 = *v13;
      v12[1] = v14;
      v16 = v13[3];
      v12[2] = v15;
      v12[3] = v16;
    }

    else
    {
      v17 = *(v13 + 1);
      *v12 = *v13;
      *(v12 + 1) = v17;
    }

    v18 = a3[7];
    *(a1 + a3[6]) = *(a2 + a3[6]);
    v19 = type metadata accessor for DateComponents();
    v20 = *(v19 - 8);
    v21 = *(v20 + 48);

    if (v21(a2 + v18, 1, v19))
    {
      v22 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
      memcpy(a1 + v18, a2 + v18, *(*(v22 - 8) + 64));
    }

    else
    {
      (*(v20 + 16))(a1 + v18, a2 + v18, v19);
      (*(v20 + 56))(a1 + v18, 0, 1, v19);
    }

    v23 = a3[9];
    *(a1 + a3[8]) = *(a2 + a3[8]);
    *(a1 + v23) = *(a2 + v23);
    v24 = a3[10];
    v25 = a1 + v24;
    v26 = (a2 + v24);
    v27 = *(a2 + v24 + 8);

    if (v27 >> 60 == 15)
    {
      *v25 = *v26;
    }

    else
    {
      v28 = *v26;
      sub_100029344(v28, v27);
      *v25 = v28;
      *(v25 + 1) = v27;
    }

    v29 = a3[12];
    *(a1 + a3[11]) = *(a2 + a3[11]);
    *(a1 + v29) = *(a2 + v29);
    v30 = a3[13];

    if (v21(a2 + v30, 1, v19))
    {
      v31 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
      memcpy(a1 + v30, a2 + v30, *(*(v31 - 8) + 64));
    }

    else
    {
      (*(v20 + 16))(a1 + v30, a2 + v30, v19);
      (*(v20 + 56))(a1 + v30, 0, 1, v19);
    }

    v32 = a3[14];
    v33 = a3[15];
    v34 = (a1 + v32);
    v35 = (a2 + v32);
    v36 = v35[1];
    *v34 = *v35;
    v34[1] = v36;
    v37 = (a1 + v33);
    v38 = *(a2 + v33);
    v39 = *(a2 + v33 + 8);

    sub_100029344(v38, v39);
    *v37 = v38;
    v37[1] = v39;
    v40 = a3[16];
    v41 = a1 + v40;
    v42 = a2 + v40;
    v43 = *(v42 + 1);
    if (v43 >> 60 == 15)
    {
      *v41 = *v42;
    }

    else
    {
      v44 = *v42;
      sub_100029344(*v42, *(v42 + 1));
      *v41 = v44;
      *(v41 + 1) = v43;
    }
  }

  return a1;
}

uint64_t sub_1001CBA60(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v6 = (a1 + a2[5]);
  if (*v6)
  {

    v7 = v6[1];

    v8 = v6[2];

    v9 = v6[3];
  }

  v10 = *(a1 + a2[6]);

  v11 = a2[7];
  v12 = type metadata accessor for DateComponents();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (!v14(a1 + v11, 1, v12))
  {
    (*(v13 + 8))(a1 + v11, v12);
  }

  v15 = *(a1 + a2[9]);

  v16 = (a1 + a2[10]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_10001BBA0(*v16, v17);
  }

  v18 = *(a1 + a2[12]);

  v19 = a2[13];
  if (!v14(a1 + v19, 1, v12))
  {
    (*(v13 + 8))(a1 + v19, v12);
  }

  v20 = *(a1 + a2[14] + 8);

  result = sub_10001BBA0(*(a1 + a2[15]), *(a1 + a2[15] + 8));
  v22 = (a1 + a2[16]);
  v23 = v22[1];
  if (v23 >> 60 != 15)
  {
    v24 = *v22;

    return sub_10001BBA0(v24, v23);
  }

  return result;
}

char *sub_1001CBCA8(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = a3[5];
  v10 = &a1[v9];
  v11 = &a2[v9];
  if (*v11)
  {
    v12 = *(v11 + 1);
    v13 = *(v11 + 2);
    *v10 = *v11;
    *(v10 + 1) = v12;
    v14 = *(v11 + 3);
    *(v10 + 2) = v13;
    *(v10 + 3) = v14;
  }

  else
  {
    v15 = *(v11 + 1);
    *v10 = *v11;
    *(v10 + 1) = v15;
  }

  v16 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  v17 = type metadata accessor for DateComponents();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);

  if (v19(&a2[v16], 1, v17))
  {
    v20 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
    memcpy(&a1[v16], &a2[v16], *(*(v20 - 8) + 64));
  }

  else
  {
    (*(v18 + 16))(&a1[v16], &a2[v16], v17);
    (*(v18 + 56))(&a1[v16], 0, 1, v17);
  }

  v21 = a3[9];
  *&a1[a3[8]] = *&a2[a3[8]];
  *&a1[v21] = *&a2[v21];
  v22 = a3[10];
  v23 = &a1[v22];
  v24 = &a2[v22];
  v25 = *&a2[v22 + 8];

  if (v25 >> 60 == 15)
  {
    *v23 = *v24;
  }

  else
  {
    v26 = *v24;
    sub_100029344(v26, v25);
    *v23 = v26;
    *(v23 + 1) = v25;
  }

  v27 = a3[12];
  *&a1[a3[11]] = *&a2[a3[11]];
  *&a1[v27] = *&a2[v27];
  v28 = a3[13];

  if (v19(&a2[v28], 1, v17))
  {
    v29 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
    memcpy(&a1[v28], &a2[v28], *(*(v29 - 8) + 64));
  }

  else
  {
    (*(v18 + 16))(&a1[v28], &a2[v28], v17);
    (*(v18 + 56))(&a1[v28], 0, 1, v17);
  }

  v30 = a3[14];
  v31 = a3[15];
  v32 = &a1[v30];
  v33 = &a2[v30];
  v34 = *(v33 + 1);
  *v32 = *v33;
  *(v32 + 1) = v34;
  v35 = &a1[v31];
  v36 = *&a2[v31];
  v37 = *&a2[v31 + 8];

  sub_100029344(v36, v37);
  *v35 = v36;
  v35[1] = v37;
  v38 = a3[16];
  v39 = &a1[v38];
  v40 = &a2[v38];
  v41 = *(v40 + 1);
  if (v41 >> 60 == 15)
  {
    *v39 = *v40;
  }

  else
  {
    v42 = *v40;
    sub_100029344(*v40, *(v40 + 1));
    *v39 = v42;
    *(v39 + 1) = v41;
  }

  return a1;
}

char *sub_1001CC084(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v11 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 24))(a1, a2, v6);
LABEL_7:
  v12 = a3[5];
  v13 = &a1[v12];
  v14 = &a2[v12];
  v15 = *&a2[v12];
  if (*&a1[v12])
  {
    if (v15)
    {
      *v13 = v15;

      v16 = *(v13 + 1);
      *(v13 + 1) = *(v14 + 1);

      v17 = *(v13 + 2);
      *(v13 + 2) = *(v14 + 2);

      v18 = *(v13 + 3);
      *(v13 + 3) = *(v14 + 3);
    }

    else
    {
      sub_1001CC6D4(&a1[v12]);
      v19 = *(v14 + 1);
      *v13 = *v14;
      *(v13 + 1) = v19;
    }
  }

  else if (v15)
  {
    *v13 = v15;
    *(v13 + 1) = *(v14 + 1);
    *(v13 + 2) = *(v14 + 2);
    *(v13 + 3) = *(v14 + 3);
  }

  else
  {
    v20 = *(v14 + 1);
    *v13 = *v14;
    *(v13 + 1) = v20;
  }

  v21 = a3[6];
  v22 = *&a1[v21];
  *&a1[v21] = *&a2[v21];

  v23 = a3[7];
  v24 = type metadata accessor for DateComponents();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v27 = v26(&a1[v23], 1, v24);
  v28 = v26(&a2[v23], 1, v24);
  if (v27)
  {
    if (!v28)
    {
      (*(v25 + 16))(&a1[v23], &a2[v23], v24);
      (*(v25 + 56))(&a1[v23], 0, 1, v24);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v28)
  {
    (*(v25 + 8))(&a1[v23], v24);
LABEL_20:
    v29 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
    memcpy(&a1[v23], &a2[v23], *(*(v29 - 8) + 64));
    goto LABEL_21;
  }

  (*(v25 + 24))(&a1[v23], &a2[v23], v24);
LABEL_21:
  *&a1[a3[8]] = *&a2[a3[8]];
  v30 = a3[9];
  v31 = *&a1[v30];
  *&a1[v30] = *&a2[v30];

  v32 = a3[10];
  v33 = &a1[v32];
  v34 = &a2[v32];
  v35 = *&a2[v32 + 8];
  if (*&a1[v32 + 8] >> 60 == 15)
  {
    if (v35 >> 60 != 15)
    {
      v36 = *v34;
      sub_100029344(v36, v35);
      *v33 = v36;
      v33[1] = v35;
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (v35 >> 60 == 15)
  {
    sub_1001531B8(v33);
LABEL_26:
    *v33 = *v34;
    goto LABEL_28;
  }

  v37 = *v34;
  sub_100029344(v37, v35);
  v38 = *v33;
  v39 = v33[1];
  *v33 = v37;
  v33[1] = v35;
  sub_10001BBA0(v38, v39);
LABEL_28:
  *&a1[a3[11]] = *&a2[a3[11]];
  v40 = a3[12];
  v41 = *&a1[v40];
  *&a1[v40] = *&a2[v40];

  v42 = a3[13];
  LODWORD(v41) = v26(&a1[v42], 1, v24);
  v43 = v26(&a2[v42], 1, v24);
  if (v41)
  {
    if (!v43)
    {
      (*(v25 + 16))(&a1[v42], &a2[v42], v24);
      (*(v25 + 56))(&a1[v42], 0, 1, v24);
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (v43)
  {
    (*(v25 + 8))(&a1[v42], v24);
LABEL_33:
    v44 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
    memcpy(&a1[v42], &a2[v42], *(*(v44 - 8) + 64));
    goto LABEL_34;
  }

  (*(v25 + 24))(&a1[v42], &a2[v42], v24);
LABEL_34:
  v45 = a3[14];
  v46 = &a1[v45];
  v47 = &a2[v45];
  *v46 = *v47;
  v48 = *(v46 + 1);
  *(v46 + 1) = *(v47 + 1);

  v49 = a3[15];
  v50 = &a1[v49];
  v51 = &a2[v49];
  v52 = *v51;
  v53 = v51[1];
  sub_100029344(*v51, v53);
  v54 = *v50;
  v55 = v50[1];
  *v50 = v52;
  v50[1] = v53;
  sub_10001BBA0(v54, v55);
  v56 = a3[16];
  v57 = &a1[v56];
  v58 = &a2[v56];
  v59 = *&a2[v56 + 8];
  if (*&a1[v56 + 8] >> 60 != 15)
  {
    if (v59 >> 60 != 15)
    {
      v61 = *v58;
      sub_100029344(v61, v59);
      v62 = *v57;
      v63 = v57[1];
      *v57 = v61;
      v57[1] = v59;
      sub_10001BBA0(v62, v63);
      return a1;
    }

    sub_1001531B8(v57);
    goto LABEL_39;
  }

  if (v59 >> 60 == 15)
  {
LABEL_39:
    *v57 = *v58;
    return a1;
  }

  v60 = *v58;
  sub_100029344(v60, v59);
  *v57 = v60;
  v57[1] = v59;
  return a1;
}

char *sub_1001CC728(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = a3[5];
  v10 = a3[6];
  v11 = &a1[v9];
  v12 = &a2[v9];
  v13 = *(v12 + 1);
  *v11 = *v12;
  *(v11 + 1) = v13;
  *&a1[v10] = *&a2[v10];
  v14 = a3[7];
  v15 = type metadata accessor for DateComponents();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(&a2[v14], 1, v15))
  {
    v18 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
    memcpy(&a1[v14], &a2[v14], *(*(v18 - 8) + 64));
  }

  else
  {
    (*(v16 + 32))(&a1[v14], &a2[v14], v15);
    (*(v16 + 56))(&a1[v14], 0, 1, v15);
  }

  v19 = a3[9];
  *&a1[a3[8]] = *&a2[a3[8]];
  *&a1[v19] = *&a2[v19];
  v20 = a3[11];
  *&a1[a3[10]] = *&a2[a3[10]];
  *&a1[v20] = *&a2[v20];
  v21 = a3[13];
  *&a1[a3[12]] = *&a2[a3[12]];
  if (v17(&a2[v21], 1, v15))
  {
    v22 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
    memcpy(&a1[v21], &a2[v21], *(*(v22 - 8) + 64));
  }

  else
  {
    (*(v16 + 32))(&a1[v21], &a2[v21], v15);
    (*(v16 + 56))(&a1[v21], 0, 1, v15);
  }

  v23 = a3[15];
  *&a1[a3[14]] = *&a2[a3[14]];
  *&a1[v23] = *&a2[v23];
  *&a1[a3[16]] = *&a2[a3[16]];
  return a1;
}

char *sub_1001CCA30(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v11 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 40))(a1, a2, v6);
LABEL_7:
  v12 = a3[5];
  v13 = &a1[v12];
  v14 = &a2[v12];
  if (*&a1[v12])
  {
    if (*v14)
    {
      *v13 = *v14;

      v15 = *(v13 + 1);
      *(v13 + 1) = *(v14 + 1);

      v16 = *(v13 + 2);
      *(v13 + 2) = *(v14 + 2);

      v17 = *(v13 + 3);
      *(v13 + 3) = *(v14 + 3);

      goto LABEL_12;
    }

    sub_1001CC6D4(v13);
  }

  v18 = *(v14 + 1);
  *v13 = *v14;
  *(v13 + 1) = v18;
LABEL_12:
  v19 = a3[6];
  v20 = *&a1[v19];
  *&a1[v19] = *&a2[v19];

  v21 = a3[7];
  v22 = type metadata accessor for DateComponents();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  v25 = v24(&a1[v21], 1, v22);
  v26 = v24(&a2[v21], 1, v22);
  if (v25)
  {
    if (!v26)
    {
      (*(v23 + 32))(&a1[v21], &a2[v21], v22);
      (*(v23 + 56))(&a1[v21], 0, 1, v22);
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v26)
  {
    (*(v23 + 8))(&a1[v21], v22);
LABEL_17:
    v27 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
    memcpy(&a1[v21], &a2[v21], *(*(v27 - 8) + 64));
    goto LABEL_18;
  }

  (*(v23 + 40))(&a1[v21], &a2[v21], v22);
LABEL_18:
  v28 = a3[9];
  *&a1[a3[8]] = *&a2[a3[8]];
  v29 = *&a1[v28];
  *&a1[v28] = *&a2[v28];

  v30 = a3[10];
  v31 = &a1[v30];
  v32 = &a2[v30];
  v33 = *&a1[v30 + 8];
  if (v33 >> 60 == 15)
  {
LABEL_21:
    *v31 = *v32;
    goto LABEL_23;
  }

  v34 = *(v32 + 1);
  if (v34 >> 60 == 15)
  {
    sub_1001531B8(v31);
    goto LABEL_21;
  }

  v35 = *v31;
  *v31 = *v32;
  *(v31 + 8) = v34;
  sub_10001BBA0(v35, v33);
LABEL_23:
  v36 = a3[12];
  *&a1[a3[11]] = *&a2[a3[11]];
  v37 = *&a1[v36];
  *&a1[v36] = *&a2[v36];

  v38 = a3[13];
  v39 = v24(&a1[v38], 1, v22);
  v40 = v24(&a2[v38], 1, v22);
  if (v39)
  {
    if (!v40)
    {
      (*(v23 + 32))(&a1[v38], &a2[v38], v22);
      (*(v23 + 56))(&a1[v38], 0, 1, v22);
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (v40)
  {
    (*(v23 + 8))(&a1[v38], v22);
LABEL_28:
    v41 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
    memcpy(&a1[v38], &a2[v38], *(*(v41 - 8) + 64));
    goto LABEL_29;
  }

  (*(v23 + 40))(&a1[v38], &a2[v38], v22);
LABEL_29:
  v42 = a3[14];
  v43 = &a1[v42];
  v44 = &a2[v42];
  v46 = *v44;
  v45 = *(v44 + 1);
  v47 = *(v43 + 1);
  *v43 = v46;
  *(v43 + 1) = v45;

  v48 = a3[15];
  v49 = *&a1[v48];
  v50 = *&a1[v48 + 8];
  *&a1[v48] = *&a2[v48];
  sub_10001BBA0(v49, v50);
  v51 = a3[16];
  v52 = &a1[v51];
  v53 = &a2[v51];
  v54 = *&a1[v51 + 8];
  if (v54 >> 60 != 15)
  {
    v55 = v53[1];
    if (v55 >> 60 != 15)
    {
      v56 = *v52;
      *v52 = *v53;
      v52[1] = v55;
      sub_10001BBA0(v56, v54);
      return a1;
    }

    sub_1001531B8(v52);
  }

  *v52 = *v53;
  return a1;
}

void sub_1001CCF9C()
{
  sub_1001CD0E4(319, &qword_100938D60, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1001CD0E4(319, &unk_10093B830, &type metadata accessor for DateComponents);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initStructMetadata();
    }
  }
}

void sub_1001CD0E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1001CD138()
{
  result = qword_10093B898;
  if (!qword_10093B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B898);
  }

  return result;
}

unint64_t sub_1001CD18C()
{
  result = qword_10093B8A8;
  if (!qword_10093B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B8A8);
  }

  return result;
}

unint64_t sub_1001CD1E0()
{
  result = qword_10093B8B8;
  if (!qword_10093B8B8)
  {
    sub_1000F514C(&qword_10093B8B0, &qword_100798E80);
    sub_1001CD264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B8B8);
  }

  return result;
}

unint64_t sub_1001CD264()
{
  result = qword_10093B8C0;
  if (!qword_10093B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B8C0);
  }

  return result;
}

unint64_t sub_1001CD2B8()
{
  result = qword_10093B8D8;
  if (!qword_10093B8D8)
  {
    sub_1000F514C(&qword_10093B8D0, &qword_100798E88);
    sub_1001CD33C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B8D8);
  }

  return result;
}

unint64_t sub_1001CD33C()
{
  result = qword_10093B8E0;
  if (!qword_10093B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B8E0);
  }

  return result;
}

unint64_t sub_1001CD390()
{
  result = qword_10093B8F0;
  if (!qword_10093B8F0)
  {
    sub_1000F514C(&qword_10093B8E8, &qword_100798E90);
    sub_1001CD414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B8F0);
  }

  return result;
}

unint64_t sub_1001CD414()
{
  result = qword_10093B8F8;
  if (!qword_10093B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B8F8);
  }

  return result;
}

unint64_t sub_1001CD468()
{
  result = qword_10093B910;
  if (!qword_10093B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B910);
  }

  return result;
}

unint64_t sub_1001CD4BC()
{
  result = qword_10093B918;
  if (!qword_10093B918)
  {
    sub_1000F514C(&qword_10093B8B0, &qword_100798E80);
    sub_1001CD540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B918);
  }

  return result;
}

unint64_t sub_1001CD540()
{
  result = qword_10093B920;
  if (!qword_10093B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B920);
  }

  return result;
}

unint64_t sub_1001CD594()
{
  result = qword_10093B930;
  if (!qword_10093B930)
  {
    sub_1000F514C(&qword_10093B8D0, &qword_100798E88);
    sub_1001CD618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B930);
  }

  return result;
}

unint64_t sub_1001CD618()
{
  result = qword_10093B938;
  if (!qword_10093B938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B938);
  }

  return result;
}

unint64_t sub_1001CD66C()
{
  result = qword_10093B940;
  if (!qword_10093B940)
  {
    sub_1000F514C(&qword_10093B8E8, &qword_100798E90);
    sub_1001CD6F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B940);
  }

  return result;
}

unint64_t sub_1001CD6F0()
{
  result = qword_10093B948;
  if (!qword_10093B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B948);
  }

  return result;
}

uint64_t sub_1001CD744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDSavedReminder();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for RDSavedReminder.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RDSavedReminder.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001CD8FC()
{
  result = qword_10093B950;
  if (!qword_10093B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B950);
  }

  return result;
}

unint64_t sub_1001CD954()
{
  result = qword_10093B958;
  if (!qword_10093B958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B958);
  }

  return result;
}

unint64_t sub_1001CD9AC()
{
  result = qword_10093B960;
  if (!qword_10093B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B960);
  }

  return result;
}

uint64_t sub_1001CDA00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6972546D72616C61 && a2 == 0xED00007372656767 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001007EC030 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001007EA5C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656767616C66 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7367617468736168 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001007EA5E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E65727275636572 && a2 == 0xEF73656C75526563 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001007EA5A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001007EA570 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001007EFA00 == a2)
  {

    return 12;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1001CDE28()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093B968);
  v1 = sub_100006654(v0, qword_10093B968);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001CDEF0()
{
  result = sub_10001035C(0);
  qword_100974C28 = result;
  return result;
}

uint64_t sub_1001CDF14()
{
  KeyPath = swift_getKeyPath();
  v1 = sub_1003EAA24(KeyPath);

  qword_100974C30 = v1;
  return result;
}

void sub_1001CDF58(uint64_t a1, void (*a2)(char *, char *, uint64_t))
{
  v216 = a2;
  v3 = v2;
  *&v217 = a1;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v211 = &v207 - v6;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v212 = v7;
  v213 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v210 = &v207 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v208 = &v207 - v12;
  __chkstk_darwin(v13);
  v15 = &v207 - v14;
  __chkstk_darwin(v16);
  v18 = &v207 - v17;
  __chkstk_darwin(v19);
  v209 = &v207 - v20;
  __chkstk_darwin(v21);
  v23 = &v207 - v22;
  __chkstk_darwin(v24);
  v26 = &v207 - v25;
  __chkstk_darwin(v27);
  v29 = &v207 - v28;
  v30 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30 - 8);
  v34 = &v207 - v33;
  if (qword_100935B68 != -1)
  {
    swift_once();
  }

  v214 = qword_100974C28;
  switch([v3 type])
  {
    case 0uLL:
      v35 = [v3 listID];
      if (!v35)
      {
        goto LABEL_87;
      }

      v36 = v35;
      v37 = v215;
      v38 = sub_1005E37C0(v36);
      if (v37)
      {
        goto LABEL_47;
      }

      v39 = v38;
      v40 = sub_1005660A8(v38, 0);
      if (v40)
      {
        v215 = 0;
        v175 = v40;
        KeyPath = swift_getKeyPath();
        v177 = v175;
        v178 = sub_100392240(KeyPath, v175);

        sub_1000F5104(&qword_10093B980, qword_10079A3D0);
        inited = swift_initStackObject();
        v217 = xmmword_100791340;
        *(inited + 16) = xmmword_100791340;
        v180 = v214;
        *(inited + 32) = v214;
        *(inited + 40) = v178;
        v181 = v178;
        v182 = v180;
        v183 = sub_10000C2B0(inited);
        if (v216)
        {
        }

        else
        {
          swift_getKeyPath();
          v184 = sub_1003F71EC();

          v185 = swift_initStackObject();
          *(v185 + 16) = v217;
          v186 = v183;
          *(v185 + 32) = v183;
          *(v185 + 40) = v184;
          v187 = v184;
          v188 = v186;
          sub_10000C2B0(v185);
        }
      }

      else
      {
        [objc_opt_self() noSuchObjectErrorWithObjectID:v36];
        swift_willThrow();
      }

      return;
    case 1uLL:
      v126 = [v3 parentReminderID];
      if (!v126)
      {
        goto LABEL_87;
      }

      v36 = v126;
      v127 = v215;
      v128 = sub_1005E2A38(v36);
      if (v127)
      {
LABEL_47:
      }

      else
      {
        v169 = v128;
        v170 = sub_100566030(v128, 0);
        if (v170)
        {
          v189 = v170;
          v190 = swift_getKeyPath();
          v191 = v189;
          v192 = sub_1003923E4(v190, v189);

          sub_1000F5104(&qword_10093B980, qword_10079A3D0);
          v193 = swift_initStackObject();
          *(v193 + 16) = xmmword_100791340;
          v194 = v214;
          *(v193 + 32) = v214;
          *(v193 + 40) = v192;
          v195 = v192;
          v196 = v194;
          sub_10000C2B0(v193);
        }

        else
        {
          [objc_opt_self() noSuchObjectErrorWithObjectID:v36];
          swift_willThrow();
        }
      }

      return;
    case 2uLL:
      v89 = [v3 objectIDs];
      if (!v89)
      {
        goto LABEL_87;
      }

      v90 = v89;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v91 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v92 = swift_getKeyPath();
      v93 = v91;
      v94 = v92;
      if (v93 >> 62)
      {
        v197 = v93;
        v198 = _CocoaArrayWrapper.endIndex.getter();
        v93 = v197;
        v95 = v198;
        if (v198)
        {
LABEL_30:
          v96 = v93;
          v216 = v94;
          v218 = _swiftEmptyArrayStorage;
          sub_100253218(0, v95 & ~(v95 >> 63), 0);
          if ((v95 & 0x8000000000000000) == 0)
          {
            v97 = 0;
            v98 = v218;
            v99 = v96;
            *&v217 = v96 & 0xC000000000000001;
            v100 = v96;
            do
            {
              v101 = v95;
              if (v217)
              {
                v102 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v102 = *(v99 + 8 * v97 + 32);
              }

              v103 = v102;
              v104 = [v102 uuid];
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v105 = type metadata accessor for UUID();
              (*(*(v105 - 8) + 56))(v34, 0, 1, v105);
              v218 = v98;
              v107 = v98[2];
              v106 = v98[3];
              if (v107 >= v106 >> 1)
              {
                sub_100253218(v106 > 1, v107 + 1, 1);
                v98 = v218;
              }

              ++v97;
              v98[2] = v107 + 1;
              sub_100100FB4(v34, v98 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v107);
              v95 = v101;
              v99 = v100;
            }

            while (v101 != v97);

            v94 = v216;
            goto LABEL_109;
          }

          goto LABEL_113;
        }
      }

      else
      {
        v95 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v95)
        {
          goto LABEL_30;
        }
      }

      v98 = _swiftEmptyArrayStorage;
LABEL_109:
      v199 = sub_1003E9F90(v94, v98);

      sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      v200 = swift_initStackObject();
      *(v200 + 16) = xmmword_100791340;
      v201 = v214;
      *(v200 + 32) = v214;
      *(v200 + 40) = v199;
      v202 = v201;
      sub_10000C2B0(v200);
      return;
    case 3uLL:
      v108 = [v3 startingDueDate];
      if (!v108)
      {
        goto LABEL_87;
      }

      v109 = v108;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v110 = swift_getKeyPath();
      v112 = v212;
      v111 = v213;
      v113 = v211;
      (*(v213 + 16))(v211, v29, v212);
      (*(v111 + 56))(v113, 0, 1, v112);
      v114 = sub_1003EA414(v110, v113);

      sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      v115 = swift_initStackObject();
      *(v115 + 16) = xmmword_100791340;
      v116 = v214;
      *(v115 + 32) = v214;
      *(v115 + 40) = v114;
      v117 = v116;
      sub_10000C2B0(v115);
      (*(v111 + 8))(v29, v112);
      return;
    case 4uLL:
      v51 = [v3 endingDueDate];
      if (!v51)
      {
        goto LABEL_87;
      }

      v52 = v51;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v53 = swift_getKeyPath();
      v55 = v212;
      v54 = v213;
      v56 = v211;
      (*(v213 + 16))(v211, v26, v212);
      (*(v54 + 56))(v56, 0, 1, v55);
      v57 = sub_1003EA208(v53, v56);

      sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      v58 = swift_initStackObject();
      *(v58 + 16) = xmmword_100791340;
      v59 = v214;
      *(v58 + 32) = v214;
      *(v58 + 40) = v57;
      v60 = v59;
      sub_10000C2B0(v58);
      (*(v54 + 8))(v26, v55);
      return;
    case 5uLL:
      v129 = [v3 startingDueDate];
      if (!v129)
      {
        goto LABEL_87;
      }

      v130 = v129;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v131 = [v3 endingDueDate];
      if (v131)
      {
        v132 = v131;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v133 = swift_getKeyPath();
        v135 = v212;
        v134 = v213;
        v216 = *(v213 + 16);
        v136 = v211;
        v216(v211, v23, v212);
        v210 = *(v134 + 56);
        (v210)(v136, 0, 1, v135);
        *&v217 = sub_1003EA208(v133, v136);

        v137 = swift_getKeyPath();
        v216(v136, v209, v135);
        (v210)(v136, 0, 1, v135);
        v138 = sub_1003EA414(v137, v136);

        sub_1000F5104(&qword_10093B980, qword_10079A3D0);
        v139 = swift_initStackObject();
        *(v139 + 16) = xmmword_100791320;
        v140 = v214;
        v141 = v217;
        *(v139 + 32) = v214;
        *(v139 + 40) = v141;
        *(v139 + 48) = v138;
        v142 = v140;
        sub_10000C2B0(v139);
        v143 = *(v134 + 8);
        v143(v209, v135);
        v143(v23, v135);
        return;
      }

      (*(v213 + 8))(v23, v212);
      goto LABEL_87;
    case 6uLL:
      v144 = [v3 completed];
      v145 = swift_getKeyPath();
      if (v144)
      {
        v146 = sub_1003910E0(v145, 1);
      }

      else
      {
        v146 = sub_1003EAA24(v145);
      }

      v125 = v146;

      sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      goto LABEL_70;
    case 7uLL:
      v118 = [v3 text];
      if (!v118)
      {
        goto LABEL_87;
      }

      v119 = v118;
      v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v122 = v121;

      v123 = [v3 textMatching];
      if (v123 > 1)
      {
        if (v123 == 2)
        {
          v168 = swift_getKeyPath();
          v125 = sub_100546590(v168, v120, v122, 6);

          sub_1000F5104(&qword_10093B980, qword_10079A3D0);
        }

        else
        {
          if (v123 != 3)
          {
            goto LABEL_119;
          }

          v174 = swift_getKeyPath();
          v125 = sub_1005465A4(v174, v120, v122, 6);

          sub_1000F5104(&qword_10093B980, qword_10079A3D0);
        }
      }

      else if (v123)
      {
        if (v123 != 1)
        {
          goto LABEL_119;
        }

        v173 = swift_getKeyPath();
        v125 = sub_1003EB478(v173, v120, v122, 6);

        sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      }

      else
      {
        v124 = swift_getKeyPath();
        v125 = sub_1003910F4(v124, v120, v122);

        sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      }

LABEL_70:
      v165 = swift_initStackObject();
      *(v165 + 16) = xmmword_100791340;
      v166 = v214;
      *(v165 + 32) = v214;
      *(v165 + 40) = v125;
      v167 = v166;
      sub_10000C2B0(v165);
      return;
    case 8uLL:
      v157 = [v3 descriptors];
      if (!v157)
      {
        goto LABEL_87;
      }

      v158 = v157;
      sub_1000060C8(0, &qword_10093B988, REMReminderPredicateDescriptor_ptr);
      v81 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v81 >> 62)
      {
        v159 = _CocoaArrayWrapper.endIndex.getter();
        v160 = v215;
        if (v159)
        {
          goto LABEL_58;
        }

LABEL_111:

        sub_10000C2B0(_swiftEmptyArrayStorage);
        return;
      }

      v159 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v160 = v215;
      if (!v159)
      {
        goto LABEL_111;
      }

LABEL_58:
      v218 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v159 < 0)
      {
        goto LABEL_114;
      }

      v161 = 0;
      v213 = v81 & 0xFFFFFFFFFFFFFF8;
      v214 = v81 & 0xC000000000000001;
      while (1)
      {
        v162 = v161 + 1;
        if (__OFADD__(v161, 1))
        {
          break;
        }

        if (v214)
        {
          v163 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v161 >= *(v213 + 16))
          {
            goto LABEL_104;
          }

          v163 = *(v81 + 8 * v161 + 32);
        }

        v87 = v163;
        sub_1001CDF58(v217, v216);
        if (v160)
        {
LABEL_71:

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v164 = v218[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v161;
        v160 = 0;
        if (v162 == v159)
        {

          sub_10000C2B0(v218);
          return;
        }
      }

      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      v82 = _CocoaArrayWrapper.endIndex.getter();
      v83 = v215;
      if (!v82)
      {
LABEL_106:

        sub_100025060(_swiftEmptyArrayStorage);
        return;
      }

LABEL_17:
      v218 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v82 < 0)
      {
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        if (qword_100935B60 != -1)
        {
          swift_once();
        }

        v203 = type metadata accessor for Logger();
        sub_100006654(v203, qword_10093B968);
        sub_1001F67C8(_swiftEmptyArrayStorage);
        sub_1001F67C8(_swiftEmptyArrayStorage);
        v204 = "unknown type";
        for (i = 12; ; i = 20)
        {
          sub_10054573C(v204, i, 2);
          __break(1u);
LABEL_119:
          if (qword_100935B60 != -1)
          {
            swift_once();
          }

          v206 = type metadata accessor for Logger();
          sub_100006654(v206, qword_10093B968);
          sub_1001F67C8(_swiftEmptyArrayStorage);
          sub_1001F67C8(_swiftEmptyArrayStorage);
          v204 = "unknown textMatching";
        }
      }

      v84 = 0;
      v213 = v81 & 0xFFFFFFFFFFFFFF8;
      v214 = v81 & 0xC000000000000001;
      do
      {
        v85 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          goto LABEL_102;
        }

        if (v214)
        {
          v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v84 >= *(v213 + 16))
          {
            goto LABEL_103;
          }

          v86 = *(v81 + 8 * v84 + 32);
        }

        v87 = v86;
        sub_1001CDF58(v217, v216);
        if (v83)
        {
          goto LABEL_71;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v88 = v218[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v84;
        v83 = 0;
      }

      while (v85 != v82);

      sub_100025060(v218);
      return;
    case 9uLL:
      v79 = [v3 descriptors];
      if (!v79)
      {
        goto LABEL_87;
      }

      v80 = v79;
      sub_1000060C8(0, &qword_10093B988, REMReminderPredicateDescriptor_ptr);
      v81 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v81 >> 62)
      {
        goto LABEL_105;
      }

      v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v83 = v215;
      if (v82)
      {
        goto LABEL_17;
      }

      goto LABEL_106;
    case 0xAuLL:
      v147 = [v3 startingDueDate];
      if (!v147)
      {
        goto LABEL_87;
      }

      v148 = v147;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v149 = swift_getKeyPath();
      v151 = v212;
      v150 = v213;
      v152 = v211;
      (*(v213 + 16))(v211, v18, v212);
      (*(v150 + 56))(v152, 0, 1, v151);
      v153 = sub_1003EA414(v149, v152);

      sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      v154 = swift_initStackObject();
      *(v154 + 16) = xmmword_100791340;
      v155 = v214;
      *(v154 + 32) = v214;
      *(v154 + 40) = v153;
      v156 = v155;
      sub_10000C2B0(v154);
      (*(v150 + 8))(v18, v151);
      return;
    case 0xBuLL:
      v41 = [v3 endingDueDate];
      if (!v41)
      {
        goto LABEL_87;
      }

      v42 = v41;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = swift_getKeyPath();
      v45 = v212;
      v44 = v213;
      v46 = v211;
      (*(v213 + 16))(v211, v15, v212);
      (*(v44 + 56))(v46, 0, 1, v45);
      v47 = sub_1003EA208(v43, v46);

      sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      v48 = swift_initStackObject();
      *(v48 + 16) = xmmword_100791340;
      v49 = v214;
      *(v48 + 32) = v214;
      *(v48 + 40) = v47;
      v50 = v49;
      sub_10000C2B0(v48);
      (*(v44 + 8))(v15, v45);
      return;
    case 0xCuLL:
      v61 = [v3 startingDueDate];
      if (!v61)
      {
        goto LABEL_87;
      }

      v62 = v208;
      v63 = v61;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v64 = [v3 endingDueDate];
      if (v64)
      {
        v65 = v64;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v66 = swift_getKeyPath();
        v67 = v213;
        v216 = *(v213 + 16);
        v68 = v211;
        v69 = v62;
        v70 = v212;
        v216(v211, v69, v212);
        v71 = *(v67 + 56);
        v71(v68, 0, 1, v70);
        *&v217 = sub_1003EA208(v66, v68);

        v72 = swift_getKeyPath();
        v216(v68, v210, v70);
        v71(v68, 0, 1, v70);
        v73 = sub_1003EA414(v72, v68);

        sub_1000F5104(&qword_10093B980, qword_10079A3D0);
        v74 = swift_initStackObject();
        *(v74 + 16) = xmmword_100791320;
        v75 = v214;
        v76 = v217;
        *(v74 + 32) = v214;
        *(v74 + 40) = v76;
        *(v74 + 48) = v73;
        v77 = v75;
        sub_10000C2B0(v74);
        v78 = *(v67 + 8);
        v78(v210, v70);
        v78(v208, v70);
      }

      else
      {
        (*(v213 + 8))(v62, v212);
LABEL_87:
        v171 = objc_opt_self();
        v172 = String._bridgeToObjectiveC()();
        [v171 internalErrorWithDebugDescription:v172];

        swift_willThrow();
      }

      return;
    default:
      goto LABEL_115;
  }
}

uint64_t sub_1001CF968()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093B990);
  v1 = sub_100006654(v0, qword_10093B990);
  if (qword_100936448 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975020);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001CFA78()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093BA40);
  v1 = sub_100006654(v0, qword_10093BA40);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static REMCDAlarm.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id static REMCDAlarm.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 recordID];
  v9 = [v8 recordName];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v9 context:a3 account:a2];

  if (v10)
  {
    v11 = [a2 ckIdentifier];
    if (v11)
    {
      v12 = v11;
      [v10 mergeDataFromRecord:a1 accountID:v11];

      v13 = v10;
      [v13 setCkServerRecord:a1];
      [v13 setInCloud:1];

      [v13 updateParentReferenceIfNecessary];
    }

    else
    {
      if (qword_100935B80 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100006654(v14, qword_10093BA40);
      v15 = a2;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v4;
        *v18 = 136446466;
        swift_getMetatypeMetadata();
        v19 = String.init<A>(describing:)();
        v21 = sub_10000668C(v19, v20, &v30);

        *(v18 + 4) = v21;
        *(v18 + 12) = 2082;
        v22 = [v15 remObjectID];
        if (v22)
        {
          v23 = v22;
          v24 = [v22 description];

          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;
        }

        else
        {
          v27 = 0xE300000000000000;
          v25 = 7104878;
        }

        v28 = sub_10000668C(v25, v27, &v30);

        *(v18 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v16, v17, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v18, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  return v10;
}