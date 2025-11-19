uint64_t sub_1002A0710(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_1002A0780(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (!v3)
  {
    return v4;
  }

  v5 = a1;
  v53 = _swiftEmptyArrayStorage;
  sub_10019F9A8(0, v3, 0);
  v4 = _swiftEmptyArrayStorage;
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = _HashTable.startBucket.getter();
  v9 = *(v5 + 36);
  result = sub_100068FC4(&qword_100502C58, &qword_100409D20);
  v46 = v5;
  v11 = 0;
  v42 = v5 + 72;
  v43 = v3;
  v44 = v5 + 64;
  v45 = v9;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v5 + 32))
  {
    v15 = v8 >> 6;
    if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_25;
    }

    if (v9 != *(v5 + 36))
    {
      goto LABEL_26;
    }

    v48 = v11;
    v49 = v4;
    v16 = *(v5 + 56);
    v17 = (*(v5 + 48) + 16 * v8);
    v19 = *v17;
    v18 = v17[1];
    v20 = *(v16 + 8 * v8);
    sub_100069E2C(*v17, v18);
    v47 = v2;
    sub_100288788(v19, v18);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v21 = BidirectionalCollection<>.joined(separator:)();
    v23 = v22;

    v50 = v21;
    v51 = v23;
    v52 = v20;
    v24 = static _DictionaryStorage.allocate(capacity:)();

    v26 = v50;
    v25 = v51;
    v27 = v52;

    result = sub_10008C908(v26, v25);
    if (v28)
    {
      goto LABEL_27;
    }

    v24[(result >> 6) + 8] |= 1 << result;
    v29 = (v24[6] + 16 * result);
    *v29 = v26;
    v29[1] = v25;
    *(v24[7] + 8 * result) = v27;
    v30 = v24[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_28;
    }

    v24[2] = v32;

    sub_100075768(&v50, &qword_100507810, &qword_1004143C0);
    result = sub_10006A178(v19, v18);
    v4 = v49;
    v53 = v49;
    v34 = v49[2];
    v33 = v49[3];
    if (v34 >= v33 >> 1)
    {
      result = sub_10019F9A8((v33 > 1), v34 + 1, 1);
      v4 = v53;
    }

    v4[2] = v34 + 1;
    v4[v34 + 4] = v24;
    LODWORD(v9) = v45;
    v5 = v46;
    v12 = 1 << *(v46 + 32);
    if (v8 >= v12)
    {
      goto LABEL_29;
    }

    v6 = v44;
    v35 = *(v44 + 8 * v15);
    if ((v35 & (1 << v8)) == 0)
    {
      goto LABEL_30;
    }

    if (v45 != *(v46 + 36))
    {
      goto LABEL_31;
    }

    v36 = v35 & (-2 << (v8 & 0x3F));
    if (v36)
    {
      v12 = __clz(__rbit64(v36)) | v8 & 0x7FFFFFFFFFFFFFC0;
      v13 = v43;
      v14 = v48;
    }

    else
    {
      v37 = v15 << 6;
      v38 = v15 + 1;
      v13 = v43;
      v39 = (v42 + 8 * v15);
      while (v38 < (v12 + 63) >> 6)
      {
        v41 = *v39++;
        v40 = v41;
        v37 += 64;
        ++v38;
        if (v41)
        {
          result = sub_1000937D4(v8, v45, 0);
          v12 = __clz(__rbit64(v40)) + v37;
          goto LABEL_22;
        }
      }

      result = sub_1000937D4(v8, v45, 0);
LABEL_22:
      v14 = v48;
    }

    v11 = v14 + 1;
    v8 = v12;
    v2 = v47;
    if (v11 == v13)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_1002A0B30()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v7 = qword_10051B7F0;
    *v6 = qword_10051B7F0;
    (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
    v8 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    (*(v3 + 8))(v6, v2);
    if ((v7 & 1) == 0)
    {
      __break(1u);
      goto LABEL_47;
    }

    if (*(v1 + 16))
    {
      break;
    }

    if (qword_100501C38 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000958E4(v13, qword_1005094B8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Lyon Power started", v16, 2u);
    }

    *(v1 + 16) = 1;
    if (qword_100501AF0 != -1)
    {
      swift_once();
    }

    v17 = qword_10051B4C8;
    swift_beginAccess();
    v18 = *(v1 + 64);
    v19 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 64) = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_10012EC5C(0, v18[2] + 1, 1, v18);
      *(v1 + 64) = v18;
    }

    v22 = v18[2];
    v21 = v18[3];
    if (v22 >= v21 >> 1)
    {
      v18 = sub_10012EC5C((v21 > 1), v22 + 1, 1, v18);
    }

    v18[2] = v22 + 1;
    v23 = &v18[3 * v22];
    *(v23 + 32) = 2;
    v23[5] = v19;
    v23[6] = &off_1004CB1E8;
    *(v1 + 64) = v18;
    swift_endAccess();
    if (qword_100501B00 != -1)
    {
      swift_once();
    }

    v24 = qword_10051B4D0;
    swift_beginAccess();
    v25 = *(v1 + 64);
    v6 = v24;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 64) = v25;
    if ((v26 & 1) == 0)
    {
      v25 = sub_10012EC5C(0, v25[2] + 1, 1, v25);
      *(v1 + 64) = v25;
    }

    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v25 = sub_10012EC5C((v27 > 1), v28 + 1, 1, v25);
    }

    v25[2] = v28 + 1;
    v29 = &v25[3 * v28];
    *(v29 + 32) = 1;
    v29[5] = v6;
    v29[6] = &off_1004CB290;
    *(v1 + 64) = v25;
    swift_endAccess();
    if (qword_1005019E8 != -1)
    {
      swift_once();
    }

    v2 = off_100504A68;
    v30 = sub_1000CAA04();
    v1 = v30;
    if ((v30 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      v2 = sub_10014E510();
      sub_1002A7378(&qword_100503608, sub_10014E510);
      Set.Iterator.init(_cocoa:)();
      v1 = v46;
      v31 = v47;
      v32 = v48;
      v33 = v49;
      v3 = v50;
    }

    else
    {
      v33 = 0;
      v34 = -1 << *(v30 + 32);
      v31 = v30 + 56;
      v32 = ~v34;
      v35 = -v34;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      else
      {
        v36 = -1;
      }

      v3 = v36 & *(v30 + 56);
    }

    v44[0] = v32;
    for (i = (v32 + 64) >> 6; v1 < 0; v3 = v41)
    {
      v43 = __CocoaSet.Iterator.next()();
      if (!v43)
      {
        goto LABEL_43;
      }

      v44[1] = v43;
      sub_10014E510();
      swift_dynamicCast();
      v42 = v45;
      v40 = v33;
      v41 = v3;
      if (!v45)
      {
        goto LABEL_43;
      }

LABEL_41:
      v2 = v6;
      sub_1001DD9DC(v42);

      v33 = v40;
    }

    v38 = v33;
    v39 = v3;
    v40 = v33;
    if (v3)
    {
LABEL_37:
      v41 = (v39 - 1) & v39;
      v42 = *(*(v1 + 48) + ((v40 << 9) | (8 * __clz(__rbit64(v39)))));
      if (v42)
      {
        goto LABEL_41;
      }

LABEL_43:
      sub_100093854();
      return;
    }

    while (1)
    {
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v40 >= i)
      {
        goto LABEL_43;
      }

      v39 = *(v31 + 8 * v40);
      ++v38;
      if (v39)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_45:
    swift_once();
  }

  if (qword_100501C38 == -1)
  {
    goto LABEL_5;
  }

LABEL_47:
  swift_once();
LABEL_5:
  v9 = type metadata accessor for Logger();
  sub_1000958E4(v9, qword_1005094B8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "LyonPower is already running", v12, 2u);
  }
}

BOOL sub_1002A11C0(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_1002A11F0(unsigned __int16 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void sub_1002A1220(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v10 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (v10 >> 60 == 15)
  {
    if (qword_100501C38 == -1)
    {
LABEL_6:
      v11 = type metadata accessor for Logger();
      sub_1000958E4(v11, qword_1005094B8);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v53 = v15;
        *v14 = 136315138;
        type metadata accessor for UUID();
        sub_1002A7378(&qword_100504C70, &type metadata accessor for UUID);
        v16 = dispatch thunk of CustomStringConvertible.description.getter();
        v18 = sub_1002FFA0C(v16, v17, &v53);

        *(v14 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v12, v13, "Key identifier not set for peer %s", v14, 0xCu);
        sub_1000752F4(v15);
      }

      sub_100079E24();
      swift_allocError();
      *v19 = 0;
      swift_willThrow();
      return;
    }

LABEL_23:
    swift_once();
    goto LABEL_6;
  }

  v20 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  swift_beginAccess();
  v21 = *(v1 + 89);
  sub_100069E2C(v20, v10);
  if (v21)
  {
    if (qword_100501C38 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000958E4(v22, qword_1005094B8);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "We are already in biolockout backoff, should not have connected to a peer", v25, 2u);
    }

    sub_10006A2D0(v20, v10);
  }

  else
  {
    v50 = v1;
    if (qword_100501C38 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    v27 = sub_1000958E4(v26, qword_1005094B8);
    sub_100069E2C(v20, v10);
    v49 = v27;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    sub_10006A2D0(v20, v10);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v51 = v48;
      *v30 = 136315138;
      v54 = sub_100288788(v20, v10);
      v47 = v29;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v31 = BidirectionalCollection<>.joined(separator:)();
      v33 = v32;

      v34 = sub_1002FFA0C(v31, v33, &v51);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v47, "Sending biolockout event for %s", v30, 0xCu);
      sub_1000752F4(v48);
    }

    v48 = "disconnectionCount";
    sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004098F0;
    *(inited + 32) = 0xD000000000000014;
    *(inited + 40) = 0x80000001004686F0;
    v51 = 0xD000000000000013;
    v52 = 0x800000010046A870;
    sub_10006A2BC(v20, v10);
    v54 = sub_100288788(v20, v10);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v36 = BidirectionalCollection<>.joined(separator:)();
    v38 = v37;

    v39._countAndFlagsBits = v36;
    v39._object = v38;
    String.append(_:)(v39);

    v40 = v51;
    v41 = v52;
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v40;
    *(inited + 56) = v41;
    v42 = sub_10008FFDC(inited);
    swift_setDeallocating();
    sub_100075768(inited + 32, &qword_100507D30, &unk_100409C90);
    sub_1003375E0(0xD000000000000025, v48 | 0x8000000000000000, 0, 0xF000000000000000, v20, v10, v42);

    sub_10006A2D0(v20, v10);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Biolockout prompt triggered, scanning disabled", v45, 2u);
    }

    *(v50 + 89) = 1;
    sub_1002A4B34();
    sub_10006A2D0(v20, v10);
  }
}

void sub_1002A1A18(uint64_t a1, char a2)
{
  if (!*(v2 + 40))
  {
    return;
  }

  if (qword_100501C28 != -1)
  {
    v42 = a1;
    v43 = a2;
    swift_once();
    a2 = v43;
    a1 = v42;
  }

  v3 = qword_1005094A8;
  if (!qword_1005094A8)
  {
    return;
  }

  if (qword_100501C20 != -1)
  {
    v44 = a1;
    v45 = a2;
    swift_once();
    a2 = v45;
    a1 = v44;
  }

  if (byte_1005094A0 != 1)
  {
    return;
  }

  if ((a2 & 1) == 0)
  {
    if (!a1 || (v9 = *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier + 8), v9 >> 60 == 15))
    {
      if (qword_100501C38 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_1000958E4(v10, qword_1005094B8);
      oslog = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(oslog, v11))
      {
        goto LABEL_28;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "Ignoring disconnection, no reader identifier available", v12, 2u);
LABEL_27:

LABEL_28:

      return;
    }

    v17 = *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier);
    swift_beginAccess();
    v18 = *(v2 + 112);
    v19 = *(v18 + 16);

    sub_10006A2BC(v17, v9);
    if (v19)
    {
      v20 = sub_10008C8DC(v17, v9);
      if (v21)
      {
        v22 = *(*(v18 + 56) + 8 * v20);
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    swift_endAccess();
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      sub_100069E2C(v17, v9);
      v24 = *(v2 + 112);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = *(v2 + 112);
      *(v2 + 112) = 0x8000000000000000;
      sub_100315914(v23, v17, v9, isUniquelyReferenced_nonNull_native);
      sub_10006A2D0(v17, v9);
      *(v2 + 112) = v49;
      swift_endAccess();
      if (qword_100501C38 == -1)
      {
LABEL_41:
        v26 = type metadata accessor for Logger();
        sub_1000958E4(v26, qword_1005094B8);
        sub_100069E2C(v17, v9);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.info.getter();
        sub_10006A2D0(v17, v9);
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v50[0] = v47;
          *v29 = 136315650;
          v46 = v28;
          sub_100288788(v17, v9);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
          v30 = BidirectionalCollection<>.joined(separator:)();
          v32 = v31;

          v33 = sub_1002FFA0C(v30, v32, v50);

          *(v29 + 4) = v33;
          *(v29 + 12) = 2048;
          *(v29 + 14) = v23;
          *(v29 + 22) = 2048;
          *(v29 + 24) = v3;
          _os_log_impl(&_mh_execute_header, v27, v46, "%s has %ld connections, %ld is the maximum number of connections allowed per lock", v29, 0x20u);
          sub_1000752F4(v47);
        }

        else
        {
        }

        if (v23 >= v3)
        {
          sub_100069E2C(v17, v9);
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.default.getter();
          sub_10006A2D0(v17, v9);
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v50[0] = v37;
            *v36 = 134218242;
            *(v36 + 4) = v23;
            *(v36 + 12) = 2080;
            sub_100288788(v17, v9);
            sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
            sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
            v38 = BidirectionalCollection<>.joined(separator:)();
            v40 = v39;

            v41 = sub_1002FFA0C(v38, v40, v50);

            *(v36 + 14) = v41;
            _os_log_impl(&_mh_execute_header, v34, v35, "Passive entry disabled due to %ld connections from %s until connection threshold is reset", v36, 0x16u);
            sub_1000752F4(v37);
          }

          sub_1002A58B8(0);
        }

        sub_10006A2D0(v17, v9);

        return;
      }
    }

    swift_once();
    goto LABEL_41;
  }

  v4 = *(v2 + 48);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 48) = v5;
    if (qword_100501C18 == -1)
    {
      goto LABEL_11;
    }
  }

  swift_once();
LABEL_11:
  v6 = qword_100509498;
  if (v5 == qword_100509498)
  {
    *(v2 + 48) = 0;
    v7 = *(v2 + 40);
    if (qword_100501C08 != -1)
    {
      swift_once();
    }

    v8 = byte_10051B6C0 + v7;
    if ((byte_10051B6C0 + v7) == v8)
    {

      sub_1002A58B8(v8);
      return;
    }

    __break(1u);
    goto LABEL_53;
  }

  if (qword_100501C38 != -1)
  {
LABEL_53:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000958E4(v13, qword_1005094B8);
  v14 = v2;

  oslog = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218240;
    *(v16 + 4) = *(v14 + 48);

    *(v16 + 12) = 2048;
    *(v16 + 14) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v15, "Number of error disconnects incremented to %ld, shrinking every %ld errors", v16, 0x16u);
    goto LABEL_27;
  }
}

void *sub_1002A227C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  if (*(v0 + 16) == 1)
  {
    swift_beginAccess();
    v8 = *(v0 + 56);
  }

  if (qword_100501C38 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  v10 = type metadata accessor for Logger();
  sub_1000958E4(v10, qword_1005094B8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Not running", v13, 2u);
  }

  return _swiftEmptyArrayStorage;
}

void sub_1002A24A4(char a1, char a2, char a3, int a4, uint64_t a5, int a6)
{
  v97 = a6;
  v98 = a4;
  LOBYTE(v8) = a3;
  LOBYTE(v9) = a2;
  LOBYTE(v10) = a1;
  v89[0] = *v6;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v94 = *(v11 - 8);
  v95 = v11;
  v12 = *(v94 + 64);
  __chkstk_darwin(v11);
  v92 = v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for DispatchQoS();
  v91 = *(v93 - 8);
  v14 = *(v91 + 64);
  __chkstk_darwin(v93);
  v90 = v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = 0;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_90;
  }

  while (1)
  {
    v21 = qword_10051B7F0;
    *v20 = qword_10051B7F0;
    (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
    v22 = v21;
    v23 = _dispatchPreconditionTest(_:)();
    (*(v17 + 8))(v20, v16);
    if (v23)
    {
      break;
    }

    __break(1u);
LABEL_92:
    swift_once();
LABEL_5:
    v24 = type metadata accessor for Logger();
    sub_1000958E4(v24, qword_1005094B8);
    v25 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v20))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v25, v20, "Updating configuration", v26, 2u);
    }

    if (v10 == 2 || (v27 = v10 & 1, swift_beginAccess(), *(v22 + 72) == v27))
    {
      v30 = 0;
    }

    else
    {
      *(v22 + 72) = v27;
      *(v22 + 89) = 0;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v20 = swift_slowAlloc();
        *v20 = 67109120;
        *(v20 + 1) = v27;
        _os_log_impl(&_mh_execute_header, v28, v29, "Biolockout %{BOOL}d", v20, 8u);
      }

      if ((v22[9] & 1) == 0)
      {
        sub_1002A716C();
      }

      v30 = 1;
    }

    if (v9 != 2)
    {
      v35 = v9 & 1;
      swift_beginAccess();
      if (*(v22 + 73) != v35)
      {
        *(v22 + 73) = v35;
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 67109120;
          *(v38 + 4) = v35;
          _os_log_impl(&_mh_execute_header, v36, v37, "UWB suspended %{BOOL}d", v38, 8u);
        }

        v30 = 1;
      }
    }

    if (v8 != 2)
    {
      v39 = v8 & 1;
      swift_beginAccess();
      if (*(v22 + 88) != v39)
      {
        *(v22 + 88) = v39;
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 67109120;
          *(v42 + 4) = v39;
          _os_log_impl(&_mh_execute_header, v40, v41, "Ranging limit exceeded %{BOOL}d", v42, 8u);
        }

        v30 = 1;
      }
    }

    if (!a5 || (swift_beginAccess(), v43 = v22[12], , v44 = sub_100223F84(a5, v43), , (v44 & 1) != 0))
    {
LABEL_47:
      LOBYTE(v48) = v97;
      if (v97 == 2)
      {
        goto LABEL_54;
      }

      goto LABEL_48;
    }

    v45 = *(v22[12] + 16);
    if (!*(a5 + 16))
    {
      if (v45)
      {
        if (qword_100501928 != -1)
        {
          swift_once();
        }

        sub_1000BB4B4(1uLL);
      }

LABEL_42:
      v48 = 2;
      goto LABEL_44;
    }

    if (v45)
    {
      goto LABEL_42;
    }

    if (qword_100501928 != -1)
    {
      swift_once();
    }

    v46 = qword_10051B238;
    v101 = v89[0];
    v102 = &off_1004CF0C8;
    v100[0] = v22;

    v47 = v96;
    sub_1000BAF34(v100, 1uLL);
    if (v47)
    {
    }

    v96 = 0;
    sub_1000752F4(v100);
    v48 = (*(v46 + 32) & 1) == 0;
    v22 = v99;
LABEL_44:
    v49 = v22[12];
    v22[12] = a5;
    swift_bridgeObjectRetain_n();

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v89[0] = swift_slowAlloc();
      v100[0] = v89[0];
      *v52 = 136315138;
      v53 = v96;
      sub_10009894C(a5);
      v96 = v53;
      v20 = Array.description.getter();
      v55 = v54;

      v56 = sub_1002FFA0C(v20, v55, v100);

      *(v52 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v50, v51, "Key Identifiers in geofence %s", v52, 0xCu);
      sub_1000752F4(v89[0]);
    }

    v30 = 1;
    if (v48 == 2)
    {
      goto LABEL_47;
    }

LABEL_48:
    swift_beginAccess();
    if ((v48 & 1) != *(v22 + 104))
    {
      *(v22 + 104) = v48 & 1;
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 67109120;
        *(v59 + 4) = v48 & 1;
        _os_log_impl(&_mh_execute_header, v57, v58, "Device stationary status updated to %{BOOL}d", v59, 8u);
      }

      if (v48)
      {
        v102 = sub_1002A5848;
        v103 = 0;
        v100[0] = _NSConcreteStackBlock;
        v100[1] = 1107296256;
        v100[2] = sub_100080830;
        v101 = &unk_1004CF1C8;
        v60 = _Block_copy(v100);
        v20 = v90;
        static DispatchQoS.unspecified.getter();
        v104 = _swiftEmptyArrayStorage;
        sub_1002A7378(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
        sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
        sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
        v61 = v92;
        v62 = v95;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v60);
        (*(v94 + 8))(v61, v62);
        (*(v91 + 8))(v20, v93);
      }

      v30 = 1;
    }

LABEL_54:
    LOBYTE(v9) = v98;
    if (v98 == 2)
    {
      if ((v30 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      if (v98)
      {
        sub_1002A716C();
        swift_beginAccess();
        if ((*(v22 + 90) & 1) == 0 && (*(v22 + 17) & 1) == 0)
        {
          swift_beginAccess();
          v63 = v22[8];
          v64 = *(v63 + 16);
          if (v64)
          {
            v65 = v22[8];

            v66 = (v63 + 48);
            do
            {
              v67 = *(v66 - 1);
              v68 = *v66;
              ObjectType = swift_getObjectType();
              v100[0] = v67;
              (*(v68 + 8))(ObjectType, v68);
              v66 += 3;
              --v64;
            }

            while (v64);

            v22 = v99;
          }

          if (qword_100501950 != -1)
          {
            swift_once();
          }

          sub_1000CB160();
        }
      }

      else
      {
        swift_beginAccess();
        if (*(v22 + 90) == 1)
        {
          if (qword_100501950 != -1)
          {
            swift_once();
          }

          sub_1000C6EAC();
          swift_beginAccess();
          v70 = v22[8];
          v71 = *(v70 + 16);
          if (v71)
          {
            v72 = v22[8];

            v73 = (v70 + 48);
            do
            {
              v74 = *(v73 - 1);
              v75 = *v73;
              v76 = swift_getObjectType();
              v100[0] = v74;
              (*(v75 + 16))(v76, v75);
              v73 += 3;
              --v71;
            }

            while (v71);

            v22 = v99;
          }
        }
      }

      swift_beginAccess();
      *(v22 + 90) = v9 & 1;
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 67109120;
        *(v79 + 4) = v9 & 1;
        _os_log_impl(&_mh_execute_header, v77, v78, "Express Status %{BOOL}d", v79, 8u);
      }
    }

    v16 = 1;
    swift_beginAccess();
    v8 = (v22 + 10);
    v80 = v22[10];
    v22[10] = &_swiftEmptySetSingleton;

    a5 = v22[12];
    v81 = 1 << *(a5 + 32);
    v82 = -1;
    if (v81 < 64)
    {
      v82 = ~(-1 << v81);
    }

    v83 = v82 & *(a5 + 56);
    v10 = (v81 + 63) >> 6;
    v84 = *(v8 + 16);

    v17 = 0;
    while (v83)
    {
LABEL_84:
      v86 = (*(a5 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v83)))));
      v9 = *v86;
      v20 = v86[1];
      sub_100069E2C(*v86, v20);
      if (qword_100501BD8 != -1)
      {
        swift_once();
      }

      v83 &= v83 - 1;
      v87 = sub_10027FC38(v9, v20);
      swift_beginAccess();
      v88 = v87;
      v16 = v8;
      sub_1002A3348(v88);
      swift_endAccess();
      sub_10006A178(v9, v20);
    }

    while (1)
    {
      v85 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v85 >= v10)
      {

        sub_1002A4B34();
        return;
      }

      v83 = *(a5 + 56 + 8 * v85);
      ++v17;
      if (v83)
      {
        v17 = v85;
        goto LABEL_84;
      }
    }

    __break(1u);
LABEL_90:
    swift_once();
  }

  v89[1] = v22;
  v22 = v99;
  if (*(v99 + 16) == 1)
  {
    if (qword_100501C38 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_92;
  }

  if (qword_100501C38 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_1000958E4(v31, qword_1005094B8);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Not running", v34, 2u);
  }
}

uint64_t sub_1002A3348(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];
      sub_100069E2C(*v10, v12);
      sub_1000D589C(v13, v11, v12);
      result = sub_10006A178(v13[0], v13[1]);
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1002A3450(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v24 - v9;
  result = __chkstk_darwin(v8);
  v13 = v24 - v12;
  v14 = 0;
  v25 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v24[1] = v3 + 32;
  v24[2] = v3 + 16;
  v24[0] = v3 + 8;
  if ((v19 & v15) != 0)
  {
    do
    {
      v22 = v14;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v3 + 16))(v13, *(v25 + 48) + *(v3 + 72) * (v23 | (v22 << 6)), v2);
      (*(v3 + 32))(v7, v13, v2);
      sub_1000D6D84(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v20);
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002A3660(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(v1 + 48) + 40 * (v9 | (v8 << 6));
    *&v14[16] = *(v10 + 32);
    v11 = *(v10 + 16);
    v13 = *v10;
    *v14 = v11;
    v15 = v13;
    v16 = *&v14[8];
    sub_1000B6AF8(&v15, v12);
    sub_1000B6AF8(&v16, v12);
    sub_1000D7A08(v12, &v13);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

char *sub_1002A37B4(char a1, double a2, double a3)
{
  *&v3[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_debounceTimer] = 0;
  *&v3[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionTimer] = 0;
  *&v3[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_debounceDuration] = a2;
  *&v3[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionDuration] = a3;
  v3[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_debounceActive] = 0;
  v3[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionActive] = 0;
  v3[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionTriggerStatus] = a1;
  v24.receiver = v3;
  v24.super_class = type metadata accessor for LyonPowerExceptionHandlerClass();
  v4 = objc_msgSendSuper2(&v24, "init");
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = qword_100501D90;
  v7 = v4;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  v9 = objc_allocWithZone(SESTimer);
  v22 = sub_1002A7144;
  v23 = v5;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100080830;
  v21 = &unk_1004CF100;
  v10 = _Block_copy(&v18);

  v11 = sub_1003AE50C(v9, v8, v10);
  _Block_release(v10);

  v12 = *&v7[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_debounceTimer];
  *&v7[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_debounceTimer] = v11;

  v13 = objc_allocWithZone(SESTimer);
  v22 = sub_1002A7164;
  v23 = v5;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100080830;
  v21 = &unk_1004CF128;
  v14 = _Block_copy(&v18);

  v15 = sub_1003AE50C(v13, v8, v14);
  _Block_release(v14);

  v16 = *&v7[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionTimer];
  *&v7[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionTimer] = v15;

  return v7;
}

void sub_1002A3A30()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = (v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = v3[13];
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v11 = v3[1];
  v11(v6, v2);
  if (v7)
  {
    v26 = v10;
    v27 = v11;
    if (qword_100501C38 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v12 = type metadata accessor for Logger();
  sub_1000958E4(v12, qword_1005094B8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25[1] = v3 + 13;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Exception status active", v15, 2u);
  }

  if (*(v1 + OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionTriggerStatus) != 1)
  {
    *(v1 + OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionTriggerStatus) = 1;
    if (*(v1 + OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionActive))
    {
      return;
    }

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Starting debounce", v21, 2u);
    }

    v22 = v26;
    *v6 = v26;
    v9(v6, v8, v2);
    v23 = v22;
    LOBYTE(v22) = _dispatchPreconditionTest(_:)();
    v27(v6, v2);
    if (v22)
    {
      v24 = *(v1 + OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_debounceTimer);
      if (v24)
      {
        sub_1003AE618(v24, *(v1 + OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_debounceDuration));
        *(v1 + OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_debounceActive) = 1;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Exception status has not changed; doing nothing", v18, 2u);
  }
}

void sub_1002A3E00()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = v3[13];
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = v7;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = v3[1];
  v12(v6, v2);
  if (v11)
  {
    v26 = v10;
    v27 = v9;
    if (qword_100501C38 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v13 = type metadata accessor for Logger();
  sub_1000958E4(v13, qword_1005094B8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = v12;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Exception status inactive", v16, 2u);
    v12 = v25;
  }

  if (*(v1 + OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionTriggerStatus))
  {
    *(v1 + OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionTriggerStatus) = 0;
    v18 = v26;
    v17 = v27;
    *v6 = v26;
    v17(v6, v8, v2);
    v19 = v18;
    LOBYTE(v18) = _dispatchPreconditionTest(_:)();
    v12(v6, v2);
    if (v18)
    {
      v20 = *(v1 + OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_debounceTimer);
      if (v20)
      {
        sub_1003AE754(v20);
        *(v1 + OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_debounceActive) = 0;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Exception status has not changed; doing nothing", v23, 2u);
    }
  }
}

uint64_t sub_1002A4140()
{
  type metadata accessor for LyonPower();
  swift_allocObject();
  result = sub_1002A5DBC();
  qword_10051B6A8 = result;
  return result;
}

uint64_t sub_1002A417C()
{
  v0 = sub_100068FC4(&qword_100509630, &qword_1004143A8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6[-v3];
  v6[15] = -94;
  *&v6[13] = 256;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1002A42B0()
{
  v0 = sub_100068FC4(&qword_100504EE0, &qword_10040C408);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v6 - v3;
  v8 = -70;
  v6[1] = 0;
  v7 = 1;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1002A43E8()
{
  v0 = sub_100068FC4(&qword_100509630, &qword_1004143A8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6[-v3];
  v6[15] = 6;
  *&v6[13] = 256;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1002A451C()
{
  v0 = sub_100068FC4(qword_100502460, &unk_100410A50);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v6 - v3;
  v8 = 0x40E5180000000000;
  v6[1] = 0;
  v7 = 1;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1002A4658()
{
  v0 = sub_100068FC4(&qword_100504EE0, &qword_10040C408);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v6 - v3;
  v8 = 3;
  v6[1] = 0;
  v7 = 1;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1002A4790()
{
  v0 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6[-v3];
  v6[15] = 1;
  v6[14] = 1;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1002A48C0()
{
  v0 = sub_100068FC4(&qword_100504EE0, &qword_10040C408);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v6 - v3;
  v8 = 25;
  v6[1] = 0;
  v7 = 1;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1002A49FC()
{
  v0 = sub_100068FC4(&qword_100509630, &qword_1004143A8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6[-v3];
  v6[15] = -80;
  *&v6[13] = 256;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  return (*(v1 + 8))(v4, v0);
}

void sub_1002A4B34()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_43:
    swift_once();
    goto LABEL_9;
  }

  if (*(v1 + 16) == 1)
  {
    swift_beginAccess();
    v9 = *(v1 + 56);
    if (*(v9 + 16))
    {
      swift_beginAccess();
      LODWORD(v10) = *(v1 + 88) ^ 1;
      if (*(v1 + 17))
      {
        goto LABEL_18;
      }
    }

    else
    {
      LODWORD(v10) = 0;
      if (*(v1 + 17))
      {
        goto LABEL_18;
      }
    }

    swift_beginAccess();
    if ((*(v1 + 73) & 1) == 0 && (*(v1 + 89) & 1) == 0 && *(*(v1 + 80) + 16) && *(v1 + 40))
    {
      v15 = *(v1 + 104) ^ 1;
      goto LABEL_19;
    }

LABEL_18:
    v15 = 0;
LABEL_19:
    swift_beginAccess();
    if (*(v1 + 72) == 1)
    {
      v36 = &off_1004C37A0;
      v37 = v9;

      sub_100068FC4(&qword_100509620, &qword_1004143A0);
      sub_100075C60(&qword_100509628, &qword_100509620, &qword_1004143A0);
      sub_1002A7040();
      v16 = Collection<>.contains<A>(_:)();

      if ((v16 & 1) == 0)
      {
        if (qword_100501C38 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_1000958E4(v17, qword_1005094B8);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v18, v19, "Disabling scanning when biolock is active and no geofence entry exception", v20, 2u);
        }

        v15 = 0;
      }
    }

    if (qword_100501C38 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000958E4(v21, qword_1005094B8);
    swift_retain_n();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      HIDWORD(v34) = v10;
      v10 = v25;
      v37 = v25;
      *v24 = 67111170;
      *(v24 + 4) = v15 & 1;
      *(v24 + 8) = 1024;
      *(v24 + 10) = *(v1 + 17);
      *(v24 + 14) = 1024;
      *(v24 + 16) = *(v1 + 73);
      *(v24 + 20) = 1024;
      *(v24 + 22) = *(v1 + 89);
      *(v24 + 26) = 2080;
      v26 = *(v1 + 80);
      sub_1000E1E80();

      v27 = Set.description.getter();
      v29 = v28;

      v30 = sub_1002FFA0C(v27, v29, &v37);

      *(v24 + 28) = v30;
      *(v24 + 36) = 256;
      LOBYTE(v30) = *(v1 + 40);

      *(v24 + 38) = v30;

      *(v24 + 39) = 1024;
      LODWORD(v30) = *(v1 + 104);

      *(v24 + 41) = v30;

      *(v24 + 45) = 1024;
      LODWORD(v30) = *(v1 + 72);

      *(v24 + 47) = v30;

      *(v24 + 51) = 1024;
      v31 = *(v1 + 56);
      v35 = &off_1004C37C8;
      v36 = v31;

      sub_100068FC4(&qword_100509620, &qword_1004143A0);
      sub_100075C60(&qword_100509628, &qword_100509620, &qword_1004143A0);
      sub_1002A7040();
      LOBYTE(v30) = Collection<>.contains<A>(_:)();

      *(v24 + 53) = v30 & 1;

      _os_log_impl(&_mh_execute_header, v22, v23, "Setting scanning to %{BOOL}d with low power mode %{BOOL}d, Uwb suspended %{BOOL}d, biolockout backoff %{BOOL}d, express reader group identifiers %s, adaptive connection rssi threshold %hhd, device stationary %{BOOL}d, biolock %{BOOL}d, and geofence entry state %{BOOL}d", v24, 0x39u);
      sub_1000752F4(v10);
      LOBYTE(v10) = BYTE4(v34);
    }

    else
    {
    }

    if (qword_100501B58 != -1)
    {
      swift_once();
    }

    if (v15)
    {
      v32 = *(v1 + 80);
    }

    else
    {
      v32 = 0;
    }

    if (*(v1 + 72) == 1)
    {
      if (qword_100501C30 != -1)
      {
        swift_once();
      }

      v33 = &byte_1005094B0;
    }

    else
    {
      v33 = (v1 + 40);
    }

    sub_100225F98(v32, *v33, v10 & 1);

    return;
  }

  if (qword_100501C38 != -1)
  {
    goto LABEL_43;
  }

LABEL_9:
  v11 = type metadata accessor for Logger();
  sub_1000958E4(v11, qword_1005094B8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Not running", v14, 2u);
  }
}

void sub_1002A52AC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (*(v1 + 16) != 1)
  {
    if (qword_100501C38 == -1)
    {
LABEL_15:
      v21 = type metadata accessor for Logger();
      sub_1000958E4(v21, qword_1005094B8);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Not running", v24, 2u);
      }

      return;
    }

LABEL_39:
    swift_once();
    goto LABEL_15;
  }

  swift_beginAccess();
  v9 = *(v1 + 56);
  *(v1 + 56) = _swiftEmptyArrayStorage;
  swift_beginAccess();
  v10 = *(v1 + 64);
  v11 = *(v10 + 16);
  if (v11)
  {
    v48 = v9;

    v13 = (v10 + 40);
    do
    {
      v14 = *(v13 - 8);
      v15 = *v13;
      v12 = (*((swift_isaMask & **v13) + 0xE8))(v12);
      if (v12)
      {
        swift_beginAccess();
        v16 = *(v1 + 56);
        v17 = v15;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 56) = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = sub_10012FB20(0, *(v16 + 2) + 1, 1, v16);
          *(v1 + 56) = v16;
        }

        v20 = *(v16 + 2);
        v19 = *(v16 + 3);
        if (v20 >= v19 >> 1)
        {
          v16 = sub_10012FB20((v19 > 1), v20 + 1, 1, v16);
        }

        *(v16 + 2) = v20 + 1;
        v16[v20 + 32] = v14;
        *(v1 + 56) = v16;
        swift_endAccess();
      }

      v13 += 3;
      --v11;
    }

    while (v11);

    v9 = v48;
  }

  if (qword_100501C38 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_1000958E4(v25, qword_1005094B8);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v49 = v29;
    *v28 = 136315138;
    v30 = *(v1 + 56);

    v31 = Array.description.getter();
    v33 = v32;

    v34 = sub_1002FFA0C(v31, v33, &v49);

    *(v28 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v26, v27, "Active Exceptions %s", v28, 0xCu);
    sub_1000752F4(v29);
  }

  v35 = *(v1 + 56);
  v36 = *(v35 + 16);
  v37 = (v35 + 32);
  while (v36)
  {
    v38 = *v37++;
    --v36;
    if ((v38 - 1) <= 1)
    {
      sub_1002A716C();
      break;
    }
  }

  v39 = *(v9 + 16);
  v40 = (v9 + 32);
  while (v39)
  {
    v41 = *v40++;
    --v39;
    if (v41 == 1)
    {

      goto LABEL_35;
    }
  }

  v42 = *(v1 + 56);
  v43 = *(v42 + 16);
  v44 = (v42 + 32);
  while (v43)
  {
    v45 = *v44++;
    --v43;
    if (v45 == 1)
    {
      swift_beginAccess();
      *(v1 + 89) = 0;
      sub_1002A4B34();
      break;
    }
  }

LABEL_35:
  sub_1002A4B34();
  if (qword_100501950 != -1)
  {
    swift_once();
  }

  v46 = *(v1 + 56);

  sub_1000D48D8(v47);
}

void sub_1002A5848()
{
  if (qword_1005018F8 != -1)
  {
    swift_once();
  }

  sub_100089854(0xD000000000000025, 0x800000010046A9F0);
}

uint64_t sub_1002A58B8(char a1)
{
  v2 = v1;
  if (qword_100501C00 != -1)
  {
    swift_once();
  }

  if (qword_10051B6B8 < a1)
  {
    if (qword_100501C38 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000958E4(v4, qword_1005094B8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Passive entry disabled until connection threshold is reset", v7, 2u);
    }

    a1 = 0;
  }

  *(v2 + 40) = a1;
  if (!*(v2 + 32))
  {
    v8 = swift_allocObject();
    swift_weakInit();
    if (qword_100501D90 != -1)
    {
      swift_once();
    }

    v9 = qword_10051B7F0;
    v10 = objc_allocWithZone(SESTimer);
    v23[4] = sub_1002A736C;
    v23[5] = v8;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 1107296256;
    v23[2] = sub_100080830;
    v23[3] = &unk_1004CF178;
    v11 = _Block_copy(v23);

    v12 = sub_1003AE50C(v10, v9, v11);
    _Block_release(v11);

    v13 = *(v2 + 32);
    *(v2 + 32) = v12;

    v14 = *(v2 + 32);
    if (v14)
    {
      v15 = qword_100501C10;
      v16 = v14;
      if (v15 != -1)
      {
        swift_once();
      }

      sub_1003AE618(v16, *&qword_100509490);
    }

    else
    {
    }
  }

  if (qword_100501C38 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000958E4(v17, qword_1005094B8);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 16777472;
    v20[4] = *(v2 + 40);

    _os_log_impl(&_mh_execute_header, v18, v19, "Shrinking adaptiveConnectionRSSITreshold to %hhd", v20, 5u);
  }

  else
  {
  }

  return sub_1002A4B34(v21);
}

uint64_t sub_1002A5C4C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_100501C38 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000958E4(v1, qword_1005094B8);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      if (qword_100501C10 != -1)
      {
        v6 = v4;
        swift_once();
        v4 = v6;
      }

      *(v4 + 4) = qword_100509490;
      _os_log_impl(&_mh_execute_header, v2, v3, "Ending connection RSSI backoff for %f seconds for Lyon", v4, 0xCu);
    }

    v5 = sub_1002A716C();
    sub_1002A4B34(v5);
  }

  return result;
}

uint64_t sub_1002A5DBC()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  if (qword_100501BF8 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = byte_10051B6B0;
  *(v0 + 48) = 0;
  *(v0 + 56) = _swiftEmptyArrayStorage;
  *(v0 + 64) = _swiftEmptyArrayStorage;
  *(v0 + 72) = 0;
  *(v0 + 80) = &_swiftEmptySetSingleton;
  *(v0 + 88) = 0;
  *(v0 + 90) = 0;
  *(v0 + 96) = &_swiftEmptySetSingleton;
  *(v0 + 104) = 0;
  *(v0 + 112) = sub_10009122C(_swiftEmptyArrayStorage);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v3[4] = sub_1002A7374;
  v3[5] = v0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100193978;
  v3[3] = &unk_1004CF1A0;
  v1 = _Block_copy(v3);

  os_state_add_handler();
  _Block_release(v1);
  return v0;
}

_DWORD *sub_1002A5F2C()
{
  v1 = v0;
  v2 = 0xEE0065707974206ELL;
  v3 = 0x6F69747065637865;
  swift_beginAccess();
  v4 = *(v0 + 56);
  v5 = *(v4 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v63 = v0;
    *&v65 = _swiftEmptyArrayStorage;

    sub_10019F464(0, v5, 0);
    v6 = _swiftEmptyArrayStorage;
    v64 = v4;
    sub_100068FC4(&qword_100502C10, &unk_100409CD0);
    v7 = 32;
    while (1)
    {
      LOBYTE(v72[0]) = *(v4 + v7);
      v8 = String.init<A>(describing:)();
      v10 = v9;
      v11 = static _DictionaryStorage.allocate(capacity:)();

      v12 = sub_10008C908(0x6F69747065637865, 0xEE0065707974206ELL);
      v14 = v13;

      if (v14)
      {
        break;
      }

      v11[(v12 >> 6) + 8] |= 1 << v12;
      v15 = (v11[6] + 16 * v12);
      strcpy(v15, "exception type");
      v15[15] = -18;
      v16 = (v11[7] + 16 * v12);
      *v16 = v8;
      v16[1] = v10;
      v17 = v11[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_36;
      }

      v11[2] = v19;
      *&v65 = v6;
      v21 = v6[2];
      v20 = v6[3];
      if (v21 >= v20 >> 1)
      {
        sub_10019F464((v20 > 1), v21 + 1, 1);
        v6 = v65;
      }

      v6[2] = v21 + 1;
      v6[v21 + 4] = v11;
      ++v7;
      --v5;
      v2 = 0xEE0065707974206ELL;
      v4 = v64;
      if (!v5)
      {

        v1 = v63;
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v14 = 0xD00000000000001ELL;
    *(&v66[0] + 1) = sub_100068FC4(&unk_100504010, &unk_100409CB0);
    *&v65 = v6;
    sub_100075D50(&v65, v72);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = _swiftEmptyDictionarySingleton;
    sub_100315178(v72, 0xD000000000000010, 0x80000001004687B0, isUniquelyReferenced_nonNull_native);
    v23 = v71;
    swift_beginAccess();
    v24 = *(v1 + 64);
    v25 = *(v24 + 16);
    v2 = _swiftEmptyArrayStorage;
    if (!v25)
    {
LABEL_19:
      *(&v66[0] + 1) = sub_100068FC4(&unk_100503EC0, &unk_100417130);
      *&v65 = v2;
      sub_100075D50(&v65, v72);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      sub_100315178(v72, 0xD000000000000013, 0x800000010046A8E0, v45);
      v2 = v23;
      v12 = "monitoredExceptions";
      if (qword_100501C30 == -1)
      {
        goto LABEL_20;
      }

      goto LABEL_37;
    }

    v62 = v23;
    *&v72[0] = _swiftEmptyArrayStorage;

    sub_10019F4C4(0, v25, 0);
    v2 = *&v72[0];
    v26 = (v24 + 40);
    sub_100068FC4(&unk_100504000, &unk_10040B350);
    while (1)
    {
      v27 = *(v26 - 8);
      v28 = *v26;
      v29 = v3;
      v67[0] = v3;
      v67[1] = 0xEE0065707974206ELL;
      LOBYTE(v65) = v27;
      v30 = v28;
      v67[2] = String.init<A>(describing:)();
      v67[3] = v31;
      v67[5] = &type metadata for String;
      v68[0] = 0xD000000000000018;
      v68[1] = 0x800000010046A8C0;
      v32 = (*((swift_isaMask & *v30) + 0xD0))();
      v70 = &type metadata for Bool;
      v69 = v32 & 1;
      v33 = static _DictionaryStorage.allocate(capacity:)();

      sub_10011EF24(v67, &v65);
      v34 = v65;
      v12 = v33;
      v35 = sub_10008C908(v65, *(&v65 + 1));
      if (v36)
      {
        break;
      }

      v14 = (v33 + 8);
      *(v33 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v35;
      *(v33[6] + 16 * v35) = v34;
      sub_100075D50(v66, (v33[7] + 32 * v35));
      v37 = v33[2];
      v18 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v18)
      {
        goto LABEL_34;
      }

      v33[2] = v38;
      sub_10011EF24(v68, &v65);
      v39 = v65;
      v12 = v33;
      v40 = sub_10008C908(v65, *(&v65 + 1));
      if (v41)
      {
        break;
      }

      *(v14 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      *(v33[6] + 16 * v40) = v39;
      sub_100075D50(v66, (v33[7] + 32 * v40));
      v42 = v33[2];
      v18 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v18)
      {
        goto LABEL_34;
      }

      v33[2] = v43;

      sub_100068FC4(&qword_100507D30, &unk_100409C90);
      swift_arrayDestroy();

      *&v72[0] = v2;
      v14 = v2[2];
      v44 = v2[3];
      if (v14 >= v44 >> 1)
      {
        sub_10019F4C4((v44 > 1), v14 + 1, 1);
        v2 = *&v72[0];
      }

      v2[2] = v14 + 1;
      v2[v14 + 4] = v33;
      v26 += 3;
      --v25;
      v3 = v29;
      if (!v25)
      {

        v14 = 0xD00000000000001ELL;
        v23 = v62;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  swift_once();
LABEL_20:
  *(&v66[0] + 1) = &type metadata for Int8;
  LOBYTE(v65) = byte_1005094B0;
  sub_100075D50(&v65, v72);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v72, v14 - 7, v12 | 0x8000000000000000, v46);
  if (qword_100501BF8 != -1)
  {
    swift_once();
  }

  *(&v66[0] + 1) = &type metadata for Int8;
  LOBYTE(v65) = byte_10051B6B0;
  sub_100075D50(&v65, v72);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v72, 0xD00000000000001ELL, 0x800000010046A920, v47);
  if (qword_100501C10 != -1)
  {
    swift_once();
  }

  *(&v66[0] + 1) = &type metadata for Double;
  *&v65 = qword_100509490;
  sub_100075D50(&v65, v72);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v72, v14 - 3, 0x800000010046A940, v48);
  if (qword_100501C00 != -1)
  {
    swift_once();
  }

  *(&v66[0] + 1) = &type metadata for Int;
  *&v65 = qword_10051B6B8;
  sub_100075D50(&v65, v72);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v72, 0xD00000000000001ELL, 0x800000010046A960, v49);
  if (qword_100501C18 != -1)
  {
    swift_once();
  }

  *(&v66[0] + 1) = &type metadata for Int;
  *&v65 = qword_100509498;
  sub_100075D50(&v65, v72);
  v50 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v72, v14 + 1, 0x800000010046A980, v50);
  if (qword_100501C20 != -1)
  {
    swift_once();
  }

  *(&v66[0] + 1) = &type metadata for Bool;
  LOBYTE(v65) = byte_1005094A0;
  sub_100075D50(&v65, v72);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v72, v14 - 4, 0x800000010046A9A0, v51);
  if (qword_100501BF0 != -1)
  {
    swift_once();
  }

  v52 = qword_10051B6A8;
  v53 = *(qword_10051B6A8 + 40);
  *(&v66[0] + 1) = &type metadata for Int8;
  LOBYTE(v65) = v53;
  sub_100075D50(&v65, v72);
  v54 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v72, 0xD00000000000001ELL, 0x800000010046A5D0, v54);
  swift_beginAccess();
  v55 = *(v52 + 112);

  v57 = sub_1002A0780(v56);

  *(&v66[0] + 1) = sub_100068FC4(&qword_100509638, &unk_1004143B0);
  *&v65 = v57;
  sub_100075D50(&v65, v72);
  v58 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v72, v14 - 12, 0x800000010046A9C0, v58);
  sub_1001950D4(v2);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v60 = sub_100015DA0("lyonPower.state", isa);

  return v60;
}

uint64_t sub_1002A6950()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);
  v4 = *(v0 + 96);

  v5 = *(v0 + 112);

  return swift_deallocClassInstance();
}

void sub_1002A69E8(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v1;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v9)
  {
    sub_1002A24A4(2, 2, 2, 2, 0, (a1 & 1) == 0);
  }

  else
  {
    __break(1u);
  }
}

void sub_1002A6B4C()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    *(Strong + OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_debounceActive) = 0;
    if ((*(Strong + OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionTriggerStatus) & 1) == 0)
    {
      if (qword_100501C38 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_1000958E4(v7, qword_1005094B8);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "If exception source status is false, debounce should have been cancelled; we should not be here", v10, 2u);
      }
    }

    if (qword_100501C38 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000958E4(v11, qword_1005094B8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Starting exception", v14, 2u);
    }

    if (qword_100501D90 != -1)
    {
      swift_once();
    }

    v15 = qword_10051B7F0;
    *v4 = qword_10051B7F0;
    (*(v1 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v0);
    v16 = v15;
    LOBYTE(v15) = _dispatchPreconditionTest(_:)();
    (*(v1 + 8))(v4, v0);
    if (v15)
    {
      v17 = *&v6[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionTimer];
      if (!v17)
      {
        __break(1u);
        return;
      }

      sub_1003AE618(v17, *&v6[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionDuration]);
      v6[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionActive] = 1;
      if (qword_100501BF0 == -1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_17:
    sub_1002A52AC();
  }
}

void sub_1002A6EB0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionActive) = 0;
    if (qword_100501BF0 != -1)
    {
      swift_once();
    }

    sub_1002A52AC();
  }
}

id sub_1002A6F78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LyonPowerExceptionHandlerClass();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1002A7040()
{
  result = qword_100509618;
  if (!qword_100509618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100509618);
  }

  return result;
}

uint64_t sub_1002A7094()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002A70CC()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_1005094B8);
  sub_1000958E4(v0, qword_1005094B8);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1002A714C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002A716C()
{
  v1 = v0;
  if (qword_100501C38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_1005094B8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    if (qword_100501C10 != -1)
    {
      v11 = v5;
      swift_once();
      v5 = v11;
    }

    *(v5 + 4) = qword_100509490;
    _os_log_impl(&_mh_execute_header, v3, v4, "Resetting connection RSSI to default value after %f seconds", v5, 0xCu);
  }

  v6 = *(v1 + 32);
  if (v6)
  {
    sub_1003AE754(v6);
    v7 = *(v1 + 32);
  }

  else
  {
    v7 = 0;
  }

  *(v1 + 32) = 0;

  *(v1 + 48) = 0;
  v8 = sub_10009122C(_swiftEmptyArrayStorage);
  swift_beginAccess();
  v9 = *(v1 + 112);
  *(v1 + 112) = v8;

  if (qword_100501BF8 != -1)
  {
    result = swift_once();
  }

  *(v1 + 40) = byte_10051B6B0;
  return result;
}

uint64_t sub_1002A7334()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002A7378(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1002A7400(uint64_t a1, uint64_t (*a2)(BOOL, unint64_t, uint64_t))
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    a2(0, v3, 0);
    v36 = _swiftEmptyArrayStorage;
    v5 = v2 + 64;
    v6 = -1 << *(v2 + 32);
    result = _HashTable.startBucket.getter();
    v7 = result;
    v8 = 0;
    v37 = *(v2 + 36);
    v31 = v2 + 72;
    v32 = v3;
    v33 = v2 + 64;
    v34 = v2;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v2 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (v37 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v35 = v8;
      v11 = *(v2 + 56);
      v12 = (*(v2 + 48) + 16 * v7);
      v14 = *v12;
      v13 = v12[1];
      v15 = *(v11 + 8 * v7);
      swift_bridgeObjectRetain_n();
      sub_100069E2C(v14, v13);
      sub_100069E2C(v14, v13);
      sub_10006A178(v14, v13);

      sub_100288788(v14, v13);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v16 = BidirectionalCollection<>.joined(separator:)();
      v18 = v17;

      sub_10006A178(v14, v13);

      v19 = v36;
      v21 = v36[2];
      v20 = v36[3];
      if (v21 >= v20 >> 1)
      {
        result = a2(v20 > 1, v21 + 1, 1);
        v19 = v36;
      }

      v19[2] = v21 + 1;
      v22 = &v19[3 * v21];
      v22[4] = v16;
      v22[5] = v18;
      v22[6] = v15;
      v2 = v34;
      v9 = 1 << *(v34 + 32);
      if (v7 >= v9)
      {
        goto LABEL_25;
      }

      v5 = v33;
      v23 = *(v33 + 8 * v10);
      if ((v23 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v36 = v19;
      if (v37 != *(v34 + 36))
      {
        goto LABEL_27;
      }

      v24 = v23 & (-2 << (v7 & 0x3F));
      if (v24)
      {
        v9 = __clz(__rbit64(v24)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v10 << 6;
        v26 = v10 + 1;
        v27 = (v31 + 8 * v10);
        while (v26 < (v9 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_1000937D4(v7, v37, 0);
            v9 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_1000937D4(v7, v37, 0);
      }

LABEL_4:
      v8 = v35 + 1;
      v7 = v9;
      if (v35 + 1 == v32)
      {
        return v36;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

void sub_1002A7730(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (a1)
    {
      v10 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
      if (v10 >> 60 == 15)
      {

        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v11, v12, "Missing peer key identifier", v13, 2u);
        }
      }

      else
      {
        v22 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
        swift_beginAccess();
        sub_10006A2BC(v22, v10);
        sub_10006A2BC(v22, v10);

        sub_1000C4F98(0, v22, v10);
        swift_endAccess();
        swift_beginAccess();
        sub_100069E2C(v22, v10);
        sub_1000C4FC4(0, v22, v10);
        swift_endAccess();
        swift_beginAccess();
        sub_1000C512C(0, v22, v10);
        swift_endAccess();
      }
    }

    else
    {
      v14 = sub_10008FE8C(&_swiftEmptyArrayStorage);
      v15 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_status;
      swift_beginAccess();
      v16 = *(v1 + v15);
      *(v1 + v15) = v14;

      v17 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_supportedFunctions;
      swift_beginAccess();
      v18 = *(v1 + v17);
      *(v1 + v17) = &_swiftEmptyDictionarySingleton;

      v19 = sub_10008FEA0(&_swiftEmptyArrayStorage);
      v20 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_proprietaryData;
      swift_beginAccess();
      v21 = *(v1 + v20);
      *(v1 + v20) = v19;
    }
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1002A7AAC(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1002ABA40(v6, a2, a3);
  return sub_1002A7B34;
}

void sub_1002A7B34(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1002A7B80(id *a1)
{
  v1 = *a1;
  if ([*a1 endPointType] != 1)
  {
    return 0;
  }

  result = [v1 supportedRKEFunctions];
  if (result)
  {

    result = [v1 readerIdentifier];
    if (result)
    {
      v3 = result;
      v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      sub_10006A178(v4, v6);
      return 1;
    }
  }

  return result;
}

uint64_t sub_1002A7C28()
{
  v0 = type metadata accessor for AlishaVehicle();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1002A7C68();
  qword_10051B6C8 = result;
  return result;
}

uint64_t sub_1002A7C68()
{
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaVehicle_status) = &_swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaVehicle_supportedFunctions) = &_swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaVehicle_proprietaryData) = &_swiftEmptyDictionarySingleton;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v3[4] = sub_1002ABD94;
  v3[5] = v0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100193978;
  v3[3] = &unk_1004CF1F0;
  v1 = _Block_copy(v3);

  os_state_add_handler();
  _Block_release(v1);
  return v0;
}

_DWORD *sub_1002A7DC8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_status;
  swift_beginAccess();
  v3 = *(v1 + v2);

  v5 = sub_1002A7400(v4, sub_10019FA68);

  v6 = _swiftEmptyDictionarySingleton;
  if (v5[2])
  {
    sub_100068FC4(&qword_100509728, &qword_1004143E0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v7 = _swiftEmptyDictionarySingleton;
  }

  *&v30 = v7;

  sub_1002AAE2C(v8, 1, &v30, sub_100313A18, sub_10030EED0);

  v9 = v30;
  v31 = sub_100068FC4(&qword_100509730, &qword_1004143E8);
  *&v30 = v9;
  sub_100075D50(&v30, v29);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v29, 0x737574617473, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v11 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_supportedFunctions;
  swift_beginAccess();
  v12 = *(v1 + v11);

  v14 = sub_1002A7400(v13, sub_10019FA28);

  if (v14[2])
  {
    sub_100068FC4(&unk_10050AA90, &qword_1004143F0);
    v6 = static _DictionaryStorage.allocate(capacity:)();
  }

  *&v30 = v6;

  sub_1002AAE2C(v15, 1, &v30, sub_100313A04, sub_10030EEBC);

  v16 = v30;
  v31 = sub_100068FC4(&qword_100509738, &qword_1004143F8);
  *&v30 = v16;
  sub_100075D50(&v30, v29);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v29, 0xD000000000000012, 0x800000010046AA80, v17);
  v18 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_proprietaryData;
  swift_beginAccess();
  v19 = *(v1 + v18);

  v21 = sub_1002A7400(v20, sub_10019F9E8);

  if (v21[2])
  {
    sub_100068FC4(&qword_100509740, &qword_100414400);
    v22 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v22 = _swiftEmptyDictionarySingleton;
  }

  *&v30 = v22;

  sub_1002AAE2C(v23, 1, &v30, sub_1003139F0, sub_10030EEA8);

  v24 = v30;
  v31 = sub_100068FC4(&qword_100509748, &qword_100414408);
  *&v30 = v24;
  sub_100075D50(&v30, v29);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v29, 0x74656972706F7270, 0xEF61746144797261, v25);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v27 = sub_100015DA0("alishavehicle.state", isa);

  return v27;
}

void sub_1002A821C(char a1, unsigned __int16 a2, unint64_t a3)
{
  v5 = v3;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  v18 = *(v10 + 8);
  v17 = v10 + 8;
  v18(v13, v9);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_logger;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 33554944;
    *(v21 + 4) = a2;
    *(v21 + 6) = 256;
    *(v21 + 8) = a1;
    _os_log_impl(&_mh_execute_header, v19, v20, "Vehicle function %hu status %hhu", v21, 9u);
  }

  v22 = (a3 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  a3 = *(a3 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (a3 >> 60 == 15)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Missing peer key identifier", v25, 2u);
    }

    return;
  }

  v13 = *v22;
  v4 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_status;
  swift_beginAccess();
  v26 = *(*(v5 + v4) + 16);
  sub_100069E2C(v13, a3);
  if (!v26 || (sub_10008C8DC(v13, a3), (v27 & 1) == 0))
  {
    swift_endAccess();
    sub_100068FC4(&qword_100509760, &qword_100414420);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004098F0;
    *(inited + 32) = a2;
    *(inited + 34) = a1;
    v38 = sub_100090134(inited);
    swift_setDeallocating();
    swift_beginAccess();
    v39 = *(v5 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *(v5 + v4);
    *(v5 + v4) = 0x8000000000000000;
    sub_100314CDC(v38, v13, a3, isUniquelyReferenced_nonNull_native);
    sub_10006A2D0(v13, a3);
    *(v5 + v4) = v45;
    swift_endAccess();
    return;
  }

  swift_endAccess();
  swift_beginAccess();
  v28 = *(v5 + v4);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v5 + v4);
  v30 = v45;
  *(v5 + v4) = 0x8000000000000000;
  v16 = sub_10008C8DC(v13, a3);
  v32 = *(v30 + 16);
  v33 = (v31 & 1) == 0;
  v34 = v32 + v33;
  if (__OFADD__(v32, v33))
  {
    goto LABEL_25;
  }

  v17 = v31;
  if (*(v30 + 24) >= v34)
  {
    if (v29)
    {
      if ((v31 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

LABEL_26:
    sub_100310CA4();
    if ((v17 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  sub_100309F14(v34, v29);
  v35 = sub_10008C8DC(v13, a3);
  if ((v17 & 1) != (v36 & 1))
  {
LABEL_28:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v16 = v35;
  if ((v17 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_20:
  v41 = v45;
  v42 = *(*(v45 + 56) + 8 * v16);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v44 = v42;
  sub_100316CEC(a1, a2, v43);
  if (v44)
  {
    *(*(v41 + 56) + 8 * v16) = v44;
  }

  else
  {
    sub_10011116C(*(v41 + 48) + 16 * v16);
    sub_1000E39D8(v16, v41);
  }

  *(v5 + v4) = v41;
  swift_endAccess();
  sub_10006A2D0(v13, a3);
}

void sub_1002A86D4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  v16 = *(v8 + 8);
  v15 = v8 + 8;
  v16(v11, v7);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v7 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (v7 >> 60 == 15)
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Missing peer key identifier", v19, 2u);
    }

    return;
  }

  v11 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v3 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_supportedFunctions;
  swift_beginAccess();
  v20 = *(*(v4 + v3) + 16);
  sub_100069E2C(v11, v7);
  if (!v20 || (sub_10008C8DC(v11, v7), (v21 & 1) == 0))
  {
    swift_endAccess();

    v32 = sub_1000E1DB8(v31);

    swift_beginAccess();
    v33 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v4 + v3);
    *(v4 + v3) = 0x8000000000000000;
    sub_100314B24(v32, v11, v7, isUniquelyReferenced_nonNull_native);
    sub_10006A2D0(v11, v7);
    *(v4 + v3) = v42;
    swift_endAccess();
    return;
  }

  swift_endAccess();
  swift_beginAccess();
  v22 = *(v4 + v3);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(v4 + v3);
  v24 = v42;
  *(v4 + v3) = 0x8000000000000000;
  v14 = sub_10008C8DC(v11, v7);
  v26 = *(v24 + 16);
  v27 = (v25 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
    goto LABEL_27;
  }

  v15 = v25;
  if (*(v24 + 24) >= v28)
  {
    if (v23)
    {
      if ((v25 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

LABEL_28:
    sub_100310C90();
    if ((v15 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  sub_100309F00(v28, v23);
  v29 = sub_10008C8DC(v11, v7);
  if ((v15 & 1) != (v30 & 1))
  {
LABEL_30:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v14 = v29;
  if ((v15 & 1) == 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_18:
  v35 = v42;
  v36 = *(*(v42 + 56) + 8 * v14);
  v41 = v36;
  v37 = *(a1 + 16);
  if (v37)
  {
    v38 = (a1 + 32);
    do
    {
      v39 = *v38++;
      sub_1000D6A84(&v40 + 3, v39);
      --v37;
    }

    while (v37);
    v36 = v41;
  }

  if (v36)
  {
    *(*(v35 + 56) + 8 * v14) = v36;
  }

  else
  {
    sub_10011116C(*(v35 + 48) + 16 * v14);
    sub_1000E39D8(v14, v35);
  }

  *(v4 + v3) = v35;
  swift_endAccess();
  sub_10006A2D0(v11, v7);
}

void sub_1002A8AE0(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v63 = a3;
  v65 = a1;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  v16 = v65;
  sub_10006A2BC(v65, a2);
  v64 = v4;
  v5 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  sub_10006A2D0(v16, a2);
  if (os_log_type_enabled(v5, v17))
  {
    v62 = a4;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v67[0] = v19;
    *v18 = 33554946;
    *(v18 + 4) = v63;
    *(v18 + 6) = 2080;
    if (a2 >> 60 == 15)
    {
      v20 = 0xE300000000000000;
      v21 = 7104878;
    }

    else
    {
      v68 = sub_100288788(v65, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v22 = BidirectionalCollection<>.joined(separator:)();
      v20 = v23;

      v21 = v22;
    }

    v24 = sub_1002FFA0C(v21, v20, v67);

    *(v18 + 8) = v24;
    _os_log_impl(&_mh_execute_header, v5, v17, "Vehicle function %hu proprietary data %s", v18, 0x10u);
    sub_1000752F4(v19);

    a4 = v62;
  }

  else
  {
  }

  v12 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  v25 = v64;
  if (v12 >> 60 != 15)
  {
    v8 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
    a4 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_proprietaryData;
    if (a2 >> 60 == 15)
    {
      swift_beginAccess();
      v29 = *(v25 + a4);
      v30 = *(v29 + 16);
      sub_100069E2C(v8, v12);
      if (v30)
      {
        v31 = sub_10008C8DC(v8, v12);
        if (v32)
        {
          if (*(*(*(v29 + 56) + 8 * v31) + 16))
          {
            sub_10008CA34(v63);
            if (v33)
            {
              swift_endAccess();
              swift_beginAccess();
              v34 = sub_1002A7AAC(v67, v8, v12);
              if (*v35)
              {
                sub_100145928(v63, &v66);
                sub_10006A2D0(v66, *(&v66 + 1));
              }

              (v34)(v67, 0);
            }
          }
        }
      }

      goto LABEL_29;
    }

    swift_beginAccess();
    v36 = *(*(v25 + a4) + 16);
    sub_10006A2BC(v65, a2);
    sub_10006A2BC(v8, v12);
    if (!v36 || (sub_10008C8DC(v8, v12), (v37 & 1) == 0))
    {
      swift_endAccess();
      sub_100068FC4(&qword_100509750, &qword_100414410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004098F0;
      *(inited + 32) = v63;
      v51 = inited + 32;
      v52 = v65;
      *(inited + 40) = v65;
      *(inited + 48) = a2;
      v53 = sub_1000914B4(inited);
      swift_setDeallocating();
      sub_10006A2BC(v52, a2);
      sub_1002AC628(v51);
      swift_beginAccess();
      v54 = *(v25 + a4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = *(v25 + a4);
      *(v25 + a4) = 0x8000000000000000;
      sub_100314B10(v53, v8, v12, isUniquelyReferenced_nonNull_native);
      sub_10006A2D0(v8, v12);
      *(v25 + a4) = v68;
      swift_endAccess();
      v56 = v52;
      v57 = a2;
LABEL_38:
      sub_10006A2D0(v56, v57);
      return;
    }

    swift_endAccess();
    swift_beginAccess();
    v38 = *(v25 + a4);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v40 = v25;
    v41 = v39;
    v68 = *(v40 + a4);
    v42 = v68;
    *(v40 + a4) = 0x8000000000000000;
    v15 = sub_10008C8DC(v8, v12);
    v44 = v42[2];
    v45 = (v43 & 1) == 0;
    v46 = v44 + v45;
    if (!__OFADD__(v44, v45))
    {
      LOBYTE(v5) = v43;
      if (v42[3] < v46)
      {
        sub_100309EEC(v46, v41);
        v47 = sub_10008C8DC(v8, v12);
        if ((v5 & 1) != (v48 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v15 = v47;
        v49 = v64;
        if ((v5 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_33:
        v58 = v68;
        v59 = *(v68[7] + 8 * v15);
        v60 = v65;
        sub_100069E2C(v65, a2);
        v61 = swift_isUniquelyReferenced_nonNull_native();
        *&v66 = v59;
        sub_100316E10(v60, a2, v63, v61);
        if (v66)
        {
          *(v58[7] + 8 * v15) = v66;
        }

        else
        {
          sub_10011116C(v58[6] + 16 * v15);
          sub_1000E39D8(v15, v58);
        }

        *(v49 + a4) = v58;
        swift_endAccess();
        sub_10006A2D0(v65, a2);
        goto LABEL_37;
      }

      if (v41)
      {
        v49 = v64;
        if (v43)
        {
          goto LABEL_33;
        }

LABEL_28:
        __break(1u);
LABEL_29:
        swift_endAccess();
LABEL_37:
        v56 = v8;
        v57 = v12;
        goto LABEL_38;
      }

LABEL_41:
      sub_100310C7C();
      v49 = v64;
      if (v5)
      {
        goto LABEL_33;
      }

      goto LABEL_28;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Missing peer key identifier", v28, 2u);
  }
}

char *sub_1002A91CC(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = (a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v11 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (v11 >> 60 != 15)
  {
    v16 = *v10;
    v17 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_supportedFunctions;
    swift_beginAccess();
    v18 = *(v1 + v17);
    v19 = *(v18 + 16);
    sub_100069E2C(v16, v11);
    if (!v19)
    {
      goto LABEL_17;
    }

    v20 = sub_10008C8DC(v16, v11);
    if ((v21 & 1) == 0)
    {
      goto LABEL_17;
    }

    v22 = *(*(v18 + 56) + 8 * v20);
    swift_endAccess();
    v23 = *(v22 + 16);
    if (!v23)
    {
      v24 = _swiftEmptyArrayStorage;
      goto LABEL_14;
    }

    v27 = v16;
    v24 = sub_1000C0148(v23, 0);
    v25 = sub_100358284(&v28, v24 + 16, v23, v22);

    sub_100093854();
    if (v25 == v23)
    {
      v16 = v27;
LABEL_14:
      v28 = v24;

      sub_1002AB1DC(&v28);

      sub_10006A2D0(v16, v11);
      return v28;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    swift_endAccess();
    __break(1u);

    __break(1u);
    return result;
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Missing peer key identifier", v14, 2u);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1002A950C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void *))
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v15 = (a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
    v16 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
    if (v16 >> 60 == 15)
    {
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Missing peer key identifier", v19, 2u);
      }

      return a3(&_swiftEmptyArrayStorage);
    }

    else
    {
      v20 = *v15;
      v21 = *a2;
      swift_beginAccess();
      v22 = *(v3 + v21);
      v23 = *(v22 + 16);
      sub_100069E2C(v20, v16);
      if (v23 && (v24 = sub_10008C8DC(v20, v16), (v25 & 1) != 0))
      {
        v26 = *(*(v22 + 56) + 8 * v24);
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        v26 = a3(&_swiftEmptyArrayStorage);
      }

      sub_10006A2D0(v20, v16);
      return v26;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1002A9798(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (qword_1005019E8 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v11 = sub_1000CAA04();
  v12 = v11;
  if ((v11 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_7:
      v15 = _swiftEmptyDictionarySingleton;

      sub_1002AC3F8(v12, v2, a1 & 1, &v15);

      return v15;
    }
  }

  else if (*(v11 + 16))
  {
    goto LABEL_7;
  }

  return sub_100092328(_swiftEmptyArrayStorage);
}

void sub_1002A99B4(void **a1, uint64_t a2, int a3, unint64_t a4)
{
  v5 = v4;
  LODWORD(v7) = a3;
  v10 = type metadata accessor for DispatchPredicate();
  v167 = *(v10 - 8);
  v11 = v167[8];
  __chkstk_darwin(v10);
  v166 = &v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = swift_allocObject();
  v14[2] = v13;
  v15 = qword_100501D78;
  v16 = v13;
  if (v15 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1002AC6C8;
    *(v17 + 24) = v14;

    v18 = sub_1000CAAC4();

    v19 = sub_1000CA840(v18);
    if (!v19)
    {
      goto LABEL_6;
    }

    v14 = v19;
    type metadata accessor for AlishaPeer();
    v20 = swift_dynamicCastClass();
    if (!v20)
    {

LABEL_8:
      v23 = v16;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        v170 = v167;
        *v26 = 136315138;
        v27 = [v23 publicKeyIdentifier];
        v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v169 = sub_100288788(v28, v30);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_10007A2D0();
        v31 = BidirectionalCollection<>.joined(separator:)();
        v33 = v32;
        sub_10006A178(v28, v30);

        v34 = sub_1002FFA0C(v31, v33, &v170);

        *(v26 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v24, v25, "Failed to retrieve AlishaPeer for %s", v26, 0xCu);
        sub_1000752F4(v167);
      }

      goto LABEL_79;
    }

    v21 = v20;
    v160 = v10;
    v22 = *(v20 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
    if (v22 >> 60 == 15)
    {

LABEL_6:

      goto LABEL_8;
    }

    v154 = v18;
    v155 = v14;
    v162 = a2;
    v35 = v7;
    v36 = *(v20 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
    v161 = v22;
    v164 = v36;
    LODWORD(v159) = v35;
    v156 = a4;
    v157 = v5;
    v158 = v16;
    if ((v35 & 1) == 0)
    {
      goto LABEL_12;
    }

    if (*(*(v20 + OBJC_IVAR____TtC10seserviced10AlishaPeer_configuration) + 80) != 1)
    {
      v38 = _swiftEmptyArrayStorage;
      v171 = _swiftEmptyArrayStorage;
      sub_100069E2C(v36, v22);
    }

    else
    {
LABEL_12:
      sub_100069E2C(v36, v22);
      v37 = [v16 supportedRKEFunctions];
      if (!v37)
      {
        goto LABEL_88;
      }

      v14 = v37;
      sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
      v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v171 = v38;
      if ((v159 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    v16 = OBJC_IVAR____TtC10seserviced10AlishaPeer_configuration;
    if (!*(*(*(v21 + OBJC_IVAR____TtC10seserviced10AlishaPeer_configuration) + 72) + 16))
    {
      goto LABEL_38;
    }

    v170 = _swiftEmptyArrayStorage;
    if (v38 >> 62)
    {
      break;
    }

    v10 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_36;
    }

LABEL_19:
    v7 = 0;
    a4 = v38 & 0xC000000000000001;
    a2 = v38 & 0xFFFFFFFFFFFFFF8;
    v163 = v38;
    v5 = v38 + 32;
    v165 = v21;
LABEL_21:
    while (2)
    {
      if (a4)
      {
        v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(a2 + 16))
        {
          goto LABEL_33;
        }

        v45 = *(v5 + 8 * v7);
      }

      v14 = v45;
      if (!__OFADD__(v7++, 1))
      {
        v47 = *(*&v16[v21] + 72);

        v48 = [v14 unsignedIntegerValue];
        v49 = *(v47 + 16);
        v50 = 32;
        do
        {
          if (!v49)
          {

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v39 = v5;
            v40 = a2;
            v41 = a4;
            v42 = v10;
            v43 = v16;
            v44 = v170[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v16 = v43;
            v10 = v42;
            a4 = v41;
            a2 = v40;
            v5 = v39;
            v21 = v165;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            if (v7 != v10)
            {
              goto LABEL_21;
            }

            goto LABEL_31;
          }

          v51 = *(v47 + v50);
          v50 += 8;
          --v49;
        }

        while (v51 != v48);

        if (v7 != v10)
        {
          continue;
        }

LABEL_31:
        v52 = v170;
        goto LABEL_37;
      }

      break;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (v10)
  {
    goto LABEL_19;
  }

LABEL_36:
  v52 = _swiftEmptyArrayStorage;
LABEL_37:

  v171 = v52;
  v38 = v52;
  v22 = v161;
  v36 = v164;
LABEL_38:
  if (qword_100501DB0 != -1)
  {
    swift_once();
  }

  v53 = qword_10051B820;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v54 = qword_10051B7F0;
  v56 = v166;
  v55 = v167;
  *v166 = qword_10051B7F0;
  v57 = v160;
  (v55[13])(v56, enum case for DispatchPredicate.onQueue(_:), v160);
  v58 = v54;
  LOBYTE(v54) = _dispatchPreconditionTest(_:)();
  v60 = v55[1];
  v59 = v55 + 1;
  v60(v56, v57);
  if (v54)
  {
    v61 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
    swift_beginAccess();
    v62 = *(v53 + v61);
    sub_10006A2BC(v36, v22);

    v64 = v157;
    v56 = sub_1002ABDB0(v63, v36, v22, &v171);
    v59 = v64;
    sub_10006A2D0(v36, v22);

    if (v159)
    {
      isa = UInt16._bridgeToObjectiveC()().super.super.isa;
      v169 = isa;
      __chkstk_darwin(isa);
      *(&v154 - 2) = &v169;
      v66 = sub_1002FB068(sub_1002AC708, (&v154 - 4), v38);

      if (v66)
      {
        UInt16._bridgeToObjectiveC()();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_46;
        }

        goto LABEL_86;
      }

      goto LABEL_47;
    }

    goto LABEL_64;
  }

  __break(1u);
LABEL_86:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_46:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v38 = v171;
LABEL_47:
  v67 = *(v56 + 2);
  v68 = 32;
  v69 = v67;
  while (v69)
  {
    v70 = *&v56[v68];
    v68 += 2;
    --v69;
    if (v70 == 3)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_100130164(0, v67 + 1, 1, v56);
      }

      v72 = *(v56 + 2);
      v71 = *(v56 + 3);
      if (v72 >= v71 >> 1)
      {
        v56 = sub_100130164((v71 > 1), v72 + 1, 1, v56);
      }

      *(v56 + 2) = v72 + 1;
      *&v56[2 * v72 + 32] = 1;
      break;
    }
  }

  v73 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_status;
  v74 = v162;
  swift_beginAccess();
  v75 = *(v74 + v73);
  if (!*(v75 + 16) || (v76 = sub_10008C8DC(v36, v22), (v77 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_64;
  }

  v78 = *(*(v75 + 56) + 8 * v76);
  swift_endAccess();
  if (!v78[2] || (v79 = sub_10008CA34(3u), (v80 & 1) == 0))
  {
LABEL_64:
    v163 = v38;
    v169 = sub_100288788(v36, v22);
    v102 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v167 = BidirectionalCollection<>.joined(separator:)();

    v103 = [v158 readerIdentifier];
    if (!v103)
    {
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v104 = v103;

    v105 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v107 = v106;

    v108 = sub_100288788(v105, v107);
    v165 = v59;
    v166 = v102;
    v169 = v108;
    BidirectionalCollection<>.joined(separator:)();
    sub_10006A178(v105, v107);

    sub_10034D004(v56);

    v109 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_status;
    v110 = v162;
    swift_beginAccess();
    v111 = *(v110 + v109);
    v112 = v161;
    if (*(v111 + 16) && (v113 = sub_10008C8DC(v164, v161), (v114 & 1) != 0))
    {
      v115 = *(*(v111 + 56) + 8 * v113);
      swift_endAccess();
      v169 = v115;

      sub_100068FC4(&qword_100509780, &qword_100414438);
      sub_100068FC4(&qword_100509788, &qword_100414440);
      swift_dynamicCast();
      v116 = v168;
    }

    else
    {
      swift_endAccess();
      v116 = 0;
    }

    v117 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_proprietaryData;
    v118 = v162;
    swift_beginAccess();
    v119 = *(v118 + v117);
    if (*(v119 + 16) && (v120 = sub_10008C8DC(v164, v112), (v121 & 1) != 0))
    {
      v122 = *(*(v119 + 56) + 8 * v120);
      swift_endAccess();
      v169 = v122;

      sub_100068FC4(&qword_100509770, &qword_100414428);
      sub_100068FC4(&qword_100509778, &qword_100414430);
      swift_dynamicCast();
      v123 = v168;
    }

    else
    {
      swift_endAccess();
      v123 = 0;
    }

    v124 = String._bridgeToObjectiveC()();

    v125 = String._bridgeToObjectiveC()();

    sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
    v126.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v127.super.isa = Array._bridgeToObjectiveC()().super.isa;

    if (v116)
    {
      sub_1000E1F04(&qword_100509768, &qword_100504C80, NSNumber_ptr);
      v128.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      if (v123)
      {
LABEL_75:
        sub_1000E1F04(&qword_100509768, &qword_100504C80, NSNumber_ptr);
        v129.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_78:
        v130 = [objc_allocWithZone(SESVehicleReport) initWithKeyIdentifier:v124 readerIdentifier:v125 supportedFunctions:v126.super.isa functionsInProgress:v127.super.isa status:v128.super.isa proprietaryData:v129.super.isa];

        v131 = v164;
        v132 = v161;
        v169 = sub_100288788(v164, v161);
        v133 = BidirectionalCollection<>.joined(separator:)();
        v135 = v134;

        v24 = v130;
        v136 = v156;
        v137 = *v156;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v169 = *v136;
        *v136 = 0x8000000000000000;
        sub_100316F70(v24, v133, v135, isUniquelyReferenced_nonNull_native);

        *v136 = v169;

        sub_10006A2D0(v131, v132);

LABEL_79:

        return;
      }
    }

    else
    {
      v128.super.isa = 0;
      if (v123)
      {
        goto LABEL_75;
      }
    }

    v129.super.isa = 0;
    goto LABEL_78;
  }

  v163 = v38;
  v81 = *(v78[7] + v79) - 11 < 0xFFFFFFF6;

  v82 = swift_isUniquelyReferenced_nonNull_native();
  v169 = v78;
  sub_100316CEC(v81, 1u, v82);
  v83 = v169;
  v169 = sub_100288788(v36, v22);
  v84 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  v85 = sub_10007A2D0();
  v167 = BidirectionalCollection<>.joined(separator:)();

  v86 = [v158 readerIdentifier];
  if (v86)
  {
    v87 = v86;

    v88 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;

    v91 = sub_100288788(v88, v90);
    v159 = v59;
    v160 = v85;
    v169 = v91;
    v165 = v84;
    BidirectionalCollection<>.joined(separator:)();
    sub_10006A178(v88, v90);

    sub_10034D004(v56);

    sub_1001960E4(v83);
    v93 = v92;
    v94 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_proprietaryData;
    v95 = v162;
    swift_beginAccess();
    v96 = *(v95 + v94);
    v97 = *(v96 + 16);
    v166 = v83;
    v158 = v93;
    if (v97 && (v98 = sub_10008C8DC(v164, v161), (v99 & 1) != 0))
    {
      v100 = *(*(v96 + 56) + 8 * v98);
      swift_endAccess();
      v169 = v100;

      sub_100068FC4(&qword_100509770, &qword_100414428);
      sub_100068FC4(&qword_100509778, &qword_100414430);
      swift_dynamicCast();
      v101 = v168;
    }

    else
    {
      swift_endAccess();
      v101 = 0;
    }

    v139 = String._bridgeToObjectiveC()();

    v140 = String._bridgeToObjectiveC()();

    sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
    v141.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v142.super.isa = Array._bridgeToObjectiveC()().super.isa;

    sub_1000E1F04(&qword_100509768, &qword_100504C80, NSNumber_ptr);
    v143.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    if (v101)
    {
      v144.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v144.super.isa = 0;
    }

    v145 = [objc_allocWithZone(SESVehicleReport) initWithKeyIdentifier:v139 readerIdentifier:v140 supportedFunctions:v141.super.isa functionsInProgress:v142.super.isa status:v143.super.isa proprietaryData:v144.super.isa];

    v146 = v164;
    v147 = v161;
    v169 = sub_100288788(v164, v161);
    v148 = BidirectionalCollection<>.joined(separator:)();
    v150 = v149;

    v24 = v145;
    v151 = v156;
    v152 = *v156;
    v153 = swift_isUniquelyReferenced_nonNull_native();
    v169 = *v151;
    *v151 = 0x8000000000000000;
    sub_100316F70(v24, v148, v150, v153);

    *v151 = v169;

    sub_10006A2D0(v146, v147);

    goto LABEL_79;
  }

LABEL_89:
  __break(1u);
}

BOOL sub_1002AAAFC(uint64_t a1, void *a2)
{
  if (*(a1 + OBJC_IVAR____TtC10seserviced4Peer_type))
  {
    return 0;
  }

  v6 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v5 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  sub_10006A2BC(v6, v5);
  v7 = [a2 publicKeyIdentifier];
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v5 >> 60 != 15)
  {
    if (v10 >> 60 != 15)
    {
      sub_10006A2BC(v6, v5);
      sub_100069E2C(v8, v10);
      v11 = sub_10008FB4C(v6, v5, v8, v10);
      sub_10006A2D0(v8, v10);
      sub_10006A178(v8, v10);
      sub_10006A2D0(v6, v5);
      sub_10006A2D0(v6, v5);
      if (v11)
      {
        return *(a1 + OBJC_IVAR____TtC10seserviced4Peer_pairingState) == 2;
      }

      return 0;
    }

LABEL_7:
    sub_10006A2D0(v6, v5);
    sub_10006A2D0(v8, v10);
    return 0;
  }

  if (v10 >> 60 != 15)
  {
    goto LABEL_7;
  }

  sub_10006A2D0(v6, v5);
  return *(a1 + OBJC_IVAR____TtC10seserviced4Peer_pairingState) == 2;
}

uint64_t sub_1002AAC6C()
{
  v1 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10seserviced13AlishaVehicle_status);

  v4 = *(v0 + OBJC_IVAR____TtC10seserviced13AlishaVehicle_supportedFunctions);

  v5 = *(v0 + OBJC_IVAR____TtC10seserviced13AlishaVehicle_proprietaryData);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AlishaVehicle()
{
  result = qword_100509688;
  if (!qword_100509688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002AAD8C()
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

uint64_t sub_1002AAE2C(void *a1, char a2, void *a3, void (*a4)(void), void (*a5)(uint64_t, uint64_t))
{
  v43 = a1[2];
  if (!v43)
  {
  }

  LOBYTE(v8) = a2;
  v10 = a1[4];
  v9 = a1[5];
  v11 = a1[6];
  v12 = *a3;

  v13 = sub_10008C908(v10, v9);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v19) = v14;
  if (v12[3] < v18)
  {
    a5(v18, v8 & 1);
    v20 = *a3;
    v13 = sub_10008C908(v10, v9);
    if ((v19 & 1) == (v21 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v13 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v8)
  {
LABEL_7:
    if (v19)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v23 = v13;
  a4();
  v13 = v23;
  if (v19)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v24 = *a3;
  *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  v25 = (v24[6] + 16 * v13);
  *v25 = v10;
  v25[1] = v9;
  *(v24[7] + 8 * v13) = v11;
  v26 = v24[2];
  v17 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v17)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v40._object = 0x8000000100466020;
    v40._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v40);
    _print_unlocked<A, B>(_:_:)();
    v41._countAndFlagsBits = 39;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v24[2] = v27;
  if (v43 != 1)
  {
    v8 = a1 + 9;
    v19 = 1;
    while (v19 < a1[2])
    {
      v10 = *(v8 - 2);
      v9 = *(v8 - 1);
      v11 = *v8;
      v28 = *a3;

      v29 = sub_10008C908(v10, v9);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v17 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v17)
      {
        goto LABEL_23;
      }

      a4 = v30;
      if (v28[3] < v33)
      {
        a5(v33, 1);
        v34 = *a3;
        v29 = sub_10008C908(v10, v9);
        if ((a4 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (a4)
      {
        goto LABEL_8;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v37 = (v36[6] + 16 * v29);
      *v37 = v10;
      v37[1] = v9;
      *(v36[7] + 8 * v29) = v11;
      v38 = v36[2];
      v17 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v17)
      {
        goto LABEL_24;
      }

      ++v19;
      v36[2] = v39;
      v8 += 3;
      if (v43 == v19)
      {
      }
    }

    goto LABEL_25;
  }
}

Swift::Int sub_1002AB1DC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100079DA4(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[2 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          *(v13 + 1) = v14;
          *v13 = v11;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1002AB314(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1002AB314(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100079C78(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = v8[2];
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1002AB864((*a3 + 2 * *v77), (*a3 + 2 * *v79), (*a3 + 2 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 2 * v7);
      v11 = *(*a3 + 2 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 2 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 2 * v17);
            *(v20 + 2 * v17) = *(v20 + 2 * v16);
            *(v20 + 2 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100079C8C(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v29 = v8[3];
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_100079C8C((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = v8 + 4;
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = v8[4];
          v34 = v8[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[2 * v30];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[2 * v5];
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[2 * v30];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[2 * v5];
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[2 * v5 - 2];
        v71 = *v70;
        v72 = &v31[2 * v5];
        v73 = v72[1];
        sub_1002AB864((*a3 + 2 * *v70), (*a3 + 2 * *v72), (*a3 + 2 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = v8[2];
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[2 * v5], v72 + 2, 16 * (v74 - 1 - v5));
        v8[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[2 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[2 * v30];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 2 * v7 - 2;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 2 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= v27)
    {
LABEL_29:
      ++v7;
      v22 += 2;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    v26[1] = v27;
    *v26-- = v24;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1002AB864(unsigned __int16 *__dst, unsigned __int16 *__src, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst;
  v10 = a3 - __src;
  v11 = a3 - __src;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 2 * v9);
    }

    v12 = &v4[v9];
    if (v8 < 2)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v13 = *v6;
      if (v13 < *v4)
      {
        break;
      }

      LOWORD(v13) = *v4;
      v14 = v7 == v4++;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      ++v7;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v14 = v7 == v6++;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    *v7 = v13;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[v11] <= a4)
  {
    memmove(a4, __src, 2 * v11);
  }

  v12 = &v4[v11];
  if (v10 >= 2 && v6 > v7)
  {
LABEL_20:
    v15 = v6 - 1;
    --v5;
    v16 = v12;
    do
    {
      v17 = v5 + 1;
      v19 = *(v16 - 2);
      v16 -= 2;
      v18 = v19;
      v20 = *v15;
      if (v19 < v20)
      {
        if (v17 != v6)
        {
          *v5 = v20;
        }

        if (v12 <= v4 || (--v6, v15 <= v7))
        {
          v6 = v15;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v17 != v12)
      {
        *v5 = v18;
      }

      --v5;
      v12 = v16;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v21 = v12 - v4 + ((v12 - v4) >> 63);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFFELL)))
  {
    memmove(v6, v4, 2 * (v21 >> 1));
  }

  return 1;
}

void (*sub_1002ABA40(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_1002ABD60(v8);
  v8[9] = sub_1002ABB4C(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1002ABAEC;
}

void sub_1002ABAEC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1002ABB4C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_10008C8DC(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_100310C7C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_100309EEC(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_10008C8DC(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_1002ABCA4;
}

void sub_1002ABCA4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      v9 = v1[1];
      v8 = v1[2];
      sub_100317CF8(v4, v9, v8, v2, v5);
      sub_100069E2C(v9, v8);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_10011116C(*(v7 + 48) + 16 * v6);
    sub_1000E39D8(v6, v7);
  }

  v10 = *v1;

  free(v1);
}

uint64_t (*sub_1002ABD60(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1002ABD88;
}

uint64_t sub_1002ABD98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1002ABDB0(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  v5 = v4;
  v67 = a4;
  v7 = a1;
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_93:
    v54 = a3;
    v55 = _CocoaArrayWrapper.endIndex.getter();
    a3 = v54;
    v9 = v55;
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2)
  {
    v10 = 0;
  }

  else
  {
    v10 = a3 == 0xC000000000000000;
  }

  v11 = !v10;
  v66 = v11;
  v12 = __OFSUB__(HIDWORD(a2), a2);
  v60 = v12;
  if (!v9)
  {
    return _swiftEmptyArrayStorage;
  }

  v13 = 0;
  v70 = v7 & 0xC000000000000001;
  v14 = a3 >> 62;
  v59 = HIDWORD(a2) - a2;
  result = _swiftEmptyArrayStorage;
  v63 = BYTE6(a3);
  v64 = v7;
  v68 = a3 >> 62;
  v69 = v9;
  v61 = a3;
  v65 = v8;
  while (2)
  {
    v58 = result;
    while (1)
    {
      if (v70)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_87;
        }
      }

      else
      {
        if (v13 >= *(v8 + 16))
        {
          goto LABEL_88;
        }

        v16 = *(v7 + 8 * v13 + 32);

        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }
      }

      v18 = *(v16 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
      v19 = *(v16 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8);
      v20 = v19 >> 62;
      if (v19 >> 62 == 3)
      {
        if (v18)
        {
          v21 = 0;
        }

        else
        {
          v21 = v19 == 0xC000000000000000;
        }

        v23 = !v21 || v14 < 3;
        if (((v23 | v66) & 1) == 0)
        {
          goto LABEL_73;
        }

LABEL_43:
        v24 = 0;
        if (v14 <= 1)
        {
          goto LABEL_40;
        }

        goto LABEL_44;
      }

      if (v20 > 1)
      {
        if (v20 != 2)
        {
          goto LABEL_43;
        }

        v26 = *(v18 + 16);
        v25 = *(v18 + 24);
        v27 = __OFSUB__(v25, v26);
        v24 = v25 - v26;
        if (v27)
        {
          goto LABEL_92;
        }

        if (v14 <= 1)
        {
          goto LABEL_40;
        }
      }

      else if (v20)
      {
        LODWORD(v24) = HIDWORD(v18) - v18;
        if (__OFSUB__(HIDWORD(v18), v18))
        {
          goto LABEL_91;
        }

        v24 = v24;
        if (v14 <= 1)
        {
LABEL_40:
          v28 = v63;
          if (v14)
          {
            v28 = v59;
            if (v60)
            {
              goto LABEL_90;
            }
          }

          goto LABEL_46;
        }
      }

      else
      {
        v24 = BYTE6(v19);
        if (v14 <= 1)
        {
          goto LABEL_40;
        }
      }

LABEL_44:
      if (v14 != 2)
      {
        if (!v24)
        {
          goto LABEL_73;
        }

        goto LABEL_16;
      }

      v30 = *(a2 + 16);
      v29 = *(a2 + 24);
      v27 = __OFSUB__(v29, v30);
      v28 = v29 - v30;
      if (v27)
      {
        goto LABEL_89;
      }

LABEL_46:
      if (v24 != v28)
      {
        goto LABEL_16;
      }

      if (v24 < 1)
      {
        goto LABEL_73;
      }

      v62 = v16;
      if (v20 > 1)
      {
        break;
      }

      v71 = v17;
      if (!v20)
      {
        v73[0] = v18;
        LOWORD(v73[1]) = v19;
        BYTE2(v73[1]) = BYTE2(v19);
        BYTE3(v73[1]) = BYTE3(v19);
        BYTE4(v73[1]) = BYTE4(v19);
        BYTE5(v73[1]) = BYTE5(v19);
        v31 = v61;
        sub_100069E2C(a2, v61);
        sub_10019F024(v73, a2, v31, &v72);
        if (v5)
        {
          goto LABEL_98;
        }

        v5 = 0;
        sub_10006A178(a2, v31);
        v32 = v72;
        goto LABEL_72;
      }

      v57 = v5;
      v41 = v18;
      if (v18 >> 32 < v18)
      {
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
      }

      sub_100069E2C(a2, v61);
      v42 = __DataStorage._bytes.getter();
      if (v42)
      {
        v43 = v42;
        v44 = __DataStorage._offset.getter();
        if (__OFSUB__(v41, v44))
        {
          goto LABEL_97;
        }

        v45 = v41 - v44 + v43;
      }

      else
      {
        v45 = 0;
      }

      __DataStorage._length.getter();
      v37 = v45;
      v38 = a2;
      v31 = v61;
      v39 = v61;
      v40 = v57;
LABEL_70:
      sub_10019F024(v37, v38, v39, v73);
      if (v40)
      {
LABEL_98:
        result = sub_10006A178(a2, v31);
        __break(1u);
        return result;
      }

      v5 = 0;
      sub_10006A178(a2, v31);
      v32 = v73[0];
      v14 = v68;
      v9 = v69;
LABEL_72:
      v17 = v71;
      v16 = v62;
      if (v32)
      {
        goto LABEL_73;
      }

LABEL_16:

LABEL_17:
      ++v13;
      if (v17 == v9)
      {
        return v58;
      }
    }

    if (v20 == 2)
    {
      v71 = v17;
      v33 = v5;
      v34 = *(v18 + 16);
      v57 = *(v18 + 24);
      sub_100069E2C(a2, v61);
      v35 = __DataStorage._bytes.getter();
      if (v35)
      {
        v36 = __DataStorage._offset.getter();
        if (__OFSUB__(v34, v36))
        {
          goto LABEL_96;
        }

        v35 += v34 - v36;
      }

      if (__OFSUB__(v57, v34))
      {
        goto LABEL_95;
      }

      __DataStorage._length.getter();
      v37 = v35;
      v38 = a2;
      v31 = v61;
      v39 = v61;
      v40 = v33;
      goto LABEL_70;
    }

    memset(v73, 0, 14);
    v31 = v61;
    sub_100069E2C(a2, v61);
    sub_10019F024(v73, a2, v31, &v72);
    if (v5)
    {
      goto LABEL_98;
    }

    v5 = 0;
    sub_10006A178(a2, v31);
    v16 = v62;
    if ((v72 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_73:
    v71 = v17;
    v46 = *v67;
    v47 = *(v16 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier);

    isa = UInt16._bridgeToObjectiveC()().super.super.isa;
    v73[0] = isa;
    __chkstk_darwin(isa);
    v56[2] = v73;
    v49 = v5;
    v50 = sub_1002FB068(sub_1002AC78C, v56, v46);

    if ((v50 & 1) == 0)
    {
      v5 = v49;
      v7 = v64;
      v8 = v65;
      v14 = v68;
      v9 = v69;
      v17 = v71;
      goto LABEL_17;
    }

    v51 = v58;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v5 = v49;
      result = v51;
    }

    else
    {
      result = sub_100130164(0, *(v51 + 2) + 1, 1, v51);
      v5 = v49;
    }

    v14 = v68;
    v53 = *(result + 2);
    v52 = *(result + 3);
    if (v53 >= v52 >> 1)
    {
      result = sub_100130164((v52 > 1), v53 + 1, 1, result);
      v5 = v49;
    }

    *(result + 2) = v53 + 1;
    *&result[2 * v53 + 32] = v47;
    v9 = v69;
    v13 = v71;
    v7 = v64;
    v8 = v65;
    if (v71 != v69)
    {
      continue;
    }

    return result;
  }
}

void sub_1002AC3F8(uint64_t a1, uint64_t a2, char a3, unint64_t a4)
{
  v5 = v4;
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
    sub_1000E1F04(&qword_100503608, &qword_100503F00, SEEndPoint_ptr);
    Set.Iterator.init(_cocoa:)();
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v18)
    {
      do
      {
        v27 = v18;
        sub_1002A99B4(&v27, a2, a3 & 1, a4);

        if (v5)
        {
          break;
        }

        v9 = v16;
        v10 = v17;
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
        swift_dynamicCast();
        v18 = v27;
        v16 = v9;
        v17 = v10;
      }

      while (v27);
    }

LABEL_19:
    sub_100093854();
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v8 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1002AC628(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100509758, &qword_100414418);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002AC690()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002AC6D0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002AC724(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_1002AC7C8()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = qword_10051B858;
  *(v0 + 192) = qword_10051B858;
  sub_1001FF418((v0 + 16));
  *(v0 + 200) = 0;
  v3 = *(v0 + 24);
  *(v0 + 208) = *(v0 + 16);
  *(v0 + 216) = v3;

  sub_10012E450(v0 + 16);

  return _swift_task_switch(sub_1002AC8D0, v2, 0);
}

uint64_t sub_1002AC8D0()
{
  v1 = v0[24];
  v2 = v0[25];
  v0[28] = sub_100362B68(v0[26], v0[27]);
  v0[29] = v2;
  v3 = v0[27];

  if (v2)
  {
    v4 = sub_1002ACC80;
  }

  else
  {
    v4 = sub_1002AC964;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002AC964()
{
  v0[22] = v0[28];
  v1 = swift_allocObject();
  v0[30] = v1;
  v1[2] = v0 + 22;
  v1[3] = 0xD000000000000010;
  v1[4] = 0x800000010046ABC0;
  v2 = swift_task_alloc();
  v0[31] = v2;
  *v2 = v0;
  v2[1] = sub_1002ACA78;

  return sub_1001FBFAC(0xD000000000000010, 0x800000010046ABC0, &unk_1004144B0, v1);
}

uint64_t sub_1002ACA78()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 240);
  if (v0)
  {

    v6 = sub_1002ACC98;
  }

  else
  {

    v6 = sub_1002ACBC4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002ACBC4()
{
  v1 = v0[23];
  swift_beginAccess();
  v2 = v0[22];
  v3 = OBJC_IVAR____TtC10seserviced14SECUserSession_credentials;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;

  v5 = v0[1];

  return v5(v2);
}

uint64_t sub_1002ACC98()
{
  v1 = v0[22];

  v2 = v0[32];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1002ACCFC(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = type metadata accessor for StateInternal();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v5 = *(v4 + 64) + 15;
  v2[27] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[28] = v6;
  v7 = *(v6 - 8);
  v2[29] = v7;
  v8 = *(v7 + 64) + 15;
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_1002ACE18, 0, 0);
}

uint64_t sub_1002ACE18()
{
  v1 = *(v0 + 184);
  v2 = *(v1 + 16);
  *(v0 + 248) = v2;
  if (v2)
  {
    *(v0 + 384) = enum case for StateInternal.installationFailed(_:);
    v3 = *(v0 + 224);
    v4 = *(v0 + 232);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 388) = v6;
    *(v0 + 256) = *(v4 + 56);
    *(v0 + 264) = v5;
    *(v0 + 272) = 0;
    *(v0 + 280) = 0;
    v5(*(v0 + 240), v1 + ((v6 + 32) & ~v6), v3);
    if (qword_100501DC8 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 384);
    v9 = *(v0 + 208);
    v8 = *(v0 + 216);
    v10 = *(v0 + 200);
    v11 = qword_10051B858;
    *(v0 + 288) = qword_10051B858;
    (*(v9 + 104))(v8, v7, v10);

    return _swift_task_switch(sub_1002ACF74, v11, 0);
  }

  else
  {
    v12 = *(v0 + 240);
    v13 = *(v0 + 216);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1002ACF74()
{
  v1 = v0[36];
  v2 = v0[34];
  v3 = sub_10035E904();
  if (v2)
  {
    v0[38] = v2;
    (*(v0[26] + 8))(v0[27], v0[25]);
    v12 = sub_1002AD2AC;
  }

  else
  {
    v4 = v3;
    v5 = v0[36];
    v6 = v0[30];
    v7 = v0[27];
    v8 = swift_task_alloc();
    v8[2] = v4;
    v8[3] = v5;
    v8[4] = v6;
    v8[5] = v7;
    NSManagedObjectContext.performAndWait<A>(_:)();
    v0[37] = 0;
    v10 = v0[26];
    v9 = v0[27];
    v11 = v0[25];

    (*(v10 + 8))(v9, v11);
    v12 = sub_1002AD0B4;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_1002AD0B4()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 280) + 1;
  (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
  if (v2 == v1)
  {
    if (qword_100501DC8 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 296);
    v4 = *(v0 + 192);
    v5 = qword_10051B858;
    *(v0 + 312) = qword_10051B858;
    sub_1001FF418((v0 + 16));
    *(v0 + 320) = v3;
    if (v3)
    {
      v6 = *(v0 + 240);
      v7 = *(v0 + 216);

      v8 = *(v0 + 8);

      return v8();
    }

    v19 = *(v0 + 24);
    *(v0 + 328) = *(v0 + 16);
    *(v0 + 336) = v19;

    sub_10012E450(v0 + 16);
    v17 = sub_1002AD334;
    v18 = v5;
  }

  else
  {
    v10 = *(v0 + 280) + 1;
    *(v0 + 272) = *(v0 + 296);
    *(v0 + 280) = v10;
    v11 = *(v0 + 232) + 16;
    (*(v0 + 264))(*(v0 + 240), *(v0 + 184) + ((*(v0 + 388) + 32) & ~*(v0 + 388)) + *(v0 + 256) * v10, *(v0 + 224));
    if (qword_100501DC8 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 384);
    v14 = *(v0 + 208);
    v13 = *(v0 + 216);
    v15 = *(v0 + 200);
    v16 = qword_10051B858;
    *(v0 + 288) = qword_10051B858;
    (*(v14 + 104))(v13, v12, v15);
    v17 = sub_1002ACF74;
    v18 = v16;
  }

  return _swift_task_switch(v17, v18, 0);
}

uint64_t sub_1002AD2AC()
{
  (*(v0[29] + 8))(v0[30], v0[28]);
  v1 = v0[38];
  v2 = v0[30];
  v3 = v0[27];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002AD334()
{
  v1 = v0[39];
  v2 = v0[40];
  v0[43] = sub_100362B68(v0[41], v0[42]);
  v0[44] = v2;
  v3 = v0[42];

  if (v2)
  {
    v4 = sub_1002AD6E8;
  }

  else
  {
    v4 = sub_1002AD3C8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002AD3C8()
{
  v0[22] = v0[43];
  v1 = swift_allocObject();
  v0[45] = v1;
  v1[2] = v0 + 22;
  v1[3] = 0xD000000000000013;
  v1[4] = 0x800000010046ABA0;
  v2 = swift_task_alloc();
  v0[46] = v2;
  *v2 = v0;
  v2[1] = sub_1002AD4DC;

  return sub_1001FBFAC(0xD000000000000013, 0x800000010046ABA0, &unk_100414498, v1);
}

uint64_t sub_1002AD4DC()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 360);
  if (v0)
  {

    v6 = sub_1002AD758;
  }

  else
  {

    v6 = sub_1002AD628;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002AD628()
{
  v1 = v0[24];
  swift_beginAccess();
  v2 = v0[22];
  v3 = OBJC_IVAR____TtC10seserviced14SECUserSession_credentials;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;

  v5 = v0[30];
  v6 = v0[27];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002AD6E8()
{
  v1 = v0[44];
  v2 = v0[30];
  v3 = v0[27];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002AD758()
{
  v1 = v0[22];

  v2 = v0[47];
  v3 = v0[30];
  v4 = v0[27];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002AD7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v6 = type metadata accessor for UUID();
  v5[25] = v6;
  v7 = *(v6 - 8);
  v5[26] = v7;
  v8 = *(v7 + 64) + 15;
  v5[27] = swift_task_alloc();

  return _swift_task_switch(sub_1002AD898, 0, 0);
}

uint64_t sub_1002AD898()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = qword_10051B858;
  *(v0 + 224) = qword_10051B858;
  sub_1001FF418((v0 + 16));
  *(v0 + 232) = 0;
  v3 = *(v0 + 24);
  *(v0 + 240) = *(v0 + 16);
  *(v0 + 248) = v3;

  sub_10012E450(v0 + 16);

  return _swift_task_switch(sub_1002AD9A8, v2, 0);
}

uint64_t sub_1002AD9A8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = sub_10035E904();
  v4 = *(v0 + 248);
  if (v2)
  {
    v5 = *(v0 + 248);

    v12 = *(v0 + 216);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v6 = v3;
    v7 = *(v0 + 240);
    v8 = *(v0 + 224);
    v15 = *(v0 + 176);
    v9 = swift_task_alloc();
    v10 = *(v0 + 160);
    *(v9 + 16) = v6;
    *(v9 + 24) = v10;
    *(v9 + 40) = v15;
    *(v9 + 56) = v8;
    *(v9 + 64) = v7;
    *(v9 + 72) = v4;
    type metadata accessor for CredentialInternal();
    NSManagedObjectContext.performAndWait<A>(_:)();
    v11 = *(v0 + 248);

    *(v0 + 256) = *(v0 + 152);

    return _swift_task_switch(sub_1002ADB0C, 0, 0);
  }
}

uint64_t sub_1002ADB0C()
{
  v28 = v0;
  if (qword_100501C48 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[20];
  v5 = type metadata accessor for Logger();
  sub_1000958E4(v5, qword_100509790);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[26];
  v9 = v0[27];
  v11 = v0[25];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_1002FFA0C(0xD000000000000036, 0x800000010046AB60, &v27);
    *(v12 + 12) = 2080;
    v13 = UUID.uuidString.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1002FFA0C(v13, v15, &v27);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s identifier %s success", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = v0[32];
  v18 = v0[24];
  v19 = OBJC_IVAR____TtC10seserviced14SECUserSession_credentials;
  swift_beginAccess();
  v20 = v17;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v18 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v18 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v26 = *((*(v18 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v21 = v0[32];
  v22 = v0[27];
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  v23 = v0[1];
  v24 = v0[32];

  return v23(v24);
}

uint64_t sub_1002ADDF8()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 296);
  v2 = qword_10051B858;
  *(v0 + 304) = qword_10051B858;
  sub_1001FF418((v0 + 128));
  *(v0 + 312) = 0;
  v3 = *(v0 + 136);
  *(v0 + 320) = *(v0 + 128);
  *(v0 + 328) = v3;

  sub_10012E450(v0 + 128);

  return _swift_task_switch(sub_1002AE0A0, v2, 0);
}

uint64_t sub_1002AE0A0()
{
  v1 = v0[38];
  v2 = v0[39];
  v0[42] = sub_100362B68(v0[40], v0[41]);
  v0[43] = v2;
  v3 = v0[41];

  if (v2)
  {
    v4 = sub_1002AE870;
  }

  else
  {
    v4 = sub_1002AE134;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002AE134()
{
  v0[36] = v0[42];
  v1 = swift_allocObject();
  v0[44] = v1;
  v1[2] = v0 + 36;
  v1[3] = 0xD000000000000015;
  v1[4] = 0x800000010046AB40;
  v2 = swift_task_alloc();
  v0[45] = v2;
  *v2 = v0;
  v2[1] = sub_1002AE248;

  return sub_1001FBFAC(0xD000000000000015, 0x800000010046AB40, &unk_100414478, v1);
}

uint64_t sub_1002AE248(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 360);
  v6 = *v2;
  *(v4 + 368) = a1;
  *(v4 + 376) = v1;

  v7 = *(v3 + 352);

  if (v1)
  {
    v8 = sub_1002AEA70;
  }

  else
  {
    v8 = sub_1002AE384;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1002AE384()
{
  v49 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 296);
  sub_1001FF418((v0 + 16));
  v3 = *(v0 + 368);
  if (v1)
  {
    v4 = *(v0 + 368);

    v5 = *(v0 + 288);

    if (qword_100501C48 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_26;
  }

  v13 = *(v0 + 16);
  v14 = *(v0 + 24);

  sub_10012E450(v0 + 16);
  if (!(v3 >> 62))
  {
    v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_7;
    }

LABEL_30:
    v39 = *(v0 + 368);
    goto LABEL_31;
  }

  if (*(v0 + 368) < 0)
  {
    v38 = *(v0 + 368);
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  if (!v15)
  {
    goto LABEL_30;
  }

LABEL_7:
  if (qword_100501C48 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000958E4(v16, qword_100509790);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Firing installation complete callback", v19, 2u);
  }

  v20 = *(v0 + 296);

  v21 = *(v0 + 368);
  if (*(v20 + OBJC_IVAR____TtC10seserviced14SECUserSession_installFinishedCallback))
  {
    v46 = *(v20 + OBJC_IVAR____TtC10seserviced14SECUserSession_installFinishedCallback);
    v47 = v0;
    v22 = *(v20 + OBJC_IVAR____TtC10seserviced14SECUserSession_installFinishedCallback + 8);
    v48 = _swiftEmptyArrayStorage;
    v0 = v3 & 0xC000000000000001;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    v24 = v21 + 32;

    v25 = 0;
    while (1)
    {
      if (v0)
      {
        v36 = *(v47 + 368);
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v25 >= *(v23 + 16))
        {
          goto LABEL_25;
        }

        v26 = *(v24 + 8 * v25);
      }

      v27 = v26;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v29._countAndFlagsBits = v13;
      v29._object = v14;
      if (CredentialInternal.isAccessible(appId:)(v29))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v30 = v23;
        v31 = v0;
        v32 = v15;
        v33 = v13;
        v34 = v14;
        v35 = v48[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v14 = v34;
        v13 = v33;
        v15 = v32;
        v0 = v31;
        v23 = v30;
        v24 = v21 + 32;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v25;
      if (v28 == v15)
      {
        v0 = v47;
        v37 = *(v47 + 368);

        v46(v48);
        sub_1000B2A4C(v46);

        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
LABEL_3:
    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_100509790);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v48 = v11;
      *v9 = 138412546;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_1002FFA0C(0xD000000000000018, 0x800000010046AB20, &v48);
      _os_log_impl(&_mh_execute_header, v7, v8, "Error %@ encountered %s", v9, 0x16u);
      sub_100075768(v10, &unk_100503F70, &unk_10040B2E0);

      sub_1000752F4(v11);
    }

    else
    {
    }

    goto LABEL_33;
  }

LABEL_31:

LABEL_32:
  v40 = *(v0 + 296);
  swift_beginAccess();
  v41 = *(v0 + 288);
  v42 = OBJC_IVAR____TtC10seserviced14SECUserSession_credentials;
  swift_beginAccess();
  v43 = *(v40 + v42);
  *(v40 + v42) = v41;

LABEL_33:
  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1002AE870()
{
  v12 = v0;
  v1 = *(v0 + 344);
  if (qword_100501C48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_100509790);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 138412546;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_1002FFA0C(0xD000000000000018, 0x800000010046AB20, &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "Error %@ encountered %s", v5, 0x16u);
    sub_100075768(v6, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v7);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1002AEA70()
{
  v13 = v0;
  v1 = v0[36];

  v2 = v0[47];
  if (qword_100501C48 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_100509790);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 138412546;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1002FFA0C(0xD000000000000018, 0x800000010046AB20, &v12);
    _os_log_impl(&_mh_execute_header, v4, v5, "Error %@ encountered %s", v6, 0x16u);
    sub_100075768(v7, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002AEC78(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for UUID();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1002AED38, 0, 0);
}

uint64_t sub_1002AED38()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B858;
  *(v0 + 80) = qword_10051B858;

  return _swift_task_switch(sub_1002AEDD0, v1, 0);
}

uint64_t sub_1002AEDD0()
{
  v1 = v0[10];
  v2 = sub_10035E904();
  v3 = v0[10];
  v4 = v0[5];
  v5 = swift_task_alloc();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = v4;
  NSManagedObjectContext.performAndWait<A>(_:)();
  v0[11] = 0;

  return _swift_task_switch(sub_1002AEEF0, 0, 0);
}

uint64_t sub_1002AEEF0()
{
  v29 = v0;
  if (qword_100501C48 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  sub_1000958E4(v5, qword_100509790);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_1002FFA0C(0xD000000000000017, 0x800000010046AB00, v28);
    *(v12 + 12) = 2080;
    v13 = UUID.uuidString.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1002FFA0C(v13, v15, v28);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s identifier %s success", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = v0[11];
  v18 = v0[5];
  v19 = v0[6];
  v20 = swift_task_alloc();
  *(v20 + 16) = v18;
  v21 = OBJC_IVAR____TtC10seserviced14SECUserSession_credentials;
  swift_beginAccess();
  result = sub_1002B04E0(sub_1002B02C8, v20);
  if (v17)
  {

    return swift_endAccess();
  }

  v23 = *(v19 + v21);
  if (v23 >> 62)
  {
    v27 = result;
    v24 = _CocoaArrayWrapper.endIndex.getter();
    result = v27;
    if (v24 >= v27)
    {
      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
    return result;
  }

  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v24 < result)
  {
    goto LABEL_16;
  }

LABEL_12:
  v25 = v0[9];
  sub_1001A281C(result, v24);
  swift_endAccess();

  v26 = v0[1];

  return v26();
}

uint64_t sub_1002AF224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = type metadata accessor for UUID();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_1002AF2E8, 0, 0);
}

uint64_t sub_1002AF2E8()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B858;
  *(v0 + 128) = qword_10051B858;

  return _swift_task_switch(sub_1002AF380, v1, 0);
}

uint64_t sub_1002AF380()
{
  v1 = *(v0 + 128);
  v2 = sub_10035E904();
  v3 = *(v0 + 128);
  v4 = *(v0 + 88);
  v5 = swift_task_alloc();
  v6 = *(v0 + 72);
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  *(v5 + 32) = v6;
  *(v5 + 48) = v4;
  NSManagedObjectContext.performAndWait<A>(_:)();
  *(v0 + 136) = 0;

  return _swift_task_switch(sub_1002AF4A8, 0, 0);
}

uint64_t sub_1002AF4A8()
{
  v20 = v0;
  if (qword_100501C48 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[9];
  v5 = type metadata accessor for Logger();
  sub_1000958E4(v5, qword_100509790);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[13];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_1002FFA0C(0xD000000000000026, 0x800000010046AAD0, &v19);
    *(v12 + 12) = 2080;
    v13 = UUID.uuidString.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1002FFA0C(v13, v15, &v19);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s identifier %s success", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = v0[16];

  return _swift_task_switch(sub_1002AF6E4, v17, 0);
}

uint64_t sub_1002AF6E4()
{
  v1 = v0[16];
  v2 = v0[17];
  v0[18] = sub_100362B68(0, 0);
  v0[19] = v2;
  if (v2)
  {
    v3 = sub_1002AFA90;
  }

  else
  {
    v3 = sub_1002AF774;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002AF774()
{
  v0[8] = v0[18];
  v1 = swift_allocObject();
  v0[20] = v1;
  *(v1 + 16) = v0 + 8;
  strcpy((v1 + 24), "Update Access");
  *(v1 + 38) = -4864;
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_1002AF88C;

  return sub_1001FBFAC(0x4120657461647055, 0xED00007373656363, &unk_100414458, v1);
}

uint64_t sub_1002AF88C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 160);
  if (v0)
  {

    v6 = sub_1002AFAF4;
  }

  else
  {

    v6 = sub_1002AF9D8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002AF9D8()
{
  v1 = v0[15];
  v2 = v0[12];
  swift_beginAccess();
  v3 = v0[8];
  v4 = OBJC_IVAR____TtC10seserviced14SECUserSession_credentials;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = v3;

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002AFA90()
{
  v1 = v0[19];
  v2 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002AFAF4()
{
  v1 = v0[8];

  v2 = v0[22];
  v3 = v0[15];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002AFB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = *(*(sub_100068FC4(&unk_10050BE80, &unk_10040B360) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_1002AFC04, 0, 0);
}

uint64_t sub_1002AFC04()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1002AFD3C;
  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];

  return sub_10032C1CC(v8, v7, v5, v9, v6);
}

uint64_t sub_1002AFD3C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v9 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v6 = sub_1002B09EC;
  }

  else
  {
    v7 = *(v4 + 80);
    *(v4 + 104) = a1;
    swift_endAccess();
    sub_100075768(v7, &unk_10050BE80, &unk_10040B360);
    v6 = sub_1002B09DC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002AFE84(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (a2)
  {

    if ((a2(v9) & 1) == 0)
    {
      sub_1000B2A4C(a2);
      v10 = 0;
      return v10 & 1;
    }

    CredentialInternal.identifier.getter();
    v10 = static UUID.== infix(_:_:)();
    sub_1000B2A4C(a2);
  }

  else
  {
    v11 = *a1;
    CredentialInternal.identifier.getter();
    v10 = static UUID.== infix(_:_:)();
  }

  (*(v5 + 8))(v8, v4);
  return v10 & 1;
}

uint64_t sub_1002AFFF0(uint64_t *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  CredentialInternal.identifier.getter();
  LOBYTE(v7) = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

uint64_t sub_1002B00E0()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_100509790);
  v1 = sub_1000958E4(v0, qword_100509790);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000958E4(v0, qword_10051B2C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002B01CC()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002B0204(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000C288C;

  return sub_100204558(a1, a2, v6, v7, v8);
}

uint64_t sub_1002B02E8(uint64_t (*a1)(__int128 *), uint64_t a2)
{
  v4 = a2;
  v6 = *v2;
  result = sub_100196530(a1, a2, *v2);
  v31 = v3;
  if (!v3)
  {
    if (v8)
    {
      return *(v6 + 16);
    }

    v9 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v11 = (v6 + 16);
      v10 = *(v6 + 16);
      if (v9 == v10)
      {
        return result;
      }

      v28 = a1;
      v12 = 16 * result;
      while (v9 < v10)
      {
        v13 = result;
        v14 = v6;
        v15 = v6 + v12;
        v16 = *(v15 + 56);
        v29 = *(v15 + 48);
        v30 = v16;
        sub_100069E2C(v29, v16);
        v17 = v4;
        v18 = v31;
        v19 = v28(&v29);
        result = sub_10006A178(v29, v30);
        v31 = v18;
        if (v18)
        {
          return result;
        }

        if (v19)
        {
          v4 = v17;
          result = v13;
          v6 = v14;
        }

        else
        {
          result = v13;
          if (v9 == v13)
          {
            v6 = v14;
          }

          else
          {
            if ((v13 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            if (v13 >= *v11)
            {
              goto LABEL_27;
            }

            if (v9 >= *v11)
            {
              goto LABEL_28;
            }

            v20 = *(v15 + 48);
            v21 = *(v15 + 56);
            v6 = v14;
            v27 = *(v14 + 32 + 16 * v13);
            sub_100069E2C(*(v14 + 32 + 16 * v13), *(v14 + 32 + 16 * v13 + 8));
            sub_100069E2C(v20, v21);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1001A1598(v14);
              v6 = result;
            }

            if (v13 >= *(v6 + 16))
            {
              goto LABEL_29;
            }

            v22 = v6 + 16 * v13;
            v23 = *(v22 + 32);
            v24 = *(v22 + 40);
            *(v22 + 32) = v20;
            *(v22 + 40) = v21;
            result = sub_10006A178(v23, v24);
            if (v9 >= *(v6 + 16))
            {
              goto LABEL_30;
            }

            v25 = *(v6 + v12 + 48);
            v26 = *(v6 + v12 + 56);
            *(v6 + v12 + 48) = v27;
            sub_10006A178(v25, v26);
            *v2 = v6;
            result = v13;
          }

          ++result;
          v4 = v17;
        }

        ++v9;
        v11 = (v6 + 16);
        v10 = *(v6 + 16);
        v12 += 16;
        if (v9 == v10)
        {
          return result;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002B04E0(uint64_t (*a1)(id *), uint64_t a2)
{
  v6 = *v2;
  sub_1001965F0(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v4;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v4;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v13 = v12;
    v25 = v12;
    v14 = a1(&v25);

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v4 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v4++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v17 = *(v6 + 32 + 8 * v10);
    v24 = *(v6 + 32 + 8 * v4);
    v15 = v17;
  }

  v18 = v15;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_1001A291C(v6);
    v19 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v19) = 0;
  }

  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  v21 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v18;

  if ((v6 & 0x8000000000000000) == 0 && !v19)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_1001A291C(v6);
  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v20 + 16))
    {
      goto LABEL_44;
    }

    v22 = v20 + 8 * v10;
    v23 = *(v22 + 32);
    *(v22 + 32) = v24;

    *v2 = v6;
    goto LABEL_9;
  }

LABEL_39:
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
LABEL_47:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1002B0748(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10012E598;

  return sub_1002AFB60(a1, a2, v6, v7, v8);
}

void sub_1002B080C(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_10035FE68(*(v1 + 16), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), a1);
}

uint64_t sub_1002B0854(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10012E598;

  return sub_1002AFB60(a1, a2, v6, v7, v8);
}

uint64_t sub_1002B0918(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10012E598;

  return sub_1002AFB60(a1, a2, v6, v7, v8);
}

unint64_t sub_1002B0A20()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_1002B0A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010046AC20 == a2)
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

uint64_t sub_1002B0B50(uint64_t a1)
{
  v2 = sub_1002B10AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002B0B8C(uint64_t a1)
{
  v2 = sub_1002B10AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002B0C40(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_100068FC4(&qword_1005097F0, &qword_100414540);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17[-v9];
  v11 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_1002B10AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *(v4 + OBJC_IVAR____TtC10seserviced32SecureElementApplicationInternal_identifier);
  v13 = *(v4 + OBJC_IVAR____TtC10seserviced32SecureElementApplicationInternal_identifier + 8);
  v17[15] = 0;

  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {

    v14 = *(v4 + OBJC_IVAR____TtC10seserviced32SecureElementApplicationInternal_bundleIdentifier);
    v15 = *(v4 + OBJC_IVAR____TtC10seserviced32SecureElementApplicationInternal_bundleIdentifier + 8);
    v17[14] = 1;

    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v7 + 8))(v10, v6);
}

id sub_1002B0E0C(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100068FC4(&qword_1005097E0, &qword_100414538);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_1002B10AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_1000752F4(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = &v1[OBJC_IVAR____TtC10seserviced32SecureElementApplicationInternal_identifier];
    *v13 = v11;
    v13[1] = v14;
    v21 = 1;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = &v1[OBJC_IVAR____TtC10seserviced32SecureElementApplicationInternal_bundleIdentifier];
    *v16 = v15;
    v16[1] = v17;
    v20.receiver = v1;
    v20.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v20, "init");
    (*(v6 + 8))(v9, v5);
    sub_1000752F4(a1);
  }

  return v3;
}

id sub_1002B1038@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_1002B0E0C(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1002B10AC()
{
  result = qword_1005097E8;
  if (!qword_1005097E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005097E8);
  }

  return result;
}

unint64_t sub_1002B1114()
{
  result = qword_1005097F8;
  if (!qword_1005097F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005097F8);
  }

  return result;
}

unint64_t sub_1002B116C()
{
  result = qword_100509800;
  if (!qword_100509800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100509800);
  }

  return result;
}

unint64_t sub_1002B11C4()
{
  result = qword_100509808;
  if (!qword_100509808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100509808);
  }

  return result;
}

uint64_t sub_1002B1218(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = type metadata accessor for String.Encoding();
  v10 = *(*(v9 - 8) + 64);
  result = __chkstk_darwin(v9);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_14;
    }

    v17 = *(a1 + 16);
    v16 = *(a1 + 24);
    v18 = __OFSUB__(v16, v17);
    v19 = v16 - v17;
    if (!v18)
    {
      if (v19 == 32)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v15)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 32)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (qword_100501C50 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_1000958E4(v31, qword_100509810);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Incorrect length for BLESK, cannot set value", v34, 2u);
      }

      sub_1000755A4();
      swift_allocError();
      *v35 = 0;
      return swift_willThrow();
    }

    goto LABEL_31;
  }

  if (BYTE6(a2) != 32)
  {
    goto LABEL_14;
  }

LABEL_8:
  v69 = result;
  v70 = v12;
  if (qword_100501C50 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = sub_1000958E4(v20, qword_100509810);
  sub_100069E2C(a1, a2);
  v68 = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  sub_10006A178(a1, a2);
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v64 = v24;
    v65 = swift_slowAlloc();
    v72 = v65;
    *v24 = 136315138;
    v25 = sub_100288788(a1, a2);
    v66 = a1;
    v67 = v4;
    v71 = v25;
    v63 = v23;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v26 = BidirectionalCollection<>.joined(separator:)();
    v28 = v27;

    v29 = sub_1002FFA0C(v26, v28, &v72);
    a1 = v66;

    v30 = v64;
    *(v64 + 1) = v29;
    _os_log_impl(&_mh_execute_header, v22, v63, "Received BLESK with type %s", v30, 0xCu);
    sub_1000752F4(v65);
  }

  else
  {
    v67 = v4;
  }

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Deriving BleSKDevice", v38, 2u);
  }

  static String.Encoding.utf8.getter();
  v39 = String.data(using:allowLossyConversion:)();
  v41 = v40;
  v42 = *(v70 + 8);
  v70 += 8;
  result = v42(v14, v69);
  if (v41 >> 60 == 15)
  {
    goto LABEL_32;
  }

  v43 = v67;
  v44 = sub_1002B3440(a1, a2, v39, v41, a3);
  if (v43)
  {
    sub_10006A2D0(v39, v41);
    return swift_willThrow();
  }

  v66 = a1;
  v46 = v44;
  v47 = v39;
  v48 = v45;
  sub_10006A2D0(v47, v41);
  v49 = v5[4];
  v50 = v5[5];
  v5[4] = v46;
  v5[5] = v48;
  sub_10006A2D0(v49, v50);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "Deriving BleSKReader", v53, 2u);
  }

  static String.Encoding.utf8.getter();
  v54 = String.data(using:allowLossyConversion:)();
  v56 = v55;
  result = v42(v14, v69);
  if (v56 >> 60 != 15)
  {
    v57 = sub_1002B3440(v66, a2, v54, v56, a3);
    v59 = v58;
    sub_10006A2D0(v54, v56);
    v60 = v5[2];
    v61 = v5[3];
    v5[2] = v57;
    v5[3] = v59;
    return sub_10006A2D0(v60, v61);
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1002B1854(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_1000752B0(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_10008FCD4(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_10008FD8C(v3, v4);
    }

    else
    {
      v6 = sub_10008FE08(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1000752F4(v8);
  return v6;
}

id sub_1002B1910(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = v5;
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_14;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v13 = __OFSUB__(v11, v12);
    v14 = v11 - v12;
    if (!v13)
    {
      if (v14 >= 17)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v10)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 17)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (qword_100501C50 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000958E4(v20, qword_100509810);
      sub_100069E2C(a1, a2);
      v17 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      sub_10006A178(a1, a2);
      if (!os_log_type_enabled(v17, v21))
      {
        goto LABEL_19;
      }

      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v109 = v23;
      *v22 = 136315138;
      sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v24 = BidirectionalCollection<>.joined(separator:)();
      v26 = v25;

      v27 = sub_1002FFA0C(v24, v26, &v109);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v17, v21, "Auth tag not present in %s", v22, 0xCu);
      sub_1000752F4(v23);

      goto LABEL_18;
    }

    goto LABEL_71;
  }

  if (BYTE6(a2) < 0x11uLL)
  {
    goto LABEL_14;
  }

LABEL_8:
  v15 = *(v5 + 24);
  if (v15 >> 60 == 15)
  {
    if (qword_100501C50 == -1)
    {
LABEL_10:
      v16 = type metadata accessor for Logger();
      sub_1000958E4(v16, qword_100509810);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v17, v18))
      {
LABEL_19:

        sub_1000755A4();
        swift_allocError();
        *v28 = 0;
        return swift_willThrow();
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Decrypt message called before bleSKReader is derived", v19, 2u);
LABEL_18:

      goto LABEL_19;
    }

LABEL_72:
    swift_once();
    goto LABEL_10;
  }

  v30 = *(v5 + 16);
  v31 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v31 != 2)
    {
      goto LABEL_34;
    }

    v33 = *(a3 + 16);
    v32 = *(a3 + 24);
    v13 = __OFSUB__(v32, v33);
    v34 = v32 - v33;
    if (!v13)
    {
      if (v34 == 4)
      {
        goto LABEL_27;
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
    goto LABEL_41;
  }

  if (v31)
  {
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      if (HIDWORD(a3) - a3 == 4)
      {
        goto LABEL_27;
      }

LABEL_34:
      v39 = *(v5 + 16);
      v108 = *(v5 + 24);
      sub_100069E2C(v39, v15);
      if (qword_100501C50 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_1000958E4(v40, qword_100509810);
      sub_100069E2C(a3, a4);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      sub_10006A178(a3, a4);
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v109 = v44;
        *v43 = 136315394;
        sub_100288788(a3, a4);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
        v45 = BidirectionalCollection<>.joined(separator:)();
        v47 = v46;

        v48 = sub_1002FFA0C(v45, v47, &v109);

        *(v43 + 4) = v48;
        *(v43 + 12) = 2048;
        *(v43 + 14) = 4;
        _os_log_impl(&_mh_execute_header, v41, v42, "Malformed header %s, expected length %ld", v43, 0x16u);
        sub_1000752F4(v44);
      }

      sub_1000755A4();
      swift_allocError();
      *v49 = 0;
      swift_willThrow();
      v50 = v39;
      return sub_10006A2D0(v50, v108);
    }

    goto LABEL_74;
  }

  if (BYTE6(a4) != 4)
  {
    goto LABEL_34;
  }

LABEL_27:
  v105 = a3;
  v107 = a4;
  v35 = *(v5 + 64);
  v6 = v15;
  sub_100069E2C(v30, v15);
  if (v35 <= 0xFFFE)
  {
    v108 = v6;
    result = Data._bridgeToObjectiveC()().super.isa;
    v104 = result;
    if (v10 == 2)
    {
      v57 = *(a1 + 16);
      v56 = *(a1 + 24);
      v13 = __OFSUB__(v56, v57);
      v36 = v56 - v57;
      if (!v13)
      {
        goto LABEL_48;
      }

      __break(1u);
    }

    else if (v10 == 1)
    {
      LODWORD(v36) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v36 = v36;
LABEL_48:
      v58 = v36 - 16;
      if (__OFSUB__(v36, 16))
      {
        __break(1u);
      }

      else
      {
        result = [objc_allocWithZone(NSMutableData) initWithLength:v58];
        v103 = result;
        if (!result)
        {
LABEL_83:
          __break(1u);
          return result;
        }

        v101 = v30;
        if ((v58 & 0x8000000000000000) == 0)
        {
          v59 = Data.subdata(in:)();
          v61 = v60;
          isa = Data._bridgeToObjectiveC()().super.isa;
          sub_10006A178(v59, v61);
          v105 = Data._bridgeToObjectiveC()().super.isa;
          v6 = [objc_allocWithZone(NSMutableData) init];
          [v6 appendU64BE:0];
          [v6 appendU32BE:*(v7 + 64)];
          result = [objc_allocWithZone(NSMutableData) init];
          v107 = result;
          if (v10 == 2)
          {
            v64 = *(a1 + 16);
            v63 = *(a1 + 24);
            v62 = v63 - v64;
            if (!__OFSUB__(v63, v64))
            {
              goto LABEL_59;
            }

            __break(1u);
          }

          else if (v10 == 1)
          {
            if (__OFSUB__(HIDWORD(a1), a1))
            {
LABEL_82:
              __break(1u);
              goto LABEL_83;
            }

            v62 = HIDWORD(a1) - a1;
LABEL_59:
            if (v62 >= v58)
            {
              v65 = Data.subdata(in:)();
              v67 = v66;
              v68 = Data._bridgeToObjectiveC()().super.isa;
              sub_10006A178(v65, v67);
              [v107 appendData:v68];

              if (qword_100501C50 == -1)
              {
LABEL_61:
                v69 = type metadata accessor for Logger();
                sub_1000958E4(v69, qword_100509810);
                v70 = v6;
                v71 = v105;
                v72 = Logger.logObject.getter();
                v73 = static os_log_type_t.debug.getter();

                v106 = v70;
                if (os_log_type_enabled(v72, v73))
                {
                  v100 = v73;
                  v74 = swift_slowAlloc();
                  v109 = swift_slowAlloc();
                  *v74 = 136380931;
                  log = v72;
                  v75 = [v70 asHexString];
                  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v78 = v77;

                  v79 = sub_1002FFA0C(v76, v78, &v109);

                  *(v74 + 4) = v79;
                  *(v74 + 12) = 2081;
                  v80 = [(objc_class *)v71 asHexString];
                  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v83 = v82;

                  v84 = sub_1002FFA0C(v81, v83, &v109);
                  v70 = v106;

                  *(v74 + 14) = v84;
                  _os_log_impl(&_mh_execute_header, log, v100, "LyonBLE Decryption parameters iv: %{private}s, aad: %{private}s", v74, 0x16u);
                  swift_arrayDestroy();
                }

                else
                {
                }

                ccaes_gcm_decrypt_mode();
                [v104 length];
                [v104 bytes];
                [v70 length];
                [v70 bytes];
                [(objc_class *)v71 length];
                [(objc_class *)v71 bytes];
                [(objc_class *)isa length];
                [(objc_class *)isa bytes];
                [v103 mutableBytes];
                [v107 mutableBytes];
                result = ccgcm_one_shot();
                if (result)
                {
                  sub_100069E2C(a1, a2);
                  v85 = Logger.logObject.getter();
                  v86 = static os_log_type_t.error.getter();
                  sub_10006A178(a1, a2);
                  if (os_log_type_enabled(v85, v86))
                  {
                    v87 = swift_slowAlloc();
                    v88 = swift_slowAlloc();
                    v109 = v88;
                    *v87 = 136315138;
                    sub_100288788(a1, a2);
                    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
                    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
                    v89 = BidirectionalCollection<>.joined(separator:)();
                    v91 = v90;

                    v92 = sub_1002FFA0C(v89, v91, &v109);

                    *(v87 + 4) = v92;
                    _os_log_impl(&_mh_execute_header, v85, v86, "Decryption failed for secure channel with payload %s", v87, 0xCu);
                    sub_1000752F4(v88);
                  }

                  sub_1000755A4();
                  swift_allocError();
                  *v93 = 0;
                  swift_willThrow();

                  v50 = v101;
                  return sub_10006A2D0(v50, v108);
                }

                v94 = *(v7 + 64);
                v95 = __CFADD__(v94, 1);
                v96 = v94 + 1;
                if (!v95)
                {
                  *(v7 + 64) = v96;
                  v97 = v103;
                  v98 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

                  sub_10006A2D0(v101, v108);
                  return v98;
                }

                __break(1u);
                goto LABEL_81;
              }

LABEL_79:
              swift_once();
              goto LABEL_61;
            }

LABEL_78:
            __break(1u);
            goto LABEL_79;
          }

          v62 = BYTE6(a2);
          goto LABEL_59;
        }
      }

      __break(1u);
      goto LABEL_78;
    }

    v36 = BYTE6(a2);
    goto LABEL_48;
  }

  v4 = v30;
  if (qword_100501C50 != -1)
  {
    goto LABEL_75;
  }

LABEL_41:
  v51 = type metadata accessor for Logger();
  sub_1000958E4(v51, qword_100509810);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "Counter has reached max value cannot decrypt", v54, 2u);
  }

  sub_1000755A4();
  swift_allocError();
  *v55 = 0;
  swift_willThrow();
  return sub_10006A2D0(v4, v6);
}

void *sub_1002B2694(void *result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(v4 + 68) > 0xFFFEu)
  {
    if (qword_100501C50 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000958E4(v11, qword_100509810);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_12;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Counter has reached max value cannot encrypt";
    goto LABEL_11;
  }

  v5 = *(v4 + 40);
  if (v5 >> 60 == 15)
  {
    if (qword_100501C50 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_100509810);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_12;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Encrypt message called before bleSKDevice is derived";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v7, v8, v10, v9, 2u);

LABEL_12:

    sub_1000755A4();
    swift_allocError();
    *v12 = 0;
    return swift_willThrow();
  }

  v13 = *(v4 + 32);
  v14 = a4 >> 62;
  v89 = *(v4 + 40);
  v88 = v13;
  if ((a4 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_26;
    }

    v16 = *(a3 + 16);
    v15 = *(a3 + 24);
    v17 = __OFSUB__(v15, v16);
    v18 = v15 - v16;
    if (!v17)
    {
      if (v18 == 4)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v14)
  {
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      if (HIDWORD(a3) - a3 == 4)
      {
        goto LABEL_20;
      }

LABEL_26:
      sub_100069E2C(v13, v5);
      if (qword_100501C50 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_1000958E4(v26, qword_100509810);
      sub_100069E2C(a3, a4);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      sub_10006A178(a3, a4);
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v90[0] = v30;
        *v29 = 136315394;
        v91 = sub_100288788(a3, a4);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
        v31 = BidirectionalCollection<>.joined(separator:)();
        v33 = v32;

        v34 = sub_1002FFA0C(v31, v33, v90);

        *(v29 + 4) = v34;
        *(v29 + 12) = 2048;
        *(v29 + 14) = 4;
        _os_log_impl(&_mh_execute_header, v27, v28, "Malformed header %s, expected length %ld", v29, 0x16u);
        sub_1000752F4(v30);
      }

      sub_1000755A4();
      swift_allocError();
      *v35 = 0;
      swift_willThrow();
      return sub_10006A2D0(v88, v89);
    }

    goto LABEL_53;
  }

  if (BYTE6(a4) != 4)
  {
    goto LABEL_26;
  }

LABEL_20:
  v19 = result;
  sub_100069E2C(v13, v5);
  v85 = v19;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v84 = Data._bridgeToObjectiveC()().super.isa;
  result = [objc_allocWithZone(NSMutableData) initWithLength:16];
  v82 = result;
  if (!result)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v22 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    v21 = v19;
    if (!v22)
    {
      v23 = BYTE6(a2);
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (v22 != 2)
  {
    v23 = 0;
    goto LABEL_38;
  }

  v36 = v19[2];
  v37 = v19[3];
  v23 = v37 - v36;
  if (__OFSUB__(v37, v36))
  {
    __break(1u);
LABEL_35:
    if (__OFSUB__(HIDWORD(v21), v21))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v23 = HIDWORD(v21) - v21;
  }

LABEL_38:
  result = [objc_allocWithZone(NSMutableData) initWithLength:v23];
  v81 = result;
  if (result)
  {
    v38 = [objc_allocWithZone(NSMutableData) init];
    v80 = Data._bridgeToObjectiveC()().super.isa;
    [v38 appendU64BE:1];
    v79 = v4;
    [v38 appendU32BE:*(v4 + 68)];
    if (qword_100501C50 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000958E4(v39, qword_100509810);
    sub_100069E2C(v85, a2);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    sub_10006A178(v85, a2);
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v90[0] = v43;
      *v42 = 136315138;
      v91 = sub_100288788(v85, a2);
      v86 = v38;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v44 = BidirectionalCollection<>.joined(separator:)();
      v46 = v45;

      v47 = sub_1002FFA0C(v44, v46, v90);

      *(v42 + 4) = v47;
      v38 = v86;
      _os_log_impl(&_mh_execute_header, v40, v41, "LyonBLE Encryption payload: %s", v42, 0xCu);
      sub_1000752F4(v43);
    }

    v48 = v38;
    v49 = v80;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();

    v87 = v48;
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v90[0] = swift_slowAlloc();
      *v52 = 136380931;
      v53 = [v48 asHexString];
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      v57 = sub_1002FFA0C(v54, v56, v90);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2081;
      v58 = [(objc_class *)v49 asHexString];
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      v62 = sub_1002FFA0C(v59, v61, v90);
      v48 = v87;

      *(v52 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v50, v51, "LyonBLE Encryption parameters iv: %{private}s, aad: %{private}s)", v52, 0x16u);
      swift_arrayDestroy();
    }

    ccaes_gcm_encrypt_mode();
    [(objc_class *)v84 length];
    [(objc_class *)v84 bytes];
    [v48 length];
    [v48 bytes];
    [(objc_class *)v49 length];
    [(objc_class *)v49 bytes];
    [(objc_class *)isa length];
    [(objc_class *)isa bytes];
    [v81 mutableBytes];
    [v82 mutableBytes];
    result = ccgcm_one_shot();
    if (result)
    {
      v63 = result;
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 67109120;
        *(v66 + 4) = v63;
        _os_log_impl(&_mh_execute_header, v64, v65, "Lyon BLE encryption failed with result %d", v66, 8u);
      }

      sub_1000755A4();
      swift_allocError();
      *v67 = 0;
      swift_willThrow();

      return sub_10006A2D0(v88, v89);
    }

    v68 = *(v79 + 68);
    v69 = __CFADD__(v68, 1);
    v70 = v68 + 1;
    if (!v69)
    {
      *(v79 + 68) = v70;
      *v90 = xmmword_1004098D0;
      v71 = v81;
      v72 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      Data.append(_:)();
      sub_10006A178(v72, v74);
      v75 = v82;
      v76 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      Data.append(_:)();
      sub_10006A2D0(v88, v89);

      sub_10006A178(v76, v78);
      return v90[0];
    }

    goto LABEL_54;
  }

LABEL_57:
  __break(1u);
  return result;
}

void sub_1002B3208(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  sub_10006A2D0(v5, v6);
  sub_100069E2C(a1, a2);
  if (qword_100501C50 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000958E4(v7, qword_100509810);
  sub_100069E2C(a1, a2);
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  sub_10006A178(a1, a2);
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    sub_100288788(a1, a2);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v11 = BidirectionalCollection<>.joined(separator:)();
    v13 = v12;

    v14 = sub_1002FFA0C(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, oslog, v8, "Set supported protocol versions as %s", v9, 0xCu);
    sub_1000752F4(v10);
  }

  else
  {
  }
}

uint64_t sub_1002B3440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [objc_allocWithZone(NSMutableData) initWithLength:32];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = *(v5 + 56);
  if (v8 >> 60 == 15 || (*(a5 + OBJC_IVAR____TtC10seserviced8LyonPeer_bleUwbProtocolVersion + 2) & 1) != 0)
  {

LABEL_5:
    if (qword_100501C50 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000958E4(v9, qword_100509810);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Data to derive keys cannot be initializd", v12, 2u);
    }

    sub_1000755A4();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    return v11;
  }

  v48 = v7;
  v15 = *(v5 + 48);
  v16 = *(a5 + OBJC_IVAR____TtC10seserviced8LyonPeer_bleUwbProtocolVersion);
  v52 = xmmword_1004098D0;
  v17 = v8;
  sub_100069E2C(v15, v8);
  v49 = v15;
  v50 = v17;
  Data.append(_:)();
  LOWORD(v51) = bswap32(v16) >> 16;
  v18 = sub_1002B1854(&v51, &v51 + 2);
  v20 = v19;
  Data.append(_:)();
  sub_10006A178(v18, v20);
  v21.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v22.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v23.super.isa = Data._bridgeToObjectiveC()().super.isa;
  ccsha256_di();
  [(objc_class *)v22.super.isa length];
  isa = v22.super.isa;
  [(objc_class *)v22.super.isa bytes];
  [(objc_class *)v23.super.isa length];
  [(objc_class *)v23.super.isa bytes];
  [(objc_class *)v21.super.isa length];
  [(objc_class *)v21.super.isa bytes];
  [v48 length];
  [v48 mutableBytes];
  v24 = cchkdf();
  if (v24)
  {
    v25 = v24;
    if (qword_100501C50 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000958E4(v26, qword_100509810);
    v27 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v11))
    {
      v28 = swift_slowAlloc();
      *v28 = 67109120;
      *(v28 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v27, v11, "Unable to derive key with error: %d", v28, 8u);
    }

    sub_1000755A4();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();

    sub_10006A2D0(v49, v50);
    sub_10006A178(v52, *(&v52 + 1));
  }

  else
  {
    if (qword_100501C50 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000958E4(v30, qword_100509810);
    v31 = v48;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v32, v33))
    {
      buf = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v51 = v45;
      *buf = 136380675;
      v46 = v31;
      v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;
      sub_100288788(v34, v35);
      v43 = v33;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v37 = BidirectionalCollection<>.joined(separator:)();
      v39 = v38;
      v40 = v34;
      v31 = v46;
      sub_10006A178(v40, v36);

      v41 = sub_1002FFA0C(v37, v39, &v51);

      *(buf + 4) = v41;
      _os_log_impl(&_mh_execute_header, v32, v43, "Derived %{private}s", buf, 0xCu);
      sub_1000752F4(v45);
    }

    v42 = v31;
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10006A2D0(v49, v50);
    sub_10006A178(v52, *(&v52 + 1));
  }

  return v11;
}

uint64_t sub_1002B3AB0()
{
  sub_10006A2D0(*(v0 + 16), *(v0 + 24));
  sub_10006A2D0(*(v0 + 32), *(v0 + 40));
  sub_10006A2D0(*(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1002B3B1C()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_100509810);
  sub_1000958E4(v0, qword_100509810);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1002B3B94(uint64_t a1)
{
  v9 = sub_100068FC4(&qword_100504F50, &qword_1004146C0);
  v10 = sub_100075C60(&qword_100504F58, &qword_100504F50, &qword_1004146C0);
  v8[0] = a1;
  v2 = sub_1000752B0(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_10008E434(v3, &v3[v4], &v7);
  v5 = v7;
  sub_1000752F4(v8);
  return v5;
}

uint64_t sub_1002B3C70(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      v5(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}